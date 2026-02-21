-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Gép: localhost:3306
-- Létrehozás ideje: 2026. Feb 21. 21:13
-- Kiszolgáló verziója: 5.7.24
-- PHP verzió: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `fogpifkalo`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `admin_audit_logs`
--

CREATE TABLE `admin_audit_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_user_id` int(10) UNSIGNED DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `entity_type` varchar(50) DEFAULT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `details_json` json DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `admin_audit_logs`
--

INSERT INTO `admin_audit_logs` (`id`, `admin_user_id`, `action`, `entity_type`, `entity_id`, `details_json`, `ip_address`, `user_agent`, `created_at`) VALUES
(1, 2, 'order.status.update', 'order', 9, '{\"newStatus\": \"completed\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-02 19:40:31'),
(2, 2, 'Rendelés státusz módosítás', 'order', 5, '{\"newStatus\": \"completed\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-02 19:52:31'),
(3, 2, 'Rendelés státusz módosítás', 'order', 4, '{\"newStatus\": \"completed\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-02 20:29:34'),
(4, 2, 'Termék inaktiválása', 'product', 3, '{}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-02 22:17:06'),
(5, 2, 'Termék újraaktiválása', 'product', 3, '{}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-02 22:17:10'),
(6, 2, 'Termék inaktiválása', 'product', 10, '{}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-02 22:19:08'),
(7, 2, 'Termék újraaktiválása', 'product', 10, '{}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-02 22:19:15'),
(8, 2, 'Termék inaktiválása', 'product', 10, '{}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-03 12:43:35'),
(9, 2, 'Termék újraaktiválása', 'product', 10, '{}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-03 12:43:47'),
(10, 2, 'Termék inaktiválása', 'product', 10, '{}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-04 10:49:29'),
(11, 2, 'Termék újraaktiválása', 'product', 10, '{}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-04 10:49:32'),
(12, 2, 'Termék módosítása', 'product', 2, '{\"name\": \"BBQ Bacon Burger\", \"price\": 3390, \"category\": \"burger\", \"is_active\": 1}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-05 09:36:23'),
(13, 2, 'Termék módosítása', 'product', 2, '{\"name\": \"BBQ Bacon Burger\", \"price\": 3390, \"category\": \"burger\", \"is_active\": 1}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-05 09:37:50'),
(14, 2, 'Termék módosítása', 'product', 1, '{\"name\": \"Classic Burger\", \"price\": 2890, \"category\": \"burger\", \"is_active\": 1}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-05 09:47:33'),
(15, 2, 'Termék módosítása', 'product', 2, '{\"name\": \"BBQ Bacon Burger\", \"price\": 3390, \"category\": \"burger\", \"is_active\": 1}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-05 09:50:35'),
(16, 2, 'Termék módosítása', 'product', 2, '{\"name\": \"BBQ Bacon Burger\", \"price\": 3390, \"category\": \"burger\", \"is_active\": 1}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-05 09:55:58'),
(17, 2, 'Termék módosítása', 'product', 2, '{\"name\": \"BBQ Bacon Burger\", \"price\": 3390, \"category\": \"burger\", \"is_active\": 1}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-05 10:00:24'),
(18, 2, 'Termék módosítása', 'product', 5, '{\"name\": \"Double Smash\", \"price\": 3790, \"category\": \"burger\", \"is_active\": 1}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-05 10:03:32'),
(19, 2, 'Termék módosítása', 'product', 2, '{\"name\": \"BBQ Bacon Burger\", \"price\": 3390, \"category\": \"burger\", \"is_active\": 1}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-05 10:05:22'),
(20, 2, 'Termék módosítása', 'product', 2, '{\"name\": \"BBQ Bacon Burger\", \"price\": 3390, \"category\": \"burger\", \"is_active\": 1}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-05 10:10:43'),
(21, 2, 'Termék létrehozása', 'product', 12, '{\"name\": \"Farm Burger\", \"price\": 5990, \"category\": \"burger\", \"is_active\": 1}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-05 10:13:27'),
(22, 2, 'Termék módosítása', 'product', 1, '{\"name\": \"Classic Burger\", \"price\": 2890, \"category\": \"burger\", \"is_active\": 1, \"is_special_offer\": true}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-05 10:23:56'),
(23, 2, 'Termék módosítása', 'product', 12, '{\"name\": \"Farm Burger\", \"price\": 5990, \"category\": \"burger\", \"is_active\": 1, \"is_special_offer\": true}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-08 11:58:20'),
(24, 2, 'Termék módosítása', 'product', 1, '{\"name\": \"Crunchicken Burger\", \"price\": 2890, \"category\": \"burger\", \"is_active\": 1, \"is_special_offer\": true}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 12:41:19'),
(25, 2, 'Termék módosítása', 'product', 1, '{\"name\": \"Crunchicken Burger\", \"price\": 2890, \"category\": \"burger\", \"is_active\": 1, \"is_special_offer\": true}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 12:42:44'),
(26, 2, 'Termék módosítása', 'product', 2, '{\"name\": \"BBQ Bacon Burger\", \"price\": 3390, \"category\": \"burger\", \"is_active\": 1, \"is_special_offer\": true}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 12:43:57'),
(27, 2, 'Termék módosítása', 'product', 1, '{\"name\": \"Crunchicken Burger\", \"price\": 2890, \"category\": \"burger\", \"is_active\": 1, \"is_special_offer\": true}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 12:51:31'),
(28, 2, 'Termék módosítása', 'product', 11, '{\"name\": \"Uborkás-Majonéz szósz\", \"price\": 499, \"category\": \"side\", \"is_active\": 1, \"is_special_offer\": false}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-21 10:07:06'),
(29, 2, 'Termék módosítása', 'product', 8, '{\"name\": \"Coca Cola 0,5 L\", \"price\": 599, \"category\": \"drink\", \"is_active\": 1, \"is_special_offer\": false}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-21 10:09:51'),
(30, 2, 'Termék módosítása', 'product', 11, '{\"name\": \"Uborkás-Majonéz szósz\", \"price\": 499, \"category\": \"sauce\", \"is_active\": 1, \"is_special_offer\": false}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-21 10:10:14'),
(31, 2, 'Termék módosítása', 'product', 9, '{\"name\": \"Fanta Light 0,5L\", \"price\": 599, \"category\": \"drink\", \"is_active\": 1, \"is_special_offer\": false}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-21 10:10:28'),
(32, 2, 'Termék módosítása', 'product', 10, '{\"name\": \"BBQ szósz\", \"price\": 399, \"category\": \"sauce\", \"is_active\": 1, \"is_special_offer\": false}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-21 10:40:24'),
(33, 2, 'Termék létrehozása', 'product', 13, '{\"name\": \"Steak burgonya\", \"price\": 899, \"category\": \"side\", \"is_active\": 1, \"is_special_offer\": false}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 16:02:59'),
(34, 2, 'Termék módosítása', 'product', 2, '{\"name\": \"BBQ Bacon Burger\", \"price\": 3390, \"category\": \"burger\", \"is_active\": 1, \"is_special_offer\": true}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-14 10:17:38'),
(35, 2, 'Termék módosítása', 'product', 2, '{\"name\": \"BBQ Bacon Burger\", \"price\": 3390, \"category\": \"burger\", \"is_active\": 1, \"is_special_offer\": true}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-14 10:22:19'),
(36, 2, 'Termék módosítása', 'product', 2, '{\"name\": \"BBQ Bacon Burger\", \"price\": 3390, \"category\": \"burger\", \"is_active\": 1, \"is_special_offer\": true}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-14 10:22:33'),
(37, 2, 'Termék módosítása', 'product', 2, '{\"name\": \"BBQ Bacon Burger\", \"price\": 3390, \"category\": \"burger\", \"is_active\": 1, \"is_special_offer\": true}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-14 11:19:06'),
(38, 2, 'Termék módosítása', 'product', 2, '{\"name\": \"BBQ Bacon Burger\", \"price\": 3390, \"category\": \"burger\", \"is_active\": 1, \"is_special_offer\": true}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-14 21:20:10'),
(39, 2, 'Termék módosítása', 'product', 2, '{\"name\": \"BBQ Bacon Burger\", \"price\": 3390, \"category\": \"burger\", \"is_active\": 1, \"is_special_offer\": true}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-14 21:20:19'),
(40, 2, 'Termék módosítása', 'product', 2, '{\"name\": \"BBQ Bacon Burger\", \"price\": 3390, \"category\": \"burger\", \"is_active\": 1, \"is_special_offer\": true}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-14 21:20:38'),
(41, 2, 'Termék módosítása', 'product', 2, '{\"name\": \"BBQ Bacon Burger\", \"price\": 3390, \"category\": \"burger\", \"is_active\": 1, \"is_special_offer\": true}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-14 21:20:55'),
(42, 2, 'Termék módosítása', 'product', 2, '{\"name\": \"BBQ Bacon Burger\", \"price\": 3390, \"category\": \"burger\", \"is_active\": 1, \"is_special_offer\": true}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-16 12:37:49');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `cart_items`
--

INSERT INTO `cart_items` (`id`, `user_id`, `product_id`, `quantity`, `created_at`) VALUES
(1, 1, 1, 2, '2025-11-13 23:10:23'),
(5, 8, 2, 1, '2025-12-16 10:23:31'),
(30, 2, 1, 1, '2026-01-15 20:03:49'),
(31, 2, 2, 2, '2026-01-15 20:03:52'),
(32, 2, 12, 1, '2026-01-15 20:03:53');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `shipping_name` varchar(255) DEFAULT NULL,
  `shipping_phone` varchar(50) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `total_price`, `created_at`, `shipping_name`, `shipping_phone`, `shipping_address`, `payment_method`, `note`) VALUES
(1, 2, 'completed', '2890.00', '2025-11-14 08:28:22', NULL, NULL, NULL, NULL, NULL),
(2, 2, 'completed', '2890.00', '2025-11-14 08:55:33', NULL, NULL, NULL, NULL, NULL),
(3, 2, 'completed', '2490.00', '2025-11-14 09:35:47', NULL, NULL, NULL, NULL, NULL),
(4, 2, 'completed', '3390.00', '2025-11-14 12:18:08', NULL, NULL, NULL, NULL, NULL),
(5, 2, 'completed', '2890.00', '2025-11-14 12:29:24', NULL, NULL, NULL, NULL, NULL),
(6, 2, 'cancelled', '2890.00', '2025-11-14 13:31:10', NULL, NULL, NULL, NULL, NULL),
(8, 2, 'completed', '3790.00', '2025-11-14 19:35:11', NULL, NULL, NULL, NULL, NULL),
(9, 2, 'completed', '2890.00', '2025-11-14 20:39:31', NULL, NULL, NULL, NULL, NULL),
(10, 2, 'completed', '2890.00', '2025-11-19 13:15:53', NULL, NULL, NULL, NULL, NULL),
(11, 2, 'completed', '9670.00', '2025-11-20 21:51:15', 'Bédy Viktor', '2321312312', 'WEte János', 'cash', 'Helo'),
(12, 2, 'cancelled', '12960.00', '2025-11-26 19:15:12', 'Bédy Viktor', '06203651451', 'Ete János utca', 'cash', '3/C'),
(13, 6, 'completed', '6280.00', '2025-11-26 19:51:35', 'Bédy Viktor', '06203651451', 'Ete János utca', 'cash', NULL),
(14, 2, 'completed', '7378.00', '2025-11-28 17:56:15', 'Bédy Viktor', '06203651451', 'Ete János utca', 'cash', NULL),
(15, 2, 'cancelled', '6280.00', '2025-12-02 09:54:25', 'Bédy Viktor', '06203651451', 'Ete János utca', 'cash', NULL),
(16, 2, 'completed', '12760.00', '2025-12-04 11:17:47', 'Bédy Viktor', '06203651451', 'Ete János utca', 'cash', NULL),
(17, 2, 'completed', '9380.00', '2025-12-06 15:14:26', 'Bédy Viktor', '06203651451', 'Ete János utca', 'cash', NULL),
(18, 2, 'completed', '8880.00', '2025-12-06 15:28:39', 'Bédy Viktor', '06203651451', 'Ete János utca', 'cash', NULL),
(19, 2, 'completed', '8480.00', '2025-12-06 16:18:18', 'Bédy Viktor', '06203651451', 'Ete János utca', 'cash', NULL),
(20, 2, 'completed', '9380.00', '2025-12-08 11:29:30', 'Diósi Levente', '06203651451', 'Et János utca', 'cash', NULL),
(21, 2, 'completed', '2890.00', '2025-12-08 11:31:17', 'Diósi Levente', '06203651451', 'Et János utca', 'cash', NULL),
(22, 2, 'completed', '3390.00', '2025-12-08 12:26:09', 'Diósi Levente', '06203651451', 'Et János utca', 'cash', NULL),
(23, 2, 'completed', '2890.00', '2025-12-08 15:41:05', 'Diósi Levente', '06203651451', 'Et János utca', 'cash', NULL),
(24, 2, 'completed', '2890.00', '2025-12-08 20:09:31', 'Bédy Viktor', '06203651451', 'Ete János utca', 'cash', NULL),
(25, 2, 'completed', '9380.00', '2025-12-09 09:45:45', 'Bédy Viktor', '0203651451', 'Ete János utca 3/C', 'cash', NULL),
(26, 2, 'completed', '6280.00', '2025-12-09 10:00:39', 'Bédy Viktor', '0203651451', 'Ete János utca 3/C', 'cash', NULL),
(27, 2, 'completed', '6280.00', '2025-12-09 12:57:41', 'Bédy Viktor', '0203651451', 'Ete János utca 3/C', 'cash', NULL),
(28, 2, 'completed', '5980.00', '2025-12-12 17:20:49', 'Bédy Viktor', '0203651451', 'Ete János utca 3/C', 'cash', NULL),
(29, 2, 'completed', '2890.00', '2025-12-12 17:26:33', 'Bédy Viktor', '0203651451', 'Ete János utca 3/C', 'cash', NULL),
(30, 8, 'completed', '3889.00', '2025-12-16 10:05:01', 'Horváth Olivér', '+36754567443', '4332, Pécs, kfoe, 65', 'cash', NULL),
(31, 2, 'completed', '6680.00', '2025-12-16 12:37:12', 'Bédy Viktor', '06203651451', 'Ete János utca', 'cash', NULL),
(32, 2, 'pending', '3390.00', '2025-12-16 12:46:20', 'Bédy Viktor', '06203651451', 'Ete János utca', 'cash', NULL),
(33, 2, 'completed', '16458.00', '2026-01-05 11:54:00', 'Bédy Viktor', '06203651451', 'Ete János utca', 'cash', NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `unit_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `unit_price`) VALUES
(1, 1, 1, 1, '2890.00'),
(2, 2, 1, 1, '2890.00'),
(3, 3, 3, 1, '2490.00'),
(4, 4, 2, 1, '3390.00'),
(5, 5, 1, 1, '2890.00'),
(6, 6, 1, 1, '2890.00'),
(8, 8, 5, 1, '3790.00'),
(9, 9, 1, 1, '2890.00'),
(10, 10, 1, 1, '2890.00'),
(11, 11, 1, 1, '2890.00'),
(12, 11, 2, 2, '3390.00'),
(13, 12, 1, 2, '2890.00'),
(14, 12, 5, 1, '3790.00'),
(15, 12, 2, 1, '3390.00'),
(16, 13, 1, 1, '2890.00'),
(17, 13, 2, 1, '3390.00'),
(18, 14, 1, 1, '2890.00'),
(19, 14, 2, 1, '3390.00'),
(20, 14, 11, 1, '499.00'),
(21, 14, 8, 1, '599.00'),
(22, 15, 1, 1, '2890.00'),
(23, 15, 2, 1, '3390.00'),
(24, 16, 1, 1, '2890.00'),
(25, 16, 2, 2, '3390.00'),
(26, 16, 4, 1, '3090.00'),
(27, 17, 2, 1, '3390.00'),
(28, 17, 12, 1, '5990.00'),
(29, 18, 1, 1, '2890.00'),
(30, 18, 12, 1, '5990.00'),
(31, 19, 3, 1, '2490.00'),
(32, 19, 12, 1, '5990.00'),
(33, 20, 2, 1, '3390.00'),
(34, 20, 12, 1, '5990.00'),
(35, 21, 1, 1, '2890.00'),
(36, 22, 2, 1, '3390.00'),
(37, 23, 1, 1, '2890.00'),
(38, 24, 1, 1, '2890.00'),
(39, 25, 2, 1, '3390.00'),
(40, 25, 12, 1, '5990.00'),
(41, 26, 1, 1, '2890.00'),
(42, 26, 2, 1, '3390.00'),
(43, 27, 1, 1, '2890.00'),
(44, 27, 2, 1, '3390.00'),
(45, 28, 1, 1, '2890.00'),
(46, 28, 4, 1, '3090.00'),
(47, 29, 1, 1, '2890.00'),
(48, 30, 2, 1, '3390.00'),
(49, 30, 11, 1, '499.00'),
(50, 31, 1, 1, '2890.00'),
(51, 31, 5, 1, '3790.00'),
(52, 32, 2, 1, '3390.00'),
(53, 33, 12, 1, '5990.00'),
(54, 33, 1, 1, '2890.00'),
(55, 33, 11, 1, '499.00'),
(56, 33, 4, 1, '3090.00'),
(57, 33, 2, 1, '3390.00'),
(58, 33, 8, 1, '599.00');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text,
  `ingredients` json DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_special_offer` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `category` enum('burger','side','drink','sauce') NOT NULL DEFAULT 'burger'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `ingredients`, `price`, `image_url`, `is_active`, `is_special_offer`, `created_at`, `category`) VALUES
(1, 'Crunchicken Burger', 'Ropogás-riasztás!\nMegérkezett a hónap sztárja: Crunchiken Burger!', NULL, '2890.00', '/uploads/products/1766144479676-549563126.jpg', 1, 1, '2025-11-13 23:03:25', 'burger'),
(2, 'BBQ Bacon Burger', 'Füstös BBQ szósz, karamellizált hagyma és bacon.\nFüstös BBQ szósz, karamellizált hagyma és bacon.\nFüstös BBQ szósz, karamellizált hagyma és bacon.\nFüstös BBQ szósz, karamellizált hagyma és bacon.\nFüstös BBQ szósz, karamellizált hagyma és bacon.\nFüstös BBQ szósz, karamellizált hagyma és bacon.\nFüstös BBQ szósz, karamellizált hagyma és bacon.\nFüstös BBQ szósz, karamellizált hagyma és bacon.\nFüstös BBQ szósz, karamellizált hagyma és bacon.\nFüstös BBQ szósz, karamellizált hagyma és bacon.', '[\"Bacon\", \"Hagyma\", \"BBQ\", \"Paprika\"]', '3390.00', '/uploads/products/1766144637349-282902094.jpg', 1, 1, '2025-11-13 23:03:25', 'burger'),
(3, 'Veggie Delight', 'Csicseriborsó pogácsa, avokádó, friss zöldek.', NULL, '2490.00', '', 1, 0, '2025-11-13 23:03:25', 'burger'),
(4, 'Spicy Inferno', 'Jalapeño, pepper jack sajt és csípős szósz.', NULL, '3090.00', '', 1, 0, '2025-11-13 23:03:25', 'burger'),
(5, 'Double Smash', 'Dupla hús, dupla sajt, igazi brutál burger.', NULL, '3790.00', '', 1, 0, '2025-11-13 23:03:25', 'burger'),
(8, 'Coca Cola 0,5 L', 'Coca cola', NULL, '599.00', '/uploads/products/1766308191035-279017294.png', 1, 0, '2025-11-21 11:12:28', 'drink'),
(9, 'Fanta Light 0,5L', NULL, NULL, '599.00', '/uploads/products/1766308228372-521176566.png', 1, 0, '2025-11-26 17:54:41', 'drink'),
(10, 'BBQ szósz', 'Házi készítésű BBQ szósz egyenesen a konyhánkból.', NULL, '399.00', '/uploads/products/1766310024555-303012008.png', 1, 0, '2025-11-26 19:16:19', 'sauce'),
(11, 'Uborkás-Majonéz szósz', 'Jó', NULL, '499.00', '/uploads/products/1766308026282-170471680.png', 1, 0, '2025-11-28 17:55:40', 'sauce'),
(12, 'Farm Burger', 'Füstös, sajtos, igazi farm ízélmény', NULL, '5990.00', '/uploads/products/1765191500282-830464507.png', 1, 1, '2025-12-05 10:13:27', 'burger'),
(13, 'Steak burgonya', 'Finom, fűszeres steakburgonya frissen sülve, egyenesen a konyhánkból', NULL, '899.00', '/uploads/products/1767452579718-835466212.png', 1, 0, '2026-01-03 16:02:59', 'side');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `refresh_tokens`
--

CREATE TABLE `refresh_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(500) NOT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `refresh_tokens`
--

INSERT INTO `refresh_tokens` (`id`, `user_id`, `token`, `expires_at`, `created_at`) VALUES
(3, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY0ODM3MTEwLCJleHAiOjE3NjU0NDE5MTB9.tziM2qpDXdmOF7xAwijSaeWHOnUaj2-ZBqxuoWxvBeQ', '2025-12-11 09:31:50', '2025-12-04 09:31:50'),
(4, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY0ODM4OTMzLCJleHAiOjE3NjU0NDM3MzN9.mPhX20QrZeTeTsKmqD0EfPThRWKTVG0qH_2UujU3CYg', '2025-12-11 10:02:13', '2025-12-04 10:02:13'),
(5, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY0ODQxNzAyLCJleHAiOjE3NjU0NDY1MDJ9.yYEMLajiNYDo24c8bO86Y7pnsfKh0wSCXwm2nXew1t8', '2025-12-11 10:48:22', '2025-12-04 10:48:22'),
(7, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY0ODQyODQzLCJleHAiOjE3NjU0NDc2NDN9.hT8cJpOg4mNPhaYSBEucYEbYPf9HUJuO8224QkDuLQk', '2025-12-11 11:07:23', '2025-12-04 11:07:23'),
(15, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY0ODU0MDk0LCJleHAiOjE3NjU0NTg4OTR9.iABBP-jdoL27sYZaxQDQ5_8kC3lR0E6hWccXYBlH6P8', '2025-12-11 14:14:54', '2025-12-04 13:57:40'),
(16, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY0ODU0MzE3LCJleHAiOjE3NjU0NTkxMTd9.45wtxTiaTV9tL_vMAxp62MCT4UtUDL7B1ZB1Nmjx2vI', '2025-12-11 14:18:37', '2025-12-04 14:15:00'),
(21, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1MDMxNzU0LCJleHAiOjE3NjU2MzY1NTR9.C8ee_mXLCGmT1NsSSAIo5qUlKN21wIEws7WsU383YGs', '2025-12-13 15:35:54', '2025-12-06 10:55:21'),
(22, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1MDE1Nzc1LCJleHAiOjE3NjU2MjA1NzV9.Q3qG6jBqwo8bUMpSJxqWbzmtY_dkQoCfW13qSR9jkDY', '2025-12-13 11:09:35', '2025-12-06 11:09:35'),
(23, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1MDE2MTcxLCJleHAiOjE3NjU2MjA5NzF9.P1RxMyQv3pQs1fCIDKobbtu68aeNpgbwwgKXqPs7cwA', '2025-12-13 11:16:11', '2025-12-06 11:16:11'),
(24, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1MDMxNDY5LCJleHAiOjE3NjU2MzYyNjl9.jBOUhrv5qTs4V7Ftn-8cYtwkG7X0jOxTjy-L8_zvUTc', '2025-12-13 15:31:09', '2025-12-06 14:51:14'),
(25, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1MjIwOTUzLCJleHAiOjE3NjU4MjU3NTN9.SLybP_ERqIGPl3EQ4bCpoziWn25U0llvCGkznA6Texg', '2025-12-15 20:09:13', '2025-12-06 15:36:09'),
(26, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1MDMzOTAyLCJleHAiOjE3NjU2Mzg3MDJ9.QizkhI4wwBUwrhpg55dhrPILGEyD7wPFl0_6Q0NMHf8', '2025-12-13 16:11:42', '2025-12-06 16:11:33'),
(27, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1MDM0Mjk4LCJleHAiOjE3NjU2MzkwOTh9.-8dMapiUF6hRzwWSFFmEva7_M9E4XSE0lsC_NSlLhlw', '2025-12-13 16:18:18', '2025-12-06 16:17:53'),
(29, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1MjEwMDk1LCJleHAiOjE3NjU4MTQ4OTV9.Bu9nkLt62trqrzIRLxUExxP_LM2O5Kjn-8ktP0GKm_g', '2025-12-15 17:08:15', '2025-12-08 11:28:29'),
(30, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1MTkxMTc5LCJleHAiOjE3NjU3OTU5Nzl9.9bsaCt88aOXdOQopOmYvN_-3IsSxLacMldZS3S_dFp4', '2025-12-15 11:52:59', '2025-12-08 11:28:58'),
(32, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1MjA0ODk3LCJleHAiOjE3NjU4MDk2OTd9.PbTiyfH62gkl42iVwgCPTes5WhMrwV-aonL-BXKPnpQ', '2025-12-15 15:41:37', '2025-12-08 11:58:01'),
(33, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1MjAyNDYwLCJleHAiOjE3NjU4MDcyNjB9.79Xzny8wXOzA920bS0wBMU1BZcestIPuf4-ZqPLStPw', '2025-12-15 15:01:00', '2025-12-08 14:54:09'),
(34, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1MjE4NTY2LCJleHAiOjE3NjU4MjMzNjZ9.aVuXTX2vUoD7Yyt7Ds4QpszL7wMzvqrWQUR1E3Ux-pE', '2025-12-15 19:29:26', '2025-12-08 19:22:14'),
(35, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1MjE4ODMxLCJleHAiOjE3NjU4MjM2MzF9.XP9KZ0y_FS9vcR03fgK-H9fik_R4YlMsMdb0jp-gZiI', '2025-12-15 19:33:51', '2025-12-08 19:32:18'),
(36, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1MjIxMDAyLCJleHAiOjE3NjU4MjU4MDJ9.H2fbJ8w7G5uNi1qEA1dM7hdc0ARVZNvxh56MVufDv-I', '2025-12-15 20:10:02', '2025-12-08 20:07:51'),
(37, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1MjIxNjI0LCJleHAiOjE3NjU4MjY0MjR9.CdFrWMHYy20JMvei8uaB1vBFmX-7_QtVm1zJPI4pvPU', '2025-12-15 20:20:24', '2025-12-08 20:20:04'),
(38, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1MjIzNTM1LCJleHAiOjE3NjU4MjgzMzV9.oQmDzrBrTcsU8CAFZA_9bJzved4b9300mZ1QV0y3dsM', '2025-12-15 20:52:15', '2025-12-08 20:52:15'),
(39, 6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NiwiaWF0IjoxNzY1MjY5Nzc1LCJleHAiOjE3NjU4NzQ1NzV9.cYJ4e7jQMD9nIu7e9X56EomDqmaNIzEaJbWCW3Y7s2c', '2025-12-16 09:42:55', '2025-12-09 09:42:23'),
(40, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1ODc3ODExLCJleHAiOjE3NjY0ODI2MTF9.75b7P-ATvDzraAkKv_WR0u1aH2GVrThpAjpVzXk9nj0', '2025-12-23 10:36:51', '2025-12-09 09:42:55'),
(41, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1MjY5OTQ1LCJleHAiOjE3NjU4NzQ3NDV9.8UimnWfnOWQC06-aPVTqtn8n5sizdDS6kIWD6BDcBPc', '2025-12-16 09:45:45', '2025-12-09 09:45:22'),
(42, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1MjcwODM5LCJleHAiOjE3NjU4NzU2Mzl9.CNK_JjS7wpf07xuFCbWauIN8oi2HwGYKnItVVk2VWOU', '2025-12-16 10:00:39', '2025-12-09 09:59:58'),
(43, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1MjgzMzA4LCJleHAiOjE3NjU4ODgxMDh9.UtWemRaPIJzMAIrJBGvFZZyIwWNgGZaF4CL41Wz7ev4', '2025-12-16 13:28:28', '2025-12-09 12:56:43'),
(44, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1NTU2NzkzLCJleHAiOjE3NjYxNjE1OTN9.AtfkBrvCE3J667asR30ch3_vum-Np7_Hm9TcBOrgGVM', '2025-12-19 17:26:33', '2025-12-12 17:20:19'),
(45, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1NTU3MDQ5LCJleHAiOjE3NjYxNjE4NDl9.RL_jgNbGaI9ciADMUIKNxdf7ch9ypVBenrR-nKkU-Sk', '2025-12-19 17:30:49', '2025-12-12 17:30:49'),
(46, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1ODc2NTQwLCJleHAiOjE3NjY0ODEzNDB9.WsJy9Lqo9dk7JUVys4WQ5U4gYQlr_Ok5wfn6Pxd67AQ', '2025-12-23 10:15:40', '2025-12-16 09:57:55'),
(48, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1ODgzNTI1LCJleHAiOjE3NjY0ODgzMjV9.obqRN8PWx_Yn8VH3TvXmOdegkGxaEJcKCrhzJhJr8fo', '2025-12-23 12:12:05', '2025-12-16 12:12:05'),
(49, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1ODg0MzM1LCJleHAiOjE3NjY0ODkxMzV9.VdJtbEfloYFm-r9r3p3RDRJTJOeK7SImd-3-sDUjBHc', '2025-12-23 12:25:35', '2025-12-16 12:17:43'),
(50, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY1ODg1OTE0LCJleHAiOjE3NjY0OTA3MTR9.RMBjwDagkKdnBfEdYLTl8_NNt_67q51uiDifQlisnQ0', '2025-12-23 12:51:54', '2025-12-16 12:36:01'),
(51, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY2MDU1OTI2LCJleHAiOjE3NjY2NjA3MjZ9.g-2cf2IGDtMLxCahzb6ka_vtC6URfQoohDQAw9kBRzQ', '2025-12-25 12:05:26', '2025-12-16 12:51:58'),
(52, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY2MDU1NzQ1LCJleHAiOjE3NjY2NjA1NDV9.fEp0WyDnHhtcvxQTFqi7X79ehAfRK063-_J0rS5HLIk', '2025-12-25 12:02:25', '2025-12-18 12:01:55'),
(53, 6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NiwiaWF0IjoxNzY2MDU2MTM3LCJleHAiOjE3NjY2NjA5Mzd9.g7vAYrgGdRE4kYFvinWzWqkksL61iD5xmLgII4hEVyE', '2025-12-25 12:08:57', '2025-12-18 12:05:35'),
(57, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY2MjI3MDIzLCJleHAiOjE3NjY4MzE4MjN9.INIRolfKi7rCC0O4ppeNl08onOlwOxnbY43VyuqCaCM', '2025-12-27 11:37:03', '2025-12-18 12:16:05'),
(59, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY2MjI3MTkyLCJleHAiOjE3NjY4MzE5OTJ9.K8keGYvDSr1XIHsgUtaW99ulcU1_jJF8sr2lEJ_xtRk', '2025-12-27 11:39:52', '2025-12-20 11:38:51'),
(60, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY2MjI3MjMwLCJleHAiOjE3NjY4MzIwMzB9.HL4-VAEUkgwxE6O_9pMBGHv98BDh3MVpvW6P-z0nJCw', '2025-12-27 11:40:30', '2025-12-20 11:40:02'),
(61, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY2MjQwMjM5LCJleHAiOjE3NjY4NDUwMzl9.qqJfGSyMgcaNL2SljTd1vvOkhOM2WYxuA0_MhOijRdY', '2025-12-27 15:17:19', '2025-12-20 11:40:41'),
(63, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY2MjQwMzkzLCJleHAiOjE3NjY4NDUxOTN9.RMkW3GoXyuSv_iHujnuru5lFZlxqZJI0v0ou8jSN5mE', '2025-12-27 15:19:53', '2025-12-20 15:17:49'),
(65, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY2MjU3MjgzLCJleHAiOjE3NjY4NjIwODN9.JSXFisbv5a-quQIRkefOQVgP3pZdJWRvdAkRlAM_nDY', '2025-12-27 20:01:23', '2025-12-20 15:20:28'),
(66, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY2MjU4NTA1LCJleHAiOjE3NjY4NjMzMDV9.T6d_mquuiRAB4Z-HJGyw0B_Ks1M3XufBeGEJpvv2L8Y', '2025-12-27 20:21:45', '2025-12-20 20:01:27'),
(68, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY2MjY1MjU4LCJleHAiOjE3NjY4NzAwNTh9.kCvZSMLJyi7rVVhe-E9eRBF7AeprHJl3PhP9FcxAFKA', '2025-12-27 22:14:18', '2025-12-20 20:52:30'),
(69, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY2MzA2NDI4LCJleHAiOjE3NjY5MTEyMjh9.AMazAWsAGjgkpfDEUJGtLYVsaj6zfv3i01VjEzaihaA', '2025-12-28 09:40:28', '2025-12-21 09:34:23'),
(70, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY2MzA4MTUwLCJleHAiOjE3NjY5MTI5NTB9.IMK7931Tr5Dr41W7nfgKfGlJBKy5HM_8IRY5AhRhCWU', '2025-12-28 10:09:10', '2025-12-21 09:41:52'),
(71, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY2MzA4NTI1LCJleHAiOjE3NjY5MTMzMjV9.hH3qKJZOEF1eBNe9a6Kmz4vMvtURlY8h9olju2ZBOfI', '2025-12-28 10:15:25', '2025-12-21 10:09:16'),
(75, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY4NTYzNjY0LCJleHAiOjE3NjkxNjg0NjR9.DoxHRini0dSYcrENyj_c6IcCLzTKg5Orqhj-B9mOkY0', '2026-01-23 12:41:04', '2026-01-15 20:58:40'),
(76, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY5NzYyMzQyLCJleHAiOjE3NzAzNjcxNDJ9.M1vFod0VGCCLHmyFDPrfuCPyuXRbzDuICZY5O3TycGw', '2026-02-06 09:39:02', '2026-01-25 12:11:50'),
(77, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY5MzM5NTQ1LCJleHAiOjE3Njk5NDQzNDV9.6a-ge579elPrFeu0Ixgk9c-G47ZSIZ3uJWU5mf_h_sk', '2026-02-01 12:12:25', '2026-01-25 12:12:25'),
(78, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY5MzQyNTQyLCJleHAiOjE3Njk5NDczNDJ9.UTqGKP3XOuD3kaM48fvZbAO5I1lfMx86-7YLc2o6rTM', '2026-02-01 13:02:22', '2026-01-25 13:00:43'),
(79, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzY5Nzc0MjIxLCJleHAiOjE3NzAzNzkwMjF9.gDJ7wuNGynHpvbsV5igh5QWmhxDt0HWi5MM7n5zECKo', '2026-02-06 12:57:01', '2026-01-29 20:01:48'),
(80, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzcwMTE5NTUyLCJleHAiOjE3NzA3MjQzNTJ9.OKwAbQfC605_8Rzw4HO98hErZqklnBeueqcd7aWYWoE', '2026-02-10 12:52:32', '2026-02-03 11:12:13'),
(81, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzcwODk3MzEwLCJleHAiOjE3NzE1MDIxMTB9.krBVeLDkemHvURgQZJt-L20ghkpX7AWTELimh0isd8A', '2026-02-19 12:55:10', '2026-02-12 12:29:24'),
(83, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzcxNDk4MzE0LCJleHAiOjE3NzIxMDMxMTR9.V2bMMtF8FBUfjb0TCR9xsVbPqwcqgI5T5kwtmf9C_JM', '2026-02-26 11:51:54', '2026-02-19 11:45:04'),
(84, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzcxNDk3OTA0LCJleHAiOjE3NzIxMDI3MDR9.bAr1KWxTr-jx0ID8QmVERvzSLOer_2htIQDmCrJrq0o', '2026-02-26 11:45:04', '2026-02-19 11:45:04');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reservations`
--

CREATE TABLE `reservations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_number` tinyint(3) UNSIGNED NOT NULL,
  `reservation_date` date NOT NULL,
  `reservation_time` time NOT NULL,
  `end_time` time DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `people_count` tinyint(3) UNSIGNED NOT NULL,
  `note` text,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('pending','confirmed','cancelled') NOT NULL DEFAULT 'pending',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `reservations`
--

INSERT INTO `reservations` (`id`, `table_number`, `reservation_date`, `reservation_time`, `end_time`, `name`, `email`, `phone`, `people_count`, `note`, `user_id`, `status`, `created_at`) VALUES
(1, 2, '2025-11-25', '06:33:00', NULL, 'Bédy Viktor', '', '06203651451', 2, NULL, NULL, 'confirmed', '2025-11-21 12:25:59'),
(2, 3, '2025-11-25', '17:31:00', NULL, 'Bédy Viktor O', '', '06204651451', 3, NULL, NULL, 'confirmed', '2025-11-21 14:32:03'),
(3, 3, '2025-11-27', '19:30:00', '21:00:00', 'BEDY VIKTOR OLIVER', '', '06 20 514 9495', 3, NULL, NULL, 'confirmed', '2025-11-25 19:58:23'),
(4, 1, '2025-11-27', '09:57:00', '10:57:00', 'Viktor Bédy', '', '333', 3, NULL, 2, 'cancelled', '2025-11-26 09:57:10'),
(5, 2, '2025-11-29', '12:14:00', '13:14:00', 'Viktor Bédy', '', '33333', 2, NULL, 2, 'cancelled', '2025-11-26 11:14:22'),
(6, 3, '2025-12-01', '17:53:00', '19:53:00', 'Viktor Bédy', '', '33333', 2, NULL, 2, 'confirmed', '2025-11-28 17:53:50'),
(7, 2, '2025-12-02', '15:43:00', '17:43:00', 'Bédy Viktor', '', '06203651451', 2, NULL, 2, 'confirmed', '2025-12-01 15:43:35'),
(8, 2, '2025-12-02', '16:09:00', '17:09:00', 'vdkr', 'teszt@teszt.com', '3333', 2, NULL, 2, 'confirmed', '2025-12-01 16:09:19'),
(9, 2, '2025-12-02', '17:19:00', '18:19:00', 'Bédy Viktor', 'bedyviktor2@gmail.com', '06203651451', 2, NULL, 2, 'confirmed', '2025-12-01 16:19:37'),
(10, 2, '2025-12-03', '18:53:00', '19:53:00', 'Bédy Viktor', 'laminaltpadlottv@gmail.com', '06203651451', 2, NULL, 2, 'cancelled', '2025-12-01 17:53:57'),
(11, 2, '2025-12-03', '18:22:00', '19:22:00', 'Bédy Viktor', 'bedyviktor2@gmail.com', '06203651451', 2, NULL, 2, 'cancelled', '2025-12-01 18:22:17'),
(12, 2, '2025-12-02', '18:29:00', '19:29:00', 'Bédy Viktor', 'laminaltpadlottv@gmail.com', '06203651451', 2, NULL, 2, 'cancelled', '2025-12-01 18:29:48'),
(13, 2, '2025-12-03', '12:14:00', '13:14:00', 'Bédy Viktor', 'laminaltpadlottv@gmail.com', '06203651451', 3, NULL, 2, 'confirmed', '2025-12-02 11:14:34'),
(14, 2, '2025-12-03', '12:14:00', '13:14:00', 'Bédy Viktor', 'laminaltpadlottv@gmail.com', '06203651451', 2, NULL, 6, 'pending', '2025-12-02 22:24:53'),
(15, 2, '2025-12-03', '23:10:00', '23:38:00', 'Bédy Viktor', 'laminaltpadlottv@gmail.com', '06203651451', 2, NULL, 2, 'pending', '2025-12-02 23:11:11'),
(16, 2, '2025-12-04', '13:53:00', '14:53:00', 'Bédy Viktor', 'laminaltpadlottv@gmail.com', '06203651451', 2, NULL, 2, 'cancelled', '2025-12-04 10:53:21'),
(17, 2, '2025-12-05', '15:00:00', '16:00:00', 'Bédy Viktor', 'laminaltpadlottv@gmail.com', '06203651451', 2, NULL, 2, 'pending', '2025-12-04 19:00:35'),
(18, 3, '2025-12-17', '11:59:00', '12:59:00', 'Horváth Olivér', 'oliver180903@gmail.com', '06204042404', 12, 'éhpgbouphuo', 8, 'pending', '2025-12-16 10:14:30'),
(19, 1, '2025-12-18', '15:05:00', '16:05:00', 'Bédy Viktor', 'laminaltpadlottv@gmail.com', '06203651451', 3, NULL, 2, 'pending', '2025-12-16 13:06:00'),
(20, 6, '2026-01-18', '15:38:00', '17:41:00', 'T Levi', 'bedyviktor2@gmail.com', '06203651451', 5, 'Nem szeretem a hagymát', NULL, 'pending', '2026-01-16 12:35:59');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `is_delivery` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `email`, `password_hash`, `is_admin`, `is_delivery`, `name`, `created_at`) VALUES
(1, 'teszt@example.com', '$2b$10$2MO2DTj3Rl0Dw1wOupmJNOc872VA1ZwKZool41KTYS3EG4bcLgXka', 0, 0, 'Teszt Elek', '2025-11-13 22:31:33'),
(2, 'laminaltpadlottv@gmail.com', '$2b$10$QR/V5NoCGvdhqQguBmZYnOAEbn4iVy.lpa9n3emN41XSGIOZnAhwK', 1, 1, 'Bédy Viktor', '2025-11-13 22:42:49'),
(3, 'orcshaman13@gmail.com', '$2b$10$ON1R912ppRzAVJ.F4LQ39.T1Q306dmBENNvGTjinC0JJzrfhs9oXu', 0, 0, 'Viktor Bédy', '2025-11-14 10:26:57'),
(4, 'laminaltpadlott@gmail.com', '$2b$10$C1nKiGyPT17l7oMQjo6ZEu9s/X1Q4jKh21AUKb8QwqoTGPD0eAR9W', 0, 0, 'Bédy Viktor', '2025-11-20 20:52:34'),
(5, 'laminaltpadlot@gmail.com', '$2b$10$SO.o/i9YUzp2Nevi73gGg.sFSG21T0NW/qFTU2LgyedSMyKE8qL6m', 0, 0, 'Bédy Viktor', '2025-11-20 21:03:26'),
(6, 'bedyviktor2@gmail.com', '$2b$10$2ZmPsLENMTA/.DbF0ncja.IXG8I2fLOW2x9kQIXc41fR53f4QvM6e', 0, 0, 'Bédy Viktor', '2025-11-26 19:50:56'),
(7, 'laminaltpadlottvv@gmail.com', '$2b$10$JWJzAfOnn.pgbArTpm8QL.J7.bvgS3mVI3gg0cD4jRGs4sstWhtAO', 0, 0, 'Bédy Viktor', '2025-12-03 11:28:51'),
(8, 'oliver180903@gmail.com', '$2b$10$n8AK2Zmq7taoXgMyewMevuiajYD5Az.N0PFWDiaEGJgtPLYEstTEO', 0, 0, 'Horváth Olivér', '2025-12-16 10:01:00');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `admin_audit_logs`
--
ALTER TABLE `admin_audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_admin_user` (`admin_user_id`),
  ADD KEY `idx_entity` (`entity_type`,`entity_id`);

--
-- A tábla indexei `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_user_product` (`user_id`,`product_id`),
  ADD KEY `fk_cart_product` (`product_id`);

--
-- A tábla indexei `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_user` (`user_id`);

--
-- A tábla indexei `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orderitems_order` (`order_id`),
  ADD KEY `fk_orderitems_product` (`product_id`);

--
-- A tábla indexei `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `refresh_tokens`
--
ALTER TABLE `refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_refresh_token_token` (`token`),
  ADD KEY `idx_refresh_token_user` (`user_id`);

--
-- A tábla indexei `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `admin_audit_logs`
--
ALTER TABLE `admin_audit_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT a táblához `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT a táblához `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT a táblához `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT a táblához `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT a táblához `refresh_tokens`
--
ALTER TABLE `refresh_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT a táblához `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `admin_audit_logs`
--
ALTER TABLE `admin_audit_logs`
  ADD CONSTRAINT `fk_admin_user` FOREIGN KEY (`admin_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Megkötések a táblához `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `fk_cart_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cart_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `fk_orderitems_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orderitems_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Megkötések a táblához `refresh_tokens`
--
ALTER TABLE `refresh_tokens`
  ADD CONSTRAINT `fk_refresh_tokens_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
