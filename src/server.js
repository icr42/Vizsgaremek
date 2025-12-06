import http from "http";
import app from "./app.js";

const PORT = process.env.PORT || 3000;

const server = http.createServer(app);

server.listen(PORT, "0.0.0.0", () => {
  console.log(`BurgerBázis backend fut: http://localhost:${PORT}`);
});
