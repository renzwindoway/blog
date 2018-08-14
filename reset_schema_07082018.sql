-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2018 at 09:40 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id6726382_windowayblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `media`, `created_at`, `updated_at`) VALUES
(1, 'Artificial Grass', 'img/categoryimages/1533532447.jpg', '2018-08-05 21:14:07', '2018-08-05 21:14:07'),
(3, 'Window Blinds', 'img/categoryimages/1533540657.jpg', '2018-08-05 23:30:57', '2018-08-05 23:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2012_07_31_033212_create_roles_table', 1),
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2018_07_31_033234_create_categories_table', 1),
(13, '2015_03_07_311070_create_tracker_paths_table', 2),
(14, '2015_03_07_311071_create_tracker_queries_table', 2),
(15, '2015_03_07_311072_create_tracker_queries_arguments_table', 2),
(16, '2015_03_07_311073_create_tracker_routes_table', 2),
(17, '2015_03_07_311074_create_tracker_routes_paths_table', 2),
(18, '2015_03_07_311075_create_tracker_route_path_parameters_table', 2),
(19, '2015_03_07_311076_create_tracker_agents_table', 2),
(20, '2015_03_07_311077_create_tracker_cookies_table', 2),
(21, '2015_03_07_311078_create_tracker_devices_table', 2),
(22, '2015_03_07_311079_create_tracker_domains_table', 2),
(23, '2015_03_07_311080_create_tracker_referers_table', 2),
(24, '2015_03_07_311081_create_tracker_geoip_table', 2),
(25, '2015_03_07_311082_create_tracker_sessions_table', 2),
(26, '2015_03_07_311083_create_tracker_errors_table', 2),
(27, '2015_03_07_311084_create_tracker_system_classes_table', 2),
(28, '2015_03_07_311085_create_tracker_log_table', 2),
(29, '2015_03_07_311086_create_tracker_events_table', 2),
(30, '2015_03_07_311087_create_tracker_events_log_table', 2),
(31, '2015_03_07_311088_create_tracker_sql_queries_table', 2),
(32, '2015_03_07_311089_create_tracker_sql_query_bindings_table', 2),
(33, '2015_03_07_311090_create_tracker_sql_query_bindings_parameters_table', 2),
(34, '2015_03_07_311091_create_tracker_sql_queries_log_table', 2),
(35, '2015_03_07_311092_create_tracker_connections_table', 2),
(36, '2015_03_07_311093_create_tracker_tables_relations', 2),
(37, '2015_03_13_311094_create_tracker_referer_search_term_table', 2),
(38, '2015_03_13_311095_add_tracker_referer_columns', 2),
(39, '2015_11_23_311096_add_tracker_referer_column_to_log', 2),
(40, '2015_11_23_311097_create_tracker_languages_table', 2),
(41, '2015_11_23_311098_add_language_id_column_to_sessions', 2),
(42, '2015_11_23_311099_add_tracker_language_foreign_key_to_sessions', 2),
(43, '2015_11_23_311100_add_nullable_to_tracker_error', 2),
(44, '2017_01_31_311101_fix_agent_name', 2),
(45, '2017_06_20_311102_add_agent_name_hash', 2),
(46, '2017_12_13_150000_fix_query_arguments', 2),
(51, '2018_07_31_033307_create_posts_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortDesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `shortDesc`, `caption`, `image`, `author`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'My first post', 'lorem lorem lorem lorem lorem vloremloremloremloremloremloremlorem loremloremlorem loremlorem loremloremv loremloremlorem loremloremloremloremloremloremloremloremloremloremlorem', 'Blah blah blah', 'Nvidia GTX', 'img/postimages/1533542659.jpg', 'Renzchler', 1, '2018-08-06 00:04:19', '2018-08-06 00:04:19'),
(2, 'My Second Post', 'Slow network is detected. See https://www.chromestatus.com/feature/5636954674692096 for more details. Fallback font will be used while loading: http://localhost:8000/font/roboto/Roboto-Regular.woff2', 'Blah blah blah', 'PUBG', 'img/postimages/1533543195.jpg', 'Bluehole', 3, '2018-08-06 00:13:15', '2018-08-06 00:13:15'),
(3, 'My Third Post', 'The strong bond of friendship is not always a balanced equation; friendship is not always about giving and taking in equal shares. Instead, friendship is grounded in a feeling that you know exactly who will be there for you when you need something, no matter what or when.\r\nRead more at: https://www.brainyquote.com/', 'Blah blah blah', 'Beautiful Quotes', 'img/postimages/1533543359.jpg', 'Ranchodas Chamaldas Chanchad', 3, '2018-08-06 00:15:59', '2018-08-06 00:15:59');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', '2018-07-30 19:41:55', '2018-07-30 19:41:55'),
(2, 'admin', '2018-07-30 19:42:41', '2018-07-30 19:42:41');

-- --------------------------------------------------------

--
-- Table structure for table `tracker_agents`
--

CREATE TABLE `tracker_agents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` mediumtext NOT NULL,
  `browser` varchar(191) NOT NULL,
  `browser_version` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_hash` varchar(65) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracker_agents`
--

INSERT INTO `tracker_agents` (`id`, `name`, `browser`, `browser_version`, `created_at`, `updated_at`, `name_hash`) VALUES
(1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Chrome', '67.0.3396', '2018-08-03 21:12:22', '2018-08-03 21:12:22', 'f77286f9140753e02352717c3ca53e6b2aefdf54c8adcedc906f9f4391c60782'),
(2, 'Mozilla/5.0 (iPad; CPU OS 11_0 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) Version/11.0 Mobile/15A5341f Safari/604.1', 'Mobile Safari', '11.0', '2018-08-03 23:57:40', '2018-08-03 23:57:40', 'da037ff50cc63693d27c960e92899932729b1a62e446e76225d3a79df0e7c569'),
(3, 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Version/7.0 Mobile/11D257 Safari/9537.53', 'Mobile Safari', '7.0', '2018-08-04 00:13:08', '2018-08-04 00:13:08', '08a013fa082bff9a722a266febc67ab4594f18ede670b0802af774b3b7107aa6'),
(4, 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Mobile Safari/537.36', 'Chrome Mobile', '67.0.3396', '2018-08-04 01:00:56', '2018-08-04 01:00:56', '33108c16fc2544869d9a54410c1b6a16111b84af7760e637d04a23302a312ae7'),
(5, 'Mozilla/5.0 (Linux; U; en-us; KFAPWI Build/JDQ39) AppleWebKit/535.19 (KHTML, like Gecko) Silk/3.13 Safari/535.19 Silk-Accelerated=true', 'Amazon Silk', '3.13', '2018-08-05 16:48:19', '2018-08-05 16:48:19', '2c659da8508fb7ee3f4838205c8226c5100e11c8202d8cf993bd8acea6042b3e');

-- --------------------------------------------------------

--
-- Table structure for table `tracker_connections`
--

CREATE TABLE `tracker_connections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_cookies`
--

CREATE TABLE `tracker_cookies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_devices`
--

CREATE TABLE `tracker_devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kind` varchar(16) NOT NULL,
  `model` varchar(64) NOT NULL,
  `platform` varchar(64) NOT NULL,
  `platform_version` varchar(16) NOT NULL,
  `is_mobile` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracker_devices`
--

INSERT INTO `tracker_devices` (`id`, `kind`, `model`, `platform`, `platform_version`, `is_mobile`, `created_at`, `updated_at`) VALUES
(1, 'Computer', 'WebKit', 'Windows', '10', 0, '2018-08-03 21:12:22', '2018-08-03 21:12:22'),
(2, 'Tablet', 'iPad', 'iOS', '11.0', 1, '2018-08-03 23:57:40', '2018-08-03 23:57:40'),
(3, 'Phone', 'iPhone', 'iOS', '7.1.2', 1, '2018-08-04 00:13:08', '2018-08-04 00:13:08'),
(4, 'Phone', 'Nexus', 'Android', '6.0', 1, '2018-08-04 01:00:56', '2018-08-04 01:00:56'),
(5, 'Tablet', 'Kindle', 'Android', '', 1, '2018-08-05 16:48:19', '2018-08-05 16:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `tracker_domains`
--

CREATE TABLE `tracker_domains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_errors`
--

CREATE TABLE `tracker_errors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `message` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_events`
--

CREATE TABLE `tracker_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_events_log`
--

CREATE TABLE `tracker_events_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_geoip`
--

CREATE TABLE `tracker_geoip` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `country_code` varchar(2) DEFAULT NULL,
  `country_code3` varchar(3) DEFAULT NULL,
  `country_name` varchar(191) DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `area_code` bigint(20) DEFAULT NULL,
  `dma_code` double DEFAULT NULL,
  `metro_code` double DEFAULT NULL,
  `continent_code` varchar(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_languages`
--

CREATE TABLE `tracker_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `preference` varchar(191) NOT NULL,
  `language-range` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_log`
--

CREATE TABLE `tracker_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `path_id` bigint(20) UNSIGNED DEFAULT NULL,
  `query_id` bigint(20) UNSIGNED DEFAULT NULL,
  `method` varchar(10) NOT NULL,
  `route_path_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_ajax` tinyint(1) NOT NULL,
  `is_secure` tinyint(1) NOT NULL,
  `is_json` tinyint(1) NOT NULL,
  `wants_json` tinyint(1) NOT NULL,
  `error_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `referer_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracker_log`
--

INSERT INTO `tracker_log` (`id`, `session_id`, `path_id`, `query_id`, `method`, `route_path_id`, `is_ajax`, `is_secure`, `is_json`, `wants_json`, `error_id`, `created_at`, `updated_at`, `referer_id`) VALUES
(1, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:12:23', '2018-08-03 21:12:23', NULL),
(2, 1, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-03 21:12:25', '2018-08-03 21:12:25', NULL),
(3, 1, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-03 21:12:27', '2018-08-03 21:12:27', NULL),
(4, 1, 4, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:13:24', '2018-08-03 21:13:24', NULL),
(5, 1, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:13:24', '2018-08-03 21:13:24', NULL),
(6, 1, 5, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:13:33', '2018-08-03 21:13:33', NULL),
(7, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:13:34', '2018-08-03 21:13:34', NULL),
(8, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:18:44', '2018-08-03 21:18:44', NULL),
(9, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:19:02', '2018-08-03 21:19:02', NULL),
(10, 2, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:24:35', '2018-08-03 21:24:35', NULL),
(11, 2, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:25:16', '2018-08-03 21:25:16', NULL),
(12, 2, 5, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:25:21', '2018-08-03 21:25:21', NULL),
(13, 2, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:25:22', '2018-08-03 21:25:22', NULL),
(14, 2, 4, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:34:36', '2018-08-03 21:34:36', NULL),
(15, 2, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:34:37', '2018-08-03 21:34:37', NULL),
(16, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:40:24', '2018-08-03 21:40:24', NULL),
(17, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:40:24', '2018-08-03 21:40:24', NULL),
(18, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:41:13', '2018-08-03 21:41:13', NULL),
(19, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:41:23', '2018-08-03 21:41:23', NULL),
(20, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:41:40', '2018-08-03 21:41:40', NULL),
(21, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:43:34', '2018-08-03 21:43:34', NULL),
(22, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:43:55', '2018-08-03 21:43:55', NULL),
(23, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:44:25', '2018-08-03 21:44:25', NULL),
(24, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:44:43', '2018-08-03 21:44:43', NULL),
(25, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:48:07', '2018-08-03 21:48:07', NULL),
(26, 1, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-03 21:48:10', '2018-08-03 21:48:10', NULL),
(27, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:48:24', '2018-08-03 21:48:24', NULL),
(28, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:48:57', '2018-08-03 21:48:57', NULL),
(29, 1, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-03 21:48:59', '2018-08-03 21:48:59', NULL),
(30, 1, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-03 21:49:00', '2018-08-03 21:49:00', NULL),
(31, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:49:28', '2018-08-03 21:49:28', NULL),
(32, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:49:34', '2018-08-03 21:49:34', NULL),
(33, 1, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-03 21:51:01', '2018-08-03 21:51:01', NULL),
(34, 1, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-03 21:51:02', '2018-08-03 21:51:02', NULL),
(35, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:51:08', '2018-08-03 21:51:08', NULL),
(36, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:55:34', '2018-08-03 21:55:34', NULL),
(37, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 21:57:07', '2018-08-03 21:57:07', NULL),
(38, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:00:04', '2018-08-03 22:00:04', NULL),
(39, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:01:56', '2018-08-03 22:01:56', NULL),
(40, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:01:57', '2018-08-03 22:01:57', NULL),
(41, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:02:13', '2018-08-03 22:02:13', NULL),
(42, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:03:32', '2018-08-03 22:03:32', NULL),
(43, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:03:32', '2018-08-03 22:03:32', NULL),
(44, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:05:08', '2018-08-03 22:05:08', NULL),
(45, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:05:08', '2018-08-03 22:05:08', NULL),
(46, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:07:48', '2018-08-03 22:07:48', NULL),
(47, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:09:13', '2018-08-03 22:09:13', NULL),
(48, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:09:13', '2018-08-03 22:09:13', NULL),
(49, 1, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-03 22:09:15', '2018-08-03 22:09:15', NULL),
(50, 1, 8, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:09:43', '2018-08-03 22:09:43', NULL),
(51, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:09:44', '2018-08-03 22:09:44', NULL),
(52, 1, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-03 22:09:53', '2018-08-03 22:09:53', NULL),
(53, 1, 8, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:10:13', '2018-08-03 22:10:13', NULL),
(54, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:10:13', '2018-08-03 22:10:13', NULL),
(55, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:10:18', '2018-08-03 22:10:18', NULL),
(56, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:10:19', '2018-08-03 22:10:19', NULL),
(57, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:13:25', '2018-08-03 22:13:25', NULL),
(58, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:13:37', '2018-08-03 22:13:37', NULL),
(59, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:13:50', '2018-08-03 22:13:50', NULL),
(60, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:14:05', '2018-08-03 22:14:05', NULL),
(61, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:14:31', '2018-08-03 22:14:31', NULL),
(62, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:14:34', '2018-08-03 22:14:34', NULL),
(63, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:14:47', '2018-08-03 22:14:47', NULL),
(64, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:15:49', '2018-08-03 22:15:49', NULL),
(65, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:15:50', '2018-08-03 22:15:50', NULL),
(66, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:18:07', '2018-08-03 22:18:07', NULL),
(67, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:18:11', '2018-08-03 22:18:11', NULL),
(68, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:21:03', '2018-08-03 22:21:03', NULL),
(69, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:26:27', '2018-08-03 22:26:27', NULL),
(70, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:27:11', '2018-08-03 22:27:11', NULL),
(71, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:27:22', '2018-08-03 22:27:22', NULL),
(72, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:28:37', '2018-08-03 22:28:37', NULL),
(73, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:28:40', '2018-08-03 22:28:40', NULL),
(74, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:29:10', '2018-08-03 22:29:10', NULL),
(75, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:29:13', '2018-08-03 22:29:13', NULL),
(76, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:31:46', '2018-08-03 22:31:46', NULL),
(77, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:31:58', '2018-08-03 22:31:58', NULL),
(78, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:32:09', '2018-08-03 22:32:09', NULL),
(79, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:33:12', '2018-08-03 22:33:12', NULL),
(80, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:34:06', '2018-08-03 22:34:06', NULL),
(81, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:34:22', '2018-08-03 22:34:22', NULL),
(82, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:34:28', '2018-08-03 22:34:28', NULL),
(83, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:38:22', '2018-08-03 22:38:22', NULL),
(84, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:39:33', '2018-08-03 22:39:33', NULL),
(85, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:40:13', '2018-08-03 22:40:13', NULL),
(86, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:40:41', '2018-08-03 22:40:41', NULL),
(87, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:41:22', '2018-08-03 22:41:22', NULL),
(88, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:41:35', '2018-08-03 22:41:35', NULL),
(89, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:42:54', '2018-08-03 22:42:54', NULL),
(90, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:43:20', '2018-08-03 22:43:20', NULL),
(91, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:43:37', '2018-08-03 22:43:37', NULL),
(92, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:43:58', '2018-08-03 22:43:58', NULL),
(93, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:44:11', '2018-08-03 22:44:11', NULL),
(94, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:44:59', '2018-08-03 22:44:59', NULL),
(95, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:45:22', '2018-08-03 22:45:22', NULL),
(96, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:45:33', '2018-08-03 22:45:33', NULL),
(97, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:45:52', '2018-08-03 22:45:52', NULL),
(98, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:46:00', '2018-08-03 22:46:00', NULL),
(99, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:46:33', '2018-08-03 22:46:33', NULL),
(100, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:46:42', '2018-08-03 22:46:42', NULL),
(101, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:47:13', '2018-08-03 22:47:13', NULL),
(102, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:47:14', '2018-08-03 22:47:14', NULL),
(103, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:47:26', '2018-08-03 22:47:26', NULL),
(104, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:47:42', '2018-08-03 22:47:42', NULL),
(105, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:47:56', '2018-08-03 22:47:56', NULL),
(106, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:48:11', '2018-08-03 22:48:11', NULL),
(107, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:48:17', '2018-08-03 22:48:17', NULL),
(108, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:48:25', '2018-08-03 22:48:25', NULL),
(109, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:48:45', '2018-08-03 22:48:45', NULL),
(110, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:49:22', '2018-08-03 22:49:22', NULL),
(111, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:49:54', '2018-08-03 22:49:54', NULL),
(112, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:50:05', '2018-08-03 22:50:05', NULL),
(113, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:50:47', '2018-08-03 22:50:47', NULL),
(114, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:51:08', '2018-08-03 22:51:08', NULL),
(115, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:51:35', '2018-08-03 22:51:35', NULL),
(116, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:52:09', '2018-08-03 22:52:09', NULL),
(117, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:53:08', '2018-08-03 22:53:08', NULL),
(118, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:53:11', '2018-08-03 22:53:11', NULL),
(119, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:55:01', '2018-08-03 22:55:01', NULL),
(120, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:55:04', '2018-08-03 22:55:04', NULL),
(121, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:57:33', '2018-08-03 22:57:33', NULL),
(122, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:57:58', '2018-08-03 22:57:58', NULL),
(123, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:58:17', '2018-08-03 22:58:17', NULL),
(124, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:58:28', '2018-08-03 22:58:28', NULL),
(125, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:59:02', '2018-08-03 22:59:02', NULL),
(126, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:59:32', '2018-08-03 22:59:32', NULL),
(127, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:59:34', '2018-08-03 22:59:34', NULL),
(128, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 22:59:59', '2018-08-03 22:59:59', NULL),
(129, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:00:25', '2018-08-03 23:00:25', NULL),
(130, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:00:53', '2018-08-03 23:00:53', NULL),
(131, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:01:53', '2018-08-03 23:01:53', NULL),
(132, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:02:22', '2018-08-03 23:02:22', NULL),
(133, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:02:32', '2018-08-03 23:02:32', NULL),
(134, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:03:21', '2018-08-03 23:03:21', NULL),
(135, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:04:42', '2018-08-03 23:04:42', NULL),
(136, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:06:14', '2018-08-03 23:06:14', NULL),
(137, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:07:55', '2018-08-03 23:07:55', NULL),
(138, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:08:15', '2018-08-03 23:08:15', NULL),
(139, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:09:04', '2018-08-03 23:09:04', NULL),
(140, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:09:21', '2018-08-03 23:09:21', NULL),
(141, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:09:55', '2018-08-03 23:09:55', NULL),
(142, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:10:02', '2018-08-03 23:10:02', NULL),
(143, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:10:16', '2018-08-03 23:10:16', NULL),
(144, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:10:26', '2018-08-03 23:10:26', NULL),
(145, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:10:51', '2018-08-03 23:10:51', NULL),
(146, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:11:04', '2018-08-03 23:11:04', NULL),
(147, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:11:09', '2018-08-03 23:11:09', NULL),
(148, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:11:32', '2018-08-03 23:11:32', NULL),
(149, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:11:36', '2018-08-03 23:11:36', NULL),
(150, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:11:38', '2018-08-03 23:11:38', NULL),
(151, 1, 10, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:11:48', '2018-08-03 23:11:48', NULL),
(152, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:11:55', '2018-08-03 23:11:55', NULL),
(153, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:13:00', '2018-08-03 23:13:00', NULL),
(154, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:13:03', '2018-08-03 23:13:03', NULL),
(155, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:14:28', '2018-08-03 23:14:28', NULL),
(156, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:14:30', '2018-08-03 23:14:30', NULL),
(157, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:14:33', '2018-08-03 23:14:33', NULL),
(158, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:14:55', '2018-08-03 23:14:55', NULL),
(159, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:17:23', '2018-08-03 23:17:23', NULL),
(160, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:17:25', '2018-08-03 23:17:25', NULL),
(161, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:17:27', '2018-08-03 23:17:27', NULL),
(162, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:17:30', '2018-08-03 23:17:30', NULL),
(163, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:17:37', '2018-08-03 23:17:37', NULL),
(164, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:17:41', '2018-08-03 23:17:41', NULL),
(165, 1, 11, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:17:53', '2018-08-03 23:17:53', NULL),
(166, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:28:46', '2018-08-03 23:28:46', NULL),
(167, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:28:49', '2018-08-03 23:28:49', NULL),
(168, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:28:53', '2018-08-03 23:28:53', NULL),
(169, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:28:58', '2018-08-03 23:28:58', NULL),
(170, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:31:39', '2018-08-03 23:31:39', NULL),
(171, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:31:41', '2018-08-03 23:31:41', NULL),
(172, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:31:49', '2018-08-03 23:31:49', NULL),
(173, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:32:13', '2018-08-03 23:32:13', NULL),
(174, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:32:15', '2018-08-03 23:32:15', NULL),
(175, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:32:17', '2018-08-03 23:32:17', NULL),
(176, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:33:04', '2018-08-03 23:33:04', NULL),
(177, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:33:06', '2018-08-03 23:33:06', NULL),
(178, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:33:36', '2018-08-03 23:33:36', NULL),
(179, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:34:12', '2018-08-03 23:34:12', NULL),
(180, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:36:30', '2018-08-03 23:36:30', NULL),
(181, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:36:48', '2018-08-03 23:36:48', NULL),
(182, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:36:53', '2018-08-03 23:36:53', NULL),
(183, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:37:07', '2018-08-03 23:37:07', NULL),
(184, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:37:10', '2018-08-03 23:37:10', NULL),
(185, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:37:11', '2018-08-03 23:37:11', NULL),
(186, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:37:15', '2018-08-03 23:37:15', NULL),
(187, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:37:17', '2018-08-03 23:37:17', NULL),
(188, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:38:02', '2018-08-03 23:38:02', NULL),
(189, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:38:15', '2018-08-03 23:38:15', NULL),
(190, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:38:44', '2018-08-03 23:38:44', NULL),
(191, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:39:00', '2018-08-03 23:39:00', NULL),
(192, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:39:10', '2018-08-03 23:39:10', NULL),
(193, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:39:48', '2018-08-03 23:39:48', NULL),
(194, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:51:47', '2018-08-03 23:51:47', NULL),
(195, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:52:03', '2018-08-03 23:52:03', NULL),
(196, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:52:47', '2018-08-03 23:52:47', NULL),
(197, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:52:56', '2018-08-03 23:52:56', NULL),
(198, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:55:53', '2018-08-03 23:55:53', NULL),
(199, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:56:05', '2018-08-03 23:56:05', NULL),
(200, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:57:10', '2018-08-03 23:57:10', NULL),
(201, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:57:32', '2018-08-03 23:57:32', NULL),
(202, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:57:49', '2018-08-03 23:57:49', NULL),
(203, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:58:21', '2018-08-03 23:58:21', NULL),
(204, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:59:00', '2018-08-03 23:59:00', NULL),
(205, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:59:20', '2018-08-03 23:59:20', NULL),
(206, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-03 23:59:37', '2018-08-03 23:59:37', NULL),
(207, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:00:45', '2018-08-04 00:00:45', NULL),
(208, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:01:26', '2018-08-04 00:01:26', NULL),
(209, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:01:41', '2018-08-04 00:01:41', NULL),
(210, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:03:10', '2018-08-04 00:03:10', NULL),
(211, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:04:36', '2018-08-04 00:04:36', NULL),
(212, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:05:12', '2018-08-04 00:05:12', NULL),
(213, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:05:19', '2018-08-04 00:05:19', NULL),
(214, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:05:37', '2018-08-04 00:05:37', NULL),
(215, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:05:56', '2018-08-04 00:05:56', NULL),
(216, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:06:02', '2018-08-04 00:06:02', NULL),
(217, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:06:33', '2018-08-04 00:06:33', NULL),
(218, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:07:02', '2018-08-04 00:07:02', NULL),
(219, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:10:39', '2018-08-04 00:10:39', NULL),
(220, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:10:49', '2018-08-04 00:10:49', NULL),
(221, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:11:10', '2018-08-04 00:11:10', NULL),
(222, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:11:30', '2018-08-04 00:11:30', NULL),
(223, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:11:42', '2018-08-04 00:11:42', NULL),
(224, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:11:49', '2018-08-04 00:11:49', NULL),
(225, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:13:14', '2018-08-04 00:13:14', NULL),
(226, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:16:33', '2018-08-04 00:16:33', NULL),
(227, 1, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:16:52', '2018-08-04 00:16:52', NULL),
(228, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:17:10', '2018-08-04 00:17:10', NULL),
(229, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:17:56', '2018-08-04 00:17:56', NULL),
(230, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:18:03', '2018-08-04 00:18:03', NULL),
(231, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:18:18', '2018-08-04 00:18:18', NULL),
(232, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:18:31', '2018-08-04 00:18:31', NULL),
(233, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:19:02', '2018-08-04 00:19:02', NULL),
(234, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:20:14', '2018-08-04 00:20:14', NULL),
(235, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:20:34', '2018-08-04 00:20:34', NULL),
(236, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:20:53', '2018-08-04 00:20:53', NULL),
(237, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:21:01', '2018-08-04 00:21:01', NULL),
(238, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:21:06', '2018-08-04 00:21:06', NULL),
(239, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:21:07', '2018-08-04 00:21:07', NULL),
(240, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:21:22', '2018-08-04 00:21:22', NULL),
(241, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:21:27', '2018-08-04 00:21:27', NULL),
(242, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:21:42', '2018-08-04 00:21:42', NULL),
(243, 1, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:21:55', '2018-08-04 00:21:55', NULL),
(244, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:24:13', '2018-08-04 00:24:13', NULL),
(245, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:24:32', '2018-08-04 00:24:32', NULL),
(246, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:25:14', '2018-08-04 00:25:14', NULL),
(247, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:26:37', '2018-08-04 00:26:37', NULL),
(248, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:27:20', '2018-08-04 00:27:20', NULL),
(249, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:28:01', '2018-08-04 00:28:01', NULL),
(250, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:30:12', '2018-08-04 00:30:12', NULL),
(251, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:31:07', '2018-08-04 00:31:07', NULL),
(252, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:31:37', '2018-08-04 00:31:37', NULL),
(253, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:32:09', '2018-08-04 00:32:09', NULL),
(254, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:32:35', '2018-08-04 00:32:35', NULL),
(255, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:32:42', '2018-08-04 00:32:42', NULL),
(256, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:33:14', '2018-08-04 00:33:14', NULL),
(257, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:33:41', '2018-08-04 00:33:41', NULL),
(258, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:34:22', '2018-08-04 00:34:22', NULL),
(259, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:35:07', '2018-08-04 00:35:07', NULL),
(260, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:35:50', '2018-08-04 00:35:50', NULL),
(261, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:35:55', '2018-08-04 00:35:55', NULL),
(262, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:37:05', '2018-08-04 00:37:05', NULL),
(263, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:37:34', '2018-08-04 00:37:34', NULL),
(264, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:37:52', '2018-08-04 00:37:52', NULL),
(265, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:38:17', '2018-08-04 00:38:17', NULL),
(266, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:38:57', '2018-08-04 00:38:57', NULL),
(267, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:39:16', '2018-08-04 00:39:16', NULL),
(268, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:41:14', '2018-08-04 00:41:14', NULL),
(269, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:41:28', '2018-08-04 00:41:28', NULL),
(270, 1, 11, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:41:44', '2018-08-04 00:41:44', NULL),
(271, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:42:19', '2018-08-04 00:42:19', NULL),
(272, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:42:31', '2018-08-04 00:42:31', NULL),
(273, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:42:56', '2018-08-04 00:42:56', NULL),
(274, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:46:30', '2018-08-04 00:46:30', NULL),
(275, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:48:23', '2018-08-04 00:48:23', NULL),
(276, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:49:21', '2018-08-04 00:49:21', NULL),
(277, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:49:45', '2018-08-04 00:49:45', NULL),
(278, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:50:04', '2018-08-04 00:50:04', NULL),
(279, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:50:34', '2018-08-04 00:50:34', NULL),
(280, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:51:00', '2018-08-04 00:51:00', NULL),
(281, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:51:19', '2018-08-04 00:51:19', NULL),
(282, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:51:27', '2018-08-04 00:51:27', NULL),
(283, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:51:58', '2018-08-04 00:51:58', NULL),
(284, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:52:04', '2018-08-04 00:52:04', NULL),
(285, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:52:12', '2018-08-04 00:52:12', NULL),
(286, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:52:24', '2018-08-04 00:52:24', NULL),
(287, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:52:24', '2018-08-04 00:52:24', NULL),
(288, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:53:11', '2018-08-04 00:53:11', NULL),
(289, 1, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-04 00:53:35', '2018-08-04 00:53:35', NULL),
(290, 1, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:53:47', '2018-08-04 00:53:47', NULL),
(291, 1, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-04 00:53:49', '2018-08-04 00:53:49', NULL),
(292, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:54:36', '2018-08-04 00:54:36', NULL),
(293, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:54:36', '2018-08-04 00:54:36', NULL),
(294, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:54:45', '2018-08-04 00:54:45', NULL),
(295, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:55:01', '2018-08-04 00:55:01', NULL),
(296, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:55:32', '2018-08-04 00:55:32', NULL),
(297, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:55:34', '2018-08-04 00:55:34', NULL),
(298, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:55:35', '2018-08-04 00:55:35', NULL),
(299, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:55:36', '2018-08-04 00:55:36', NULL),
(300, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:55:37', '2018-08-04 00:55:37', NULL),
(301, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:55:37', '2018-08-04 00:55:37', NULL),
(302, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:55:38', '2018-08-04 00:55:38', NULL),
(303, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:55:46', '2018-08-04 00:55:46', NULL),
(304, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:56:22', '2018-08-04 00:56:22', NULL),
(305, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:57:27', '2018-08-04 00:57:27', NULL),
(306, 1, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:58:36', '2018-08-04 00:58:36', NULL),
(307, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 00:58:58', '2018-08-04 00:58:58', NULL),
(308, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 01:00:31', '2018-08-04 01:00:31', NULL),
(309, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 01:00:59', '2018-08-04 01:00:59', NULL),
(310, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 01:02:20', '2018-08-04 01:02:20', NULL),
(311, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 01:05:47', '2018-08-04 01:05:47', NULL),
(312, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 01:07:30', '2018-08-04 01:07:30', NULL),
(313, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 01:07:59', '2018-08-04 01:07:59', NULL),
(314, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 01:08:15', '2018-08-04 01:08:15', NULL),
(315, 1, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-04 01:08:34', '2018-08-04 01:08:34', NULL),
(316, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:02:42', '2018-08-05 16:02:42', NULL),
(317, 3, 9, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:07:08', '2018-08-05 16:07:08', NULL),
(318, 3, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:16:06', '2018-08-05 16:16:06', NULL),
(319, 3, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:16:35', '2018-08-05 16:16:35', NULL),
(320, 3, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:16:53', '2018-08-05 16:16:53', NULL),
(321, 3, 13, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:16:57', '2018-08-05 16:16:57', NULL),
(322, 3, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:17:11', '2018-08-05 16:17:11', NULL),
(323, 3, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:17:12', '2018-08-05 16:17:12', NULL),
(324, 3, 14, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:17:15', '2018-08-05 16:17:15', NULL),
(325, 3, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:18:03', '2018-08-05 16:18:03', NULL),
(326, 3, 15, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:18:06', '2018-08-05 16:18:06', NULL),
(327, 3, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:19:36', '2018-08-05 16:19:36', NULL),
(328, 3, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:21:17', '2018-08-05 16:21:17', NULL),
(329, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:21:20', '2018-08-05 16:21:20', NULL),
(330, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:21:21', '2018-08-05 16:21:21', NULL),
(331, 3, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:21:25', '2018-08-05 16:21:25', NULL),
(332, 3, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:21:49', '2018-08-05 16:21:49', NULL),
(333, 3, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:22:29', '2018-08-05 16:22:29', NULL),
(334, 3, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:22:38', '2018-08-05 16:22:38', NULL),
(335, 3, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:24:13', '2018-08-05 16:24:13', NULL),
(336, 3, 16, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:24:23', '2018-08-05 16:24:23', NULL),
(337, 3, 16, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:27:07', '2018-08-05 16:27:07', NULL),
(338, 3, 16, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:27:15', '2018-08-05 16:27:15', NULL),
(339, 3, 17, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:36:49', '2018-08-05 16:36:49', NULL),
(340, 3, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:36:54', '2018-08-05 16:36:54', NULL),
(341, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:37:01', '2018-08-05 16:37:01', NULL),
(342, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:37:01', '2018-08-05 16:37:01', NULL),
(343, 3, 12, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:37:05', '2018-08-05 16:37:05', NULL),
(344, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:37:35', '2018-08-05 16:37:35', NULL),
(345, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:37:41', '2018-08-05 16:37:41', NULL),
(346, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:37:55', '2018-08-05 16:37:55', NULL),
(347, 3, 18, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:37:58', '2018-08-05 16:37:58', NULL),
(348, 3, 18, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:38:33', '2018-08-05 16:38:33', NULL),
(349, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:38:36', '2018-08-05 16:38:36', NULL),
(350, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:40:16', '2018-08-05 16:40:16', NULL),
(351, 3, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:40:25', '2018-08-05 16:40:25', NULL),
(352, 3, 18, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:42:08', '2018-08-05 16:42:08', NULL),
(353, 3, 18, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:42:25', '2018-08-05 16:42:25', NULL),
(354, 3, 18, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:42:53', '2018-08-05 16:42:53', NULL),
(355, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:43:04', '2018-08-05 16:43:04', NULL),
(356, 3, 18, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:43:07', '2018-08-05 16:43:07', NULL),
(357, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:45:04', '2018-08-05 16:45:04', NULL),
(358, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:45:25', '2018-08-05 16:45:25', NULL),
(359, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:46:18', '2018-08-05 16:46:18', NULL),
(360, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:46:38', '2018-08-05 16:46:38', NULL),
(361, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:48:25', '2018-08-05 16:48:25', NULL),
(362, 3, 18, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:48:50', '2018-08-05 16:48:50', NULL),
(363, 3, 18, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:49:23', '2018-08-05 16:49:23', NULL),
(364, 3, 18, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:49:53', '2018-08-05 16:49:53', NULL),
(365, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:49:57', '2018-08-05 16:49:57', NULL),
(366, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:51:00', '2018-08-05 16:51:00', NULL),
(367, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:51:27', '2018-08-05 16:51:27', NULL),
(368, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 16:53:03', '2018-08-05 16:53:03', NULL),
(369, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:05:45', '2018-08-05 17:05:45', NULL),
(370, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:07:16', '2018-08-05 17:07:16', NULL),
(371, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:07:40', '2018-08-05 17:07:40', NULL),
(372, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:07:55', '2018-08-05 17:07:55', NULL),
(373, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:09:04', '2018-08-05 17:09:04', NULL),
(374, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:11:41', '2018-08-05 17:11:41', NULL),
(375, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:12:10', '2018-08-05 17:12:10', NULL),
(376, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:13:28', '2018-08-05 17:13:28', NULL),
(377, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:13:43', '2018-08-05 17:13:43', NULL),
(378, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:15:07', '2018-08-05 17:15:07', NULL),
(379, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:16:24', '2018-08-05 17:16:24', NULL),
(380, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:16:46', '2018-08-05 17:16:46', NULL),
(381, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:17:16', '2018-08-05 17:17:16', NULL),
(382, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:18:35', '2018-08-05 17:18:35', NULL),
(383, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:19:09', '2018-08-05 17:19:09', NULL),
(384, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:19:18', '2018-08-05 17:19:18', NULL),
(385, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:19:41', '2018-08-05 17:19:41', NULL),
(386, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:20:15', '2018-08-05 17:20:15', NULL),
(387, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:20:46', '2018-08-05 17:20:46', NULL),
(388, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:20:52', '2018-08-05 17:20:52', NULL),
(389, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:21:52', '2018-08-05 17:21:52', NULL),
(390, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:23:56', '2018-08-05 17:23:56', NULL),
(391, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:24:05', '2018-08-05 17:24:05', NULL),
(392, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:26:31', '2018-08-05 17:26:31', NULL),
(393, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:27:04', '2018-08-05 17:27:04', NULL),
(394, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:27:21', '2018-08-05 17:27:21', NULL),
(395, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:27:47', '2018-08-05 17:27:47', NULL),
(396, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:28:38', '2018-08-05 17:28:38', NULL),
(397, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:28:46', '2018-08-05 17:28:46', NULL),
(398, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:29:42', '2018-08-05 17:29:42', NULL),
(399, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:29:52', '2018-08-05 17:29:52', NULL),
(400, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:30:06', '2018-08-05 17:30:06', NULL),
(401, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:32:14', '2018-08-05 17:32:14', NULL),
(402, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:32:49', '2018-08-05 17:32:49', NULL),
(403, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:33:10', '2018-08-05 17:33:10', NULL),
(404, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:34:03', '2018-08-05 17:34:03', NULL),
(405, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:34:18', '2018-08-05 17:34:18', NULL),
(406, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:34:35', '2018-08-05 17:34:35', NULL),
(407, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:34:42', '2018-08-05 17:34:42', NULL),
(408, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:35:02', '2018-08-05 17:35:02', NULL),
(409, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:35:21', '2018-08-05 17:35:21', NULL),
(410, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:36:30', '2018-08-05 17:36:30', NULL),
(411, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:37:06', '2018-08-05 17:37:06', NULL),
(412, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:37:14', '2018-08-05 17:37:14', NULL),
(413, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:37:36', '2018-08-05 17:37:36', NULL),
(414, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:38:03', '2018-08-05 17:38:03', NULL),
(415, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:38:41', '2018-08-05 17:38:41', NULL),
(416, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:39:15', '2018-08-05 17:39:15', NULL),
(417, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:39:38', '2018-08-05 17:39:38', NULL),
(418, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:40:25', '2018-08-05 17:40:25', NULL),
(419, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:42:42', '2018-08-05 17:42:42', NULL),
(420, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:42:51', '2018-08-05 17:42:51', NULL),
(421, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:43:30', '2018-08-05 17:43:30', NULL),
(422, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:43:46', '2018-08-05 17:43:46', NULL),
(423, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:44:07', '2018-08-05 17:44:07', NULL),
(424, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:44:33', '2018-08-05 17:44:33', NULL),
(425, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:46:31', '2018-08-05 17:46:31', NULL),
(426, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:46:37', '2018-08-05 17:46:37', NULL),
(427, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:46:59', '2018-08-05 17:46:59', NULL),
(428, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:47:21', '2018-08-05 17:47:21', NULL),
(429, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:48:55', '2018-08-05 17:48:55', NULL),
(430, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:50:35', '2018-08-05 17:50:35', NULL),
(431, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:51:22', '2018-08-05 17:51:22', NULL),
(432, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:51:52', '2018-08-05 17:51:52', NULL),
(433, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:52:11', '2018-08-05 17:52:11', NULL),
(434, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:52:44', '2018-08-05 17:52:44', NULL),
(435, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:53:33', '2018-08-05 17:53:33', NULL),
(436, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:53:51', '2018-08-05 17:53:51', NULL),
(437, 3, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 17:54:17', '2018-08-05 17:54:17', NULL),
(438, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:26:09', '2018-08-05 18:26:09', NULL),
(439, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:26:38', '2018-08-05 18:26:38', NULL),
(440, 4, 19, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:27:02', '2018-08-05 18:27:02', NULL),
(441, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:27:10', '2018-08-05 18:27:10', NULL),
(442, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:28:07', '2018-08-05 18:28:07', NULL),
(443, 4, 18, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:28:12', '2018-08-05 18:28:12', NULL),
(444, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:28:20', '2018-08-05 18:28:20', NULL),
(445, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:38:20', '2018-08-05 18:38:20', NULL),
(446, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:39:05', '2018-08-05 18:39:05', NULL),
(447, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:42:53', '2018-08-05 18:42:53', NULL),
(448, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:43:32', '2018-08-05 18:43:32', NULL),
(449, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:43:48', '2018-08-05 18:43:48', NULL),
(450, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:47:16', '2018-08-05 18:47:16', NULL),
(451, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:47:20', '2018-08-05 18:47:20', NULL),
(452, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:47:38', '2018-08-05 18:47:38', NULL),
(453, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:52:00', '2018-08-05 18:52:00', NULL),
(454, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:52:35', '2018-08-05 18:52:35', NULL),
(455, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:52:53', '2018-08-05 18:52:53', NULL),
(456, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:52:59', '2018-08-05 18:52:59', NULL),
(457, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:53:14', '2018-08-05 18:53:14', NULL),
(458, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:53:26', '2018-08-05 18:53:26', NULL),
(459, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:53:49', '2018-08-05 18:53:49', NULL),
(460, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:55:52', '2018-08-05 18:55:52', NULL),
(461, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:56:07', '2018-08-05 18:56:07', NULL),
(462, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:56:23', '2018-08-05 18:56:23', NULL),
(463, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:56:42', '2018-08-05 18:56:42', NULL),
(464, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:57:05', '2018-08-05 18:57:05', NULL),
(465, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:57:41', '2018-08-05 18:57:41', NULL),
(466, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 18:58:39', '2018-08-05 18:58:39', NULL),
(467, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:05:08', '2018-08-05 19:05:08', NULL),
(468, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:06:36', '2018-08-05 19:06:36', NULL),
(469, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:06:57', '2018-08-05 19:06:57', NULL),
(470, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:11:34', '2018-08-05 19:11:34', NULL),
(471, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:12:17', '2018-08-05 19:12:17', NULL),
(472, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:14:36', '2018-08-05 19:14:36', NULL),
(473, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:14:45', '2018-08-05 19:14:45', NULL),
(474, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:15:10', '2018-08-05 19:15:10', NULL),
(475, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:18:13', '2018-08-05 19:18:13', NULL),
(476, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:18:28', '2018-08-05 19:18:28', NULL),
(477, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:19:06', '2018-08-05 19:19:06', NULL),
(478, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:20:44', '2018-08-05 19:20:44', NULL),
(479, 4, 18, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:20:46', '2018-08-05 19:20:46', NULL),
(480, 4, 18, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:20:47', '2018-08-05 19:20:47', NULL),
(481, 4, 18, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:20:49', '2018-08-05 19:20:49', NULL),
(482, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:20:51', '2018-08-05 19:20:51', NULL),
(483, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:21:01', '2018-08-05 19:21:01', NULL),
(484, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:21:03', '2018-08-05 19:21:03', NULL),
(485, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:21:09', '2018-08-05 19:21:09', NULL),
(486, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:23:52', '2018-08-05 19:23:52', NULL),
(487, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:26:08', '2018-08-05 19:26:08', NULL),
(488, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:26:15', '2018-08-05 19:26:15', NULL),
(489, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:26:17', '2018-08-05 19:26:17', NULL),
(490, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:26:26', '2018-08-05 19:26:26', NULL),
(491, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:27:21', '2018-08-05 19:27:21', NULL),
(492, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:27:54', '2018-08-05 19:27:54', NULL),
(493, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:28:11', '2018-08-05 19:28:11', NULL),
(494, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:28:21', '2018-08-05 19:28:21', NULL),
(495, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:28:29', '2018-08-05 19:28:29', NULL),
(496, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:28:42', '2018-08-05 19:28:42', NULL),
(497, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:28:55', '2018-08-05 19:28:55', NULL),
(498, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:31:04', '2018-08-05 19:31:04', NULL);
INSERT INTO `tracker_log` (`id`, `session_id`, `path_id`, `query_id`, `method`, `route_path_id`, `is_ajax`, `is_secure`, `is_json`, `wants_json`, `error_id`, `created_at`, `updated_at`, `referer_id`) VALUES
(499, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:32:04', '2018-08-05 19:32:04', NULL),
(500, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:32:18', '2018-08-05 19:32:18', NULL),
(501, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:32:40', '2018-08-05 19:32:40', NULL),
(502, 4, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:34:05', '2018-08-05 19:34:05', NULL),
(503, 4, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:34:05', '2018-08-05 19:34:05', NULL),
(504, 4, 5, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:34:10', '2018-08-05 19:34:10', NULL),
(505, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:34:11', '2018-08-05 19:34:11', NULL),
(506, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:35:15', '2018-08-05 19:35:15', NULL),
(507, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:35:34', '2018-08-05 19:35:34', NULL),
(508, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:41:41', '2018-08-05 19:41:41', NULL),
(509, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:42:28', '2018-08-05 19:42:28', NULL),
(510, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:42:31', '2018-08-05 19:42:31', NULL),
(511, 4, 20, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:42:39', '2018-08-05 19:42:39', NULL),
(512, 4, 20, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:42:55', '2018-08-05 19:42:55', NULL),
(513, 4, 20, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:42:59', '2018-08-05 19:42:59', NULL),
(514, 4, 20, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:43:50', '2018-08-05 19:43:50', NULL),
(515, 4, 20, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:44:09', '2018-08-05 19:44:09', NULL),
(516, 4, 20, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:44:33', '2018-08-05 19:44:33', NULL),
(517, 4, 20, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:44:56', '2018-08-05 19:44:56', NULL),
(518, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:45:21', '2018-08-05 19:45:21', NULL),
(519, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:45:35', '2018-08-05 19:45:35', NULL),
(520, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:45:38', '2018-08-05 19:45:38', NULL),
(521, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:45:45', '2018-08-05 19:45:45', NULL),
(522, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:45:46', '2018-08-05 19:45:46', NULL),
(523, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:47:05', '2018-08-05 19:47:05', NULL),
(524, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:47:06', '2018-08-05 19:47:06', NULL),
(525, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:47:21', '2018-08-05 19:47:21', NULL),
(526, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:47:23', '2018-08-05 19:47:23', NULL),
(527, 4, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:47:27', '2018-08-05 19:47:27', NULL),
(528, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:47:28', '2018-08-05 19:47:28', NULL),
(529, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:47:30', '2018-08-05 19:47:30', NULL),
(530, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:47:36', '2018-08-05 19:47:36', NULL),
(531, 4, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:47:38', '2018-08-05 19:47:38', NULL),
(532, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:52:10', '2018-08-05 19:52:10', NULL),
(533, 4, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:52:14', '2018-08-05 19:52:14', NULL),
(534, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:52:15', '2018-08-05 19:52:15', NULL),
(535, 4, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:52:22', '2018-08-05 19:52:22', NULL),
(536, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:52:34', '2018-08-05 19:52:34', NULL),
(537, 4, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:52:36', '2018-08-05 19:52:36', NULL),
(538, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:52:52', '2018-08-05 19:52:52', NULL),
(539, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:54:05', '2018-08-05 19:54:05', NULL),
(540, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:54:08', '2018-08-05 19:54:08', NULL),
(541, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:54:21', '2018-08-05 19:54:21', NULL),
(542, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:54:50', '2018-08-05 19:54:50', NULL),
(543, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:54:53', '2018-08-05 19:54:53', NULL),
(544, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:55:07', '2018-08-05 19:55:07', NULL),
(545, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:55:09', '2018-08-05 19:55:09', NULL),
(546, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:56:03', '2018-08-05 19:56:03', NULL),
(547, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:56:05', '2018-08-05 19:56:05', NULL),
(548, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:57:00', '2018-08-05 19:57:00', NULL),
(549, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:57:02', '2018-08-05 19:57:02', NULL),
(550, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:57:37', '2018-08-05 19:57:37', NULL),
(551, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:57:39', '2018-08-05 19:57:39', NULL),
(552, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:58:43', '2018-08-05 19:58:43', NULL),
(553, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:58:46', '2018-08-05 19:58:46', NULL),
(554, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:59:15', '2018-08-05 19:59:15', NULL),
(555, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:59:17', '2018-08-05 19:59:17', NULL),
(556, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:59:41', '2018-08-05 19:59:41', NULL),
(557, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:59:43', '2018-08-05 19:59:43', NULL),
(558, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 19:59:54', '2018-08-05 19:59:54', NULL),
(559, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 19:59:55', '2018-08-05 19:59:55', NULL),
(560, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 20:00:26', '2018-08-05 20:00:26', NULL),
(561, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 20:00:28', '2018-08-05 20:00:28', NULL),
(562, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 20:26:02', '2018-08-05 20:26:02', NULL),
(563, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 20:26:04', '2018-08-05 20:26:04', NULL),
(564, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 20:26:18', '2018-08-05 20:26:18', NULL),
(565, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 20:26:24', '2018-08-05 20:26:24', NULL),
(566, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 20:26:33', '2018-08-05 20:26:33', NULL),
(567, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 20:26:34', '2018-08-05 20:26:34', NULL),
(568, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 20:26:40', '2018-08-05 20:26:40', NULL),
(569, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 20:26:42', '2018-08-05 20:26:42', NULL),
(570, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 20:26:48', '2018-08-05 20:26:48', NULL),
(571, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 20:26:50', '2018-08-05 20:26:50', NULL),
(572, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 20:27:06', '2018-08-05 20:27:06', NULL),
(573, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 20:27:08', '2018-08-05 20:27:08', NULL),
(574, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 20:27:16', '2018-08-05 20:27:16', NULL),
(575, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 20:27:17', '2018-08-05 20:27:17', NULL),
(576, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:01:35', '2018-08-05 21:01:35', NULL),
(577, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:01:37', '2018-08-05 21:01:37', NULL),
(578, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:07:33', '2018-08-05 21:07:33', NULL),
(579, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:07:35', '2018-08-05 21:07:35', NULL),
(580, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:08:19', '2018-08-05 21:08:19', NULL),
(581, 4, 21, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:10:16', '2018-08-05 21:10:16', NULL),
(582, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:10:16', '2018-08-05 21:10:16', NULL),
(583, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:10:56', '2018-08-05 21:10:56', NULL),
(584, 4, 21, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:11:03', '2018-08-05 21:11:03', NULL),
(585, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:11:03', '2018-08-05 21:11:03', NULL),
(586, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:12:15', '2018-08-05 21:12:15', NULL),
(587, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:12:16', '2018-08-05 21:12:16', NULL),
(588, 4, 21, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:12:26', '2018-08-05 21:12:26', NULL),
(589, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:12:36', '2018-08-05 21:12:36', NULL),
(590, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:12:37', '2018-08-05 21:12:37', NULL),
(591, 4, 21, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:12:47', '2018-08-05 21:12:47', NULL),
(592, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:13:00', '2018-08-05 21:13:00', NULL),
(593, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:13:02', '2018-08-05 21:13:02', NULL),
(594, 4, 21, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:13:08', '2018-08-05 21:13:08', NULL),
(595, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:13:34', '2018-08-05 21:13:34', NULL),
(596, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:13:36', '2018-08-05 21:13:36', NULL),
(597, 4, 21, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:13:41', '2018-08-05 21:13:41', NULL),
(598, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:13:55', '2018-08-05 21:13:55', NULL),
(599, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:13:58', '2018-08-05 21:13:58', NULL),
(600, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:13:59', '2018-08-05 21:13:59', NULL),
(601, 4, 21, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:14:07', '2018-08-05 21:14:07', NULL),
(602, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:14:07', '2018-08-05 21:14:07', NULL),
(603, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:23:15', '2018-08-05 21:23:15', NULL),
(604, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:23:17', '2018-08-05 21:23:17', NULL),
(605, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:27:28', '2018-08-05 21:27:28', NULL),
(606, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:27:38', '2018-08-05 21:27:38', NULL),
(607, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:27:53', '2018-08-05 21:27:53', NULL),
(608, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:27:55', '2018-08-05 21:27:55', NULL),
(609, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:28:32', '2018-08-05 21:28:32', NULL),
(610, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:28:35', '2018-08-05 21:28:35', NULL),
(611, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:29:19', '2018-08-05 21:29:19', NULL),
(612, 4, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:29:28', '2018-08-05 21:29:28', NULL),
(613, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:29:31', '2018-08-05 21:29:31', NULL),
(614, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:29:41', '2018-08-05 21:29:41', NULL),
(615, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:29:48', '2018-08-05 21:29:48', NULL),
(616, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:30:17', '2018-08-05 21:30:17', NULL),
(617, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:30:20', '2018-08-05 21:30:20', NULL),
(618, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:31:20', '2018-08-05 21:31:20', NULL),
(619, 4, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:31:23', '2018-08-05 21:31:23', NULL),
(620, 4, 23, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:31:33', '2018-08-05 21:31:33', NULL),
(621, 4, 23, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:31:33', '2018-08-05 21:31:33', NULL),
(622, 4, 24, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:32:00', '2018-08-05 21:32:00', NULL),
(623, 4, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:32:42', '2018-08-05 21:32:42', NULL),
(624, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:32:48', '2018-08-05 21:32:48', NULL),
(625, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:34:43', '2018-08-05 21:34:43', NULL),
(626, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:34:45', '2018-08-05 21:34:45', NULL),
(627, 4, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:34:53', '2018-08-05 21:34:53', NULL),
(628, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:35:39', '2018-08-05 21:35:39', NULL),
(629, 4, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:35:40', '2018-08-05 21:35:40', NULL),
(630, 4, 23, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:35:48', '2018-08-05 21:35:48', NULL),
(631, 4, 23, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:35:48', '2018-08-05 21:35:48', NULL),
(632, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:35:51', '2018-08-05 21:35:51', NULL),
(633, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:38:27', '2018-08-05 21:38:27', NULL),
(634, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:38:29', '2018-08-05 21:38:29', NULL),
(635, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:39:32', '2018-08-05 21:39:32', NULL),
(636, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:39:34', '2018-08-05 21:39:34', NULL),
(637, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:40:13', '2018-08-05 21:40:13', NULL),
(638, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:40:14', '2018-08-05 21:40:14', NULL),
(639, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:40:38', '2018-08-05 21:40:38', NULL),
(640, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:40:40', '2018-08-05 21:40:40', NULL),
(641, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:41:57', '2018-08-05 21:41:57', NULL),
(642, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:41:59', '2018-08-05 21:41:59', NULL),
(643, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:42:40', '2018-08-05 21:42:40', NULL),
(644, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:42:41', '2018-08-05 21:42:41', NULL),
(645, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:43:19', '2018-08-05 21:43:19', NULL),
(646, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:43:21', '2018-08-05 21:43:21', NULL),
(647, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:43:49', '2018-08-05 21:43:49', NULL),
(648, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:43:51', '2018-08-05 21:43:51', NULL),
(649, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:44:29', '2018-08-05 21:44:29', NULL),
(650, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:44:32', '2018-08-05 21:44:32', NULL),
(651, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:44:54', '2018-08-05 21:44:54', NULL),
(652, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:44:56', '2018-08-05 21:44:56', NULL),
(653, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:45:14', '2018-08-05 21:45:14', NULL),
(654, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:45:16', '2018-08-05 21:45:16', NULL),
(655, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:46:31', '2018-08-05 21:46:31', NULL),
(656, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:46:32', '2018-08-05 21:46:32', NULL),
(657, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:47:51', '2018-08-05 21:47:51', NULL),
(658, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:47:53', '2018-08-05 21:47:53', NULL),
(659, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:48:13', '2018-08-05 21:48:13', NULL),
(660, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:48:15', '2018-08-05 21:48:15', NULL),
(661, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:53:40', '2018-08-05 21:53:40', NULL),
(662, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:53:42', '2018-08-05 21:53:42', NULL),
(663, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:53:52', '2018-08-05 21:53:52', NULL),
(664, 4, 21, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:55:55', '2018-08-05 21:55:55', NULL),
(665, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:55:55', '2018-08-05 21:55:55', NULL),
(666, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:55:57', '2018-08-05 21:55:57', NULL),
(667, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 21:56:22', '2018-08-05 21:56:22', NULL),
(668, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 21:56:24', '2018-08-05 21:56:24', NULL),
(669, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:00:36', '2018-08-05 22:00:36', NULL),
(670, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:01:00', '2018-08-05 22:01:00', NULL),
(671, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:01:03', '2018-08-05 22:01:03', NULL),
(672, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:01:07', '2018-08-05 22:01:07', NULL),
(673, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:01:15', '2018-08-05 22:01:15', NULL),
(674, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:01:15', '2018-08-05 22:01:15', NULL),
(675, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:02:51', '2018-08-05 22:02:51', NULL),
(676, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:02:54', '2018-08-05 22:02:54', NULL),
(677, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:03:05', '2018-08-05 22:03:05', NULL),
(678, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:03:07', '2018-08-05 22:03:07', NULL),
(679, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:03:15', '2018-08-05 22:03:15', NULL),
(680, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:03:18', '2018-08-05 22:03:18', NULL),
(681, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:03:19', '2018-08-05 22:03:19', NULL),
(682, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:03:26', '2018-08-05 22:03:26', NULL),
(683, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:03:31', '2018-08-05 22:03:31', NULL),
(684, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:03:33', '2018-08-05 22:03:33', NULL),
(685, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:03:37', '2018-08-05 22:03:37', NULL),
(686, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:04:22', '2018-08-05 22:04:22', NULL),
(687, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:04:27', '2018-08-05 22:04:27', NULL),
(688, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:04:33', '2018-08-05 22:04:33', NULL),
(689, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:04:34', '2018-08-05 22:04:34', NULL),
(690, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:04:53', '2018-08-05 22:04:53', NULL),
(691, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:04:56', '2018-08-05 22:04:56', NULL),
(692, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:05:01', '2018-08-05 22:05:01', NULL),
(693, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:06:30', '2018-08-05 22:06:30', NULL),
(694, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:06:32', '2018-08-05 22:06:32', NULL),
(695, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:06:35', '2018-08-05 22:06:35', NULL),
(696, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:06:44', '2018-08-05 22:06:44', NULL),
(697, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:06:45', '2018-08-05 22:06:45', NULL),
(698, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:06:49', '2018-08-05 22:06:49', NULL),
(699, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:06:50', '2018-08-05 22:06:50', NULL),
(700, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:06:53', '2018-08-05 22:06:53', NULL),
(701, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:06:57', '2018-08-05 22:06:57', NULL),
(702, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:06:57', '2018-08-05 22:06:57', NULL),
(703, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:08:19', '2018-08-05 22:08:19', NULL),
(704, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:08:34', '2018-08-05 22:08:34', NULL),
(705, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:08:38', '2018-08-05 22:08:38', NULL),
(706, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:09:10', '2018-08-05 22:09:10', NULL),
(707, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:09:12', '2018-08-05 22:09:12', NULL),
(708, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:09:38', '2018-08-05 22:09:38', NULL),
(709, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:09:41', '2018-08-05 22:09:41', NULL),
(710, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:09:43', '2018-08-05 22:09:43', NULL),
(711, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:09:47', '2018-08-05 22:09:47', NULL),
(712, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:09:48', '2018-08-05 22:09:48', NULL),
(713, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:12:49', '2018-08-05 22:12:49', NULL),
(714, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:12:50', '2018-08-05 22:12:50', NULL),
(715, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:12:56', '2018-08-05 22:12:56', NULL),
(716, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:12:59', '2018-08-05 22:12:59', NULL),
(717, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:13:00', '2018-08-05 22:13:00', NULL),
(718, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:18:00', '2018-08-05 22:18:00', NULL),
(719, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:18:02', '2018-08-05 22:18:02', NULL),
(720, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:18:09', '2018-08-05 22:18:09', NULL),
(721, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:18:36', '2018-08-05 22:18:36', NULL),
(722, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:18:37', '2018-08-05 22:18:37', NULL),
(723, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:19:07', '2018-08-05 22:19:07', NULL),
(724, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:19:09', '2018-08-05 22:19:09', NULL),
(725, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:19:12', '2018-08-05 22:19:12', NULL),
(726, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:20:02', '2018-08-05 22:20:02', NULL),
(727, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:20:05', '2018-08-05 22:20:05', NULL),
(728, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:20:13', '2018-08-05 22:20:13', NULL),
(729, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:20:45', '2018-08-05 22:20:45', NULL),
(730, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:20:46', '2018-08-05 22:20:46', NULL),
(731, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:20:50', '2018-08-05 22:20:50', NULL),
(732, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:21:04', '2018-08-05 22:21:04', NULL),
(733, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:21:05', '2018-08-05 22:21:05', NULL),
(734, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:21:11', '2018-08-05 22:21:11', NULL),
(735, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:21:21', '2018-08-05 22:21:21', NULL),
(736, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:21:23', '2018-08-05 22:21:23', NULL),
(737, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:21:42', '2018-08-05 22:21:42', NULL),
(738, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:21:42', '2018-08-05 22:21:42', NULL),
(739, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:21:47', '2018-08-05 22:21:47', NULL),
(740, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:21:47', '2018-08-05 22:21:47', NULL),
(741, 4, 25, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:21:47', '2018-08-05 22:21:47', NULL),
(742, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:23:13', '2018-08-05 22:23:13', NULL),
(743, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:23:16', '2018-08-05 22:23:16', NULL),
(744, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:23:22', '2018-08-05 22:23:22', NULL),
(745, 4, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:23:23', '2018-08-05 22:23:23', NULL),
(746, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:23:25', '2018-08-05 22:23:25', NULL),
(747, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:23:26', '2018-08-05 22:23:26', NULL),
(748, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:27:05', '2018-08-05 22:27:05', NULL),
(749, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:27:13', '2018-08-05 22:27:13', NULL),
(750, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:28:01', '2018-08-05 22:28:01', NULL),
(751, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:28:03', '2018-08-05 22:28:03', NULL),
(752, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:29:00', '2018-08-05 22:29:00', NULL),
(753, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:29:03', '2018-08-05 22:29:03', NULL),
(754, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:31:28', '2018-08-05 22:31:28', NULL),
(755, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:31:30', '2018-08-05 22:31:30', NULL),
(756, 4, 26, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:31:34', '2018-08-05 22:31:34', NULL),
(757, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:31:36', '2018-08-05 22:31:36', NULL),
(758, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:31:37', '2018-08-05 22:31:37', NULL),
(759, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:39:15', '2018-08-05 22:39:15', NULL),
(760, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:39:17', '2018-08-05 22:39:17', NULL),
(761, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:40:01', '2018-08-05 22:40:01', NULL),
(762, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:40:04', '2018-08-05 22:40:04', NULL),
(763, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:41:18', '2018-08-05 22:41:18', NULL),
(764, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:41:19', '2018-08-05 22:41:19', NULL),
(765, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:41:36', '2018-08-05 22:41:36', NULL),
(766, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:41:37', '2018-08-05 22:41:37', NULL),
(767, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:42:37', '2018-08-05 22:42:37', NULL),
(768, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:43:56', '2018-08-05 22:43:56', NULL),
(769, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:43:59', '2018-08-05 22:43:59', NULL),
(770, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:44:01', '2018-08-05 22:44:01', NULL),
(771, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:50:11', '2018-08-05 22:50:11', NULL),
(772, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:50:13', '2018-08-05 22:50:13', NULL),
(773, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:50:20', '2018-08-05 22:50:20', NULL),
(774, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:51:30', '2018-08-05 22:51:30', NULL),
(775, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:51:33', '2018-08-05 22:51:33', NULL),
(776, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:51:34', '2018-08-05 22:51:34', NULL),
(777, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:52:12', '2018-08-05 22:52:12', NULL),
(778, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:52:13', '2018-08-05 22:52:13', NULL),
(779, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:52:14', '2018-08-05 22:52:14', NULL),
(780, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:52:16', '2018-08-05 22:52:16', NULL),
(781, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:52:59', '2018-08-05 22:52:59', NULL),
(782, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:53:01', '2018-08-05 22:53:01', NULL),
(783, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:53:20', '2018-08-05 22:53:20', NULL),
(784, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:53:22', '2018-08-05 22:53:22', NULL),
(785, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:53:25', '2018-08-05 22:53:25', NULL),
(786, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:55:56', '2018-08-05 22:55:56', NULL),
(787, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:55:58', '2018-08-05 22:55:58', NULL),
(788, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:56:13', '2018-08-05 22:56:13', NULL),
(789, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:56:14', '2018-08-05 22:56:14', NULL),
(790, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:57:02', '2018-08-05 22:57:02', NULL),
(791, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:57:04', '2018-08-05 22:57:04', NULL),
(792, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:57:05', '2018-08-05 22:57:05', NULL),
(793, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 22:57:24', '2018-08-05 22:57:24', NULL),
(794, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 22:57:26', '2018-08-05 22:57:26', NULL),
(795, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:06:54', '2018-08-05 23:06:54', NULL),
(796, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:16:07', '2018-08-05 23:16:07', NULL),
(797, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:16:10', '2018-08-05 23:16:10', NULL),
(798, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:16:49', '2018-08-05 23:16:49', NULL),
(799, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:16:52', '2018-08-05 23:16:52', NULL),
(800, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:17:18', '2018-08-05 23:17:18', NULL),
(801, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:17:21', '2018-08-05 23:17:21', NULL),
(802, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:17:24', '2018-08-05 23:17:24', NULL),
(803, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:18:02', '2018-08-05 23:18:02', NULL),
(804, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:18:03', '2018-08-05 23:18:03', NULL),
(805, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:18:32', '2018-08-05 23:18:32', NULL),
(806, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:18:34', '2018-08-05 23:18:34', NULL),
(807, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:20:12', '2018-08-05 23:20:12', NULL),
(808, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:20:21', '2018-08-05 23:20:21', NULL),
(809, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:22:10', '2018-08-05 23:22:10', NULL),
(810, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:22:12', '2018-08-05 23:22:12', NULL),
(811, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:22:26', '2018-08-05 23:22:26', NULL),
(812, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:22:28', '2018-08-05 23:22:28', NULL),
(813, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:23:08', '2018-08-05 23:23:08', NULL),
(814, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:23:17', '2018-08-05 23:23:17', NULL),
(815, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:24:04', '2018-08-05 23:24:04', NULL),
(816, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:24:06', '2018-08-05 23:24:06', NULL),
(817, 4, 27, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:24:15', '2018-08-05 23:24:15', NULL),
(818, 4, 27, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:24:35', '2018-08-05 23:24:35', NULL),
(819, 4, 27, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:24:36', '2018-08-05 23:24:36', NULL),
(820, 4, 27, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:24:46', '2018-08-05 23:24:46', NULL),
(821, 4, 27, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:24:47', '2018-08-05 23:24:47', NULL),
(822, 4, 27, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:24:47', '2018-08-05 23:24:47', NULL),
(823, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:25:29', '2018-08-05 23:25:29', NULL),
(824, 4, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:25:31', '2018-08-05 23:25:31', NULL),
(825, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:25:33', '2018-08-05 23:25:33', NULL),
(826, 4, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:25:39', '2018-08-05 23:25:39', NULL),
(827, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:26:07', '2018-08-05 23:26:07', NULL),
(828, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:26:10', '2018-08-05 23:26:10', NULL),
(829, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:26:12', '2018-08-05 23:26:12', NULL),
(830, 4, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:26:15', '2018-08-05 23:26:15', NULL),
(831, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:26:16', '2018-08-05 23:26:16', NULL),
(832, 4, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:26:17', '2018-08-05 23:26:17', NULL),
(833, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:26:28', '2018-08-05 23:26:28', NULL),
(834, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:26:30', '2018-08-05 23:26:30', NULL),
(835, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:26:32', '2018-08-05 23:26:32', NULL),
(836, 4, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:26:34', '2018-08-05 23:26:34', NULL),
(837, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:27:36', '2018-08-05 23:27:36', NULL),
(838, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:27:37', '2018-08-05 23:27:37', NULL),
(839, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:30:18', '2018-08-05 23:30:18', NULL),
(840, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:30:37', '2018-08-05 23:30:37', NULL),
(841, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:30:43', '2018-08-05 23:30:43', NULL),
(842, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:30:43', '2018-08-05 23:30:43', NULL),
(843, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:30:47', '2018-08-05 23:30:47', NULL),
(844, 4, 21, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:30:57', '2018-08-05 23:30:57', NULL),
(845, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:30:57', '2018-08-05 23:30:57', NULL),
(846, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:30:59', '2018-08-05 23:30:59', NULL),
(847, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:31:07', '2018-08-05 23:31:07', NULL),
(848, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:31:08', '2018-08-05 23:31:08', NULL),
(849, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:39:01', '2018-08-05 23:39:01', NULL),
(850, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:39:02', '2018-08-05 23:39:02', NULL),
(851, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:04', '2018-08-05 23:39:04', NULL),
(852, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:07', '2018-08-05 23:39:07', NULL),
(853, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:09', '2018-08-05 23:39:09', NULL),
(854, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:09', '2018-08-05 23:39:09', NULL),
(855, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:12', '2018-08-05 23:39:12', NULL),
(856, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:12', '2018-08-05 23:39:12', NULL),
(857, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:12', '2018-08-05 23:39:12', NULL),
(858, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:16', '2018-08-05 23:39:16', NULL),
(859, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:16', '2018-08-05 23:39:16', NULL),
(860, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:16', '2018-08-05 23:39:16', NULL),
(861, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:17', '2018-08-05 23:39:17', NULL),
(862, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:20', '2018-08-05 23:39:20', NULL),
(863, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:20', '2018-08-05 23:39:20', NULL),
(864, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:20', '2018-08-05 23:39:20', NULL),
(865, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:21', '2018-08-05 23:39:21', NULL),
(866, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:21', '2018-08-05 23:39:21', NULL),
(867, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:23', '2018-08-05 23:39:23', NULL),
(868, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:23', '2018-08-05 23:39:23', NULL),
(869, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:24', '2018-08-05 23:39:24', NULL),
(870, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:24', '2018-08-05 23:39:24', NULL),
(871, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:24', '2018-08-05 23:39:24', NULL),
(872, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:24', '2018-08-05 23:39:24', NULL),
(873, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:28', '2018-08-05 23:39:28', NULL),
(874, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:29', '2018-08-05 23:39:29', NULL),
(875, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:29', '2018-08-05 23:39:29', NULL),
(876, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:29', '2018-08-05 23:39:29', NULL),
(877, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:30', '2018-08-05 23:39:30', NULL),
(878, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:30', '2018-08-05 23:39:30', NULL),
(879, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:30', '2018-08-05 23:39:30', NULL),
(880, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:33', '2018-08-05 23:39:33', NULL),
(881, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:33', '2018-08-05 23:39:33', NULL),
(882, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:33', '2018-08-05 23:39:33', NULL),
(883, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:34', '2018-08-05 23:39:34', NULL),
(884, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:34', '2018-08-05 23:39:34', NULL),
(885, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:34', '2018-08-05 23:39:34', NULL),
(886, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:34', '2018-08-05 23:39:34', NULL),
(887, 4, 22, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:35', '2018-08-05 23:39:35', NULL),
(888, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:39:37', '2018-08-05 23:39:37', NULL),
(889, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:39:39', '2018-08-05 23:39:39', NULL),
(890, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:45:35', '2018-08-05 23:45:35', NULL),
(891, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:47:33', '2018-08-05 23:47:33', NULL),
(892, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:47:35', '2018-08-05 23:47:35', NULL),
(893, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:47:38', '2018-08-05 23:47:38', NULL),
(894, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:47:58', '2018-08-05 23:47:58', NULL),
(895, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:48:00', '2018-08-05 23:48:00', NULL),
(896, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:48:57', '2018-08-05 23:48:57', NULL),
(897, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:48:59', '2018-08-05 23:48:59', NULL),
(898, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-05 23:50:07', '2018-08-05 23:50:07', NULL),
(899, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:50:09', '2018-08-05 23:50:09', NULL),
(900, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:58:59', '2018-08-05 23:58:59', NULL),
(901, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:59:00', '2018-08-05 23:59:00', NULL),
(902, 4, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-05 23:59:02', '2018-08-05 23:59:02', NULL),
(903, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:01:24', '2018-08-06 00:01:24', NULL),
(904, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:01:39', '2018-08-06 00:01:39', NULL),
(905, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:02:00', '2018-08-06 00:02:00', NULL),
(906, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 00:02:02', '2018-08-06 00:02:02', NULL),
(907, 4, 8, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:03:13', '2018-08-06 00:03:13', NULL),
(908, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:03:13', '2018-08-06 00:03:13', NULL),
(909, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:03:31', '2018-08-06 00:03:31', NULL),
(910, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 00:03:33', '2018-08-06 00:03:33', NULL),
(911, 4, 8, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:04:19', '2018-08-06 00:04:19', NULL),
(912, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:04:19', '2018-08-06 00:04:19', NULL),
(913, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 00:04:22', '2018-08-06 00:04:22', NULL),
(914, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:04:30', '2018-08-06 00:04:30', NULL),
(915, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:04:31', '2018-08-06 00:04:31', NULL),
(916, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:06:01', '2018-08-06 00:06:01', NULL),
(917, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:06:01', '2018-08-06 00:06:01', NULL),
(918, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 00:06:04', '2018-08-06 00:06:04', NULL),
(919, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 00:06:06', '2018-08-06 00:06:06', NULL),
(920, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:08:56', '2018-08-06 00:08:56', NULL),
(921, 4, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:08:59', '2018-08-06 00:08:59', NULL),
(922, 4, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:09:19', '2018-08-06 00:09:19', NULL),
(923, 4, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:09:37', '2018-08-06 00:09:37', NULL),
(924, 4, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:10:24', '2018-08-06 00:10:24', NULL),
(925, 4, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:10:44', '2018-08-06 00:10:44', NULL),
(926, 4, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:11:37', '2018-08-06 00:11:37', NULL),
(927, 4, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:11:42', '2018-08-06 00:11:42', NULL),
(928, 4, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:11:49', '2018-08-06 00:11:49', NULL),
(929, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:11:52', '2018-08-06 00:11:52', NULL),
(930, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:11:53', '2018-08-06 00:11:53', NULL),
(931, 4, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 00:11:55', '2018-08-06 00:11:55', NULL),
(932, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 00:12:18', '2018-08-06 00:12:18', NULL),
(933, 4, 8, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:13:15', '2018-08-06 00:13:15', NULL),
(934, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:13:15', '2018-08-06 00:13:15', NULL),
(935, 4, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 00:13:20', '2018-08-06 00:13:20', NULL),
(936, 4, 8, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:15:59', '2018-08-06 00:15:59', NULL),
(937, 4, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:15:59', '2018-08-06 00:15:59', NULL),
(938, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:16:04', '2018-08-06 00:16:04', NULL),
(939, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:16:04', '2018-08-06 00:16:04', NULL),
(940, 4, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:31:08', '2018-08-06 00:31:08', NULL),
(941, 4, 28, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 00:31:12', '2018-08-06 00:31:12', NULL),
(942, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:36:00', '2018-08-06 16:36:00', NULL),
(943, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:42:10', '2018-08-06 16:42:10', NULL),
(944, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:42:40', '2018-08-06 16:42:40', NULL),
(945, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:43:05', '2018-08-06 16:43:05', NULL),
(946, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:44:41', '2018-08-06 16:44:41', NULL),
(947, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:44:59', '2018-08-06 16:44:59', NULL),
(948, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:45:15', '2018-08-06 16:45:15', NULL),
(949, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:45:22', '2018-08-06 16:45:22', NULL),
(950, 5, 29, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:45:26', '2018-08-06 16:45:26', NULL),
(951, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:45:28', '2018-08-06 16:45:28', NULL),
(952, 5, 30, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:45:29', '2018-08-06 16:45:29', NULL),
(953, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:46:31', '2018-08-06 16:46:31', NULL),
(954, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:46:33', '2018-08-06 16:46:33', NULL),
(955, 5, 29, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:46:35', '2018-08-06 16:46:35', NULL),
(956, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:47:39', '2018-08-06 16:47:39', NULL),
(957, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:49:54', '2018-08-06 16:49:54', NULL),
(958, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:50:48', '2018-08-06 16:50:48', NULL),
(959, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:51:00', '2018-08-06 16:51:00', NULL),
(960, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:51:08', '2018-08-06 16:51:08', NULL),
(961, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:52:17', '2018-08-06 16:52:17', NULL),
(962, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:52:49', '2018-08-06 16:52:49', NULL),
(963, 5, 31, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:52:51', '2018-08-06 16:52:51', NULL),
(964, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:52:55', '2018-08-06 16:52:55', NULL),
(965, 5, 32, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:52:56', '2018-08-06 16:52:56', NULL),
(966, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:52:58', '2018-08-06 16:52:58', NULL),
(967, 5, 32, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:54:57', '2018-08-06 16:54:57', NULL),
(968, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:58:27', '2018-08-06 16:58:27', NULL),
(969, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:58:28', '2018-08-06 16:58:28', NULL),
(970, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:59:16', '2018-08-06 16:59:16', NULL),
(971, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:59:28', '2018-08-06 16:59:28', NULL),
(972, 5, 33, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:59:31', '2018-08-06 16:59:31', NULL),
(973, 5, 33, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 16:59:48', '2018-08-06 16:59:48', NULL),
(974, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:00:50', '2018-08-06 17:00:50', NULL),
(975, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:00:51', '2018-08-06 17:00:51', NULL),
(976, 5, 34, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:00:52', '2018-08-06 17:00:52', NULL),
(977, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:00:55', '2018-08-06 17:00:55', NULL),
(978, 5, 35, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:00:56', '2018-08-06 17:00:56', NULL),
(979, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:00:58', '2018-08-06 17:00:58', NULL),
(980, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:05:12', '2018-08-06 17:05:12', NULL),
(981, 5, 36, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:05:20', '2018-08-06 17:05:20', NULL),
(982, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:05:43', '2018-08-06 17:05:43', NULL),
(983, 5, 37, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:05:51', '2018-08-06 17:05:51', NULL),
(984, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:05:52', '2018-08-06 17:05:52', NULL),
(985, 5, 38, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:05:54', '2018-08-06 17:05:54', NULL),
(986, 5, 6, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:05:59', '2018-08-06 17:05:59', NULL),
(987, 5, 38, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:06:04', '2018-08-06 17:06:04', NULL),
(988, 5, 38, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:06:11', '2018-08-06 17:06:11', NULL),
(989, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:06:16', '2018-08-06 17:06:16', NULL),
(990, 5, 18, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:06:20', '2018-08-06 17:06:20', NULL),
(991, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:06:23', '2018-08-06 17:06:23', NULL),
(992, 5, 39, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:06:28', '2018-08-06 17:06:28', NULL);
INSERT INTO `tracker_log` (`id`, `session_id`, `path_id`, `query_id`, `method`, `route_path_id`, `is_ajax`, `is_secure`, `is_json`, `wants_json`, `error_id`, `created_at`, `updated_at`, `referer_id`) VALUES
(993, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:06:30', '2018-08-06 17:06:30', NULL),
(994, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:07:42', '2018-08-06 17:07:42', NULL),
(995, 5, 40, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:07:46', '2018-08-06 17:07:46', NULL),
(996, 5, 41, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:08:05', '2018-08-06 17:08:05', NULL),
(997, 5, 41, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:08:43', '2018-08-06 17:08:43', NULL),
(998, 5, 41, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:09:56', '2018-08-06 17:09:56', NULL),
(999, 5, 41, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:10:48', '2018-08-06 17:10:48', NULL),
(1000, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:10:50', '2018-08-06 17:10:50', NULL),
(1001, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:11:08', '2018-08-06 17:11:08', NULL),
(1002, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:11:33', '2018-08-06 17:11:33', NULL),
(1003, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:15:08', '2018-08-06 17:15:08', NULL),
(1004, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:15:18', '2018-08-06 17:15:18', NULL),
(1005, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:15:57', '2018-08-06 17:15:57', NULL),
(1006, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:16:14', '2018-08-06 17:16:14', NULL),
(1007, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:16:18', '2018-08-06 17:16:18', NULL),
(1008, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:18:13', '2018-08-06 17:18:13', NULL),
(1009, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:18:23', '2018-08-06 17:18:23', NULL),
(1010, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:20:23', '2018-08-06 17:20:23', NULL),
(1011, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:25:36', '2018-08-06 17:25:36', NULL),
(1012, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:25:50', '2018-08-06 17:25:50', NULL),
(1013, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:25:59', '2018-08-06 17:25:59', NULL),
(1014, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:26:04', '2018-08-06 17:26:04', NULL),
(1015, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:28:57', '2018-08-06 17:28:57', NULL),
(1016, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:30:58', '2018-08-06 17:30:58', NULL),
(1017, 5, 42, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:31:09', '2018-08-06 17:31:09', NULL),
(1018, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:31:10', '2018-08-06 17:31:10', NULL),
(1019, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:32:03', '2018-08-06 17:32:03', NULL),
(1020, 5, 18, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:32:05', '2018-08-06 17:32:05', NULL),
(1021, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:32:08', '2018-08-06 17:32:08', NULL),
(1022, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:37:59', '2018-08-06 17:37:59', NULL),
(1023, 5, 43, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:38:02', '2018-08-06 17:38:02', NULL),
(1024, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:38:58', '2018-08-06 17:38:58', NULL),
(1025, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:38:59', '2018-08-06 17:38:59', NULL),
(1026, 5, 44, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:39:02', '2018-08-06 17:39:02', NULL),
(1027, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:39:32', '2018-08-06 17:39:32', NULL),
(1028, 5, 45, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:39:35', '2018-08-06 17:39:35', NULL),
(1029, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:39:40', '2018-08-06 17:39:40', NULL),
(1030, 5, 46, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:39:42', '2018-08-06 17:39:42', NULL),
(1031, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:39:51', '2018-08-06 17:39:51', NULL),
(1032, 5, 47, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:39:54', '2018-08-06 17:39:54', NULL),
(1033, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:39:57', '2018-08-06 17:39:57', NULL),
(1034, 5, 48, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:39:59', '2018-08-06 17:39:59', NULL),
(1035, 5, 48, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:41:10', '2018-08-06 17:41:10', NULL),
(1036, 5, 49, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:41:31', '2018-08-06 17:41:31', NULL),
(1037, 5, 50, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:41:36', '2018-08-06 17:41:36', NULL),
(1038, 5, 51, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:41:42', '2018-08-06 17:41:42', NULL),
(1039, 5, 52, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:41:45', '2018-08-06 17:41:45', NULL),
(1040, 5, 53, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:41:47', '2018-08-06 17:41:47', NULL),
(1041, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:41:58', '2018-08-06 17:41:58', NULL),
(1042, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:43:05', '2018-08-06 17:43:05', NULL),
(1043, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:43:34', '2018-08-06 17:43:34', NULL),
(1044, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:43:39', '2018-08-06 17:43:39', NULL),
(1045, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:44:01', '2018-08-06 17:44:01', NULL),
(1046, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:46:34', '2018-08-06 17:46:34', NULL),
(1047, 5, 54, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:46:44', '2018-08-06 17:46:44', NULL),
(1048, 5, 54, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:47:19', '2018-08-06 17:47:19', NULL),
(1049, 5, 54, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:48:11', '2018-08-06 17:48:11', NULL),
(1050, 5, 54, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:48:41', '2018-08-06 17:48:41', NULL),
(1051, 5, 54, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:48:58', '2018-08-06 17:48:58', NULL),
(1052, 5, 55, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:49:01', '2018-08-06 17:49:01', NULL),
(1053, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:49:38', '2018-08-06 17:49:38', NULL),
(1054, 5, 56, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:49:47', '2018-08-06 17:49:47', NULL),
(1055, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:50:06', '2018-08-06 17:50:06', NULL),
(1056, 5, 57, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:50:19', '2018-08-06 17:50:19', NULL),
(1057, 5, 57, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:51:13', '2018-08-06 17:51:13', NULL),
(1058, 5, 57, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:52:04', '2018-08-06 17:52:04', NULL),
(1059, 5, 57, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:53:12', '2018-08-06 17:53:12', NULL),
(1060, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:53:16', '2018-08-06 17:53:16', NULL),
(1061, 5, 58, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:53:18', '2018-08-06 17:53:18', NULL),
(1062, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:53:23', '2018-08-06 17:53:23', NULL),
(1063, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:53:44', '2018-08-06 17:53:44', NULL),
(1064, 5, 59, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:53:46', '2018-08-06 17:53:46', NULL),
(1065, 5, 59, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:54:04', '2018-08-06 17:54:04', NULL),
(1066, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:54:31', '2018-08-06 17:54:31', NULL),
(1067, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:54:33', '2018-08-06 17:54:33', NULL),
(1068, 5, 60, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:54:35', '2018-08-06 17:54:35', NULL),
(1069, 5, 60, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:55:04', '2018-08-06 17:55:04', NULL),
(1070, 5, 60, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:55:09', '2018-08-06 17:55:09', NULL),
(1071, 5, 60, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:55:27', '2018-08-06 17:55:27', NULL),
(1072, 5, 60, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:55:38', '2018-08-06 17:55:38', NULL),
(1073, 5, 61, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:55:44', '2018-08-06 17:55:44', NULL),
(1074, 5, 62, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:55:46', '2018-08-06 17:55:46', NULL),
(1075, 5, 62, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:56:32', '2018-08-06 17:56:32', NULL),
(1076, 5, 63, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:56:35', '2018-08-06 17:56:35', NULL),
(1077, 5, 63, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:58:43', '2018-08-06 17:58:43', NULL),
(1078, 5, 63, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:58:56', '2018-08-06 17:58:56', NULL),
(1079, 5, 63, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 17:59:47', '2018-08-06 17:59:47', NULL),
(1080, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:00:08', '2018-08-06 18:00:08', NULL),
(1081, 5, 64, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:00:13', '2018-08-06 18:00:13', NULL),
(1082, 5, 65, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:00:16', '2018-08-06 18:00:16', NULL),
(1083, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:00:20', '2018-08-06 18:00:20', NULL),
(1084, 5, 66, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:01:00', '2018-08-06 18:01:00', NULL),
(1085, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:01:28', '2018-08-06 18:01:28', NULL),
(1086, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:04:56', '2018-08-06 18:04:56', NULL),
(1087, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:06:01', '2018-08-06 18:06:01', NULL),
(1088, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:06:44', '2018-08-06 18:06:44', NULL),
(1089, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:11:06', '2018-08-06 18:11:06', NULL),
(1090, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:11:25', '2018-08-06 18:11:25', NULL),
(1091, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:11:46', '2018-08-06 18:11:46', NULL),
(1092, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:12:06', '2018-08-06 18:12:06', NULL),
(1093, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:12:52', '2018-08-06 18:12:52', NULL),
(1094, 5, 67, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:12:56', '2018-08-06 18:12:56', NULL),
(1095, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:13:00', '2018-08-06 18:13:00', NULL),
(1096, 5, 68, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:13:05', '2018-08-06 18:13:05', NULL),
(1097, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:13:10', '2018-08-06 18:13:10', NULL),
(1098, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:13:48', '2018-08-06 18:13:48', NULL),
(1099, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:14:34', '2018-08-06 18:14:34', NULL),
(1100, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:16:25', '2018-08-06 18:16:25', NULL),
(1101, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:16:55', '2018-08-06 18:16:55', NULL),
(1102, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:17:40', '2018-08-06 18:17:40', NULL),
(1103, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:19:42', '2018-08-06 18:19:42', NULL),
(1104, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:20:02', '2018-08-06 18:20:02', NULL),
(1105, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:20:57', '2018-08-06 18:20:57', NULL),
(1106, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:21:20', '2018-08-06 18:21:20', NULL),
(1107, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:21:50', '2018-08-06 18:21:50', NULL),
(1108, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:22:08', '2018-08-06 18:22:08', NULL),
(1109, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:23:04', '2018-08-06 18:23:04', NULL),
(1110, 5, 18, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:23:44', '2018-08-06 18:23:44', NULL),
(1111, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:23:58', '2018-08-06 18:23:58', NULL),
(1112, 5, 69, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:24:03', '2018-08-06 18:24:03', NULL),
(1113, 5, 70, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:24:23', '2018-08-06 18:24:23', NULL),
(1114, 5, 70, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:25:17', '2018-08-06 18:25:17', NULL),
(1115, 5, 70, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:27:04', '2018-08-06 18:27:04', NULL),
(1116, 5, 70, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:27:18', '2018-08-06 18:27:18', NULL),
(1117, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:27:23', '2018-08-06 18:27:23', NULL),
(1118, 5, 18, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:27:27', '2018-08-06 18:27:27', NULL),
(1119, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:27:31', '2018-08-06 18:27:31', NULL),
(1120, 5, 71, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:27:36', '2018-08-06 18:27:36', NULL),
(1121, 5, 72, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:27:39', '2018-08-06 18:27:39', NULL),
(1122, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:27:48', '2018-08-06 18:27:48', NULL),
(1123, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:30:27', '2018-08-06 18:30:27', NULL),
(1124, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:32:30', '2018-08-06 18:32:30', NULL),
(1125, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:33:37', '2018-08-06 18:33:37', NULL),
(1126, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:34:06', '2018-08-06 18:34:06', NULL),
(1127, 5, 18, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:34:36', '2018-08-06 18:34:36', NULL),
(1128, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:34:37', '2018-08-06 18:34:37', NULL),
(1129, 5, 73, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:34:40', '2018-08-06 18:34:40', NULL),
(1130, 5, 74, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:34:44', '2018-08-06 18:34:44', NULL),
(1131, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:34:46', '2018-08-06 18:34:46', NULL),
(1132, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:36:04', '2018-08-06 18:36:04', NULL),
(1133, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:36:09', '2018-08-06 18:36:09', NULL),
(1134, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:36:28', '2018-08-06 18:36:28', NULL),
(1135, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:36:35', '2018-08-06 18:36:35', NULL),
(1136, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:36:36', '2018-08-06 18:36:36', NULL),
(1137, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:36:37', '2018-08-06 18:36:37', NULL),
(1138, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:36:41', '2018-08-06 18:36:41', NULL),
(1139, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:37:21', '2018-08-06 18:37:21', NULL),
(1140, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:38:05', '2018-08-06 18:38:05', NULL),
(1141, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:39:53', '2018-08-06 18:39:53', NULL),
(1142, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:40:48', '2018-08-06 18:40:48', NULL),
(1143, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:41:31', '2018-08-06 18:41:31', NULL),
(1144, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:41:48', '2018-08-06 18:41:48', NULL),
(1145, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:42:13', '2018-08-06 18:42:13', NULL),
(1146, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:42:33', '2018-08-06 18:42:33', NULL),
(1147, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:42:51', '2018-08-06 18:42:51', NULL),
(1148, 5, 75, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:43:53', '2018-08-06 18:43:53', NULL),
(1149, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:43:56', '2018-08-06 18:43:56', NULL),
(1150, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:44:35', '2018-08-06 18:44:35', NULL),
(1151, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:45:20', '2018-08-06 18:45:20', NULL),
(1152, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:45:25', '2018-08-06 18:45:25', NULL),
(1153, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:45:58', '2018-08-06 18:45:58', NULL),
(1154, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:46:14', '2018-08-06 18:46:14', NULL),
(1155, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:46:15', '2018-08-06 18:46:15', NULL),
(1156, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:46:28', '2018-08-06 18:46:28', NULL),
(1157, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:46:28', '2018-08-06 18:46:28', NULL),
(1158, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:46:51', '2018-08-06 18:46:51', NULL),
(1159, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:47:20', '2018-08-06 18:47:20', NULL),
(1160, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:48:10', '2018-08-06 18:48:10', NULL),
(1161, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:48:25', '2018-08-06 18:48:25', NULL),
(1162, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:48:38', '2018-08-06 18:48:38', NULL),
(1163, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:49:19', '2018-08-06 18:49:19', NULL),
(1164, 5, 18, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:51:28', '2018-08-06 18:51:28', NULL),
(1165, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:51:56', '2018-08-06 18:51:56', NULL),
(1166, 5, 76, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:52:01', '2018-08-06 18:52:01', NULL),
(1167, 5, 76, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:53:14', '2018-08-06 18:53:14', NULL),
(1168, 5, 76, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:54:05', '2018-08-06 18:54:05', NULL),
(1169, 5, 76, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:55:03', '2018-08-06 18:55:03', NULL),
(1170, 5, 76, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:55:44', '2018-08-06 18:55:44', NULL),
(1171, 5, 76, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 18:56:17', '2018-08-06 18:56:17', NULL),
(1172, 5, 77, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:04:09', '2018-08-06 19:04:09', NULL),
(1173, 5, 77, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:05:14', '2018-08-06 19:05:14', NULL),
(1174, 5, 77, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:05:39', '2018-08-06 19:05:39', NULL),
(1175, 5, 77, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:06:07', '2018-08-06 19:06:07', NULL),
(1176, 5, 77, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:06:18', '2018-08-06 19:06:18', NULL),
(1177, 5, 78, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:06:42', '2018-08-06 19:06:42', NULL),
(1178, 5, 78, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:06:52', '2018-08-06 19:06:52', NULL),
(1179, 5, 78, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:07:34', '2018-08-06 19:07:34', NULL),
(1180, 5, 78, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:08:05', '2018-08-06 19:08:05', NULL),
(1181, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:08:20', '2018-08-06 19:08:20', NULL),
(1182, 5, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:08:32', '2018-08-06 19:08:32', NULL),
(1183, 5, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:08:33', '2018-08-06 19:08:33', NULL),
(1184, 5, 79, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:10:58', '2018-08-06 19:10:58', NULL),
(1185, 5, 79, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:10:59', '2018-08-06 19:10:59', NULL),
(1186, 5, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:11:01', '2018-08-06 19:11:01', NULL),
(1187, 5, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:12:43', '2018-08-06 19:12:43', NULL),
(1188, 5, 79, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:12:45', '2018-08-06 19:12:45', NULL),
(1189, 5, 79, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:12:46', '2018-08-06 19:12:46', NULL),
(1190, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:12:52', '2018-08-06 19:12:52', NULL),
(1191, 5, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:12:58', '2018-08-06 19:12:58', NULL),
(1192, 5, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:12:59', '2018-08-06 19:12:59', NULL),
(1193, 5, 80, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:14:56', '2018-08-06 19:14:56', NULL),
(1194, 5, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:18:30', '2018-08-06 19:18:30', NULL),
(1195, 5, 81, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:18:40', '2018-08-06 19:18:40', NULL),
(1196, 5, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:19:10', '2018-08-06 19:19:10', NULL),
(1197, 5, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:19:17', '2018-08-06 19:19:17', NULL),
(1198, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:19:20', '2018-08-06 19:19:20', NULL),
(1199, 5, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:19:25', '2018-08-06 19:19:25', NULL),
(1200, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:19:26', '2018-08-06 19:19:26', NULL),
(1201, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:19:42', '2018-08-06 19:19:42', NULL),
(1202, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:19:46', '2018-08-06 19:19:46', NULL),
(1203, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:20:57', '2018-08-06 19:20:57', NULL),
(1204, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:21:11', '2018-08-06 19:21:11', NULL),
(1205, 5, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:21:43', '2018-08-06 19:21:43', NULL),
(1206, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:21:51', '2018-08-06 19:21:51', NULL),
(1207, 5, 81, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:21:55', '2018-08-06 19:21:55', NULL),
(1208, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:22:08', '2018-08-06 19:22:08', NULL),
(1209, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:22:11', '2018-08-06 19:22:11', NULL),
(1210, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:23:34', '2018-08-06 19:23:34', NULL),
(1211, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:23:35', '2018-08-06 19:23:35', NULL),
(1212, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:23:42', '2018-08-06 19:23:42', NULL),
(1213, 5, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:23:51', '2018-08-06 19:23:51', NULL),
(1214, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:24:53', '2018-08-06 19:24:53', NULL),
(1215, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:24:58', '2018-08-06 19:24:58', NULL),
(1216, 5, 83, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:25:04', '2018-08-06 19:25:04', NULL),
(1217, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:25:48', '2018-08-06 19:25:48', NULL),
(1218, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:25:49', '2018-08-06 19:25:49', NULL),
(1219, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:25:50', '2018-08-06 19:25:50', NULL),
(1220, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:26:09', '2018-08-06 19:26:09', NULL),
(1221, 5, 4, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:26:15', '2018-08-06 19:26:15', NULL),
(1222, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:26:15', '2018-08-06 19:26:15', NULL),
(1223, 5, 4, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:26:16', '2018-08-06 19:26:16', NULL),
(1224, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:26:16', '2018-08-06 19:26:16', NULL),
(1225, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:26:34', '2018-08-06 19:26:34', NULL),
(1226, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:27:16', '2018-08-06 19:27:16', NULL),
(1227, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:27:31', '2018-08-06 19:27:31', NULL),
(1228, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:27:38', '2018-08-06 19:27:38', NULL),
(1229, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:27:53', '2018-08-06 19:27:53', NULL),
(1230, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:28:08', '2018-08-06 19:28:08', NULL),
(1231, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:28:16', '2018-08-06 19:28:16', NULL),
(1232, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:28:20', '2018-08-06 19:28:20', NULL),
(1233, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:28:23', '2018-08-06 19:28:23', NULL),
(1234, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:28:25', '2018-08-06 19:28:25', NULL),
(1235, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:30:12', '2018-08-06 19:30:12', NULL),
(1236, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:30:14', '2018-08-06 19:30:14', NULL),
(1237, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:30:15', '2018-08-06 19:30:15', NULL),
(1238, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:30:24', '2018-08-06 19:30:24', NULL),
(1239, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:31:37', '2018-08-06 19:31:37', NULL),
(1240, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:32:04', '2018-08-06 19:32:04', NULL),
(1241, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:32:12', '2018-08-06 19:32:12', NULL),
(1242, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:32:24', '2018-08-06 19:32:24', NULL),
(1243, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:32:34', '2018-08-06 19:32:34', NULL),
(1244, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:32:42', '2018-08-06 19:32:42', NULL),
(1245, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:32:56', '2018-08-06 19:32:56', NULL),
(1246, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:33:35', '2018-08-06 19:33:35', NULL),
(1247, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:33:43', '2018-08-06 19:33:43', NULL),
(1248, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:34:01', '2018-08-06 19:34:01', NULL),
(1249, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:34:08', '2018-08-06 19:34:08', NULL),
(1250, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:34:23', '2018-08-06 19:34:23', NULL),
(1251, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:34:58', '2018-08-06 19:34:58', NULL),
(1252, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:35:00', '2018-08-06 19:35:00', NULL),
(1253, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:35:31', '2018-08-06 19:35:31', NULL),
(1254, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:35:31', '2018-08-06 19:35:31', NULL),
(1255, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:35:40', '2018-08-06 19:35:40', NULL),
(1256, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:35:41', '2018-08-06 19:35:41', NULL),
(1257, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:35:53', '2018-08-06 19:35:53', NULL),
(1258, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:35:54', '2018-08-06 19:35:54', NULL),
(1259, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:35:57', '2018-08-06 19:35:57', NULL),
(1260, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:35:58', '2018-08-06 19:35:58', NULL),
(1261, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:37:01', '2018-08-06 19:37:01', NULL),
(1262, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:37:02', '2018-08-06 19:37:02', NULL),
(1263, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:37:09', '2018-08-06 19:37:09', NULL),
(1264, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:37:10', '2018-08-06 19:37:10', NULL),
(1265, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:37:19', '2018-08-06 19:37:19', NULL),
(1266, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:37:20', '2018-08-06 19:37:20', NULL),
(1267, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:37:27', '2018-08-06 19:37:27', NULL),
(1268, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:37:28', '2018-08-06 19:37:28', NULL),
(1269, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:38:47', '2018-08-06 19:38:47', NULL),
(1270, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:39:12', '2018-08-06 19:39:12', NULL),
(1271, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:39:17', '2018-08-06 19:39:17', NULL),
(1272, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:39:29', '2018-08-06 19:39:29', NULL),
(1273, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:39:36', '2018-08-06 19:39:36', NULL),
(1274, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:40:01', '2018-08-06 19:40:01', NULL),
(1275, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:40:09', '2018-08-06 19:40:09', NULL),
(1276, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:40:17', '2018-08-06 19:40:17', NULL),
(1277, 5, 84, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:40:46', '2018-08-06 19:40:46', NULL),
(1278, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:40:47', '2018-08-06 19:40:47', NULL),
(1279, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:40:50', '2018-08-06 19:40:50', NULL),
(1280, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:41:55', '2018-08-06 19:41:55', NULL),
(1281, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:41:56', '2018-08-06 19:41:56', NULL),
(1282, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:42:02', '2018-08-06 19:42:02', NULL),
(1283, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:42:02', '2018-08-06 19:42:02', NULL),
(1284, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:42:07', '2018-08-06 19:42:07', NULL),
(1285, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:42:35', '2018-08-06 19:42:35', NULL),
(1286, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:42:51', '2018-08-06 19:42:51', NULL),
(1287, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:42:51', '2018-08-06 19:42:51', NULL),
(1288, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:43:09', '2018-08-06 19:43:09', NULL),
(1289, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:43:45', '2018-08-06 19:43:45', NULL),
(1290, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:44:01', '2018-08-06 19:44:01', NULL),
(1291, 5, 86, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:44:05', '2018-08-06 19:44:05', NULL),
(1292, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:44:06', '2018-08-06 19:44:06', NULL),
(1293, 5, 84, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:44:14', '2018-08-06 19:44:14', NULL),
(1294, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:44:15', '2018-08-06 19:44:15', NULL),
(1295, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:44:23', '2018-08-06 19:44:23', NULL),
(1296, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:44:23', '2018-08-06 19:44:23', NULL),
(1297, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:44:26', '2018-08-06 19:44:26', NULL),
(1298, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:44:29', '2018-08-06 19:44:29', NULL),
(1299, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:44:30', '2018-08-06 19:44:30', NULL),
(1300, 5, 86, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:44:32', '2018-08-06 19:44:32', NULL),
(1301, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:44:33', '2018-08-06 19:44:33', NULL),
(1302, 5, 84, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:44:42', '2018-08-06 19:44:42', NULL),
(1303, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:44:43', '2018-08-06 19:44:43', NULL),
(1304, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:45:25', '2018-08-06 19:45:25', NULL),
(1305, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:45:25', '2018-08-06 19:45:25', NULL),
(1306, 5, 86, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:45:29', '2018-08-06 19:45:29', NULL),
(1307, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:45:29', '2018-08-06 19:45:29', NULL),
(1308, 5, 84, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:45:40', '2018-08-06 19:45:40', NULL),
(1309, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:45:41', '2018-08-06 19:45:41', NULL),
(1310, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:45:55', '2018-08-06 19:45:55', NULL),
(1311, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:45:56', '2018-08-06 19:45:56', NULL),
(1312, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:45:57', '2018-08-06 19:45:57', NULL),
(1313, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:45:59', '2018-08-06 19:45:59', NULL),
(1314, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:46:03', '2018-08-06 19:46:03', NULL),
(1315, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:46:03', '2018-08-06 19:46:03', NULL),
(1316, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:46:03', '2018-08-06 19:46:03', NULL),
(1317, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:46:04', '2018-08-06 19:46:04', NULL),
(1318, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:49:15', '2018-08-06 19:49:15', NULL),
(1319, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:49:22', '2018-08-06 19:49:22', NULL),
(1320, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:49:22', '2018-08-06 19:49:22', NULL),
(1321, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:49:26', '2018-08-06 19:49:26', NULL),
(1322, 5, 86, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:49:29', '2018-08-06 19:49:29', NULL),
(1323, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:49:29', '2018-08-06 19:49:29', NULL),
(1324, 5, 84, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:49:39', '2018-08-06 19:49:39', NULL),
(1325, 5, 84, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:49:48', '2018-08-06 19:49:48', NULL),
(1326, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:49:48', '2018-08-06 19:49:48', NULL),
(1327, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:56:48', '2018-08-06 19:56:48', NULL),
(1328, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 19:59:08', '2018-08-06 19:59:08', NULL),
(1329, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:06:27', '2018-08-06 21:06:27', NULL),
(1330, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:07:29', '2018-08-06 21:07:29', NULL),
(1331, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:07:58', '2018-08-06 21:07:58', NULL),
(1332, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:08:04', '2018-08-06 21:08:04', NULL),
(1333, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:09:03', '2018-08-06 21:09:03', NULL),
(1334, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:09:30', '2018-08-06 21:09:30', NULL),
(1335, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:10:30', '2018-08-06 21:10:30', NULL),
(1336, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:11:55', '2018-08-06 21:11:55', NULL),
(1337, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:12:19', '2018-08-06 21:12:19', NULL),
(1338, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:13:16', '2018-08-06 21:13:16', NULL),
(1339, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:13:23', '2018-08-06 21:13:23', NULL),
(1340, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:13:27', '2018-08-06 21:13:27', NULL),
(1341, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:13:35', '2018-08-06 21:13:35', NULL),
(1342, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:13:35', '2018-08-06 21:13:35', NULL),
(1343, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:13:36', '2018-08-06 21:13:36', NULL),
(1344, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:13:36', '2018-08-06 21:13:36', NULL),
(1345, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:13:36', '2018-08-06 21:13:36', NULL),
(1346, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:13:36', '2018-08-06 21:13:36', NULL),
(1347, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:13:48', '2018-08-06 21:13:48', NULL),
(1348, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:13:49', '2018-08-06 21:13:49', NULL),
(1349, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:13:49', '2018-08-06 21:13:49', NULL),
(1350, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:13:49', '2018-08-06 21:13:49', NULL),
(1351, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:13:49', '2018-08-06 21:13:49', NULL),
(1352, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:13:50', '2018-08-06 21:13:50', NULL),
(1353, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:14:24', '2018-08-06 21:14:24', NULL),
(1354, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:14:48', '2018-08-06 21:14:48', NULL),
(1355, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:15:34', '2018-08-06 21:15:34', NULL),
(1356, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:15:45', '2018-08-06 21:15:45', NULL),
(1357, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:16:19', '2018-08-06 21:16:19', NULL),
(1358, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:16:23', '2018-08-06 21:16:23', NULL),
(1359, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:16:50', '2018-08-06 21:16:50', NULL),
(1360, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:16:52', '2018-08-06 21:16:52', NULL),
(1361, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:17:17', '2018-08-06 21:17:17', NULL),
(1362, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:17:19', '2018-08-06 21:17:19', NULL),
(1363, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:17:22', '2018-08-06 21:17:22', NULL),
(1364, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:17:23', '2018-08-06 21:17:23', NULL),
(1365, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:17:32', '2018-08-06 21:17:32', NULL),
(1366, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:17:34', '2018-08-06 21:17:34', NULL),
(1367, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:17:35', '2018-08-06 21:17:35', NULL),
(1368, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:17:37', '2018-08-06 21:17:37', NULL),
(1369, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:18:09', '2018-08-06 21:18:09', NULL),
(1370, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:18:10', '2018-08-06 21:18:10', NULL),
(1371, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:18:11', '2018-08-06 21:18:11', NULL),
(1372, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:18:52', '2018-08-06 21:18:52', NULL),
(1373, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:19:28', '2018-08-06 21:19:28', NULL),
(1374, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:19:43', '2018-08-06 21:19:43', NULL),
(1375, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:20:22', '2018-08-06 21:20:22', NULL),
(1376, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:20:40', '2018-08-06 21:20:40', NULL),
(1377, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:22:17', '2018-08-06 21:22:17', NULL),
(1378, 5, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 21:22:20', '2018-08-06 21:22:20', NULL),
(1379, 5, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 21:22:22', '2018-08-06 21:22:22', NULL),
(1380, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:22:55', '2018-08-06 21:22:55', NULL),
(1381, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:23:34', '2018-08-06 21:23:34', NULL),
(1382, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:23:36', '2018-08-06 21:23:36', NULL),
(1383, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:23:45', '2018-08-06 21:23:45', NULL),
(1384, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:24:18', '2018-08-06 21:24:18', NULL),
(1385, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:24:18', '2018-08-06 21:24:18', NULL),
(1386, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:24:19', '2018-08-06 21:24:19', NULL),
(1387, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:24:19', '2018-08-06 21:24:19', NULL),
(1388, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:24:19', '2018-08-06 21:24:19', NULL),
(1389, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:24:20', '2018-08-06 21:24:20', NULL),
(1390, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:24:20', '2018-08-06 21:24:20', NULL),
(1391, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:24:30', '2018-08-06 21:24:30', NULL),
(1392, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:24:49', '2018-08-06 21:24:49', NULL),
(1393, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:25:09', '2018-08-06 21:25:09', NULL),
(1394, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:25:15', '2018-08-06 21:25:15', NULL),
(1395, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:25:31', '2018-08-06 21:25:31', NULL),
(1396, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:25:50', '2018-08-06 21:25:50', NULL),
(1397, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:26:18', '2018-08-06 21:26:18', NULL),
(1398, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:26:45', '2018-08-06 21:26:45', NULL),
(1399, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:27:10', '2018-08-06 21:27:10', NULL),
(1400, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:27:22', '2018-08-06 21:27:22', NULL),
(1401, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:27:33', '2018-08-06 21:27:33', NULL),
(1402, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:28:56', '2018-08-06 21:28:56', NULL),
(1403, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:29:06', '2018-08-06 21:29:06', NULL),
(1404, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:29:14', '2018-08-06 21:29:14', NULL),
(1405, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:29:19', '2018-08-06 21:29:19', NULL),
(1406, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:29:52', '2018-08-06 21:29:52', NULL),
(1407, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:30:05', '2018-08-06 21:30:05', NULL),
(1408, 5, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 21:30:23', '2018-08-06 21:30:23', NULL),
(1409, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:30:23', '2018-08-06 21:30:23', NULL),
(1410, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:31:16', '2018-08-06 21:31:16', NULL),
(1411, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:31:26', '2018-08-06 21:31:26', NULL),
(1412, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:31:38', '2018-08-06 21:31:38', NULL),
(1413, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:31:56', '2018-08-06 21:31:56', NULL),
(1414, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:32:03', '2018-08-06 21:32:03', NULL),
(1415, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:32:18', '2018-08-06 21:32:18', NULL),
(1416, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:32:23', '2018-08-06 21:32:23', NULL),
(1417, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:32:31', '2018-08-06 21:32:31', NULL),
(1418, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:32:51', '2018-08-06 21:32:51', NULL),
(1419, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:33:45', '2018-08-06 21:33:45', NULL),
(1420, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:33:58', '2018-08-06 21:33:58', NULL),
(1421, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:34:05', '2018-08-06 21:34:05', NULL),
(1422, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:34:09', '2018-08-06 21:34:09', NULL),
(1423, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:34:26', '2018-08-06 21:34:26', NULL),
(1424, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:34:27', '2018-08-06 21:34:27', NULL),
(1425, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:34:57', '2018-08-06 21:34:57', NULL),
(1426, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:34:59', '2018-08-06 21:34:59', NULL),
(1427, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:35:19', '2018-08-06 21:35:19', NULL),
(1428, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:35:20', '2018-08-06 21:35:20', NULL),
(1429, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:35:46', '2018-08-06 21:35:46', NULL),
(1430, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:35:47', '2018-08-06 21:35:47', NULL),
(1431, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:35:58', '2018-08-06 21:35:58', NULL),
(1432, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:35:59', '2018-08-06 21:35:59', NULL),
(1433, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:36:18', '2018-08-06 21:36:18', NULL),
(1434, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:36:18', '2018-08-06 21:36:18', NULL),
(1435, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:36:19', '2018-08-06 21:36:19', NULL),
(1436, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:36:19', '2018-08-06 21:36:19', NULL),
(1437, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:36:19', '2018-08-06 21:36:19', NULL),
(1438, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:36:20', '2018-08-06 21:36:20', NULL),
(1439, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:36:36', '2018-08-06 21:36:36', NULL),
(1440, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:37:26', '2018-08-06 21:37:26', NULL),
(1441, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:38:03', '2018-08-06 21:38:03', NULL),
(1442, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:38:45', '2018-08-06 21:38:45', NULL),
(1443, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:39:29', '2018-08-06 21:39:29', NULL),
(1444, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:39:59', '2018-08-06 21:39:59', NULL),
(1445, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:40:21', '2018-08-06 21:40:21', NULL),
(1446, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:40:37', '2018-08-06 21:40:37', NULL),
(1447, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:41:56', '2018-08-06 21:41:56', NULL),
(1448, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:42:15', '2018-08-06 21:42:15', NULL),
(1449, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:42:39', '2018-08-06 21:42:39', NULL),
(1450, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:42:44', '2018-08-06 21:42:44', NULL),
(1451, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:42:59', '2018-08-06 21:42:59', NULL),
(1452, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:43:02', '2018-08-06 21:43:02', NULL),
(1453, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:43:30', '2018-08-06 21:43:30', NULL),
(1454, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:43:31', '2018-08-06 21:43:31', NULL),
(1455, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:44:23', '2018-08-06 21:44:23', NULL),
(1456, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:44:25', '2018-08-06 21:44:25', NULL),
(1457, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:44:34', '2018-08-06 21:44:34', NULL),
(1458, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:44:36', '2018-08-06 21:44:36', NULL),
(1459, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:45:04', '2018-08-06 21:45:04', NULL),
(1460, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:45:05', '2018-08-06 21:45:05', NULL),
(1461, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:45:44', '2018-08-06 21:45:44', NULL),
(1462, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:46:01', '2018-08-06 21:46:01', NULL),
(1463, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:46:10', '2018-08-06 21:46:10', NULL),
(1464, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:46:10', '2018-08-06 21:46:10', NULL),
(1465, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:46:10', '2018-08-06 21:46:10', NULL),
(1466, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:46:11', '2018-08-06 21:46:11', NULL),
(1467, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:46:11', '2018-08-06 21:46:11', NULL),
(1468, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:46:11', '2018-08-06 21:46:11', NULL),
(1469, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:46:34', '2018-08-06 21:46:34', NULL),
(1470, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:47:13', '2018-08-06 21:47:13', NULL),
(1471, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:47:29', '2018-08-06 21:47:29', NULL),
(1472, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:49:13', '2018-08-06 21:49:13', NULL),
(1473, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:49:18', '2018-08-06 21:49:18', NULL),
(1474, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:49:18', '2018-08-06 21:49:18', NULL),
(1475, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:49:18', '2018-08-06 21:49:18', NULL),
(1476, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:49:19', '2018-08-06 21:49:19', NULL),
(1477, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:49:19', '2018-08-06 21:49:19', NULL),
(1478, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:49:19', '2018-08-06 21:49:19', NULL),
(1479, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:49:24', '2018-08-06 21:49:24', NULL),
(1480, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:49:28', '2018-08-06 21:49:28', NULL),
(1481, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:49:47', '2018-08-06 21:49:47', NULL);
INSERT INTO `tracker_log` (`id`, `session_id`, `path_id`, `query_id`, `method`, `route_path_id`, `is_ajax`, `is_secure`, `is_json`, `wants_json`, `error_id`, `created_at`, `updated_at`, `referer_id`) VALUES
(1482, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:49:49', '2018-08-06 21:49:49', NULL),
(1483, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:50:13', '2018-08-06 21:50:13', NULL),
(1484, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:50:15', '2018-08-06 21:50:15', NULL),
(1485, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:51:19', '2018-08-06 21:51:19', NULL),
(1486, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:51:21', '2018-08-06 21:51:21', NULL),
(1487, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:51:29', '2018-08-06 21:51:29', NULL),
(1488, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:51:29', '2018-08-06 21:51:29', NULL),
(1489, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:51:29', '2018-08-06 21:51:29', NULL),
(1490, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:51:30', '2018-08-06 21:51:30', NULL),
(1491, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:51:30', '2018-08-06 21:51:30', NULL),
(1492, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:51:30', '2018-08-06 21:51:30', NULL),
(1493, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:51:31', '2018-08-06 21:51:31', NULL),
(1494, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:51:33', '2018-08-06 21:51:33', NULL),
(1495, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:51:34', '2018-08-06 21:51:34', NULL),
(1496, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:51:37', '2018-08-06 21:51:37', NULL),
(1497, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:51:37', '2018-08-06 21:51:37', NULL),
(1498, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:53:14', '2018-08-06 21:53:14', NULL),
(1499, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:53:16', '2018-08-06 21:53:16', NULL),
(1500, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:53:52', '2018-08-06 21:53:52', NULL),
(1501, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:53:53', '2018-08-06 21:53:53', NULL),
(1502, 5, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 21:53:54', '2018-08-06 21:53:54', NULL),
(1503, 5, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 21:53:56', '2018-08-06 21:53:56', NULL),
(1504, 5, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 21:53:58', '2018-08-06 21:53:58', NULL),
(1505, 5, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 21:54:00', '2018-08-06 21:54:00', NULL),
(1506, 5, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 21:54:01', '2018-08-06 21:54:01', NULL),
(1507, 5, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 21:55:10', '2018-08-06 21:55:10', NULL),
(1508, 5, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 21:55:13', '2018-08-06 21:55:13', NULL),
(1509, 5, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 21:55:15', '2018-08-06 21:55:15', NULL),
(1510, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:55:41', '2018-08-06 21:55:41', NULL),
(1511, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:55:43', '2018-08-06 21:55:43', NULL),
(1512, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:56:20', '2018-08-06 21:56:20', NULL),
(1513, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:56:22', '2018-08-06 21:56:22', NULL),
(1514, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:56:30', '2018-08-06 21:56:30', NULL),
(1515, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:56:32', '2018-08-06 21:56:32', NULL),
(1516, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:57:06', '2018-08-06 21:57:06', NULL),
(1517, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:57:07', '2018-08-06 21:57:07', NULL),
(1518, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:57:17', '2018-08-06 21:57:17', NULL),
(1519, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:57:19', '2018-08-06 21:57:19', NULL),
(1520, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:58:08', '2018-08-06 21:58:08', NULL),
(1521, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:58:24', '2018-08-06 21:58:24', NULL),
(1522, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 21:58:33', '2018-08-06 21:58:33', NULL),
(1523, 5, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:01:32', '2018-08-06 22:01:32', NULL),
(1524, 5, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:01:34', '2018-08-06 22:01:34', NULL),
(1525, 5, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:01:36', '2018-08-06 22:01:36', NULL),
(1526, 5, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:01:38', '2018-08-06 22:01:38', NULL),
(1527, 5, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:01:40', '2018-08-06 22:01:40', NULL),
(1528, 5, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:01:41', '2018-08-06 22:01:41', NULL),
(1529, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:02:19', '2018-08-06 22:02:19', NULL),
(1530, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:02:20', '2018-08-06 22:02:20', NULL),
(1531, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:02:24', '2018-08-06 22:02:24', NULL),
(1532, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:02:28', '2018-08-06 22:02:28', NULL),
(1533, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:02:29', '2018-08-06 22:02:29', NULL),
(1534, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:02:30', '2018-08-06 22:02:30', NULL),
(1535, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:02:42', '2018-08-06 22:02:42', NULL),
(1536, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:03:28', '2018-08-06 22:03:28', NULL),
(1537, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:03:29', '2018-08-06 22:03:29', NULL),
(1538, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:03:30', '2018-08-06 22:03:30', NULL),
(1539, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:03:43', '2018-08-06 22:03:43', NULL),
(1540, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:03:44', '2018-08-06 22:03:44', NULL),
(1541, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:03:45', '2018-08-06 22:03:45', NULL),
(1542, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:06:11', '2018-08-06 22:06:11', NULL),
(1543, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:06:13', '2018-08-06 22:06:13', NULL),
(1544, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:06:13', '2018-08-06 22:06:13', NULL),
(1545, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:06:29', '2018-08-06 22:06:29', NULL),
(1546, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:06:31', '2018-08-06 22:06:31', NULL),
(1547, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:06:31', '2018-08-06 22:06:31', NULL),
(1548, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:06:36', '2018-08-06 22:06:36', NULL),
(1549, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:07:11', '2018-08-06 22:07:11', NULL),
(1550, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:07:13', '2018-08-06 22:07:13', NULL),
(1551, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:07:13', '2018-08-06 22:07:13', NULL),
(1552, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:07:19', '2018-08-06 22:07:19', NULL),
(1553, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:07:33', '2018-08-06 22:07:33', NULL),
(1554, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:07:35', '2018-08-06 22:07:35', NULL),
(1555, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:08:13', '2018-08-06 22:08:13', NULL),
(1556, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:08:50', '2018-08-06 22:08:50', NULL),
(1557, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:08:58', '2018-08-06 22:08:58', NULL),
(1558, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:09:17', '2018-08-06 22:09:17', NULL),
(1559, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:10:01', '2018-08-06 22:10:01', NULL),
(1560, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:10:09', '2018-08-06 22:10:09', NULL),
(1561, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:10:20', '2018-08-06 22:10:20', NULL),
(1562, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:10:36', '2018-08-06 22:10:36', NULL),
(1563, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:11:10', '2018-08-06 22:11:10', NULL),
(1564, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:11:15', '2018-08-06 22:11:15', NULL),
(1565, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:11:22', '2018-08-06 22:11:22', NULL),
(1566, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:13:49', '2018-08-06 22:13:49', NULL),
(1567, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:14:11', '2018-08-06 22:14:11', NULL),
(1568, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:14:22', '2018-08-06 22:14:22', NULL),
(1569, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:15:08', '2018-08-06 22:15:08', NULL),
(1570, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:15:51', '2018-08-06 22:15:51', NULL),
(1571, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:15:58', '2018-08-06 22:15:58', NULL),
(1572, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:17:21', '2018-08-06 22:17:21', NULL),
(1573, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:17:42', '2018-08-06 22:17:42', NULL),
(1574, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:17:51', '2018-08-06 22:17:51', NULL),
(1575, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:17:58', '2018-08-06 22:17:58', NULL),
(1576, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:18:31', '2018-08-06 22:18:31', NULL),
(1577, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:18:44', '2018-08-06 22:18:44', NULL),
(1578, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:18:59', '2018-08-06 22:18:59', NULL),
(1579, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:19:17', '2018-08-06 22:19:17', NULL),
(1580, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:19:20', '2018-08-06 22:19:20', NULL),
(1581, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:19:23', '2018-08-06 22:19:23', NULL),
(1582, 5, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:19:58', '2018-08-06 22:19:58', NULL),
(1583, 5, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:19:59', '2018-08-06 22:19:59', NULL),
(1584, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:20:37', '2018-08-06 22:20:37', NULL),
(1585, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:20:58', '2018-08-06 22:20:58', NULL),
(1586, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:23:39', '2018-08-06 22:23:39', NULL),
(1587, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:24:24', '2018-08-06 22:24:24', NULL),
(1588, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:25:31', '2018-08-06 22:25:31', NULL),
(1589, 5, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:26:09', '2018-08-06 22:26:09', NULL),
(1590, 5, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:26:15', '2018-08-06 22:26:15', NULL),
(1591, 5, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:26:17', '2018-08-06 22:26:17', NULL),
(1592, 5, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:26:18', '2018-08-06 22:26:18', NULL),
(1593, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:26:21', '2018-08-06 22:26:21', NULL),
(1594, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:26:22', '2018-08-06 22:26:22', NULL),
(1595, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:26:22', '2018-08-06 22:26:22', NULL),
(1596, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:26:22', '2018-08-06 22:26:22', NULL),
(1597, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:26:23', '2018-08-06 22:26:23', NULL),
(1598, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:26:23', '2018-08-06 22:26:23', NULL),
(1599, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:26:50', '2018-08-06 22:26:50', NULL),
(1600, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:27:24', '2018-08-06 22:27:24', NULL),
(1601, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:27:53', '2018-08-06 22:27:53', NULL),
(1602, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:29:32', '2018-08-06 22:29:32', NULL),
(1603, 5, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:29:45', '2018-08-06 22:29:45', NULL),
(1604, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:30:40', '2018-08-06 22:30:40', NULL),
(1605, 5, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:30:43', '2018-08-06 22:30:43', NULL),
(1606, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:31:02', '2018-08-06 22:31:02', NULL),
(1607, 5, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:31:04', '2018-08-06 22:31:04', NULL),
(1608, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:31:24', '2018-08-06 22:31:24', NULL),
(1609, 5, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:31:27', '2018-08-06 22:31:27', NULL),
(1610, 5, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:32:34', '2018-08-06 22:32:34', NULL),
(1611, 5, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:32:36', '2018-08-06 22:32:36', NULL),
(1612, 5, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:32:42', '2018-08-06 22:32:42', NULL),
(1613, 5, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:32:42', '2018-08-06 22:32:42', NULL),
(1614, 5, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:32:44', '2018-08-06 22:32:44', NULL),
(1615, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:32:51', '2018-08-06 22:32:51', NULL),
(1616, 5, 3, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:32:59', '2018-08-06 22:32:59', NULL),
(1617, 5, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:33:14', '2018-08-06 22:33:14', NULL),
(1618, 5, 20, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:33:15', '2018-08-06 22:33:15', NULL),
(1619, 5, 2, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2018-08-06 22:33:28', '2018-08-06 22:33:28', NULL),
(1620, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:33:50', '2018-08-06 22:33:50', NULL),
(1621, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:42:15', '2018-08-06 22:42:15', NULL),
(1622, 5, 85, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 22:42:47', '2018-08-06 22:42:47', NULL),
(1623, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 23:12:02', '2018-08-06 23:12:02', NULL),
(1624, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 23:12:02', '2018-08-06 23:12:02', NULL),
(1625, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 23:12:06', '2018-08-06 23:12:06', NULL),
(1626, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 23:13:43', '2018-08-06 23:13:43', NULL),
(1627, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 23:13:54', '2018-08-06 23:13:54', NULL),
(1628, 5, 82, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 23:14:18', '2018-08-06 23:14:18', NULL),
(1629, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 23:15:37', '2018-08-06 23:15:37', NULL),
(1630, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 23:15:40', '2018-08-06 23:15:40', NULL),
(1631, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 23:15:57', '2018-08-06 23:15:57', NULL),
(1632, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 23:16:40', '2018-08-06 23:16:40', NULL),
(1633, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 23:19:38', '2018-08-06 23:19:38', NULL),
(1634, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 23:19:41', '2018-08-06 23:19:41', NULL),
(1635, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 23:27:33', '2018-08-06 23:27:33', NULL),
(1636, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 23:27:36', '2018-08-06 23:27:36', NULL),
(1637, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 23:28:08', '2018-08-06 23:28:08', NULL),
(1638, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 23:28:10', '2018-08-06 23:28:10', NULL),
(1639, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 23:31:00', '2018-08-06 23:31:00', NULL),
(1640, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 23:31:03', '2018-08-06 23:31:03', NULL),
(1641, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 23:32:11', '2018-08-06 23:32:11', NULL),
(1642, 5, 7, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2018-08-06 23:32:13', '2018-08-06 23:32:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tracker_paths`
--

CREATE TABLE `tracker_paths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracker_paths`
--

INSERT INTO `tracker_paths` (`id`, `path`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', '2018-08-03 21:12:23', '2018-08-03 21:12:23'),
(2, 'manage-users', '2018-08-03 21:12:25', '2018-08-03 21:12:25'),
(3, 'manage-post', '2018-08-03 21:12:26', '2018-08-03 21:12:26'),
(4, 'logout', '2018-08-03 21:13:24', '2018-08-03 21:13:24'),
(5, 'login', '2018-08-03 21:13:24', '2018-08-03 21:13:24'),
(6, '/', '2018-08-03 21:18:44', '2018-08-03 21:18:44'),
(7, 'home', '2018-08-03 22:01:56', '2018-08-03 22:01:56'),
(8, 'addpost', '2018-08-03 22:09:43', '2018-08-03 22:09:43'),
(9, 'post-page/10', '2018-08-03 22:53:10', '2018-08-03 22:53:10'),
(10, 'post-page/9', '2018-08-03 23:11:48', '2018-08-03 23:11:48'),
(11, 'post-page/8', '2018-08-03 23:17:52', '2018-08-03 23:17:52'),
(12, 'about-page', '2018-08-03 23:32:15', '2018-08-03 23:32:15'),
(13, 'post-page/eyJpdiI6ImRJUkpEeHdzdUlqb3lOaXJDQzNPOFE9PSIsInZhbHVlIjoiN2twbzZ2N3hETmdGXC9PcFB3MjRcL29RPT0iLCJtYWMiOiI5MTA4YjA3ZmE4NzU3MjFkYzU1YTIxZjI5NzNkNmNjMTViMzQxY2ZmMmIxYWI0ZTRkN2VhNzZkY2M2Y', '2018-08-05 16:16:57', '2018-08-05 16:16:57'),
(14, 'post-page/eyJpdiI6ImpwMUJRMklialJzYzhpck1OdzdzRWc9PSIsInZhbHVlIjoiemdMMGpkRFJMVWJYbUVHSHJtTW1tZz09IiwibWFjIjoiMzI4ZDBjYmVlNmY4NmVlM2FmY2VlNjVlYzI0NDgxYWJjZTBmYzM1OTcyYWY4ODFiMTk3MmU4YzZhNjFjO', '2018-08-05 16:17:15', '2018-08-05 16:17:15'),
(15, 'post-page/eyJpdiI6IjZrQkd4NmpaZDN3cHB6YmVsM3ppYmc9PSIsInZhbHVlIjoiXC9lUzYraDdndHJGOFFhdWFCbENpRlE9PSIsIm1hYyI6IjNjNTMxYWM2NWQ3ZTg3NmQzN2FjODIyMzkwYmQyMmRjOTQ3YTMzODM1MWNiYzNhNjIzNDIwNGRmNTQxZ', '2018-08-05 16:18:06', '2018-08-05 16:18:06'),
(16, 'post-page/eyJpdiI6IjY5NlNBSkJOZkZOVUNOcVhGUDhQQ3c9PSIsInZhbHVlIjoiT2ZXQ3lUWjNtZmVpZlZBZFwvRld3Q0E9PSIsIm1hYyI6IjkwZjEzNTQ2OTQyMWFkMzQzYjEzNTlkM2ZkODBkNjQ5MjhmZjBkYjZiZjFkMzRjNDE0Zjk0YzZiNGJmO', '2018-08-05 16:24:23', '2018-08-05 16:24:23'),
(17, 'post-page/eyJpdiI6IjY5NlNBSkJOZkZOVUNOcVhGUDhQQ3c9PSIsInZhbHVlIjoiT2ZXQ3lUWjNtZmVpZlZBZFwvRld3Q0E9PSIsIm1hYyI6IjkwZjEzNTQ2OTQyMWFkMzQzYjEzNTlkM2ZkODBkNjQ5MjhmZjBkYjZiZjFkMzRjNDE0Zjk0YzZiNGJmO', '2018-08-05 16:36:48', '2018-08-05 16:36:48'),
(18, 'aboutus', '2018-08-05 16:37:58', '2018-08-05 16:37:58'),
(19, 'post/eyJpdiI6IjlLbCtOYnk5MU0rTEM2YmM3Mk90ekE9PSIsInZhbHVlIjoic1pESW15XC9ubGptbk95Nlp6ZGorTXc9PSIsIm1hYyI6IjViNmY3MjNjODk3YjgxOGViZGVjMjAzODZiZThmYTFjMjAxMDZmMDdiYWY0NDRiNzFmY2IzNzFiYzIyYzhiMj', '2018-08-05 18:27:02', '2018-08-05 18:27:02'),
(20, 'manage-category', '2018-08-05 19:42:31', '2018-08-05 19:42:31'),
(21, 'addcategory', '2018-08-05 21:10:16', '2018-08-05 21:10:16'),
(22, 'deletepost', '2018-08-05 21:29:41', '2018-08-05 21:29:41'),
(23, 'saveuseredit', '2018-08-05 21:31:33', '2018-08-05 21:31:33'),
(24, 'adduser', '2018-08-05 21:32:00', '2018-08-05 21:32:00'),
(25, 'editcategory', '2018-08-05 22:01:07', '2018-08-05 22:01:07'),
(26, 'deletecategory', '2018-08-05 22:31:34', '2018-08-05 22:31:34'),
(27, 'editpost', '2018-08-05 23:24:15', '2018-08-05 23:24:15'),
(28, 'categories/Artificial%20Grass/1', '2018-08-06 00:31:12', '2018-08-06 00:31:12'),
(29, 'category/1', '2018-08-06 16:45:25', '2018-08-06 16:45:25'),
(30, 'category/3', '2018-08-06 16:45:29', '2018-08-06 16:45:29'),
(31, 'category/Artificial%20Grass/1', '2018-08-06 16:52:51', '2018-08-06 16:52:51'),
(32, 'category/Window%20Blinds/3', '2018-08-06 16:52:56', '2018-08-06 16:52:56'),
(33, 'category/Artificial%20Grass/eyJpdiI6IlZUK2tvdzBRXC9KWU9KOFRmd09FV293PT0iLCJ2YWx1ZSI6IlwvRGtMZEp6bDcxM3hSVlFGSWF3UktnPT0iLCJtYWMiOiJlNGM4ZjQzZDUwYTk1MzYzNzI0N2FlNWQ4MTYwNDk5ODJiMDhlOTNlN2ZjZmM', '2018-08-06 16:59:31', '2018-08-06 16:59:31'),
(34, 'category/Window%20Blinds/eyJpdiI6ImFWcnUwY2dSbGludlNFQmlUdUZmVlE9PSIsInZhbHVlIjoicmpEK3ZjRTBPc3ZucDNYOVozZE92Zz09IiwibWFjIjoiYTg4ZTk5Nzk4NGQyNjM2ZmNiZWVlNDY3OTQzZTUyNDExYmM0NTNlNWNlOTY5NTRjND', '2018-08-06 17:00:52', '2018-08-06 17:00:52'),
(35, 'category/Artificial%20Grass/eyJpdiI6IlhpZVMwRFcxSFBcL0xZWHd2QUVXKzd3PT0iLCJ2YWx1ZSI6ImZaQ1N2OTFYT291eVA0Z0ZCWmhURmc9PSIsIm1hYyI6ImI3N2NiM2E5NjZkZTc0Y2ZmNDRhZmUzMzgyYzdkOTFkM2I3YjZiZGRjZGY2YWQ', '2018-08-06 17:00:56', '2018-08-06 17:00:56'),
(36, 'post/eyJpdiI6IlFJUHVQTkFtY0NFMlR0OUhJRXNhOWc9PSIsInZhbHVlIjoiY0dlZ1FuTlpLb1BPV3R4a29ISGs2QT09IiwibWFjIjoiZTI4YzcwZTYyOTUxNGNmOWQxYjdlMzFmZDA2MWNiZTI1YWQ3MWYwMWYzNDRmYWU0ZjEyMjZjZTZiYWI4YjM2YS', '2018-08-06 17:05:20', '2018-08-06 17:05:20'),
(37, 'category/Window%20Blinds/eyJpdiI6IlwvMnU2dkJ5cGJCQkpGWWR3d204N29nPT0iLCJ2YWx1ZSI6InFyb05FS2VIcDBkZEYyZHNSK1VWN3c9PSIsIm1hYyI6IjIzMzU5YTJkODEzYjU1NTdkNGI4NmFhODA5Zjg5YzRjODA5MjBjYTg4MjJmNTkwOT', '2018-08-06 17:05:51', '2018-08-06 17:05:51'),
(38, 'post/eyJpdiI6Im14YmdkMUpxazlMY21YMzVTZThVbUE9PSIsInZhbHVlIjoiMWloU0p3SzlwVEwyQ3RrT3NyUEZ2QT09IiwibWFjIjoiYWYzYTY0YTZlNTZlNzZjZTM3YjYwNmQ2NGNlNTJmYjBhMmU0NzFlZThhNDg0MGFhYzNkZWI4ZWRkYzkxYjcxZC', '2018-08-06 17:05:54', '2018-08-06 17:05:54'),
(39, 'post/eyJpdiI6Im42RE1EcGpxQWl3ZnV3c1BcLzZwN2xRPT0iLCJ2YWx1ZSI6IkhOaGxXYUt5QURTSU50OXQ2MmkzTVE9PSIsIm1hYyI6ImNiODVkOTcyZDdlMGI5YzE0MGNkYTI5ODkzYjQ2YzY3Y2E5YjcyZGJmY2M3ZjVlYzZkNzMzNDQ4ZjQxMjJiYW', '2018-08-06 17:06:28', '2018-08-06 17:06:28'),
(40, 'post/eyJpdiI6IjJXNHFDMndIYWJVMGRISk9yTStaRnc9PSIsInZhbHVlIjoiWlZkeDRmSjFLUVFmNHl3MVpndjBUdz09IiwibWFjIjoiMTc1MTViYTQxYzI5MzhiOGY2MGQ3YzhjYjlmMDAyMjA3NjRjZDBkN2Q5YzBkYzAyZTY0ZjZiOGM2OTM0Y2Q1My', '2018-08-06 17:07:46', '2018-08-06 17:07:46'),
(41, 'post/eyJpdiI6IlwvVDdZaVwvb3BsczNzcEs3TnBHR0Z3Zz09IiwidmFsdWUiOiIrUVh1MmNxM01EbUw0b2RVNFJCa1h3PT0iLCJtYWMiOiI1M2U1ZDBiMGIzMDFkMzU4NDM0ZmViNThiYzU3MzVkNTc2MTljODA5ZjE3MTJiOThlMjY4N2QxMGMyODcyNG', '2018-08-06 17:08:05', '2018-08-06 17:08:05'),
(42, 'category/Artificial%20Grass/eyJpdiI6InB3dVpmR1MyYUZ6cTIrU1FiMitvNXc9PSIsInZhbHVlIjoiQ1VwSjhVUGxOaGhJNlJqNE4yclhaQT09IiwibWFjIjoiMGViNDg0ZWU4MzkwODgzNTQ5Yzc2NDUwYTQ0MzI2ZmE5ZDQ5ZWY0ZWIyNjAwNWN', '2018-08-06 17:31:08', '2018-08-06 17:31:08'),
(43, 'category/Artificial%20Grass/eyJpdiI6Imk1T09HQXMrQjVYSXIzVjVHTXNrZGc9PSIsInZhbHVlIjoiWHh5NFwvanJPRERUWTBhR0VWeExhVmc9PSIsIm1hYyI6IjJlN2NkZmI0ZDg2YTRlNGVhMzA2MGZiNjVhNTYwY2VjOTdmZDFhYmRmNzVhMWE', '2018-08-06 17:38:02', '2018-08-06 17:38:02'),
(44, 'category/Artificial%20Grass/eyJpdiI6IjJxaWtGcnE1eGk1R0NRaGpwWFYwa1E9PSIsInZhbHVlIjoiZnpyRDZcLzRGWjlPazVLdktSZFplMVE9PSIsIm1hYyI6IjIxOWJlZWZhNjgyYTA0OGUwYzgzODI2YmQwOTdmODYyZWRmYmM2MGViMTFkZDY', '2018-08-06 17:39:02', '2018-08-06 17:39:02'),
(45, 'category/Artificial%20Grass/eyJpdiI6ImZsUmp5YjRnNWl5eHQ3V05lbFh0WlE9PSIsInZhbHVlIjoiMExHRHpxXC9MZCs5OUh1UFdaY25Ka2c9PSIsIm1hYyI6ImVkNTlkNWNiODAwZTVhNzU5NTM5ZDQ0OTBlNWU5OTA1MDFiNTcyYWRkOGQzZTJ', '2018-08-06 17:39:34', '2018-08-06 17:39:34'),
(46, 'category/Window%20Blinds/eyJpdiI6IkFqNFwvMTZKVWlLbHUyMTdlRlB4cURRPT0iLCJ2YWx1ZSI6ImtMNHNTa0VhWlpCVnBKV1QyVFljcUE9PSIsIm1hYyI6IjAyMmM1ZDBjYmY3OTQ4ZTgxZjA5NDc5ODk1ZDE1NWE2Zjg2Njg3MTcwZGQwZjRjMW', '2018-08-06 17:39:42', '2018-08-06 17:39:42'),
(47, 'category/Artificial%20Grass/eyJpdiI6IlN1VmNNSHFxc1VBb1RhUjhwTEk5d2c9PSIsInZhbHVlIjoidTRMckwxYlJlVHpGRkJhUVY2NFpodz09IiwibWFjIjoiMDJmYzBmM2RkNGM5N2Y2YTJkM2Y5Yjk0MGNlOTRmNGIxM2UwMzA4NWM4NzQ5ZWY', '2018-08-06 17:39:54', '2018-08-06 17:39:54'),
(48, 'category/Window%20Blinds/eyJpdiI6Ikp4UDIrZXQyUEZRanNwMEdWVzAxVFE9PSIsInZhbHVlIjoiZWNRb3N5UmhcLzJjYjFPTGRRcjg5blE9PSIsIm1hYyI6IjQ5YzBlM2JiOWM4ODU1YzdkYTllM2IwZmMwNDk2YTE0NjQ1ZjRmY2Y4OWE1Zjg3MW', '2018-08-06 17:39:59', '2018-08-06 17:39:59'),
(49, 'category/Artificial%20Grass/eyJpdiI6IlMyUHJBQmg0YTBzVzI5S0hHNTZsVWc9PSIsInZhbHVlIjoicWlxMjVUYVoreGx1TVl0c1haTE1Pdz09IiwibWFjIjoiMjY5NWZkYjA0YWE0MGRiZjM3MjczZWNkYTI3NDk0ZmU4ZjZiNjQxNjBiMGVkMjU', '2018-08-06 17:41:31', '2018-08-06 17:41:31'),
(50, 'post/eyJpdiI6InNDUENzWktSQzdsZHYwTU1BM1VvNnc9PSIsInZhbHVlIjoiQVhHSXVXQlU1eTYxWE5ncWxYNEpyQT09IiwibWFjIjoiNGJhNjMwMmYzZmQwYzZiODc3ZTgxNjU3NDc2Yjk3NTRhMTUzZTYzZDY4NjIzNWMwYTU2ZWUyYTczMDAxZDE3YS', '2018-08-06 17:41:36', '2018-08-06 17:41:36'),
(51, 'category/Artificial%20Grass/eyJpdiI6ImpaN1hXZFJwOE43ako2UGloRjQ4cHc9PSIsInZhbHVlIjoiQWNcLzdWV1d0VTdQTW1VT3VueUFBckE9PSIsIm1hYyI6ImFlZTVlY2E2MTRjZDk5ODFlYjRhNjg1YWU1N2YyN2E3MjQyYjA0OWFkNDYyNDk', '2018-08-06 17:41:42', '2018-08-06 17:41:42'),
(52, 'category/Window%20Blinds/eyJpdiI6Im9KV0NPekNxMUE3TWt6TmpPQTVIQXc9PSIsInZhbHVlIjoidkQ2Vlp3M0VlKzdcL21nZ0ZZUytNbFE9PSIsIm1hYyI6ImIyOTQ5MjBhODk2MWQ3YmQ4NzQ5NGZiZDJjMjllYzc0ZGMzZDc2ZmEzNTFjMzQxMD', '2018-08-06 17:41:45', '2018-08-06 17:41:45'),
(53, 'post/eyJpdiI6InJ1YWUrZXpocXBPdmxGa0MyWUZjdXc9PSIsInZhbHVlIjoiTnFadmhqSnR4QkdXdG9RQVFIS1JjZz09IiwibWFjIjoiZDk0NTRhYmQzZDc1ZDA3MmQ2YWZmZTFiN2Q2MWY3NjEzMDY5MWJjODBjOTgyODdiZjQxYzU2YzUzYmRkMTNkNy', '2018-08-06 17:41:47', '2018-08-06 17:41:47'),
(54, 'post/eyJpdiI6InZPbGVMakI3akhlck9nY3RZVGgzc3c9PSIsInZhbHVlIjoiUmlwWUZQNGduRkhPaXVCbEFSZ2pLQT09IiwibWFjIjoiOWI3YTVmMThiNzA4ZGQxMWM4Mjc4NmMzYjVkYmYyMDVlZjc1NTE1YTViMDJkZjUwMWI5NTA1MGJiNjNkYjBhYS', '2018-08-06 17:46:44', '2018-08-06 17:46:44'),
(55, 'post/eyJpdiI6Im9cL2hTMThZelNRajNMVHJYUnpzQjZnPT0iLCJ2YWx1ZSI6IjNPTTlOSm00N2xRRUwrMXNrK0EyQVE9PSIsIm1hYyI6IjEyZjI1ODM1MTExYWE5Y2UwYTNjNTQ3N2JkM2YyYjhmZTlhOWZkNThmNjBiYjlhZmEwYmQ0ZTA5OWM2NjNjND', '2018-08-06 17:49:01', '2018-08-06 17:49:01'),
(56, 'category/Artificial%20Grass/eyJpdiI6ImtrY1lSNkVGdENpd1RaVXdJNXF5ZEE9PSIsInZhbHVlIjoidzBGd2d2dTl6YnYrNXRPOTE5dkYxdz09IiwibWFjIjoiZjA4MDNmY2FmNzFjMjkwNTA3ZmE0NjU1MWRhYTFiMTM5ZjE0NTYzODM5ZWI4Njh', '2018-08-06 17:49:47', '2018-08-06 17:49:47'),
(57, 'post/eyJpdiI6InFhcUZhXC9IeGcxQTFvdXYzTGpjbzl3PT0iLCJ2YWx1ZSI6IndUUG9ncFVyaEN0d0R1c1E1NHNJRFE9PSIsIm1hYyI6ImZhZWVjMjRjNWU2NjIzYmQ1M2EzN2NhOTZlMWM3NTExMzI3Yjc5ODYzMTFlMmM1MjhkYTAyNTE2OTlkYmNmMz', '2018-08-06 17:50:19', '2018-08-06 17:50:19'),
(58, 'category/Artificial%20Grass/eyJpdiI6IkJkclY0ZldNTzhkdVhENERFM3U3dVE9PSIsInZhbHVlIjoiUzhKMW9JdHpqQVhsNTcyRjljelkxQT09IiwibWFjIjoiNjdhYjM3ODJjZmY4Yjg0ZjViZTJlOGZiOGMzMmEwMDEzNjE2YjhiOWU4OTE2Zjd', '2018-08-06 17:53:18', '2018-08-06 17:53:18'),
(59, 'category/Artificial%20Grass/eyJpdiI6IkdZUnZZWENoYXNIdU9nbk1cL044SEdBPT0iLCJ2YWx1ZSI6Im1vYkx5NWdNNEE0VWtDbnJTYWs1bHc9PSIsIm1hYyI6ImE0NTM2YTI5YWNmMzA1ODdmNDE4NGNlMjk0YTk2OGM2ZTIzZDExZTRmYjJmODI', '2018-08-06 17:53:46', '2018-08-06 17:53:46'),
(60, 'category/Window%20Blinds/eyJpdiI6InJoU2lYSDJBeGVqaGo4U0tXTUJQMFE9PSIsInZhbHVlIjoiSHl1QlQ0U1UrZDlhRUtaYzBJREJVQT09IiwibWFjIjoiNjMwZDY2YTJiNjE4MDFmYmExMGRkZWMzNjZmZTAyYTE4ZTkyZDRmZWI3NWZkMWE1Yj', '2018-08-06 17:54:35', '2018-08-06 17:54:35'),
(61, 'category/Window%20Blinds/eyJpdiI6IjA4a2J0M3c1TFA4aUJtVEJkNjMzakE9PSIsInZhbHVlIjoiU25TaWJ3aUd2M1BTTHVcLytrM29tTUE9PSIsIm1hYyI6ImEyNjRlMWRiMTVjZWNhMjJmNzQyNmMzMDkyNzJkZGI3N2Y2ZWQyMGIzMWQyOGM1Mm', '2018-08-06 17:55:44', '2018-08-06 17:55:44'),
(62, 'category/Artificial%20Grass/eyJpdiI6ImNMdkN1T25KYXkrQzhuNFlEM1Y1VVE9PSIsInZhbHVlIjoiMHpvWVZIXC9JWnZQOWREeitLUEErZlE9PSIsIm1hYyI6ImRmN2RlZDNkYjE4NTRhYmM1ZmJiMGYyMTk4MmMwYWNlYTFiOTU0M2IwZjljNmU', '2018-08-06 17:55:46', '2018-08-06 17:55:46'),
(63, 'post/eyJpdiI6InZtcWtwc3Y2TE5GQXEzcFhrV1E1NFE9PSIsInZhbHVlIjoiK2NIR2JyRUUwd2FKYUx1RndxV0Zxdz09IiwibWFjIjoiNmQwZGRjZTA4MWFjNjczM2RlOTI4NmE1OTA5MTY3NmFlZDVlZTVjYjQ5ZGZjMDZmNDMzNGYyMzgyZjE4N2NkYS', '2018-08-06 17:56:35', '2018-08-06 17:56:35'),
(64, 'category/Artificial%20Grass/eyJpdiI6IkgzNHpNK2hQbXYzb2JScFwvVm9laHdRPT0iLCJ2YWx1ZSI6InNoMDBPXC8rRXZKc1BmMkVvRjVcL0VBdz09IiwibWFjIjoiOTYxZGNjYmE4NWNmNmZjMjc1MmI2YTg4Njk3ZTc1ZTg2MzA2NDNhNjZlNGI', '2018-08-06 18:00:13', '2018-08-06 18:00:13'),
(65, 'category/Window%20Blinds/eyJpdiI6IjNkbHY1elZGU05ZK21rdlJnM00yXC9nPT0iLCJ2YWx1ZSI6ImxJeGZYYnJUVDBBXC92VDlSUnlaMGN3PT0iLCJtYWMiOiI0ZWQ2YWI4MDA0MDdmNjg2MTA2MzA0YmMwYzM4MWU2ZmE1ZDIyM2EyNDhlYzFjNT', '2018-08-06 18:00:16', '2018-08-06 18:00:16'),
(66, 'post/eyJpdiI6IjI4aDdqbmZQMTZ1XC9sSkhQQjdpVVpnPT0iLCJ2YWx1ZSI6ImMwb0JQV1JoQXFvQllLSUVQOUJ6VUE9PSIsIm1hYyI6Ijc5ODJkMDRjYmJjZTdmZWUyMTMxMmZlZTIxNGM4OTcyNmViY2NkYWYxN2Q3NmY3YzBkM2IzOGVkMzYwZGI1OD', '2018-08-06 18:01:00', '2018-08-06 18:01:00'),
(67, 'post/eyJpdiI6Ilg0eG81eVFEQVRWRkdWMGpcL01XVnVRPT0iLCJ2YWx1ZSI6Illqck1rNjV6ZjFBRXV5Q3l5MU82TEE9PSIsIm1hYyI6IjNmMGYwY2VhZTNlOTVhN2U1MmQxZmJmZjZkOTkxOWQ4YWQzNDYwMDYwNmUwOTlkNzYwMTllYTBkMzU2MWY1OG', '2018-08-06 18:12:56', '2018-08-06 18:12:56'),
(68, 'post/eyJpdiI6IjNYeDhZdTI2TXZQdTJTVmFpckdtekE9PSIsInZhbHVlIjoiNUh4UVMzTkNibDd1VEtKZmtjRWIyUT09IiwibWFjIjoiMDUxY2IwN2ViYmNiMTA4OWEzN2U2NmJiNTllNzQ2ZTI0MjUyN2Y4ZDJjMjNkNzA1YjI0ZGM2ZTFmMDI4Y2I1OS', '2018-08-06 18:13:05', '2018-08-06 18:13:05'),
(69, 'category/Artificial%20Grass/eyJpdiI6ImRnY0JpZUs2eFI5S1doalV4a2xQWXc9PSIsInZhbHVlIjoiUUxGNzhBcmZLN2pOVFFNMzIyOFNxdz09IiwibWFjIjoiZjE0NmVhZjdjZWVkNmVlMTE3OTdlMjE5NTBiMWIzM2U5NzA4MzBkMWFkZDk5MGM', '2018-08-06 18:24:03', '2018-08-06 18:24:03'),
(70, 'post/eyJpdiI6InluNXA1NmNXZTNHWmU2WUJhNDM3dnc9PSIsInZhbHVlIjoiXC8reDdBOHlId01lQ1hvcHA1MVZENnc9PSIsIm1hYyI6ImI3MmNhZWI0NjYzMzYxZTU5MTcyZjVkNjVmMWJmNjE5NDMyMWU5NWRmYmM2NjY3NzY0Y2FkY2QwNmI0NzYyN2', '2018-08-06 18:24:23', '2018-08-06 18:24:23'),
(71, 'category/Window%20Blinds/eyJpdiI6IjhBcnpSdlJWZG9YeHB0Y1pQeiswbWc9PSIsInZhbHVlIjoiXC9jeDhVb05PSGQxNFNmbHlUeHpCbWc9PSIsIm1hYyI6ImY2NGUzNTM1YWUxN2U1N2M2OTNlN2M0ZTdlOGNmNmQyMWI2MzY5MTZkNjdiNzEyNj', '2018-08-06 18:27:36', '2018-08-06 18:27:36'),
(72, 'category/Artificial%20Grass/eyJpdiI6InlrR0dBY1diNm5kTUhucSswaWN2NWc9PSIsInZhbHVlIjoiMXdFenZsajQwbWtUUFZObXR6ZHpidz09IiwibWFjIjoiMzkwMjc1YzM5NTcyYTFhZGYyYmMzNDIyYzlmZDllMzQ5ZTQ3YzRhMDM4ODBiM2Z', '2018-08-06 18:27:39', '2018-08-06 18:27:39'),
(73, 'post/eyJpdiI6IkFwMHVaSFB2OWVyRURMMmpYYTNFc2c9PSIsInZhbHVlIjoibTJKSERSTm1vZWNUcTZtMTV0MHhCZz09IiwibWFjIjoiM2Q1OWM4YzEyYzU4ZDU1MTliMWQwMjQyNDE5ZjA4MTlmNDU5ODU0NzUwZjQ2MWI0MmMxMWNhNzIwMGFjOTgxMy', '2018-08-06 18:34:40', '2018-08-06 18:34:40'),
(74, 'category/Artificial%20Grass/eyJpdiI6InJ1SlwvT0FLc3J0VTVWeDZXSHFKR0t3PT0iLCJ2YWx1ZSI6Ik0zeVZNZHVrZjFsbjBRMFpiYzdkUnc9PSIsIm1hYyI6IjYzYmI4Yzk3YmE3OWMzNDcyZjM3OWMzZTEwZDViMzhkMDkyM2FlM2Y5ODdmNWU', '2018-08-06 18:34:44', '2018-08-06 18:34:44'),
(75, 'post/eyJpdiI6IlJDK2dCbVYwOGhUSUUxaTZ4RmFRSVE9PSIsInZhbHVlIjoibE1CTnJqMHBrTkd6d1hFTm56czJ0QT09IiwibWFjIjoiYjM0MGIwZWFkOWE0NGIxYTNjOGZiYmIxNjUxMTNkODRhMDExZjIwOGUxMzBkMzQzMzhmNjQ3OWRlOTU5NGI3Yi', '2018-08-06 18:43:53', '2018-08-06 18:43:53'),
(76, 'post/eyJpdiI6ImtXRmdKNWFpbVpUUFwvMmFMM0JobmlBPT0iLCJ2YWx1ZSI6Imsrak4zWVwvQWVtckZ6WlJOS3lDblwvZz09IiwibWFjIjoiZDYzMGY1ODVkNTVjYmEwOTJhYTczNWYyZWJhOWY3YjllZDM3ZWZiZjFjNzA4M2EzMjlhMmZiNWQyOWI5M2', '2018-08-06 18:52:01', '2018-08-06 18:52:01'),
(77, 'post/eyJpdiI6ImtXRmdKNWFpbVpUUFwvMmFMM0JobmlBPT0iLCJ2YWx1ZSI6Imsrak4zWVwvQWVtckZ6WlJOS3lDblwvZz09IiwibWFjIjoiZDYzMGY1ODVkNTVjYmEwOTJhYTczNWYyZWJhOWY3YjllZDM3ZWZiZjFjNzA4M2EzMjlhMmZiNWQyOWI5M2', '2018-08-06 19:04:09', '2018-08-06 19:04:09'),
(78, 'category/Artificial%20Grass/eyJpdiI6ImFlWnVvQUppYmdwbFpXa3J1VEJ5Ync9PSIsInZhbHVlIjoiZDdnXC9DbmxwRkRpRW5IWVwvWkQ5UXRBPT0iLCJtYWMiOiIzNjkzZmUxYTA4NDdhNzQ4ODAzMGNhNGMxYjM0Mjc2MWNjZjIxNmI1YzY1ZDE', '2018-08-06 19:06:42', '2018-08-06 19:06:42'),
(79, 'register', '2018-08-06 19:10:58', '2018-08-06 19:10:58'),
(80, 'windoway-secret-login', '2018-08-06 19:14:56', '2018-08-06 19:14:56'),
(81, 'logins', '2018-08-06 19:18:39', '2018-08-06 19:18:39'),
(82, 'pagenotfound', '2018-08-06 19:20:57', '2018-08-06 19:20:57'),
(83, 'admin/login', '2018-08-06 19:25:04', '2018-08-06 19:25:04'),
(84, 'secretadmin/login', '2018-08-06 19:26:15', '2018-08-06 19:26:15'),
(85, 'secretdashboard', '2018-08-06 19:42:51', '2018-08-06 19:42:51'),
(86, 'secretadmin/logout', '2018-08-06 19:44:05', '2018-08-06 19:44:05');

-- --------------------------------------------------------

--
-- Table structure for table `tracker_queries`
--

CREATE TABLE `tracker_queries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `query` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_query_arguments`
--

CREATE TABLE `tracker_query_arguments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `query_id` bigint(20) UNSIGNED NOT NULL,
  `argument` varchar(191) NOT NULL,
  `value` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_referers`
--

CREATE TABLE `tracker_referers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `domain_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(191) NOT NULL,
  `host` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `medium` varchar(191) DEFAULT NULL,
  `source` varchar(191) DEFAULT NULL,
  `search_terms_hash` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_referers_search_terms`
--

CREATE TABLE `tracker_referers_search_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `referer_id` bigint(20) UNSIGNED NOT NULL,
  `search_term` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_routes`
--

CREATE TABLE `tracker_routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `action` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_route_paths`
--

CREATE TABLE `tracker_route_paths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `route_id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_route_path_parameters`
--

CREATE TABLE `tracker_route_path_parameters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `route_path_id` bigint(20) UNSIGNED NOT NULL,
  `parameter` varchar(191) NOT NULL,
  `value` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_sessions`
--

CREATE TABLE `tracker_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `device_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_ip` varchar(191) NOT NULL,
  `referer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cookie_id` bigint(20) UNSIGNED DEFAULT NULL,
  `geoip_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_robot` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracker_sessions`
--

INSERT INTO `tracker_sessions` (`id`, `uuid`, `user_id`, `device_id`, `agent_id`, `client_ip`, `referer_id`, `cookie_id`, `geoip_id`, `is_robot`, `created_at`, `updated_at`, `language_id`) VALUES
(1, '827b8af1-5f0f-4e90-ac28-9169a096db19', 2, 3, 3, '127.0.0.1', NULL, NULL, NULL, 0, '2018-08-03 21:12:22', '2018-08-04 01:08:34', NULL),
(2, '53f638ed-b6f9-490b-80ad-6a2fb978055f', 1, 1, 1, '127.0.0.1', NULL, NULL, NULL, 0, '2018-08-03 21:24:35', '2018-08-03 21:34:37', NULL),
(3, '302c5d46-867d-4e13-8940-43a9109454fe', NULL, 2, 2, '127.0.0.1', NULL, NULL, NULL, 0, '2018-08-05 16:02:42', '2018-08-05 17:54:16', NULL),
(4, '8d1bb5af-3281-4fec-8e8d-bb0086f4e743', 1, 2, 2, '127.0.0.1', NULL, NULL, NULL, 0, '2018-08-05 18:26:09', '2018-08-06 00:31:12', NULL),
(5, 'c609c2e0-c4b9-4060-ae40-c72c94f1c515', NULL, 3, 3, '127.0.0.1', NULL, NULL, NULL, 0, '2018-08-06 16:35:59', '2018-08-06 23:32:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tracker_sql_queries`
--

CREATE TABLE `tracker_sql_queries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sha1` varchar(40) NOT NULL,
  `statement` text NOT NULL,
  `time` double NOT NULL,
  `connection_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_sql_queries_log`
--

CREATE TABLE `tracker_sql_queries_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `sql_query_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_sql_query_bindings`
--

CREATE TABLE `tracker_sql_query_bindings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sha1` varchar(40) NOT NULL,
  `serialized` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_sql_query_bindings_parameters`
--

CREATE TABLE `tracker_sql_query_bindings_parameters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sql_query_bindings_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `value` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_system_classes`
--

CREATE TABLE `tracker_system_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_id`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superadmin@email.com', 1, '$2y$10$Z.37cMHRMMXm3KOwOJ3RceZHrEhUC9JzwiSqcHd4s6RUOfPTMLuAW', 'bOnBGUANW8ZX7EyH6X4VipzXw4ras6TFAhSFx3Vtzb5NIhOOh4KTPeNAVTab', '2018-07-30 19:45:51', '2018-07-30 19:45:51'),
(2, 'admin', 'myadmin@email.com', 2, '$2y$10$4NuNaedlcmFRYFCqBFCVd.LIh2oRGHiqycGnwfj5B0RH8.Ney1egC', 'kKAJkKf6grF3ncUm2Dsqm4Ta5SegktFudTjcpIzSw0zQHzStz0PWc0r7igcn', '2018-07-31 18:08:52', '2018-08-01 23:15:23'),
(3, 'user', 'user@email.com', 1, '$2y$10$vC8s2jHyTa5ZQ7W4jd0oWumLtWobI.x6HgAUX1v6/TQCR525u.Rpq', 'Xargg288mdRhY6j6VvpFHnc1XF5t0vRR46TOFIzkclbqMphq9kb89EIiWUkx', '2018-08-01 23:16:32', '2018-08-01 23:16:32'),
(8, 'user6', 'user6@gmail.com', 1, '$2y$10$aLoMiPF.hrOBVyvInyNhRO3YQAA/4bscJhO4yQpryJL7TEeLVANHi', NULL, '2018-08-02 01:04:32', '2018-08-02 01:04:32'),
(9, 'user7', 'user7@gmail.com', 1, '$2y$10$TOdsoOKaFpbAGEOr15k20u.L2cdJqEOJsyHmq9kQDC/.byPz/lYe.', NULL, '2018-08-02 01:05:22', '2018-08-02 01:05:22'),
(10, 'user8', 'user8@gmail.com', 1, '$2y$10$0dgz4HbUylK33FJQV.jH2.5IwL6G0se7.ZuETkjrWpzV7wy6mYCu6', NULL, '2018-08-02 01:22:35', '2018-08-02 01:22:35'),
(11, 'user9', 'user9@email.com', 1, '$2y$10$ti5.ZR9PfORM/9IaySo3HOD5Uzi0M7rlbyVTdKQDj2GQ9PFWL8wWK', NULL, '2018-08-02 01:29:56', '2018-08-02 01:29:56'),
(12, 'user1000', 'user10@email.com', 1, '$2y$10$ihg/dkOqXM9cJW4TBmD7ZOlsjlXQsmJhCcWfo1kzbHMeMp8WqGXIm', NULL, '2018-08-02 01:30:17', '2018-08-05 21:35:48'),
(13, 'user11', 'user11@email.com', 1, '$2y$10$GSr2RzO8I2DvKjUEMHpmAOuo6cKHkyZrl8MTu4UH2urIOo4gKKkY2', NULL, '2018-08-05 21:32:01', '2018-08-05 21:32:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_unique` (`category`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracker_agents`
--
ALTER TABLE `tracker_agents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracker_agents_name_hash_unique` (`name_hash`),
  ADD KEY `tracker_agents_created_at_index` (`created_at`),
  ADD KEY `tracker_agents_updated_at_index` (`updated_at`),
  ADD KEY `tracker_agents_browser_index` (`browser`);

--
-- Indexes for table `tracker_connections`
--
ALTER TABLE `tracker_connections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_connections_created_at_index` (`created_at`),
  ADD KEY `tracker_connections_updated_at_index` (`updated_at`),
  ADD KEY `tracker_connections_name_index` (`name`);

--
-- Indexes for table `tracker_cookies`
--
ALTER TABLE `tracker_cookies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracker_cookies_uuid_unique` (`uuid`),
  ADD KEY `tracker_cookies_created_at_index` (`created_at`),
  ADD KEY `tracker_cookies_updated_at_index` (`updated_at`);

--
-- Indexes for table `tracker_devices`
--
ALTER TABLE `tracker_devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracker_devices_kind_model_platform_platform_version_unique` (`kind`,`model`,`platform`,`platform_version`),
  ADD KEY `tracker_devices_created_at_index` (`created_at`),
  ADD KEY `tracker_devices_updated_at_index` (`updated_at`),
  ADD KEY `tracker_devices_kind_index` (`kind`),
  ADD KEY `tracker_devices_model_index` (`model`),
  ADD KEY `tracker_devices_platform_index` (`platform`),
  ADD KEY `tracker_devices_platform_version_index` (`platform_version`);

--
-- Indexes for table `tracker_domains`
--
ALTER TABLE `tracker_domains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_domains_created_at_index` (`created_at`),
  ADD KEY `tracker_domains_updated_at_index` (`updated_at`),
  ADD KEY `tracker_domains_name_index` (`name`);

--
-- Indexes for table `tracker_errors`
--
ALTER TABLE `tracker_errors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_errors_created_at_index` (`created_at`),
  ADD KEY `tracker_errors_updated_at_index` (`updated_at`),
  ADD KEY `tracker_errors_code_index` (`code`),
  ADD KEY `tracker_errors_message_index` (`message`);

--
-- Indexes for table `tracker_events`
--
ALTER TABLE `tracker_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_events_created_at_index` (`created_at`),
  ADD KEY `tracker_events_updated_at_index` (`updated_at`),
  ADD KEY `tracker_events_name_index` (`name`);

--
-- Indexes for table `tracker_events_log`
--
ALTER TABLE `tracker_events_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_events_log_created_at_index` (`created_at`),
  ADD KEY `tracker_events_log_updated_at_index` (`updated_at`),
  ADD KEY `tracker_events_log_event_id_index` (`event_id`),
  ADD KEY `tracker_events_log_class_id_index` (`class_id`),
  ADD KEY `tracker_events_log_log_id_index` (`log_id`);

--
-- Indexes for table `tracker_geoip`
--
ALTER TABLE `tracker_geoip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_geoip_created_at_index` (`created_at`),
  ADD KEY `tracker_geoip_updated_at_index` (`updated_at`),
  ADD KEY `tracker_geoip_latitude_index` (`latitude`),
  ADD KEY `tracker_geoip_longitude_index` (`longitude`),
  ADD KEY `tracker_geoip_country_code_index` (`country_code`),
  ADD KEY `tracker_geoip_country_code3_index` (`country_code3`),
  ADD KEY `tracker_geoip_country_name_index` (`country_name`),
  ADD KEY `tracker_geoip_city_index` (`city`);

--
-- Indexes for table `tracker_languages`
--
ALTER TABLE `tracker_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracker_languages_preference_language_range_unique` (`preference`,`language-range`),
  ADD KEY `tracker_languages_created_at_index` (`created_at`),
  ADD KEY `tracker_languages_updated_at_index` (`updated_at`),
  ADD KEY `tracker_languages_preference_index` (`preference`),
  ADD KEY `tracker_languages_language_range_index` (`language-range`);

--
-- Indexes for table `tracker_log`
--
ALTER TABLE `tracker_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_log_created_at_index` (`created_at`),
  ADD KEY `tracker_log_updated_at_index` (`updated_at`),
  ADD KEY `tracker_log_session_id_index` (`session_id`),
  ADD KEY `tracker_log_path_id_index` (`path_id`),
  ADD KEY `tracker_log_query_id_index` (`query_id`),
  ADD KEY `tracker_log_method_index` (`method`),
  ADD KEY `tracker_log_route_path_id_index` (`route_path_id`),
  ADD KEY `tracker_log_error_id_index` (`error_id`),
  ADD KEY `tracker_log_referer_id_index` (`referer_id`);

--
-- Indexes for table `tracker_paths`
--
ALTER TABLE `tracker_paths`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_paths_created_at_index` (`created_at`),
  ADD KEY `tracker_paths_updated_at_index` (`updated_at`),
  ADD KEY `tracker_paths_path_index` (`path`);

--
-- Indexes for table `tracker_queries`
--
ALTER TABLE `tracker_queries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_queries_created_at_index` (`created_at`),
  ADD KEY `tracker_queries_updated_at_index` (`updated_at`),
  ADD KEY `tracker_queries_query_index` (`query`);

--
-- Indexes for table `tracker_query_arguments`
--
ALTER TABLE `tracker_query_arguments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_query_arguments_created_at_index` (`created_at`),
  ADD KEY `tracker_query_arguments_updated_at_index` (`updated_at`),
  ADD KEY `tracker_query_arguments_query_id_index` (`query_id`),
  ADD KEY `tracker_query_arguments_argument_index` (`argument`),
  ADD KEY `tracker_query_arguments_value_index` (`value`);

--
-- Indexes for table `tracker_referers`
--
ALTER TABLE `tracker_referers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_referers_created_at_index` (`created_at`),
  ADD KEY `tracker_referers_updated_at_index` (`updated_at`),
  ADD KEY `tracker_referers_domain_id_index` (`domain_id`),
  ADD KEY `tracker_referers_url_index` (`url`),
  ADD KEY `tracker_referers_medium_index` (`medium`),
  ADD KEY `tracker_referers_source_index` (`source`),
  ADD KEY `tracker_referers_search_terms_hash_index` (`search_terms_hash`);

--
-- Indexes for table `tracker_referers_search_terms`
--
ALTER TABLE `tracker_referers_search_terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_referers_search_terms_created_at_index` (`created_at`),
  ADD KEY `tracker_referers_search_terms_updated_at_index` (`updated_at`),
  ADD KEY `tracker_referers_search_terms_referer_id_index` (`referer_id`),
  ADD KEY `tracker_referers_search_terms_search_term_index` (`search_term`);

--
-- Indexes for table `tracker_routes`
--
ALTER TABLE `tracker_routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_routes_created_at_index` (`created_at`),
  ADD KEY `tracker_routes_updated_at_index` (`updated_at`),
  ADD KEY `tracker_routes_name_index` (`name`),
  ADD KEY `tracker_routes_action_index` (`action`);

--
-- Indexes for table `tracker_route_paths`
--
ALTER TABLE `tracker_route_paths`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_route_paths_created_at_index` (`created_at`),
  ADD KEY `tracker_route_paths_updated_at_index` (`updated_at`),
  ADD KEY `tracker_route_paths_route_id_index` (`route_id`),
  ADD KEY `tracker_route_paths_path_index` (`path`);

--
-- Indexes for table `tracker_route_path_parameters`
--
ALTER TABLE `tracker_route_path_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_route_path_parameters_created_at_index` (`created_at`),
  ADD KEY `tracker_route_path_parameters_updated_at_index` (`updated_at`),
  ADD KEY `tracker_route_path_parameters_route_path_id_index` (`route_path_id`),
  ADD KEY `tracker_route_path_parameters_parameter_index` (`parameter`),
  ADD KEY `tracker_route_path_parameters_value_index` (`value`);

--
-- Indexes for table `tracker_sessions`
--
ALTER TABLE `tracker_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracker_sessions_uuid_unique` (`uuid`),
  ADD KEY `tracker_sessions_created_at_index` (`created_at`),
  ADD KEY `tracker_sessions_updated_at_index` (`updated_at`),
  ADD KEY `tracker_sessions_user_id_index` (`user_id`),
  ADD KEY `tracker_sessions_device_id_index` (`device_id`),
  ADD KEY `tracker_sessions_agent_id_index` (`agent_id`),
  ADD KEY `tracker_sessions_client_ip_index` (`client_ip`),
  ADD KEY `tracker_sessions_referer_id_index` (`referer_id`),
  ADD KEY `tracker_sessions_cookie_id_index` (`cookie_id`),
  ADD KEY `tracker_sessions_geoip_id_index` (`geoip_id`),
  ADD KEY `tracker_sessions_language_id_index` (`language_id`);

--
-- Indexes for table `tracker_sql_queries`
--
ALTER TABLE `tracker_sql_queries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_sql_queries_created_at_index` (`created_at`),
  ADD KEY `tracker_sql_queries_updated_at_index` (`updated_at`),
  ADD KEY `tracker_sql_queries_sha1_index` (`sha1`),
  ADD KEY `tracker_sql_queries_time_index` (`time`);

--
-- Indexes for table `tracker_sql_queries_log`
--
ALTER TABLE `tracker_sql_queries_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_sql_queries_log_created_at_index` (`created_at`),
  ADD KEY `tracker_sql_queries_log_updated_at_index` (`updated_at`),
  ADD KEY `tracker_sql_queries_log_log_id_index` (`log_id`),
  ADD KEY `tracker_sql_queries_log_sql_query_id_index` (`sql_query_id`);

--
-- Indexes for table `tracker_sql_query_bindings`
--
ALTER TABLE `tracker_sql_query_bindings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_sql_query_bindings_created_at_index` (`created_at`),
  ADD KEY `tracker_sql_query_bindings_updated_at_index` (`updated_at`),
  ADD KEY `tracker_sql_query_bindings_sha1_index` (`sha1`);

--
-- Indexes for table `tracker_sql_query_bindings_parameters`
--
ALTER TABLE `tracker_sql_query_bindings_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_sql_query_bindings_parameters_created_at_index` (`created_at`),
  ADD KEY `tracker_sql_query_bindings_parameters_updated_at_index` (`updated_at`),
  ADD KEY `tracker_sql_query_bindings_parameters_name_index` (`name`),
  ADD KEY `tracker_sqlqb_parameters` (`sql_query_bindings_id`);

--
-- Indexes for table `tracker_system_classes`
--
ALTER TABLE `tracker_system_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_system_classes_created_at_index` (`created_at`),
  ADD KEY `tracker_system_classes_updated_at_index` (`updated_at`),
  ADD KEY `tracker_system_classes_name_index` (`name`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tracker_agents`
--
ALTER TABLE `tracker_agents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tracker_connections`
--
ALTER TABLE `tracker_connections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_cookies`
--
ALTER TABLE `tracker_cookies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_devices`
--
ALTER TABLE `tracker_devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tracker_domains`
--
ALTER TABLE `tracker_domains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_errors`
--
ALTER TABLE `tracker_errors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_events`
--
ALTER TABLE `tracker_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_events_log`
--
ALTER TABLE `tracker_events_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_geoip`
--
ALTER TABLE `tracker_geoip`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_languages`
--
ALTER TABLE `tracker_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_log`
--
ALTER TABLE `tracker_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1643;

--
-- AUTO_INCREMENT for table `tracker_paths`
--
ALTER TABLE `tracker_paths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tracker_queries`
--
ALTER TABLE `tracker_queries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_query_arguments`
--
ALTER TABLE `tracker_query_arguments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_referers`
--
ALTER TABLE `tracker_referers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_referers_search_terms`
--
ALTER TABLE `tracker_referers_search_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_routes`
--
ALTER TABLE `tracker_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_route_paths`
--
ALTER TABLE `tracker_route_paths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_route_path_parameters`
--
ALTER TABLE `tracker_route_path_parameters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_sessions`
--
ALTER TABLE `tracker_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tracker_sql_queries`
--
ALTER TABLE `tracker_sql_queries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_sql_queries_log`
--
ALTER TABLE `tracker_sql_queries_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_sql_query_bindings`
--
ALTER TABLE `tracker_sql_query_bindings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_sql_query_bindings_parameters`
--
ALTER TABLE `tracker_sql_query_bindings_parameters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_system_classes`
--
ALTER TABLE `tracker_system_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `tracker_events_log`
--
ALTER TABLE `tracker_events_log`
  ADD CONSTRAINT `tracker_events_log_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `tracker_system_classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_events_log_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `tracker_events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_events_log_log_id_foreign` FOREIGN KEY (`log_id`) REFERENCES `tracker_log` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_log`
--
ALTER TABLE `tracker_log`
  ADD CONSTRAINT `tracker_log_error_id_foreign` FOREIGN KEY (`error_id`) REFERENCES `tracker_errors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_log_path_id_foreign` FOREIGN KEY (`path_id`) REFERENCES `tracker_paths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_log_query_id_foreign` FOREIGN KEY (`query_id`) REFERENCES `tracker_queries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_log_route_path_id_foreign` FOREIGN KEY (`route_path_id`) REFERENCES `tracker_route_paths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_log_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `tracker_sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_query_arguments`
--
ALTER TABLE `tracker_query_arguments`
  ADD CONSTRAINT `tracker_query_arguments_query_id_foreign` FOREIGN KEY (`query_id`) REFERENCES `tracker_queries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_referers`
--
ALTER TABLE `tracker_referers`
  ADD CONSTRAINT `tracker_referers_domain_id_foreign` FOREIGN KEY (`domain_id`) REFERENCES `tracker_domains` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_referers_search_terms`
--
ALTER TABLE `tracker_referers_search_terms`
  ADD CONSTRAINT `tracker_referers_referer_id_fk` FOREIGN KEY (`referer_id`) REFERENCES `tracker_referers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_route_paths`
--
ALTER TABLE `tracker_route_paths`
  ADD CONSTRAINT `tracker_route_paths_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `tracker_routes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_route_path_parameters`
--
ALTER TABLE `tracker_route_path_parameters`
  ADD CONSTRAINT `tracker_route_path_parameters_route_path_id_foreign` FOREIGN KEY (`route_path_id`) REFERENCES `tracker_route_paths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_sessions`
--
ALTER TABLE `tracker_sessions`
  ADD CONSTRAINT `tracker_sessions_agent_id_foreign` FOREIGN KEY (`agent_id`) REFERENCES `tracker_agents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sessions_cookie_id_foreign` FOREIGN KEY (`cookie_id`) REFERENCES `tracker_cookies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sessions_device_id_foreign` FOREIGN KEY (`device_id`) REFERENCES `tracker_devices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sessions_geoip_id_foreign` FOREIGN KEY (`geoip_id`) REFERENCES `tracker_geoip` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sessions_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `tracker_languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sessions_referer_id_foreign` FOREIGN KEY (`referer_id`) REFERENCES `tracker_referers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_sql_queries_log`
--
ALTER TABLE `tracker_sql_queries_log`
  ADD CONSTRAINT `tracker_sql_queries_log_log_id_foreign` FOREIGN KEY (`log_id`) REFERENCES `tracker_log` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sql_queries_log_sql_query_id_foreign` FOREIGN KEY (`sql_query_id`) REFERENCES `tracker_sql_queries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_sql_query_bindings_parameters`
--
ALTER TABLE `tracker_sql_query_bindings_parameters`
  ADD CONSTRAINT `tracker_sqlqb_parameters` FOREIGN KEY (`sql_query_bindings_id`) REFERENCES `tracker_sql_query_bindings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
