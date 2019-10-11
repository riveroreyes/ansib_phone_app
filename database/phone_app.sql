-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: phone_app_mysql:3306
-- Tiempo de generación: 11-10-2019 a las 04:18:12
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `phone_app`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`id`, `name`, `surname`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Cheila', 'Bautista', 'cheilabautista@hotmail.com', '2019-10-11 01:45:33', '2019-10-11 01:45:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(22, '2019_10_10_163752_create_product_table', 2),
(23, '2019_10_10_183548_create_customers_table', 2),
(24, '2019_10_10_184359_create_orders_table', 2),
(25, '2019_10_10_201005_create_order_products_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('5b582fc77f0a6657484c82393d28a4a7169f25374382c1b06e2b6be5ea6133f75339463344fd1264', 1, 1, NULL, '[]', 0, '2019-10-11 04:05:45', '2019-10-11 04:05:45', '2019-10-26 04:05:45'),
('90c081b2ad5c968080bd12006a35716b87897eca436d558787d15a532b97266759a1a1d0141d9b55', 1, 1, NULL, '[]', 0, '2019-10-11 03:57:27', '2019-10-11 03:57:27', '2019-10-26 03:57:27'),
('b796c2493e590f6f6b9de2b3ea5d2625440078df5290b7c767ddad64a3e9d1f1075efefbd87f52c7', NULL, 2, NULL, '[]', 0, '2019-10-11 04:12:37', '2019-10-11 04:12:37', '2019-10-26 04:12:37'),
('dd4f1ff384bb9b46b4ad0f3177997ffff295de4dd08a79aa688b7158dcbaf9afced39df244871e8c', NULL, 2, NULL, '[]', 0, '2019-10-11 04:08:53', '2019-10-11 04:08:53', '2019-10-26 04:08:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, 1, 'ansib', 'EaZI9FyQ5k7a1nWCmXeaXtijk9nd2HEl1cyItGa0', 'http://localhost', 0, 1, 0, '2019-10-10 13:52:03', '2019-10-10 13:52:03'),
(2, 1, 'external_device', 'LChhP5eNpc8rHDs21QRA2v0KiPG27TgfGajx8BrP', 'http://localhost', 0, 0, 0, '2019-10-11 04:08:10', '2019-10-11 04:08:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('15e802b03f15b995fd11666eb4f9d7d64ffe1a8dea690712b9d41393ea4d8ae6fdd0589a8ee036ea', '90c081b2ad5c968080bd12006a35716b87897eca436d558787d15a532b97266759a1a1d0141d9b55', 0, '2019-11-10 03:57:27'),
('fe8d5fa212c499c2b29699fbfeb44ab88713f1aa5093e16350254306a87e130f28cc957cdc2e4aab', '5b582fc77f0a6657484c82393d28a4a7169f25374382c1b06e2b6be5ea6133f75339463344fd1264', 0, '2019-11-10 04:05:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 6085.00, '2019-10-11 01:45:34', '2019-10-11 01:45:34'),
(2, 1, 6085.00, '2019-10-11 01:48:14', '2019-10-11 01:48:14'),
(3, 1, 6085.00, '2019-10-11 01:48:25', '2019-10-11 01:48:25'),
(4, 1, 6085.00, '2019-10-11 01:54:31', '2019-10-11 01:54:31'),
(5, 1, 6085.00, '2019-10-11 01:54:44', '2019-10-11 01:54:44'),
(6, 1, 6085.00, '2019-10-11 01:55:02', '2019-10-11 01:55:02'),
(7, 1, 6085.00, '2019-10-11 01:55:21', '2019-10-11 01:55:21'),
(8, 1, 6085.00, '2019-10-11 02:00:35', '2019-10-11 02:00:35'),
(9, 1, 6085.00, '2019-10-11 02:00:52', '2019-10-11 02:00:52'),
(10, 1, 6085.00, '2019-10-11 02:01:42', '2019-10-11 02:01:42'),
(11, 1, 6085.00, '2019-10-11 02:02:25', '2019-10-11 02:02:25'),
(12, 1, 6085.00, '2019-10-11 02:12:51', '2019-10-11 02:12:51'),
(13, 1, 6085.00, '2019-10-11 02:14:06', '2019-10-11 02:14:06'),
(14, 1, 6085.00, '2019-10-11 02:14:22', '2019-10-11 02:14:22'),
(15, 1, 6085.00, '2019-10-11 02:15:09', '2019-10-11 02:15:09'),
(16, 1, 6085.00, '2019-10-11 02:15:33', '2019-10-11 02:15:33'),
(17, 1, 6085.00, '2019-10-11 02:19:11', '2019-10-11 02:19:11'),
(18, 1, 6085.00, '2019-10-11 02:19:40', '2019-10-11 02:19:40'),
(19, 1, 6085.00, '2019-10-11 02:20:07', '2019-10-11 02:20:07'),
(20, 1, 6085.00, '2019-10-11 02:20:30', '2019-10-11 02:20:30'),
(21, 1, 6085.00, '2019-10-11 02:20:36', '2019-10-11 02:20:36'),
(22, 1, 6085.00, '2019-10-11 02:21:16', '2019-10-11 02:21:16'),
(23, 1, 6085.00, '2019-10-11 02:32:30', '2019-10-11 02:32:30'),
(24, 1, 6085.00, '2019-10-11 02:48:52', '2019-10-11 02:48:52'),
(25, 1, 6085.00, '2019-10-11 02:48:56', '2019-10-11 02:48:56'),
(26, 1, 6085.00, '2019-10-11 02:57:39', '2019-10-11 02:57:39'),
(27, 1, 6085.00, '2019-10-11 02:57:44', '2019-10-11 02:57:44'),
(28, 1, 6085.00, '2019-10-11 02:58:07', '2019-10-11 02:58:07'),
(29, 1, 510.00, '2019-10-11 03:23:36', '2019-10-11 03:23:36'),
(30, 1, 510.00, '2019-10-11 03:28:53', '2019-10-11 03:28:53'),
(31, 1, 510.00, '2019-10-11 03:29:08', '2019-10-11 03:29:08'),
(32, 1, 510.00, '2019-10-11 03:32:16', '2019-10-11 03:32:16'),
(33, 1, 510.00, '2019-10-11 03:32:27', '2019-10-11 03:32:27'),
(34, 1, 510.00, '2019-10-11 03:32:48', '2019-10-11 03:32:48'),
(35, 1, 510.00, '2019-10-11 03:32:57', '2019-10-11 03:32:57'),
(36, 1, 510.00, '2019-10-11 03:33:26', '2019-10-11 03:33:26'),
(37, 1, 510.00, '2019-10-11 03:33:44', '2019-10-11 03:33:44'),
(38, 1, 510.00, '2019-10-11 03:34:03', '2019-10-11 03:34:03'),
(39, 1, 510.00, '2019-10-11 03:34:14', '2019-10-11 03:34:14'),
(40, 1, 510.00, '2019-10-11 03:34:32', '2019-10-11 03:34:32'),
(41, 1, 510.00, '2019-10-11 03:35:57', '2019-10-11 03:35:57'),
(42, 1, 510.00, '2019-10-11 03:36:06', '2019-10-11 03:36:06'),
(43, 1, 510.00, '2019-10-11 03:36:51', '2019-10-11 03:36:51'),
(44, 1, 510.00, '2019-10-11 03:37:04', '2019-10-11 03:37:04'),
(45, 1, 510.00, '2019-10-11 03:37:59', '2019-10-11 03:37:59'),
(46, 1, 6085.00, '2019-10-11 03:41:05', '2019-10-11 03:41:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(1, 11, 2, 2, 155.00, NULL, NULL),
(2, 11, 3, 2, 100.00, NULL, NULL),
(3, 11, 5, 1, 985.00, NULL, NULL),
(4, 11, 6, 1, 1300.00, NULL, NULL),
(5, 11, 8, 1, 1115.00, NULL, NULL),
(6, 11, 9, 1, 975.00, NULL, NULL),
(7, 11, 10, 1, 1200.00, NULL, NULL),
(8, 12, 2, 2, 155.00, NULL, NULL),
(9, 12, 3, 2, 100.00, NULL, NULL),
(10, 12, 5, 1, 985.00, NULL, NULL),
(11, 12, 6, 1, 1300.00, NULL, NULL),
(12, 12, 8, 1, 1115.00, NULL, NULL),
(13, 12, 9, 1, 975.00, NULL, NULL),
(14, 12, 10, 1, 1200.00, NULL, NULL),
(15, 13, 2, 2, 155.00, NULL, NULL),
(16, 13, 3, 2, 100.00, NULL, NULL),
(17, 13, 5, 1, 985.00, NULL, NULL),
(18, 13, 6, 1, 1300.00, NULL, NULL),
(19, 13, 8, 1, 1115.00, NULL, NULL),
(20, 13, 9, 1, 975.00, NULL, NULL),
(21, 13, 10, 1, 1200.00, NULL, NULL),
(22, 14, 2, 2, 155.00, NULL, NULL),
(23, 14, 3, 2, 100.00, NULL, NULL),
(24, 14, 5, 1, 985.00, NULL, NULL),
(25, 14, 6, 1, 1300.00, NULL, NULL),
(26, 14, 8, 1, 1115.00, NULL, NULL),
(27, 14, 9, 1, 975.00, NULL, NULL),
(28, 14, 10, 1, 1200.00, NULL, NULL),
(29, 15, 2, 2, 155.00, NULL, NULL),
(30, 15, 3, 2, 100.00, NULL, NULL),
(31, 15, 5, 1, 985.00, NULL, NULL),
(32, 15, 6, 1, 1300.00, NULL, NULL),
(33, 15, 8, 1, 1115.00, NULL, NULL),
(34, 15, 9, 1, 975.00, NULL, NULL),
(35, 15, 10, 1, 1200.00, NULL, NULL),
(36, 16, 2, 2, 155.00, NULL, NULL),
(37, 16, 3, 2, 100.00, NULL, NULL),
(38, 16, 5, 1, 985.00, NULL, NULL),
(39, 16, 6, 1, 1300.00, NULL, NULL),
(40, 16, 8, 1, 1115.00, NULL, NULL),
(41, 16, 9, 1, 975.00, NULL, NULL),
(42, 16, 10, 1, 1200.00, NULL, NULL),
(43, 17, 2, 2, 155.00, NULL, NULL),
(44, 17, 3, 2, 100.00, NULL, NULL),
(45, 17, 5, 1, 985.00, NULL, NULL),
(46, 17, 6, 1, 1300.00, NULL, NULL),
(47, 17, 8, 1, 1115.00, NULL, NULL),
(48, 17, 9, 1, 975.00, NULL, NULL),
(49, 17, 10, 1, 1200.00, NULL, NULL),
(50, 18, 2, 2, 155.00, NULL, NULL),
(51, 18, 3, 2, 100.00, NULL, NULL),
(52, 18, 5, 1, 985.00, NULL, NULL),
(53, 18, 6, 1, 1300.00, NULL, NULL),
(54, 18, 8, 1, 1115.00, NULL, NULL),
(55, 18, 9, 1, 975.00, NULL, NULL),
(56, 18, 10, 1, 1200.00, NULL, NULL),
(57, 19, 2, 2, 155.00, NULL, NULL),
(58, 19, 3, 2, 100.00, NULL, NULL),
(59, 19, 5, 1, 985.00, NULL, NULL),
(60, 19, 6, 1, 1300.00, NULL, NULL),
(61, 19, 8, 1, 1115.00, NULL, NULL),
(62, 19, 9, 1, 975.00, NULL, NULL),
(63, 19, 10, 1, 1200.00, NULL, NULL),
(64, 20, 2, 2, 155.00, NULL, NULL),
(65, 20, 3, 2, 100.00, NULL, NULL),
(66, 20, 5, 1, 985.00, NULL, NULL),
(67, 20, 6, 1, 1300.00, NULL, NULL),
(68, 20, 8, 1, 1115.00, NULL, NULL),
(69, 20, 9, 1, 975.00, NULL, NULL),
(70, 20, 10, 1, 1200.00, NULL, NULL),
(71, 21, 2, 2, 155.00, NULL, NULL),
(72, 21, 3, 2, 100.00, NULL, NULL),
(73, 21, 5, 1, 985.00, NULL, NULL),
(74, 21, 6, 1, 1300.00, NULL, NULL),
(75, 21, 8, 1, 1115.00, NULL, NULL),
(76, 21, 9, 1, 975.00, NULL, NULL),
(77, 21, 10, 1, 1200.00, NULL, NULL),
(78, 22, 2, 2, 155.00, NULL, NULL),
(79, 22, 3, 2, 100.00, NULL, NULL),
(80, 22, 5, 1, 985.00, NULL, NULL),
(81, 22, 6, 1, 1300.00, NULL, NULL),
(82, 22, 8, 1, 1115.00, NULL, NULL),
(83, 22, 9, 1, 975.00, NULL, NULL),
(84, 22, 10, 1, 1200.00, NULL, NULL),
(85, 23, 2, 2, 155.00, NULL, NULL),
(86, 23, 3, 2, 100.00, NULL, NULL),
(87, 23, 5, 1, 985.00, NULL, NULL),
(88, 23, 6, 1, 1300.00, NULL, NULL),
(89, 23, 8, 1, 1115.00, NULL, NULL),
(90, 23, 9, 1, 975.00, NULL, NULL),
(91, 23, 10, 1, 1200.00, NULL, NULL),
(92, 24, 2, 2, 155.00, NULL, NULL),
(93, 24, 3, 2, 100.00, NULL, NULL),
(94, 24, 5, 1, 985.00, NULL, NULL),
(95, 24, 6, 1, 1300.00, NULL, NULL),
(96, 24, 8, 1, 1115.00, NULL, NULL),
(97, 24, 9, 1, 975.00, NULL, NULL),
(98, 24, 10, 1, 1200.00, NULL, NULL),
(99, 25, 2, 2, 155.00, NULL, NULL),
(100, 25, 3, 2, 100.00, NULL, NULL),
(101, 25, 5, 1, 985.00, NULL, NULL),
(102, 25, 6, 1, 1300.00, NULL, NULL),
(103, 25, 8, 1, 1115.00, NULL, NULL),
(104, 25, 9, 1, 975.00, NULL, NULL),
(105, 25, 10, 1, 1200.00, NULL, NULL),
(106, 26, 2, 2, 155.00, NULL, NULL),
(107, 26, 3, 2, 100.00, NULL, NULL),
(108, 26, 5, 1, 985.00, NULL, NULL),
(109, 26, 6, 1, 1300.00, NULL, NULL),
(110, 26, 8, 1, 1115.00, NULL, NULL),
(111, 26, 9, 1, 975.00, NULL, NULL),
(112, 26, 10, 1, 1200.00, NULL, NULL),
(113, 27, 2, 2, 155.00, NULL, NULL),
(114, 27, 3, 2, 100.00, NULL, NULL),
(115, 27, 5, 1, 985.00, NULL, NULL),
(116, 27, 6, 1, 1300.00, NULL, NULL),
(117, 27, 8, 1, 1115.00, NULL, NULL),
(118, 27, 9, 1, 975.00, NULL, NULL),
(119, 27, 10, 1, 1200.00, NULL, NULL),
(120, 28, 2, 2, 155.00, NULL, NULL),
(121, 28, 3, 2, 100.00, NULL, NULL),
(122, 28, 5, 1, 985.00, NULL, NULL),
(123, 28, 6, 1, 1300.00, NULL, NULL),
(124, 28, 8, 1, 1115.00, NULL, NULL),
(125, 28, 9, 1, 975.00, NULL, NULL),
(126, 28, 10, 1, 1200.00, NULL, NULL),
(127, 29, 2, 2, 155.00, NULL, NULL),
(128, 29, 3, 2, 100.00, NULL, NULL),
(129, 30, 2, 2, 155.00, NULL, NULL),
(130, 30, 3, 2, 100.00, NULL, NULL),
(131, 31, 2, 2, 155.00, NULL, NULL),
(132, 31, 3, 2, 100.00, NULL, NULL),
(133, 32, 2, 2, 155.00, NULL, NULL),
(134, 32, 3, 2, 100.00, NULL, NULL),
(135, 33, 2, 2, 155.00, NULL, NULL),
(136, 33, 3, 2, 100.00, NULL, NULL),
(137, 34, 2, 2, 155.00, NULL, NULL),
(138, 34, 3, 2, 100.00, NULL, NULL),
(139, 35, 2, 2, 155.00, NULL, NULL),
(140, 35, 3, 2, 100.00, NULL, NULL),
(141, 36, 2, 2, 155.00, NULL, NULL),
(142, 36, 3, 2, 100.00, NULL, NULL),
(143, 37, 2, 2, 155.00, NULL, NULL),
(144, 37, 3, 2, 100.00, NULL, NULL),
(145, 38, 2, 2, 155.00, NULL, NULL),
(146, 38, 3, 2, 100.00, NULL, NULL),
(147, 39, 2, 2, 155.00, NULL, NULL),
(148, 39, 3, 2, 100.00, NULL, NULL),
(149, 40, 2, 2, 155.00, NULL, NULL),
(150, 40, 3, 2, 100.00, NULL, NULL),
(151, 41, 2, 2, 155.00, NULL, NULL),
(152, 41, 3, 2, 100.00, NULL, NULL),
(153, 42, 2, 2, 155.00, NULL, NULL),
(154, 42, 3, 2, 100.00, NULL, NULL),
(155, 43, 2, 2, 155.00, NULL, NULL),
(156, 43, 3, 2, 100.00, NULL, NULL),
(157, 44, 2, 2, 155.00, NULL, NULL),
(158, 44, 3, 2, 100.00, NULL, NULL),
(159, 45, 2, 2, 155.00, NULL, NULL),
(160, 45, 3, 2, 100.00, NULL, NULL),
(161, 46, 2, 2, 155.00, NULL, NULL),
(162, 46, 3, 2, 100.00, NULL, NULL),
(163, 46, 5, 1, 985.00, NULL, NULL),
(164, 46, 6, 1, 1300.00, NULL, NULL),
(165, 46, 8, 1, 1115.00, NULL, NULL),
(166, 46, 9, 1, 975.00, NULL, NULL),
(167, 46, 10, 1, 1200.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'OPPO R17', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.', 150.00, '/uploads/oppo_r17.png', '2019-10-11 01:36:44', '2019-10-11 01:36:44'),
(2, 'NOKIA 7 PLUS', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.', 155.00, '/uploads/nokia_7_plus.png', '2019-10-11 01:36:44', '2019-10-11 01:36:44'),
(3, 'SAMSUMG GALAXI S10E', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.', 100.00, '/uploads/samsuns_galaxi_s10e.png', '2019-10-11 01:36:44', '2019-10-11 01:36:44'),
(4, 'HUAWEI P10', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.', 225.00, '/uploads/huawei_p10.png', '2019-10-11 01:36:44', '2019-10-11 01:36:44'),
(5, 'XIAOMI MI MIX 25', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.', 985.00, '/uploads/xiaomi_mi_mix_25.png', '2019-10-11 01:36:44', '2019-10-11 01:36:44'),
(6, 'APPLE IPHONE 11', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.', 1300.00, '/uploads/apple_iphone_11.png', '2019-10-11 01:36:44', '2019-10-11 01:36:44'),
(7, 'XIAOMI REDMI 8', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.', 1100.00, '/uploads/xiaomi_redmi_8.png', '2019-10-11 01:36:44', '2019-10-11 01:36:44'),
(8, 'MOTOROLA ONE MACRO', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.', 1115.00, '/uploads/motorola_ne_macro.png', '2019-10-11 01:36:44', '2019-10-11 01:36:44'),
(9, 'YEZZ MAX 1 PLUS', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.', 975.00, '/uploads/yezz_max_1_plus.png', '2019-10-11 01:36:44', '2019-10-11 01:36:44'),
(10, 'SAMSUMG GALAXI A70S', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.', 1200.00, '/uploads/samsung_galaxi_a70s.png', '2019-10-11 01:36:44', '2019-10-11 01:36:44'),
(11, 'ONEPLUS 7T', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.', 1200.00, '/uploads/oneplus_7t.png', '2019-10-11 01:36:44', '2019-10-11 01:36:44'),
(12, 'YESSLIV 1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.', 1150.00, '/uploadsyessliv_1/.png', '2019-10-11 01:36:44', '2019-10-11 01:36:44'),
(13, 'XIAOMI REDMI 8A', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.', 1500.00, '/uploads/xiaomi_redmi_8a.png', '2019-10-11 01:36:44', '2019-10-11 01:36:44'),
(14, 'SAMSUNG GALAXI A20S', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.', 4500.00, '/uploads/samsung_galaxi_a20s.png', '2019-10-11 01:36:44', '2019-10-11 01:36:44'),
(15, 'OPPO RENO', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.', 1350.00, '/uploads/oppo_reno.png', '2019-10-11 01:36:44', '2019-10-11 01:36:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'carlos', 'carlos@gmail.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2019-08-04 05:32:16', '2019-08-04 05:32:16');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indices de la tabla `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
