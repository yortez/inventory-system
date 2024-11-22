-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2024 at 04:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory-system`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'Resource', 'Role Created', 'Spatie\\Permission\\Models\\Role', 'Created', 1, NULL, NULL, '{\"guard_name\":\"web\",\"name\":\"super_admin\",\"updated_at\":\"2024-11-16 11:32:48\",\"created_at\":\"2024-11-16 11:32:48\",\"id\":1}', NULL, '2024-11-16 03:32:48', '2024-11-16 03:32:48'),
(2, 'default', 'created', 'App\\Models\\User', 'created', 1, NULL, NULL, '{\"attributes\":{\"name\":\"Naruto XXX\",\"email\":\"admin@admin.com\",\"password\":\"$2y$12$53dTZmnbxfBXhG5T.ZvbF.3uuSSjAL8HNKQRC0lMH4bWMQKoCXCeu\"}}', NULL, '2024-11-16 03:33:38', '2024-11-16 03:33:38'),
(3, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 1, NULL, NULL, '{\"name\":\"Naruto XXX\",\"email\":\"admin@admin.com\",\"updated_at\":\"2024-11-16 11:33:38\",\"created_at\":\"2024-11-16 11:33:38\",\"id\":1}', NULL, '2024-11-16 03:33:38', '2024-11-16 03:33:38'),
(4, 'Resource', 'Authentication Log Created by Naruto XXX', 'Rappasoft\\LaravelAuthenticationLog\\Models\\AuthenticationLog', 'Created', 1, 'App\\Models\\User', 1, '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"login_at\":\"2024-11-16 11:33:46\",\"login_successful\":true,\"location\":null,\"authenticatable_id\":1,\"authenticatable_type\":\"App\\\\Models\\\\User\",\"id\":1}', NULL, '2024-11-16 03:33:46', '2024-11-16 03:33:46'),
(5, 'Access', 'Naruto XXX logged in', NULL, 'Login', NULL, 'App\\Models\\User', 1, '{\"ip\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\"}', NULL, '2024-11-16 03:33:46', '2024-11-16 03:33:46'),
(6, 'Resource', 'Authentication Log Created', 'Rappasoft\\LaravelAuthenticationLog\\Models\\AuthenticationLog', 'Created', 2, NULL, NULL, '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"login_at\":\"2024-11-16 13:07:27\",\"login_successful\":false,\"location\":null,\"authenticatable_id\":1,\"authenticatable_type\":\"App\\\\Models\\\\User\",\"id\":2}', NULL, '2024-11-16 05:07:27', '2024-11-16 05:07:27'),
(7, 'Resource', 'Authentication Log Created by Naruto XXX', 'Rappasoft\\LaravelAuthenticationLog\\Models\\AuthenticationLog', 'Created', 3, 'App\\Models\\User', 1, '{\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"login_at\":\"2024-11-16 13:07:34\",\"login_successful\":true,\"location\":null,\"authenticatable_id\":1,\"authenticatable_type\":\"App\\\\Models\\\\User\",\"id\":3}', NULL, '2024-11-16 05:07:34', '2024-11-16 05:07:34'),
(8, 'Access', 'Naruto XXX logged in', NULL, 'Login', NULL, 'App\\Models\\User', 1, '{\"ip\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\"}', NULL, '2024-11-16 05:07:34', '2024-11-16 05:07:34'),
(9, 'Resource', 'Category Created by Naruto XXX', 'App\\Models\\Category', 'Created', 1, 'App\\Models\\User', 1, '{\"name\":\"CPU\",\"description\":\"Central Processing Unit\",\"updated_at\":\"2024-11-16 13:12:08\",\"created_at\":\"2024-11-16 13:12:08\",\"id\":1}', NULL, '2024-11-16 05:12:08', '2024-11-16 05:12:08'),
(10, 'Resource', 'Supplier Created by Naruto XXX', 'App\\Models\\Supplier', 'Created', 1, 'App\\Models\\User', 1, '{\"name\":\"Alfonso Lesch\",\"contact\":\"null\",\"address\":\"26599 Ryann Camp\",\"updated_at\":\"2024-11-16 13:14:10\",\"created_at\":\"2024-11-16 13:14:10\",\"id\":1}', NULL, '2024-11-16 05:14:10', '2024-11-16 05:14:10'),
(11, 'Resource', 'Product Created by Naruto XXX', 'App\\Models\\Product', 'Created', 1, 'App\\Models\\User', 1, '{\"category_id\":\"1\",\"supplier_id\":\"1\",\"name\":\"Ryzen 5 5600g\",\"sku\":\"ryzen 5\",\"quantity\":\"100\",\"purchase_price\":\"15000\",\"sale_price\":\"25000\",\"updated_at\":\"2024-11-16 13:15:10\",\"created_at\":\"2024-11-16 13:15:10\",\"id\":1}', NULL, '2024-11-16 05:15:10', '2024-11-16 05:15:10'),
(12, 'Resource', 'Stock Transaction Created by Naruto XXX', 'App\\Models\\StockTransaction', 'Created', 1, 'App\\Models\\User', 1, '{\"product_id\":\"1\",\"type\":\"stock_in\",\"quantity\":\"100\",\"price\":\"2500\",\"updated_at\":\"2024-11-16 13:15:50\",\"created_at\":\"2024-11-16 13:15:50\",\"id\":1}', NULL, '2024-11-16 05:15:50', '2024-11-16 05:15:50'),
(13, 'Resource', 'Category Created by Naruto XXX', 'App\\Models\\Category', 'Created', 2, 'App\\Models\\User', 1, '{\"name\":\"GPU\",\"description\":\"RTX 4090\",\"updated_at\":\"2024-11-16 14:11:48\",\"created_at\":\"2024-11-16 14:11:48\",\"id\":2}', NULL, '2024-11-16 06:11:48', '2024-11-16 06:11:48'),
(14, 'Resource', 'Category Updated by Naruto XXX', 'App\\Models\\Category', 'Updated', 2, 'App\\Models\\User', 1, '{\"description\":\"Graphics Processing Unit\",\"updated_at\":\"2024-11-16 14:12:06\"}', NULL, '2024-11-16 06:12:06', '2024-11-16 06:12:06'),
(15, 'Resource', 'Product Created by Naruto XXX', 'App\\Models\\Product', 'Created', 2, 'App\\Models\\User', 1, '{\"category_id\":\"2\",\"supplier_id\":\"1\",\"name\":\"RTX 409\",\"sku\":\"rtx 4090\",\"quantity\":\"0\",\"purchase_price\":\"50000\",\"sale_price\":\"75000\",\"updated_at\":\"2024-11-16 14:13:01\",\"created_at\":\"2024-11-16 14:13:01\",\"id\":2}', NULL, '2024-11-16 06:13:01', '2024-11-16 06:13:01'),
(16, 'Resource', 'Stock Transaction Created by Naruto XXX', 'App\\Models\\StockTransaction', 'Created', 2, 'App\\Models\\User', 1, '{\"product_id\":\"2\",\"type\":\"stock_in\",\"quantity\":\"9\",\"price\":\"75000\",\"updated_at\":\"2024-11-16 14:13:27\",\"created_at\":\"2024-11-16 14:13:27\",\"id\":2}', NULL, '2024-11-16 06:13:27', '2024-11-16 06:13:27'),
(17, 'Resource', 'Product Updated by Naruto XXX', 'App\\Models\\Product', 'Updated', 2, 'App\\Models\\User', 1, '{\"name\":\"RTX 4090\",\"updated_at\":\"2024-11-16 14:15:08\"}', NULL, '2024-11-16 06:15:08', '2024-11-16 06:15:08'),
(18, 'Resource', 'Supplier Created by Naruto XXX', 'App\\Models\\Supplier', 'Created', 2, 'App\\Models\\User', 1, '{\"name\":\"Zack Franecki-Moen\",\"contact\":\"428-774-7359\",\"address\":\"93893 Wilkinson Cliff\",\"updated_at\":\"2024-11-16 15:21:43\",\"created_at\":\"2024-11-16 15:21:43\",\"id\":2}', NULL, '2024-11-16 07:21:43', '2024-11-16 07:21:43'),
(19, 'Resource', 'Supplier Updated by Naruto XXX', 'App\\Models\\Supplier', 'Updated', 1, 'App\\Models\\User', 1, '{\"name\":\"Lolita Kuhlman\",\"contact\":\"183-762-6071\",\"address\":\"77057 Anjali Extension\",\"updated_at\":\"2024-11-16 15:23:21\"}', NULL, '2024-11-16 07:23:21', '2024-11-16 07:23:21'),
(20, 'Resource', 'Supplier Updated by Naruto XXX', 'App\\Models\\Supplier', 'Updated', 1, 'App\\Models\\User', 1, '{\"name\":\"Trystan Hodkiewicz\",\"contact\":\"782-067-5385\",\"address\":\"497 Buck Common\",\"updated_at\":\"2024-11-16 15:23:38\"}', NULL, '2024-11-16 07:23:38', '2024-11-16 07:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `authentication_log`
--

CREATE TABLE `authentication_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `authenticatable_type` varchar(255) NOT NULL,
  `authenticatable_id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `login_at` timestamp NULL DEFAULT NULL,
  `login_successful` tinyint(1) NOT NULL DEFAULT 0,
  `logout_at` timestamp NULL DEFAULT NULL,
  `cleared_by_user` tinyint(1) NOT NULL DEFAULT 0,
  `location` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`location`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authentication_log`
--

INSERT INTO `authentication_log` (`id`, `authenticatable_type`, `authenticatable_id`, `ip_address`, `user_agent`, `login_at`, `login_successful`, `logout_at`, `cleared_by_user`, `location`) VALUES
(1, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-11-16 03:33:46', 1, NULL, 0, NULL),
(2, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-11-16 05:07:27', 0, NULL, 0, NULL),
(3, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-11-16 05:07:34', 1, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `breezy_sessions`
--

CREATE TABLE `breezy_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `authenticatable_type` varchar(255) NOT NULL,
  `authenticatable_id` bigint(20) UNSIGNED NOT NULL,
  `panel_id` varchar(255) DEFAULT NULL,
  `guard` varchar(255) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:56:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:17:\"view_shield::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:21:\"view_any_shield::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:19:\"create_shield::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:19:\"update_shield::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:19:\"delete_shield::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:23:\"delete_any_shield::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:13:\"view_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:17:\"view_any_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:15:\"create_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:15:\"update_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:16:\"restore_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:20:\"restore_any_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:18:\"replicate_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:16:\"reorder_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:15:\"delete_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:19:\"delete_any_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:21:\"force_delete_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:25:\"force_delete_any_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:24:\"view_authentication::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:28:\"view_any_authentication::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:26:\"create_authentication::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:26:\"update_authentication::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:27:\"restore_authentication::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:31:\"restore_any_authentication::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:29:\"replicate_authentication::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:27:\"reorder_authentication::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:26:\"delete_authentication::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:30:\"delete_any_authentication::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:32:\"force_delete_authentication::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:36:\"force_delete_any_authentication::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:17:\"view_firewall::ip\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:21:\"view_any_firewall::ip\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:19:\"create_firewall::ip\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:19:\"update_firewall::ip\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:20:\"restore_firewall::ip\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:24:\"restore_any_firewall::ip\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:22:\"replicate_firewall::ip\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:20:\"reorder_firewall::ip\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:19:\"delete_firewall::ip\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:23:\"delete_any_firewall::ip\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:25:\"force_delete_firewall::ip\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:29:\"force_delete_any_firewall::ip\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:18:\"page_MyProfilePage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:12:\"page_Backups\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:1:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}}}', 1731851353);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'CPU', 'Central Processing Unit', '2024-11-16 05:12:08', '2024-11-16 05:12:08'),
(2, 'GPU', 'Graphics Processing Unit', '2024-11-16 06:11:48', '2024-11-16 06:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `firewall_ips`
--

CREATE TABLE `firewall_ips` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(255) NOT NULL,
  `prefix_size` int(11) DEFAULT NULL,
  `log_id` int(11) DEFAULT NULL,
  `blocked` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `firewall_logs`
--

CREATE TABLE `firewall_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL DEFAULT 'medium',
  `middleware` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `referrer` varchar(255) DEFAULT NULL,
  `request` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `firewall_logs`
--

INSERT INTO `firewall_logs` (`id`, `ip`, `level`, `middleware`, `user_id`, `url`, `referrer`, `request`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '127.0.0.1', 'medium', 'login', 0, 'http://127.0.0.1:8000/livewire/update', 'http://127.0.0.1:8000/admin/login', '_token=y7HBo6VOHR2tnVgwjHiTRm2Pu2UQexm9zcmZsyoV&components[0][snapshot]={\"data\":{\"data\":[{\"email\":null,\"password\":null,\"remember\":false},{\"s\":\"arr\"}],\"mountedActions\":[[],{\"s\":\"arr\"}],\"mountedActionsArguments\":[[],{\"s\":\"arr\"}],\"mountedActionsData\":[[],{\"s\":\"arr\"}],\"defaultAction\":null,\"defaultActionArguments\":null,\"componentFileAttachments\":[[],{\"s\":\"arr\"}],\"mountedFormComponentActions\":[[],{\"s\":\"arr\"}],\"mountedFormComponentActionsArguments\":[[],{\"s\":\"arr\"}],\"mountedFormComponentActionsData\":[[],{\"s\":\"arr\"}],\"mountedFormComponentActionsComponents\":[[],{\"s\":\"arr\"}],\"mountedInfolistActions\":[[],{\"s\":\"arr\"}],\"mountedInfolistActionsData\":[[],{\"s\":\"arr\"}],\"mountedInfolistActionsComponent\":null,\"mountedInfolistActionsInfolist\":null},\"memo\":{\"id\":\"xAubuhES79GvxD1uDtbE\",\"name\":\"filament.pages.auth.login\",\"path\":\"admin\\/login\",\"method\":\"GET\",\"children\":[],\"scripts\":[],\"assets\":[],\"errors\":[],\"locale\":\"en\"},\"checksum\":\"9e4d97ff6ed2c828f54bb142f5a3f1c97b25834023b3ddb6d0c10ef543735414\"}&components[0][updates][data.email]=admin@admin.com&components[0][updates][data.password]=admin123&components[0][calls][0][path]=&components[0][calls][0][method]=authenticate&password=******', '2024-11-16 03:31:58', '2024-11-16 03:31:58', NULL),
(2, '127.0.0.1', 'medium', 'login', 0, 'http://127.0.0.1:8000/livewire/update', 'http://127.0.0.1:8000/admin/login', '_token=5WsrutxDmEQhGHjqchbiU9Kruoimrf9CnsmSOj9I&components[0][snapshot]={\"data\":{\"data\":[{\"email\":null,\"password\":null,\"remember\":false},{\"s\":\"arr\"}],\"mountedActions\":[[],{\"s\":\"arr\"}],\"mountedActionsArguments\":[[],{\"s\":\"arr\"}],\"mountedActionsData\":[[],{\"s\":\"arr\"}],\"defaultAction\":null,\"defaultActionArguments\":null,\"componentFileAttachments\":[[],{\"s\":\"arr\"}],\"mountedFormComponentActions\":[[],{\"s\":\"arr\"}],\"mountedFormComponentActionsArguments\":[[],{\"s\":\"arr\"}],\"mountedFormComponentActionsData\":[[],{\"s\":\"arr\"}],\"mountedFormComponentActionsComponents\":[[],{\"s\":\"arr\"}],\"mountedInfolistActions\":[[],{\"s\":\"arr\"}],\"mountedInfolistActionsData\":[[],{\"s\":\"arr\"}],\"mountedInfolistActionsComponent\":null,\"mountedInfolistActionsInfolist\":null},\"memo\":{\"id\":\"CuHMahmPYwXlRjQiEdyq\",\"name\":\"filament.pages.auth.login\",\"path\":\"admin\\/login\",\"method\":\"GET\",\"children\":[],\"scripts\":[],\"assets\":[],\"errors\":[],\"locale\":\"en\"},\"checksum\":\"18c5181fb4bdb6d58794f24fc21dafd2b84aaa66029c3acc06937146148b7773\"}&components[0][updates][data.email]=admin@admin.com&components[0][updates][data.password]=admin&components[0][calls][0][path]=&components[0][calls][0][method]=authenticate&password=******', '2024-11-16 05:07:27', '2024-11-16 05:07:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2019_07_15_000000_create_firewall_ips_table', 1),
(5, '2019_07_15_000000_create_firewall_logs_table', 1),
(6, '2024_11_09_122411_create_breezy_sessions_table', 1),
(7, '2024_11_09_124333_create_activity_log_table', 1),
(8, '2024_11_09_124334_add_event_column_to_activity_log_table', 1),
(9, '2024_11_09_124335_add_batch_uuid_column_to_activity_log_table', 1),
(10, '2024_11_09_140220_update_firewall_ips_table', 1),
(11, '2024_11_14_150013_create_authentication_log_table', 1),
(12, '2024_11_16_113227_create_permission_tables', 2),
(13, '2024_11_16_114050_create_categories_table', 3),
(14, '2024_11_16_114154_create_suppliers_table', 4),
(15, '2024_11_16_130227_create_products_table', 5),
(16, '2024_11_16_130308_create_stock_transactions_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_shield::role', 'web', '2024-11-16 03:32:48', '2024-11-16 03:32:48'),
(2, 'view_any_shield::role', 'web', '2024-11-16 03:32:48', '2024-11-16 03:32:48'),
(3, 'create_shield::role', 'web', '2024-11-16 03:32:48', '2024-11-16 03:32:48'),
(4, 'update_shield::role', 'web', '2024-11-16 03:32:48', '2024-11-16 03:32:48'),
(5, 'delete_shield::role', 'web', '2024-11-16 03:32:48', '2024-11-16 03:32:48'),
(6, 'delete_any_shield::role', 'web', '2024-11-16 03:32:48', '2024-11-16 03:32:48'),
(7, 'view_activity', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(8, 'view_any_activity', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(9, 'create_activity', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(10, 'update_activity', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(11, 'restore_activity', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(12, 'restore_any_activity', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(13, 'replicate_activity', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(14, 'reorder_activity', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(15, 'delete_activity', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(16, 'delete_any_activity', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(17, 'force_delete_activity', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(18, 'force_delete_any_activity', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(19, 'view_authentication::log', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(20, 'view_any_authentication::log', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(21, 'create_authentication::log', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(22, 'update_authentication::log', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(23, 'restore_authentication::log', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(24, 'restore_any_authentication::log', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(25, 'replicate_authentication::log', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(26, 'reorder_authentication::log', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(27, 'delete_authentication::log', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(28, 'delete_any_authentication::log', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(29, 'force_delete_authentication::log', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(30, 'force_delete_any_authentication::log', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(31, 'view_firewall::ip', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(32, 'view_any_firewall::ip', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(33, 'create_firewall::ip', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(34, 'update_firewall::ip', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(35, 'restore_firewall::ip', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(36, 'restore_any_firewall::ip', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(37, 'replicate_firewall::ip', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(38, 'reorder_firewall::ip', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(39, 'delete_firewall::ip', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(40, 'delete_any_firewall::ip', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(41, 'force_delete_firewall::ip', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(42, 'force_delete_any_firewall::ip', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(43, 'view_user', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(44, 'view_any_user', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(45, 'create_user', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(46, 'update_user', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(47, 'restore_user', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(48, 'restore_any_user', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(49, 'replicate_user', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(50, 'reorder_user', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(51, 'delete_user', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(52, 'delete_any_user', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(53, 'force_delete_user', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(54, 'force_delete_any_user', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(55, 'page_MyProfilePage', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34'),
(56, 'page_Backups', 'web', '2024-11-16 03:34:34', '2024-11-16 03:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `purchase_price` decimal(10,2) NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `supplier_id`, `sku`, `quantity`, `purchase_price`, `sale_price`, `created_at`, `updated_at`) VALUES
(1, 'Ryzen 5 5600g', 1, 1, 'ryzen 5', 100, 15000.00, 25000.00, '2024-11-16 05:15:10', '2024-11-16 05:15:10'),
(2, 'RTX 4090', 2, 1, 'rtx 4090', 0, 50000.00, 75000.00, '2024-11-16 06:13:01', '2024-11-16 06:15:08');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2024-11-16 03:32:48', '2024-11-16 03:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('XVAtBYUXTOKEJ1ONjVEZazYTmlHCoMVgNwPYaau2', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiTVVNVXh2ekFKTFlWeVhNQVg4M0hHRXpleERod09hM0N6V2hadWozeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkNTNkVFptbmJ4ZkJYaEc1VC5admJGLjN1dVNTakFMOEhOS1FSQzBsTUg0YldNUUtvQ1hDZXUiO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTczMTc1Njg1NTt9czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1731772743);

-- --------------------------------------------------------

--
-- Table structure for table `stock_transactions`
--

CREATE TABLE `stock_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('stock_in','stock_out') NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_transactions`
--

INSERT INTO `stock_transactions` (`id`, `product_id`, `type`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 'stock_in', 100, 2500.00, '2024-11-16 05:15:50', '2024-11-16 05:15:50'),
(2, 2, 'stock_in', 9, 75000.00, '2024-11-16 06:13:27', '2024-11-16 06:13:27');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `contact`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Trystan Hodkiewicz', '782-067-5385', '497 Buck Common', '2024-11-16 05:14:10', '2024-11-16 07:23:38'),
(2, 'Zack Franecki-Moen', '428-774-7359', '93893 Wilkinson Cliff', '2024-11-16 07:21:43', '2024-11-16 07:21:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Naruto XXX', 'admin@admin.com', NULL, '$2y$12$53dTZmnbxfBXhG5T.ZvbF.3uuSSjAL8HNKQRC0lMH4bWMQKoCXCeu', NULL, '2024-11-16 03:33:38', '2024-11-16 03:33:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `authentication_log`
--
ALTER TABLE `authentication_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authentication_log_authenticatable_type_authenticatable_id_index` (`authenticatable_type`,`authenticatable_id`);

--
-- Indexes for table `breezy_sessions`
--
ALTER TABLE `breezy_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `breezy_sessions_authenticatable_type_authenticatable_id_index` (`authenticatable_type`,`authenticatable_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `firewall_ips`
--
ALTER TABLE `firewall_ips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `firewall_ips_ip_index` (`ip`);

--
-- Indexes for table `firewall_logs`
--
ALTER TABLE `firewall_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `firewall_logs_ip_index` (`ip`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `stock_transactions`
--
ALTER TABLE `stock_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_transactions_product_id_foreign` (`product_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `authentication_log`
--
ALTER TABLE `authentication_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `breezy_sessions`
--
ALTER TABLE `breezy_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `firewall_ips`
--
ALTER TABLE `firewall_ips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `firewall_logs`
--
ALTER TABLE `firewall_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stock_transactions`
--
ALTER TABLE `stock_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock_transactions`
--
ALTER TABLE `stock_transactions`
  ADD CONSTRAINT `stock_transactions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
