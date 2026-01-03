import bcrypt from "bcrypt";
import jwt from "jsonwebtoken";
import { db } from "../repositories/db.repository.js";
import {
  REFRESH_TOKEN_SECRET,
  ACCESS_TOKEN_COOKIE_NAME,
  REFRESH_TOKEN_COOKIE_NAME,
  ACCESS_TOKEN_COOKIE_OPTIONS,
  REFRESH_TOKEN_COOKIE_OPTIONS,
  SALT_ROUNDS,
} from "../config/auth.js";

export async function refreshRedirect(req, res) {
  const refreshToken = req.cookies?.[REFRESH_TOKEN_COOKIE_NAME];

  if (!refreshToken) {
    return res.redirect("/error401.html");
  }

  let storedToken;
  try {
    storedToken = await findRefreshToken(refreshToken);
  } catch {
    return res.redirect("/error500.html");
  }

  if (!storedToken) {
    return res.redirect("/error401.html");
  }

  let payload;
  try {
    payload = jwt.verify(refreshToken, REFRESH_TOKEN_SECRET);
  } catch {
    await deleteRefreshToken(refreshToken);
    return res.redirect("/error401.html");
  }

  const userId = payload.id;

  const sql =
    "SELECT id, name, email, is_admin, is_delivery FROM users WHERE id = ? LIMIT 1";

  db.query(sql, [userId], async (err, rows) => {
    if (err) {
      return res.redirect("/error500.html");
    }

    if (!rows || rows.length === 0) {
      await deleteRefreshToken(refreshToken);
      return res.redirect("/error401.html");
    }

    const userRow = rows[0];

    if (!userRow.is_admin) {
      return res.redirect("/error403.html");
    }

    const userData = buildUserPayloadFromRow(userRow);

    const newAccessToken = generateAccessToken(userData);
    const newRefreshToken = generateRefreshToken(userData.id);

    try {
      await updateRefreshTokenRow(storedToken.id, newRefreshToken);
    } catch {
      return res.redirect("/error500.html");
    }

    res
      .cookie(
        ACCESS_TOKEN_COOKIE_NAME,
        newAccessToken,
        ACCESS_TOKEN_COOKIE_OPTIONS
      )
      .cookie(
        REFRESH_TOKEN_COOKIE_NAME,
        newRefreshToken,
        REFRESH_TOKEN_COOKIE_OPTIONS
      );

    // 🔑 FIX visszadobás
    return res.redirect("/admin");
  });
}

