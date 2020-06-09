-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 09, 2020 at 04:26 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `nangcautoanliem`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'ZLKcLRxzQH9E8XMMWd6NITIH1J8Qdljb', 1, '2017-11-15 06:57:09', '2017-11-15 06:57:09', '2017-11-15 06:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2020-06-09 08:39:50', '2020-06-09 08:39:50'),
(2, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2020-06-09 08:45:12', '2020-06-09 08:45:12'),
(3, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2020-06-09 08:50:39', '2020-06-09 08:50:39'),
(4, 1, 'user', '{\"_token\":\"qMNb38oH0XCZRF0qz5AyxMduK4QymM0gR7sLdrhC\",\"password\":\"Admin@123\",\"password_confirmation\":\"Admin@123\",\"submit\":\"submit\"}', 'updated profile', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2020-06-09 08:52:04', '2020-06-09 08:52:04'),
(5, 1, 'user', '{\"_token\":\"qMNb38oH0XCZRF0qz5AyxMduK4QymM0gR7sLdrhC\",\"password\":\"Admin@123\",\"password_confirmation\":\"Admin@123\",\"submit\":\"submit\"}', 'changed password', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'danger', '2020-06-09 08:52:04', '2020-06-09 08:52:04'),
(6, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', '127.0.0.1', 1, 1, 'Admin User', 'info', '2020-06-09 08:52:19', '2020-06-09 08:52:19'),
(7, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', '127.0.0.1', 0, 1, 'Admin User', 'info', '2020-06-09 08:52:25', '2020-06-09 08:52:25'),
(8, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', '127.0.0.1', 1, 1, 'Admin User', 'info', '2020-06-09 09:15:35', '2020-06-09 09:15:35'),
(9, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', '127.0.0.1', 0, 1, 'Admin User', 'info', '2020-06-09 09:16:20', '2020-06-09 09:16:20'),
(10, 1, 'menu', '{\"_token\":\"Fay1mFad1rERgpUZoU5Ww9qusu4QODGzZhIxvfeC\",\"name\":\"Menu ch\\u00ednh\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"600\\\",\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"http:\\/\\/localhost:8000\\/vi\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"id\\\":\\\"601\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/about\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"602\\\",\\\"title\\\":\\\"Tin t\\u1ee9c\\\",\\\"referenceId\\\":\\\"11\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"http:\\/\\/localhost:8000\\/new-update\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"606\\\",\\\"title\\\":\\\"Th\\u01b0 vi\\u1ec7n \\u1ea3nh\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"http:\\/\\/localhost:8000\\/vi\\/galleries\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"594\\\",\\\"title\\\":\\\"Li\\u00ean h\\u1ec7\\\",\\\"referenceId\\\":\\\"17\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"http:\\/\\/localhost:8000\\/lien-he\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Li\\u00ean h\\u1ec7\",\"custom-url\":\"\\/vi\\/galleries\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', '127.0.0.1', 1, 10, 'Menu chính', 'primary', '2020-06-09 09:20:25', '2020-06-09 09:20:25'),
(11, 1, 'menu_location', '{\"_token\":\"Fay1mFad1rERgpUZoU5Ww9qusu4QODGzZhIxvfeC\",\"name\":\"Menu ch\\u00ednh\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"600\\\",\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"http:\\/\\/localhost:8000\\/vi\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"id\\\":\\\"601\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/about\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"602\\\",\\\"title\\\":\\\"Tin t\\u1ee9c\\\",\\\"referenceId\\\":\\\"11\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"http:\\/\\/localhost:8000\\/new-update\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"606\\\",\\\"title\\\":\\\"Th\\u01b0 vi\\u1ec7n \\u1ea3nh\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"http:\\/\\/localhost:8000\\/vi\\/galleries\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"594\\\",\\\"title\\\":\\\"Li\\u00ean h\\u1ec7\\\",\\\"referenceId\\\":\\\"17\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"http:\\/\\/localhost:8000\\/lien-he\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Li\\u00ean h\\u1ec7\",\"custom-url\":\"\\/vi\\/galleries\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', '127.0.0.1', 1, 2, '', 'info', '2020-06-09 09:20:25', '2020-06-09 09:20:25'),
(12, 1, 'menu', '{\"_token\":\"Fay1mFad1rERgpUZoU5Ww9qusu4QODGzZhIxvfeC\",\"name\":\"Menu ch\\u00ednh\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"600\\\",\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"http:\\/\\/localhost:8000\\/vi\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"601\\\",\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"http:\\/\\/localhost:8000\\/about\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"D\\u1ecbch v\\u1ee5\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\/dich-vu\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"602\\\",\\\"title\\\":\\\"Tin t\\u1ee9c\\\",\\\"referenceId\\\":\\\"11\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"http:\\/\\/localhost:8000\\/new-update\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"606\\\",\\\"title\\\":\\\"Th\\u01b0 vi\\u1ec7n \\u1ea3nh\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"http:\\/\\/localhost:8000\\/vi\\/galleries\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"id\\\":\\\"594\\\",\\\"title\\\":\\\"Li\\u00ean h\\u1ec7\\\",\\\"referenceId\\\":\\\"17\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"http:\\/\\/localhost:8000\\/lien-he\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":5,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Li\\u00ean h\\u1ec7\",\"custom-url\":\"\\/vi\\/galleries\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', '127.0.0.1', 1, 10, 'Menu chính', 'primary', '2020-06-09 09:21:53', '2020-06-09 09:21:53'),
(13, 1, 'menu_location', '{\"_token\":\"Fay1mFad1rERgpUZoU5Ww9qusu4QODGzZhIxvfeC\",\"name\":\"Menu ch\\u00ednh\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"600\\\",\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"http:\\/\\/localhost:8000\\/vi\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"601\\\",\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"http:\\/\\/localhost:8000\\/about\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"D\\u1ecbch v\\u1ee5\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\/dich-vu\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"602\\\",\\\"title\\\":\\\"Tin t\\u1ee9c\\\",\\\"referenceId\\\":\\\"11\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"http:\\/\\/localhost:8000\\/new-update\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"606\\\",\\\"title\\\":\\\"Th\\u01b0 vi\\u1ec7n \\u1ea3nh\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"http:\\/\\/localhost:8000\\/vi\\/galleries\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"id\\\":\\\"594\\\",\\\"title\\\":\\\"Li\\u00ean h\\u1ec7\\\",\\\"referenceId\\\":\\\"17\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"http:\\/\\/localhost:8000\\/lien-he\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":5,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Li\\u00ean h\\u1ec7\",\"custom-url\":\"\\/vi\\/galleries\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', '127.0.0.1', 1, 2, '', 'info', '2020-06-09 09:21:53', '2020-06-09 09:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `name`, `alias`, `description`, `content`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Sample block', 'sample-block', 'This is a sample block', '<p><span style=\"color:#e67e22;\">This block will be shown on the contact page!</span></p>', 'published', 1, '2019-03-11 19:30:01', '2019-03-11 19:30:01');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(10) UNSIGNED NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `is_featured`, `order`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 0, 'Demo', 'published', 0, 'Botble\\ACL\\Models\\User', '', 0, 0, 1, '2016-07-09 16:32:39', '2016-11-25 07:31:58'),
(6, 'Events', 0, 'Event description', 'published', 1, 'Botble\\ACL\\Models\\User', '', 1, 0, 0, '2016-08-02 22:13:34', '2016-11-25 07:32:02'),
(7, 'Projects', 6, 'Projects description', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 3, 0, '2016-08-02 22:13:52', '2017-04-30 19:58:41'),
(8, 'Portfolio', 9, 'Description', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2016-09-27 09:32:06', '2017-04-30 19:58:21'),
(9, 'Business', 0, 'Business', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 1, 2, 0, '2016-09-28 09:38:25', '2017-04-30 19:59:12'),
(10, 'Resources', 11, 'Resource', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 4, 0, '2016-09-28 09:39:46', '2017-04-30 19:58:55'),
(11, 'New & Updates', 0, 'News and Update', 'published', 1, 'Botble\\ACL\\Models\\User', '', 1, 5, 0, '2016-09-28 09:40:25', '2016-11-25 07:31:56'),
(12, 'Chưa phân loại', 0, 'Chuyên mục chưa phân loại', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2018-04-13 09:02:12', '2018-04-13 09:02:12'),
(13, 'Sự kiện', 0, 'Sự kiện', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 1, 0, 0, '2018-04-13 09:04:30', '2018-04-13 10:01:11'),
(14, 'Doanh nghiệp', 0, 'Chuyên mục doanh nghiệp', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2018-04-13 09:04:49', '2018-04-13 09:04:49'),
(15, 'Tin tức & cập nhật', 0, 'Chuyên mục tin tức và cập nhật', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2018-04-13 09:05:06', '2018-04-13 09:05:06'),
(16, 'Dự án', 13, 'Chuyên mục dự án', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 1, 0, 0, '2018-04-13 09:05:23', '2018-04-13 10:05:52'),
(17, 'Đầu tư', 14, 'Chuyên mục doanh nghiệp', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2018-04-13 09:06:44', '2018-04-13 09:06:44'),
(18, 'Nguồn lực', 15, 'Chuyên mục nguồn lực', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2018-04-13 09:08:01', '2018-04-13 09:08:01');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `content`, `subject`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Demo contact', 'admin@admin.com', '0123456789', 'Somewhere in the world', 'The sample content', NULL, '2017-01-15 21:19:27', '2017-01-15 21:25:47', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `use_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_for_id` int(10) UNSIGNED NOT NULL,
  `field_item_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_posts_recent', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(2, 'widget_analytics_general', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(3, 'widget_analytics_page', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(4, 'widget_analytics_browser', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(5, 'widget_analytics_referrer', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(6, 'widget_audit_logs', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(7, 'widget_request_errors', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(8, 'widget_total_plugins', '2019-03-11 19:29:10', '2019-03-11 19:29:10'),
(9, 'widget_total_pages', '2019-03-11 19:29:10', '2019-03-11 19:29:10'),
(10, 'widget_total_users', '2019-03-11 19:29:10', '2019-03-11 19:29:10'),
(11, 'widget_total_themes', '2019-03-11 19:29:10', '2019-03-11 19:29:10');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widget_settings`
--

INSERT INTO `dashboard_widget_settings` (`id`, `settings`, `user_id`, `widget_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 1, 1, 1, '2017-11-30 18:27:00', '2017-11-30 18:27:18'),
(2, NULL, 1, 3, 2, 1, '2017-11-30 18:27:00', '2017-11-30 18:27:18'),
(3, NULL, 1, 4, 3, 1, '2017-11-30 18:27:00', '2017-11-30 18:27:14'),
(4, NULL, 1, 5, 4, 1, '2017-11-30 18:27:00', '2017-11-30 18:27:14'),
(5, NULL, 1, 6, 5, 1, '2017-11-30 18:27:00', '2017-11-30 18:27:10'),
(6, NULL, 1, 7, 6, 1, '2017-11-30 18:27:00', '2017-11-30 18:27:10'),
(7, NULL, 1, 2, 0, 1, '2017-11-30 18:27:00', '2017-11-30 18:27:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_groups`
--

CREATE TABLE `field_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_items`
--

CREATE TABLE `field_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `field_group_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8mb4_unicode_ci,
  `options` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `description`, `status`, `is_featured`, `order`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Photography', 'This is description', 'published', 1, 0, 'galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg', 1, '2016-10-13 09:49:13', '2019-09-13 17:03:28'),
(2, 'Nature', 'Nature gallery', 'published', 1, 0, 'galleries/1476513483-misty-mountains-1280x720.jpg', 1, '2016-10-13 09:56:07', '2019-09-13 17:03:28'),
(3, 'New Day', 'This is demo gallery', 'published', 1, 0, 'galleries/1476520418-supergirl-season-2-1280x720.jpg', 1, '2016-10-13 09:56:44', '2019-09-13 17:03:28'),
(4, 'Morning', 'Hello', 'published', 1, 0, 'galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg', 1, '2016-10-13 09:57:30', '2019-09-13 17:03:29'),
(5, 'Happy day', 'Demo', 'published', 1, 0, 'galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg', 1, '2016-10-13 09:58:11', '2019-09-13 17:03:29'),
(6, 'Perfect', 'This is perfect description', 'published', 1, 0, 'galleries/1476513493-world-of-tanks-football-event-1280x720.jpg', 1, '2016-10-13 09:58:40', '2019-09-13 17:03:29'),
(7, 'Nhiếp ảnh', 'Bộ sưu tập nhiếp ảnh', 'published', 1, 0, 'galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg', 1, '2017-12-16 17:02:39', '2019-09-13 17:03:29'),
(8, 'Thiên nhiên', 'Bộ sưu tập ảnh thiên nhiên', 'published', 1, 0, 'galleries/1476513483-misty-mountains-1280x720.jpg', 1, '2017-12-16 17:03:19', '2019-09-13 17:03:29'),
(9, 'Ngày mới', 'Bộ sưu tập ảnh ngày mới', 'published', 1, 0, 'galleries/1476520418-supergirl-season-2-1280x720.jpg', 1, '2017-12-16 17:03:48', '2019-09-13 17:03:29'),
(10, 'Buổi sáng', 'Bộ sưu tập ảnh buổi sáng', 'published', 1, 0, 'galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg', 1, '2017-12-16 17:04:20', '2019-09-13 17:03:29'),
(11, 'Ngày hạnh phúc', 'Bộ sưu tập ảnh ngày hạnh phúc', 'published', 1, 0, 'galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg', 1, '2017-12-16 17:04:43', '2019-09-13 17:03:29'),
(12, 'Hoàn hảo', 'Bộ sưu tập ảnh hoàn hảo', 'published', 1, 0, 'galleries/1476513493-world-of-tanks-football-event-1280x720.jpg', 1, '2017-12-16 17:05:01', '2019-09-13 17:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta`
--

CREATE TABLE `gallery_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_meta`
--

INSERT INTO `gallery_meta` (`id`, `reference_id`, `images`, `reference_type`, `created_at`, `updated_at`) VALUES
(70, 1, '[{\"img\":\"galleries\\/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476520641-elena-siberian-tigress-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476520418-supergirl-season-2-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513493-world-of-tanks-football-event-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513490-tulips-4k-8k-768x1280.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513488-spectacular-sunrise-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513486-power-rangers-red-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513484-power-rangers-blue-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513483-misty-mountains-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720.jpg\",\"description\":null}]', 'Botble\\Gallery\\Models\\Gallery', '2017-12-16 10:00:24', '2019-09-13 17:03:31'),
(71, 2, '[{\"img\":\"galleries\\/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476520641-elena-siberian-tigress-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476520418-supergirl-season-2-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513493-world-of-tanks-football-event-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513490-tulips-4k-8k-768x1280.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513488-spectacular-sunrise-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513486-power-rangers-red-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513484-power-rangers-blue-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513483-misty-mountains-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720.jpg\",\"description\":null}]', 'Botble\\Gallery\\Models\\Gallery', '2017-12-16 10:04:54', '2019-09-13 17:03:32'),
(72, 3, '[{\"img\":\"galleries\\/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476520641-elena-siberian-tigress-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476520418-supergirl-season-2-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513493-world-of-tanks-football-event-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513490-tulips-4k-8k-768x1280.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513488-spectacular-sunrise-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513486-power-rangers-red-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513484-power-rangers-blue-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513483-misty-mountains-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720.jpg\",\"description\":null}]', 'Botble\\Gallery\\Models\\Gallery', '2017-12-16 10:05:05', '2019-09-13 17:03:33'),
(73, 4, '[{\"img\":\"galleries\\/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476520641-elena-siberian-tigress-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476520418-supergirl-season-2-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513493-world-of-tanks-football-event-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513490-tulips-4k-8k-768x1280.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513488-spectacular-sunrise-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513486-power-rangers-red-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513484-power-rangers-blue-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513483-misty-mountains-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720.jpg\",\"description\":null}]', 'Botble\\Gallery\\Models\\Gallery', '2017-12-16 10:05:13', '2019-09-13 17:03:34'),
(74, 5, '[{\"img\":\"galleries\\/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476520641-elena-siberian-tigress-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476520418-supergirl-season-2-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513493-world-of-tanks-football-event-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513490-tulips-4k-8k-768x1280.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513488-spectacular-sunrise-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513486-power-rangers-red-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513484-power-rangers-blue-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513483-misty-mountains-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720.jpg\",\"description\":null}]', 'Botble\\Gallery\\Models\\Gallery', '2017-12-16 10:05:21', '2019-09-13 17:03:35'),
(75, 6, '[{\"img\":\"galleries\\/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476520641-elena-siberian-tigress-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476520418-supergirl-season-2-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513493-world-of-tanks-football-event-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513490-tulips-4k-8k-768x1280.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513488-spectacular-sunrise-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513486-power-rangers-red-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513484-power-rangers-blue-ranger-4k-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513483-misty-mountains-1280x720.jpg\",\"description\":null},{\"img\":\"galleries\\/1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720.jpg\",\"description\":null}]', 'Botble\\Gallery\\Models\\Gallery', '2017-12-16 10:05:28', '2019-09-13 17:03:36'),
(77, 8, NULL, 'Botble\\Gallery\\Models\\Gallery', '2017-12-16 17:03:19', '2017-12-16 17:03:19'),
(78, 7, NULL, 'Botble\\Gallery\\Models\\Gallery', '2017-12-16 17:03:25', '2017-12-16 17:03:25'),
(79, 9, NULL, 'Botble\\Gallery\\Models\\Gallery', '2017-12-16 17:03:48', '2017-12-16 17:03:48'),
(80, 10, NULL, 'Botble\\Gallery\\Models\\Gallery', '2017-12-16 17:04:20', '2017-12-16 17:04:20'),
(81, 11, NULL, 'Botble\\Gallery\\Models\\Gallery', '2017-12-16 17:04:43', '2017-12-16 17:04:43'),
(82, 12, NULL, 'Botble\\Gallery\\Models\\Gallery', '2017-12-16 17:05:01', '2017-12-16 17:05:01'),
(85, 79, NULL, 'Botble\\Blog\\Models\\Post', '2017-12-16 17:56:46', '2017-12-16 17:56:46'),
(86, 80, NULL, 'Botble\\Blog\\Models\\Post', '2017-12-16 18:07:16', '2017-12-16 18:07:16'),
(87, 75, NULL, 'Botble\\Blog\\Models\\Post', '2017-12-17 18:37:49', '2017-12-17 18:37:49'),
(88, 81, NULL, 'Botble\\Blog\\Models\\Post', '2017-12-18 18:43:36', '2017-12-18 18:43:36'),
(89, 82, NULL, 'Botble\\Blog\\Models\\Post', '2017-12-18 18:44:57', '2017-12-18 18:44:57'),
(92, 44, NULL, 'Botble\\Blog\\Models\\Post', '2018-04-13 09:38:58', '2018-04-13 09:38:58'),
(94, 48, NULL, 'Botble\\Blog\\Models\\Post', '2018-04-13 09:40:18', '2018-04-13 09:40:18'),
(96, 49, NULL, 'Botble\\Blog\\Models\\Post', '2018-04-13 09:41:32', '2018-04-13 09:41:32'),
(98, 50, NULL, 'Botble\\Blog\\Models\\Post', '2018-04-13 09:42:27', '2018-04-13 09:42:27'),
(122, 51, NULL, 'Botble\\Blog\\Models\\Post', '2018-04-13 09:58:23', '2018-04-13 09:58:23'),
(123, 52, NULL, 'Botble\\Blog\\Models\\Post', '2018-04-13 10:02:20', '2018-04-13 10:02:20'),
(125, 53, NULL, 'Botble\\Blog\\Models\\Post', '2018-04-13 10:03:07', '2018-04-13 10:03:07'),
(129, 54, NULL, 'Botble\\Blog\\Models\\Post', '2018-04-13 10:04:20', '2018-04-13 10:04:20'),
(130, 55, NULL, 'Botble\\Blog\\Models\\Post', '2018-04-13 10:06:40', '2018-04-13 10:06:40'),
(136, 1, NULL, 'Botble\\Page\\Models\\Page', '2020-03-10 19:06:21', '2020-03-10 19:06:21'),
(137, 17, NULL, 'Botble\\Page\\Models\\Page', '2020-03-10 19:33:16', '2020-03-10 19:33:16');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `lang_order` int(11) NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(44, 'English', 'en', 'en_US', 'us', 0, 0, 0),
(45, 'Tiếng Việt', 'vi', 'vi', 'vn', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `reference_id`, `lang_meta_code`, `reference_type`, `lang_meta_origin`) VALUES
(3, 4, 'en_US', 'Botble\\Blog\\Models\\Post', 'a9d40e38f773df46bfe3857c89404a5f'),
(4, 5, 'en_US', 'Botble\\Blog\\Models\\Post', '9cf3508b0becc5829411b251ab1d7d68'),
(5, 6, 'en_US', 'Botble\\Blog\\Models\\Post', '14ea2c977bff486d5d93caeeddb25433'),
(6, 7, 'en_US', 'Botble\\Blog\\Models\\Post', '1e3d1a0e8a2d0b0a820f6fa5ff37913b'),
(7, 8, 'en_US', 'Botble\\Blog\\Models\\Post', 'efa2fcd9b0bc7221fc37de650db1095d'),
(8, 9, 'en_US', 'Botble\\Blog\\Models\\Post', '5aa291a9490cf5a6b770e4ef67eecf51'),
(9, 10, 'en_US', 'Botble\\Blog\\Models\\Post', 'ddf6b2634ac599fca598c9f707d7e967'),
(10, 11, 'en_US', 'Botble\\Blog\\Models\\Post', '0162b0f534be9b5c0de3a2c21ee12a22'),
(11, 12, 'en_US', 'Botble\\Blog\\Models\\Post', '58d24bc8ca3ef58e26b6f5f2e97feb52'),
(13, 14, 'en_US', 'Botble\\Blog\\Models\\Post', '6a95efc9f3493402f6edc17125a5f621'),
(14, 19, 'en_US', 'Botble\\Blog\\Models\\Post', 'be26223edcf68e5f63a1a6437ba0be15'),
(15, 15, 'en_US', 'Botble\\Blog\\Models\\Post', '36292b94b5bc330e88721f87c05e3d1c'),
(16, 16, 'en_US', 'Botble\\Blog\\Models\\Post', 'e4bc15912ab7551f41dda75cab017005'),
(17, 17, 'en_US', 'Botble\\Blog\\Models\\Post', '73bd326091a134d6eb79570db924bb3d'),
(18, 18, 'en_US', 'Botble\\Blog\\Models\\Post', '77999a905526eb38febac6a1e0f1f5d9'),
(19, 20, 'en_US', 'Botble\\Blog\\Models\\Post', '26af70c0ef781166972928bd181ab10b'),
(20, 21, 'en_US', 'Botble\\Blog\\Models\\Post', '3856d68ccb4721e6432dcc1ee7001e20'),
(21, 44, 'vi', 'Botble\\Blog\\Models\\Post', 'a9d40e38f773df46bfe3857c89404a5f'),
(22, 45, 'vi', 'Botble\\Blog\\Models\\Post', '9cf3508b0becc5829411b251ab1d7d68'),
(23, 47, 'vi', 'Botble\\Blog\\Models\\Post', '14ea2c977bff486d5d93caeeddb25433'),
(24, 46, 'vi', 'Botble\\Blog\\Models\\Post', 'efa2fcd9b0bc7221fc37de650db1095d'),
(25, 11, 'en_US', 'Botble\\Blog\\Models\\Category', '4703171c553ee525c3a5436c254619cf'),
(26, 1, 'en_US', 'Botble\\Blog\\Models\\Category', 'ff750ed85cf1ac627f2b323889f78dd6'),
(27, 6, 'en_US', 'Botble\\Blog\\Models\\Category', '5d21f76eddb6b3d536cb390f4cda77bc'),
(28, 7, 'en_US', 'Botble\\Blog\\Models\\Category', 'cd22dfa504c9bf620938f913773df770'),
(29, 8, 'en_US', 'Botble\\Blog\\Models\\Category', 'da650dfca58083229317df283b16fa02'),
(30, 9, 'en_US', 'Botble\\Blog\\Models\\Category', 'faa61a3d1e5630da1dc2cdcb4f11b552'),
(31, 10, 'en_US', 'Botble\\Blog\\Models\\Category', '55be2035a27da7bfcc8ed4aeab28f4f1'),
(32, 5, 'en_US', 'Botble\\Blog\\Models\\Tag', 'f0698ed728cc9c18387840b72346e005'),
(33, 6, 'en_US', 'Botble\\Blog\\Models\\Tag', 'e4ef34ee9099a01fcec8f45a79c5d4ba'),
(34, 1, 'en_US', 'Botble\\Gallery\\Models\\Gallery', 'b5956d5eec65f9edeb008fdd97771f3e'),
(35, 2, 'en_US', 'Botble\\Gallery\\Models\\Gallery', '4367a6d49e1eb6e5fb64d77052997e9c'),
(36, 3, 'en_US', 'Botble\\Gallery\\Models\\Gallery', '0cc8e19b35bb9b0a6b0b45d8a358ee6c'),
(37, 4, 'en_US', 'Botble\\Gallery\\Models\\Gallery', 'a2879f55a54f0e629851df6b48f61241'),
(38, 5, 'en_US', 'Botble\\Gallery\\Models\\Gallery', 'e6ceb4ae110f3d66f9444211a2ac8337'),
(39, 6, 'en_US', 'Botble\\Gallery\\Models\\Gallery', '9f2f8e1a4752378951cc1312b419c102'),
(40, 1, 'en_US', 'Botble\\Menu\\Models\\Menu', '19848c17b2e0b8fd374ae6f4741599c4'),
(41, 3, 'en_US', 'Botble\\Menu\\Models\\Menu', '5d79633980667117eaee456018277ad8'),
(42, 7, 'en_US', 'Botble\\Menu\\Models\\Menu', 'b1ae8e07383b5d47e821dac905c86e6d'),
(43, 8, 'en_US', 'Botble\\Menu\\Models\\Menu', '78d39e8989bebaa53bac83ff0fedc678'),
(44, 9, 'en_US', 'Botble\\Menu\\Models\\Menu', '33a202bdbd1d82470cc1837e85622c5e'),
(45, 10, 'vi', 'Botble\\Menu\\Models\\Menu', '19848c17b2e0b8fd374ae6f4741599c4'),
(47, 23, 'en_US', 'Botble\\Page\\Models\\Page', '0bff9f3639cec70a3f65fc0149ad2b24'),
(48, 1, 'en_US', 'Botble\\Page\\Models\\Page', '3e971ce162e3737ae2b7af1e78c4bca2'),
(49, 17, 'vi', 'Botble\\Page\\Models\\Page', '3e971ce162e3737ae2b7af1e78c4bca2'),
(50, 7, 'vi', 'Botble\\Blog\\Models\\Tag', 'f5a7aacaa745d7b1df533180f61bab95'),
(51, 1, 'en_US', 'Botble\\Block\\Models\\Block', '671424045986775272d0ceb6aab7139a'),
(52, 7, 'vi', 'Botble\\Gallery\\Models\\Gallery', 'b5956d5eec65f9edeb008fdd97771f3e'),
(53, 8, 'vi', 'Botble\\Gallery\\Models\\Gallery', '4367a6d49e1eb6e5fb64d77052997e9c'),
(54, 9, 'vi', 'Botble\\Gallery\\Models\\Gallery', '0cc8e19b35bb9b0a6b0b45d8a358ee6c'),
(55, 10, 'vi', 'Botble\\Gallery\\Models\\Gallery', 'a2879f55a54f0e629851df6b48f61241'),
(56, 11, 'vi', 'Botble\\Gallery\\Models\\Gallery', 'e6ceb4ae110f3d66f9444211a2ac8337'),
(57, 12, 'vi', 'Botble\\Gallery\\Models\\Gallery', '9f2f8e1a4752378951cc1312b419c102'),
(58, 12, 'vi', 'Botble\\Blog\\Models\\Category', 'ff750ed85cf1ac627f2b323889f78dd6'),
(59, 13, 'vi', 'Botble\\Blog\\Models\\Category', '5d21f76eddb6b3d536cb390f4cda77bc'),
(60, 14, 'vi', 'Botble\\Blog\\Models\\Category', 'faa61a3d1e5630da1dc2cdcb4f11b552'),
(61, 15, 'vi', 'Botble\\Blog\\Models\\Category', '4703171c553ee525c3a5436c254619cf'),
(62, 16, 'vi', 'Botble\\Blog\\Models\\Category', 'cd22dfa504c9bf620938f913773df770'),
(63, 17, 'vi', 'Botble\\Blog\\Models\\Category', 'da650dfca58083229317df283b16fa02'),
(64, 18, 'vi', 'Botble\\Blog\\Models\\Category', '55be2035a27da7bfcc8ed4aeab28f4f1'),
(65, 48, 'vi', 'Botble\\Blog\\Models\\Post', '1e3d1a0e8a2d0b0a820f6fa5ff37913b'),
(66, 49, 'vi', 'Botble\\Blog\\Models\\Post', '5aa291a9490cf5a6b770e4ef67eecf51'),
(67, 50, 'vi', 'Botble\\Blog\\Models\\Post', 'ddf6b2634ac599fca598c9f707d7e967'),
(68, 51, 'vi', 'Botble\\Blog\\Models\\Post', '0162b0f534be9b5c0de3a2c21ee12a22'),
(69, 11, 'vi', 'Botble\\Blog\\Models\\Tag', 'f0698ed728cc9c18387840b72346e005'),
(75, 24, 'vi', 'Botble\\Blog\\Models\\Tag', 'e4ef34ee9099a01fcec8f45a79c5d4ba'),
(76, 25, 'en_US', 'Botble\\Blog\\Models\\Tag', 'f5a7aacaa745d7b1df533180f61bab95'),
(77, 52, 'vi', 'Botble\\Blog\\Models\\Post', '58d24bc8ca3ef58e26b6f5f2e97feb52'),
(78, 53, 'vi', 'Botble\\Blog\\Models\\Post', '6a95efc9f3493402f6edc17125a5f621'),
(79, 54, 'vi', 'Botble\\Blog\\Models\\Post', '36292b94b5bc330e88721f87c05e3d1c'),
(80, 55, 'vi', 'Botble\\Blog\\Models\\Post', 'e4bc15912ab7551f41dda75cab017005'),
(81, 6, 'en_US', 'Botble\\Menu\\Models\\Menu', '3deb9e726e379790dcb23e6b0cf26e8f'),
(82, 2, 'vi', 'Botble\\Menu\\Models\\MenuLocation', 'b8c6f006a28da7585aef81e9405306bd'),
(83, 3, 'en_US', 'Botble\\Menu\\Models\\MenuLocation', '3e08298053dbd3ea6ae1a6673f14f305'),
(84, 1, 'en_US', 'Botble\\Menu\\Models\\MenuLocation', '9b3f18ba090b776d3bbac1b450c9ab6a');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(87, 1, '2019-09-14 00:16:04', 5, 'image/png', 3161, 'logo/efe3f88b-0517-4e26-a901-f7d20f69ef37.png', '[]', '2019-09-13 17:16:04', '2019-09-13 17:16:04', NULL),
(88, 1, '1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720', 4, 'image/jpeg', 172017, 'galleries/1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720.jpg', '[]', '2019-11-02 04:22:22', '2019-11-02 04:22:22', NULL),
(89, 1, '1476513483-misty-mountains-1280x720', 4, 'image/jpeg', 115996, 'galleries/1476513483-misty-mountains-1280x720.jpg', '[]', '2019-11-02 04:22:23', '2019-11-02 04:22:23', NULL),
(90, 1, '1476513484-power-rangers-blue-ranger-4k-1280x720', 4, 'image/jpeg', 110182, 'galleries/1476513484-power-rangers-blue-ranger-4k-1280x720.jpg', '[]', '2019-11-02 04:22:24', '2019-11-02 04:22:24', NULL),
(91, 1, '1476513486-power-rangers-red-ranger-4k-1280x720', 4, 'image/jpeg', 131618, 'galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg', '[]', '2019-11-02 04:22:25', '2019-11-02 04:22:25', NULL),
(92, 1, '1476513488-spectacular-sunrise-4k-1280x720', 4, 'image/jpeg', 59951, 'galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg', '[]', '2019-11-02 04:22:26', '2019-11-02 04:22:26', NULL),
(93, 1, '1476513490-tulips-4k-8k-768x1280', 4, 'image/jpeg', 79663, 'galleries/1476513490-tulips-4k-8k-768x1280.jpg', '[]', '2019-11-02 04:22:27', '2019-11-02 04:22:27', NULL),
(94, 1, '1476513493-world-of-tanks-football-event-1280x720', 4, 'image/jpeg', 210966, 'galleries/1476513493-world-of-tanks-football-event-1280x720.jpg', '[]', '2019-11-02 04:22:28', '2019-11-02 04:22:28', NULL),
(95, 1, '1476520418-supergirl-season-2-1280x720', 4, 'image/jpeg', 152860, 'galleries/1476520418-supergirl-season-2-1280x720.jpg', '[]', '2019-11-02 04:22:29', '2019-11-02 04:22:29', NULL),
(96, 1, '1476520641-elena-siberian-tigress-4k-1280x720', 4, 'image/jpeg', 212356, 'galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg', '[]', '2019-11-02 04:22:30', '2019-11-02 04:22:30', NULL),
(97, 1, '1476521053-volkswagen-id-paris-motor-show-4k-1280x720', 4, 'image/jpeg', 143223, 'galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg', '[]', '2019-11-02 04:22:31', '2019-11-02 04:22:31', NULL),
(98, 1, '1476890029-hero01', 3, 'image/jpeg', 106200, 'news/1476890029-hero01.jpg', '[]', '2019-11-02 04:23:28', '2019-11-02 04:23:28', NULL),
(99, 1, '1476890031-hero02', 3, 'image/jpeg', 56843, 'news/1476890031-hero02.jpg', '[]', '2019-11-02 04:23:29', '2019-11-02 04:23:29', NULL),
(100, 1, '1476890033-hero03', 3, 'image/jpeg', 86015, 'news/1476890033-hero03.jpg', '[]', '2019-11-02 04:23:29', '2019-11-02 04:23:29', NULL),
(101, 1, '1476890034-hero04', 3, 'image/jpeg', 73927, 'news/1476890034-hero04.jpg', '[]', '2019-11-02 04:23:30', '2019-11-02 04:23:30', NULL),
(102, 1, '1476890036-hero05', 3, 'image/jpeg', 82371, 'news/1476890036-hero05.jpg', '[]', '2019-11-02 04:23:31', '2019-11-02 04:23:31', NULL),
(103, 1, '1476891035-01', 3, 'image/jpeg', 139584, 'news/1476891035-01.jpg', '[]', '2019-11-02 04:23:31', '2019-11-02 04:23:31', NULL),
(104, 1, '1476891195-02', 3, 'image/jpeg', 135878, 'news/1476891195-02.jpg', '[]', '2019-11-02 04:23:32', '2019-11-02 04:23:32', NULL),
(105, 1, '1476891198-04', 3, 'image/jpeg', 192746, 'news/1476891198-04.jpg', '[]', '2019-11-02 04:23:33', '2019-11-02 04:23:33', NULL),
(106, 1, '1476893532-01', 3, 'image/jpeg', 139584, 'news/1476893532-01.jpg', '[]', '2019-11-02 04:23:34', '2019-11-02 04:23:34', NULL),
(107, 1, '1476893533-02', 3, 'image/jpeg', 190105, 'news/1476893533-02.jpg', '[]', '2019-11-02 04:23:34', '2019-11-02 04:23:34', NULL),
(108, 1, '4381851322-d46fd7d75e-b-660x330', 3, 'image/jpeg', 68706, 'news/4381851322-d46fd7d75e-b-660x330.jpg', '[]', '2019-11-02 04:23:35', '2019-11-02 04:23:35', NULL),
(109, 1, '7717834982-bbd7e12b8c-b-660x330', 3, 'image/jpeg', 49286, 'news/7717834982-bbd7e12b8c-b-660x330.jpg', '[]', '2019-11-02 04:23:35', '2019-11-02 04:23:35', NULL),
(110, 1, '7998125906-4489ed8a2f-b-660x330', 3, 'image/jpeg', 51071, 'news/7998125906-4489ed8a2f-b-660x330.jpg', '[]', '2019-11-02 04:23:36', '2019-11-02 04:23:36', NULL),
(111, 1, 'lock-660x330', 3, 'image/jpeg', 50378, 'news/lock-660x330.jpg', '[]', '2019-11-02 04:23:37', '2019-11-02 04:23:37', NULL),
(112, 1, 'nmnkzkiyqsygikfjinsb-20140717-212636-3-660x330', 3, 'image/jpeg', 64544, 'news/nmnkzkiyqsygikfjinsb-20140717-212636-3-660x330.jpg', '[]', '2019-11-02 04:23:37', '2019-11-02 04:23:37', NULL),
(113, 1, 'old-car-660x330', 3, 'image/jpeg', 70127, 'news/old-car-660x330.jpg', '[]', '2019-11-02 04:23:38', '2019-11-02 04:23:38', NULL),
(114, 1, '300x250', 6, 'image/jpeg', 30686, 'ads/300x250.jpg', '[]', '2019-11-03 17:28:47', '2019-11-03 17:28:47', NULL),
(115, 1, '728x90', 6, 'image/jpeg', 25788, 'ads/728x90.jpg', '[]', '2019-11-03 17:28:48', '2019-11-03 17:28:48', NULL),
(116, 0, 'avatar.jpg', 0, 'image/jpeg', 123144, 'users/avatar.jpg', '[]', '2019-12-09 04:55:28', '2019-12-09 04:55:28', NULL),
(117, 0, 'avatar.jpg', 0, 'image/jpeg', 90104, 'users/avatar.jpg', '[]', '2020-01-15 19:18:04', '2020-01-15 19:18:04', NULL),
(118, 1, 'facebook', 5, 'image/png', 12425, 'logo/facebook.png', '[]', '2020-03-10 18:59:27', '2020-03-10 18:59:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 1, 'news', 'news', 0, '2019-09-13 17:09:12', '2019-09-13 17:09:12', NULL),
(4, 1, 'galleries', 'galleries', 0, '2019-09-13 17:14:34', '2019-09-13 17:14:34', NULL),
(5, 1, 'logo', 'logo', 0, '2019-09-13 17:15:52', '2019-09-13 17:15:52', NULL),
(6, 1, 'ads', 'ads', 0, '2019-11-03 17:28:35', '2019-11-03 17:28:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_activity_logs`
--

CREATE TABLE `member_activity_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_password_resets`
--

CREATE TABLE `member_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2016-06-17 17:53:45', '2016-08-14 20:25:34'),
(3, 'Top Right Menu', 'right-menu', 'published', '2016-08-03 03:20:10', '2016-09-27 08:30:46'),
(6, 'Social', 'social', 'published', '2016-10-19 23:26:54', '2016-10-19 23:26:54'),
(7, 'Favorite website', 'favorite-website', 'published', '2016-10-21 10:21:23', '2016-10-21 10:21:23'),
(8, 'My links', 'my-links', 'published', '2016-10-21 10:24:36', '2016-10-21 10:24:36'),
(9, 'Featured Categories', 'featured-categories', 'published', '2016-10-21 10:52:59', '2016-10-21 10:52:59'),
(10, 'Menu chính', 'menu-chinh', 'published', '2016-11-15 00:56:14', '2016-11-15 00:56:14');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2018-11-29 09:19:48', '2018-11-29 09:19:48'),
(2, 10, 'main-menu', '2018-11-29 09:19:55', '2018-11-29 09:19:55'),
(3, 6, 'header-menu', '2018-11-29 09:20:42', '2018-11-29 09:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reference_id` int(10) UNSIGNED DEFAULT '0',
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(543, 3, 0, 5, 'Botble\\Page\\Models\\Page', '', '', 4, '', '', '_self', 0, '2016-09-27 08:40:29', '2016-11-06 18:35:31'),
(544, 3, 0, 1, 'Botble\\Page\\Models\\Page', '', '', 5, 'Contact', '', '_self', 0, '2016-09-27 08:40:29', '2016-10-15 18:45:57'),
(545, 1, 0, 0, NULL, '', '', 0, 'Home', '', '_self', 0, '2016-09-27 09:16:52', '2016-09-27 09:27:13'),
(557, 3, 0, 7, 'Botble\\Blog\\Models\\Category', '', '', 3, 'Projects', '', '_self', 0, '2016-09-27 09:31:43', '2016-10-15 18:45:57'),
(558, 3, 0, 8, 'Botble\\Blog\\Models\\Category', '', '', 2, 'Portfolio', '', '_self', 0, '2016-09-27 09:32:22', '2016-10-15 18:45:57'),
(559, 3, 0, 0, NULL, '/downloads', '', 1, 'Downloads', '', '_self', 0, '2016-09-30 21:32:32', '2016-10-15 18:45:57'),
(560, 3, 0, 0, NULL, '/galleries', '', 0, 'Galleries', '', '_self', 0, '2016-10-15 18:45:57', '2016-10-15 18:45:57'),
(562, 1, 561, 6, 'Botble\\Blog\\Models\\Category', '', '', 0, 'Events', '', '_self', 0, '2016-10-19 08:09:16', '2016-10-19 08:09:16'),
(563, 1, 566, 8, 'Botble\\Blog\\Models\\Category', '', '', 0, 'Portfolio', '', '_self', 0, '2016-10-19 08:09:16', '2016-10-21 10:26:25'),
(564, 1, 566, 7, 'Botble\\Blog\\Models\\Category', '', '', 1, 'Projects', '', '_self', 0, '2016-10-19 08:09:16', '2016-10-21 10:26:25'),
(565, 1, 561, 10, 'Botble\\Blog\\Models\\Category', '', '', 2, 'Resources', '', '_self', 0, '2016-10-19 08:09:16', '2016-10-19 08:10:27'),
(566, 1, 0, 0, NULL, '/galleries', '', 3, 'Galleries', '', '_self', 0, '2016-10-19 08:09:16', '2017-12-08 19:39:34'),
(567, 1, 561, 9, 'Botble\\Blog\\Models\\Category', '', '', 1, 'Business', '', '_self', 0, '2016-10-19 08:09:50', '2016-10-19 08:09:50'),
(568, 1, 0, 1, 'Botble\\Page\\Models\\Page', '', '', 4, 'Contact', '', '_self', 0, '2016-10-19 08:10:27', '2017-12-08 19:39:34'),
(569, 1, 0, 0, NULL, 'https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182?ref=botble', '', 1, 'Purchase', '', '_blank', 0, '2016-10-19 08:11:43', '2016-11-19 02:26:19'),
(571, 6, 0, 0, NULL, 'https://facebook.com', 'fa fa-facebook', 0, 'Facebook', '', '_self', 0, '2016-10-19 23:28:25', '2016-10-19 23:28:25'),
(572, 6, 0, 0, NULL, 'https://twitter.com', 'fa fa-twitter', 1, 'Twitter', '', '_self', 0, '2016-10-19 23:28:26', '2016-10-19 23:28:26'),
(573, 6, 0, 0, NULL, 'https://plus.google.com', 'fa fa-google-plus', 2, 'Google Plus', '', '_self', 0, '2016-10-19 23:29:24', '2016-10-19 23:29:24'),
(574, 6, 0, 0, NULL, 'https://github.com', 'fa fa-github', 3, 'Github', '', '_self', 0, '2016-10-19 23:29:24', '2016-10-19 23:29:24'),
(575, 7, 0, 0, NULL, 'http://speckyboy.com', '', 0, 'Speckyboy Magazine', '', '_self', 0, '2016-10-21 10:24:16', '2016-10-21 10:24:16'),
(576, 7, 0, 0, NULL, 'http://tympanus.com', '', 1, 'Tympanus-Codrops', '', '_self', 0, '2016-10-21 10:24:16', '2016-10-21 10:24:16'),
(577, 7, 0, 0, NULL, 'https://kipalog.com/', '', 2, 'Kipalog Blog', '', '_self', 0, '2016-10-21 10:24:16', '2016-10-21 10:24:16'),
(578, 7, 0, 0, NULL, 'http://www.sitepoint.com', '', 3, 'SitePoint', '', '_self', 0, '2016-10-21 10:24:16', '2016-10-21 10:24:16'),
(579, 7, 0, 0, NULL, 'http://www.creativebloq.com/', '', 4, 'CreativeBloq', '', '_self', 0, '2016-10-21 10:24:16', '2016-10-21 10:24:16'),
(580, 7, 0, 0, NULL, 'http://techtalk.vn', '', 5, 'Techtalk', '', '_self', 0, '2016-10-21 10:24:16', '2016-10-21 10:24:16'),
(581, 8, 0, 0, NULL, '/', '', 0, 'Homepage', '', '_self', 0, '2016-10-21 10:25:49', '2016-10-21 10:25:49'),
(582, 8, 0, 11, 'Botble\\Blog\\Models\\Category', '', '', 1, 'New & Updates', '', '_self', 0, '2016-10-21 10:25:49', '2016-10-21 10:25:49'),
(583, 8, 0, 0, NULL, '/galleries', '', 2, 'Galleries', '', '_self', 0, '2016-10-21 10:25:49', '2016-10-21 10:25:49'),
(584, 8, 0, 1, 'Botble\\Page\\Models\\Page', '', '', 3, 'Contact', '', '_self', 0, '2016-10-21 10:25:49', '2016-10-21 10:25:49'),
(585, 8, 0, 11, 'Botble\\Blog\\Models\\Category', '', '', 4, 'New & Updates', '', '_self', 0, '2016-10-21 10:25:49', '2016-10-21 10:25:49'),
(586, 8, 0, 7, 'Botble\\Blog\\Models\\Category', '', '', 5, 'Projects', '', '_self', 0, '2016-10-21 10:25:49', '2016-10-21 10:25:49'),
(587, 9, 0, 9, 'Botble\\Blog\\Models\\Category', '', '', 0, 'Business', '', '_self', 0, '2016-10-21 10:53:16', '2016-10-21 10:53:16'),
(588, 9, 0, 6, 'Botble\\Blog\\Models\\Category', '', '', 1, 'Events', '', '_self', 0, '2016-10-21 10:53:16', '2016-10-21 10:53:16'),
(589, 9, 0, 11, 'Botble\\Blog\\Models\\Category', '', '', 2, 'New & Updates', '', '_self', 0, '2016-10-21 10:53:16', '2016-10-21 10:53:16'),
(590, 9, 0, 8, 'Botble\\Blog\\Models\\Category', '', '', 3, 'Portfolio', '', '_self', 0, '2016-10-21 10:53:16', '2016-10-21 10:53:16'),
(591, 9, 0, 7, 'Botble\\Blog\\Models\\Category', '', '', 4, 'Projects', '', '_self', 0, '2016-10-21 10:53:16', '2016-10-21 10:53:16'),
(592, 9, 0, 10, 'Botble\\Blog\\Models\\Category', '', '', 5, 'Resources', '', '_self', 0, '2016-10-21 10:53:16', '2016-10-21 10:53:16'),
(594, 10, 0, 17, 'Botble\\Page\\Models\\Page', '', '', 5, 'Liên hệ', '', '_self', 0, '2016-11-15 01:12:57', '2020-06-09 09:21:53'),
(600, 10, 0, 0, NULL, 'http://localhost:8000/vi', '', 0, 'Trang chủ', '', '_self', 0, '2016-11-19 02:26:19', '2020-06-09 09:20:25'),
(601, 10, 0, 0, NULL, 'http://localhost:8000/about', '', 1, 'Giới thiệu', '', '_self', 0, '2016-11-19 02:26:19', '2020-06-09 09:21:53'),
(602, 10, 0, 11, 'Botble\\Blog\\Models\\Category', '', '', 3, 'Tin tức', '', '_self', 0, '2016-11-19 02:26:19', '2020-06-09 09:21:53'),
(603, 10, 602, 6, 'Botble\\Blog\\Models\\Category', '', '', 0, 'Sự kiện', '', '_self', 0, '2016-11-19 02:26:19', '2016-11-25 07:52:21'),
(604, 10, 602, 9, 'Botble\\Blog\\Models\\Category', '', '', 1, 'Doanh nghiệp', '', '_self', 0, '2016-11-19 02:26:19', '2016-11-25 07:52:21'),
(605, 10, 602, 10, 'Botble\\Blog\\Models\\Category', '', '', 2, 'Tài nguyên', '', '_self', 0, '2016-11-19 02:26:19', '2016-11-25 07:52:21'),
(606, 10, 0, 0, NULL, 'http://localhost:8000/vi/galleries', '', 4, 'Thư viện ảnh', '', '_self', 0, '2016-11-19 02:26:19', '2020-06-09 09:21:53'),
(607, 10, 606, 8, 'Botble\\Blog\\Models\\Category', '', '', 0, 'Cá nhân', '', '_self', 0, '2016-11-19 02:26:19', '2016-11-25 07:52:21'),
(608, 10, 606, 7, 'Botble\\Blog\\Models\\Category', '', '', 1, 'Dự án', '', '_self', 0, '2016-11-19 02:26:19', '2016-11-25 07:52:21'),
(609, 1, 0, 11, 'Botble\\Blog\\Models\\Category', '', '', 2, 'New & Updates', '', '_self', 0, '2017-12-08 19:39:34', '2018-01-17 18:35:53'),
(610, 10, 0, 0, NULL, '/dich-vu', '', 2, 'Dịch vụ', '', '_self', 0, '2020-06-09 09:21:53', '2020-06-09 09:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `reference_id`, `meta_key`, `meta_value`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-11 09:07:56', '2017-12-11 09:07:56'),
(2, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Page\\Models\\Page', '2018-01-17 18:35:24', '2019-03-11 19:30:22'),
(3, 12, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2018-04-13 09:02:12', '2018-04-13 09:02:12'),
(4, 13, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2018-04-13 09:04:30', '2018-04-13 09:04:30'),
(5, 14, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2018-04-13 09:04:49', '2018-04-13 09:04:49'),
(6, 15, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2018-04-13 09:05:06', '2018-04-13 09:05:06'),
(7, 16, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2018-04-13 09:05:23', '2018-04-13 09:05:23'),
(8, 17, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2018-04-13 09:06:44', '2018-04-13 09:06:44'),
(9, 18, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2018-04-13 09:08:01', '2018-04-13 09:08:01'),
(10, 44, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2018-04-13 09:38:58', '2018-04-13 09:38:58'),
(11, 48, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2018-04-13 09:40:11', '2018-04-13 09:40:11'),
(12, 49, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2018-04-13 09:41:28', '2018-04-13 09:41:28'),
(13, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2018-04-13 09:41:28', '2018-04-13 09:41:28'),
(14, 50, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2018-04-13 09:42:20', '2018-04-13 09:42:20'),
(15, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2018-04-13 09:42:20', '2018-04-13 09:42:20'),
(16, 9, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2018-04-13 09:42:20', '2018-04-13 09:42:20'),
(17, 51, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2018-04-13 09:43:09', '2018-04-13 09:43:09'),
(18, 10, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2018-04-13 09:43:09', '2018-04-13 09:43:09'),
(19, 11, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2018-04-13 09:45:22', '2018-04-13 09:45:22'),
(22, 24, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2018-04-13 09:59:52', '2018-04-13 09:59:52'),
(23, 25, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2018-04-13 10:00:35', '2018-04-13 10:00:35'),
(24, 52, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2018-04-13 10:02:20', '2018-04-13 10:02:20'),
(25, 53, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2018-04-13 10:02:59', '2018-04-13 10:02:59'),
(26, 54, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2018-04-13 10:03:46', '2018-04-13 10:03:46'),
(27, 55, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2018-04-13 10:06:40', '2018-04-13 10:06:40'),
(28, 17, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Page\\Models\\Page', '2020-03-10 19:33:16', '2020-03-10 19:33:16');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(7, '2016_06_01_000004_create_oauth_clients_table', 1),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(9, '2016_06_10_230148_create_acl_tables', 1),
(10, '2016_06_14_230857_create_menus_table', 1),
(11, '2016_06_28_221418_create_pages_table', 1),
(12, '2016_10_05_074239_create_setting_table', 1),
(13, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(14, '2016_12_16_084601_create_widgets_table', 1),
(15, '2017_05_09_070343_create_media_tables', 1),
(16, '2017_11_03_070450_create_slug_table', 1),
(17, '2018_11_03_054815_create_menu_locations_table', 1),
(18, '2018_11_07_151241_update_column_status_for_pages_table', 1),
(19, '2018_11_07_151701_update_column_status_for_menus_table', 1),
(21, '2015_06_29_025744_create_audit_history', 2),
(24, '2015_06_18_033822_create_blog_table', 4),
(25, '2018_11_07_051340_change_status_column_for_blog', 4),
(26, '2018_11_07_154204_remove_unused_column_in_blog_table', 4),
(28, '2016_06_17_091537_create_contacts_table', 5),
(29, '2018_11_08_001804_update_column_status_in_contacts_table', 5),
(32, '2016_10_03_032336_create_languages_table', 7),
(33, '2016_10_13_150201_create_galleries_table', 8),
(34, '2018_11_08_005616_update_status_column_in_galleries_table', 8),
(36, '2017_10_04_140938_create_member_table', 9),
(38, '2016_05_28_112028_create_system_request_logs_table', 11),
(40, '2018_11_24_012701_rename_column_featured_in_blog_tables', 12),
(41, '2018_11_24_012823_rename_column_featured_in_galleries_table', 12),
(42, '2018_11_24_013406_rename_column_featured_in_pages_table', 12),
(43, '2013_04_09_062329_create_revisions_table', 13),
(44, '2019_01_05_053554_create_jobs_table', 13),
(45, '2019_01_18_155032_update_members_table', 13),
(46, '2019_01_20_071422_add_author_type_to_posts_table', 13),
(47, '2019_02_11_055127_create_member_activity_logs_table', 13),
(48, '2019_02_23_064533_create_contact_replies_table', 13),
(49, '2017_02_13_034601_create_blocks_table', 14),
(50, '2018_11_07_150746_update_column_status_for_blocks_table', 14),
(51, '2017_03_27_150646_re_create_custom_field_tables', 15),
(52, '2018_11_08_004530_update_status_column_in_field_groups_table', 15),
(53, '2019_03_14_082019_update_blog_table_name', 16),
(54, '2019_04_05_112137_update_table_members', 17),
(55, '2019_04_06_103857_update_profile_image_column_in_users_table', 17),
(56, '2019_05_27_133842_change_column_status_menus_table', 18),
(57, '2019_05_27_134005_change_column_status_pages_table', 18),
(58, '2019_05_27_134310_change_column_status_blocks_table', 18),
(59, '2019_05_27_134410_change_column_status_posts_table', 18),
(60, '2019_05_27_134446_change_column_status_categories_table', 18),
(61, '2019_05_27_134633_change_column_status_field_groups_table', 18),
(62, '2019_05_27_134724_change_column_status_tags_table', 18),
(63, '2019_05_27_134802_change_column_status_galleries_table', 18),
(64, '2019_06_02_121721_add_email_verify_token_column_to_members_table', 19),
(65, '2019_06_24_025057_make_some_columns_nullable_in_media_tables', 19),
(66, '2019_07_11_143550_rename_audit_history_table', 20),
(67, '2019_07_15_042406_change_site_title_from_settings_to_theme_options', 20),
(68, '2019_08_13_033145_remove_unused_columns_in_users_table', 21),
(69, '2019_09_07_030654_update_menu_nodes_table', 21),
(70, '2019_09_07_035526_update_menu_node_reference_type_for_category', 21),
(71, '2019_09_07_045041_update_slugs_table', 21),
(72, '2019_09_07_050058_update_slug_reference_for_blog', 21),
(73, '2019_09_07_050253_update_slug_reference_for_gallery', 21),
(74, '2019_09_07_050405_update_slug_reference_for_page', 21),
(75, '2019_09_07_154718_update_lang_meta_table', 21),
(76, '2019_09_07_155256_update_language_meta_for_block', 21),
(77, '2019_09_07_155716_update_language_meta_for_blog', 21),
(78, '2019_09_07_155917_update_language_meta_for_gallery', 21),
(79, '2019_09_08_014859_update_meta_boxes_table', 21),
(80, '2019_09_08_015552_update_meta_box_data_for_blog', 21),
(81, '2019_09_08_015629_update_meta_box_data_for_page', 21),
(82, '2019_09_08_032534_update_gallery_meta_table', 21),
(83, '2019_09_12_073711_update_media_url', 22),
(84, '2019_10_20_002256_remove_parent_id_in_pages_table', 23),
(85, '2019_10_20_002342_remove_parent_id_in_tags_table', 23),
(86, '2019_08_19_000000_create_failed_jobs_table', 24),
(87, '2019_09_12_073711_update_media_url_for_current_data', 24),
(88, '2020_03_28_020724_make_column_user_id_nullable_table_revisions', 25),
(89, '2016_10_07_193005_create_translations_table', 26);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'nPvD6nCdZ4u5VDofwCaCrg9DTBpkMOJopp2JjdjR', 'http://localhost', 1, 0, 0, '2018-03-20 21:07:20', '2018-03-20 21:07:20'),
(2, NULL, 'Laravel Password Grant Client', 'yoMn1m1jBDOZAAfwX7qOagkGrAoazmzujgLAfpyI', 'http://localhost', 0, 1, 0, '2018-03-20 21:07:20', '2018-03-20 21:07:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-03-20 21:07:20', '2018-03-20 21:07:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('09a880ccdf4f35761565b221378b611954a090fd48a2a710b1531feccced42a104d7208d38508258', '6ec25d436833eb08e9c574e208ce65ee59561517d49f0ac952d292eb80d976bfb11805a6e28f94dc', 0, '2018-04-20 04:08:18');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `status`, `user_id`, `image`, `template`, `is_featured`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Contact', '<p>Address: North Link Building, 10 Admiralty Street, 757695 Singapore</p>\r\n\r\n<p>Hotline: 18006268</p>\r\n\r\n<p>Email: contact@botble.com</p>\r\n\r\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\r\n\r\n<p>For the fastest reply, please use the contact form below.</p>\r\n\r\n<p>[contact-form][/contact-form]</p>', 'published', 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg', 'default', 0, NULL, '2016-07-09 01:05:39', '2020-03-10 19:06:21'),
(17, 'Liên hệ', '<p>Địa chỉ: North Link Building, 10 Admiralty Street, 757695 Singapore</p>\r\n\r\n<p>Đường d&acirc;y n&oacute;ng: 18006268</p>\r\n\r\n<p>Email: contact@botble.com</p>\r\n\r\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\r\n\r\n<p>Để được trả lời nhanh nhất, vui l&ograve;ng li&ecirc;n hệ qua form b&ecirc;n dưới.</p>\r\n\r\n<p>[contact-form][/contact-form]</p>', 'published', 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/galleries/1476513483-misty-mountains-1280x720.jpg', 'default', 0, NULL, '2016-11-06 18:17:25', '2020-03-10 19:33:16');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('minhsang2603@gmail.com', '$2y$10$kWX7Vm.TR02TvQ426QLR2uzK6/JjiYIwE.ruTXH6eBQdS8mV5aL0a', '2018-01-24 03:40:43');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(4, '13,000+ People Have Bought Our Theme', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p><iframe src=\"https://www.youtube.com/embed/7MxyPHjyu9A\" width=\"420\" height=\"315\"></iframe></p>\r\n<p>Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There’s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n<p> </p>\r\n<p>Still, she’s got a lot of spirit. I don’t know, what do you think? What!? I don’t know what you’re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan– What good is a reward if you ain’t around to use it? Besides, attacking that battle station ain’t my idea of courage. It’s more like…suicide.</p>\r\n<p>You don’t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you’re going. What?! The Force is strong with this one. I have you now.</p>\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander. There’ll be no one to stop us this time! You’re all clear, kid. Let’s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n<ul>\r\n<li>Dantooine. They’re on Dantooine.</li>\r\n<li>He is here.</li>\r\n<li>Don’t underestimate the Force.</li>\r\n</ul>\r\n<p><img style=\"height: 683px; width: 1024px;\" alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master. But with the blast shield down, I can’t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can’t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n<p>Still, she’s got a lot of spirit. I don’t know, what do you think? What!? I don’t know what you’re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan– What good is a reward if you ain’t around to use it? Besides, attacking that battle station ain’t my idea of courage. It’s more like…suicide.<br /> You don’t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you’re going. What?! The Force is strong with this one. I have you now.</p>\r\n<p> </p>\r\n<ol>\r\n<li>I care. So, what do you think of her, Han?</li>\r\n<li>You mean it controls your actions?</li>\r\n<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you’re going.</li>\r\n<li>I’m trying not to, kid.</li>\r\n</ol>\r\n<h2>Revenge of the Sith</h2>\r\n<p><img style=\"height: 300px; width: 180px;\" alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can’t get involved! I’ve got work to do! It’s not that I like the Empire, I hate it, but there’s nothing I can do about it right now. It’s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I’m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can’t possibly…</p>\r\n<p>Your eyes can deceive you. Don’t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I’m trying not to, kid.</p>\r\n<p>I’m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They’re on Dantooine.</p>\r\n<p> </p>\r\n<p>Still, she’s got a lot of spirit. I don’t know, what do you think? What!? I don’t know what you’re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan– What good is a reward if you ain’t around to use it? Besides, attacking that battle station ain’t my idea of courage. It’s more like…suicide.</p>\r\n<p>Hey, Luke! May the Force be with you. Kid, I’ve flown from one side of this galaxy to the other. I’ve seen a lot of strange stuff, but I’ve never seen anything to make me believe there’s one all-powerful Force controlling everything. There’s no mystical energy field that controls my destiny. It’s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n<p>You don’t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you’re going. What?! The Force is strong with this one. I have you now.</p>\r\n<p> </p>\r\n<p><img style=\"height: 563px; width: 1000px;\" alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n<p> </p>\r\n<p>Hey, Luke! May the Force be with you. Kid, I’ve flown from one side of this galaxy to the other. I’ve seen a lot of strange stuff, but I’ve never seen anything to make me believe there’s one all-powerful Force controlling everything. There’s no mystical energy field that controls my destiny. It’s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain’t in this for your revolution, and I’m not in it for you, Princess. I expect to be well paid. I’m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n<p>All right. Well, take care of yourself, Han. I guess that’s what you’re best at, ain’t it? Alderaan? I’m not going to Alderaan. I’ve got to go home. It’s late, I’m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n<p> </p>\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img style=\"height: 300px; width: 200px;\" alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n<p>WOW, Nice photo !</p>\r\n<p>I need your help, Luke. She needs your help. I’m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can’t possibly… As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you’re going.</p>\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They’re on Dantooine. You’re all clear, kid. Let’s blow this thing and go home! I’m surprised you had the courage to take the responsibility yourself. I’m trying not to, kid.</p>\r\n<p>I care. So, what do you think of her, Han? Don’t underestimate the Force. I don’t know what you’re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan– I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n<p>You’re all clear, kid. Let’s blow this thing and go home! But with the blast shield down, I can’t even see! How am I supposed to fight? Alderaan? I’m not going to Alderaan. I’ve got to go home. It’s late, I’m in for it as it is.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/1476893533-02.jpg', 8, NULL, '2016-08-02 21:34:18', '2019-09-13 17:03:24'),
(5, 'Top Search Engine Optimization Strategies!', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/nmnkzkiyqsygikfjinsb-20140717-212636-3-660x330.jpg', 6, NULL, '2016-08-02 21:36:45', '2019-09-13 17:03:24'),
(6, 'Which Company Would You Choose?', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/1476893532-01.jpg', 4, NULL, '2016-08-02 21:38:34', '2019-09-13 17:03:25'),
(7, 'Used Car Dealer Sales Tricks Exposed', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/old-car-660x330.jpg', 6, NULL, '2016-08-02 21:39:50', '2019-09-13 17:03:25'),
(8, '20 Ways To Sell Your Product Faster', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1476890034-hero04.jpg', 3, NULL, '2016-08-02 21:40:56', '2019-09-13 17:03:25');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(9, 'The Secrets Of Rich And Famous Writers', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1476890036-hero05.jpg', 0, NULL, '2016-08-02 21:42:45', '2019-09-13 17:03:25'),
(10, 'Imagine Losing 20 Pounds In 14 Days!', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>\r\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1476890033-hero03.jpg', 7, NULL, '2016-08-02 21:44:20', '2019-09-13 17:03:25'),
(11, 'Are You Still Using That Slow, Old Typewriter?', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1476890034-hero04.jpg', 12, NULL, '2016-08-02 21:45:16', '2019-09-13 17:03:25'),
(12, 'A Skin Cream That’s Proven To Work', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1476890031-hero02.jpg', 13, NULL, '2016-08-02 21:46:22', '2020-06-09 08:53:49'),
(13, '10 Reasons To Start Your Own, Profitable Website!', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>\r\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1476890029-hero01.jpg', 15, NULL, '2016-08-02 21:47:18', '2019-09-13 17:03:25');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(14, 'Simple Ways To Reduce Your Unwanted Wrinkles!', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/4381851322-d46fd7d75e-b-660x330.jpg', 1, NULL, '2016-08-02 21:50:39', '2019-09-13 17:03:25'),
(15, 'Apple iMac with Retina 5K display review', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/1476891195-02.jpg', 1, NULL, '2016-08-02 21:51:49', '2019-09-13 17:03:26'),
(16, '10 Reasons To Start Your Own, Profitable Website!', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/1476891035-01.jpg', 3, NULL, '2016-08-02 21:52:39', '2019-09-13 17:03:26'),
(17, 'Unlock The Secrets Of Selling High Ticket Items', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/1476891198-04.jpg', 2, NULL, '2016-08-02 21:53:49', '2019-09-13 17:03:26'),
(18, '10,000 Web Site Visitors In One Month:Guaranteed', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/1476893533-02.jpg', 6, NULL, '2016-08-02 21:54:31', '2019-09-13 17:03:26');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(19, 'Are You Still Using That Slow, Old Typewriter?', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/1476891195-02.jpg', 3, NULL, '2016-08-02 21:55:28', '2019-09-13 17:03:26'),
(20, 'A Skin Cream That’s Proven To Work', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>\r\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/1476890031-hero02.jpg', 12, NULL, '2016-08-02 21:56:32', '2019-09-13 17:03:26'),
(21, 'Top Search Engine Optimization Strategies!', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt=\"5825871567_4d477202ce_b\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg\" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt=\"post-image\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg\" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"9FybtVFNSEOxogGzIvHJ_IMG_2226\" src=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg\"><img alt=\"WOW, Nice photo !\" src=\"http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg\" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>\r\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/1476891035-01.jpg', 7, NULL, '2016-08-02 21:57:29', '2019-09-13 17:03:26'),
(44, '13000 người đã mua Theme của chúng tôi', 'Đây là bài viết mẫu, nội dung của những bài viết demo đều giống nhau, nó được dùng với mục đích làm ví dụ, các bài viết hiện tại trên trang demo đều có nội dung giống nhau về phần nội dung và mô tả ngắn.', '<p>Hi mọi người,  dạo gần đây mình không viết blog mới vì tập trung phát triển Botble CMS. Sau bao cố gắng thì hôm nay mình đã có thể release version 2.0 với nhiều tính năng mới.</p>\r\n<p>Ở bản 1.0, mình cảm thấy nó có quá nhiều tính năng phức tạp, chỉ phù hợp với hệ thống lớn mà đa số các website nhỏ không cần đến, vì vậy mình đã đơn giản bớt đi trong phần này và tập trung làm sao cho Botble CMS dễ sử dụng nhất.</p>\r\n<p>Botble CMS đang sử dụng Laravel phiên bản mới nhất tại thời điểm này 5.3.</p>\r\n<h3>Demo:</h3>\r\n<p>Homepage: <a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n<p>Admin: <a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n<p>Account: botble - 159357</p>\r\n<p> </p>\r\n<h3>Cấu trúc thư mục:</h3>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" alt=\"core\" /></p>\r\n<p>Botble version 2 đã được tổ chức thành từng module theo dạng HMVC và nằm hoàn toàn trong thư mục /core. Những thư mục khác hầu hết được giữ nguyên hiện trạng như bản cài mới laravel. Điều này giúp dễ dàng hơn trong việc cập nhật, nâng cấp sau này.</p>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" alt=\"theme\" /></p>\r\n<p>Tách biệt thư mục theme và chuẩn cấu trúc theme.</p>\r\n<p> </p>\r\n<p>Mình xin nói sơ qua một số tính năng mới trong bản này.</p>\r\n<ol>\r\n<li>\r\n<h3>Hỗ trợ cài đặt.</h3>\r\n</li>\r\n</ol>\r\n<p>Nhiều người gặp khó khăn trong việc cài đặt Botble, đa số đó là những người mới làm quen laravel. Vì vậy mình đã viết 1 đoạn script để hỗ trợ cài đặt nhanh chóng qua command line.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<h3>2. Tạo 1 module/plugin mới một cách nhanh chóng với CRUD và permissions.</h3>\r\n<p><iframe src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Việc loại bỏ 1 module không cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Do hơi bận rộn nên mình chỉ có thể quay một số video hướng dẫn trên, sẽ bổ sung sau :D</p>\r\n<h3>3. Theme mới</h3>\r\n<p>Trong bản cập nhật này, nhờ sự giúp đỡ của bạn <a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đã được khoác lên bộ áo mới mà mình đánh giá là đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n<p>Một số hình ảnh:</p>\r\n<p><img src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>4. Quản lý plugin</h3>\r\n<p><img src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n<p>Như các bạn đã biết, Wordpress có rất nhiều tính năng hay. Vì vậy mình đã áp dụng Filter, Action hook và Metabox vào Botble để có thể dễ dàng hơn cho các bạn can thiệp vào core sau này.</p>\r\n<h3>Kết luận:</h3>\r\n<p>Trên đây là một số tính năng mới của Botble version 2.0, hi vọng các bạn cảm thấy hứng thú với CMS này.</p>\r\n<p>Các bạn có thể mua ủng hộ mình trên Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc liên hệ trực tiếp với mình qua skype live:minhsang2603 để được hỗ trợ.</p>\r\n<p> </p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1476893533-02.jpg', 1, NULL, '2016-11-12 18:25:08', '2019-09-13 17:03:26'),
(45, 'Lên trên Công cụ Tìm kiếm Tối ưu hóa các chiến lược!', 'Đây là bài viết mẫu, nội dung của những bài viết demo đều giống nhau, nó được dùng với mục đích làm ví dụ, các bài viết hiện tại trên trang demo đều có nội dung giống nhau về phần nội dung và mô tả ngắn.', '<p>Hi mọi người, &nbsp;dạo gần đ&acirc;y m&igrave;nh kh&ocirc;ng viết blog mới v&igrave; tập trung ph&aacute;t triển Botble CMS. Sau bao cố gắng th&igrave; h&ocirc;m nay m&igrave;nh đ&atilde; c&oacute; thể release version 2.0 với nhiều t&iacute;nh năng mới.</p>\r\n\r\n<p>Ở bản 1.0, m&igrave;nh cảm thấy n&oacute; c&oacute; qu&aacute; nhiều t&iacute;nh năng phức tạp, chỉ ph&ugrave; hợp với hệ thống lớn m&agrave; đa số c&aacute;c website nhỏ kh&ocirc;ng cần đến, v&igrave; vậy m&igrave;nh đ&atilde; đơn giản bớt đi trong phần n&agrave;y v&agrave; tập trung l&agrave;m sao cho Botble CMS dễ sử dụng nhất.</p>\r\n\r\n<p>Botble CMS đang sử dụng Laravel&nbsp;phi&ecirc;n bản mới nhất tại thời điểm n&agrave;y 5.3.</p>\r\n\r\n<h3>Demo:</h3>\r\n\r\n<p>Homepage:&nbsp;<a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n\r\n<p>Admin:&nbsp;<a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n\r\n<p>Account: botble - 159357</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Cấu tr&uacute;c thư mục:</h3>\r\n\r\n<p><img alt=\"core\" src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" /></p>\r\n\r\n<p>Botble version 2 đ&atilde; được tổ chức th&agrave;nh từng module theo dạng HMVC v&agrave; nằm ho&agrave;n to&agrave;n trong thư mục /core. Những thư mục kh&aacute;c hầu hết được giữ nguy&ecirc;n hiện trạng như bản c&agrave;i mới laravel. Điều n&agrave;y gi&uacute;p dễ d&agrave;ng hơn trong việc cập nhật, n&acirc;ng cấp sau n&agrave;y.</p>\r\n\r\n<p><img alt=\"theme\" src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" /></p>\r\n\r\n<p>T&aacute;ch biệt thư mục theme v&agrave; chuẩn cấu tr&uacute;c theme.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&igrave;nh xin n&oacute;i sơ qua một số t&iacute;nh năng mới trong bản n&agrave;y.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<h3>Hỗ trợ c&agrave;i đặt.</h3>\r\n	</li>\r\n</ol>\r\n\r\n<p>Nhiều người gặp kh&oacute; khăn trong việc c&agrave;i đặt Botble, đa số đ&oacute; l&agrave; những người mới l&agrave;m quen laravel. V&igrave; vậy m&igrave;nh đ&atilde; viết 1 đoạn script để hỗ trợ c&agrave;i đặt nhanh ch&oacute;ng qua command line.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>2. Tạo 1 module/plugin mới một c&aacute;ch nhanh ch&oacute;ng với CRUD v&agrave; permissions.</h3>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Việc loại bỏ 1 module kh&ocirc;ng cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Do hơi bận rộn n&ecirc;n m&igrave;nh chỉ c&oacute; thể quay một số video hướng dẫn tr&ecirc;n, sẽ bổ sung sau :D</p>\r\n\r\n<h3>3. Theme mới</h3>\r\n\r\n<p>Trong bản cập nhật n&agrave;y, nhờ sự gi&uacute;p đỡ của bạn&nbsp;<a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đ&atilde; được kho&aacute;c l&ecirc;n bộ &aacute;o mới m&agrave; m&igrave;nh đ&aacute;nh gi&aacute; l&agrave; đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n\r\n<p>Một số h&igrave;nh ảnh:</p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>4. Quản l&yacute; plugin</h3>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n\r\n<p>Như c&aacute;c bạn đ&atilde; biết, Wordpress c&oacute; rất nhiều t&iacute;nh năng hay. V&igrave; vậy m&igrave;nh đ&atilde; &aacute;p dụng Filter, Action hook v&agrave; Metabox v&agrave;o Botble để c&oacute; thể dễ d&agrave;ng hơn cho c&aacute;c bạn can thiệp v&agrave;o core sau n&agrave;y.</p>\r\n\r\n<h3>Kết luận:</h3>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; một số t&iacute;nh năng mới của Botble version 2.0, hi vọng c&aacute;c bạn cảm thấy hứng th&uacute; với CMS n&agrave;y.</p>\r\n\r\n<p>C&aacute;c bạn c&oacute; thể mua ủng hộ m&igrave;nh tr&ecirc;n Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc li&ecirc;n hệ trực tiếp với m&igrave;nh qua skype live:minsang2603 để được hỗ trợ.</p>\r\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/nmnkzkiyqsygikfjinsb-20140717-212636-3-660x330.jpg', 1, NULL, '2016-11-12 18:27:06', '2019-09-13 17:03:27');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(46, 'Bạn sẽ chọn công ty nào', 'Đây là bài viết mẫu, nội dung của những bài viết demo đều giống nhau, nó được dùng với mục đích làm ví dụ, các bài viết hiện tại trên trang demo đều có nội dung giống nhau về phần nội dung và mô tả ngắn.', '<p>Hi mọi người, &nbsp;dạo gần đ&acirc;y m&igrave;nh kh&ocirc;ng viết blog mới v&igrave; tập trung ph&aacute;t triển Botble CMS. Sau bao cố gắng th&igrave; h&ocirc;m nay m&igrave;nh đ&atilde; c&oacute; thể release version 2.0 với nhiều t&iacute;nh năng mới.</p>\r\n\r\n<p>Ở bản 1.0, m&igrave;nh cảm thấy n&oacute; c&oacute; qu&aacute; nhiều t&iacute;nh năng phức tạp, chỉ ph&ugrave; hợp với hệ thống lớn m&agrave; đa số c&aacute;c website nhỏ kh&ocirc;ng cần đến, v&igrave; vậy m&igrave;nh đ&atilde; đơn giản bớt đi trong phần n&agrave;y v&agrave; tập trung l&agrave;m sao cho Botble CMS dễ sử dụng nhất.</p>\r\n\r\n<p>Botble CMS đang sử dụng Laravel&nbsp;phi&ecirc;n bản mới nhất tại thời điểm n&agrave;y 5.3.</p>\r\n\r\n<h3>Demo:</h3>\r\n\r\n<p>Homepage:&nbsp;<a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n\r\n<p>Admin:&nbsp;<a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n\r\n<p>Account: botble - 159357</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Cấu tr&uacute;c thư mục:</h3>\r\n\r\n<p><img alt=\"core\" src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" /></p>\r\n\r\n<p>Botble version 2 đ&atilde; được tổ chức th&agrave;nh từng module theo dạng HMVC v&agrave; nằm ho&agrave;n to&agrave;n trong thư mục /core. Những thư mục kh&aacute;c hầu hết được giữ nguy&ecirc;n hiện trạng như bản c&agrave;i mới laravel. Điều n&agrave;y gi&uacute;p dễ d&agrave;ng hơn trong việc cập nhật, n&acirc;ng cấp sau n&agrave;y.</p>\r\n\r\n<p><img alt=\"theme\" src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" /></p>\r\n\r\n<p>T&aacute;ch biệt thư mục theme v&agrave; chuẩn cấu tr&uacute;c theme.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&igrave;nh xin n&oacute;i sơ qua một số t&iacute;nh năng mới trong bản n&agrave;y.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<h3>Hỗ trợ c&agrave;i đặt.</h3>\r\n	</li>\r\n</ol>\r\n\r\n<p>Nhiều người gặp kh&oacute; khăn trong việc c&agrave;i đặt Botble, đa số đ&oacute; l&agrave; những người mới l&agrave;m quen laravel. V&igrave; vậy m&igrave;nh đ&atilde; viết 1 đoạn script để hỗ trợ c&agrave;i đặt nhanh ch&oacute;ng qua command line.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>2. Tạo 1 module/plugin mới một c&aacute;ch nhanh ch&oacute;ng với CRUD v&agrave; permissions.</h3>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Việc loại bỏ 1 module kh&ocirc;ng cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Do hơi bận rộn n&ecirc;n m&igrave;nh chỉ c&oacute; thể quay một số video hướng dẫn tr&ecirc;n, sẽ bổ sung sau :D</p>\r\n\r\n<h3>3. Theme mới</h3>\r\n\r\n<p>Trong bản cập nhật n&agrave;y, nhờ sự gi&uacute;p đỡ của bạn&nbsp;<a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đ&atilde; được kho&aacute;c l&ecirc;n bộ &aacute;o mới m&agrave; m&igrave;nh đ&aacute;nh gi&aacute; l&agrave; đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n\r\n<p>Một số h&igrave;nh ảnh:</p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>4. Quản l&yacute; plugin</h3>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n\r\n<p>Như c&aacute;c bạn đ&atilde; biết, Wordpress c&oacute; rất nhiều t&iacute;nh năng hay. V&igrave; vậy m&igrave;nh đ&atilde; &aacute;p dụng Filter, Action hook v&agrave; Metabox v&agrave;o Botble để c&oacute; thể dễ d&agrave;ng hơn cho c&aacute;c bạn can thiệp v&agrave;o core sau n&agrave;y.</p>\r\n\r\n<h3>Kết luận:</h3>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; một số t&iacute;nh năng mới của Botble version 2.0, hi vọng c&aacute;c bạn cảm thấy hứng th&uacute; với CMS n&agrave;y.</p>\r\n\r\n<p>C&aacute;c bạn c&oacute; thể mua ủng hộ m&igrave;nh tr&ecirc;n Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc li&ecirc;n hệ trực tiếp với m&igrave;nh qua skype live:minsang2603 để được hỗ trợ.</p>\r\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/1476893532-01.jpg', 0, NULL, '2016-11-12 18:32:57', '2019-09-13 17:03:27'),
(47, 'Sử dụng xe Đại lý bán hàng Tricks xúc', 'Đây là bài viết mẫu, nội dung của những bài viết demo đều giống nhau, nó được dùng với mục đích làm ví dụ, các bài viết hiện tại trên trang demo đều có nội dung giống nhau về phần nội dung và mô tả ngắn.', '<p>Hi mọi người, &nbsp;dạo gần đ&acirc;y m&igrave;nh kh&ocirc;ng viết blog mới v&igrave; tập trung ph&aacute;t triển Botble CMS. Sau bao cố gắng th&igrave; h&ocirc;m nay m&igrave;nh đ&atilde; c&oacute; thể release version 2.0 với nhiều t&iacute;nh năng mới.</p>\r\n\r\n<p>Ở bản 1.0, m&igrave;nh cảm thấy n&oacute; c&oacute; qu&aacute; nhiều t&iacute;nh năng phức tạp, chỉ ph&ugrave; hợp với hệ thống lớn m&agrave; đa số c&aacute;c website nhỏ kh&ocirc;ng cần đến, v&igrave; vậy m&igrave;nh đ&atilde; đơn giản bớt đi trong phần n&agrave;y v&agrave; tập trung l&agrave;m sao cho Botble CMS dễ sử dụng nhất.</p>\r\n\r\n<p>Botble CMS đang sử dụng Laravel&nbsp;phi&ecirc;n bản mới nhất tại thời điểm n&agrave;y 5.3.</p>\r\n\r\n<h3>Demo:</h3>\r\n\r\n<p>Homepage:&nbsp;<a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n\r\n<p>Admin:&nbsp;<a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n\r\n<p>Account: botble - 159357</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Cấu tr&uacute;c thư mục:</h3>\r\n\r\n<p><img alt=\"core\" src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" /></p>\r\n\r\n<p>Botble version 2 đ&atilde; được tổ chức th&agrave;nh từng module theo dạng HMVC v&agrave; nằm ho&agrave;n to&agrave;n trong thư mục /core. Những thư mục kh&aacute;c hầu hết được giữ nguy&ecirc;n hiện trạng như bản c&agrave;i mới laravel. Điều n&agrave;y gi&uacute;p dễ d&agrave;ng hơn trong việc cập nhật, n&acirc;ng cấp sau n&agrave;y.</p>\r\n\r\n<p><img alt=\"theme\" src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" /></p>\r\n\r\n<p>T&aacute;ch biệt thư mục theme v&agrave; chuẩn cấu tr&uacute;c theme.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&igrave;nh xin n&oacute;i sơ qua một số t&iacute;nh năng mới trong bản n&agrave;y.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<h3>Hỗ trợ c&agrave;i đặt.</h3>\r\n	</li>\r\n</ol>\r\n\r\n<p>Nhiều người gặp kh&oacute; khăn trong việc c&agrave;i đặt Botble, đa số đ&oacute; l&agrave; những người mới l&agrave;m quen laravel. V&igrave; vậy m&igrave;nh đ&atilde; viết 1 đoạn script để hỗ trợ c&agrave;i đặt nhanh ch&oacute;ng qua command line.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>2. Tạo 1 module/plugin mới một c&aacute;ch nhanh ch&oacute;ng với CRUD v&agrave; permissions.</h3>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Việc loại bỏ 1 module kh&ocirc;ng cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"506\" src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Do hơi bận rộn n&ecirc;n m&igrave;nh chỉ c&oacute; thể quay một số video hướng dẫn tr&ecirc;n, sẽ bổ sung sau :D</p>\r\n\r\n<h3>3. Theme mới</h3>\r\n\r\n<p>Trong bản cập nhật n&agrave;y, nhờ sự gi&uacute;p đỡ của bạn&nbsp;<a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đ&atilde; được kho&aacute;c l&ecirc;n bộ &aacute;o mới m&agrave; m&igrave;nh đ&aacute;nh gi&aacute; l&agrave; đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n\r\n<p>Một số h&igrave;nh ảnh:</p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>4. Quản l&yacute; plugin</h3>\r\n\r\n<p><img alt=\"\" src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n\r\n<p>Như c&aacute;c bạn đ&atilde; biết, Wordpress c&oacute; rất nhiều t&iacute;nh năng hay. V&igrave; vậy m&igrave;nh đ&atilde; &aacute;p dụng Filter, Action hook v&agrave; Metabox v&agrave;o Botble để c&oacute; thể dễ d&agrave;ng hơn cho c&aacute;c bạn can thiệp v&agrave;o core sau n&agrave;y.</p>\r\n\r\n<h3>Kết luận:</h3>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; một số t&iacute;nh năng mới của Botble version 2.0, hi vọng c&aacute;c bạn cảm thấy hứng th&uacute; với CMS n&agrave;y.</p>\r\n\r\n<p>C&aacute;c bạn c&oacute; thể mua ủng hộ m&igrave;nh tr&ecirc;n Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc li&ecirc;n hệ trực tiếp với m&igrave;nh qua skype live:minsang2603 để được hỗ trợ.</p>\r\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/old-car-660x330.jpg', 4, NULL, '2016-11-12 18:35:25', '2019-09-13 17:03:27'),
(48, 'Chiến lược phát triển phần mềm', 'Chiến lược phát triển phần mềm', '<p>Hi mọi người,  dạo gần đây mình không viết blog mới vì tập trung phát triển Botble CMS. Sau bao cố gắng thì hôm nay mình đã có thể release version 2.0 với nhiều tính năng mới.</p>\r\n<p>Ở bản 1.0, mình cảm thấy nó có quá nhiều tính năng phức tạp, chỉ phù hợp với hệ thống lớn mà đa số các website nhỏ không cần đến, vì vậy mình đã đơn giản bớt đi trong phần này và tập trung làm sao cho Botble CMS dễ sử dụng nhất.</p>\r\n<p>Botble CMS đang sử dụng Laravel phiên bản mới nhất tại thời điểm này 5.3.</p>\r\n<h3>Demo:</h3>\r\n<p>Homepage: <a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n<p>Admin: <a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n<p>Account: botble - 159357</p>\r\n<p> </p>\r\n<h3>Cấu trúc thư mục:</h3>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" alt=\"core\" /></p>\r\n<p>Botble version 2 đã được tổ chức thành từng module theo dạng HMVC và nằm hoàn toàn trong thư mục /core. Những thư mục khác hầu hết được giữ nguyên hiện trạng như bản cài mới laravel. Điều này giúp dễ dàng hơn trong việc cập nhật, nâng cấp sau này.</p>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" alt=\"theme\" /></p>\r\n<p>Tách biệt thư mục theme và chuẩn cấu trúc theme.</p>\r\n<p> </p>\r\n<p>Mình xin nói sơ qua một số tính năng mới trong bản này.</p>\r\n<ol>\r\n<li>\r\n<h3>Hỗ trợ cài đặt.</h3>\r\n</li>\r\n</ol>\r\n<p>Nhiều người gặp khó khăn trong việc cài đặt Botble, đa số đó là những người mới làm quen laravel. Vì vậy mình đã viết 1 đoạn script để hỗ trợ cài đặt nhanh chóng qua command line.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<h3>2. Tạo 1 module/plugin mới một cách nhanh chóng với CRUD và permissions.</h3>\r\n<p><iframe src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Việc loại bỏ 1 module không cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Do hơi bận rộn nên mình chỉ có thể quay một số video hướng dẫn trên, sẽ bổ sung sau :D</p>\r\n<h3>3. Theme mới</h3>\r\n<p>Trong bản cập nhật này, nhờ sự giúp đỡ của bạn <a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đã được khoác lên bộ áo mới mà mình đánh giá là đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n<p>Một số hình ảnh:</p>\r\n<p><img src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>4. Quản lý plugin</h3>\r\n<p><img src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n<p>Như các bạn đã biết, Wordpress có rất nhiều tính năng hay. Vì vậy mình đã áp dụng Filter, Action hook và Metabox vào Botble để có thể dễ dàng hơn cho các bạn can thiệp vào core sau này.</p>\r\n<h3>Kết luận:</h3>\r\n<p>Trên đây là một số tính năng mới của Botble version 2.0, hi vọng các bạn cảm thấy hứng thú với CMS này.</p>\r\n<p>Các bạn có thể mua ủng hộ mình trên Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc liên hệ trực tiếp với mình qua skype live:minsang2603 để được hỗ trợ.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/lock-660x330.jpg', 0, NULL, '2018-04-13 09:40:11', '2019-09-13 17:03:27'),
(49, 'Nền tảng mã nguồn mở PHP', 'Nền tảng', '<p>Hi mọi người,  dạo gần đây mình không viết blog mới vì tập trung phát triển Botble CMS. Sau bao cố gắng thì hôm nay mình đã có thể release version 2.0 với nhiều tính năng mới.</p>\r\n<p>Ở bản 1.0, mình cảm thấy nó có quá nhiều tính năng phức tạp, chỉ phù hợp với hệ thống lớn mà đa số các website nhỏ không cần đến, vì vậy mình đã đơn giản bớt đi trong phần này và tập trung làm sao cho Botble CMS dễ sử dụng nhất.</p>\r\n<p>Botble CMS đang sử dụng Laravel phiên bản mới nhất tại thời điểm này 5.3.</p>\r\n<h3>Demo:</h3>\r\n<p>Homepage: <a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n<p>Admin: <a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n<p>Account: botble - 159357</p>\r\n<p> </p>\r\n<h3>Cấu trúc thư mục:</h3>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" alt=\"core\" /></p>\r\n<p>Botble version 2 đã được tổ chức thành từng module theo dạng HMVC và nằm hoàn toàn trong thư mục /core. Những thư mục khác hầu hết được giữ nguyên hiện trạng như bản cài mới laravel. Điều này giúp dễ dàng hơn trong việc cập nhật, nâng cấp sau này.</p>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" alt=\"theme\" /></p>\r\n<p>Tách biệt thư mục theme và chuẩn cấu trúc theme.</p>\r\n<p> </p>\r\n<p>Mình xin nói sơ qua một số tính năng mới trong bản này.</p>\r\n<ol>\r\n<li>\r\n<h3>Hỗ trợ cài đặt.</h3>\r\n</li>\r\n</ol>\r\n<p>Nhiều người gặp khó khăn trong việc cài đặt Botble, đa số đó là những người mới làm quen laravel. Vì vậy mình đã viết 1 đoạn script để hỗ trợ cài đặt nhanh chóng qua command line.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<h3>2. Tạo 1 module/plugin mới một cách nhanh chóng với CRUD và permissions.</h3>\r\n<p><iframe src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Việc loại bỏ 1 module không cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Do hơi bận rộn nên mình chỉ có thể quay một số video hướng dẫn trên, sẽ bổ sung sau :D</p>\r\n<h3>3. Theme mới</h3>\r\n<p>Trong bản cập nhật này, nhờ sự giúp đỡ của bạn <a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đã được khoác lên bộ áo mới mà mình đánh giá là đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n<p>Một số hình ảnh:</p>\r\n<p><img src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>4. Quản lý plugin</h3>\r\n<p><img src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n<p>Như các bạn đã biết, Wordpress có rất nhiều tính năng hay. Vì vậy mình đã áp dụng Filter, Action hook và Metabox vào Botble để có thể dễ dàng hơn cho các bạn can thiệp vào core sau này.</p>\r\n<h3>Kết luận:</h3>\r\n<p>Trên đây là một số tính năng mới của Botble version 2.0, hi vọng các bạn cảm thấy hứng thú với CMS này.</p>\r\n<p>Các bạn có thể mua ủng hộ mình trên Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc liên hệ trực tiếp với mình qua skype live:minsang2603 để được hỗ trợ.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7998125906-4489ed8a2f-b-660x330.jpg', 0, NULL, '2018-04-13 09:41:28', '2019-09-13 17:03:27'),
(50, 'Xây dựng website một cách nhanh chóng', 'Nội dung mô tả', '<p>Hi mọi người,  dạo gần đây mình không viết blog mới vì tập trung phát triển Botble CMS. Sau bao cố gắng thì hôm nay mình đã có thể release version 2.0 với nhiều tính năng mới.</p>\r\n<p>Ở bản 1.0, mình cảm thấy nó có quá nhiều tính năng phức tạp, chỉ phù hợp với hệ thống lớn mà đa số các website nhỏ không cần đến, vì vậy mình đã đơn giản bớt đi trong phần này và tập trung làm sao cho Botble CMS dễ sử dụng nhất.</p>\r\n<p>Botble CMS đang sử dụng Laravel phiên bản mới nhất tại thời điểm này 5.3.</p>\r\n<h3>Demo:</h3>\r\n<p>Homepage: <a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n<p>Admin: <a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n<p>Account: botble - 159357</p>\r\n<p> </p>\r\n<h3>Cấu trúc thư mục:</h3>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" alt=\"core\" /></p>\r\n<p>Botble version 2 đã được tổ chức thành từng module theo dạng HMVC và nằm hoàn toàn trong thư mục /core. Những thư mục khác hầu hết được giữ nguyên hiện trạng như bản cài mới laravel. Điều này giúp dễ dàng hơn trong việc cập nhật, nâng cấp sau này.</p>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" alt=\"theme\" /></p>\r\n<p>Tách biệt thư mục theme và chuẩn cấu trúc theme.</p>\r\n<p> </p>\r\n<p>Mình xin nói sơ qua một số tính năng mới trong bản này.</p>\r\n<ol>\r\n<li>\r\n<h3>Hỗ trợ cài đặt.</h3>\r\n</li>\r\n</ol>\r\n<p>Nhiều người gặp khó khăn trong việc cài đặt Botble, đa số đó là những người mới làm quen laravel. Vì vậy mình đã viết 1 đoạn script để hỗ trợ cài đặt nhanh chóng qua command line.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<h3>2. Tạo 1 module/plugin mới một cách nhanh chóng với CRUD và permissions.</h3>\r\n<p><iframe src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Việc loại bỏ 1 module không cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Do hơi bận rộn nên mình chỉ có thể quay một số video hướng dẫn trên, sẽ bổ sung sau :D</p>\r\n<h3>3. Theme mới</h3>\r\n<p>Trong bản cập nhật này, nhờ sự giúp đỡ của bạn <a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đã được khoác lên bộ áo mới mà mình đánh giá là đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n<p>Một số hình ảnh:</p>\r\n<p><img src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>4. Quản lý plugin</h3>\r\n<p><img src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n<p>Như các bạn đã biết, Wordpress có rất nhiều tính năng hay. Vì vậy mình đã áp dụng Filter, Action hook và Metabox vào Botble để có thể dễ dàng hơn cho các bạn can thiệp vào core sau này.</p>\r\n<h3>Kết luận:</h3>\r\n<p>Trên đây là một số tính năng mới của Botble version 2.0, hi vọng các bạn cảm thấy hứng thú với CMS này.</p>\r\n<p>Các bạn có thể mua ủng hộ mình trên Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc liên hệ trực tiếp với mình qua skype live:minsang2603 để được hỗ trợ.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1476890033-hero03.jpg', 0, NULL, '2018-04-13 09:42:20', '2019-09-13 17:03:27'),
(51, 'Sản phẩm trí tuệ Việt Nam', 'Mô tả', '<p>Hi mọi người,  dạo gần đây mình không viết blog mới vì tập trung phát triển Botble CMS. Sau bao cố gắng thì hôm nay mình đã có thể release version 2.0 với nhiều tính năng mới.</p>\r\n<p>Ở bản 1.0, mình cảm thấy nó có quá nhiều tính năng phức tạp, chỉ phù hợp với hệ thống lớn mà đa số các website nhỏ không cần đến, vì vậy mình đã đơn giản bớt đi trong phần này và tập trung làm sao cho Botble CMS dễ sử dụng nhất.</p>\r\n<p>Botble CMS đang sử dụng Laravel phiên bản mới nhất tại thời điểm này 5.3.</p>\r\n<h3>Demo:</h3>\r\n<p>Homepage: <a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n<p>Admin: <a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n<p>Account: botble - 159357</p>\r\n<p> </p>\r\n<h3>Cấu trúc thư mục:</h3>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" alt=\"core\" /></p>\r\n<p>Botble version 2 đã được tổ chức thành từng module theo dạng HMVC và nằm hoàn toàn trong thư mục /core. Những thư mục khác hầu hết được giữ nguyên hiện trạng như bản cài mới laravel. Điều này giúp dễ dàng hơn trong việc cập nhật, nâng cấp sau này.</p>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" alt=\"theme\" /></p>\r\n<p>Tách biệt thư mục theme và chuẩn cấu trúc theme.</p>\r\n<p> </p>\r\n<p>Mình xin nói sơ qua một số tính năng mới trong bản này.</p>\r\n<ol>\r\n<li>\r\n<h3>Hỗ trợ cài đặt.</h3>\r\n</li>\r\n</ol>\r\n<p>Nhiều người gặp khó khăn trong việc cài đặt Botble, đa số đó là những người mới làm quen laravel. Vì vậy mình đã viết 1 đoạn script để hỗ trợ cài đặt nhanh chóng qua command line.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<h3>2. Tạo 1 module/plugin mới một cách nhanh chóng với CRUD và permissions.</h3>\r\n<p><iframe src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Việc loại bỏ 1 module không cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Do hơi bận rộn nên mình chỉ có thể quay một số video hướng dẫn trên, sẽ bổ sung sau :D</p>\r\n<h3>3. Theme mới</h3>\r\n<p>Trong bản cập nhật này, nhờ sự giúp đỡ của bạn <a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đã được khoác lên bộ áo mới mà mình đánh giá là đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n<p>Một số hình ảnh:</p>\r\n<p><img src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>4. Quản lý plugin</h3>\r\n<p><img src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n<p>Như các bạn đã biết, Wordpress có rất nhiều tính năng hay. Vì vậy mình đã áp dụng Filter, Action hook và Metabox vào Botble để có thể dễ dàng hơn cho các bạn can thiệp vào core sau này.</p>\r\n<h3>Kết luận:</h3>\r\n<p>Trên đây là một số tính năng mới của Botble version 2.0, hi vọng các bạn cảm thấy hứng thú với CMS này.</p>\r\n<p>Các bạn có thể mua ủng hộ mình trên Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc liên hệ trực tiếp với mình qua skype live:minsang2603 để được hỗ trợ.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/1476891198-04.jpg', 1, NULL, '2018-04-13 09:43:09', '2020-06-09 09:19:17');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(52, 'Cuộc sống tuổi 30', 'Cuộc sống tuổi 30', '<p>Hi mọi người,  dạo gần đây mình không viết blog mới vì tập trung phát triển Botble CMS. Sau bao cố gắng thì hôm nay mình đã có thể release version 2.0 với nhiều tính năng mới.</p>\r\n<p>Ở bản 1.0, mình cảm thấy nó có quá nhiều tính năng phức tạp, chỉ phù hợp với hệ thống lớn mà đa số các website nhỏ không cần đến, vì vậy mình đã đơn giản bớt đi trong phần này và tập trung làm sao cho Botble CMS dễ sử dụng nhất.</p>\r\n<p>Botble CMS đang sử dụng Laravel phiên bản mới nhất tại thời điểm này 5.3.</p>\r\n<h3>Demo:</h3>\r\n<p>Homepage: <a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n<p>Admin: <a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n<p>Account: botble - 159357</p>\r\n<p> </p>\r\n<h3>Cấu trúc thư mục:</h3>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" alt=\"core\" /></p>\r\n<p>Botble version 2 đã được tổ chức thành từng module theo dạng HMVC và nằm hoàn toàn trong thư mục /core. Những thư mục khác hầu hết được giữ nguyên hiện trạng như bản cài mới laravel. Điều này giúp dễ dàng hơn trong việc cập nhật, nâng cấp sau này.</p>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" alt=\"theme\" /></p>\r\n<p>Tách biệt thư mục theme và chuẩn cấu trúc theme.</p>\r\n<p> </p>\r\n<p>Mình xin nói sơ qua một số tính năng mới trong bản này.</p>\r\n<ol>\r\n<li>\r\n<h3>Hỗ trợ cài đặt.</h3>\r\n</li>\r\n</ol>\r\n<p>Nhiều người gặp khó khăn trong việc cài đặt Botble, đa số đó là những người mới làm quen laravel. Vì vậy mình đã viết 1 đoạn script để hỗ trợ cài đặt nhanh chóng qua command line.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<h3>2. Tạo 1 module/plugin mới một cách nhanh chóng với CRUD và permissions.</h3>\r\n<p><iframe src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Việc loại bỏ 1 module không cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Do hơi bận rộn nên mình chỉ có thể quay một số video hướng dẫn trên, sẽ bổ sung sau :D</p>\r\n<h3>3. Theme mới</h3>\r\n<p>Trong bản cập nhật này, nhờ sự giúp đỡ của bạn <a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đã được khoác lên bộ áo mới mà mình đánh giá là đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n<p>Một số hình ảnh:</p>\r\n<p><img src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>4. Quản lý plugin</h3>\r\n<p><img src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n<p>Như các bạn đã biết, Wordpress có rất nhiều tính năng hay. Vì vậy mình đã áp dụng Filter, Action hook và Metabox vào Botble để có thể dễ dàng hơn cho các bạn can thiệp vào core sau này.</p>\r\n<h3>Kết luận:</h3>\r\n<p>Trên đây là một số tính năng mới của Botble version 2.0, hi vọng các bạn cảm thấy hứng thú với CMS này.</p>\r\n<p>Các bạn có thể mua ủng hộ mình trên Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc liên hệ trực tiếp với mình qua skype live:minsang2603 để được hỗ trợ.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1476890029-hero01.jpg', 0, NULL, '2018-04-13 10:02:20', '2019-09-13 17:03:27'),
(53, 'Hành trình tìm kiếm sự khác biệt', 'Hành trình tìm kiếm sự khác biệt', '<p>Hi mọi người,  dạo gần đây mình không viết blog mới vì tập trung phát triển Botble CMS. Sau bao cố gắng thì hôm nay mình đã có thể release version 2.0 với nhiều tính năng mới.</p>\r\n<p>Ở bản 1.0, mình cảm thấy nó có quá nhiều tính năng phức tạp, chỉ phù hợp với hệ thống lớn mà đa số các website nhỏ không cần đến, vì vậy mình đã đơn giản bớt đi trong phần này và tập trung làm sao cho Botble CMS dễ sử dụng nhất.</p>\r\n<p>Botble CMS đang sử dụng Laravel phiên bản mới nhất tại thời điểm này 5.3.</p>\r\n<h3>Demo:</h3>\r\n<p>Homepage: <a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n<p>Admin: <a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n<p>Account: botble - 159357</p>\r\n<p> </p>\r\n<h3>Cấu trúc thư mục:</h3>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" alt=\"core\" /></p>\r\n<p>Botble version 2 đã được tổ chức thành từng module theo dạng HMVC và nằm hoàn toàn trong thư mục /core. Những thư mục khác hầu hết được giữ nguyên hiện trạng như bản cài mới laravel. Điều này giúp dễ dàng hơn trong việc cập nhật, nâng cấp sau này.</p>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" alt=\"theme\" /></p>\r\n<p>Tách biệt thư mục theme và chuẩn cấu trúc theme.</p>\r\n<p> </p>\r\n<p>Mình xin nói sơ qua một số tính năng mới trong bản này.</p>\r\n<ol>\r\n<li>\r\n<h3>Hỗ trợ cài đặt.</h3>\r\n</li>\r\n</ol>\r\n<p>Nhiều người gặp khó khăn trong việc cài đặt Botble, đa số đó là những người mới làm quen laravel. Vì vậy mình đã viết 1 đoạn script để hỗ trợ cài đặt nhanh chóng qua command line.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<h3>2. Tạo 1 module/plugin mới một cách nhanh chóng với CRUD và permissions.</h3>\r\n<p><iframe src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Việc loại bỏ 1 module không cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Do hơi bận rộn nên mình chỉ có thể quay một số video hướng dẫn trên, sẽ bổ sung sau :D</p>\r\n<h3>3. Theme mới</h3>\r\n<p>Trong bản cập nhật này, nhờ sự giúp đỡ của bạn <a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đã được khoác lên bộ áo mới mà mình đánh giá là đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n<p>Một số hình ảnh:</p>\r\n<p><img src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>4. Quản lý plugin</h3>\r\n<p><img src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n<p>Như các bạn đã biết, Wordpress có rất nhiều tính năng hay. Vì vậy mình đã áp dụng Filter, Action hook và Metabox vào Botble để có thể dễ dàng hơn cho các bạn can thiệp vào core sau này.</p>\r\n<h3>Kết luận:</h3>\r\n<p>Trên đây là một số tính năng mới của Botble version 2.0, hi vọng các bạn cảm thấy hứng thú với CMS này.</p>\r\n<p>Các bạn có thể mua ủng hộ mình trên Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc liên hệ trực tiếp với mình qua skype live:minsang2603 để được hỗ trợ.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1476891195-02.jpg', 0, NULL, '2018-04-13 10:02:59', '2019-09-13 17:03:28'),
(54, 'Thế giới động vật muôn màu', 'Thế giới động vật muôn màu', '<p>Hi mọi người,  dạo gần đây mình không viết blog mới vì tập trung phát triển Botble CMS. Sau bao cố gắng thì hôm nay mình đã có thể release version 2.0 với nhiều tính năng mới.</p>\r\n<p>Ở bản 1.0, mình cảm thấy nó có quá nhiều tính năng phức tạp, chỉ phù hợp với hệ thống lớn mà đa số các website nhỏ không cần đến, vì vậy mình đã đơn giản bớt đi trong phần này và tập trung làm sao cho Botble CMS dễ sử dụng nhất.</p>\r\n<p>Botble CMS đang sử dụng Laravel phiên bản mới nhất tại thời điểm này 5.3.</p>\r\n<h3>Demo:</h3>\r\n<p>Homepage: <a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n<p>Admin: <a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n<p>Account: botble - 159357</p>\r\n<p> </p>\r\n<h3>Cấu trúc thư mục:</h3>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" alt=\"core\" /></p>\r\n<p>Botble version 2 đã được tổ chức thành từng module theo dạng HMVC và nằm hoàn toàn trong thư mục /core. Những thư mục khác hầu hết được giữ nguyên hiện trạng như bản cài mới laravel. Điều này giúp dễ dàng hơn trong việc cập nhật, nâng cấp sau này.</p>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" alt=\"theme\" /></p>\r\n<p>Tách biệt thư mục theme và chuẩn cấu trúc theme.</p>\r\n<p> </p>\r\n<p>Mình xin nói sơ qua một số tính năng mới trong bản này.</p>\r\n<ol>\r\n<li>\r\n<h3>Hỗ trợ cài đặt.</h3>\r\n</li>\r\n</ol>\r\n<p>Nhiều người gặp khó khăn trong việc cài đặt Botble, đa số đó là những người mới làm quen laravel. Vì vậy mình đã viết 1 đoạn script để hỗ trợ cài đặt nhanh chóng qua command line.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<h3>2. Tạo 1 module/plugin mới một cách nhanh chóng với CRUD và permissions.</h3>\r\n<p><iframe src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Việc loại bỏ 1 module không cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Do hơi bận rộn nên mình chỉ có thể quay một số video hướng dẫn trên, sẽ bổ sung sau :D</p>\r\n<h3>3. Theme mới</h3>\r\n<p>Trong bản cập nhật này, nhờ sự giúp đỡ của bạn <a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đã được khoác lên bộ áo mới mà mình đánh giá là đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n<p>Một số hình ảnh:</p>\r\n<p><img src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>4. Quản lý plugin</h3>\r\n<p><img src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n<p>Như các bạn đã biết, Wordpress có rất nhiều tính năng hay. Vì vậy mình đã áp dụng Filter, Action hook và Metabox vào Botble để có thể dễ dàng hơn cho các bạn can thiệp vào core sau này.</p>\r\n<h3>Kết luận:</h3>\r\n<p>Trên đây là một số tính năng mới của Botble version 2.0, hi vọng các bạn cảm thấy hứng thú với CMS này.</p>\r\n<p>Các bạn có thể mua ủng hộ mình trên Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc liên hệ trực tiếp với mình qua skype live:minsang2603 để được hỗ trợ.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7717834982-bbd7e12b8c-b-660x330.jpg', 0, NULL, '2018-04-13 10:03:46', '2019-09-13 17:03:28'),
(55, 'Đi tìm hồi ức tuổi thơ', 'Đi tìm hồi ức tuổi thơ', '<p>Hi mọi người,  dạo gần đây mình không viết blog mới vì tập trung phát triển Botble CMS. Sau bao cố gắng thì hôm nay mình đã có thể release version 2.0 với nhiều tính năng mới.</p>\r\n<p>Ở bản 1.0, mình cảm thấy nó có quá nhiều tính năng phức tạp, chỉ phù hợp với hệ thống lớn mà đa số các website nhỏ không cần đến, vì vậy mình đã đơn giản bớt đi trong phần này và tập trung làm sao cho Botble CMS dễ sử dụng nhất.</p>\r\n<p>Botble CMS đang sử dụng Laravel phiên bản mới nhất tại thời điểm này 5.3.</p>\r\n<h3>Demo:</h3>\r\n<p>Homepage: <a href=\"http://cms.botble.com/\">http://cms.botble.com</a></p>\r\n<p>Admin: <a href=\"http://cms.botble.com/admin\">http://cms.botble.com/admin</a></p>\r\n<p>Account: botble - 159357</p>\r\n<p> </p>\r\n<h3>Cấu trúc thư mục:</h3>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png\" alt=\"core\" /></p>\r\n<p>Botble version 2 đã được tổ chức thành từng module theo dạng HMVC và nằm hoàn toàn trong thư mục /core. Những thư mục khác hầu hết được giữ nguyên hiện trạng như bản cài mới laravel. Điều này giúp dễ dàng hơn trong việc cập nhật, nâng cấp sau này.</p>\r\n<p><img src=\"http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png\" alt=\"theme\" /></p>\r\n<p>Tách biệt thư mục theme và chuẩn cấu trúc theme.</p>\r\n<p> </p>\r\n<p>Mình xin nói sơ qua một số tính năng mới trong bản này.</p>\r\n<ol>\r\n<li>\r\n<h3>Hỗ trợ cài đặt.</h3>\r\n</li>\r\n</ol>\r\n<p>Nhiều người gặp khó khăn trong việc cài đặt Botble, đa số đó là những người mới làm quen laravel. Vì vậy mình đã viết 1 đoạn script để hỗ trợ cài đặt nhanh chóng qua command line.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<h3>2. Tạo 1 module/plugin mới một cách nhanh chóng với CRUD và permissions.</h3>\r\n<p><iframe src=\"https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Việc loại bỏ 1 module không cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/jmex2G4eC18?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\"></iframe></p>\r\n<p> </p>\r\n<p>Do hơi bận rộn nên mình chỉ có thể quay một số video hướng dẫn trên, sẽ bổ sung sau :D</p>\r\n<h3>3. Theme mới</h3>\r\n<p>Trong bản cập nhật này, nhờ sự giúp đỡ của bạn <a href=\"http://nghiadev.com/\">Minh Nghĩa</a>, Botble front page đã được khoác lên bộ áo mới mà mình đánh giá là đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n<p>Một số hình ảnh:</p>\r\n<p><img src=\"https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no\" alt=\"\" /></p>\r\n<p><img src=\"https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>4. Quản lý plugin</h3>\r\n<p><img src=\"https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no\" alt=\"\" /></p>\r\n<p> </p>\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n<p>Như các bạn đã biết, Wordpress có rất nhiều tính năng hay. Vì vậy mình đã áp dụng Filter, Action hook và Metabox vào Botble để có thể dễ dàng hơn cho các bạn can thiệp vào core sau này.</p>\r\n<h3>Kết luận:</h3>\r\n<p>Trên đây là một số tính năng mới của Botble version 2.0, hi vọng các bạn cảm thấy hứng thú với CMS này.</p>\r\n<p>Các bạn có thể mua ủng hộ mình trên Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc liên hệ trực tiếp với mình qua skype live:minsang2603 để được hỗ trợ.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1476890036-hero05.jpg', 0, NULL, '2018-04-13 10:06:40', '2019-09-13 17:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(14, 1, 3),
(37, 1, 1),
(48, 1, 2),
(94, 1, 22),
(162, 8, 22),
(164, 6, 23),
(165, 9, 26),
(166, 7, 27),
(167, 7, 28),
(168, 8, 29),
(171, 7, 30),
(172, 8, 31),
(173, 6, 37),
(175, 8, 38),
(176, 7, 39),
(177, 8, 40),
(179, 9, 41),
(181, 7, 42),
(186, 8, 43),
(252, 11, 10),
(255, 11, 13),
(262, 1, 20),
(263, 1, 21),
(265, 7, 45),
(266, 7, 47),
(267, 6, 46),
(279, 1, 8),
(280, 11, 9),
(287, 6, 6),
(289, 1, 5),
(290, 1, 7),
(295, 8, 17),
(302, 6, 18),
(303, 7, 16),
(306, 8, 15),
(308, 1, 19),
(310, 9, 14),
(313, 11, 12),
(314, 9, 11),
(315, 6, 4),
(316, 16, 44),
(318, 17, 48),
(320, 13, 49),
(322, 15, 50),
(333, 15, 51),
(334, 13, 52),
(336, 13, 53),
(337, 16, 53),
(341, 13, 54),
(342, 16, 55);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_id`, `post_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 1),
(4, 4, 1),
(5, 1, 1),
(6, 5, 6),
(7, 6, 6),
(8, 5, 8),
(9, 6, 8),
(10, 5, 9),
(11, 6, 9),
(12, 5, 10),
(13, 6, 10),
(14, 5, 11),
(15, 6, 11),
(16, 5, 12),
(17, 6, 12),
(18, 5, 13),
(19, 6, 13),
(20, 5, 14),
(21, 6, 14),
(22, 5, 15),
(23, 6, 15),
(24, 5, 16),
(25, 6, 16),
(26, 5, 17),
(27, 6, 17),
(28, 5, 18),
(29, 6, 18),
(30, 5, 19),
(31, 6, 19),
(32, 5, 20),
(33, 6, 20),
(34, 5, 21),
(35, 6, 21),
(36, 7, 22),
(40, 7, 5),
(41, 7, 7),
(42, 7, 49),
(43, 8, 50),
(44, 9, 50),
(92, 10, 51),
(93, 12, 51),
(94, 16, 51),
(95, 17, 51),
(96, 19, 51),
(97, 23, 51);

-- --------------------------------------------------------

--
-- Table structure for table `request_logs`
--

CREATE TABLE `request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_logs`
--

INSERT INTO `request_logs` (`id`, `status_code`, `url`, `count`, `user_id`, `referrer`, `created_at`, `updated_at`) VALUES
(1, 404, 'http://localhost:8000/storage/news/1476890031-hero02-560x380.jpg', 10, NULL, NULL, '2020-06-09 08:53:16', '2020-06-09 09:11:40'),
(2, 404, 'http://localhost:8000/themes/newstv/images/bg/bg_trans20.png', 21, NULL, NULL, '2020-06-09 08:53:16', '2020-06-09 09:21:55'),
(3, 404, 'http://localhost:8000/themes/newstv/css/red.css.map', 4, NULL, NULL, '2020-06-09 08:54:01', '2020-06-09 09:14:55'),
(4, 404, 'http://localhost:8000/storage/themes/newstv/assets/images/banner.png', 2, NULL, NULL, '2020-06-09 09:15:47', '2020-06-09 09:15:58'),
(5, 404, 'http://localhost:8000/storage/news/1476890036-hero05-560x380.jpg', 3, NULL, NULL, '2020-06-09 09:15:47', '2020-06-09 09:16:54');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Blog\\Models\\Post', 44, 1, 'featured', '0', '1', '2018-04-13 09:38:58', '2018-04-13 09:38:58'),
(2, 'Botble\\Blog\\Models\\Post', 48, 1, 'image', NULL, 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/news/lock-660x330.jpg', '2018-04-13 09:40:18', '2018-04-13 09:40:18'),
(3, 'Botble\\Blog\\Models\\Post', 49, 1, 'featured', '0', '1', '2018-04-13 09:41:32', '2018-04-13 09:41:32'),
(4, 'Botble\\Blog\\Models\\Post', 50, 1, 'featured', '0', '1', '2018-04-13 09:42:27', '2018-04-13 09:42:27'),
(5, 'Botble\\Blog\\Models\\Post', 54, 1, 'featured', '1', '0', '2018-04-13 10:04:12', '2018-04-13 10:04:12'),
(6, 'Botble\\Blog\\Models\\Post', 54, 1, 'featured', '0', '1', '2018-04-13 10:04:20', '2018-04-13 10:04:20'),
(7, 'Botble\\Page\\Models\\Page', 17, 1, 'description', 'Đây là trang liên hệ', NULL, '2020-03-10 19:33:16', '2020-03-10 19:33:16');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'administrators', 'Administrators', '{\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"backups.list\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.delete\":true,\"block.list\":true,\"block.create\":true,\"block.edit\":true,\"block.delete\":true,\"categories.list\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.delete\":true,\"contacts.list\":true,\"contacts.create\":true,\"contacts.edit\":true,\"contacts.delete\":true,\"custom-fields.list\":true,\"custom-fields.create\":true,\"custom-fields.edit\":true,\"custom-fields.delete\":true,\"dashboard.index\":true,\"galleries.list\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.delete\":true,\"languages.list\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.delete\":true,\"logs.list\":true,\"logs.delete\":true,\"media.index\":true,\"files.list\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.delete\":true,\"folders.list\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.delete\":true,\"member.list\":true,\"member.create\":true,\"member.edit\":true,\"member.delete\":true,\"menus.list\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.delete\":true,\"pages.list\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.delete\":true,\"plugins.list\":true,\"posts.list\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.delete\":true,\"roles.list\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.delete\":true,\"settings.options\":true,\"tags.list\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.delete\":true,\"translations.list\":true,\"translations.create\":true,\"translations.edit\":true,\"translations.delete\":true,\"users.list\":true,\"users.create\":true,\"users.edit\":true,\"users.delete\":true,\"widgets.list\":true}', 'Highest role in system', 0, 1, 1, '2018-01-17 18:00:45', '2018-03-14 21:49:45'),
(2, 'members', 'Members', '{\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"block.list\":true,\"block.create\":true,\"block.edit\":true,\"block.delete\":true,\"categories.list\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.delete\":true,\"contacts.list\":true,\"contacts.create\":true,\"contacts.edit\":true,\"contacts.delete\":true,\"custom-fields.list\":true,\"custom-fields.create\":true,\"custom-fields.edit\":true,\"custom-fields.delete\":true,\"dashboard.index\":true,\"galleries.list\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.delete\":true,\"media.index\":true,\"files.list\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.delete\":true,\"folders.list\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.delete\":true,\"menus.list\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.delete\":true,\"pages.list\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.delete\":true,\"posts.list\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.delete\":true,\"tags.list\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.delete\":true}', 'Member role', 1, 1, 1, '2018-01-17 18:01:32', '2018-03-14 21:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(3, 1, 1, '2018-01-18 08:11:34', '2018-01-18 08:11:34');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'site_title', 'PHP platform based on Laravel Framework'),
(2, 'copyright', '© 2016 Botble Technologies. All right reserved. Designed by <a href=\"http://nghiadev.com\" target=\"_blank\">Nghia Minh</a>'),
(3, 'admin_email', 'botble.cms@gmail.com'),
(6, 'seo_title', 'Botble Platform'),
(7, 'seo_description', 'Botble Platform - PHP platform base on Laravel Framework'),
(8, 'seo_keywords', 'botble, botble team, botble platform, php platform, php framework, web development'),
(9, 'contact_address', 'Elinext Building, 37 Phan Xich Long, ward 3, Phu Nhuan district, Ho Chi Minh, Vietnam'),
(10, 'contact_email', 'sangnguyenplus@gmail.com'),
(11, 'email_support', 'sangnguyenplus@gmail.com'),
(12, 'contact_phone', '+84988606928'),
(13, 'contact_hotline', '+84988606928'),
(14, 'enable_captcha', '0'),
(15, 'about', '<p>Content here</p>\r\n'),
(16, 'show_admin_bar', '1'),
(17, 'theme', 'newstv'),
(18, 'enable_change_admin_theme', '1'),
(19, 'enable_multi_language_in_admin', '1'),
(20, 'enable_https', '0'),
(21, 'google_plus', 'https://plus.google.com'),
(22, 'facebook', 'https://www.facebook.com/botble.technologies'),
(23, 'twitter', 'https://twitter.com/botble'),
(24, 'enable_cache', '0'),
(25, 'cache_time', '10'),
(26, 'cache_time_site_map', '3600'),
(27, 'language_hide_default', '1'),
(28, 'language_switcher_display', 'dropdown'),
(29, 'language_display', 'all'),
(30, 'language_hide_languages', '[]'),
(31, 'theme-ripple-site_title', 'Botble Technologies'),
(34, 'theme-ripple-copyright', '© 2019 Botble Technologies. All right reserved. Designed by Nghia Minh.'),
(35, 'theme-newstv-copyright', '© Copyright 2017 Botble Technologies. All Rights Reserved.'),
(36, 'theme-newstv-theme_color', 'red'),
(38, 'theme-newstv-logo', 'https://s3-ap-southeast-1.amazonaws.com/botble/cms/logo/logo.png'),
(39, 'rich_editor', 'ckeditor'),
(41, 'admin_title', 'Botble Technologies'),
(44, 'activated_plugins', '[\"analytics\",\"audit-log\",\"backup\",\"captcha\",\"log-viewer\",\"language\",\"request-log\",\"social-login\",\"block\",\"custom-field\",\"member\",\"contact\",\"blog\",\"gallery\",\"translation\"]'),
(45, 'theme-ripple-vi-copyright', '© 2019 Botble Technologies. Tất cả quyền đã được bảo hộ. Thiết kế bởi Minh Nghĩa.'),
(47, 'theme-newstv-vi-copyright', '© 2017 Botble Technologies. Tất cả quyền đã được bảo hộ.'),
(48, 'theme-newstv-vi-theme_color', 'red'),
(49, 'theme-newstv-vi-top_banner', '/themes/newstv/assets/images/banner.png'),
(51, 'time_zone', 'UTC'),
(52, 'optimize_page_speed_enable', '0'),
(53, 'enable_send_error_reporting_via_email', '1'),
(54, 'default_admin_theme', 'default'),
(55, 'cache_admin_menu_enable', '1'),
(56, 'language_show_default_item_if_current_version_not_existed', '1'),
(57, 'show_site_name', '0'),
(62, 'captcha_site_key', 'no-captcha-site-key'),
(63, 'captcha_secret', 'no-captcha-secret'),
(64, 'social_utilities_enable', '1'),
(85, 'submit', 'save'),
(106, 'social_utilities_facebook_url', 'botble.technologies'),
(107, 'social_utilities_twitter_url', 'sangnguyen2603'),
(108, 'social_utilities_google-plus_url', 'sangnguyen2603'),
(109, 'social_utilities_linkedin_url', 'sangnguyen2603'),
(110, 'social_utilities_pinterest_url', 'sangnguyen2603'),
(111, 'theme-ripple-show_site_name', '0'),
(112, 'theme-ripple-seo_title', 'Botble Technologies'),
(113, 'theme-ripple-seo_description', 'Botble Platform - PHP platform base on Laravel Framework'),
(118, 'theme-ripple-primary_font', 'Poppins'),
(120, 'theme-ripple-vi-site_title', 'PHP platform based on Laravel Framework'),
(121, 'theme-ripple-vi-show_site_name', '0'),
(122, 'theme-ripple-vi-seo_title', 'Botble Technologies'),
(124, 'theme-ripple-vi-primary_font', 'Roboto'),
(126, 'theme-ripple-vi-seo_description', 'PHP platform based on Laravel Framework'),
(138, 'theme-newstv-site_title', 'Botble Technologies'),
(139, 'theme-newstv-show_site_name', '0'),
(140, 'theme-newstv-seo_title', 'Botble Technologies'),
(142, 'theme-newstv-top_banner', 'ads/728x90.jpg'),
(143, 'theme-ripple-site_description', 'A young team in Vietnam'),
(144, 'theme-ripple-address', 'Go Vap District, HCM City, Vietnam'),
(145, 'theme-ripple-website', 'https://botble.com'),
(146, 'theme-ripple-contact_email', 'botble.cms@gmail.com'),
(151, 'theme-ripple-vi-site_description', 'Một nhóm trẻ tại Việt Nam'),
(152, 'theme-ripple-vi-address', 'Quận Gò Vấp, TP. Hồ Chí Minh, Việt Nam'),
(153, 'theme-ripple-vi-website', 'https://botble.com'),
(154, 'theme-ripple-vi-contact_email', 'botble.cms@gmail.com'),
(159, 'membership_authorization_at', '2020-06-09 15:39:52'),
(160, 'theme-ripple-favicon', 'logo/facebook.png'),
(161, 'theme-ripple-logo', ''),
(162, 'theme-ripple-facebook', ''),
(163, 'theme-ripple-twitter', ''),
(164, 'theme-ripple-youtube', '');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `created_at`, `updated_at`, `prefix`) VALUES
(1, '13000-people-have-bought-our-theme', 4, 'Botble\\Blog\\Models\\Post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(2, 'top-search-engine-optimization-strategies', 5, 'Botble\\Blog\\Models\\Post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(3, 'which-company-would-you-choose', 6, 'Botble\\Blog\\Models\\Post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(4, 'used-car-dealer-sales-tricks-exposed', 7, 'Botble\\Blog\\Models\\Post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(5, '20-ways-to-sell-your-product-faster', 8, 'Botble\\Blog\\Models\\Post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(6, 'the-secrets-of-rich-and-famous-writers', 9, 'Botble\\Blog\\Models\\Post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(7, 'imagine-losing-20-pounds-in-14-days', 10, 'Botble\\Blog\\Models\\Post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(8, 'are-you-still-using-that-slow-old-typewriter', 11, 'Botble\\Blog\\Models\\Post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(9, 'a-skin-cream-thats-proven-to-work', 12, 'Botble\\Blog\\Models\\Post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(10, '10-reasons-to-start-your-own-profitable-website', 13, 'Botble\\Blog\\Models\\Post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(11, 'simple-ways-to-reduce', 14, 'Botble\\Blog\\Models\\Post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(12, 'apple-imac-with-retina-5k-display-review', 15, 'Botble\\Blog\\Models\\Post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(13, '10-reasons-to-start-your-own-profitable-website-1', 16, 'Botble\\Blog\\Models\\Post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(14, 'unlock-the-secrets-of-selling-high-ticket-items', 17, 'Botble\\Blog\\Models\\Post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(15, '10000-web-site-visitors-in-one-monthguaranteed', 18, 'Botble\\Blog\\Models\\Post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(16, 'are-you-still-using-that-slow-old-typewriter-1', 19, 'Botble\\Blog\\Models\\Post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(17, 'a-skin-cream-thats-proven-to-work-1', 20, 'Botble\\Blog\\Models\\Post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(18, 'top-search-engine-optimization-strategies-1', 21, 'Botble\\Blog\\Models\\Post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(19, '13000-nguoi-da-mua-theme-cua-chung-toi', 44, 'Botble\\Blog\\Models\\Post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(20, 'len-tren-cong-cu-tim-kiem-toi-uu-hoa-cac-chien-luoc', 45, 'Botble\\Blog\\Models\\Post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(21, 'ban-se-chon-cong-ty-nao', 46, 'Botble\\Blog\\Models\\Post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(22, 'su-dung-xe-dai-ly-ban-hang-tricks-xuc', 47, 'Botble\\Blog\\Models\\Post', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(23, 'uncategorized', 1, 'Botble\\Blog\\Models\\Category', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(24, 'events', 6, 'Botble\\Blog\\Models\\Category', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(25, 'projects', 7, 'Botble\\Blog\\Models\\Category', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(26, 'portfolio', 8, 'Botble\\Blog\\Models\\Category', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(27, 'business', 9, 'Botble\\Blog\\Models\\Category', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(28, 'resources', 10, 'Botble\\Blog\\Models\\Category', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(29, 'new-update', 11, 'Botble\\Blog\\Models\\Category', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(30, 'botble', 5, 'Botble\\Blog\\Models\\Tag', '2017-11-30 18:26:09', '2019-10-26 17:52:18', 'tag'),
(31, 'botble-cms', 6, 'Botble\\Blog\\Models\\Tag', '2017-11-30 18:26:09', '2019-10-26 17:52:18', 'tag'),
(32, 'contact', 1, 'Botble\\Page\\Models\\Page', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(33, 'lien-he', 17, 'Botble\\Page\\Models\\Page', '2017-11-30 18:26:09', '2017-11-30 18:26:09', ''),
(34, 'photography', 1, 'Botble\\Gallery\\Models\\Gallery', '2017-11-30 18:26:09', '2019-10-26 17:56:54', 'gallery'),
(35, 'selfie', 2, 'Botble\\Gallery\\Models\\Gallery', '2017-11-30 18:26:09', '2019-10-26 17:56:54', 'gallery'),
(36, 'new-day', 3, 'Botble\\Gallery\\Models\\Gallery', '2017-11-30 18:26:09', '2019-10-26 17:56:54', 'gallery'),
(37, 'morning', 4, 'Botble\\Gallery\\Models\\Gallery', '2017-11-30 18:26:09', '2019-10-26 17:56:54', 'gallery'),
(38, 'happy-day', 5, 'Botble\\Gallery\\Models\\Gallery', '2017-11-30 18:26:09', '2019-10-26 17:56:54', 'gallery'),
(39, 'perfect', 6, 'Botble\\Gallery\\Models\\Gallery', '2017-11-30 18:26:09', '2019-10-26 17:56:54', 'gallery'),
(40, 'chua-phan-loai', 12, 'Botble\\Blog\\Models\\Category', '2018-04-13 09:02:12', '2018-04-13 09:02:12', ''),
(41, 'su-kien', 13, 'Botble\\Blog\\Models\\Category', '2018-04-13 09:04:30', '2018-04-13 09:04:30', ''),
(42, 'doanh-nghiep', 14, 'Botble\\Blog\\Models\\Category', '2018-04-13 09:04:49', '2018-04-13 09:04:49', ''),
(43, 'tin-tuc-cap-nhat', 15, 'Botble\\Blog\\Models\\Category', '2018-04-13 09:05:06', '2018-04-13 09:05:06', ''),
(44, 'du-an', 16, 'Botble\\Blog\\Models\\Category', '2018-04-13 09:05:23', '2018-04-13 09:05:23', ''),
(45, 'dau-tu', 17, 'Botble\\Blog\\Models\\Category', '2018-04-13 09:06:44', '2018-04-13 09:06:44', ''),
(46, 'nguon-luc', 18, 'Botble\\Blog\\Models\\Category', '2018-04-13 09:08:01', '2018-04-13 09:08:01', ''),
(47, 'chien-luoc-phat-trien-phan-mem', 48, 'Botble\\Blog\\Models\\Post', '2018-04-13 09:40:11', '2018-04-13 09:40:11', ''),
(48, 'nen-tang-ma-nguon-mo-php', 49, 'Botble\\Blog\\Models\\Post', '2018-04-13 09:41:28', '2018-04-13 09:41:28', ''),
(49, 'nen-tang-ma-nguon-mo-php-1', 7, 'Botble\\Blog\\Models\\Tag', '2018-04-13 09:41:28', '2019-10-26 17:52:18', 'tag'),
(50, 'xay-dung-website-mot-cach-nhanh-chong', 50, 'Botble\\Blog\\Models\\Post', '2018-04-13 09:42:20', '2018-04-13 09:42:20', ''),
(51, 'xay-dung-website-mot-cach-nhanh-chong-1', 8, 'Botble\\Blog\\Models\\Tag', '2018-04-13 09:42:20', '2019-10-26 17:52:18', 'tag'),
(52, 'xay-dung-website-mot-cach-nhanh-chong-2', 9, 'Botble\\Blog\\Models\\Tag', '2018-04-13 09:42:20', '2019-10-26 17:52:18', 'tag'),
(53, 'san-pham-tri-tue-viet-nam', 51, 'Botble\\Blog\\Models\\Post', '2018-04-13 09:43:09', '2018-04-13 09:43:09', ''),
(54, 'san-pham-tri-tue-viet-nam-1', 10, 'Botble\\Blog\\Models\\Tag', '2018-04-13 09:43:09', '2019-10-26 17:52:18', 'tag'),
(55, 'tai-ve', 11, 'Botble\\Blog\\Models\\Tag', '2018-04-13 09:45:22', '2019-10-26 17:52:18', 'tag'),
(58, 'tag-su-kien', 24, 'Botble\\Blog\\Models\\Tag', '2018-04-13 09:59:52', '2019-10-26 17:52:18', 'tag'),
(59, 'popular', 25, 'Botble\\Blog\\Models\\Tag', '2018-04-13 10:00:35', '2019-10-26 17:52:18', 'tag'),
(60, 'cuoc-song-tuoi-30', 52, 'Botble\\Blog\\Models\\Post', '2018-04-13 10:02:20', '2018-04-13 10:02:20', ''),
(61, 'hanh-trinh-tim-kiem-su-khac-biet', 53, 'Botble\\Blog\\Models\\Post', '2018-04-13 10:02:59', '2018-04-13 10:02:59', ''),
(62, 'the-gioi-dong-vat-muon-mau', 54, 'Botble\\Blog\\Models\\Post', '2018-04-13 10:03:46', '2018-04-13 10:03:46', ''),
(63, 'di-tim-hoi-uc-tuoi-tho', 55, 'Botble\\Blog\\Models\\Post', '2018-04-13 10:06:40', '2018-04-13 10:06:40', ''),
(64, 'nhiep-anh', 7, 'Botble\\Gallery\\Models\\Gallery', '2018-05-11 07:44:54', '2019-10-26 17:56:54', 'gallery'),
(65, 'thien-nhien', 8, 'Botble\\Gallery\\Models\\Gallery', '2018-05-11 07:45:11', '2019-10-26 17:56:54', 'gallery'),
(66, 'ngay-moi', 9, 'Botble\\Gallery\\Models\\Gallery', '2018-05-11 07:45:36', '2019-10-26 17:56:54', 'gallery'),
(67, 'buoi-sang', 10, 'Botble\\Gallery\\Models\\Gallery', '2018-05-11 07:45:42', '2019-10-26 17:56:54', 'gallery'),
(68, 'ngay-hanh-phuc', 11, 'Botble\\Gallery\\Models\\Gallery', '2018-05-11 07:45:46', '2019-10-26 17:56:54', 'gallery'),
(69, 'hoan-hao', 12, 'Botble\\Gallery\\Models\\Gallery', '2018-05-11 07:45:51', '2019-10-26 17:56:54', 'gallery');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(5, 'download', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2016-08-02 21:38:34', '2016-09-27 09:30:37'),
(6, 'event', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2016-08-02 21:38:34', '2016-09-27 09:30:50'),
(7, 'nổi bật', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2018-04-13 09:41:28', '2018-04-13 10:00:09'),
(11, 'tải về', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2018-04-13 09:45:22', '2018-04-13 09:45:22'),
(24, 'sự kiện', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2018-04-13 09:59:52', '2018-04-13 09:59:52'),
(25, 'popular', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2018-04-13 10:00:35', '2018-04-13 10:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(2, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(3, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(4, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(5, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(6, 1, 'en', 'passwords', 'sent', 'We have emailed your password reset link!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(7, 1, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(8, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(9, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that email address.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(10, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(11, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(12, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(13, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(14, 1, 'en', 'validation', 'alpha', 'The :attribute may only contain letters.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(15, 1, 'en', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, dashes and underscores.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(16, 1, 'en', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(17, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(18, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(19, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(20, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(21, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(22, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(23, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(24, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(25, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(26, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(27, 1, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(28, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(29, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(30, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(31, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(32, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(33, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(34, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(35, 1, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(36, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(37, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(38, 1, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(39, 1, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(40, 1, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(41, 1, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(42, 1, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(43, 1, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal :value.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(44, 1, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal :value kilobytes.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(45, 1, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal :value characters.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(46, 1, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(47, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(48, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(49, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(50, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(51, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(52, 1, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(53, 1, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(54, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(55, 1, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(56, 1, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(57, 1, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(58, 1, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(59, 1, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal :value.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(60, 1, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal :value kilobytes.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(61, 1, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal :value characters.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(62, 1, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(63, 1, 'en', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(64, 1, 'en', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(65, 1, 'en', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(66, 1, 'en', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(67, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(68, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(69, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(70, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(71, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(72, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(73, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(74, 1, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(75, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(76, 1, 'en', 'validation', 'password', 'The password is incorrect.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(77, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(78, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(79, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(80, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(81, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(82, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(83, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(84, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(85, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(86, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(87, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(88, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(89, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(90, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(91, 1, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(92, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(93, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(94, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(95, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(96, 1, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(97, 1, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(98, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(99, 1, 'en', 'core/acl/api', 'api_clients', 'API Clients', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(100, 1, 'en', 'core/acl/api', 'create_new_client', 'Create new client', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(101, 1, 'en', 'core/acl/api', 'create_new_client_success', 'Create new client successfully!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(102, 1, 'en', 'core/acl/api', 'edit_client', 'Edit client \":name\"', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(103, 1, 'en', 'core/acl/api', 'edit_client_success', 'Updated client successfully!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(104, 1, 'en', 'core/acl/api', 'delete_success', 'Deleted client successfully!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(105, 1, 'en', 'core/acl/api', 'confirm_delete_title', 'Confirm delete client \":name\"', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(106, 1, 'en', 'core/acl/api', 'confirm_delete_description', 'Do you really want to delete client \":name\"?', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(107, 1, 'en', 'core/acl/api', 'cancel_delete', 'No', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(108, 1, 'en', 'core/acl/api', 'continue_delete', 'Yes, let\'s delete it!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(109, 1, 'en', 'core/acl/api', 'name', 'Name', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(110, 1, 'en', 'core/acl/api', 'cancel', 'Cancel', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(111, 1, 'en', 'core/acl/api', 'save', 'Save', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(112, 1, 'en', 'core/acl/api', 'edit', 'Edit', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(113, 1, 'en', 'core/acl/api', 'delete', 'Delete', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(114, 1, 'en', 'core/acl/api', 'client_id', 'Client ID', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(115, 1, 'en', 'core/acl/api', 'secret', 'Secret', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(116, 1, 'en', 'core/acl/auth', 'login.username', 'Username', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(117, 1, 'en', 'core/acl/auth', 'login.email', 'Email', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(118, 1, 'en', 'core/acl/auth', 'login.password', 'Password', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(119, 1, 'en', 'core/acl/auth', 'login.title', 'User Login', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(120, 1, 'en', 'core/acl/auth', 'login.remember', 'Remember me?', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(121, 1, 'en', 'core/acl/auth', 'login.login', 'Sign in', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(122, 1, 'en', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(123, 1, 'en', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(124, 1, 'en', 'core/acl/auth', 'login.success', 'Login successfully!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(125, 1, 'en', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(126, 1, 'en', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(127, 1, 'en', 'core/acl/auth', 'login.banned', 'This account is banned.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(128, 1, 'en', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(129, 1, 'en', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(130, 1, 'en', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(131, 1, 'en', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(132, 1, 'en', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(133, 1, 'en', 'core/acl/auth', 'reset.new_password', 'New password', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(134, 1, 'en', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(135, 1, 'en', 'core/acl/auth', 'reset.email', 'Email', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(136, 1, 'en', 'core/acl/auth', 'reset.title', 'Reset your password', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(137, 1, 'en', 'core/acl/auth', 'reset.update', 'Update', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(138, 1, 'en', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(139, 1, 'en', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(140, 1, 'en', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(141, 1, 'en', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(142, 1, 'en', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(143, 1, 'en', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(144, 1, 'en', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(145, 1, 'en', 'core/acl/auth', 'reset.new-password', 'New password', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(146, 1, 'en', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(147, 1, 'en', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(148, 1, 'en', 'core/acl/auth', 'failed', 'Failed', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(149, 1, 'en', 'core/acl/auth', 'throttle', 'Throttle', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(150, 1, 'en', 'core/acl/auth', 'not_member', 'Not a member yet?', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(151, 1, 'en', 'core/acl/auth', 'register_now', 'Register now', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(152, 1, 'en', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(153, 1, 'en', 'core/acl/auth', 'login_title', 'Admin', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(154, 1, 'en', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(155, 1, 'en', 'core/acl/auth', 'back_to_login', 'Back to login page', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(156, 1, 'en', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(157, 1, 'en', 'core/acl/auth', 'languages', 'Languages', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(158, 1, 'en', 'core/acl/auth', 'reset_password', 'Reset Password', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(159, 1, 'en', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(160, 1, 'en', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(161, 1, 'en', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(162, 1, 'en', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(163, 1, 'en', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(164, 1, 'en', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(165, 1, 'en', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(166, 1, 'en', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(167, 1, 'en', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(168, 1, 'en', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(169, 1, 'en', 'core/acl/permissions', 'list', 'List Permissions', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(170, 1, 'en', 'core/acl/permissions', 'name', 'Name', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(171, 1, 'en', 'core/acl/permissions', 'current_role', 'Current Role', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(172, 1, 'en', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(173, 1, 'en', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(174, 1, 'en', 'core/acl/permissions', 'create_role', 'Create New Role', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(175, 1, 'en', 'core/acl/permissions', 'role_name', 'Name', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(176, 1, 'en', 'core/acl/permissions', 'role_description', 'Description', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(177, 1, 'en', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(178, 1, 'en', 'core/acl/permissions', 'cancel', 'Cancel', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(179, 1, 'en', 'core/acl/permissions', 'reset', 'Reset', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(180, 1, 'en', 'core/acl/permissions', 'save', 'Save', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(181, 1, 'en', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(182, 1, 'en', 'core/acl/permissions', 'details', 'Details', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(183, 1, 'en', 'core/acl/permissions', 'duplicate', 'Duplicate', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(184, 1, 'en', 'core/acl/permissions', 'all', 'All Permissions', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(185, 1, 'en', 'core/acl/permissions', 'list_role', 'List Roles', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(186, 1, 'en', 'core/acl/permissions', 'created_on', 'Created On', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(187, 1, 'en', 'core/acl/permissions', 'created_by', 'Created By', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(188, 1, 'en', 'core/acl/permissions', 'actions', 'Actions', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(189, 1, 'en', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(190, 1, 'en', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(191, 1, 'en', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(192, 1, 'en', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(193, 1, 'en', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(194, 1, 'en', 'core/acl/permissions', 'not_found', 'No role found!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(195, 1, 'en', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(196, 1, 'en', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(197, 1, 'en', 'core/acl/permissions', 'create_success', 'Create successfully', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(198, 1, 'en', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(199, 1, 'en', 'core/acl/permissions', 'options', 'Options', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(200, 1, 'en', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(201, 1, 'en', 'core/acl/permissions', 'roles', 'Roles', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(202, 1, 'en', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(203, 1, 'en', 'core/acl/permissions', 'user_management', 'User Management', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(204, 1, 'en', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(205, 1, 'en', 'core/acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(206, 1, 'en', 'core/acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(207, 1, 'en', 'core/acl/reminders', 'token', 'This password reset token is invalid.', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(208, 1, 'en', 'core/acl/reminders', 'sent', 'Password reminder sent!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(209, 1, 'en', 'core/acl/reminders', 'reset', 'Password has been reset!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(210, 1, 'en', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(211, 1, 'en', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(212, 1, 'en', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(213, 1, 'en', 'core/acl/users', 'update_success', 'Update status successfully!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(214, 1, 'en', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(215, 1, 'en', 'core/acl/users', 'not_found', 'User not found', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(216, 1, 'en', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(217, 1, 'en', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(218, 1, 'en', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(219, 1, 'en', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(220, 1, 'en', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(221, 1, 'en', 'core/acl/users', 'user_exist_in', 'User is already a member', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(222, 1, 'en', 'core/acl/users', 'email', 'Email', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(223, 1, 'en', 'core/acl/users', 'role', 'Role', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(224, 1, 'en', 'core/acl/users', 'username', 'Username', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(225, 1, 'en', 'core/acl/users', 'last_name', 'Last Name', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(226, 1, 'en', 'core/acl/users', 'first_name', 'First Name', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(227, 1, 'en', 'core/acl/users', 'message', 'Message', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(228, 1, 'en', 'core/acl/users', 'cancel_btn', 'Cancel', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(229, 1, 'en', 'core/acl/users', 'change_password', 'Change password', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(230, 1, 'en', 'core/acl/users', 'current_password', 'Current password', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(231, 1, 'en', 'core/acl/users', 'new_password', 'New Password', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(232, 1, 'en', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(233, 1, 'en', 'core/acl/users', 'password', 'Password', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(234, 1, 'en', 'core/acl/users', 'save', 'Save', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(235, 1, 'en', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(236, 1, 'en', 'core/acl/users', 'deleted', 'User deleted', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(237, 1, 'en', 'core/acl/users', 'last_login', 'Last Login', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(238, 1, 'en', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(239, 1, 'en', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(240, 1, 'en', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(241, 1, 'en', 'core/acl/users', 'new_image', 'New Image', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(242, 1, 'en', 'core/acl/users', 'loading', 'Loading', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(243, 1, 'en', 'core/acl/users', 'close', 'Close', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(244, 1, 'en', 'core/acl/users', 'update', 'Update', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(245, 1, 'en', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(246, 1, 'en', 'core/acl/users', 'users', 'Users', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(247, 1, 'en', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(248, 1, 'en', 'core/acl/users', 'info.title', 'User profile', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(249, 1, 'en', 'core/acl/users', 'info.first_name', 'First Name', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(250, 1, 'en', 'core/acl/users', 'info.last_name', 'Last Name', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(251, 1, 'en', 'core/acl/users', 'info.email', 'Email', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(252, 1, 'en', 'core/acl/users', 'info.second_email', 'Secondary Email', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(253, 1, 'en', 'core/acl/users', 'info.address', 'Address', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(254, 1, 'en', 'core/acl/users', 'info.second_address', 'Secondary Address', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(255, 1, 'en', 'core/acl/users', 'info.birth_day', 'Date of birth', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(256, 1, 'en', 'core/acl/users', 'info.job', 'Job Position', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(257, 1, 'en', 'core/acl/users', 'info.mobile_number', 'Mobile Number', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(258, 1, 'en', 'core/acl/users', 'info.second_mobile_number', 'Secondary Phone', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(259, 1, 'en', 'core/acl/users', 'info.interes', 'Interests', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(260, 1, 'en', 'core/acl/users', 'info.about', 'About', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(261, 1, 'en', 'core/acl/users', 'gender.title', 'Gender', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(262, 1, 'en', 'core/acl/users', 'gender.male', 'Male', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(263, 1, 'en', 'core/acl/users', 'gender.female', 'Female', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(264, 1, 'en', 'core/acl/users', 'total_users', 'Total users', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(265, 1, 'en', 'core/acl/users', 'statuses.activated', 'Activated', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(266, 1, 'en', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(267, 1, 'en', 'core/acl/users', 'make_super', 'Make super', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(268, 1, 'en', 'core/acl/users', 'remove_super', 'Remove super', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(269, 1, 'en', 'core/acl/users', 'is_super', 'Is super?', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(270, 1, 'en', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(271, 1, 'en', 'core/acl/users', 'password_confirmation', 'Re-type password', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(272, 1, 'en', 'core/acl/users', 'select_role', 'Select role', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(273, 1, 'en', 'core/acl/users', 'create_new_user', 'Create a new user', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(274, 1, 'en', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(275, 1, 'vi', 'core/acl/api', 'api_clients', 'API Clients', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(276, 1, 'vi', 'core/acl/api', 'create_new_client', 'Create new client', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(277, 1, 'vi', 'core/acl/api', 'create_new_client_success', 'Create new client successfully!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(278, 1, 'vi', 'core/acl/api', 'edit_client', 'Edit client \":name\"', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(279, 1, 'vi', 'core/acl/api', 'edit_client_success', 'Updated client successfully!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(280, 1, 'vi', 'core/acl/api', 'delete_success', 'Deleted client successfully!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(281, 1, 'vi', 'core/acl/api', 'confirm_delete_title', 'Confirm delete client \":name\"', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(282, 1, 'vi', 'core/acl/api', 'confirm_delete_description', 'Do you really want to delete client \":name\"?', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(283, 1, 'vi', 'core/acl/api', 'cancel_delete', 'No', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(284, 1, 'vi', 'core/acl/api', 'continue_delete', 'Yes, let\'s delete it!', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(285, 1, 'vi', 'core/acl/api', 'name', 'Name', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(286, 1, 'vi', 'core/acl/api', 'cancel', 'Cancel', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(287, 1, 'vi', 'core/acl/api', 'save', 'Save', '2020-03-29 20:06:53', '2020-03-29 20:06:53'),
(288, 1, 'vi', 'core/acl/api', 'edit', 'Edit', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(289, 1, 'vi', 'core/acl/api', 'delete', 'Delete', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(290, 1, 'vi', 'core/acl/api', 'client_id', 'Client ID', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(291, 1, 'vi', 'core/acl/api', 'secret', 'Secret', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(292, 1, 'vi', 'core/acl/auth', 'login.username', 'Tên truy cập', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(293, 1, 'vi', 'core/acl/auth', 'login.password', 'Mật khẩu', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(294, 1, 'vi', 'core/acl/auth', 'login.title', 'Đăng nhập vào quản trị', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(295, 1, 'vi', 'core/acl/auth', 'login.remember', 'Nhớ mật khẩu?', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(296, 1, 'vi', 'core/acl/auth', 'login.login', 'Đăng nhập', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(297, 1, 'vi', 'core/acl/auth', 'login.placeholder.username', 'Vui lòng nhập tên truy cập', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(298, 1, 'vi', 'core/acl/auth', 'login.placeholder.email', 'Vui lòng nhập email', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(299, 1, 'vi', 'core/acl/auth', 'login.success', 'Đăng nhập thành công!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(300, 1, 'vi', 'core/acl/auth', 'login.fail', 'Sai tên truy cập hoặc mật khẩu.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(301, 1, 'vi', 'core/acl/auth', 'login.not_active', 'Tài khoản của bạn chưa được kích hoạt!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(302, 1, 'vi', 'core/acl/auth', 'login.banned', 'Tài khoản này đã bị khóa.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(303, 1, 'vi', 'core/acl/auth', 'login.logout_success', 'Đăng xuất thành công!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(304, 1, 'vi', 'core/acl/auth', 'login.dont_have_account', 'Bạn không có tài khoản trong hệ thống, vui lòng liên hệ quản trị viên!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(305, 1, 'vi', 'core/acl/auth', 'login.email', 'Email', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(306, 1, 'vi', 'core/acl/auth', 'forgot_password.title', 'Quên mật khẩu', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(307, 1, 'vi', 'core/acl/auth', 'forgot_password.message', '<p>Quên mật khẩu?</p><p>Vui lòng nhập email đăng nhập tài khoản của bạn để hệ thống gửi liên kết khôi phục mật khẩu.</p>', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(308, 1, 'vi', 'core/acl/auth', 'forgot_password.submit', 'Hoàn tất', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(309, 1, 'vi', 'core/acl/auth', 'reset.new_password', 'Mật khẩu mới', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(310, 1, 'vi', 'core/acl/auth', 'reset.password_confirmation', 'Xác nhận mật khẩu mới', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(311, 1, 'vi', 'core/acl/auth', 'reset.title', 'Khôi phục mật khẩu', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(312, 1, 'vi', 'core/acl/auth', 'reset.update', 'Cập nhật', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(313, 1, 'vi', 'core/acl/auth', 'reset.wrong_token', 'Liên kết này không chính xác hoặc đã hết hiệu lực, vui lòng yêu cầu khôi phục mật khẩu lại!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(314, 1, 'vi', 'core/acl/auth', 'reset.user_not_found', 'Tên đăng nhập không tồn tại.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(315, 1, 'vi', 'core/acl/auth', 'reset.success', 'Khôi phục mật khẩu thành công!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(316, 1, 'vi', 'core/acl/auth', 'reset.fail', 'Token không hợp lệ hoặc liên kết khôi phục mật khẩu đã hết thời gian hiệu lực!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(317, 1, 'vi', 'core/acl/auth', 'reset.reset.title', 'Email khôi phục mật khẩu', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(318, 1, 'vi', 'core/acl/auth', 'reset.send.success', 'Một email khôi phục mật khẩu đã được gửi tới email của bạn, vui lòng kiểm tra và hoàn tất yêu cầu.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(319, 1, 'vi', 'core/acl/auth', 'reset.send.fail', 'Không thể gửi email trong lúc này. Vui lòng thực hiện lại sau.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(320, 1, 'vi', 'core/acl/auth', 'reset.new-password', 'Mật khẩu mới', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(321, 1, 'vi', 'core/acl/auth', 'reset.email', 'Email', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(322, 1, 'vi', 'core/acl/auth', 'email.reminder.title', 'Email khôi phục mật khẩu', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(323, 1, 'vi', 'core/acl/auth', 'failed', 'Không thành công', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(324, 1, 'vi', 'core/acl/auth', 'password_confirmation', 'Xác nhận mật khẩu', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(325, 1, 'vi', 'core/acl/auth', 'throttle', 'Throttle', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(326, 1, 'vi', 'core/acl/auth', 'back_to_login', 'Quay lại trang đăng nhập', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(327, 1, 'vi', 'core/acl/auth', 'login_title', 'Đăng nhập vào quản trị', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(328, 1, 'vi', 'core/acl/auth', 'login_via_social', 'Đăng nhập thông qua mạng xã hội', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(329, 1, 'vi', 'core/acl/auth', 'lost_your_password', 'Quên mật khẩu?', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(330, 1, 'vi', 'core/acl/auth', 'not_member', 'Chưa là thành viên?', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(331, 1, 'vi', 'core/acl/auth', 'register_now', 'Đăng ký ngay', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(332, 1, 'vi', 'core/acl/auth', 'sign_in_below', 'Đăng nhập', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(333, 1, 'vi', 'core/acl/auth', 'languages', 'Ngôn ngữ', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(334, 1, 'vi', 'core/acl/auth', 'reset_password', 'Khôi phục mật khẩu', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(335, 1, 'vi', 'core/acl/permissions', 'notices.role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(336, 1, 'vi', 'core/acl/permissions', 'notices.role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(337, 1, 'vi', 'core/acl/permissions', 'notices.role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(338, 1, 'vi', 'core/acl/permissions', 'notices.delete_global_role', 'Bạn không thể xóa quyền người dùng hệ thống!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(339, 1, 'vi', 'core/acl/permissions', 'notices.delete_success', 'Quyền người dùng đã được xóa!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(340, 1, 'vi', 'core/acl/permissions', 'notices.modified_success', 'Quyền người dùng đã được cập nhật thành công!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(341, 1, 'vi', 'core/acl/permissions', 'notices.create_success', 'Quyền người dùng mới đã được tạo thành công!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(342, 1, 'vi', 'core/acl/permissions', 'notices.duplicated_success', 'Quyền người dùng đã được sao chép thành công!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(343, 1, 'vi', 'core/acl/permissions', 'notices.no_select', 'Hãy chọn ít nhất một quyền người dùng để thực hiện hành động này!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(344, 1, 'vi', 'core/acl/permissions', 'notices.not_found', 'Không tìm thấy quyền người dùng này', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(345, 1, 'vi', 'core/acl/permissions', 'list', 'Danh sách phân quyền', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(346, 1, 'vi', 'core/acl/permissions', 'name', 'Tên', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(347, 1, 'vi', 'core/acl/permissions', 'current_role', 'Quyền hiện tại', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(348, 1, 'vi', 'core/acl/permissions', 'no_role_assigned', 'Không có quyền hạn nào', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(349, 1, 'vi', 'core/acl/permissions', 'role_assigned', 'Quyền đã được gán', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(350, 1, 'vi', 'core/acl/permissions', 'create_role', 'Tạo quyền mới', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(351, 1, 'vi', 'core/acl/permissions', 'role_name', 'Tên', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(352, 1, 'vi', 'core/acl/permissions', 'role_description', 'Mô tả', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(353, 1, 'vi', 'core/acl/permissions', 'permission_flags', 'Cờ đánh dấu quyền hạn', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(354, 1, 'vi', 'core/acl/permissions', 'cancel', 'Hủy bỏ', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(355, 1, 'vi', 'core/acl/permissions', 'reset', 'Làm lại', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(356, 1, 'vi', 'core/acl/permissions', 'save', 'Lưu', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(357, 1, 'vi', 'core/acl/permissions', 'global_role_msg', 'Đây là một phân quyền toàn cục và không thể thay đổi.  Bạn có thể sử dụng nút \"Nhân bản\" để tạo một bản sao chép cho phân quyền này và chỉnh sửa.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(358, 1, 'vi', 'core/acl/permissions', 'details', 'Chi tiết', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(359, 1, 'vi', 'core/acl/permissions', 'duplicate', 'Nhân bản', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(360, 1, 'vi', 'core/acl/permissions', 'all', 'Tất cả phân quyền', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(361, 1, 'vi', 'core/acl/permissions', 'list_role', 'Danh sách quyền', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(362, 1, 'vi', 'core/acl/permissions', 'created_on', 'Ngày tạo', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(363, 1, 'vi', 'core/acl/permissions', 'created_by', 'Được tạo bởi', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(364, 1, 'vi', 'core/acl/permissions', 'actions', 'Tác vụ', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(365, 1, 'vi', 'core/acl/permissions', 'create_success', 'Tạo thành công!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(366, 1, 'vi', 'core/acl/permissions', 'delete_global_role', 'Không thể xóa quyền hệ thống', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(367, 1, 'vi', 'core/acl/permissions', 'delete_success', 'Xóa quyền thành công', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(368, 1, 'vi', 'core/acl/permissions', 'duplicated_success', 'Nhân bản thành công', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(369, 1, 'vi', 'core/acl/permissions', 'modified_success', 'Sửa thành công', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(370, 1, 'vi', 'core/acl/permissions', 'no_select', 'Hãy chọn ít nhất một quyền để thực hiện hành động này!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(371, 1, 'vi', 'core/acl/permissions', 'not_found', 'Không tìm thấy quyền thành viên nào!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(372, 1, 'vi', 'core/acl/permissions', 'options', 'Tùy chọn', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(373, 1, 'vi', 'core/acl/permissions', 'role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(374, 1, 'vi', 'core/acl/permissions', 'role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(375, 1, 'vi', 'core/acl/permissions', 'role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(376, 1, 'vi', 'core/acl/permissions', 'access_denied_message', 'Bạn không có quyền sử dụng chức năng này!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(377, 1, 'vi', 'core/acl/permissions', 'roles', 'Quyền', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(378, 1, 'vi', 'core/acl/permissions', 'role_permission', 'Nhóm và phân quyền', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(379, 1, 'vi', 'core/acl/permissions', 'user_management', 'Quản lý người dùng hệ thống', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(380, 1, 'vi', 'core/acl/permissions', 'super_user_management', 'Quản lý người dùng cấp cao', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(381, 1, 'vi', 'core/acl/reminders', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với mật khẩu xác nhận.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(382, 1, 'vi', 'core/acl/reminders', 'user', 'Hệ thống không thể tìm thấy tài khoản với email này.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(383, 1, 'vi', 'core/acl/reminders', 'token', 'Mã khôi phục mật khẩu này không hợp lệ.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(384, 1, 'vi', 'core/acl/reminders', 'sent', 'Liên kết khôi phục mật khẩu đã được gửi!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(385, 1, 'vi', 'core/acl/reminders', 'reset', 'Mật khẩu đã được thay đổi!', '2020-03-29 20:06:54', '2020-03-29 20:06:54');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(386, 1, 'vi', 'core/acl/users', 'delete_user_logged_in', 'Không thể xóa người dùng đang đăng nhập hệ thống!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(387, 1, 'vi', 'core/acl/users', 'no_select', 'Hãy chọn ít nhất một trường để thực hiện hành động này!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(388, 1, 'vi', 'core/acl/users', 'lock_user_logged_in', 'Không thể khóa người dùng đang đăng nhập hệ thống!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(389, 1, 'vi', 'core/acl/users', 'update_success', 'Cập nhật trạng thái thành công!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(390, 1, 'vi', 'core/acl/users', 'save_setting_failed', 'Có lỗi xảy ra trong quá trình lưu cài đặt của người dùng', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(391, 1, 'vi', 'core/acl/users', 'not_found', 'Không tìm thấy người dùng', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(392, 1, 'vi', 'core/acl/users', 'email_exist', 'Email này đã được sử dụng bởi người dùng khác trong hệ thống', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(393, 1, 'vi', 'core/acl/users', 'username_exist', 'Tên đăng nhập này đã được sử dụng bởi người dùng khác trong hệ thống', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(394, 1, 'vi', 'core/acl/users', 'update_profile_success', 'Thông tin tài khoản của bạn đã được cập nhật thành công', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(395, 1, 'vi', 'core/acl/users', 'password_update_success', 'Cập nhật mật khẩu thành công', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(396, 1, 'vi', 'core/acl/users', 'current_password_not_valid', 'Mật khẩu hiện tại không chính xác', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(397, 1, 'vi', 'core/acl/users', 'user_exist_in', 'Người dùng đã là thành viên', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(398, 1, 'vi', 'core/acl/users', 'email', 'Email', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(399, 1, 'vi', 'core/acl/users', 'username', 'Tên đăng nhập', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(400, 1, 'vi', 'core/acl/users', 'role', 'Phân quyền', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(401, 1, 'vi', 'core/acl/users', 'first_name', 'Họ', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(402, 1, 'vi', 'core/acl/users', 'last_name', 'Tên', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(403, 1, 'vi', 'core/acl/users', 'message', 'Thông điệp', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(404, 1, 'vi', 'core/acl/users', 'cancel_btn', 'Hủy bỏ', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(405, 1, 'vi', 'core/acl/users', 'password', 'Mật khẩu', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(406, 1, 'vi', 'core/acl/users', 'new_password', 'Mật khẩu mới', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(407, 1, 'vi', 'core/acl/users', 'save', 'Lưu', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(408, 1, 'vi', 'core/acl/users', 'confirm_new_password', 'Xác nhận mật khẩu mới', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(409, 1, 'vi', 'core/acl/users', 'deleted', 'Xóa thành viên thành công', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(410, 1, 'vi', 'core/acl/users', 'cannot_delete', 'Không thể xóa thành viên', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(411, 1, 'vi', 'core/acl/users', 'list', 'Danh sách thành viên', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(412, 1, 'vi', 'core/acl/users', 'last_login', 'Lần cuối đăng nhập', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(413, 1, 'vi', 'core/acl/users', 'error_update_profile_image', 'Có lỗi trong quá trình đổi ảnh đại diện', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(414, 1, 'vi', 'core/acl/users', 'email_reminder_template', '<h3>Xin chào :name</h3><p>Hệ thống vừa nhận được yêu cầu khôi phục mật khẩu cho tài khoản của bạn, để hoàn tất tác vụ này vui lòng click vào đường link bên dưới.</p><p><a href=\":link\">Khôi phục mật khẩu</a></p><p>Nếu không phải bạn yêu cầu khôi phục mật khẩu, vui lòng bỏ qua email này.</p><p>Email này có giá trị trong vòng 60 phút kể từ lúc nhận được email.</p>', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(415, 1, 'vi', 'core/acl/users', 'change_profile_image', 'Thay đổi ảnh đại diện', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(416, 1, 'vi', 'core/acl/users', 'new_image', 'Ảnh mới', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(417, 1, 'vi', 'core/acl/users', 'loading', 'Đang tải', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(418, 1, 'vi', 'core/acl/users', 'close', 'Đóng', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(419, 1, 'vi', 'core/acl/users', 'update', 'Cập nhật', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(420, 1, 'vi', 'core/acl/users', 'read_image_failed', 'Không đọc được nội dung của hình ảnh', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(421, 1, 'vi', 'core/acl/users', 'update_avatar_success', 'Cập nhật ảnh đại diện thành công!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(422, 1, 'vi', 'core/acl/users', 'users', 'Quản trị viên', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(423, 1, 'vi', 'core/acl/users', 'info.title', 'Thông tin người dùng', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(424, 1, 'vi', 'core/acl/users', 'info.first_name', 'Họ', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(425, 1, 'vi', 'core/acl/users', 'info.last_name', 'Tên', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(426, 1, 'vi', 'core/acl/users', 'info.email', 'Email', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(427, 1, 'vi', 'core/acl/users', 'info.second_email', 'Email dự phòng', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(428, 1, 'vi', 'core/acl/users', 'info.address', 'Địa chỉ', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(429, 1, 'vi', 'core/acl/users', 'info.second_address', 'Địa chỉ dự phòng', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(430, 1, 'vi', 'core/acl/users', 'info.birth_day', 'Ngày sinh', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(431, 1, 'vi', 'core/acl/users', 'info.job', 'Nghề nghiệp', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(432, 1, 'vi', 'core/acl/users', 'info.mobile_number', 'Số điện thoại di động', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(433, 1, 'vi', 'core/acl/users', 'info.second_mobile_number', 'Số điện thoại dự phòng', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(434, 1, 'vi', 'core/acl/users', 'info.interes', 'Sở thích', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(435, 1, 'vi', 'core/acl/users', 'info.about', 'Giới thiệu', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(436, 1, 'vi', 'core/acl/users', 'gender.title', 'Giới tính', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(437, 1, 'vi', 'core/acl/users', 'gender.male', 'nam', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(438, 1, 'vi', 'core/acl/users', 'gender.female', 'nữ', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(439, 1, 'vi', 'core/acl/users', 'statuses.activated', 'Đang hoạt động', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(440, 1, 'vi', 'core/acl/users', 'statuses.deactivated', 'Đã khoá', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(441, 1, 'vi', 'core/acl/users', 'change_password', 'Thay đổi mật khẩu', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(442, 1, 'vi', 'core/acl/users', 'current_password', 'Mật khẩu hiện tại', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(443, 1, 'vi', 'core/acl/users', 'make_super', 'Thiết lập quyền cao nhất', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(444, 1, 'vi', 'core/acl/users', 'remove_super', 'Loại bỏ quyền cao nhất', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(445, 1, 'vi', 'core/acl/users', 'is_super', 'Quyền cao nhất?', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(446, 1, 'vi', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(447, 1, 'vi', 'core/acl/users', 'password_confirmation', 'Nhập lại mật khẩu', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(448, 1, 'vi', 'core/acl/users', 'select_role', 'Chọn nhóm', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(449, 1, 'vi', 'core/acl/users', 'create_new_user', 'Tạo tài khoản quản trị viên mới', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(450, 1, 'vi', 'core/acl/users', 'cannot_delete_super_user', 'Vượt quyền hạn, không thể xoá quản trị viên cấp cao nhất!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(451, 1, 'en', 'core/base/base', 'yes', 'Yes', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(452, 1, 'en', 'core/base/base', 'no', 'No', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(453, 1, 'en', 'core/base/base', 'is_default', 'Is default?', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(454, 1, 'en', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(455, 1, 'en', 'core/base/cache', 'cache_management', 'Cache management', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(456, 1, 'en', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(457, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(458, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(459, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(460, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(461, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(462, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(463, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(464, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(465, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(466, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(467, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(468, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(469, 1, 'en', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(470, 1, 'en', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(471, 1, 'en', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(472, 1, 'en', 'core/base/enums', 'statuses.draft', 'Draft', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(473, 1, 'en', 'core/base/enums', 'statuses.pending', 'Pending', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(474, 1, 'en', 'core/base/enums', 'statuses.published', 'Published', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(475, 1, 'en', 'core/base/errors', '401_title', 'Permission Denied', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(476, 1, 'en', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(477, 1, 'en', 'core/base/errors', '404_title', 'Page could not be found', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(478, 1, 'en', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(479, 1, 'en', 'core/base/errors', '500_title', 'Page could not be loaded', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(480, 1, 'en', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(481, 1, 'en', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(482, 1, 'en', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\"http://botble.local/admin\">clicking here</a>.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(483, 1, 'en', 'core/base/forms', 'choose_image', 'Choose image', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(484, 1, 'en', 'core/base/forms', 'actions', 'Actions', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(485, 1, 'en', 'core/base/forms', 'save', 'Save', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(486, 1, 'en', 'core/base/forms', 'save_and_continue', 'Save & Edit', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(487, 1, 'en', 'core/base/forms', 'image', 'Image', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(488, 1, 'en', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(489, 1, 'en', 'core/base/forms', 'create', 'Create', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(490, 1, 'en', 'core/base/forms', 'edit', 'Edit', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(491, 1, 'en', 'core/base/forms', 'permalink', 'Permalink', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(492, 1, 'en', 'core/base/forms', 'ok', 'OK', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(493, 1, 'en', 'core/base/forms', 'cancel', 'Cancel', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(494, 1, 'en', 'core/base/forms', 'character_remain', 'character(s) remain', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(495, 1, 'en', 'core/base/forms', 'template', 'Template', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(496, 1, 'en', 'core/base/forms', 'choose_file', 'Choose file', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(497, 1, 'en', 'core/base/forms', 'file', 'File', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(498, 1, 'en', 'core/base/forms', 'content', 'Content', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(499, 1, 'en', 'core/base/forms', 'description', 'Description', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(500, 1, 'en', 'core/base/forms', 'name', 'Name', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(501, 1, 'en', 'core/base/forms', 'slug', 'Slug', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(502, 1, 'en', 'core/base/forms', 'title', 'Title', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(503, 1, 'en', 'core/base/forms', 'value', 'Value', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(504, 1, 'en', 'core/base/forms', 'name_placeholder', 'Name', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(505, 1, 'en', 'core/base/forms', 'alias_placeholder', 'Alias', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(506, 1, 'en', 'core/base/forms', 'description_placeholder', 'Short description', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(507, 1, 'en', 'core/base/forms', 'parent', 'Parent', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(508, 1, 'en', 'core/base/forms', 'icon', 'Icon', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(509, 1, 'en', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(510, 1, 'en', 'core/base/forms', 'order_by', 'Order by', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(511, 1, 'en', 'core/base/forms', 'order_by_placeholder', 'Order by', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(512, 1, 'en', 'core/base/forms', 'is_featured', 'Is featured?', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(513, 1, 'en', 'core/base/forms', 'is_default', 'Is default?', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(514, 1, 'en', 'core/base/forms', 'update', 'Update', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(515, 1, 'en', 'core/base/forms', 'publish', 'Publish', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(516, 1, 'en', 'core/base/forms', 'remove_image', 'Remove image', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(517, 1, 'en', 'core/base/forms', 'remove_file', 'Remove file', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(518, 1, 'en', 'core/base/forms', 'order', 'Order', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(519, 1, 'en', 'core/base/forms', 'alias', 'Alias', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(520, 1, 'en', 'core/base/forms', 'basic_information', 'Basic information', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(521, 1, 'en', 'core/base/forms', 'short_code', 'Shortcode', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(522, 1, 'en', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(523, 1, 'en', 'core/base/forms', 'add', 'Add', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(524, 1, 'en', 'core/base/forms', 'link', 'Link', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(525, 1, 'en', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(526, 1, 'en', 'core/base/forms', 'basic_info_title', 'Basic information', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(527, 1, 'en', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(528, 1, 'en', 'core/base/layouts', 'dashboard', 'Dashboard', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(529, 1, 'en', 'core/base/layouts', 'appearance', 'Appearance', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(530, 1, 'en', 'core/base/layouts', 'menu', 'Menu', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(531, 1, 'en', 'core/base/layouts', 'widgets', 'Widgets', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(532, 1, 'en', 'core/base/layouts', 'plugins', 'Plugins', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(533, 1, 'en', 'core/base/layouts', 'settings', 'Settings', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(534, 1, 'en', 'core/base/layouts', 'setting_general', 'General', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(535, 1, 'en', 'core/base/layouts', 'setting_email', 'Email', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(536, 1, 'en', 'core/base/layouts', 'system_information', 'System information', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(537, 1, 'en', 'core/base/layouts', 'theme', 'Theme', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(538, 1, 'en', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(539, 1, 'en', 'core/base/layouts', 'profile', 'Profile', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(540, 1, 'en', 'core/base/layouts', 'logout', 'Logout', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(541, 1, 'en', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(542, 1, 'en', 'core/base/layouts', 'home', 'Home', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(543, 1, 'en', 'core/base/layouts', 'search', 'Search', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(544, 1, 'en', 'core/base/layouts', 'add_new', 'Add new', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(545, 1, 'en', 'core/base/layouts', 'n_a', 'N/A', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(546, 1, 'en', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(547, 1, 'en', 'core/base/layouts', 'view_website', 'View website', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(548, 1, 'en', 'core/base/mail', 'send-fail', 'Send email failed', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(549, 1, 'en', 'core/base/notices', 'create_success_message', 'Created successfully', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(550, 1, 'en', 'core/base/notices', 'update_success_message', 'Updated successfully', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(551, 1, 'en', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(552, 1, 'en', 'core/base/notices', 'success_header', 'Success!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(553, 1, 'en', 'core/base/notices', 'error_header', 'Error!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(554, 1, 'en', 'core/base/notices', 'cannot_delete', 'Can not delete this record!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(555, 1, 'en', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(556, 1, 'en', 'core/base/notices', 'processing_request', 'We are processing your request.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(557, 1, 'en', 'core/base/notices', 'error', 'Error!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(558, 1, 'en', 'core/base/notices', 'success', 'Success!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(559, 1, 'en', 'core/base/notices', 'info', 'Info!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(560, 1, 'en', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(561, 1, 'en', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(562, 1, 'en', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(563, 1, 'en', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(564, 1, 'en', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(565, 1, 'en', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(566, 1, 'en', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(567, 1, 'en', 'core/base/system', 'supper_granted', 'Super user access granted', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(568, 1, 'en', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(569, 1, 'en', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(570, 1, 'en', 'core/base/system', 'error_occur', 'The following errors occurred', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(571, 1, 'en', 'core/base/system', 'user_management', 'User Management', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(572, 1, 'en', 'core/base/system', 'user_management_description', 'Manage users.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(573, 1, 'en', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(574, 1, 'en', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(575, 1, 'en', 'core/base/system', 'user.list_super', 'List Super Users', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(576, 1, 'en', 'core/base/system', 'user.email', 'Email', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(577, 1, 'en', 'core/base/system', 'user.last_login', 'Last Login', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(578, 1, 'en', 'core/base/system', 'user.username', 'Username', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(579, 1, 'en', 'core/base/system', 'user.add_user', 'Add Super User', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(580, 1, 'en', 'core/base/system', 'user.cancel', 'Cancel', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(581, 1, 'en', 'core/base/system', 'user.create', 'Create', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(582, 1, 'en', 'core/base/system', 'options.features', 'Feature Access Control', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(583, 1, 'en', 'core/base/system', 'options.feature_description', 'Manage the available.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(584, 1, 'en', 'core/base/system', 'options.manage_super', 'Super User Management', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(585, 1, 'en', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(586, 1, 'en', 'core/base/system', 'options.info', 'System information', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(587, 1, 'en', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(588, 1, 'en', 'core/base/system', 'info.title', 'System information', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(589, 1, 'en', 'core/base/system', 'info.cache', 'Cache', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(590, 1, 'en', 'core/base/system', 'info.locale', 'Active locale', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(591, 1, 'en', 'core/base/system', 'info.environment', 'Environment', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(592, 1, 'en', 'core/base/system', 'disabled_in_demo_mode', 'You can not do it in demo mode!', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(593, 1, 'en', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(594, 1, 'en', 'core/base/system', 'get_system_report', 'Get System Report', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(595, 1, 'en', 'core/base/system', 'system_environment', 'System Environment', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(596, 1, 'en', 'core/base/system', 'framework_version', 'Framework Version', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(597, 1, 'en', 'core/base/system', 'timezone', 'Timezone', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(598, 1, 'en', 'core/base/system', 'debug_mode', 'Debug Mode', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(599, 1, 'en', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(600, 1, 'en', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(601, 1, 'en', 'core/base/system', 'app_size', 'App Size', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(602, 1, 'en', 'core/base/system', 'server_environment', 'Server Environment', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(603, 1, 'en', 'core/base/system', 'php_version', 'PHP Version', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(604, 1, 'en', 'core/base/system', 'server_software', 'Server Software', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(605, 1, 'en', 'core/base/system', 'server_os', 'Server OS', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(606, 1, 'en', 'core/base/system', 'database', 'Database', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(607, 1, 'en', 'core/base/system', 'ssl_installed', 'SSL Installed', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(608, 1, 'en', 'core/base/system', 'cache_driver', 'Cache Driver', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(609, 1, 'en', 'core/base/system', 'session_driver', 'Session Driver', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(610, 1, 'en', 'core/base/system', 'queue_connection', 'Queue Connection', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(611, 1, 'en', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(612, 1, 'en', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(613, 1, 'en', 'core/base/system', 'pdo_ext', 'PDO Ext', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(614, 1, 'en', 'core/base/system', 'curl_ext', 'CURL Ext', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(615, 1, 'en', 'core/base/system', 'exif_ext', 'Exif Ext', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(616, 1, 'en', 'core/base/system', 'file_info_ext', 'File info Ext', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(617, 1, 'en', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(618, 1, 'en', 'core/base/system', 'extra_stats', 'Extra Stats', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(619, 1, 'en', 'core/base/system', 'installed_packages', 'Installed Packages and their version numbers', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(620, 1, 'en', 'core/base/system', 'extra_information', 'Extra Information', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(621, 1, 'en', 'core/base/system', 'copy_report', 'Copy Report', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(622, 1, 'en', 'core/base/system', 'package_name', 'Package Name', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(623, 1, 'en', 'core/base/system', 'dependency_name', 'Dependency Name', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(624, 1, 'en', 'core/base/system', 'version', 'Version', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(625, 1, 'en', 'core/base/system', 'cms_version', 'CMS Version', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(626, 1, 'en', 'core/base/tables', 'id', 'ID', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(627, 1, 'en', 'core/base/tables', 'name', 'Name', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(628, 1, 'en', 'core/base/tables', 'slug', 'Slug', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(629, 1, 'en', 'core/base/tables', 'title', 'Title', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(630, 1, 'en', 'core/base/tables', 'order_by', 'Order By', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(631, 1, 'en', 'core/base/tables', 'order', 'Order', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(632, 1, 'en', 'core/base/tables', 'status', 'Status', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(633, 1, 'en', 'core/base/tables', 'created_at', 'Created At', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(634, 1, 'en', 'core/base/tables', 'updated_at', 'Updated At', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(635, 1, 'en', 'core/base/tables', 'description', 'Description', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(636, 1, 'en', 'core/base/tables', 'operations', 'Operations', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(637, 1, 'en', 'core/base/tables', 'url', 'URL', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(638, 1, 'en', 'core/base/tables', 'author', 'Author', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(639, 1, 'en', 'core/base/tables', 'notes', 'Notes', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(640, 1, 'en', 'core/base/tables', 'column', 'Column', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(641, 1, 'en', 'core/base/tables', 'origin', 'Origin', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(642, 1, 'en', 'core/base/tables', 'after_change', 'After changes', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(643, 1, 'en', 'core/base/tables', 'views', 'Views', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(644, 1, 'en', 'core/base/tables', 'browser', 'Browser', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(645, 1, 'en', 'core/base/tables', 'session', 'Session', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(646, 1, 'en', 'core/base/tables', 'activated', 'activated', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(647, 1, 'en', 'core/base/tables', 'deactivated', 'deactivated', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(648, 1, 'en', 'core/base/tables', 'is_featured', 'Is featured', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(649, 1, 'en', 'core/base/tables', 'edit', 'Edit', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(650, 1, 'en', 'core/base/tables', 'delete', 'Delete', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(651, 1, 'en', 'core/base/tables', 'restore', 'Restore', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(652, 1, 'en', 'core/base/tables', 'activate', 'Activate', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(653, 1, 'en', 'core/base/tables', 'deactivate', 'Deactivate', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(654, 1, 'en', 'core/base/tables', 'excel', 'Excel', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(655, 1, 'en', 'core/base/tables', 'export', 'Export', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(656, 1, 'en', 'core/base/tables', 'csv', 'CSV', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(657, 1, 'en', 'core/base/tables', 'pdf', 'PDF', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(658, 1, 'en', 'core/base/tables', 'print', 'Print', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(659, 1, 'en', 'core/base/tables', 'reset', 'Reset', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(660, 1, 'en', 'core/base/tables', 'reload', 'Reload', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(661, 1, 'en', 'core/base/tables', 'display', 'Display', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(662, 1, 'en', 'core/base/tables', 'all', 'All', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(663, 1, 'en', 'core/base/tables', 'add_new', 'Add New', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(664, 1, 'en', 'core/base/tables', 'action', 'Actions', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(665, 1, 'en', 'core/base/tables', 'delete_entry', 'Delete', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(666, 1, 'en', 'core/base/tables', 'view', 'View Detail', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(667, 1, 'en', 'core/base/tables', 'save', 'Save', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(668, 1, 'en', 'core/base/tables', 'show_from', 'Show from', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(669, 1, 'en', 'core/base/tables', 'to', 'to', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(670, 1, 'en', 'core/base/tables', 'in', 'in', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(671, 1, 'en', 'core/base/tables', 'records', 'records', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(672, 1, 'en', 'core/base/tables', 'no_data', 'No data to display', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(673, 1, 'en', 'core/base/tables', 'no_record', 'No record', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(674, 1, 'en', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(675, 1, 'en', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(676, 1, 'en', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(677, 1, 'en', 'core/base/tables', 'cancel', 'Cancel', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(678, 1, 'en', 'core/base/tables', 'template', 'Template', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(679, 1, 'en', 'core/base/tables', 'email', 'Email', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(680, 1, 'en', 'core/base/tables', 'last_login', 'Last login', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(681, 1, 'en', 'core/base/tables', 'shortcode', 'Shortcode', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(682, 1, 'en', 'core/base/tables', 'image', 'Image', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(683, 1, 'en', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(684, 1, 'en', 'core/base/tables', 'submit', 'Submit', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(685, 1, 'en', 'core/base/tabs', 'detail', 'Detail', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(686, 1, 'en', 'core/base/tabs', 'file', 'Files', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(687, 1, 'en', 'core/base/tabs', 'record_note', 'Record Note', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(688, 1, 'en', 'core/base/tabs', 'revision', 'Revision History', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(689, 1, 'vi', 'core/base/base', 'yes', 'Có', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(690, 1, 'vi', 'core/base/base', 'no', 'Không', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(691, 1, 'vi', 'core/base/base', 'is_default', 'Mặc định?', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(692, 1, 'vi', 'core/base/base', 'proc_close_disabled_error', 'Hàm proc_close() đã bị tắt. Vui lòng liên hệ nhà cung cấp hosting để mở hàm này. Hoặc có thể thêm vào .env: CAN_EXECUTE_COMMAND=false để tắt tính năng này.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(693, 1, 'vi', 'core/base/cache', 'cache_management', 'Quản lý bộ nhớ đệm', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(694, 1, 'vi', 'core/base/cache', 'cache_commands', 'Các lệnh xoá bộ nhớ đệm cơ bản', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(695, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.title', 'Xóa tất cả bộ đệm hiện có của ứng dụng', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(696, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.description', 'Xóa các bộ nhớ đệm của ứng dụng: cơ sở dữ liệu, nội dung tĩnh... Chạy lệnh này khi bạn thử cập nhật dữ liệu nhưng giao diện không thay đổi', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(697, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Bộ đệm đã được xóa', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(698, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Làm mới bộ đệm giao diện', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(699, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Làm mới bộ đệm giao diện giúp phần giao diện luôn mới nhất', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(700, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Bộ đệm giao diện đã được làm mới', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(701, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.title', 'Xóa bộ nhớ đệm của phần cấu hình', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(702, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.description', 'Bạn cần làm mới bộ đệm cấu hình khi bạn tạo ra sự thay đổi nào đó ở môi trường thành phẩm.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(703, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Bộ đệm cấu hình đã được xóa', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(704, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.title', 'Xoá cache đường dẫn', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(705, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.description', 'Cần thực hiện thao tác này khi thấy không xuất hiện đường dẫn mới.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(706, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'Bộ đệm điều hướng đã bị xóa', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(707, 1, 'vi', 'core/base/cache', 'commands.clear_log.description', 'Xoá lịch sử lỗi', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(708, 1, 'vi', 'core/base/cache', 'commands.clear_log.success_msg', 'Lịch sử lỗi đã được làm sạch', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(709, 1, 'vi', 'core/base/cache', 'commands.clear_log.title', 'Xoá lịch sử lỗi', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(710, 1, 'vi', 'core/base/enums', 'statuses.draft', 'Bản nháp', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(711, 1, 'vi', 'core/base/enums', 'statuses.pending', 'Đang chờ xử lý', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(712, 1, 'vi', 'core/base/enums', 'statuses.publish', 'Đã xuất bản', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(713, 1, 'vi', 'core/base/errors', '401_title', 'Bạn không có quyền truy cập trang này', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(714, 1, 'vi', 'core/base/errors', '401_msg', '<li>Bạn không được cấp quyền truy cập bởi quản trị viên.</li>\n	                <li>Bạn sử dụng sai loại tài khoản.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(715, 1, 'vi', 'core/base/errors', '404_title', 'Không tìm thấy trang yêu cầu', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(716, 1, 'vi', 'core/base/errors', '404_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(717, 1, 'vi', 'core/base/errors', '500_title', 'Không thể tải trang', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(718, 1, 'vi', 'core/base/errors', '500_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(719, 1, 'vi', 'core/base/errors', 'reasons', 'Điều này có thể xảy ra vì nhiều lý do.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(720, 1, 'vi', 'core/base/errors', 'try_again', 'Vui lòng thử lại trong vài phút, hoặc quay trở lại trang chủ bằng cách <a href=\"http://cms.local/admin\"> nhấn vào đây </a>.', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(721, 1, 'vi', 'core/base/forms', 'choose_image', 'Chọn ảnh', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(722, 1, 'vi', 'core/base/forms', 'actions', 'Tác vụ', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(723, 1, 'vi', 'core/base/forms', 'save', 'Lưu', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(724, 1, 'vi', 'core/base/forms', 'save_and_continue', 'Lưu & chỉnh sửa', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(725, 1, 'vi', 'core/base/forms', 'image', 'Hình ảnh', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(726, 1, 'vi', 'core/base/forms', 'image_placeholder', 'Chèn đường dẫn hình ảnh hoặc nhấn nút để chọn hình', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(727, 1, 'vi', 'core/base/forms', 'create', 'Tạo mới', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(728, 1, 'vi', 'core/base/forms', 'edit', 'Sửa', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(729, 1, 'vi', 'core/base/forms', 'permalink', 'Đường dẫn', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(730, 1, 'vi', 'core/base/forms', 'ok', 'OK', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(731, 1, 'vi', 'core/base/forms', 'cancel', 'Hủy bỏ', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(732, 1, 'vi', 'core/base/forms', 'character_remain', 'kí tự còn lại', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(733, 1, 'vi', 'core/base/forms', 'template', 'Template', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(734, 1, 'vi', 'core/base/forms', 'choose_file', 'Chọn tập tin', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(735, 1, 'vi', 'core/base/forms', 'file', 'Tập tin', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(736, 1, 'vi', 'core/base/forms', 'content', 'Nội dung', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(737, 1, 'vi', 'core/base/forms', 'description', 'Mô tả', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(738, 1, 'vi', 'core/base/forms', 'name', 'Tên', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(739, 1, 'vi', 'core/base/forms', 'name_placeholder', 'Nhập tên', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(740, 1, 'vi', 'core/base/forms', 'description_placeholder', 'Mô tả ngắn', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(741, 1, 'vi', 'core/base/forms', 'parent', 'Cha', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(742, 1, 'vi', 'core/base/forms', 'icon', 'Biểu tượng', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(743, 1, 'vi', 'core/base/forms', 'order_by', 'Sắp xếp', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(744, 1, 'vi', 'core/base/forms', 'order_by_placeholder', 'Sắp xếp', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(745, 1, 'vi', 'core/base/forms', 'slug', 'Slug', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(746, 1, 'vi', 'core/base/forms', 'is_featured', 'Nổi bật?', '2020-03-29 20:06:54', '2020-03-29 20:06:54'),
(747, 1, 'vi', 'core/base/forms', 'is_default', 'Mặc định?', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(748, 1, 'vi', 'core/base/forms', 'icon_placeholder', 'Ví dụ: fa fa-home', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(749, 1, 'vi', 'core/base/forms', 'update', 'Cập nhật', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(750, 1, 'vi', 'core/base/forms', 'publish', 'Xuất bản', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(751, 1, 'vi', 'core/base/forms', 'remove_image', 'Xoá ảnh', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(752, 1, 'vi', 'core/base/forms', 'add', 'Thêm', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(753, 1, 'vi', 'core/base/forms', 'add_short_code', 'Thêm shortcode', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(754, 1, 'vi', 'core/base/forms', 'alias', 'Mã thay thế', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(755, 1, 'vi', 'core/base/forms', 'alias_placeholder', 'Mã thay thế', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(756, 1, 'vi', 'core/base/forms', 'basic_information', 'Thông tin cơ bản', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(757, 1, 'vi', 'core/base/forms', 'link', 'Liên kết', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(758, 1, 'vi', 'core/base/forms', 'order', 'Thứ tự', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(759, 1, 'vi', 'core/base/forms', 'short_code', 'Shortcode', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(760, 1, 'vi', 'core/base/forms', 'title', 'Tiêu đề', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(761, 1, 'vi', 'core/base/forms', 'value', 'Giá trị', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(762, 1, 'vi', 'core/base/forms', 'show_hide_editor', 'Ẩn/Hiện trình soạn thảo', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(763, 1, 'vi', 'core/base/forms', 'basic_info_title', 'Thông tin cơ bản', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(764, 1, 'vi', 'core/base/layouts', 'platform_admin', 'Quản trị hệ thống', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(765, 1, 'vi', 'core/base/layouts', 'dashboard', 'Bảng điều khiển', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(766, 1, 'vi', 'core/base/layouts', 'appearance', 'Hiển thị', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(767, 1, 'vi', 'core/base/layouts', 'menu', 'Trình đơn', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(768, 1, 'vi', 'core/base/layouts', 'widgets', 'Tiện ích', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(769, 1, 'vi', 'core/base/layouts', 'theme_options', 'Tuỳ chọn giao diện', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(770, 1, 'vi', 'core/base/layouts', 'plugins', 'Tiện ích mở rộng', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(771, 1, 'vi', 'core/base/layouts', 'settings', 'Cài đặt', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(772, 1, 'vi', 'core/base/layouts', 'setting_general', 'Cơ bản', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(773, 1, 'vi', 'core/base/layouts', 'system_information', 'Thông tin hệ thống', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(774, 1, 'vi', 'core/base/layouts', 'theme', 'Giao diện', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(775, 1, 'vi', 'core/base/layouts', 'copyright', 'Bản quyền :year &copy; :company. Phiên bản: <span>:version</span>', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(776, 1, 'vi', 'core/base/layouts', 'profile', 'Thông tin cá nhân', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(777, 1, 'vi', 'core/base/layouts', 'logout', 'Đăng xuất', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(778, 1, 'vi', 'core/base/layouts', 'no_search_result', 'Không có kết quả tìm kiếm, hãy thử lại với từ khóa khác.', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(779, 1, 'vi', 'core/base/layouts', 'home', 'Trang chủ', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(780, 1, 'vi', 'core/base/layouts', 'search', 'Tìm kiếm', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(781, 1, 'vi', 'core/base/layouts', 'add_new', 'Thêm mới', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(782, 1, 'vi', 'core/base/layouts', 'n_a', 'N/A', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(783, 1, 'vi', 'core/base/layouts', 'page_loaded_time', 'Trang tải xong trong', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(784, 1, 'vi', 'core/base/layouts', 'view_website', 'Xem trang ngoài', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(785, 1, 'vi', 'core/base/layouts', 'setting_email', 'Email', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(786, 1, 'vi', 'core/base/mail', 'send-fail', 'Gửi email không thành công', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(787, 1, 'vi', 'core/base/mail', 'happy_birthday', 'Chúc mừng sinh nhật!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(788, 1, 'vi', 'core/base/notices', 'create_success_message', 'Tạo thành công', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(789, 1, 'vi', 'core/base/notices', 'update_success_message', 'Cập nhật thành công', '2020-03-29 20:06:55', '2020-03-29 20:06:55');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(790, 1, 'vi', 'core/base/notices', 'delete_success_message', 'Xóa thành công', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(791, 1, 'vi', 'core/base/notices', 'success_header', 'Thành công!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(792, 1, 'vi', 'core/base/notices', 'error_header', 'Lỗi!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(793, 1, 'vi', 'core/base/notices', 'no_select', 'Chọn ít nhất 1 trường để thực hiện hành động này!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(794, 1, 'vi', 'core/base/notices', 'cannot_delete', 'Không thể xóa bản ghi này', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(795, 1, 'vi', 'core/base/notices', 'processing_request', 'Hệ thống đang xử lý yêu cầu.', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(796, 1, 'vi', 'core/base/notices', 'error', 'Lỗi!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(797, 1, 'vi', 'core/base/notices', 'success', 'Thành công!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(798, 1, 'vi', 'core/base/notices', 'info', 'Thông tin!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(799, 1, 'vi', 'core/base/system', 'no_select', 'Hãy chọn ít nhất 1 trường để thực hiện hành động này!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(800, 1, 'vi', 'core/base/system', 'cannot_find_user', 'Không thể tải được thông tin người dùng', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(801, 1, 'vi', 'core/base/system', 'supper_revoked', 'Quyền quản trị viên cao nhất đã được gỡ bỏ', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(802, 1, 'vi', 'core/base/system', 'cannot_revoke_yourself', 'Không thể gỡ bỏ quyền quản trị cấp cao của chính bạn!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(803, 1, 'vi', 'core/base/system', 'cant_remove_supper', 'Bạn không có quyền xóa quản trị viên cấp cao', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(804, 1, 'vi', 'core/base/system', 'cant_find_user_with_email', 'Không thể tìm thấy người dùng với email này', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(805, 1, 'vi', 'core/base/system', 'supper_granted', 'Quyền quản trị cao nhất đã được gán', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(806, 1, 'vi', 'core/base/system', 'delete_log_success', 'Xóa tập tin log thành công!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(807, 1, 'vi', 'core/base/system', 'get_member_success', 'Hiển thị danh sách thành viên thành công', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(808, 1, 'vi', 'core/base/system', 'error_occur', 'Có lỗi dưới đây', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(809, 1, 'vi', 'core/base/system', 'role_and_permission', 'Phân quyền hệ thống', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(810, 1, 'vi', 'core/base/system', 'role_and_permission_description', 'Quản lý những phân quyền trong hệ thống', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(811, 1, 'vi', 'core/base/system', 'user.list_super', 'Danh sách quản trị viên cấp cao', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(812, 1, 'vi', 'core/base/system', 'user.username', 'Tên đăng nhập', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(813, 1, 'vi', 'core/base/system', 'user.email', 'Email', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(814, 1, 'vi', 'core/base/system', 'user.last_login', 'Đăng nhập lần cuối	', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(815, 1, 'vi', 'core/base/system', 'user.add_user', 'Thêm quản trị viên cấp cao', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(816, 1, 'vi', 'core/base/system', 'user.cancel', 'Hủy bỏ', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(817, 1, 'vi', 'core/base/system', 'user.create', 'Thêm', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(818, 1, 'vi', 'core/base/system', 'options.features', 'Kiểm soát truy cập các tính năng', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(819, 1, 'vi', 'core/base/system', 'options.feature_description', 'Bật/tắt các tính năng.', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(820, 1, 'vi', 'core/base/system', 'options.manage_super', 'Quản lý quản trị viên cấp cao', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(821, 1, 'vi', 'core/base/system', 'options.manage_super_description', 'Thêm/xóa quản trị viên cấp cao', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(822, 1, 'vi', 'core/base/system', 'options.info', 'Thông tin hệ thống', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(823, 1, 'vi', 'core/base/system', 'options.info_description', 'Những thông tin về cấu hình hiện tại của hệ thống.', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(824, 1, 'vi', 'core/base/system', 'info.title', 'Thông tin hệ thống', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(825, 1, 'vi', 'core/base/system', 'info.cache', 'Bộ nhớ đệm', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(826, 1, 'vi', 'core/base/system', 'info.environment', 'Môi trường', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(827, 1, 'vi', 'core/base/system', 'info.locale', 'Ngôn ngữ hệ thống', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(828, 1, 'vi', 'core/base/system', 'user_management', 'Quản lý thành viên', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(829, 1, 'vi', 'core/base/system', 'user_management_description', 'Quản lý người dùng trong hệ thống', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(830, 1, 'vi', 'core/base/system', 'app_size', 'Kích thước ứng dụng', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(831, 1, 'vi', 'core/base/system', 'cache_dir_writable', 'Có thể ghi bộ nhớ đệm', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(832, 1, 'vi', 'core/base/system', 'cache_driver', 'Loại lưu trữ bộ nhớ đệm', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(833, 1, 'vi', 'core/base/system', 'copy_report', 'Sao chép báo cáo', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(834, 1, 'vi', 'core/base/system', 'curl_ext', 'CURL Ext', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(835, 1, 'vi', 'core/base/system', 'database', 'Hệ thống dữ liệu', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(836, 1, 'vi', 'core/base/system', 'debug_mode', 'Chế độ sửa lỗi', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(837, 1, 'vi', 'core/base/system', 'dependency_name', 'Tên gói', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(838, 1, 'vi', 'core/base/system', 'exif_ext', 'Exif Ext', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(839, 1, 'vi', 'core/base/system', 'extra_information', 'Thông tin mở rộng', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(840, 1, 'vi', 'core/base/system', 'extra_stats', 'Thống kê thêm', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(841, 1, 'vi', 'core/base/system', 'file_info_ext', 'File info Ext', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(842, 1, 'vi', 'core/base/system', 'framework_version', 'Phiên bản framework', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(843, 1, 'vi', 'core/base/system', 'get_system_report', 'Lấy thông tin hệ thống', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(844, 1, 'vi', 'core/base/system', 'installed_packages', 'Các gói đã cài đặt và phiên bản', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(845, 1, 'vi', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(846, 1, 'vi', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(847, 1, 'vi', 'core/base/system', 'package_name', 'Tên gói', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(848, 1, 'vi', 'core/base/system', 'pdo_ext', 'PDO Ext', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(849, 1, 'vi', 'core/base/system', 'php_version', 'Phiên bản PHP', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(850, 1, 'vi', 'core/base/system', 'report_description', 'Vui lòng chia sẻ thông tin này nhằm mục đích điều tra nguyên nhân gây lỗi', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(851, 1, 'vi', 'core/base/system', 'server_environment', 'Môi trường máy chủ', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(852, 1, 'vi', 'core/base/system', 'server_os', 'Hệ điều hành của máy chủ', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(853, 1, 'vi', 'core/base/system', 'server_software', 'Phần mềm', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(854, 1, 'vi', 'core/base/system', 'session_driver', 'Loại lưu trữ phiên làm việc', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(855, 1, 'vi', 'core/base/system', 'ssl_installed', 'Đã cài đặt chứng chỉ SSL', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(856, 1, 'vi', 'core/base/system', 'storage_dir_writable', 'Có thể lưu trữ dữ liệu tạm', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(857, 1, 'vi', 'core/base/system', 'system_environment', 'Môi trường hệ thống', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(858, 1, 'vi', 'core/base/system', 'timezone', 'Múi giờ', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(859, 1, 'vi', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(860, 1, 'vi', 'core/base/system', 'version', 'Phiên bản', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(861, 1, 'vi', 'core/base/system', 'cms_version', 'Phiên bản CMS', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(862, 1, 'vi', 'core/base/tables', 'filter_enabled', 'Tìm kiếm nâng cao đã được kích hoạt', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(863, 1, 'vi', 'core/base/tables', 'id', 'ID', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(864, 1, 'vi', 'core/base/tables', 'name', 'Tên', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(865, 1, 'vi', 'core/base/tables', 'order_by', 'Thứ tự', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(866, 1, 'vi', 'core/base/tables', 'status', 'Trạng thái', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(867, 1, 'vi', 'core/base/tables', 'created_at', 'Ngày tạo', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(868, 1, 'vi', 'core/base/tables', 'updated_at', 'Ngày cập nhật', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(869, 1, 'vi', 'core/base/tables', 'operations', 'Tác vụ', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(870, 1, 'vi', 'core/base/tables', 'loading_data', 'Đang tải dữ liệu từ server', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(871, 1, 'vi', 'core/base/tables', 'url', 'URL', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(872, 1, 'vi', 'core/base/tables', 'author', 'Người tạo', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(873, 1, 'vi', 'core/base/tables', 'column', 'Cột', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(874, 1, 'vi', 'core/base/tables', 'origin', 'Bản cũ', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(875, 1, 'vi', 'core/base/tables', 'after_change', 'Sau khi thay đổi', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(876, 1, 'vi', 'core/base/tables', 'notes', 'Ghi chú', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(877, 1, 'vi', 'core/base/tables', 'activated', 'kích hoạt', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(878, 1, 'vi', 'core/base/tables', 'browser', 'Trình duyệt', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(879, 1, 'vi', 'core/base/tables', 'deactivated', 'hủy kích hoạt', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(880, 1, 'vi', 'core/base/tables', 'description', 'Mô tả', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(881, 1, 'vi', 'core/base/tables', 'session', 'Phiên', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(882, 1, 'vi', 'core/base/tables', 'views', 'Lượt xem', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(883, 1, 'vi', 'core/base/tables', 'restore', 'Khôi phục', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(884, 1, 'vi', 'core/base/tables', 'edit', 'Sửa', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(885, 1, 'vi', 'core/base/tables', 'delete', 'Xóa', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(886, 1, 'vi', 'core/base/tables', 'action', 'Hành động', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(887, 1, 'vi', 'core/base/tables', 'activate', 'Kích hoạt', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(888, 1, 'vi', 'core/base/tables', 'add_new', 'Thêm mới', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(889, 1, 'vi', 'core/base/tables', 'all', 'Tất cả', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(890, 1, 'vi', 'core/base/tables', 'cancel', 'Hủy bỏ', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(891, 1, 'vi', 'core/base/tables', 'confirm_delete', 'Xác nhận xóa', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(892, 1, 'vi', 'core/base/tables', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xóa bản ghi này?', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(893, 1, 'vi', 'core/base/tables', 'csv', 'CSV', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(894, 1, 'vi', 'core/base/tables', 'deactivate', 'Hủy kích hoạt', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(895, 1, 'vi', 'core/base/tables', 'delete_entry', 'Xóa bản ghi', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(896, 1, 'vi', 'core/base/tables', 'display', 'Hiển thị', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(897, 1, 'vi', 'core/base/tables', 'excel', 'Excel', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(898, 1, 'vi', 'core/base/tables', 'export', 'Xuất bản', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(899, 1, 'vi', 'core/base/tables', 'filter', 'Nhập từ khóa...', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(900, 1, 'vi', 'core/base/tables', 'filtered_from', 'được lọc từ', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(901, 1, 'vi', 'core/base/tables', 'in', 'trong tổng số', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(902, 1, 'vi', 'core/base/tables', 'loading', 'Đang tải dữ liệu từ hệ thống', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(903, 1, 'vi', 'core/base/tables', 'no_data', 'Không có dữ liệu để hiển thị', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(904, 1, 'vi', 'core/base/tables', 'no_record', 'Không có dữ liệu', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(905, 1, 'vi', 'core/base/tables', 'pdf', 'PDF', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(906, 1, 'vi', 'core/base/tables', 'print', 'In', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(907, 1, 'vi', 'core/base/tables', 'records', 'bản ghi', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(908, 1, 'vi', 'core/base/tables', 'reload', 'Tải lại', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(909, 1, 'vi', 'core/base/tables', 'reset', 'Làm mới', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(910, 1, 'vi', 'core/base/tables', 'save', 'Lưu', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(911, 1, 'vi', 'core/base/tables', 'show_from', 'Hiển thị từ', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(912, 1, 'vi', 'core/base/tables', 'template', 'Giao diện', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(913, 1, 'vi', 'core/base/tables', 'to', 'đến', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(914, 1, 'vi', 'core/base/tables', 'view', 'Xem chi tiết', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(915, 1, 'vi', 'core/base/tables', 'email', 'Email', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(916, 1, 'vi', 'core/base/tables', 'image', 'Hình ảnh', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(917, 1, 'vi', 'core/base/tables', 'is_featured', 'Nổi bật', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(918, 1, 'vi', 'core/base/tables', 'last_login', 'Lần cuối đăng nhập', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(919, 1, 'vi', 'core/base/tables', 'order', 'Thứ tự', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(920, 1, 'vi', 'core/base/tables', 'shortcode', 'Shortcode', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(921, 1, 'vi', 'core/base/tables', 'slug', 'Slug', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(922, 1, 'vi', 'core/base/tables', 'title', 'Tiêu đề', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(923, 1, 'vi', 'core/base/tabs', 'detail', 'Chi tiết', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(924, 1, 'vi', 'core/base/tabs', 'file', 'Tập tin', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(925, 1, 'vi', 'core/base/tabs', 'record_note', 'Ghi chú', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(926, 1, 'vi', 'core/base/tabs', 'revision', 'Lịch sử thay đổi', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(927, 1, 'en', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(928, 1, 'en', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(929, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(930, 1, 'en', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(931, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(932, 1, 'en', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(933, 1, 'en', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(934, 1, 'en', 'core/dashboard/dashboard', 'hide', 'Hide', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(935, 1, 'en', 'core/dashboard/dashboard', 'reload', 'Reload', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(936, 1, 'en', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(937, 1, 'en', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(938, 1, 'en', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(939, 1, 'en', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(940, 1, 'en', 'core/dashboard/dashboard', 'title', 'Dashboard', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(941, 1, 'vi', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Hủy bỏ', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(942, 1, 'vi', 'core/dashboard/dashboard', 'collapse_expand', 'Mở rộng', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(943, 1, 'vi', 'core/dashboard/dashboard', 'confirm_hide', 'Bạn có chắc?', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(944, 1, 'vi', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Vâng, ẩn tiện ích này', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(945, 1, 'vi', 'core/dashboard/dashboard', 'hide', 'Ẩn', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(946, 1, 'vi', 'core/dashboard/dashboard', 'hide_message', 'Bạn có chắc chắn muốn ẩn tiện ích này? Nó sẽ không được hiển thị trên trang chủ nữa!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(947, 1, 'vi', 'core/dashboard/dashboard', 'hide_success', 'Ẩn tiện ích thành công!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(948, 1, 'vi', 'core/dashboard/dashboard', 'manage_widgets', 'Quản lý tiện ích', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(949, 1, 'vi', 'core/dashboard/dashboard', 'reload', 'Làm mới', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(950, 1, 'vi', 'core/dashboard/dashboard', 'save_setting_success', 'Lưu tiện ích thành công', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(951, 1, 'vi', 'core/dashboard/dashboard', 'update_position_success', 'Cập nhật vị trí tiện ích thành công!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(952, 1, 'vi', 'core/dashboard/dashboard', 'widget_not_exists', 'Tiện ích này không tồn tại!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(953, 1, 'vi', 'core/dashboard/dashboard', 'fullscreen', 'Toàn màn hình', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(954, 1, 'vi', 'core/dashboard/dashboard', 'title', 'Trang quản trị', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(955, 1, 'en', 'core/media/media', 'filter', 'Filter', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(956, 1, 'en', 'core/media/media', 'everything', 'Everything', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(957, 1, 'en', 'core/media/media', 'image', 'Image', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(958, 1, 'en', 'core/media/media', 'video', 'Video', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(959, 1, 'en', 'core/media/media', 'document', 'Document', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(960, 1, 'en', 'core/media/media', 'view_in', 'View in', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(961, 1, 'en', 'core/media/media', 'all_media', 'All media', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(962, 1, 'en', 'core/media/media', 'trash', 'Trash', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(963, 1, 'en', 'core/media/media', 'recent', 'Recent', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(964, 1, 'en', 'core/media/media', 'favorites', 'Favorites', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(965, 1, 'en', 'core/media/media', 'upload', 'Upload', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(966, 1, 'en', 'core/media/media', 'add_from', 'Add from', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(967, 1, 'en', 'core/media/media', 'youtube', 'Youtube', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(968, 1, 'en', 'core/media/media', 'vimeo', 'Vimeo', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(969, 1, 'en', 'core/media/media', 'vine', 'Vine', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(970, 1, 'en', 'core/media/media', 'daily_motion', 'Dailymotion', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(971, 1, 'en', 'core/media/media', 'create_folder', 'Create folder', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(972, 1, 'en', 'core/media/media', 'refresh', 'Refresh', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(973, 1, 'en', 'core/media/media', 'empty_trash', 'Empty trash', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(974, 1, 'en', 'core/media/media', 'search_file_and_folder', 'Search file and folder', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(975, 1, 'en', 'core/media/media', 'sort', 'Sort', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(976, 1, 'en', 'core/media/media', 'file_name_asc', 'File name - ASC', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(977, 1, 'en', 'core/media/media', 'file_name_desc', 'File name - DESC', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(978, 1, 'en', 'core/media/media', 'created_date_asc', 'Created date - ASC', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(979, 1, 'en', 'core/media/media', 'created_date_desc', 'Created_date - DESC', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(980, 1, 'en', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(981, 1, 'en', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(982, 1, 'en', 'core/media/media', 'size_asc', 'Size - ASC', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(983, 1, 'en', 'core/media/media', 'size_desc', 'Size - DESC', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(984, 1, 'en', 'core/media/media', 'actions', 'Actions', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(985, 1, 'en', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(986, 1, 'en', 'core/media/media', 'insert', 'Insert', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(987, 1, 'en', 'core/media/media', 'coming_soon', 'Coming soon', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(988, 1, 'en', 'core/media/media', 'add_from_youtube', 'Add from youtube', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(989, 1, 'en', 'core/media/media', 'playlist', 'Playlist', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(990, 1, 'en', 'core/media/media', 'add_url', 'Add URL', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(991, 1, 'en', 'core/media/media', 'folder_name', 'Folder name', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(992, 1, 'en', 'core/media/media', 'create', 'Create', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(993, 1, 'en', 'core/media/media', 'rename', 'Rename', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(994, 1, 'en', 'core/media/media', 'close', 'Close', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(995, 1, 'en', 'core/media/media', 'save_changes', 'Save changes', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(996, 1, 'en', 'core/media/media', 'move_to_trash', 'Move items to trash', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(997, 1, 'en', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(998, 1, 'en', 'core/media/media', 'confirm', 'Confirm', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(999, 1, 'en', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1000, 1, 'en', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1001, 1, 'en', 'core/media/media', 'empty_trash_title', 'Empty trash', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1002, 1, 'en', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback.Are you sure you wanna remove all items in trash?', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1003, 1, 'en', 'core/media/media', 'up_level', 'Up one level', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1004, 1, 'en', 'core/media/media', 'upload_progress', 'Upload progress', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1005, 1, 'en', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1006, 1, 'en', 'core/media/media', 'gallery', 'Media gallery', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1007, 1, 'en', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1008, 1, 'en', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1009, 1, 'en', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1010, 1, 'en', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1011, 1, 'en', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1012, 1, 'en', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1013, 1, 'en', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1014, 1, 'en', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1015, 1, 'en', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1016, 1, 'en', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1017, 1, 'en', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1018, 1, 'en', 'core/media/media', 'invalid_action', 'Invalid action!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1019, 1, 'en', 'core/media/media', 'file_not_exists', 'File is not exists!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1020, 1, 'en', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1021, 1, 'en', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1022, 1, 'en', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1023, 1, 'en', 'core/media/media', 'invalid_request', 'Invalid request!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1024, 1, 'en', 'core/media/media', 'add_success', 'Add item successfully!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1025, 1, 'en', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1026, 1, 'en', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1027, 1, 'en', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1028, 1, 'en', 'core/media/media', 'menu_name', 'Media', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1029, 1, 'en', 'core/media/media', 'add', 'Add media', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1030, 1, 'en', 'core/media/media', 'javascript.name', 'Name', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1031, 1, 'en', 'core/media/media', 'javascript.url', 'Url', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1032, 1, 'en', 'core/media/media', 'javascript.full_url', 'Full url', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1033, 1, 'en', 'core/media/media', 'javascript.size', 'Size', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1034, 1, 'en', 'core/media/media', 'javascript.mime_type', 'Type', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1035, 1, 'en', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1036, 1, 'en', 'core/media/media', 'javascript.updated_at', 'Modified at', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1037, 1, 'en', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1038, 1, 'en', 'core/media/media', 'javascript.visit_link', 'Open link', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1039, 1, 'en', 'core/media/media', 'javascript.add_from.youtube.original_msg', 'Please input Youtube URL', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1040, 1, 'en', 'core/media/media', 'javascript.add_from.youtube.no_api_key_msg', 'Please specify the Youtube API key', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1041, 1, 'en', 'core/media/media', 'javascript.add_from.youtube.invalid_url_msg', 'Your link is not belongs to Youtube', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1042, 1, 'en', 'core/media/media', 'javascript.add_from.youtube.error_msg', 'Some error occurred...', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1043, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1044, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1045, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1046, 1, 'en', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1047, 1, 'en', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1048, 1, 'en', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1049, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1050, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1051, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1052, 1, 'en', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1053, 1, 'en', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1054, 1, 'en', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1055, 1, 'en', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1056, 1, 'en', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1057, 1, 'en', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1058, 1, 'en', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1059, 1, 'en', 'core/media/media', 'javascript.message.error_header', 'Error', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1060, 1, 'en', 'core/media/media', 'javascript.message.success_header', 'Success', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1061, 1, 'en', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1062, 1, 'en', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1063, 1, 'en', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1064, 1, 'en', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1065, 1, 'en', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1066, 1, 'en', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1067, 1, 'en', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1068, 1, 'en', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1069, 1, 'en', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1070, 1, 'en', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1071, 1, 'en', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1072, 1, 'en', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1073, 1, 'vi', 'core/media/media', 'filter', 'Lọc', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1074, 1, 'vi', 'core/media/media', 'everything', 'Tất cả', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1075, 1, 'vi', 'core/media/media', 'image', 'Hình ảnh', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1076, 1, 'vi', 'core/media/media', 'video', 'Phim', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1077, 1, 'vi', 'core/media/media', 'document', 'Tài liệu', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1078, 1, 'vi', 'core/media/media', 'view_in', 'Chế độ xem', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1079, 1, 'vi', 'core/media/media', 'all_media', 'Tất cả tập tin', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1080, 1, 'vi', 'core/media/media', 'trash', 'Thùng rác', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1081, 1, 'vi', 'core/media/media', 'recent', 'Gần đây', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1082, 1, 'vi', 'core/media/media', 'favorites', 'Được gắn dấu sao', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1083, 1, 'vi', 'core/media/media', 'upload', 'Tải lên', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1084, 1, 'vi', 'core/media/media', 'add_from', 'Thêm từ', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1085, 1, 'vi', 'core/media/media', 'youtube', 'Youtube', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1086, 1, 'vi', 'core/media/media', 'vimeo', 'Vimeo', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1087, 1, 'vi', 'core/media/media', 'vine', 'Vine', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1088, 1, 'vi', 'core/media/media', 'daily_motion', 'Dailymotion', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1089, 1, 'vi', 'core/media/media', 'create_folder', 'Tạo thư mục', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1090, 1, 'vi', 'core/media/media', 'refresh', 'Làm mới', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1091, 1, 'vi', 'core/media/media', 'empty_trash', 'Dọn thùng rác', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1092, 1, 'vi', 'core/media/media', 'search_file_and_folder', 'Tìm kiếm tập tin và thư mục', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1093, 1, 'vi', 'core/media/media', 'sort', 'Sắp xếp', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1094, 1, 'vi', 'core/media/media', 'file_name_asc', 'Tên tập tin - ASC', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1095, 1, 'vi', 'core/media/media', 'file_name_desc', 'Tên tập tin - DESC', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1096, 1, 'vi', 'core/media/media', 'created_date_asc', 'Ngày tạo - ASC', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1097, 1, 'vi', 'core/media/media', 'created_date_desc', 'Ngày tạo - DESC', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1098, 1, 'vi', 'core/media/media', 'uploaded_date_asc', 'Ngày tải lên - ASC', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1099, 1, 'vi', 'core/media/media', 'uploaded_date_desc', 'Ngày tải lên - DESC', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1100, 1, 'vi', 'core/media/media', 'size_asc', 'Kích thước - ASC', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1101, 1, 'vi', 'core/media/media', 'size_desc', 'Kích thước - DESC', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1102, 1, 'vi', 'core/media/media', 'actions', 'Hành động', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1103, 1, 'vi', 'core/media/media', 'nothing_is_selected', 'Không có tập tin nào được chọn', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1104, 1, 'vi', 'core/media/media', 'insert', 'Chèn', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1105, 1, 'vi', 'core/media/media', 'coming_soon', 'Đang phát triển', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1106, 1, 'vi', 'core/media/media', 'add_from_youtube', 'Thêm từ youtube', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1107, 1, 'vi', 'core/media/media', 'playlist', 'Playlist', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1108, 1, 'vi', 'core/media/media', 'add_url', 'Thêm đường dẫn', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1109, 1, 'vi', 'core/media/media', 'folder_name', 'Tên thư mục', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1110, 1, 'vi', 'core/media/media', 'create', 'Tạo', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1111, 1, 'vi', 'core/media/media', 'rename', 'Đổi tên', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1112, 1, 'vi', 'core/media/media', 'close', 'Đóng', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1113, 1, 'vi', 'core/media/media', 'save_changes', 'Lưu thay đổi', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1114, 1, 'vi', 'core/media/media', 'move_to_trash', 'Đưa vào thùng rác', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1115, 1, 'vi', 'core/media/media', 'confirm_trash', 'Bạn có chắc chắn muốn bỏ những tập tin này vào thùng rác?', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1116, 1, 'vi', 'core/media/media', 'confirm', 'Xác nhận', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1117, 1, 'vi', 'core/media/media', 'confirm_delete', 'Xóa tập tin', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1118, 1, 'vi', 'core/media/media', 'confirm_delete_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn xóa các tập tin này?', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1119, 1, 'vi', 'core/media/media', 'empty_trash_title', 'Dọn sạch thùng rác', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1120, 1, 'vi', 'core/media/media', 'empty_trash_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn dọn sạch thùng rác?', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1121, 1, 'vi', 'core/media/media', 'up_level', 'Quay lại một cấp', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1122, 1, 'vi', 'core/media/media', 'upload_progress', 'Tiến trình tải lên', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1123, 1, 'vi', 'core/media/media', 'name_reserved', 'Tên này không được phép đặt', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1124, 1, 'vi', 'core/media/media', 'folder_created', 'Tạo thư mục thành công!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1125, 1, 'vi', 'core/media/media', 'gallery', 'Thư viện tập tin', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1126, 1, 'vi', 'core/media/media', 'trash_error', 'Có lỗi khi xóa tập tin/thư mục', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1127, 1, 'vi', 'core/media/media', 'trash_success', 'Xóa tập tin/thư mục thành công!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1128, 1, 'vi', 'core/media/media', 'restore_error', 'Có lỗi trong quá trình khôi phục', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1129, 1, 'vi', 'core/media/media', 'restore_success', 'Khôi phục thành công!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1130, 1, 'vi', 'core/media/media', 'copy_success', 'Sao chép thành công!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1131, 1, 'vi', 'core/media/media', 'delete_success', 'Xóa thành công!', '2020-03-29 20:06:55', '2020-03-29 20:06:55'),
(1132, 1, 'vi', 'core/media/media', 'favorite_success', 'Thêm dấu sao thành công!', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1133, 1, 'vi', 'core/media/media', 'remove_favorite_success', 'Bỏ dấu sao thành công!', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1134, 1, 'vi', 'core/media/media', 'rename_error', 'Có lỗi trong quá trình đổi tên', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1135, 1, 'vi', 'core/media/media', 'rename_success', 'Đổi tên thành công!', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1136, 1, 'vi', 'core/media/media', 'invalid_action', 'Hành động không hợp lệ!', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1137, 1, 'vi', 'core/media/media', 'file_not_exists', 'Tập tin không tồn tại!', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1138, 1, 'vi', 'core/media/media', 'download_file_error', 'Có lỗi trong quá trình tải xuống tập tin!', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1139, 1, 'vi', 'core/media/media', 'missing_zip_archive_extension', 'Hãy bật ZipArchive extension để tải tập tin!', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1140, 1, 'vi', 'core/media/media', 'can_not_download_file', 'Không thể tải tập tin!', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1141, 1, 'vi', 'core/media/media', 'invalid_request', 'Yêu cầu không hợp lệ!', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1142, 1, 'vi', 'core/media/media', 'add_success', 'Thêm thành công!', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1143, 1, 'vi', 'core/media/media', 'file_too_big', 'Tập tin quá lớn. Giới hạn tải lên là :size bytes', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1144, 1, 'vi', 'core/media/media', 'can_not_detect_file_type', 'Loại tập tin không hợp lệ hoặc không thể xác định loại tập tin!', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1145, 1, 'vi', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1146, 1, 'vi', 'core/media/media', 'menu_name', 'Quản lý tập tin', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1147, 1, 'vi', 'core/media/media', 'add', 'Thêm tập tin', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1148, 1, 'vi', 'core/media/media', 'javascript.name', 'Tên', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1149, 1, 'vi', 'core/media/media', 'javascript.url', 'Đường dẫn', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1150, 1, 'vi', 'core/media/media', 'javascript.full_url', 'Đường dẫn tuyệt đối', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1151, 1, 'vi', 'core/media/media', 'javascript.size', 'Kích thước', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1152, 1, 'vi', 'core/media/media', 'javascript.mime_type', 'Loại', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1153, 1, 'vi', 'core/media/media', 'javascript.created_at', 'Được tải lên lúc', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1154, 1, 'vi', 'core/media/media', 'javascript.updated_at', 'Được chỉnh sửa lúc', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1155, 1, 'vi', 'core/media/media', 'javascript.nothing_selected', 'Bạn chưa chọn tập tin nào', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1156, 1, 'vi', 'core/media/media', 'javascript.visit_link', 'Mở liên kết', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1157, 1, 'vi', 'core/media/media', 'javascript.add_from.youtube.original_msg', 'Vui lòng nhập chính xác đường dẫn Youtube', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1158, 1, 'vi', 'core/media/media', 'javascript.add_from.youtube.no_api_key_msg', 'Vui lòng khai báo API key của Youtube', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1159, 1, 'vi', 'core/media/media', 'javascript.add_from.youtube.invalid_url_msg', 'Liên kết này không dẫn đến Youtube', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1160, 1, 'vi', 'core/media/media', 'javascript.add_from.youtube.error_msg', 'Có lỗi xảy ra trong tiến trình thực hiện...', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1161, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1162, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.title', 'Bạn có thể kéo thả tập tin vào đây để tải lên', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1163, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.message', 'Hoặc có thể bấm nút Tải lên ở phía trên', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1164, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1165, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.title', 'Hiện tại không có tập tin nào trong thùng rác', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1166, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.message', 'Xóa tập tin sẽ đem tập tin lưu vào thùng rác. Xóa tập tin trong thùng rác sẽ xóa vĩnh viễn.', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1167, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1168, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.title', 'Bạn chưa đặt tập tin nào vào mục yêu thích', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1169, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.message', 'Thêm tập tin vào mục yêu thích để tìm kiếm chúng dễ dàng sau này.', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1170, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1171, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.title', 'Bạn chưa mở tập tin nào.', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1172, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.message', 'Mục này hiển thị các tập tin bạn đã xem gần đây.', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1173, 1, 'vi', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1174, 1, 'vi', 'core/media/media', 'javascript.no_item.default.title', 'Thư mục trống', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1175, 1, 'vi', 'core/media/media', 'javascript.no_item.default.message', 'Thư mục này chưa có tập tin nào', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1176, 1, 'vi', 'core/media/media', 'javascript.clipboard.success', 'Đường dẫn của các tập tin đã được sao chép vào clipboard', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1177, 1, 'vi', 'core/media/media', 'javascript.message.error_header', 'Lỗi', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1178, 1, 'vi', 'core/media/media', 'javascript.message.success_header', 'Thành công', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1179, 1, 'vi', 'core/media/media', 'javascript.download.error', 'Bạn chưa chọn tập tin nào hoặc tập tin này không cho phép tải về', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1180, 1, 'vi', 'core/media/media', 'javascript.actions_list.basic.preview', 'Xem trước', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1181, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Sao chép đường dẫn', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1182, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.rename', 'Đổi tên', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1183, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Nhân bản', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1184, 1, 'vi', 'core/media/media', 'javascript.actions_list.user.favorite', 'Yêu thích', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1185, 1, 'vi', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Xóa khỏi mục yêu thích', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1186, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.download', 'Tải xuống', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1187, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.trash', 'Chuyển vào thùng rác', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1188, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.delete', 'Xóa hoàn toàn', '2020-03-29 20:06:56', '2020-03-29 20:06:56');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1189, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.restore', 'Khôi phục', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1190, 1, 'vi', 'core/media/media', 'empty_trash_success', 'Dọn sạch thùng rác thành công', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1191, 1, 'vi', 'core/media/media', 'name_invalid', 'Tên thư mục chứa ký tự không hợp lệ', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1192, 1, 'en', 'core/setting/setting', 'title', 'Settings', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1193, 1, 'en', 'core/setting/setting', 'email_setting_title', 'Email settings', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1194, 1, 'en', 'core/setting/setting', 'general.theme', 'Theme', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1195, 1, 'en', 'core/setting/setting', 'general.description', 'Setting site information', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1196, 1, 'en', 'core/setting/setting', 'general.title', 'General', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1197, 1, 'en', 'core/setting/setting', 'general.general_block', 'General Information', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1198, 1, 'en', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1199, 1, 'en', 'core/setting/setting', 'general.site_title', 'Site title', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1200, 1, 'en', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1201, 1, 'en', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1202, 1, 'en', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1203, 1, 'en', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1204, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1205, 1, 'en', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1206, 1, 'en', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1207, 1, 'en', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1208, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1209, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1210, 1, 'en', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1211, 1, 'en', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1212, 1, 'en', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1213, 1, 'en', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1214, 1, 'en', 'core/setting/setting', 'general.optimize_page_speed', 'Optimize page speed (minify HTML output, inline CSS, remove comments ..)', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1215, 1, 'en', 'core/setting/setting', 'general.time_zone', 'Timezone', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1216, 1, 'en', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1217, 1, 'en', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1218, 1, 'en', 'core/setting/setting', 'general.enable_multi_language_in_admin', 'Enable multi language in admin area?', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1219, 1, 'en', 'core/setting/setting', 'general.enable', 'Enable', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1220, 1, 'en', 'core/setting/setting', 'general.disable', 'Disable', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1221, 1, 'en', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1222, 1, 'en', 'core/setting/setting', 'general.cache_time', 'Cache time', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1223, 1, 'en', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1224, 1, 'en', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1225, 1, 'en', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1226, 1, 'en', 'core/setting/setting', 'general.admin_title', 'Admin title', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1227, 1, 'en', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1228, 1, 'en', 'core/setting/setting', 'general.cache_block', 'Cache', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1229, 1, 'en', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1230, 1, 'en', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1231, 1, 'en', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1232, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1233, 1, 'en', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1234, 1, 'en', 'core/setting/setting', 'general.yes', 'Yes', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1235, 1, 'en', 'core/setting/setting', 'general.no', 'No', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1236, 1, 'en', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1237, 1, 'en', 'core/setting/setting', 'general.select', '— Select —', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1238, 1, 'en', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1239, 1, 'en', 'core/setting/setting', 'email.subject', 'Subject', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1240, 1, 'en', 'core/setting/setting', 'email.content', 'Content', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1241, 1, 'en', 'core/setting/setting', 'email.title', 'Setting for email template', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1242, 1, 'en', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1243, 1, 'en', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1244, 1, 'en', 'core/setting/setting', 'email.back', 'Back to settings', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1245, 1, 'en', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1246, 1, 'en', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1247, 1, 'en', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1248, 1, 'en', 'core/setting/setting', 'email.continue', 'Continue', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1249, 1, 'en', 'core/setting/setting', 'email.sender_name', 'Sender name', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1250, 1, 'en', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1251, 1, 'en', 'core/setting/setting', 'email.sender_email', 'Sender email', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1252, 1, 'en', 'core/setting/setting', 'email.driver', 'Driver', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1253, 1, 'en', 'core/setting/setting', 'email.port', 'Port', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1254, 1, 'en', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1255, 1, 'en', 'core/setting/setting', 'email.host', 'Host', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1256, 1, 'en', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1257, 1, 'en', 'core/setting/setting', 'email.username', 'Username', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1258, 1, 'en', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1259, 1, 'en', 'core/setting/setting', 'email.password', 'Password', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1260, 1, 'en', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1261, 1, 'en', 'core/setting/setting', 'email.encryption', 'Encryption', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1262, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1263, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1264, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1265, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1266, 1, 'en', 'core/setting/setting', 'email.template_title', 'Email templates', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1267, 1, 'en', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1268, 1, 'en', 'core/setting/setting', 'email.template_header', 'Email template header', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1269, 1, 'en', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1270, 1, 'en', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1271, 1, 'en', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1272, 1, 'en', 'core/setting/setting', 'media.title', 'Media', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1273, 1, 'en', 'core/setting/setting', 'media.driver', 'Driver', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1274, 1, 'en', 'core/setting/setting', 'media.description', 'Settings for media', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1275, 1, 'en', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1276, 1, 'en', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1277, 1, 'en', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1278, 1, 'en', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1279, 1, 'en', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1280, 1, 'en', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1281, 1, 'en', 'core/setting/setting', 'license.buyer', 'Buyer', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1282, 1, 'en', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1283, 1, 'en', 'core/setting/setting', 'save_settings', 'Save settings', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1284, 1, 'en', 'core/setting/setting', 'template', 'Template', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1285, 1, 'en', 'core/setting/setting', 'description', 'Description', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1286, 1, 'en', 'core/setting/setting', 'enable', 'Enable', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1287, 1, 'en', 'core/setting/setting', 'send', 'Send', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1288, 1, 'en', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1289, 1, 'en', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1290, 1, 'en', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1291, 1, 'en', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1292, 1, 'vi', 'core/setting/setting', 'title', 'Cài đặt', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1293, 1, 'vi', 'core/setting/setting', 'general.theme', 'Giao diện', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1294, 1, 'vi', 'core/setting/setting', 'general.description', 'Cấu hình những thông tin cài đặt website.', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1295, 1, 'vi', 'core/setting/setting', 'general.title', 'Thông tin chung', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1296, 1, 'vi', 'core/setting/setting', 'general.general_block', 'Thông tin chung', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1297, 1, 'vi', 'core/setting/setting', 'general.site_title', 'Tên trang', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1298, 1, 'vi', 'core/setting/setting', 'general.admin_email', 'Email quản trị viên', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1299, 1, 'vi', 'core/setting/setting', 'general.seo_block', 'Cấu hình SEO', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1300, 1, 'vi', 'core/setting/setting', 'general.seo_title', 'Tiêu đề SEO', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1301, 1, 'vi', 'core/setting/setting', 'general.seo_description', 'Mô tả SEO', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1302, 1, 'vi', 'core/setting/setting', 'general.seo_keywords', 'Từ khoá SEO', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1303, 1, 'vi', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1304, 1, 'vi', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1305, 1, 'vi', 'core/setting/setting', 'general.enable_captcha', 'Sử dụng Captcha?', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1306, 1, 'vi', 'core/setting/setting', 'general.contact_block', 'Thông tin liên hệ', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1307, 1, 'vi', 'core/setting/setting', 'general.placeholder.site_title', 'Tên trang (tối đa 120 kí tự)', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1308, 1, 'vi', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1309, 1, 'vi', 'core/setting/setting', 'general.placeholder.google_analytics', 'Ví dụ: UA-42767940-2', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1310, 1, 'vi', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Mã xác nhận trang web dùng cho Google Webmaster Tool', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1311, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_title', 'Tiêu đề SEO (tối đa 120 kí tự)', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1312, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_description', 'Mô tả SEO (tối đa 120 kí tự)', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1313, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_keywords', 'Từ khoá SEO (tối đa 60 kí tự, phân cách từ khóa bằng dấu phẩy)', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1314, 1, 'vi', 'core/setting/setting', 'general.enable_change_admin_theme', 'Cho phép thay đổi giao diện quản trị?', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1315, 1, 'vi', 'core/setting/setting', 'general.enable_multi_language_in_admin', 'Cho phép thay đổi ngôn ngữ trang quản trị?', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1316, 1, 'vi', 'core/setting/setting', 'general.enable', 'Bật', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1317, 1, 'vi', 'core/setting/setting', 'general.disable', 'Tắt', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1318, 1, 'vi', 'core/setting/setting', 'general.enable_cache', 'Bật bộ nhớ đệm?', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1319, 1, 'vi', 'core/setting/setting', 'general.cache_time', 'Thời gian lưu bộ nhớ đệm', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1320, 1, 'vi', 'core/setting/setting', 'general.cache_time_site_map', 'Thời gian lưu sơ đồ trang trong bộ nhớ đệm', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1321, 1, 'vi', 'core/setting/setting', 'general.admin_logo', 'Logo trang quản trị', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1322, 1, 'vi', 'core/setting/setting', 'general.admin_title', 'Tiêu đề trang quản trị', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1323, 1, 'vi', 'core/setting/setting', 'general.admin_title_placeholder', 'Tiêu đề hiển thị trên thẻ trình duyệt', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1324, 1, 'vi', 'core/setting/setting', 'general.rich_editor', 'Bộ soạn thảo văn bản', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1325, 1, 'vi', 'core/setting/setting', 'general.cache_block', 'Bộ nhớ đệm', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1326, 1, 'vi', 'core/setting/setting', 'general.yes', 'Bật', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1327, 1, 'vi', 'core/setting/setting', 'general.no', 'Tắt', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1328, 1, 'vi', 'core/setting/setting', 'email.subject', 'Tiêu đề', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1329, 1, 'vi', 'core/setting/setting', 'email.content', 'Nội dung', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1330, 1, 'vi', 'core/setting/setting', 'email.title', 'Cấu hình email template', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1331, 1, 'vi', 'core/setting/setting', 'email.description', 'Cấu trúc file template sử dụng HTML và các biến trong hệ thống.', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1332, 1, 'vi', 'core/setting/setting', 'email.reset_to_default', 'Khôi phục về mặc định', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1333, 1, 'vi', 'core/setting/setting', 'email.back', 'Trở lại trang cài đặt', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1334, 1, 'vi', 'core/setting/setting', 'email.reset_success', 'Khôi phục mặc định thành công', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1335, 1, 'vi', 'core/setting/setting', 'email.confirm_reset', 'Xác nhận khôi phục mặc định?', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1336, 1, 'vi', 'core/setting/setting', 'email.confirm_message', 'Bạn có chắc chắn muốn khôi phục về bản mặc định?', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1337, 1, 'vi', 'core/setting/setting', 'email.continue', 'Tiếp tục', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1338, 1, 'vi', 'core/setting/setting', 'email.sender_name', 'Tên người gửi', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1339, 1, 'vi', 'core/setting/setting', 'email.sender_name_placeholder', 'Tên', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1340, 1, 'vi', 'core/setting/setting', 'email.sender_email', 'Email của người gửi', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1341, 1, 'vi', 'core/setting/setting', 'email.driver', 'Loại', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1342, 1, 'vi', 'core/setting/setting', 'email.port', 'Cổng', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1343, 1, 'vi', 'core/setting/setting', 'email.port_placeholder', 'Ví dụ: 587', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1344, 1, 'vi', 'core/setting/setting', 'email.host', 'Máy chủ', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1345, 1, 'vi', 'core/setting/setting', 'email.host_placeholder', 'Ví dụ: smtp.gmail.com', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1346, 1, 'vi', 'core/setting/setting', 'email.username', 'Tên đăng nhập', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1347, 1, 'vi', 'core/setting/setting', 'email.username_placeholder', 'Tên đăng nhập vào máy chủ mail', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1348, 1, 'vi', 'core/setting/setting', 'email.password', 'Mật khẩu', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1349, 1, 'vi', 'core/setting/setting', 'email.password_placeholder', 'Mật khẩu đăng nhập vào máy chủ mail', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1350, 1, 'vi', 'core/setting/setting', 'email.encryption', 'Mã hoá', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1351, 1, 'vi', 'core/setting/setting', 'email.mail_gun_domain', 'Tên miền', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1352, 1, 'vi', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Tên miền', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1353, 1, 'vi', 'core/setting/setting', 'email.mail_gun_secret', 'Chuỗi bí mật', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1354, 1, 'vi', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Chuỗi bí mật', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1355, 1, 'vi', 'core/setting/setting', 'email.template_title', 'Mẫu giao diện email', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1356, 1, 'vi', 'core/setting/setting', 'email.template_description', 'Giao diện mặc định cho tất cả email', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1357, 1, 'vi', 'core/setting/setting', 'email.template_header', 'Mẫu cho phần trên của email', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1358, 1, 'vi', 'core/setting/setting', 'email.template_header_description', 'Phần trên của tất cả email', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1359, 1, 'vi', 'core/setting/setting', 'email.template_footer', 'Mẫu cho phần dưới của email', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1360, 1, 'vi', 'core/setting/setting', 'email.template_footer_description', 'Phần dưới của tất cả email', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1361, 1, 'vi', 'core/setting/setting', 'save_settings', 'Lưu cài đặt', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1362, 1, 'vi', 'core/setting/setting', 'template', 'Mẫu', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1363, 1, 'vi', 'core/setting/setting', 'description', 'Mô tả', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1364, 1, 'vi', 'core/setting/setting', 'enable', 'Bật', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1365, 1, 'vi', 'core/setting/setting', 'test_send_mail', 'Gửi thử nghiệm', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1366, 1, 'en', 'core/table/general', 'operations', 'Operations', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1367, 1, 'en', 'core/table/general', 'loading_data', 'Loading data from server', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1368, 1, 'en', 'core/table/general', 'display', 'Display', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1369, 1, 'en', 'core/table/general', 'all', 'All', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1370, 1, 'en', 'core/table/general', 'edit_entry', 'Edit', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1371, 1, 'en', 'core/table/general', 'delete_entry', 'Delete', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1372, 1, 'en', 'core/table/general', 'show_from', 'Showing from', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1373, 1, 'en', 'core/table/general', 'to', 'to', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1374, 1, 'en', 'core/table/general', 'in', 'in', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1375, 1, 'en', 'core/table/general', 'records', 'records', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1376, 1, 'en', 'core/table/general', 'no_data', 'No data to display', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1377, 1, 'en', 'core/table/general', 'no_record', 'No record', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1378, 1, 'en', 'core/table/general', 'loading', 'Loading data from server', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1379, 1, 'en', 'core/table/general', 'confirm_delete', 'Confirm delete', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1380, 1, 'en', 'core/table/general', 'confirm_delete_msg', 'Do you really want to delete this record?', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1381, 1, 'en', 'core/table/general', 'cancel', 'Cancel', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1382, 1, 'en', 'core/table/general', 'delete', 'Delete', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1383, 1, 'en', 'core/table/general', 'close', 'Close', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1384, 1, 'en', 'core/table/general', 'contains', 'Contains', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1385, 1, 'en', 'core/table/general', 'is_equal_to', 'Is equal to', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1386, 1, 'en', 'core/table/general', 'greater_than', 'Greater than', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1387, 1, 'en', 'core/table/general', 'less_than', 'Less than', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1388, 1, 'en', 'core/table/general', 'value', 'Value', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1389, 1, 'en', 'core/table/general', 'select_field', 'Select field', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1390, 1, 'en', 'core/table/general', 'reset', 'Reset', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1391, 1, 'en', 'core/table/general', 'add_additional_filter', 'Add additional filter', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1392, 1, 'en', 'core/table/general', 'apply', 'Apply', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1393, 1, 'en', 'core/table/general', 'filters', 'Filters', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1394, 1, 'en', 'core/table/general', 'bulk_change', 'Bulk changes', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1395, 1, 'en', 'core/table/general', 'select_option', 'Select option', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1396, 1, 'en', 'core/table/general', 'bulk_actions', 'Bulk Actions', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1397, 1, 'en', 'core/table/general', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1398, 1, 'en', 'core/table/general', 'please_select_record', 'Please select at least one record to perform this action!', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1399, 1, 'en', 'core/table/general', 'filtered', '(filtered from _MAX_ total records)', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1400, 1, 'en', 'core/table/general', 'search', 'Search...', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1401, 1, 'vi', 'core/table/general', 'operations', 'Hành động', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1402, 1, 'vi', 'core/table/general', 'loading_data', 'Đang tải dữ liệu từ hệ thống', '2020-03-29 20:06:56', '2020-03-29 20:06:56'),
(1403, 1, 'vi', 'core/table/general', 'display', 'Hiển thị', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1404, 1, 'vi', 'core/table/general', 'all', 'Tất cả', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1405, 1, 'vi', 'core/table/general', 'edit_entry', 'Sửa', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1406, 1, 'vi', 'core/table/general', 'delete_entry', 'Xoá', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1407, 1, 'vi', 'core/table/general', 'show_from', 'Hiển thị từ', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1408, 1, 'vi', 'core/table/general', 'to', 'đến', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1409, 1, 'vi', 'core/table/general', 'in', 'trong tổng số', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1410, 1, 'vi', 'core/table/general', 'records', 'bản ghi', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1411, 1, 'vi', 'core/table/general', 'no_data', 'Không có dữ liệu để hiển thị', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1412, 1, 'vi', 'core/table/general', 'no_record', 'không có bản ghi nào', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1413, 1, 'vi', 'core/table/general', 'loading', 'Đang tải dữ liệu từ hệ thống', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1414, 1, 'vi', 'core/table/general', 'confirm_delete', 'Xác nhận xoá', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1415, 1, 'vi', 'core/table/general', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xoá bản ghi này?', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1416, 1, 'vi', 'core/table/general', 'cancel', 'Huỷ bỏ', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1417, 1, 'vi', 'core/table/general', 'delete', 'Xoá', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1418, 1, 'vi', 'core/table/general', 'close', 'Đóng', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1419, 1, 'vi', 'core/table/general', 'is_equal_to', 'Bằng với', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1420, 1, 'vi', 'core/table/general', 'greater_than', 'Lớn hơn', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1421, 1, 'vi', 'core/table/general', 'less_than', 'Nhỏ hơn', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1422, 1, 'vi', 'core/table/general', 'value', 'Giá trị', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1423, 1, 'vi', 'core/table/general', 'select_field', 'Chọn trường', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1424, 1, 'vi', 'core/table/general', 'reset', 'Làm mới', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1425, 1, 'vi', 'core/table/general', 'add_additional_filter', 'Thêm bộ lọc', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1426, 1, 'vi', 'core/table/general', 'apply', 'Áp dụng', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1427, 1, 'vi', 'core/table/general', 'select_option', 'Lựa chọn', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1428, 1, 'vi', 'core/table/general', 'filters', 'Lọc dữ liệu', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1429, 1, 'vi', 'core/table/general', 'bulk_change', 'Thay đổi hàng loạt', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1430, 1, 'vi', 'core/table/general', 'bulk_actions', 'Hành động', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1431, 1, 'vi', 'core/table/general', 'contains', 'Bao gồm', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1432, 1, 'vi', 'core/table/general', 'filtered', '(đã được lọc từ _MAX_ bản ghi)', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1433, 1, 'en', 'packages/installer/installer', 'title', 'Installer', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1434, 1, 'en', 'packages/installer/installer', 'next', 'Next Step', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1435, 1, 'en', 'packages/installer/installer', 'back', 'Previous', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1436, 1, 'en', 'packages/installer/installer', 'finish', 'Install', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1437, 1, 'en', 'packages/installer/installer', 'forms.errorTitle', 'The following errors occurred:', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1438, 1, 'en', 'packages/installer/installer', 'welcome.templateTitle', 'Botble CMS', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1439, 1, 'en', 'packages/installer/installer', 'welcome.title', 'Botble CMS', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1440, 1, 'en', 'packages/installer/installer', 'welcome.message', 'Welcome to Botble CMS. Before getting started, we need some information on the database. You will need to know the following items before proceeding.', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1441, 1, 'en', 'packages/installer/installer', 'welcome.next', 'Let\'s go', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1442, 1, 'en', 'packages/installer/installer', 'requirements.templateTitle', 'Step 1 | Server Requirements', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1443, 1, 'en', 'packages/installer/installer', 'requirements.title', 'Server Requirements', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1444, 1, 'en', 'packages/installer/installer', 'requirements.next', 'Check Permissions', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1445, 1, 'en', 'packages/installer/installer', 'permissions.templateTitle', 'Step 2 | Permissions', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1446, 1, 'en', 'packages/installer/installer', 'permissions.title', 'Permissions', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1447, 1, 'en', 'packages/installer/installer', 'permissions.next', 'Configure Environment', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1448, 1, 'en', 'packages/installer/installer', 'environment.wizard.templateTitle', 'Environment Settings', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1449, 1, 'en', 'packages/installer/installer', 'environment.wizard.title', 'Environment Settings', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1450, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.name_required', 'An environment name is required.', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1451, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.app_name_label', 'Site title', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1452, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.app_name_placeholder', 'Site title', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1453, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.app_url_label', 'URL', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1454, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.app_url_placeholder', 'URL', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1455, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_connection_label', 'Database Connection', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1456, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_connection_label_mysql', 'MySQL', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1457, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_connection_label_sqlite', 'SQLite', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1458, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_connection_label_pgsql', 'PostgreSQL', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1459, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_host_label', 'Database host', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1460, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_host_placeholder', 'Database host', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1461, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_port_label', 'Database port', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1462, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_port_placeholder', 'Database port', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1463, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_name_label', 'Database name', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1464, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_name_placeholder', 'Database name', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1465, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_username_label', 'Database username', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1466, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_username_placeholder', 'Database username', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1467, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_password_label', 'Database password', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1468, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_password_placeholder', 'Database password', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1469, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.buttons.install', 'Install', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1470, 1, 'en', 'packages/installer/installer', 'environment.classic.templateTitle', 'Step 3 | Environment Settings | Classic Editor', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1471, 1, 'en', 'packages/installer/installer', 'environment.classic.title', 'Classic Environment Editor', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1472, 1, 'en', 'packages/installer/installer', 'environment.classic.save', 'Save .env', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1473, 1, 'en', 'packages/installer/installer', 'environment.classic.back', 'Use Form Wizard', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1474, 1, 'en', 'packages/installer/installer', 'environment.classic.install', 'Save and Install', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1475, 1, 'en', 'packages/installer/installer', 'environment.success', 'Your .env file settings have been saved.', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1476, 1, 'en', 'packages/installer/installer', 'environment.errors', 'Unable to save the .env file, Please create it manually.', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1477, 1, 'en', 'packages/installer/installer', 'install', 'Install', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1478, 1, 'en', 'packages/installer/installer', 'final.title', 'Installation Finished', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1479, 1, 'en', 'packages/installer/installer', 'final.templateTitle', 'Installation Finished', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1480, 1, 'en', 'packages/installer/installer', 'final.finished', 'Application has been successfully installed.', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1481, 1, 'en', 'packages/installer/installer', 'final.migration', 'Migration & Seed Console Output:', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1482, 1, 'en', 'packages/installer/installer', 'final.console', 'Application Console Output:', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1483, 1, 'en', 'packages/installer/installer', 'final.log', 'Installation Log Entry:', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1484, 1, 'en', 'packages/installer/installer', 'final.env', 'Final .env File:', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1485, 1, 'en', 'packages/installer/installer', 'final.exit', 'Click here to exit', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1486, 1, 'vi', 'packages/installer/installer', 'title', 'Installer', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1487, 1, 'vi', 'packages/installer/installer', 'next', 'Next Step', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1488, 1, 'vi', 'packages/installer/installer', 'back', 'Previous', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1489, 1, 'vi', 'packages/installer/installer', 'finish', 'Install', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1490, 1, 'vi', 'packages/installer/installer', 'forms.errorTitle', 'The following errors occurred:', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1491, 1, 'vi', 'packages/installer/installer', 'welcome.templateTitle', 'Botble CMS', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1492, 1, 'vi', 'packages/installer/installer', 'welcome.title', 'Botble CMS', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1493, 1, 'vi', 'packages/installer/installer', 'welcome.message', 'Welcome to Botble CMS. Before getting started, we need some information on the database. You will need to know the following items before proceeding.', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1494, 1, 'vi', 'packages/installer/installer', 'welcome.next', 'Let\'s go', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1495, 1, 'vi', 'packages/installer/installer', 'requirements.templateTitle', 'Step 1 | Server Requirements', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1496, 1, 'vi', 'packages/installer/installer', 'requirements.title', 'Server Requirements', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1497, 1, 'vi', 'packages/installer/installer', 'requirements.next', 'Check Permissions', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1498, 1, 'vi', 'packages/installer/installer', 'permissions.templateTitle', 'Step 2 | Permissions', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1499, 1, 'vi', 'packages/installer/installer', 'permissions.title', 'Permissions', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1500, 1, 'vi', 'packages/installer/installer', 'permissions.next', 'Configure Environment', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1501, 1, 'vi', 'packages/installer/installer', 'environment.wizard.templateTitle', 'Environment Settings', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1502, 1, 'vi', 'packages/installer/installer', 'environment.wizard.title', 'Environment Settings', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1503, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.name_required', 'An environment name is required.', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1504, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.app_name_label', 'Site title', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1505, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.app_name_placeholder', 'Site title', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1506, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.app_url_label', 'URL', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1507, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.app_url_placeholder', 'URL', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1508, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_connection_label', 'Database Connection', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1509, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_connection_label_mysql', 'MySQL', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1510, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_connection_label_sqlite', 'SQLite', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1511, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_connection_label_pgsql', 'PostgreSQL', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1512, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_host_label', 'Database host', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1513, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_host_placeholder', 'Database host', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1514, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_port_label', 'Database port', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1515, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_port_placeholder', 'Database port', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1516, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_name_label', 'Database name', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1517, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_name_placeholder', 'Database name', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1518, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_username_label', 'Database username', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1519, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_username_placeholder', 'Database username', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1520, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_password_label', 'Database password', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1521, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_password_placeholder', 'Database password', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1522, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.buttons.install', 'Install', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1523, 1, 'vi', 'packages/installer/installer', 'environment.classic.templateTitle', 'Step 3 | Environment Settings | Classic Editor', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1524, 1, 'vi', 'packages/installer/installer', 'environment.classic.title', 'Classic Environment Editor', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1525, 1, 'vi', 'packages/installer/installer', 'environment.classic.save', 'Save .env', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1526, 1, 'vi', 'packages/installer/installer', 'environment.classic.back', 'Use Form Wizard', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1527, 1, 'vi', 'packages/installer/installer', 'environment.classic.install', 'Save and Install', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1528, 1, 'vi', 'packages/installer/installer', 'environment.success', 'Your .env file settings have been saved.', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1529, 1, 'vi', 'packages/installer/installer', 'environment.errors', 'Unable to save the .env file, Please create it manually.', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1530, 1, 'vi', 'packages/installer/installer', 'install', 'Install', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1531, 1, 'vi', 'packages/installer/installer', 'final.title', 'Installation Finished', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1532, 1, 'vi', 'packages/installer/installer', 'final.templateTitle', 'Installation Finished', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1533, 1, 'vi', 'packages/installer/installer', 'final.finished', 'Application has been successfully installed.', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1534, 1, 'vi', 'packages/installer/installer', 'final.migration', 'Migration & Seed Console Output:', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1535, 1, 'vi', 'packages/installer/installer', 'final.console', 'Application Console Output:', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1536, 1, 'vi', 'packages/installer/installer', 'final.log', 'Installation Log Entry:', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1537, 1, 'vi', 'packages/installer/installer', 'final.env', 'Final .env File:', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1538, 1, 'vi', 'packages/installer/installer', 'final.exit', 'Click here to exit', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1539, 1, 'en', 'packages/menu/menu', 'name', 'Menus', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1540, 1, 'en', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1541, 1, 'en', 'packages/menu/menu', 'basic_info', 'Basic information', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1542, 1, 'en', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1543, 1, 'en', 'packages/menu/menu', 'custom_link', 'Custom link', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1544, 1, 'en', 'packages/menu/menu', 'add_link', 'Add link', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1545, 1, 'en', 'packages/menu/menu', 'structure', 'Menu structure', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1546, 1, 'en', 'packages/menu/menu', 'remove', 'Remove', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1547, 1, 'en', 'packages/menu/menu', 'cancel', 'Cancel', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1548, 1, 'en', 'packages/menu/menu', 'title', 'Title', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1549, 1, 'en', 'packages/menu/menu', 'icon', 'Icon', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1550, 1, 'en', 'packages/menu/menu', 'url', 'URL', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1551, 1, 'en', 'packages/menu/menu', 'target', 'Target', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1552, 1, 'en', 'packages/menu/menu', 'css_class', 'CSS class', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1553, 1, 'en', 'packages/menu/menu', 'self_open_link', 'Open link directly', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1554, 1, 'en', 'packages/menu/menu', 'blank_open_link', 'Open link in new tab', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1555, 1, 'en', 'packages/menu/menu', 'create', 'Create menu', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1556, 1, 'en', 'packages/menu/menu', 'edit', 'Edit menu', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1557, 1, 'vi', 'packages/menu/menu', 'name', 'Trình đơn', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1558, 1, 'vi', 'packages/menu/menu', 'cancel', 'Hủy bỏ', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1559, 1, 'vi', 'packages/menu/menu', 'add_link', 'Thêm liên kết', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1560, 1, 'vi', 'packages/menu/menu', 'add_to_menu', 'Thêm vào trình đơn', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1561, 1, 'vi', 'packages/menu/menu', 'basic_info', 'Thông tin cơ bản', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1562, 1, 'vi', 'packages/menu/menu', 'blank_open_link', 'Mở liên kết trong tab mới', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1563, 1, 'vi', 'packages/menu/menu', 'css_class', 'CSS class', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1564, 1, 'vi', 'packages/menu/menu', 'custom_link', 'Liên kết tùy chọn', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1565, 1, 'vi', 'packages/menu/menu', 'icon', 'Biểu tượng', '2020-03-29 20:06:57', '2020-03-29 20:06:57');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1566, 1, 'vi', 'packages/menu/menu', 'key_name', 'Tên menu (key::key)', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1567, 1, 'vi', 'packages/menu/menu', 'remove', 'Xóa', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1568, 1, 'vi', 'packages/menu/menu', 'self_open_link', 'Mở liên kết trong tab hiện tại', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1569, 1, 'vi', 'packages/menu/menu', 'structure', 'Cấu trúc trình đơn', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1570, 1, 'vi', 'packages/menu/menu', 'target', 'Target', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1571, 1, 'vi', 'packages/menu/menu', 'title', 'Tiêu đề', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1572, 1, 'vi', 'packages/menu/menu', 'url', 'URL', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1573, 1, 'vi', 'packages/menu/menu', 'create', 'Tạo trình đơn', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1574, 1, 'vi', 'packages/menu/menu', 'edit', 'Sửa trình đơn', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1575, 1, 'en', 'packages/optimize/optimize', 'settings.title', 'Optimize page speed', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1576, 1, 'en', 'packages/optimize/optimize', 'settings.description', 'Minify HTML output, inline CSS, remove comments...', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1577, 1, 'en', 'packages/optimize/optimize', 'settings.enable', 'Enable optimize page speed?', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1578, 1, 'vi', 'packages/optimize/optimize', 'settings.title', 'Optimize page speed', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1579, 1, 'vi', 'packages/optimize/optimize', 'settings.description', 'Minify HTML output, inline CSS, remove comments...', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1580, 1, 'vi', 'packages/optimize/optimize', 'settings.enable', 'Enable optimize page speed?', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1581, 1, 'en', 'packages/page/pages', 'model', 'Page', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1582, 1, 'en', 'packages/page/pages', 'models', 'Pages', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1583, 1, 'en', 'packages/page/pages', 'list', 'List Pages', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1584, 1, 'en', 'packages/page/pages', 'create', 'Create new page', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1585, 1, 'en', 'packages/page/pages', 'edit', 'Edit page', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1586, 1, 'en', 'packages/page/pages', 'form.name', 'Name', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1587, 1, 'en', 'packages/page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1588, 1, 'en', 'packages/page/pages', 'form.content', 'Content', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1589, 1, 'en', 'packages/page/pages', 'form.note', 'Note content', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1590, 1, 'en', 'packages/page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1591, 1, 'en', 'packages/page/pages', 'notices.update_success_message', 'Update successfully', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1592, 1, 'en', 'packages/page/pages', 'cannot_delete', 'Page could not be deleted', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1593, 1, 'en', 'packages/page/pages', 'deleted', 'Page deleted', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1594, 1, 'en', 'packages/page/pages', 'pages', 'Pages', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1595, 1, 'en', 'packages/page/pages', 'menu', 'Pages', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1596, 1, 'en', 'packages/page/pages', 'menu_name', 'Pages', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1597, 1, 'en', 'packages/page/pages', 'edit_this_page', 'Edit this page', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1598, 1, 'en', 'packages/page/pages', 'total_pages', 'Total pages', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1599, 1, 'en', 'packages/page/pages', 'settings.show_on_front', 'Your homepage displays', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1600, 1, 'en', 'packages/page/pages', 'settings.select', '— Select —', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1601, 1, 'en', 'packages/page/pages', 'settings.title', 'Page', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1602, 1, 'en', 'packages/page/pages', 'settings.description', 'Setting for page', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1603, 1, 'en', 'packages/page/pages', 'front_page', 'Front Page', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1604, 1, 'vi', 'packages/page/pages', 'model', 'Trang', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1605, 1, 'vi', 'packages/page/pages', 'models', 'Trang', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1606, 1, 'vi', 'packages/page/pages', 'list', 'Danh sách trang', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1607, 1, 'vi', 'packages/page/pages', 'create', 'Thêm trang', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1608, 1, 'vi', 'packages/page/pages', 'edit', 'Sửa trang', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1609, 1, 'vi', 'packages/page/pages', 'form.name', 'Tiêu đề trang', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1610, 1, 'vi', 'packages/page/pages', 'form.note', 'Nội dung ghi chú', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1611, 1, 'vi', 'packages/page/pages', 'form.name_placeholder', 'Tên trang (tối đa 120 kí tự)', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1612, 1, 'vi', 'packages/page/pages', 'form.content', 'Nội dung', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1613, 1, 'vi', 'packages/page/pages', 'notices.no_select', 'Chọn ít nhất 1 trang để thực hiện hành động này!', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1614, 1, 'vi', 'packages/page/pages', 'notices.update_success_message', 'Cập nhật thành công', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1615, 1, 'vi', 'packages/page/pages', 'deleted', 'Xóa trang thành công', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1616, 1, 'vi', 'packages/page/pages', 'cannot_delete', 'Không thể xóa trang', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1617, 1, 'vi', 'packages/page/pages', 'menu', 'Trang', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1618, 1, 'vi', 'packages/page/pages', 'menu_name', 'Trang', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1619, 1, 'vi', 'packages/page/pages', 'edit_this_page', 'Sửa trang này', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1620, 1, 'vi', 'packages/page/pages', 'pages', 'Trang', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1621, 1, 'en', 'packages/plugin-management/plugin', 'enabled', 'Enabled', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1622, 1, 'en', 'packages/plugin-management/plugin', 'deactivated', 'Deactivated', '2020-03-29 20:06:57', '2020-03-29 20:06:57'),
(1623, 1, 'en', 'packages/plugin-management/plugin', 'activated', 'Activated', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1624, 1, 'en', 'packages/plugin-management/plugin', 'activate', 'Activate', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1625, 1, 'en', 'packages/plugin-management/plugin', 'deactivate', 'Deactivate', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1626, 1, 'en', 'packages/plugin-management/plugin', 'author', 'By', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1627, 1, 'en', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Update plugin successfully', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1628, 1, 'en', 'packages/plugin-management/plugin', 'plugins', 'Plugins', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1629, 1, 'en', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1630, 1, 'en', 'packages/plugin-management/plugin', 'remove', 'Remove', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1631, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remove plugin successfully!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1632, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin', 'Remove plugin', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1633, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1634, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1635, 1, 'en', 'packages/plugin-management/plugin', 'total_plugins', 'Total plugins', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1636, 1, 'en', 'packages/plugin-management/plugin', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1637, 1, 'en', 'packages/plugin-management/plugin', 'version', 'Version', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1638, 1, 'vi', 'packages/plugin-management/plugin', 'activate', 'Kích hoạt', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1639, 1, 'vi', 'packages/plugin-management/plugin', 'author', 'Tác giả', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1640, 1, 'vi', 'packages/plugin-management/plugin', 'version', 'Phiên bản', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1641, 1, 'vi', 'packages/plugin-management/plugin', 'activated', 'Đã kích hoạt', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1642, 1, 'vi', 'packages/plugin-management/plugin', 'deactivate', 'Hủy kích hoạt', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1643, 1, 'vi', 'packages/plugin-management/plugin', 'deactivated', 'Đã vô hiệu', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1644, 1, 'vi', 'packages/plugin-management/plugin', 'enabled', 'Kích hoạt', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1645, 1, 'vi', 'packages/plugin-management/plugin', 'invalid_plugin', 'Gói mở rộng không hợp lệ', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1646, 1, 'vi', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Cập nhật trạng thái gói mở rộng thành công', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1647, 1, 'vi', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Vui lòng kích hoạt các gói mở rộng :plugins trước khi kích hoạt gói này', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1648, 1, 'vi', 'packages/plugin-management/plugin', 'plugins', 'Gói mở rộng', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1649, 1, 'vi', 'packages/plugin-management/plugin', 'remove', 'Xoá', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1650, 1, 'vi', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Xoá thành công!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1651, 1, 'vi', 'packages/plugin-management/plugin', 'remove_plugin', 'Xoá gói mở rộng', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1652, 1, 'vi', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Bạn có chắc chắn muốn xoá plugin này?', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1653, 1, 'vi', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Có, xoá!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1654, 1, 'vi', 'packages/plugin-management/plugin', 'total_plugins', 'Tất cả plugins', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1655, 1, 'en', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Search Engine Optimize', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1656, 1, 'en', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Edit SEO meta', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1657, 1, 'en', 'packages/seo-helper/seo-helper', 'default_description', 'Setup meta title & description to make your site easy to discovered on search engines such as Google', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1658, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1659, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1660, 1, 'vi', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Tối ưu hoá bộ máy tìm kiếm (SEO)', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1661, 1, 'vi', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Chỉnh sửa SEO', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1662, 1, 'vi', 'packages/seo-helper/seo-helper', 'default_description', 'Thiết lập các thẻ mô tả giúp người dùng dễ dàng tìm thấy trên công cụ tìm kiếm như Google.', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1663, 1, 'vi', 'packages/seo-helper/seo-helper', 'seo_title', 'Tiêu đề trang', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1664, 1, 'vi', 'packages/seo-helper/seo-helper', 'seo_description', 'Mô tả trang', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1665, 1, 'en', 'packages/theme/theme', 'name', 'Themes', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1666, 1, 'en', 'packages/theme/theme', 'theme', 'Theme', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1667, 1, 'en', 'packages/theme/theme', 'author', 'Author', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1668, 1, 'en', 'packages/theme/theme', 'version', 'Version', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1669, 1, 'en', 'packages/theme/theme', 'description', 'Description', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1670, 1, 'en', 'packages/theme/theme', 'active_success', 'Active theme successfully!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1671, 1, 'en', 'packages/theme/theme', 'active', 'Active', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1672, 1, 'en', 'packages/theme/theme', 'activated', 'Activated', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1673, 1, 'en', 'packages/theme/theme', 'theme_options', 'Theme options', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1674, 1, 'en', 'packages/theme/theme', 'save_changes', 'Save Changes', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1675, 1, 'en', 'packages/theme/theme', 'developer_mode', 'Developer Mode Enabled', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1676, 1, 'en', 'packages/theme/theme', 'custom_css', 'Custom CSS', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1677, 1, 'en', 'packages/theme/theme', 'remove_theme_success', 'Remove theme successfully!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1678, 1, 'en', 'packages/theme/theme', 'theme_is_note_existed', 'This theme is not existed!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1679, 1, 'en', 'packages/theme/theme', 'remove', 'Remove', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1680, 1, 'en', 'packages/theme/theme', 'remove_theme', 'Remove theme', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1681, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_message', 'Do you really want to remove this theme?', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1682, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Yes, remove it!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1683, 1, 'en', 'packages/theme/theme', 'total_themes', 'Total themes', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1684, 1, 'en', 'packages/theme/theme', 'show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website)?', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1685, 1, 'en', 'packages/theme/theme', 'settings.title', 'Theme', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1686, 1, 'en', 'packages/theme/theme', 'settings.description', 'Setting for theme', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1687, 1, 'vi', 'packages/theme/theme', 'name', 'Giao diện', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1688, 1, 'vi', 'packages/theme/theme', 'activated', 'Đã kích hoạt', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1689, 1, 'vi', 'packages/theme/theme', 'active', 'Kích hoạt', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1690, 1, 'vi', 'packages/theme/theme', 'active_success', 'Kích hoạt giao diện thành công!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1691, 1, 'vi', 'packages/theme/theme', 'author', 'Tác giả', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1692, 1, 'vi', 'packages/theme/theme', 'description', 'Mô tả', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1693, 1, 'vi', 'packages/theme/theme', 'theme', 'Giao diện', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1694, 1, 'vi', 'packages/theme/theme', 'theme_options', 'Tuỳ chọn giao diện', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1695, 1, 'vi', 'packages/theme/theme', 'version', 'Phiên bản', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1696, 1, 'vi', 'packages/theme/theme', 'save_changes', 'Lưu thay đổi', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1697, 1, 'vi', 'packages/theme/theme', 'developer_mode', 'Đang kích hoạt chế độ thử nghiệm', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1698, 1, 'vi', 'packages/theme/theme', 'custom_css', 'Tuỳ chỉnh CSS', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1699, 1, 'en', 'packages/widget/global', 'name', 'Widgets', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1700, 1, 'en', 'packages/widget/global', 'create', 'New widget', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1701, 1, 'en', 'packages/widget/global', 'edit', 'Edit widget', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1702, 1, 'en', 'packages/widget/global', 'delete', 'Delete', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1703, 1, 'en', 'packages/widget/global', 'available', 'Available Widgets', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1704, 1, 'en', 'packages/widget/global', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1705, 1, 'en', 'packages/widget/global', 'number_tag_display', 'Number tags will be display', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1706, 1, 'en', 'packages/widget/global', 'number_post_display', 'Number posts will be display', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1707, 1, 'en', 'packages/widget/global', 'select_menu', 'Select Menu', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1708, 1, 'en', 'packages/widget/global', 'widget_text', 'Text', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1709, 1, 'en', 'packages/widget/global', 'widget_text_description', 'Arbitrary text or HTML.', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1710, 1, 'en', 'packages/widget/global', 'widget_recent_post', 'Recent Posts', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1711, 1, 'en', 'packages/widget/global', 'widget_recent_post_description', 'Recent posts widget.', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1712, 1, 'en', 'packages/widget/global', 'widget_custom_menu', 'Custom Menu', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1713, 1, 'en', 'packages/widget/global', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1714, 1, 'en', 'packages/widget/global', 'widget_tag', 'Tags', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1715, 1, 'en', 'packages/widget/global', 'widget_tag_description', 'Popular tags', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1716, 1, 'en', 'packages/widget/global', 'save_success', 'Save widget successfully!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1717, 1, 'en', 'packages/widget/global', 'delete_success', 'Delete widget successfully!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1718, 1, 'vi', 'packages/widget/global', 'name', 'Widgets', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1719, 1, 'vi', 'packages/widget/global', 'create', 'New widget', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1720, 1, 'vi', 'packages/widget/global', 'edit', 'Edit widget', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1721, 1, 'vi', 'packages/widget/global', 'available', 'Tiện ích có sẵn', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1722, 1, 'vi', 'packages/widget/global', 'delete', 'Xóa', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1723, 1, 'vi', 'packages/widget/global', 'instruction', 'Để kích hoạt tiện ích, hãy kéo nó vào sidebar hoặc nhấn vào nó. Để hủy kích hoạt tiện ích và xóa các thiết lập của tiện ích, kéo nó quay trở lại.', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1724, 1, 'vi', 'packages/widget/global', 'number_post_display', 'Số bài viết sẽ hiển thị', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1725, 1, 'vi', 'packages/widget/global', 'number_tag_display', 'Số thẻ sẽ hiển thị', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1726, 1, 'vi', 'packages/widget/global', 'select_menu', 'Lựa chọn trình đơn', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1727, 1, 'vi', 'packages/widget/global', 'widget_custom_menu', 'Menu tùy chỉnh', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1728, 1, 'vi', 'packages/widget/global', 'widget_custom_menu_description', 'Thêm menu tùy chỉnh vào khu vực tiện ích của bạn', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1729, 1, 'vi', 'packages/widget/global', 'widget_recent_post', 'Bài viết gần đây', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1730, 1, 'vi', 'packages/widget/global', 'widget_recent_post_description', 'Tiện ích bài viết gần đây', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1731, 1, 'vi', 'packages/widget/global', 'widget_tag', 'Thẻ', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1732, 1, 'vi', 'packages/widget/global', 'widget_tag_description', 'Thẻ phổ biến, sử dụng nhiều', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1733, 1, 'vi', 'packages/widget/global', 'widget_text', 'Văn bản', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1734, 1, 'vi', 'packages/widget/global', 'widget_text_description', 'Văn bản tùy ý hoặc HTML.', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1735, 1, 'vi', 'packages/widget/global', 'delete_success', 'Xoá tiện ích thành công', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1736, 1, 'vi', 'packages/widget/global', 'save_success', 'Lưu tiện ích thành công!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1737, 1, 'en', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1738, 1, 'en', 'plugins/analytics/analytics', 'visitors', 'Visitors', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1739, 1, 'en', 'plugins/analytics/analytics', 'pageviews', 'Pageviews', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1740, 1, 'en', 'plugins/analytics/analytics', 'bounce_rate', 'Bounce Rate', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1741, 1, 'en', 'plugins/analytics/analytics', 'page_session', 'Pages/Session', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1742, 1, 'en', 'plugins/analytics/analytics', 'avg_duration', 'Avg. Duration', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1743, 1, 'en', 'plugins/analytics/analytics', 'percent_new_session', 'Percent new session', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1744, 1, 'en', 'plugins/analytics/analytics', 'new_users', 'New visitors', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1745, 1, 'en', 'plugins/analytics/analytics', 'visits', 'visits', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1746, 1, 'en', 'plugins/analytics/analytics', 'views', 'views', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1747, 1, 'en', 'plugins/analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1748, 1, 'en', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1749, 1, 'en', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1750, 1, 'en', 'plugins/analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1751, 1, 'en', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1752, 1, 'en', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1753, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking ID', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1754, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1755, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1756, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1757, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1758, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1759, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1760, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1761, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1762, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1763, 1, 'vi', 'plugins/analytics/analytics', 'avg_duration', 'Trung bình', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1764, 1, 'vi', 'plugins/analytics/analytics', 'bounce_rate', 'Tỉ lệ thoát', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1765, 1, 'vi', 'plugins/analytics/analytics', 'page_session', 'Trang/Phiên', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1766, 1, 'vi', 'plugins/analytics/analytics', 'pageviews', 'Lượt xem', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1767, 1, 'vi', 'plugins/analytics/analytics', 'sessions', 'Phiên', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1768, 1, 'vi', 'plugins/analytics/analytics', 'views', 'lượt xem', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1769, 1, 'vi', 'plugins/analytics/analytics', 'visitors', 'Người truy cập', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1770, 1, 'vi', 'plugins/analytics/analytics', 'visits', 'lượt ghé thăm', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1771, 1, 'vi', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Thông tin cài đặt không hợp lệ. Tài liệu hướng dẫn tại đây: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1772, 1, 'vi', 'plugins/analytics/analytics', 'new_users', 'Lượt khách mới', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1773, 1, 'vi', 'plugins/analytics/analytics', 'percent_new_session', 'Tỉ lệ khách mới', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1774, 1, 'vi', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Ngày bắt đầu :start_date không thể sau ngày kết thúc :end_date', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1775, 1, 'vi', 'plugins/analytics/analytics', 'view_id_not_specified', 'Bạn phải cung cấp View ID hợp lê. Tài liệu hướng dẫn tại đây: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1776, 1, 'vi', 'plugins/analytics/analytics', 'wrong_configuration', 'Để xem dữ liệu thống kê Google Analytics, bạn cần lấy thông tin Client ID và thêm nó vào trong phần cài đặt. Bạn cũng cần thông tin xác thực dạng JSON. Tài liệu hướng dẫn tại đây: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1777, 1, 'vi', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1778, 1, 'vi', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1779, 1, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking Code', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1780, 1, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1781, 1, 'vi', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1782, 1, 'vi', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1783, 1, 'vi', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1784, 1, 'vi', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1785, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Trình duyệt truy cập nhiều', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1786, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_general', 'Thống kê truy cập', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1787, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_page', 'Trang được xem nhiều nhất', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1788, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Trang giới thiệu nhiều', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1789, 1, 'en', 'plugins/api/api', 'api_clients', 'API Clients', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1790, 1, 'en', 'plugins/api/api', 'create_new_client', 'Create new client', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1791, 1, 'en', 'plugins/api/api', 'create_new_client_success', 'Create new client successfully!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1792, 1, 'en', 'plugins/api/api', 'edit_client', 'Edit client \":name\"', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1793, 1, 'en', 'plugins/api/api', 'edit_client_success', 'Updated client successfully!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1794, 1, 'en', 'plugins/api/api', 'delete_success', 'Deleted client successfully!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1795, 1, 'en', 'plugins/api/api', 'confirm_delete_title', 'Confirm delete client \":name\"', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1796, 1, 'en', 'plugins/api/api', 'confirm_delete_description', 'Do you really want to delete client \":name\"?', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1797, 1, 'en', 'plugins/api/api', 'cancel_delete', 'No', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1798, 1, 'en', 'plugins/api/api', 'continue_delete', 'Yes, let\'s delete it!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1799, 1, 'en', 'plugins/api/api', 'name', 'Name', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1800, 1, 'en', 'plugins/api/api', 'cancel', 'Cancel', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1801, 1, 'en', 'plugins/api/api', 'save', 'Save', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1802, 1, 'en', 'plugins/api/api', 'edit', 'Edit', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1803, 1, 'en', 'plugins/api/api', 'delete', 'Delete', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1804, 1, 'en', 'plugins/api/api', 'client_id', 'Client ID', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1805, 1, 'en', 'plugins/api/api', 'secret', 'Secret', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1806, 1, 'vi', 'plugins/api/api', 'api_clients', 'API Clients', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1807, 1, 'vi', 'plugins/api/api', 'create_new_client', 'Tạo client mới', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1808, 1, 'vi', 'plugins/api/api', 'create_new_client_success', 'Tạo client mới thành công!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1809, 1, 'vi', 'plugins/api/api', 'edit_client', 'Sửa client \":name\"', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1810, 1, 'vi', 'plugins/api/api', 'edit_client_success', 'Cập nhật client thành công!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1811, 1, 'vi', 'plugins/api/api', 'delete_success', 'Xoá client thành công!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1812, 1, 'vi', 'plugins/api/api', 'confirm_delete_title', 'Xoá client \":name\"', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1813, 1, 'vi', 'plugins/api/api', 'confirm_delete_description', 'Bạn có chắc chắn muốn xoá client \":name\"?', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1814, 1, 'vi', 'plugins/api/api', 'cancel_delete', 'Không', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1815, 1, 'vi', 'plugins/api/api', 'continue_delete', 'Có, tiếp tục xoá!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1816, 1, 'vi', 'plugins/api/api', 'name', 'Tên', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1817, 1, 'vi', 'plugins/api/api', 'cancel', 'Huỷ bỏ', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1818, 1, 'vi', 'plugins/api/api', 'save', 'Lưu', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1819, 1, 'vi', 'plugins/api/api', 'edit', 'Sửa', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1820, 1, 'vi', 'plugins/api/api', 'delete', 'Xoá', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1821, 1, 'vi', 'plugins/api/api', 'client_id', 'Client ID', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1822, 1, 'vi', 'plugins/api/api', 'secret', 'Chuỗi bí mật', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1823, 1, 'en', 'plugins/audit-log/history', 'name', 'Activities Logs', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1824, 1, 'en', 'plugins/audit-log/history', 'created', 'created', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1825, 1, 'en', 'plugins/audit-log/history', 'updated', 'updated', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1826, 1, 'en', 'plugins/audit-log/history', 'deleted', 'deleted', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1827, 1, 'en', 'plugins/audit-log/history', 'logged in', 'logged in', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1828, 1, 'en', 'plugins/audit-log/history', 'logged out', 'logged out', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1829, 1, 'en', 'plugins/audit-log/history', 'changed password', 'changed password', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1830, 1, 'en', 'plugins/audit-log/history', 'updated profile', 'updated profile', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1831, 1, 'en', 'plugins/audit-log/history', 'attached', 'attached', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1832, 1, 'en', 'plugins/audit-log/history', 'shared', 'shared', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1833, 1, 'en', 'plugins/audit-log/history', 'to the system', 'to the system', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1834, 1, 'en', 'plugins/audit-log/history', 'of the system', 'of the system', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1835, 1, 'en', 'plugins/audit-log/history', 'menu', 'menu', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1836, 1, 'en', 'plugins/audit-log/history', 'post', 'post', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1837, 1, 'en', 'plugins/audit-log/history', 'page', 'page', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1838, 1, 'en', 'plugins/audit-log/history', 'category', 'category', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1839, 1, 'en', 'plugins/audit-log/history', 'tag', 'tag', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1840, 1, 'en', 'plugins/audit-log/history', 'user', 'user', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1841, 1, 'en', 'plugins/audit-log/history', 'contact', 'contact', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1842, 1, 'en', 'plugins/audit-log/history', 'backup', 'backup', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1843, 1, 'en', 'plugins/audit-log/history', 'custom-field', 'custom field', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1844, 1, 'en', 'plugins/audit-log/history', 'widget_audit_logs', 'Activities Logs', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1845, 1, 'en', 'plugins/audit-log/history', 'action', 'Action', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1846, 1, 'en', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1847, 1, 'vi', 'plugins/audit-log/history', 'name', 'Lịch sử hoạt động', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1848, 1, 'vi', 'plugins/audit-log/history', 'created', ' đã tạo', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1849, 1, 'vi', 'plugins/audit-log/history', 'updated', ' đã cập nhật', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1850, 1, 'vi', 'plugins/audit-log/history', 'deleted', ' đã xóa', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1851, 1, 'vi', 'plugins/audit-log/history', 'attached', 'đính kèm', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1852, 1, 'vi', 'plugins/audit-log/history', 'backup', 'sao lưu', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1853, 1, 'vi', 'plugins/audit-log/history', 'category', 'danh mục', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1854, 1, 'vi', 'plugins/audit-log/history', 'changed password', 'thay đổi mật khẩu', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1855, 1, 'vi', 'plugins/audit-log/history', 'contact', 'liên hệ', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1856, 1, 'vi', 'plugins/audit-log/history', 'custom-field', 'khung mở rộng', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1857, 1, 'vi', 'plugins/audit-log/history', 'logged in', 'đăng nhập', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1858, 1, 'vi', 'plugins/audit-log/history', 'logged out', 'đăng xuất', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1859, 1, 'vi', 'plugins/audit-log/history', 'menu', 'trình đơn', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1860, 1, 'vi', 'plugins/audit-log/history', 'of the system', 'khỏi hệ thống', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1861, 1, 'vi', 'plugins/audit-log/history', 'page', 'trang', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1862, 1, 'vi', 'plugins/audit-log/history', 'post', 'bài viết', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1863, 1, 'vi', 'plugins/audit-log/history', 'shared', 'đã chia sẻ', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1864, 1, 'vi', 'plugins/audit-log/history', 'tag', 'thẻ', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1865, 1, 'vi', 'plugins/audit-log/history', 'to the system', 'vào hệ thống', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1866, 1, 'vi', 'plugins/audit-log/history', 'updated profile', 'cập nhật tài khoản', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1867, 1, 'vi', 'plugins/audit-log/history', 'user', 'thành viên', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1868, 1, 'vi', 'plugins/audit-log/history', 'widget_audit_logs', 'Lịch sử hoạt động', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1869, 1, 'en', 'plugins/backup/backup', 'name', 'Backup', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1870, 1, 'en', 'plugins/backup/backup', 'backup_description', 'Backup database and uploads folder.', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1871, 1, 'en', 'plugins/backup/backup', 'create_backup_success', 'Created backup successfully!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1872, 1, 'en', 'plugins/backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1873, 1, 'en', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1874, 1, 'en', 'plugins/backup/backup', 'generate_btn', 'Generate backup', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1875, 1, 'en', 'plugins/backup/backup', 'create', 'Create backup', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1876, 1, 'en', 'plugins/backup/backup', 'restore', 'Restore backup', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1877, 1, 'en', 'plugins/backup/backup', 'create_btn', 'Create', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1878, 1, 'en', 'plugins/backup/backup', 'restore_btn', 'Restore', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1879, 1, 'en', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1880, 1, 'en', 'plugins/backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1881, 1, 'en', 'plugins/backup/backup', 'download_database', 'Download backup of database', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1882, 1, 'en', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1883, 1, 'en', 'plugins/backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1884, 1, 'en', 'plugins/backup/backup', 'menu_name', 'Backups', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1885, 1, 'en', 'plugins/backup/backup', 'settings.title', 'Backup', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1886, 1, 'en', 'plugins/backup/backup', 'settings.description', 'Settings for backup function', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1887, 1, 'en', 'plugins/backup/backup', 'settings.backup_mysql_execute_path', 'MySQL execute path', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1888, 1, 'en', 'plugins/backup/backup', 'settings.backup_mysql_execute_path_placeholder', 'Default: /usr/mysql/bin. Ignore it if you don\'t sure about it', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1889, 1, 'vi', 'plugins/backup/backup', 'backup_description', 'Sao lưu cơ sở dữ liệu và thư mục /uploads', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1890, 1, 'vi', 'plugins/backup/backup', 'create', 'Tạo bản sao lưu', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1891, 1, 'vi', 'plugins/backup/backup', 'create_backup_success', 'Tạo bản sao lưu thành công!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1892, 1, 'vi', 'plugins/backup/backup', 'create_btn', 'Tạo', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1893, 1, 'vi', 'plugins/backup/backup', 'delete_backup_success', 'Xóa bản sao lưu thành công!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1894, 1, 'vi', 'plugins/backup/backup', 'generate_btn', 'Tạo sao lưu', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1895, 1, 'vi', 'plugins/backup/backup', 'name', 'Sao lưu', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1896, 1, 'vi', 'plugins/backup/backup', 'restore', 'Khôi phục bản sao lưu', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1897, 1, 'vi', 'plugins/backup/backup', 'restore_backup_success', 'Khôi phục bản sao lưu thành công', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1898, 1, 'vi', 'plugins/backup/backup', 'restore_btn', 'Khôi phục', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1899, 1, 'vi', 'plugins/backup/backup', 'restore_confirm_msg', 'Bạn có chắc chắn muốn khôi phục hệ thống về thời điểm tạo bản sao lưu này?', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1900, 1, 'vi', 'plugins/backup/backup', 'restore_tooltip', 'Khôi phục bản sao lưu này', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1901, 1, 'vi', 'plugins/backup/backup', 'download_database', 'Tải về bản sao lưu CSDL', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1902, 1, 'vi', 'plugins/backup/backup', 'download_uploads_folder', 'Tải về bản sao lưu thư mục uploads', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1903, 1, 'vi', 'plugins/backup/backup', 'menu_name', 'Sao lưu', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1904, 1, 'vi', 'plugins/backup/backup', 'demo_alert', 'Chào khách, nếu bạn thấy trang demo bị phá hoại, hãy tới <a href=\":link\">trang sao lưu</a> và khôi phục bản sao lưu cuối cùng. Cảm ơn bạn nhiều!', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1905, 1, 'en', 'plugins/block/block', 'name', 'Block', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1906, 1, 'en', 'plugins/block/block', 'create', 'New block', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1907, 1, 'en', 'plugins/block/block', 'edit', 'Edit block', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1908, 1, 'en', 'plugins/block/block', 'menu', 'Static Blocks', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1909, 1, 'vi', 'plugins/block/block', 'name', 'Nội dung tĩnh', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1910, 1, 'vi', 'plugins/block/block', 'create', 'Thêm nội dung tĩnh', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1911, 1, 'vi', 'plugins/block/block', 'edit', 'Sửa nội dung tĩnh', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1912, 1, 'vi', 'plugins/block/block', 'list', 'Danh sách nội dung tĩnh', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1913, 1, 'vi', 'plugins/block/block', 'menu', 'Nội dung tĩnh', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1914, 1, 'en', 'plugins/blog/base', 'menu_name', 'Blog', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1915, 1, 'en', 'plugins/blog/base', 'blog_page', 'Blog Page', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1916, 1, 'en', 'plugins/blog/categories', 'create', 'Create new category', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1917, 1, 'en', 'plugins/blog/categories', 'edit', 'Edit category', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1918, 1, 'en', 'plugins/blog/categories', 'menu', 'Categories', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1919, 1, 'en', 'plugins/blog/categories', 'edit_this_category', 'Edit this category', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1920, 1, 'en', 'plugins/blog/categories', 'menu_name', 'Categories', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1921, 1, 'en', 'plugins/blog/categories', 'none', 'None', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1922, 1, 'en', 'plugins/blog/member', 'dob', 'Born :date', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1923, 1, 'en', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1924, 1, 'en', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1925, 1, 'en', 'plugins/blog/member', 'published_posts', 'Published Posts', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1926, 1, 'en', 'plugins/blog/member', 'posts', 'Posts', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1927, 1, 'en', 'plugins/blog/member', 'write_post', 'Write a post', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1928, 1, 'en', 'plugins/blog/posts', 'model', 'Post', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1929, 1, 'en', 'plugins/blog/posts', 'models', 'Posts', '2020-03-29 20:06:58', '2020-03-29 20:06:58'),
(1930, 1, 'en', 'plugins/blog/posts', 'create', 'Create new post', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1931, 1, 'en', 'plugins/blog/posts', 'edit', 'Edit post', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1932, 1, 'en', 'plugins/blog/posts', 'form.name', 'Name', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1933, 1, 'en', 'plugins/blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1934, 1, 'en', 'plugins/blog/posts', 'form.description', 'Description', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1935, 1, 'en', 'plugins/blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1936, 1, 'en', 'plugins/blog/posts', 'form.categories', 'Categories', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1937, 1, 'en', 'plugins/blog/posts', 'form.tags', 'Tags', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1938, 1, 'en', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1939, 1, 'en', 'plugins/blog/posts', 'form.content', 'Content', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1940, 1, 'en', 'plugins/blog/posts', 'form.is_featured', 'Is featured?', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1941, 1, 'en', 'plugins/blog/posts', 'form.note', 'Note content', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1942, 1, 'en', 'plugins/blog/posts', 'form.format_type', 'Format', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1943, 1, 'en', 'plugins/blog/posts', 'cannot_delete', 'Post could not be deleted', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1944, 1, 'en', 'plugins/blog/posts', 'post_deleted', 'Post deleted', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1945, 1, 'en', 'plugins/blog/posts', 'posts', 'Posts', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1946, 1, 'en', 'plugins/blog/posts', 'edit_this_post', 'Edit this post', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1947, 1, 'en', 'plugins/blog/posts', 'no_new_post_now', 'There is no new post now!', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1948, 1, 'en', 'plugins/blog/posts', 'menu_name', 'Posts', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1949, 1, 'en', 'plugins/blog/posts', 'widget_posts_recent', 'Recent Posts', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1950, 1, 'en', 'plugins/blog/posts', 'categories', 'Categories', '2020-03-29 20:06:59', '2020-03-29 20:06:59');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1951, 1, 'en', 'plugins/blog/posts', 'author', 'Author', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1952, 1, 'en', 'plugins/blog/settings', 'title', 'Blog', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1953, 1, 'en', 'plugins/blog/settings', 'description', 'Settings for Blog plugin', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1954, 1, 'en', 'plugins/blog/settings', 'select', '-- Select --', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1955, 1, 'en', 'plugins/blog/settings', 'blog_page_id', 'Blog page', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1956, 1, 'en', 'plugins/blog/tags', 'model', 'Tag', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1957, 1, 'en', 'plugins/blog/tags', 'models', 'Tags', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1958, 1, 'en', 'plugins/blog/tags', 'form.name', 'Name', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1959, 1, 'en', 'plugins/blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1960, 1, 'en', 'plugins/blog/tags', 'form.description', 'Description', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1961, 1, 'en', 'plugins/blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1962, 1, 'en', 'plugins/blog/tags', 'form.categories', 'Categories', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1963, 1, 'en', 'plugins/blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1964, 1, 'en', 'plugins/blog/tags', 'create', 'Create new tag', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1965, 1, 'en', 'plugins/blog/tags', 'edit', 'Edit tag', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1966, 1, 'en', 'plugins/blog/tags', 'cannot_delete', 'Tag could not be deleted', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1967, 1, 'en', 'plugins/blog/tags', 'deleted', 'Tag deleted', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1968, 1, 'en', 'plugins/blog/tags', 'menu', 'Tags', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1969, 1, 'en', 'plugins/blog/tags', 'edit_this_tag', 'Edit this tag', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1970, 1, 'en', 'plugins/blog/tags', 'menu_name', 'Tags', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1971, 1, 'vi', 'plugins/blog/base', 'menu_name', 'Blog', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1972, 1, 'vi', 'plugins/blog/categories', 'model', 'Danh mục', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1973, 1, 'vi', 'plugins/blog/categories', 'models', 'Danh mục', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1974, 1, 'vi', 'plugins/blog/categories', 'list', 'Danh sách danh mục', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1975, 1, 'vi', 'plugins/blog/categories', 'create', 'Thêm danh mục mới', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1976, 1, 'vi', 'plugins/blog/categories', 'edit', 'Sửa danh mục', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1977, 1, 'vi', 'plugins/blog/categories', 'menu_name', 'Danh mục', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1978, 1, 'vi', 'plugins/blog/categories', 'edit_this_category', 'Sửa danh mục này', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1979, 1, 'vi', 'plugins/blog/categories', 'menu', 'Danh mục', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1980, 1, 'vi', 'plugins/blog/member', 'dob', 'Born :date', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1981, 1, 'vi', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1982, 1, 'vi', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1983, 1, 'vi', 'plugins/blog/member', 'published_posts', 'Published Posts', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1984, 1, 'vi', 'plugins/blog/member', 'posts', 'Posts', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1985, 1, 'vi', 'plugins/blog/member', 'write_post', 'Write a post', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1986, 1, 'vi', 'plugins/blog/posts', 'model', 'Bài viết', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1987, 1, 'vi', 'plugins/blog/posts', 'models', 'Bài viết', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1988, 1, 'vi', 'plugins/blog/posts', 'list', 'Danh sách bài viết', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1989, 1, 'vi', 'plugins/blog/posts', 'create', 'Thêm bài viết', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1990, 1, 'vi', 'plugins/blog/posts', 'edit', 'Sửa bài viết', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1991, 1, 'vi', 'plugins/blog/posts', 'form.name', 'Tên', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1992, 1, 'vi', 'plugins/blog/posts', 'form.name_placeholder', 'Tên bài viết (Tối đa 120 kí tự)', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1993, 1, 'vi', 'plugins/blog/posts', 'form.description', 'Mô tả', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1994, 1, 'vi', 'plugins/blog/posts', 'form.description_placeholder', 'Mô tả ngắn cho bài viết (Tối đa 400 kí tự)', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1995, 1, 'vi', 'plugins/blog/posts', 'form.categories', 'Chuyên mục', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1996, 1, 'vi', 'plugins/blog/posts', 'form.tags', 'Từ khóa', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1997, 1, 'vi', 'plugins/blog/posts', 'form.tags_placeholder', 'Thêm từ khóa', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1998, 1, 'vi', 'plugins/blog/posts', 'form.content', 'Nội dung', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(1999, 1, 'vi', 'plugins/blog/posts', 'form.featured', 'Bài viết nổi bật?', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2000, 1, 'vi', 'plugins/blog/posts', 'form.note', 'Nội dung ghi chú', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2001, 1, 'vi', 'plugins/blog/posts', 'form.format_type', 'Định dạng', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2002, 1, 'vi', 'plugins/blog/posts', 'post_deleted', 'Xóa bài viết thành công', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2003, 1, 'vi', 'plugins/blog/posts', 'cannot_delete', 'Không thể xóa bài viết', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2004, 1, 'vi', 'plugins/blog/posts', 'menu_name', 'Bài viết', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2005, 1, 'vi', 'plugins/blog/posts', 'edit_this_post', 'Sửa bài viết này', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2006, 1, 'vi', 'plugins/blog/posts', 'no_new_post_now', 'Hiện tại không có bài viết mới!', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2007, 1, 'vi', 'plugins/blog/posts', 'posts', 'Bài viết', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2008, 1, 'vi', 'plugins/blog/posts', 'widget_posts_recent', 'Bài viết gần đây', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2009, 1, 'vi', 'plugins/blog/posts', 'author', 'Tác giả', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2010, 1, 'vi', 'plugins/blog/settings', 'title', 'Blog', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2011, 1, 'vi', 'plugins/blog/settings', 'description', 'Settings for Blog plugin', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2012, 1, 'vi', 'plugins/blog/settings', 'select', '-- Select --', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2013, 1, 'vi', 'plugins/blog/settings', 'blog_page_id', 'Blog page', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2014, 1, 'vi', 'plugins/blog/tags', 'model', 'Thẻ', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2015, 1, 'vi', 'plugins/blog/tags', 'models', 'Thẻ', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2016, 1, 'vi', 'plugins/blog/tags', 'list', 'Danh sách thẻ', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2017, 1, 'vi', 'plugins/blog/tags', 'create', 'Thêm thẻ mới', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2018, 1, 'vi', 'plugins/blog/tags', 'edit', 'Sửa thẻ', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2019, 1, 'vi', 'plugins/blog/tags', 'form.name', 'Tên', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2020, 1, 'vi', 'plugins/blog/tags', 'form.name_placeholder', 'Tên thẻ (Tối đa 120 kí tự)', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2021, 1, 'vi', 'plugins/blog/tags', 'form.description', 'Mô tả', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2022, 1, 'vi', 'plugins/blog/tags', 'form.description_placeholder', 'Mô tả ngắn cho tag (Tối đa 400 kí tự)', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2023, 1, 'vi', 'plugins/blog/tags', 'form.categories', 'Chuyên mục', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2024, 1, 'vi', 'plugins/blog/tags', 'notices.no_select', 'Chọn ít nhất 1 bài viết để thực hiện hành động này!', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2025, 1, 'vi', 'plugins/blog/tags', 'cannot_delete', 'Không thể xóa thẻ', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2026, 1, 'vi', 'plugins/blog/tags', 'deleted', 'Xóa thẻ thành công', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2027, 1, 'vi', 'plugins/blog/tags', 'menu_name', 'Thẻ', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2028, 1, 'vi', 'plugins/blog/tags', 'edit_this_tag', 'Sửa thẻ này', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2029, 1, 'vi', 'plugins/blog/tags', 'menu', 'Thẻ', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2030, 1, 'en', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2031, 1, 'en', 'plugins/captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2032, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2033, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2034, 1, 'en', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Enable Captcha, show Captcha in contact form?', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2035, 1, 'en', 'plugins/captcha/captcha', 'settings.helper', 'Go here to get credentials https://www.google.com/recaptcha/admin#list. Please select reCaptcha v2.', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2036, 1, 'vi', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2037, 1, 'vi', 'plugins/captcha/captcha', 'settings.description', 'Cài đặt cho Google Captcha', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2038, 1, 'vi', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2039, 1, 'vi', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2040, 1, 'vi', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Bật Captcha, hiển thị Captcha trong form liên hệ?', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2041, 1, 'vi', 'plugins/captcha/captcha', 'settings.helper', 'Truy cập https://www.google.com/recaptcha/admin#list để lấy thông tin về Site key và Secret. Hãy chọn reCaptcha v2.', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2042, 1, 'en', 'plugins/contact/contact', 'menu', 'Contact', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2043, 1, 'en', 'plugins/contact/contact', 'model', 'Contact', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2044, 1, 'en', 'plugins/contact/contact', 'models', 'Contact', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2045, 1, 'en', 'plugins/contact/contact', 'edit', 'View contact', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2046, 1, 'en', 'plugins/contact/contact', 'tables.phone', 'Phone', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2047, 1, 'en', 'plugins/contact/contact', 'tables.email', 'Email', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2048, 1, 'en', 'plugins/contact/contact', 'tables.full_name', 'Full Name', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2049, 1, 'en', 'plugins/contact/contact', 'tables.time', 'Time', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2050, 1, 'en', 'plugins/contact/contact', 'tables.address', 'Address', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2051, 1, 'en', 'plugins/contact/contact', 'tables.subject', 'Subject', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2052, 1, 'en', 'plugins/contact/contact', 'tables.content', 'Content', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2053, 1, 'en', 'plugins/contact/contact', 'contact_information', 'Contact information', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2054, 1, 'en', 'plugins/contact/contact', 'replies', 'Replies', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2055, 1, 'en', 'plugins/contact/contact', 'email.header', 'Email', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2056, 1, 'en', 'plugins/contact/contact', 'email.title', 'New contact from your site', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2057, 1, 'en', 'plugins/contact/contact', 'email.success', 'Send message successfully!', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2058, 1, 'en', 'plugins/contact/contact', 'email.failed', 'Can\'t send message on this time, please try again later!', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2059, 1, 'en', 'plugins/contact/contact', 'name.required', 'Name is required', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2060, 1, 'en', 'plugins/contact/contact', 'email.required', 'Email is required', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2061, 1, 'en', 'plugins/contact/contact', 'email.email', 'The email address is not valid', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2062, 1, 'en', 'plugins/contact/contact', 'content.required', 'Content is required', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2063, 1, 'en', 'plugins/contact/contact', 'g-recaptcha-response.required', 'Please confirm you are not a robot before sending the message.', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2064, 1, 'en', 'plugins/contact/contact', 'g-recaptcha-response.captcha', 'You are not confirm robot yet.', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2065, 1, 'en', 'plugins/contact/contact', 'contact_sent_from', 'This contact information sent from', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2066, 1, 'en', 'plugins/contact/contact', 'sender', 'Sender', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2067, 1, 'en', 'plugins/contact/contact', 'sender_email', 'Email', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2068, 1, 'en', 'plugins/contact/contact', 'sender_address', 'Address', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2069, 1, 'en', 'plugins/contact/contact', 'sender_phone', 'Phone', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2070, 1, 'en', 'plugins/contact/contact', 'message_content', 'Message content', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2071, 1, 'en', 'plugins/contact/contact', 'sent_from', 'Email sent from', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2072, 1, 'en', 'plugins/contact/contact', 'form_name', 'Name', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2073, 1, 'en', 'plugins/contact/contact', 'form_email', 'Email', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2074, 1, 'en', 'plugins/contact/contact', 'form_address', 'Address', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2075, 1, 'en', 'plugins/contact/contact', 'form_subject', 'Subject', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2076, 1, 'en', 'plugins/contact/contact', 'form_phone', 'Phone', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2077, 1, 'en', 'plugins/contact/contact', 'form_message', 'Message', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2078, 1, 'en', 'plugins/contact/contact', 'confirm_not_robot', 'Please confirm you are not robot', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2079, 1, 'en', 'plugins/contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2080, 1, 'en', 'plugins/contact/contact', 'send_btn', 'Send message', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2081, 1, 'en', 'plugins/contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2082, 1, 'en', 'plugins/contact/contact', 'view_all', 'View all', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2083, 1, 'en', 'plugins/contact/contact', 'statuses.read', 'Read', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2084, 1, 'en', 'plugins/contact/contact', 'statuses.unread', 'UnRead', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2085, 1, 'en', 'plugins/contact/contact', 'phone', 'Phone', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2086, 1, 'en', 'plugins/contact/contact', 'address', 'Address', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2087, 1, 'en', 'plugins/contact/contact', 'message', 'Message', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2088, 1, 'en', 'plugins/contact/contact', 'settings.email.title', 'Contact', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2089, 1, 'en', 'plugins/contact/contact', 'settings.email.description', 'Contact email configuration', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2090, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2091, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2092, 1, 'vi', 'plugins/contact/contact', 'menu', 'Liên hệ', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2093, 1, 'vi', 'plugins/contact/contact', 'model', 'Liên hệ', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2094, 1, 'vi', 'plugins/contact/contact', 'models', 'Liên hệ', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2095, 1, 'vi', 'plugins/contact/contact', 'list', 'Danh sách liên hệ', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2096, 1, 'vi', 'plugins/contact/contact', 'edit', 'Xem liên hệ', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2097, 1, 'vi', 'plugins/contact/contact', 'tables.phone', 'Điện thoại', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2098, 1, 'vi', 'plugins/contact/contact', 'tables.email', 'Email', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2099, 1, 'vi', 'plugins/contact/contact', 'tables.full_name', 'Họ tên', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2100, 1, 'vi', 'plugins/contact/contact', 'tables.time', 'Thời gian', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2101, 1, 'vi', 'plugins/contact/contact', 'tables.address', 'Địa địa chỉ', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2102, 1, 'vi', 'plugins/contact/contact', 'tables.subject', 'Tiêu đề', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2103, 1, 'vi', 'plugins/contact/contact', 'tables.content', 'Nội dung', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2104, 1, 'vi', 'plugins/contact/contact', 'form.is_read', 'Đã xem?', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2105, 1, 'vi', 'plugins/contact/contact', 'form.status', 'Trạng thái', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2106, 1, 'vi', 'plugins/contact/contact', 'notices.no_select', 'Chọn ít nhất 1 liên hệ để thực hiện hành động này!', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2107, 1, 'vi', 'plugins/contact/contact', 'notices.update_success_message', 'Cập nhật thành công', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2108, 1, 'vi', 'plugins/contact/contact', 'cannot_delete', 'Không thể xóa liên hệ này', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2109, 1, 'vi', 'plugins/contact/contact', 'deleted', 'Liên hệ đã được xóa', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2110, 1, 'vi', 'plugins/contact/contact', 'contact_information', 'Thông tin liên hệ', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2111, 1, 'vi', 'plugins/contact/contact', 'email.title', 'Thông tin liên hệ mới', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2112, 1, 'vi', 'plugins/contact/contact', 'email.success', 'Gửi tin nhắn thành công!', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2113, 1, 'vi', 'plugins/contact/contact', 'email.failed', 'Có lỗi trong quá trình gửi tin nhắn!', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2114, 1, 'vi', 'plugins/contact/contact', 'email.required', 'Email không được để trống', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2115, 1, 'vi', 'plugins/contact/contact', 'email.email', 'Địa chỉ email không hợp lệ', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2116, 1, 'vi', 'plugins/contact/contact', 'email.header', 'Email', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2117, 1, 'vi', 'plugins/contact/contact', 'name.required', 'Họ tên không được để trống', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2118, 1, 'vi', 'plugins/contact/contact', 'content.required', 'Nội dung tin nhắn không được để trống', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2119, 1, 'vi', 'plugins/contact/contact', 'g-recaptcha-response.required', 'Hãy xác minh không phải là robot trước khi gửi tin nhắn.', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2120, 1, 'vi', 'plugins/contact/contact', 'g-recaptcha-response.captcha', 'Bạn chưa xác minh không phải là robot thành công.', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2121, 1, 'vi', 'plugins/contact/contact', 'confirm_not_robot', 'Xác nhận không phải người máy', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2122, 1, 'vi', 'plugins/contact/contact', 'contact_sent_from', 'Liên hệ này được gửi từ', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2123, 1, 'vi', 'plugins/contact/contact', 'form_address', 'Địa chỉ', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2124, 1, 'vi', 'plugins/contact/contact', 'form_email', 'Thư điện tử', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2125, 1, 'vi', 'plugins/contact/contact', 'form_message', 'Thông điệp', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2126, 1, 'vi', 'plugins/contact/contact', 'form_name', 'Họ tên', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2127, 1, 'vi', 'plugins/contact/contact', 'form_phone', 'Số điện thoại', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2128, 1, 'vi', 'plugins/contact/contact', 'form_subject', 'Tiêu đề', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2129, 1, 'vi', 'plugins/contact/contact', 'message_content', 'Nội dung thông điệp', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2130, 1, 'vi', 'plugins/contact/contact', 'required_field', 'Những trường có dấu (<span style=\"color: red\">*</span>) là bắt buộc.', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2131, 1, 'vi', 'plugins/contact/contact', 'send_btn', 'Gửi tin nhắn', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2132, 1, 'vi', 'plugins/contact/contact', 'sender', 'Người gửi', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2133, 1, 'vi', 'plugins/contact/contact', 'sender_address', 'Địa chỉ', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2134, 1, 'vi', 'plugins/contact/contact', 'sender_email', 'Thư điện tử', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2135, 1, 'vi', 'plugins/contact/contact', 'sender_phone', 'Số điện thoại', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2136, 1, 'vi', 'plugins/contact/contact', 'sent_from', 'Thư được gửi từ', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2137, 1, 'vi', 'plugins/contact/contact', 'mark_as_read', 'Đánh dấu đã đọc', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2138, 1, 'vi', 'plugins/contact/contact', 'mark_as_unread', 'Đánh dấu chưa đọc', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2139, 1, 'vi', 'plugins/contact/contact', 'address', 'Địa chỉ', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2140, 1, 'vi', 'plugins/contact/contact', 'message', 'Liên hệ', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2141, 1, 'vi', 'plugins/contact/contact', 'new_msg_notice', 'Bạn có <span class=\"bold\">:count</span> tin nhắn mới', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2142, 1, 'vi', 'plugins/contact/contact', 'phone', 'Điện thoại', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2143, 1, 'vi', 'plugins/contact/contact', 'statuses.read', 'Đã đọc', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2144, 1, 'vi', 'plugins/contact/contact', 'statuses.unread', 'Chưa đọc', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2145, 1, 'vi', 'plugins/contact/contact', 'view_all', 'Xem tất cả', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2146, 1, 'vi', 'plugins/contact/contact', 'settings.email.title', 'Liên hệ', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2147, 1, 'vi', 'plugins/contact/contact', 'settings.email.description', 'Cấu hình thông tin cho mục liên hệ', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2148, 1, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Thông báo tới admin', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2149, 1, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Mẫu nội dung email gửi tới admin khi có liên hệ mới', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2150, 1, 'en', 'plugins/custom-field/base', 'admin_menu.title', 'Custom fields', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2151, 1, 'en', 'plugins/custom-field/base', 'page_title', 'Custom fields', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2152, 1, 'en', 'plugins/custom-field/base', 'all_field_groups', 'All field groups', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2153, 1, 'en', 'plugins/custom-field/base', 'form.create_field_group', 'Create field group', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2154, 1, 'en', 'plugins/custom-field/base', 'form.edit_field_group', 'Edit field group', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2155, 1, 'en', 'plugins/custom-field/base', 'form.field_items_information', 'Field items information', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2156, 1, 'en', 'plugins/custom-field/base', 'form.repeater_fields', 'Repeater', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2157, 1, 'en', 'plugins/custom-field/base', 'form.add_field', 'Add field', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2158, 1, 'en', 'plugins/custom-field/base', 'form.remove_field', 'Remove field', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2159, 1, 'en', 'plugins/custom-field/base', 'form.close_field', 'Close field', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2160, 1, 'en', 'plugins/custom-field/base', 'form.field_label', 'Label', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2161, 1, 'en', 'plugins/custom-field/base', 'form.field_label_helper', 'This is the title of field item. It will be shown on edit pages.', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2162, 1, 'en', 'plugins/custom-field/base', 'form.field_name', 'Field name', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2163, 1, 'en', 'plugins/custom-field/base', 'form.field_name_helper', 'The alias of field item. Accepted numbers, characters and underscore.', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2164, 1, 'en', 'plugins/custom-field/base', 'form.field_type', 'Field type', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2165, 1, 'en', 'plugins/custom-field/base', 'form.field_type_helper', 'Please select the type of this field.', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2166, 1, 'en', 'plugins/custom-field/base', 'form.field_instructions', 'Field instructions', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2167, 1, 'en', 'plugins/custom-field/base', 'form.field_instructions_helper', 'HThe instructions guide for user easier know what they need to input.', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2168, 1, 'en', 'plugins/custom-field/base', 'form.default_value', 'Default value', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2169, 1, 'en', 'plugins/custom-field/base', 'form.default_value_helper', 'The default value of field when leave it blank', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2170, 1, 'en', 'plugins/custom-field/base', 'form.placeholder', 'Placeholder', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2171, 1, 'en', 'plugins/custom-field/base', 'form.placeholder_helper', 'Placeholder text', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2172, 1, 'en', 'plugins/custom-field/base', 'form.rows', 'Rows', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2173, 1, 'en', 'plugins/custom-field/base', 'form.rows_helper', 'Rows of this textarea', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2174, 1, 'en', 'plugins/custom-field/base', 'form.toolbar', 'Toolbar', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2175, 1, 'en', 'plugins/custom-field/base', 'form.toolbar_helper', 'The toolbar when use editor', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2176, 1, 'en', 'plugins/custom-field/base', 'form.toolbar_basic', 'Basic', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2177, 1, 'en', 'plugins/custom-field/base', 'form.toolbar_full', 'Full', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2178, 1, 'en', 'plugins/custom-field/base', 'form.choices', 'Choices', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2179, 1, 'en', 'plugins/custom-field/base', 'form.choices_helper', 'Enter each choice on a new line.<br>For more control, you may specify both a value and label like this:<br>red: Red<br>blue: Blue', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2180, 1, 'en', 'plugins/custom-field/base', 'form.button_label', 'Button for repeater', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2181, 1, 'en', 'plugins/custom-field/base', 'form.groups.basic', 'Basic', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2182, 1, 'en', 'plugins/custom-field/base', 'form.groups.content', 'Content', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2183, 1, 'en', 'plugins/custom-field/base', 'form.groups.choice', 'Choices', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2184, 1, 'en', 'plugins/custom-field/base', 'form.groups.other', 'Other', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2185, 1, 'en', 'plugins/custom-field/base', 'form.types.text', 'Text field', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2186, 1, 'en', 'plugins/custom-field/base', 'form.types.textarea', 'Textarea', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2187, 1, 'en', 'plugins/custom-field/base', 'form.types.number', 'Number', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2188, 1, 'en', 'plugins/custom-field/base', 'form.types.email', 'Email', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2189, 1, 'en', 'plugins/custom-field/base', 'form.types.password', 'Password', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2190, 1, 'en', 'plugins/custom-field/base', 'form.types.wysiwyg', 'WYSIWYG editor', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2191, 1, 'en', 'plugins/custom-field/base', 'form.types.image', 'Image', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2192, 1, 'en', 'plugins/custom-field/base', 'form.types.file', 'File', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2193, 1, 'en', 'plugins/custom-field/base', 'form.types.select', 'Select', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2194, 1, 'en', 'plugins/custom-field/base', 'form.types.checkbox', 'Checkbox', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2195, 1, 'en', 'plugins/custom-field/base', 'form.types.radio', 'Radio', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2196, 1, 'en', 'plugins/custom-field/base', 'form.types.repeater', 'Repeater', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2197, 1, 'en', 'plugins/custom-field/base', 'form.rules.rules', 'Display rules', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2198, 1, 'en', 'plugins/custom-field/base', 'form.rules.rules_helper', 'Show this field group if', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2199, 1, 'en', 'plugins/custom-field/base', 'form.rules.add_rule_group', 'Add rule group', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2200, 1, 'en', 'plugins/custom-field/base', 'form.rules.is_equal_to', 'Equal to', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2201, 1, 'en', 'plugins/custom-field/base', 'form.rules.is_not_equal_to', 'Not equal to', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2202, 1, 'en', 'plugins/custom-field/base', 'form.rules.and', 'And', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2203, 1, 'en', 'plugins/custom-field/base', 'form.rules.or', 'Or', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2204, 1, 'en', 'plugins/custom-field/base', 'import', 'Import', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2205, 1, 'en', 'plugins/custom-field/base', 'export', 'Export', '2020-03-29 20:06:59', '2020-03-29 20:06:59'),
(2206, 1, 'en', 'plugins/custom-field/permissions', 'view-custom-fields', 'View custom fields', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2207, 1, 'en', 'plugins/custom-field/permissions', 'create-field-groups', 'Create field groups', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2208, 1, 'en', 'plugins/custom-field/permissions', 'edit-field-groups', 'Edit field groups', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2209, 1, 'en', 'plugins/custom-field/permissions', 'delete-field-groups', 'Delete field groups', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2210, 1, 'en', 'plugins/custom-field/rules', 'groups.basic', 'Basic', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2211, 1, 'en', 'plugins/custom-field/rules', 'groups.other', 'Other', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2212, 1, 'en', 'plugins/custom-field/rules', 'groups.blog', 'Blog', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2213, 1, 'en', 'plugins/custom-field/rules', 'logged_in_user', 'Logged in user', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2214, 1, 'en', 'plugins/custom-field/rules', 'logged_in_user_has_role', 'Logged in has role', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2215, 1, 'en', 'plugins/custom-field/rules', 'page_template', 'Page template', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2216, 1, 'en', 'plugins/custom-field/rules', 'page', 'Page', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2217, 1, 'en', 'plugins/custom-field/rules', 'model_name', 'Model name', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2218, 1, 'en', 'plugins/custom-field/rules', 'model_name_page', 'Page', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2219, 1, 'en', 'plugins/custom-field/rules', 'category', 'Category', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2220, 1, 'en', 'plugins/custom-field/rules', 'post_with_related_category', 'Post with related category', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2221, 1, 'en', 'plugins/custom-field/rules', 'model_name_post', 'Post (blog)', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2222, 1, 'en', 'plugins/custom-field/rules', 'model_name_category', 'Category (blog)', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2223, 1, 'en', 'plugins/custom-field/rules', 'post_format', 'Post format', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2224, 1, 'vi', 'plugins/custom-field/base', 'admin_menu.title', 'Trường tùy chỉnh', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2225, 1, 'vi', 'plugins/custom-field/base', 'page_title', 'Trường tùy chỉnh', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2226, 1, 'vi', 'plugins/custom-field/base', 'all_field_groups', 'Tất cả nhóm trường tùy chỉnh', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2227, 1, 'vi', 'plugins/custom-field/base', 'form.create_field_group', 'Thêm nhóm trường mới', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2228, 1, 'vi', 'plugins/custom-field/base', 'form.edit_field_group', 'Chỉnh sửa trường tùy chỉnh', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2229, 1, 'vi', 'plugins/custom-field/base', 'form.field_items_information', 'Thiết đặt các mục con của trường này', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2230, 1, 'vi', 'plugins/custom-field/base', 'form.repeater_fields', 'Bộ lặp', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2231, 1, 'vi', 'plugins/custom-field/base', 'form.add_field', 'Thêm trường', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2232, 1, 'vi', 'plugins/custom-field/base', 'form.remove_field', 'Xóa trường này', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2233, 1, 'vi', 'plugins/custom-field/base', 'form.close_field', 'Thu nhỏ trường này lại', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2234, 1, 'vi', 'plugins/custom-field/base', 'form.field_label', 'Nhãn', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2235, 1, 'vi', 'plugins/custom-field/base', 'form.field_label_helper', 'Đây là tiêu đề của từng trường, xuất hiện ở các trang chỉnh sửa', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2236, 1, 'vi', 'plugins/custom-field/base', 'form.field_name', 'Tên truy nhập trường', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2237, 1, 'vi', 'plugins/custom-field/base', 'form.field_name_helper', 'Tên truy nhập của trường. Chỉ chấp nhận ký tự thường và dấu gạch dưới', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2238, 1, 'vi', 'plugins/custom-field/base', 'form.field_type', 'Kiểu trường', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2239, 1, 'vi', 'plugins/custom-field/base', 'form.field_type_helper', 'Vui lòng chọn một kiểu phù hợp cho bạn', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2240, 1, 'vi', 'plugins/custom-field/base', 'form.field_instructions', 'Hướng dẫn nhập liệu cho trường', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2241, 1, 'vi', 'plugins/custom-field/base', 'form.field_instructions_helper', 'Hướng dẫn nhập liệu từng trường cho người nhập liệu. Hiển thị ở các trang chỉnh sửa', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2242, 1, 'vi', 'plugins/custom-field/base', 'form.default_value', 'Giá trị mặc định', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2243, 1, 'vi', 'plugins/custom-field/base', 'form.default_value_helper', 'Tự động khởi tạo khi trường bị để trống', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2244, 1, 'vi', 'plugins/custom-field/base', 'form.placeholder', 'Mô tả trường', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2245, 1, 'vi', 'plugins/custom-field/base', 'form.placeholder_helper', 'Xuất hiện ngay bên trong mục nhập khi trường bị để trống', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2246, 1, 'vi', 'plugins/custom-field/base', 'form.rows', 'Số dòng', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2247, 1, 'vi', 'plugins/custom-field/base', 'form.rows_helper', 'Số dòng được khởi tạo khi sử dụng trường textarea', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2248, 1, 'vi', 'plugins/custom-field/base', 'form.toolbar', 'Thanh công cụ', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2249, 1, 'vi', 'plugins/custom-field/base', 'form.toolbar_helper', 'Tùy chỉnh kiểu thanh công cụ khi sử dụng trình nhập liệu', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2250, 1, 'vi', 'plugins/custom-field/base', 'form.toolbar_basic', 'Thanh công cụ đơn giản', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2251, 1, 'vi', 'plugins/custom-field/base', 'form.toolbar_full', 'Thanh công cụ đầy đủ', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2252, 1, 'vi', 'plugins/custom-field/base', 'form.choices', 'Các mục lựa chọn', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2253, 1, 'vi', 'plugins/custom-field/base', 'form.choices_helper', 'Nhập mỗi lựa chọn trên một dòng mới. <br> Để quản lý tốt hơn, bạn có thể cần phải xác định rõ cả nhãn và giá trị lựa chọn như sau: <br> red: Red <br> blue: Blue', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2254, 1, 'vi', 'plugins/custom-field/base', 'form.button_label', 'Nhãn cho nút thêm mới bộ lặp', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2255, 1, 'vi', 'plugins/custom-field/base', 'form.groups.basic', 'Cơ bản', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2256, 1, 'vi', 'plugins/custom-field/base', 'form.groups.content', 'Nội dung', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2257, 1, 'vi', 'plugins/custom-field/base', 'form.groups.choice', 'Lựa chọn', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2258, 1, 'vi', 'plugins/custom-field/base', 'form.groups.other', 'Khác', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2259, 1, 'vi', 'plugins/custom-field/base', 'form.types.text', 'Văn bản', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2260, 1, 'vi', 'plugins/custom-field/base', 'form.types.textarea', 'Văn bản nhiều dòng', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2261, 1, 'vi', 'plugins/custom-field/base', 'form.types.number', 'Số', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2262, 1, 'vi', 'plugins/custom-field/base', 'form.types.email', 'Thư điện tử', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2263, 1, 'vi', 'plugins/custom-field/base', 'form.types.password', 'Mật khẩu', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2264, 1, 'vi', 'plugins/custom-field/base', 'form.types.wysiwyg', 'Trình nhập liệu', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2265, 1, 'vi', 'plugins/custom-field/base', 'form.types.image', 'Hình ảnh', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2266, 1, 'vi', 'plugins/custom-field/base', 'form.types.file', 'Tập tin', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2267, 1, 'vi', 'plugins/custom-field/base', 'form.types.select', 'Thanh lựa chọn', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2268, 1, 'vi', 'plugins/custom-field/base', 'form.types.checkbox', 'Checkbox', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2269, 1, 'vi', 'plugins/custom-field/base', 'form.types.radio', 'Radio', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2270, 1, 'vi', 'plugins/custom-field/base', 'form.types.repeater', 'Bộ lặp', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2271, 1, 'vi', 'plugins/custom-field/base', 'form.rules.rules', 'Luật hiển thị', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2272, 1, 'vi', 'plugins/custom-field/base', 'form.rules.rules_helper', 'Hiển thị nhóm trường này nếu', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2273, 1, 'vi', 'plugins/custom-field/base', 'form.rules.add_rule_group', 'Thêm nhóm luật mới', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2274, 1, 'vi', 'plugins/custom-field/base', 'form.rules.is_equal_to', 'Tương đương', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2275, 1, 'vi', 'plugins/custom-field/base', 'form.rules.is_not_equal_to', 'Khác với', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2276, 1, 'vi', 'plugins/custom-field/base', 'form.rules.and', 'Và', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2277, 1, 'vi', 'plugins/custom-field/base', 'form.rules.or', 'Hoặc', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2278, 1, 'vi', 'plugins/custom-field/base', 'import', 'Nhập dữ liệu', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2279, 1, 'vi', 'plugins/custom-field/base', 'export', 'Xuất dữ liệu', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2280, 1, 'vi', 'plugins/custom-field/permissions', 'view-custom-fields', 'Xem trường tùy chỉnh', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2281, 1, 'vi', 'plugins/custom-field/permissions', 'create-field-groups', 'Tạo các nhóm trường tùy chỉnh', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2282, 1, 'vi', 'plugins/custom-field/permissions', 'edit-field-groups', 'Chỉnh sửa các nhóm trường tùy chỉnh', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2283, 1, 'vi', 'plugins/custom-field/permissions', 'delete-field-groups', 'Xóa các nhóm trường tùy chỉnh', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2284, 1, 'vi', 'plugins/custom-field/rules', 'groups.basic', 'Cơ bản', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2285, 1, 'vi', 'plugins/custom-field/rules', 'groups.other', 'Khác', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2286, 1, 'vi', 'plugins/custom-field/rules', 'groups.blog', 'Blog', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2287, 1, 'vi', 'plugins/custom-field/rules', 'logged_in_user', 'Người đăng nhập hiện tại', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2288, 1, 'vi', 'plugins/custom-field/rules', 'logged_in_user_has_role', 'Người đăng nhập hiện tại có vai trò', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2289, 1, 'vi', 'plugins/custom-field/rules', 'page_template', 'Giao diện trang tĩnh', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2290, 1, 'vi', 'plugins/custom-field/rules', 'page', 'Trang tĩnh', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2291, 1, 'vi', 'plugins/custom-field/rules', 'model_name', 'Tên model', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2292, 1, 'vi', 'plugins/custom-field/rules', 'model_name_page', 'Trang tĩnh', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2293, 1, 'vi', 'plugins/custom-field/rules', 'category', 'Danh mục bài viết', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2294, 1, 'vi', 'plugins/custom-field/rules', 'post_with_related_category', 'Bài viết có danh mục', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2295, 1, 'vi', 'plugins/custom-field/rules', 'model_name_post', 'Bài viết (blog)', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2296, 1, 'vi', 'plugins/custom-field/rules', 'model_name_category', 'Danh mục (blog)', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2297, 1, 'en', 'plugins/gallery/gallery', 'create', 'Create new gallery', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2298, 1, 'en', 'plugins/gallery/gallery', 'edit', 'Edit gallery', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2299, 1, 'en', 'plugins/gallery/gallery', 'galleries', 'Galleries', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2300, 1, 'en', 'plugins/gallery/gallery', 'item', 'Gallery item', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2301, 1, 'en', 'plugins/gallery/gallery', 'select_image', 'Select images', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2302, 1, 'en', 'plugins/gallery/gallery', 'reset', 'Reset gallery', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2303, 1, 'en', 'plugins/gallery/gallery', 'update_photo_description', 'Update photo\'s description', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2304, 1, 'en', 'plugins/gallery/gallery', 'update_photo_description_placeholder', 'Photo\'s description...', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2305, 1, 'en', 'plugins/gallery/gallery', 'delete_photo', 'Delete this photo', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2306, 1, 'en', 'plugins/gallery/gallery', 'gallery_box', 'Gallery images', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2307, 1, 'en', 'plugins/gallery/gallery', 'by', 'By', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2308, 1, 'en', 'plugins/gallery/gallery', 'menu_name', 'Galleries', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2309, 1, 'en', 'plugins/gallery/gallery', 'gallery_images', 'Gallery images', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2310, 1, 'en', 'plugins/gallery/gallery', 'add_gallery_short_code', 'Add a gallery', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2311, 1, 'vi', 'plugins/gallery/gallery', 'create', 'Tạo mới thư viện ảnh', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2312, 1, 'vi', 'plugins/gallery/gallery', 'edit', 'Sửa thư viện ảnh', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2313, 1, 'vi', 'plugins/gallery/gallery', 'list', 'Thư viện ảnh', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2314, 1, 'vi', 'plugins/gallery/gallery', 'delete_photo', 'Xóa ảnh này', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2315, 1, 'vi', 'plugins/gallery/gallery', 'galleries', 'Thư viện ảnh', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2316, 1, 'vi', 'plugins/gallery/gallery', 'item', 'Ảnh', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2317, 1, 'vi', 'plugins/gallery/gallery', 'reset', 'Làm mới thư viện', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2318, 1, 'vi', 'plugins/gallery/gallery', 'select_image', 'Lựa chọn hình ảnh', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2319, 1, 'vi', 'plugins/gallery/gallery', 'update_photo_description', 'Cập nhật mô tả cho hình ảnh', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2320, 1, 'vi', 'plugins/gallery/gallery', 'update_photo_description_placeholder', 'Mô tả của hình ảnh', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2321, 1, 'vi', 'plugins/gallery/gallery', 'by', 'Bởi', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2322, 1, 'vi', 'plugins/gallery/gallery', 'gallery_box', 'Thư viện ảnh', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2323, 1, 'vi', 'plugins/gallery/gallery', 'menu_name', 'Thư viện ảnh', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2324, 1, 'en', 'plugins/language/language', 'name', 'Languages', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2325, 1, 'en', 'plugins/language/language', 'choose_language', 'Choose a language', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2326, 1, 'en', 'plugins/language/language', 'select_language', 'Select language', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2327, 1, 'en', 'plugins/language/language', 'choose_language_helper', 'You can choose a language in the list or directly edit it below.', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2328, 1, 'en', 'plugins/language/language', 'full_name', 'Full name', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2329, 1, 'en', 'plugins/language/language', 'full_name_helper', 'The name is how it is displayed on your site (for example: English).', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2330, 1, 'en', 'plugins/language/language', 'locale', 'Locale', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2331, 1, 'en', 'plugins/language/language', 'locale_helper', 'Laravel Locale for the language (for example: <code>en</code>).', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2332, 1, 'en', 'plugins/language/language', 'language_code', 'Language code', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2333, 1, 'en', 'plugins/language/language', 'language_code_helper', 'Language code - preferably 2-letters ISO 639-1 (for example: en)', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2334, 1, 'en', 'plugins/language/language', 'text_direction', 'Text direction', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2335, 1, 'en', 'plugins/language/language', 'text_direction_helper', 'Choose the text direction for the language', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2336, 1, 'en', 'plugins/language/language', 'left_to_right', 'Left to right', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2337, 1, 'en', 'plugins/language/language', 'right_to_left', 'Right to left', '2020-03-29 20:07:00', '2020-03-29 20:07:00');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2338, 1, 'en', 'plugins/language/language', 'flag', 'Flag', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2339, 1, 'en', 'plugins/language/language', 'flag_helper', 'Choose a flag for the language.', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2340, 1, 'en', 'plugins/language/language', 'order', 'Order', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2341, 1, 'en', 'plugins/language/language', 'order_helper', 'Position of the language in the language switcher', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2342, 1, 'en', 'plugins/language/language', 'add_new_language', 'Add new language', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2343, 1, 'en', 'plugins/language/language', 'code', 'Code', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2344, 1, 'en', 'plugins/language/language', 'default_language', 'Default language', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2345, 1, 'en', 'plugins/language/language', 'actions', 'Actions', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2346, 1, 'en', 'plugins/language/language', 'translations', 'Translations', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2347, 1, 'en', 'plugins/language/language', 'edit', 'Edit', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2348, 1, 'en', 'plugins/language/language', 'edit_tooltip', 'Edit this language', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2349, 1, 'en', 'plugins/language/language', 'delete', 'Delete', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2350, 1, 'en', 'plugins/language/language', 'delete_tooltip', 'Delete this language and all its associated data', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2351, 1, 'en', 'plugins/language/language', 'choose_default_language', 'Choose :language as default language', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2352, 1, 'en', 'plugins/language/language', 'current_language', 'Current record\'s language', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2353, 1, 'en', 'plugins/language/language', 'edit_related', 'Edit related language for this record', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2354, 1, 'en', 'plugins/language/language', 'add_language_for_item', 'Add other language version for this record', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2355, 1, 'en', 'plugins/language/language', 'settings', 'Settings', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2356, 1, 'en', 'plugins/language/language', 'language_hide_default', 'Hide default language from URL?', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2357, 1, 'en', 'plugins/language/language', 'language_display_flag_only', 'Flag only', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2358, 1, 'en', 'plugins/language/language', 'language_display_name_only', 'Name only', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2359, 1, 'en', 'plugins/language/language', 'language_display_all', 'Display all flag and name', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2360, 1, 'en', 'plugins/language/language', 'language_display', 'Language display', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2361, 1, 'en', 'plugins/language/language', 'switcher_display', 'Switcher language display', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2362, 1, 'en', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2363, 1, 'en', 'plugins/language/language', 'language_switcher_display_list', 'List', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2364, 1, 'en', 'plugins/language/language', 'current_language_edit_notification', 'You are editing \"<strong class=\"current_language_text\">:language</strong>\" version', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2365, 1, 'en', 'plugins/language/language', 'confirm-change-language', 'Confirm change language', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2366, 1, 'en', 'plugins/language/language', 'confirm-change-language-message', 'Do you really want to change language to \"<strong class=\"change_to_language_text\"></strong>\" ? This action will be override \"<strong class=\"change_to_language_text\"></strong>\" version if it\'s existed!', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2367, 1, 'en', 'plugins/language/language', 'confirm-change-language-btn', 'Confirm change', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2368, 1, 'en', 'plugins/language/language', 'hide_languages', 'Hide languages', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2369, 1, 'en', 'plugins/language/language', 'hide_languages_description', 'You can completely hide content in specific languages from visitors and search engines, but still view it yourself. This allows reviewing translations that are in progress.', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2370, 1, 'en', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} All languages are currently displayed.|{1} :language is currently hidden to visitors.|[2, Inf] :language are currently hidden to visitors.', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2371, 1, 'en', 'plugins/language/language', 'show_all', 'Show all', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2372, 1, 'en', 'plugins/language/language', 'change_language', 'Language', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2373, 1, 'en', 'plugins/language/language', 'language_show_default_item_if_current_version_not_existed', 'Show item in default language if it is not existed in current language', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2374, 1, 'vi', 'plugins/language/language', 'name', 'Ngôn ngữ', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2375, 1, 'vi', 'plugins/language/language', 'choose_language', 'Chọn một ngôn ngữ', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2376, 1, 'vi', 'plugins/language/language', 'select_language', 'Chọn ngôn ngữ', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2377, 1, 'vi', 'plugins/language/language', 'choose_language_helper', 'Bạn có thể chọn 1 ngôn ngữ trong danh sách hoặc nhập trực tiếp nội dung xuống các mục dưới', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2378, 1, 'vi', 'plugins/language/language', 'full_name', 'Tên đầy đủ', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2379, 1, 'vi', 'plugins/language/language', 'full_name_helper', 'Tên ngôn ngữ sẽ được hiển thị trên website (ví dụ: Tiếng Anh).', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2380, 1, 'vi', 'plugins/language/language', 'locale', 'Locale', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2381, 1, 'vi', 'plugins/language/language', 'locale_helper', 'Laravel Locale cho ngôn ngữ này (ví dụ: <code>en</code>).', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2382, 1, 'vi', 'plugins/language/language', 'language_code', 'Mã ngôn ngữ', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2383, 1, 'vi', 'plugins/language/language', 'language_code_helper', 'Mã ngôn ngữ - ưu tiên dạng 2-kí tự theo chuẩn ISO 639-1 (ví dụ: en)', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2384, 1, 'vi', 'plugins/language/language', 'text_direction', 'Hướng viết chữ', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2385, 1, 'vi', 'plugins/language/language', 'text_direction_helper', 'Chọn hướng viết chữ cho ngôn ngữ này', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2386, 1, 'vi', 'plugins/language/language', 'left_to_right', 'Trái qua phải', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2387, 1, 'vi', 'plugins/language/language', 'right_to_left', 'Phải qua trái', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2388, 1, 'vi', 'plugins/language/language', 'flag', 'Cờ', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2389, 1, 'vi', 'plugins/language/language', 'flag_helper', 'Chọn 1 cờ cho ngôn ngữ này', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2390, 1, 'vi', 'plugins/language/language', 'order', 'Sắp xếp', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2391, 1, 'vi', 'plugins/language/language', 'order_helper', 'Vị trí của ngôn ngữ hiển thị trong mục chuyển đổi ngôn ngữ', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2392, 1, 'vi', 'plugins/language/language', 'add_new_language', 'Thêm ngôn ngữ mới', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2393, 1, 'vi', 'plugins/language/language', 'code', 'Mã', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2394, 1, 'vi', 'plugins/language/language', 'default_language', 'Ngôn ngữ mặc định', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2395, 1, 'vi', 'plugins/language/language', 'actions', 'Hành động', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2396, 1, 'vi', 'plugins/language/language', 'translations', 'Dịch', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2397, 1, 'vi', 'plugins/language/language', 'edit', 'Sửa', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2398, 1, 'vi', 'plugins/language/language', 'edit_tooltip', 'Sửa ngôn ngữ này', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2399, 1, 'vi', 'plugins/language/language', 'delete', 'Xóa', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2400, 1, 'vi', 'plugins/language/language', 'delete_tooltip', 'Xóa ngôn ngữ này và các dữ liệu liên quan', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2401, 1, 'vi', 'plugins/language/language', 'choose_default_language', 'Chọn :language làm ngôn ngữ mặc định', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2402, 1, 'vi', 'plugins/language/language', 'add_language_for_item', 'Thêm ngôn ngữ khác cho bản ghi này', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2403, 1, 'vi', 'plugins/language/language', 'current_language', 'Ngôn ngữ hiện tại của bản ghi', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2404, 1, 'vi', 'plugins/language/language', 'edit_related', 'Sửa bản ngôn ngữ khác của bản ghi này', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2405, 1, 'vi', 'plugins/language/language', 'confirm-change-language', 'Xác nhận thay đổi ngôn ngữ', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2406, 1, 'vi', 'plugins/language/language', 'confirm-change-language-btn', 'Xác nhận thay đổi', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2407, 1, 'vi', 'plugins/language/language', 'confirm-change-language-message', 'Bạn có chắc chắn muốn thay đổi ngôn ngữ sang tiếng \"<strong class=\"change_to_language_text\"></strong>\" ? Điều này sẽ ghi đè bản ghi tiếng \"<strong class=\"change_to_language_text\"></strong>\" nếu nó đã tồn tại!', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2408, 1, 'vi', 'plugins/language/language', 'current_language_edit_notification', 'Bạn đang chỉnh sửa phiên bản tiếng \"<strong class=\"current_language_text\">:language</strong>\"', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2409, 1, 'vi', 'plugins/language/language', 'hide_languages', 'Ẩn ngôn ngữ', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2410, 1, 'vi', 'plugins/language/language', 'hide_languages_description', 'Bạn có thể hoàn toàn ẩn ngôn ngữ cụ thể đối với người truy cập và công cụ tìm kiếm, nhưng sẽ vẫn hiển thị trong trang quản trị. Điều này cho phép bạn biết những ngôn ngữ nào đang được xử lý.', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2411, 1, 'vi', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} Tất cả ngôn ngữ đang được hiển thị.|{1} :language đang bị ẩn đối với người truy cập.|[2, Inf]  :language đang bị ẩn đối với người truy cập.', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2412, 1, 'vi', 'plugins/language/language', 'language_display', 'Hiển thị ngôn ngữ', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2413, 1, 'vi', 'plugins/language/language', 'language_display_all', 'Hiển thị cả cờ và tên ngôn ngữ', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2414, 1, 'vi', 'plugins/language/language', 'language_display_flag_only', 'Chỉ hiển thị cờ', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2415, 1, 'vi', 'plugins/language/language', 'language_display_name_only', 'Chỉ hiển thị tên', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2416, 1, 'vi', 'plugins/language/language', 'language_hide_default', 'Ẩn ngôn ngữ mặc định trên URL', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2417, 1, 'vi', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2418, 1, 'vi', 'plugins/language/language', 'language_switcher_display_list', 'Danh sách', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2419, 1, 'vi', 'plugins/language/language', 'settings', 'Cài đặt', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2420, 1, 'vi', 'plugins/language/language', 'switcher_display', 'Hiển thị bộ chuyển đổi ngôn ngữ', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2421, 1, 'vi', 'plugins/language/language', 'change_language', 'Ngôn ngữ', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2422, 1, 'vi', 'plugins/language/language', 'show_all', 'Hiển thị tất cả', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2423, 1, 'en', 'plugins/log-viewer/general', 'all', 'All', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2424, 1, 'en', 'plugins/log-viewer/general', 'date', 'Date', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2425, 1, 'en', 'plugins/log-viewer/general', 'name', 'System logs', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2426, 1, 'en', 'plugins/log-viewer/levels', 'all', 'All', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2427, 1, 'en', 'plugins/log-viewer/levels', 'emergency', 'Emergency', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2428, 1, 'en', 'plugins/log-viewer/levels', 'alert', 'Alert', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2429, 1, 'en', 'plugins/log-viewer/levels', 'critical', 'Critical', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2430, 1, 'en', 'plugins/log-viewer/levels', 'error', 'Error', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2431, 1, 'en', 'plugins/log-viewer/levels', 'warning', 'Warning', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2432, 1, 'en', 'plugins/log-viewer/levels', 'notice', 'Notice', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2433, 1, 'en', 'plugins/log-viewer/levels', 'info', 'Info', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2434, 1, 'en', 'plugins/log-viewer/levels', 'debug', 'Debug', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2435, 1, 'en', 'plugins/log-viewer/log-viewer', 'system_logs', 'System Logs', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2436, 1, 'en', 'plugins/log-viewer/log-viewer', 'system_logs_description', 'View system errors log.', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2437, 1, 'en', 'plugins/log-viewer/log-viewer', 'name', 'LogViewers', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2438, 1, 'en', 'plugins/log-viewer/log-viewer', 'list', 'List LogViewer', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2439, 1, 'en', 'plugins/log-viewer/log-viewer', 'levels', 'Levels', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2440, 1, 'en', 'plugins/log-viewer/log-viewer', 'no_error', 'There is no error now.', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2441, 1, 'en', 'plugins/log-viewer/log-viewer', 'entries', 'entries', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2442, 1, 'en', 'plugins/log-viewer/log-viewer', 'actions', 'Actions', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2443, 1, 'en', 'plugins/log-viewer/log-viewer', 'delete_log_file', 'Delete log file', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2444, 1, 'en', 'plugins/log-viewer/log-viewer', 'loading', 'Loading...', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2445, 1, 'en', 'plugins/log-viewer/log-viewer', 'delete_button', 'Delete file', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2446, 1, 'en', 'plugins/log-viewer/log-viewer', 'confirm_delete_msg', 'Are you sure you want to <span class=\"label label-danger\">DELETE</span> this log file <span class=\"label label-primary\"><span class=\"log_date\">:date</span></span> ?', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2447, 1, 'en', 'plugins/log-viewer/log-viewer', 'download', 'Download', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2448, 1, 'en', 'plugins/log-viewer/log-viewer', 'delete', 'Delete', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2449, 1, 'en', 'plugins/log-viewer/log-viewer', 'file_path', 'File path', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2450, 1, 'en', 'plugins/log-viewer/log-viewer', 'log_entries', 'Log entries', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2451, 1, 'en', 'plugins/log-viewer/log-viewer', 'size', 'Size', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2452, 1, 'en', 'plugins/log-viewer/log-viewer', 'page', 'Page', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2453, 1, 'en', 'plugins/log-viewer/log-viewer', 'of', 'of', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2454, 1, 'en', 'plugins/log-viewer/log-viewer', 'env', 'Env', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2455, 1, 'en', 'plugins/log-viewer/log-viewer', 'level', 'Level', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2456, 1, 'en', 'plugins/log-viewer/log-viewer', 'time', 'Time', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2457, 1, 'en', 'plugins/log-viewer/log-viewer', 'header', 'Header', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2458, 1, 'en', 'plugins/log-viewer/log-viewer', 'stack', 'Stack', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2459, 1, 'en', 'plugins/log-viewer/log-viewer', 'log_info', 'Log info', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2460, 1, 'en', 'plugins/log-viewer/log-viewer', 'menu_name', 'System logs', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2461, 1, 'vi', 'plugins/log-viewer/general', 'all', 'Tất cả', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2462, 1, 'vi', 'plugins/log-viewer/general', 'date', 'Ngày', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2463, 1, 'vi', 'plugins/log-viewer/general', 'name', 'Lỗi hệ thống', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2464, 1, 'vi', 'plugins/log-viewer/levels', 'all', 'Tất cả', '2020-03-29 20:07:00', '2020-03-29 20:07:00'),
(2465, 1, 'vi', 'plugins/log-viewer/levels', 'emergency', 'Khẩn cấp', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2466, 1, 'vi', 'plugins/log-viewer/levels', 'alert', 'Báo động', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2467, 1, 'vi', 'plugins/log-viewer/levels', 'critical', 'Nguy kịch', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2468, 1, 'vi', 'plugins/log-viewer/levels', 'error', 'Lỗi', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2469, 1, 'vi', 'plugins/log-viewer/levels', 'warning', 'Cảnh báo', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2470, 1, 'vi', 'plugins/log-viewer/levels', 'notice', 'Chú ý', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2471, 1, 'vi', 'plugins/log-viewer/levels', 'info', 'Thông tin', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2472, 1, 'vi', 'plugins/log-viewer/levels', 'debug', 'Gỡ lỗi', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2473, 1, 'vi', 'plugins/log-viewer/log-viewer', 'name', 'LogViewers', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2474, 1, 'vi', 'plugins/log-viewer/log-viewer', 'list', 'List LogViewer', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2475, 1, 'vi', 'plugins/log-viewer/log-viewer', 'actions', 'Hành động', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2476, 1, 'vi', 'plugins/log-viewer/log-viewer', 'confirm_delete_msg', 'Bạn có chắc muốn <span class=\"label label-danger\">XÓA</span> tập tin này <span class=\"label label-primary\"><span class=\"log_date\">:date</span></span> ?', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2477, 1, 'vi', 'plugins/log-viewer/log-viewer', 'delete', 'Xóa', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2478, 1, 'vi', 'plugins/log-viewer/log-viewer', 'delete_button', 'Xóa tập tin', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2479, 1, 'vi', 'plugins/log-viewer/log-viewer', 'delete_log_file', 'Xóa tập tin', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2480, 1, 'vi', 'plugins/log-viewer/log-viewer', 'download', 'Tải xuống', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2481, 1, 'vi', 'plugins/log-viewer/log-viewer', 'entries', 'bản ghi', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2482, 1, 'vi', 'plugins/log-viewer/log-viewer', 'env', 'Môi trường', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2483, 1, 'vi', 'plugins/log-viewer/log-viewer', 'file_path', 'Đường dẫn', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2484, 1, 'vi', 'plugins/log-viewer/log-viewer', 'header', 'Header', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2485, 1, 'vi', 'plugins/log-viewer/log-viewer', 'level', 'Cấp độ', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2486, 1, 'vi', 'plugins/log-viewer/log-viewer', 'levels', 'Cấp độ', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2487, 1, 'vi', 'plugins/log-viewer/log-viewer', 'loading', 'Đang tải...', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2488, 1, 'vi', 'plugins/log-viewer/log-viewer', 'log_entries', 'Bản ghi nhật ký', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2489, 1, 'vi', 'plugins/log-viewer/log-viewer', 'log_info', 'Bản ghi thông tin', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2490, 1, 'vi', 'plugins/log-viewer/log-viewer', 'no_error', 'Hiện tại không có lỗi trong hệ thống', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2491, 1, 'vi', 'plugins/log-viewer/log-viewer', 'of', 'trong tổng số', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2492, 1, 'vi', 'plugins/log-viewer/log-viewer', 'page', 'Trang', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2493, 1, 'vi', 'plugins/log-viewer/log-viewer', 'size', 'Kích thước', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2494, 1, 'vi', 'plugins/log-viewer/log-viewer', 'stack', 'Chi tiết', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2495, 1, 'vi', 'plugins/log-viewer/log-viewer', 'time', 'Thời gian', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2496, 1, 'vi', 'plugins/log-viewer/log-viewer', 'menu_name', 'Lỗi hệ thống', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2497, 1, 'vi', 'plugins/log-viewer/log-viewer', 'system_logs', 'Lịch sử lỗi hệ thống', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2498, 1, 'vi', 'plugins/log-viewer/log-viewer', 'system_logs_description', 'Xem lịch sử lỗi hệ thống', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2499, 1, 'en', 'plugins/maintenance-mode/maintenance-mode', 'maintenance_mode', 'Maintenance mode', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2500, 1, 'en', 'plugins/maintenance-mode/maintenance-mode', 'message', 'Message', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2501, 1, 'en', 'plugins/maintenance-mode/maintenance-mode', 'message_placeholder', 'A message for your users', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2502, 1, 'en', 'plugins/maintenance-mode/maintenance-mode', 'retry_time', 'Retry Time', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2503, 1, 'en', 'plugins/maintenance-mode/maintenance-mode', 'retry_time_placeholder', 'Set the Retry-After header', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2504, 1, 'en', 'plugins/maintenance-mode/maintenance-mode', 'secs', 'secs', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2505, 1, 'en', 'plugins/maintenance-mode/maintenance-mode', 'allowed_ip_address', 'Allowed IP Addresses', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2506, 1, 'en', 'plugins/maintenance-mode/maintenance-mode', 'allowed_your_current_ip', 'Allow your current IP', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2507, 1, 'en', 'plugins/maintenance-mode/maintenance-mode', 'allowed_your_current_ip_helper', 'If you uncheck this and do not add your IP address above you will lose access to this site as well', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2508, 1, 'en', 'plugins/maintenance-mode/maintenance-mode', 'enable_maintenance_mode', 'Enable maintenance mode', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2509, 1, 'en', 'plugins/maintenance-mode/maintenance-mode', 'disable_maintenance_mode', 'Disable maintenance mode', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2510, 1, 'en', 'plugins/maintenance-mode/maintenance-mode', 'application_live', 'Application is now live', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2511, 1, 'en', 'plugins/maintenance-mode/maintenance-mode', 'application_down', 'Application is now in maintenance mode', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2512, 1, 'en', 'plugins/maintenance-mode/maintenance-mode', 'notice_enable', 'Your website is currently in Maintenance Mode', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2513, 1, 'en', 'plugins/maintenance-mode/maintenance-mode', 'notice_disable', 'Your website is live now', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2514, 1, 'vi', 'plugins/maintenance-mode/maintenance-mode', 'maintenance_mode', 'Chế độ bảo trì', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2515, 1, 'vi', 'plugins/maintenance-mode/maintenance-mode', 'message', 'Tin nhắn', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2516, 1, 'vi', 'plugins/maintenance-mode/maintenance-mode', 'message_placeholder', 'Tin nhắn hiển thị cho khách ghé thăm', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2517, 1, 'vi', 'plugins/maintenance-mode/maintenance-mode', 'retry_time', 'Thời gian thử lại', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2518, 1, 'vi', 'plugins/maintenance-mode/maintenance-mode', 'retry_time_placeholder', 'Thiết lập Retry-After header', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2519, 1, 'vi', 'plugins/maintenance-mode/maintenance-mode', 'secs', 'giây', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2520, 1, 'vi', 'plugins/maintenance-mode/maintenance-mode', 'allowed_ip_address', 'Cho phép các địa chỉ IP có thể truy cập', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2521, 1, 'vi', 'plugins/maintenance-mode/maintenance-mode', 'allowed_your_current_ip', 'Cho phép địa chỉ IP hiện tại của bạn', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2522, 1, 'vi', 'plugins/maintenance-mode/maintenance-mode', 'allowed_your_current_ip_helper', 'Nếu bạn không lựa chọn tuỳ chọn này và không thêm IP của bạn vào mục cho phép phía trên, bạn cũng không thể truy cập được trang này', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2523, 1, 'vi', 'plugins/maintenance-mode/maintenance-mode', 'enable_maintenance_mode', 'Bật chế độ bảo trì', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2524, 1, 'vi', 'plugins/maintenance-mode/maintenance-mode', 'disable_maintenance_mode', 'Tắt chế độ bảo trì', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2525, 1, 'vi', 'plugins/maintenance-mode/maintenance-mode', 'application_live', 'Ứng dụng đang hoạt động', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2526, 1, 'vi', 'plugins/maintenance-mode/maintenance-mode', 'application_down', 'Ứng dụng hiện đang ở chế độ bảo trì', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2527, 1, 'vi', 'plugins/maintenance-mode/maintenance-mode', 'notice_enable', 'Website của bạn đang ở chế độ bảo trì', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2528, 1, 'vi', 'plugins/maintenance-mode/maintenance-mode', 'notice_disable', 'Website của bạn đang hoạt động bình thường', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2529, 1, 'en', 'plugins/request-log/request-log', 'name', 'Request Logs', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2530, 1, 'en', 'plugins/request-log/request-log', 'status_code', 'Status Code', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2531, 1, 'en', 'plugins/request-log/request-log', 'no_request_error', 'No request error now!', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2532, 1, 'en', 'plugins/request-log/request-log', 'widget_request_errors', 'Request Errors', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2533, 1, 'vi', 'plugins/request-log/request-log', 'name', 'Lịch sử lỗi', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2534, 1, 'vi', 'plugins/request-log/request-log', 'status_code', 'Mã lỗi', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2535, 1, 'vi', 'plugins/request-log/request-log', 'no_request_error', 'Hiện tại không có lỗi nào cả!', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2536, 1, 'vi', 'plugins/request-log/request-log', 'widget_request_errors', 'Liên kết bị hỏng', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2537, 1, 'en', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2538, 1, 'en', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2539, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2540, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2541, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2542, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2543, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2544, 1, 'en', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2545, 1, 'en', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2546, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2547, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2548, 1, 'en', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2549, 1, 'en', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2550, 1, 'en', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2551, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2552, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2553, 1, 'en', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2554, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2555, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2556, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2557, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2558, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2559, 1, 'en', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2560, 1, 'en', 'plugins/social-login/social-login', 'menu', 'Social Login', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2561, 1, 'vi', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2562, 1, 'vi', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2563, 1, 'vi', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2564, 1, 'vi', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2565, 1, 'vi', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2566, 1, 'vi', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2567, 1, 'vi', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2568, 1, 'vi', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2569, 1, 'vi', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2570, 1, 'vi', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2571, 1, 'vi', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2572, 1, 'vi', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2573, 1, 'vi', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2574, 1, 'vi', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2575, 1, 'vi', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2576, 1, 'vi', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2577, 1, 'vi', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2578, 1, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2579, 1, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2580, 1, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2581, 1, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2582, 1, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2583, 1, 'vi', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2584, 1, 'vi', 'plugins/social-login/social-login', 'menu', 'Social Login', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2585, 1, 'en', 'plugins/translation/translation', 'translations', 'Translations', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2586, 1, 'en', 'plugins/translation/translation', 'translations_description', 'Translate all words in system.', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2587, 1, 'en', 'plugins/translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the resources/lang file, using \'php artisan cms:translations:export\' command or publish button.', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2588, 1, 'en', 'plugins/translation/translation', 'import_done', 'Done importing, processed <strong class=\"counter\">N</strong> items! Reload this page to refresh the groups!', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2589, 1, 'en', 'plugins/translation/translation', 'translation_manager', 'Translations Manager', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2590, 1, 'en', 'plugins/translation/translation', 'done_searching', 'Done searching for translations, found <strong class=\"counter\">N</strong> items!', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2591, 1, 'en', 'plugins/translation/translation', 'done_publishing', 'Done publishing the translations for group', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2592, 1, 'en', 'plugins/translation/translation', 'append_translation', 'Append new translations', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2593, 1, 'en', 'plugins/translation/translation', 'replace_translation', 'Replace existing translations', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2594, 1, 'en', 'plugins/translation/translation', 'loading', 'Loading...', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2595, 1, 'en', 'plugins/translation/translation', 'import_group', 'Import group', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2596, 1, 'en', 'plugins/translation/translation', 'confirm_scan_translation', 'Are you sure you want to scan you app folder? All found translation keys will be added to the database.', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2597, 1, 'en', 'plugins/translation/translation', 'searching', 'Searching...', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2598, 1, 'en', 'plugins/translation/translation', 'find_translation_files', 'Find translations in files', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2599, 1, 'en', 'plugins/translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2600, 1, 'en', 'plugins/translation/translation', 'publishing', 'Publishing..', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2601, 1, 'en', 'plugins/translation/translation', 'publish_translations', 'Publish translations', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2602, 1, 'en', 'plugins/translation/translation', 'back', 'Back', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2603, 1, 'en', 'plugins/translation/translation', 'add_key_description', 'Add 1 key per line, without the group prefix', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2604, 1, 'en', 'plugins/translation/translation', 'add_key_button', 'Add keys', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2605, 1, 'en', 'plugins/translation/translation', 'total', 'Total', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2606, 1, 'en', 'plugins/translation/translation', 'changed', 'changed', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2607, 1, 'en', 'plugins/translation/translation', 'key', 'Key', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2608, 1, 'en', 'plugins/translation/translation', 'edit_title', 'Enter translation', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2609, 1, 'en', 'plugins/translation/translation', 'confirm_delete_key', 'Are you sure you want to delete the translations for :key ?', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2610, 1, 'en', 'plugins/translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have run the migrations and imported the translations.', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2611, 1, 'en', 'plugins/translation/translation', 'choose_a_group', 'Choose a group', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2612, 1, 'vi', 'plugins/translation/translation', 'add_key_button', 'Thêm khóa', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2613, 1, 'vi', 'plugins/translation/translation', 'add_key_description', 'Mỗi khóa trên mỗi dòng, trừ tiền tố của nhóm', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2614, 1, 'vi', 'plugins/translation/translation', 'append_translation', 'Tiếp nối bản dịch', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2615, 1, 'vi', 'plugins/translation/translation', 'back', 'Quay lại', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2616, 1, 'vi', 'plugins/translation/translation', 'changed', 'thay đổi', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2617, 1, 'vi', 'plugins/translation/translation', 'choose_a_group', 'Chọn một nhóm', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2618, 1, 'vi', 'plugins/translation/translation', 'choose_group_msg', 'Chọn một nhóm để hiển thị nhóm dịch thuật. Nếu nhóm không có sẵn, hãy chắc chắn là bạn đã chạy migrations và nhập dữ liệu dịch thuật.', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2619, 1, 'vi', 'plugins/translation/translation', 'confirm_delete_key', 'Bạn có chắc muốn xóa dịch thuật cho :key?', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2620, 1, 'vi', 'plugins/translation/translation', 'confirm_publish_group', 'Bạn có chắc muốn xuất bản nhóm \":group\"? Điều này sẽ ghi đè tập tin ngôn ngữ hiện tại.', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2621, 1, 'vi', 'plugins/translation/translation', 'confirm_scan_translation', 'Bạn có chắc muốn quét thư mục app? Tất cả khóa dịch thuật tìm thấy sẽ được thêm vào cơ sở dữ liệu.', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2622, 1, 'vi', 'plugins/translation/translation', 'done_publishing', 'Xuất bản nhóm dịch thuật thành công', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2623, 1, 'vi', 'plugins/translation/translation', 'done_searching', 'Tìm kiếm dịch thuật xong, tìm thấy <strong class=\"counter\">N</strong> bản ghi!', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2624, 1, 'vi', 'plugins/translation/translation', 'edit_title', 'Nhập nội dung dịch', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2625, 1, 'vi', 'plugins/translation/translation', 'export_warning', 'Cảnh báo, bản dịch sẽ không có sẵn cho đến khi chúng được xuất bản lại vào thư mục /resources/lang, sử dụng lệnh \'php artisan cms:translations:export\' hoặc sử dụng nút xuất bản', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2626, 1, 'vi', 'plugins/translation/translation', 'find_translation_files', 'Tìm thấy tập tin dịch thuật', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2627, 1, 'vi', 'plugins/translation/translation', 'import_done', 'Nhập hoàn thành, đã xử lý <strong class=\"counter\">N</strong> bản ghi!  ', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2628, 1, 'vi', 'plugins/translation/translation', 'import_group', 'Nhập nhóm', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2629, 1, 'vi', 'plugins/translation/translation', 'key', 'Khóa', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2630, 1, 'vi', 'plugins/translation/translation', 'loading', 'Đang tải...', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2631, 1, 'vi', 'plugins/translation/translation', 'publish_translations', 'Xuất bản dịch thuật', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2632, 1, 'vi', 'plugins/translation/translation', 'publishing', 'Đang xuất bản...', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2633, 1, 'vi', 'plugins/translation/translation', 'replace_translation', 'Thay thế bản dịch hiện tại', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2634, 1, 'vi', 'plugins/translation/translation', 'searching', 'Đang tìm kiếm...', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2635, 1, 'vi', 'plugins/translation/translation', 'total', 'Tổng cộng', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2636, 1, 'vi', 'plugins/translation/translation', 'translation_manager', 'Quản lý dịch thuật', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2637, 1, 'vi', 'plugins/translation/translation', 'translations', 'Dịch thuật', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2638, 1, 'vi', 'plugins/translation/translation', 'translations_description', 'Dịch tất cả các từ trong hệ thống', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2639, 1, 'vi', 'auth', 'failed', 'Thông tin tài khoản không tìm thấy trong hệ thống.', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2640, 1, 'vi', 'auth', 'throttle', 'Vượt quá số lần đăng nhập cho phép. Vui lòng thử lại sau :seconds giây.', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2641, 1, 'vi', 'pagination', 'previous', '&laquo; Trước', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2642, 1, 'vi', 'pagination', 'next', 'Sau &raquo;', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2643, 1, 'vi', 'passwords', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với xác nhận mật khẩu.', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2644, 1, 'vi', 'passwords', 'reset', 'Mật khẩu của bạn đã được khôi phục', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2645, 1, 'vi', 'passwords', 'sent', 'Hệ thống đã gửi một email cho bạn chứa liên kết khôi phục mật khẩu!', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2646, 1, 'vi', 'passwords', 'token', 'Mã khôi phục mật khẩu không hợp lệ.', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2647, 1, 'vi', 'passwords', 'user', 'Không thể tìm thấy người dùng với địa chỉ email này.', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2648, 1, 'vi', 'validation', 'accepted', 'Trường :attribute phải được chấp nhận.', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2649, 1, 'vi', 'validation', 'active_url', 'Trường :attribute không phải là một URL hợp lệ.', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2650, 1, 'vi', 'validation', 'after', 'Trường :attribute phải là một ngày sau ngày :date.', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2651, 1, 'vi', 'validation', 'alpha', 'Trường :attribute chỉ có thể chứa các chữ cái.', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2652, 1, 'vi', 'validation', 'alpha_dash', 'Trường :attribute chỉ có thể chứa chữ cái, số và dấu gạch ngang.', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2653, 1, 'vi', 'validation', 'alpha_num', 'Trường :attribute chỉ có thể chứa chữ cái và số.', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2654, 1, 'vi', 'validation', 'array', 'Kiểu dữ liệu của trường :attribute phải là dạng mảng.', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2655, 1, 'vi', 'validation', 'before', 'Trường :attribute phải là một ngày trước ngày :date.', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2656, 1, 'vi', 'validation', 'between.numeric', 'Trường :attribute phải nằm trong khoảng :min - :max.', '2020-03-29 20:07:01', '2020-03-29 20:07:01'),
(2657, 1, 'vi', 'validation', 'between.file', 'Dung lượng tập tin trong trường :attribute phải từ :min - :max kB.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2658, 1, 'vi', 'validation', 'between.string', 'Trường :attribute phải từ :min - :max ký tự.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2659, 1, 'vi', 'validation', 'between.array', 'Trường :attribute phải có từ :min - :max phần tử.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2660, 1, 'vi', 'validation', 'boolean', 'Trường :attribute phải là true hoặc false.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2661, 1, 'vi', 'validation', 'confirmed', 'Giá trị xác nhận trong trường :attribute không khớp.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2662, 1, 'vi', 'validation', 'date', 'Trường :attribute không phải là định dạng của ngày-tháng.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2663, 1, 'vi', 'validation', 'date_format', 'Trường :attribute không giống với định dạng :format.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2664, 1, 'vi', 'validation', 'different', 'Trường :attribute và :other phải khác nhau.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2665, 1, 'vi', 'validation', 'digits', 'Độ dài của trường :attribute phải gồm :digits chữ số.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2666, 1, 'vi', 'validation', 'digits_between', 'Độ dài của trường :attribute phải nằm trong khoảng :min and :max chữ số.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2667, 1, 'vi', 'validation', 'email', 'Trường :attribute phải là một địa chỉ email hợp lệ.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2668, 1, 'vi', 'validation', 'exists', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2669, 1, 'vi', 'validation', 'file', 'Trường :attribute phải là một tập tin.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2670, 1, 'vi', 'validation', 'image', 'Các tập tin trong trường :attribute phải là định dạng hình ảnh.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2671, 1, 'vi', 'validation', 'in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2672, 1, 'vi', 'validation', 'integer', 'Trường :attribute phải là một số nguyên.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2673, 1, 'vi', 'validation', 'ip', 'Trường :attribute phải là một địa chỉa IP.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2674, 1, 'vi', 'validation', 'max.numeric', 'Trường :attribute không được lớn hơn :max.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2675, 1, 'vi', 'validation', 'max.file', 'Dung lượng tập tin trong trường :attribute không được lớn hơn :max kB.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2676, 1, 'vi', 'validation', 'max.string', 'Trường :attribute không được lớn hơn :max ký tự.', '2020-03-29 20:07:02', '2020-03-29 20:07:02');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2677, 1, 'vi', 'validation', 'max.array', 'Trường :attribute không được lớn hơn :max phần tử.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2678, 1, 'vi', 'validation', 'mimes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2679, 1, 'vi', 'validation', 'min.numeric', 'Trường :attribute phải tối thiểu là :min.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2680, 1, 'vi', 'validation', 'min.file', 'Dung lượng tập tin trong trường :attribute phải tối thiểu :min kB.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2681, 1, 'vi', 'validation', 'min.string', 'Trường :attribute phải có tối thiểu :min ký tự.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2682, 1, 'vi', 'validation', 'min.array', 'Trường :attribute phải có tối thiểu :min phần tử.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2683, 1, 'vi', 'validation', 'not_in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2684, 1, 'vi', 'validation', 'numeric', 'Trường :attribute phải là một số.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2685, 1, 'vi', 'validation', 'regex', 'Định dạng trường :attribute không hợp lệ.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2686, 1, 'vi', 'validation', 'required', 'Trường :attribute không được bỏ trống.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2687, 1, 'vi', 'validation', 'required_if', 'Trường :attribute không được bỏ trống khi trường :other là :value.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2688, 1, 'vi', 'validation', 'required_with', 'Trường :attribute không được bỏ trống khi trường :values có giá trị.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2689, 1, 'vi', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2690, 1, 'vi', 'validation', 'required_without', 'Trường :attribute không được bỏ trống khi trường :values không có giá trị.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2691, 1, 'vi', 'validation', 'required_without_all', 'Trường :attribute không được bỏ trống khi tất cả :values không có giá trị.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2692, 1, 'vi', 'validation', 'same', 'Trường :attribute và :other phải giống nhau.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2693, 1, 'vi', 'validation', 'size.numeric', 'Trường :attribute phải bằng :size.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2694, 1, 'vi', 'validation', 'size.file', 'Dung lượng tập tin trong trường :attribute phải bằng :size kB.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2695, 1, 'vi', 'validation', 'size.string', 'Trường :attribute phải chứa :size ký tự.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2696, 1, 'vi', 'validation', 'size.array', 'Trường :attribute phải chứa :size phần tử.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2697, 1, 'vi', 'validation', 'timezone', 'Trường :attribute phải là một múi giờ hợp lệ.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2698, 1, 'vi', 'validation', 'unique', 'Trường :attribute đã có trong CSDL.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2699, 1, 'vi', 'validation', 'url', 'Trường :attribute không giống với định dạng một URL.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2700, 1, 'vi', 'validation', 'uploaded', 'Không thể tải lên, hãy thử lại.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2701, 1, 'vi', 'validation', 'custom.email.email', 'Địa chỉ email không hợp lệ', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2702, 1, 'vi', 'validation', 'custom.email.required', 'Email không được để trống!', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2703, 1, 'vi', 'validation', 'custom.email.unique', 'Email đã được sử dụng, vui lòng chọn email khác!', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2704, 1, 'vi', 'validation', 'custom.password.min', 'Mật khẩu phải ít nhất :min kí tự.', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2705, 1, 'vi', 'validation', 'custom.password.required', 'Mật khẩu không được để trống!', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2706, 1, 'vi', 'validation', 'custom.repassword.same', 'Mật khẩu và xác nhận mật khẩu không trùng khớp', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2707, 1, 'vi', 'validation', 'custom.username.min', 'Tên phải ít nhất 6 kí tự', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2708, 1, 'vi', 'validation', 'custom.username.required', 'Tên đăng nhập không được để trống!', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2709, 1, 'vi', 'validation', 'custom.username.unique', 'Tên này đã được sử dụng, vui lòng chọn tên khác!', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2710, 1, 'vi', 'validation', 'attributes', 'Thuộc tính', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2711, 1, 'vi', 'validation', 'after_or_equal', 'Thuộc tính :attribute phải là ngày lớn hơn hoặc bằng :date', '2020-03-29 20:07:02', '2020-03-29 20:07:02'),
(2712, 1, 'vi', 'validation', 'before_or_equal', 'Trường :attribute phải là ngày trước hoặc bằng ngày :date', '2020-03-29 20:07:02', '2020-03-29 20:07:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `avatar_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `permissions`, `last_login`, `first_name`, `last_name`, `username`, `super_user`, `manage_supers`, `avatar_id`) VALUES
(1, 'admin@botble.com', '$2y$10$rv5JE5IZLvgSkGxhwPPbyu4nGedu2N.8SJ0hSwAZ.me93UK4doA/S', 'wJLgQjvi1DqpKHirO4vZqSuAdq0oNSTUtP9mDMZGvPVMwEHkMvbT1MMD6163', '2017-11-15 06:57:09', '2020-06-09 09:16:20', '{\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"backups.list\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.delete\":true,\"block.list\":true,\"block.create\":true,\"block.edit\":true,\"block.delete\":true,\"categories.list\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.delete\":true,\"contacts.list\":true,\"contacts.create\":true,\"contacts.edit\":true,\"contacts.delete\":true,\"custom-fields.list\":true,\"custom-fields.create\":true,\"custom-fields.edit\":true,\"custom-fields.delete\":true,\"dashboard.index\":true,\"galleries.list\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.delete\":true,\"languages.list\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.delete\":true,\"logs.list\":true,\"logs.delete\":true,\"media.index\":true,\"files.list\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.delete\":true,\"folders.list\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.delete\":true,\"member.list\":true,\"member.create\":true,\"member.edit\":true,\"member.delete\":true,\"menus.list\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.delete\":true,\"pages.list\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.delete\":true,\"plugins.list\":true,\"posts.list\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.delete\":true,\"roles.list\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.delete\":true,\"settings.options\":true,\"tags.list\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.delete\":true,\"translations.list\":true,\"translations.create\":true,\"translations.edit\":true,\"translations.delete\":true,\"users.list\":true,\"users.create\":true,\"users.edit\":true,\"users.delete\":true,\"widgets.list\":true,\"superuser\":true,\"manage_supers\":true}', '2020-06-09 09:16:20', 'Admin', 'User', 'admin', 1, 1, 117);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_meta`
--

INSERT INTO `user_meta` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'languages_current_data_language', 'en_US', 1, '2017-11-30 18:27:51', '2018-04-13 10:00:39'),
(2, 'admin-theme', 'blue', 1, '2018-03-07 03:42:13', '2020-06-09 08:50:59'),
(3, 'admin-locale', 'en', 1, '2018-03-07 03:42:14', '2018-07-04 03:37:40');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(2, 'Botble\\Widget\\Widgets\\Text', 'second_sidebar', 'demo', 0, '{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\Text\",\"name\":\"Text\",\"content\":\"\"}', '2016-12-18 04:47:20', '2016-12-18 04:47:20'),
(7, 'RecentPostsWidget', 'top_sidebar', 'ripple', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":\"5\"}', '2016-12-18 04:48:00', '2016-12-18 04:48:00'),
(9, 'Botble\\Widget\\Widgets\\Text', 'primary_sidebar', 'demo', 0, '{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\Text\",\"name\":\"Text\",\"content\":\"\"}', '2016-12-18 04:50:57', '2016-12-18 04:50:57'),
(19, 'TagsWidget', 'primary_sidebar', 'ripple', 0, '{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":\"5\"}', '2016-12-24 07:41:57', '2016-12-24 07:41:57'),
(20, 'CustomMenuWidget', 'primary_sidebar', 'ripple', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"featured-categories\"}', '2016-12-24 07:41:57', '2016-12-24 07:41:57'),
(21, 'CustomMenuWidget', 'primary_sidebar', 'ripple', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Social\",\"menu_id\":\"social\"}', '2016-12-24 07:41:57', '2016-12-24 07:41:57'),
(30, 'RecentPostsWidget', 'footer_sidebar', 'ripple', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":\"5\"}', '2016-12-24 07:42:58', '2016-12-24 07:42:58'),
(31, 'CustomMenuWidget', 'footer_sidebar', 'ripple', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Favorite website\",\"menu_id\":\"favorite-website\"}', '2016-12-24 07:42:58', '2016-12-24 07:42:58'),
(32, 'CustomMenuWidget', 'footer_sidebar', 'ripple', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"My links\",\"menu_id\":\"my-links\"}', '2016-12-24 07:42:58', '2016-12-24 07:42:58'),
(61, 'RecentPostsWidget', 'footer_sidebar', 'newstv', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent posts\",\"number_display\":\"6\"}', '2017-04-30 19:56:39', '2017-04-30 19:56:39'),
(62, 'CustomMenuWidget', 'footer_sidebar', 'newstv', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Favorite websites\",\"menu_id\":\"favorite-website\"}', '2017-04-30 19:56:39', '2017-04-30 19:56:39'),
(63, 'CustomMenuWidget', 'footer_sidebar', 'newstv', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"My links\",\"menu_id\":\"my-links\"}', '2017-04-30 19:56:39', '2017-04-30 19:56:39'),
(64, 'CustomMenuWidget', 'footer_sidebar', 'newstv', 3, '{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"featured-categories\"}', '2017-04-30 19:56:39', '2017-04-30 19:56:39'),
(74, 'TagsWidget', 'primary_sidebar', 'ripple-vi', 0, '{\"id\":\"TagsWidget\",\"name\":\"Th\\u1ebb\",\"number_display\":\"5\"}', '2018-04-13 08:52:05', '2018-04-13 08:52:05'),
(75, 'CustomMenuWidget', 'primary_sidebar', 'ripple-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Chuy\\u00ean m\\u1ee5c n\\u1ed5i b\\u1eadt\",\"menu_id\":\"featured-categories\"}', '2018-04-13 08:52:05', '2018-04-13 08:52:05'),
(76, 'CustomMenuWidget', 'primary_sidebar', 'ripple-vi', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"M\\u1ea1ng x\\u00e3 h\\u1ed9i \",\"menu_id\":\"social\"}', '2018-04-13 08:52:05', '2018-04-13 08:52:05'),
(78, 'RecentPostsWidget', 'top_sidebar', 'ripple-vi', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft n\\u1ed5i b\\u1eadt\",\"number_display\":\"5\"}', '2018-04-13 08:52:59', '2018-04-13 08:52:59'),
(89, 'RecentPostsWidget', 'footer_sidebar', 'ripple-vi', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft n\\u1ed5i b\\u1eadt\",\"number_display\":\"5\"}', '2018-04-13 08:54:28', '2018-04-13 08:54:28'),
(90, 'CustomMenuWidget', 'footer_sidebar', 'ripple-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Website \\u01b0a th\\u00edch\",\"menu_id\":\"favorite-website\"}', '2018-04-13 08:54:28', '2018-04-13 08:54:28'),
(91, 'CustomMenuWidget', 'footer_sidebar', 'ripple-vi', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft \",\"menu_id\":\"main-menu\"}', '2018-04-13 08:54:28', '2018-04-13 08:54:28'),
(103, 'PopularPostsWidget', 'primary_sidebar', 'newstv-vi', 0, '{\"id\":\"PopularPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft n\\u1ed5i b\\u1eadt\",\"number_display\":\"5\"}', '2018-04-13 10:10:24', '2018-04-13 10:10:24'),
(104, 'VideoPostsWidget', 'primary_sidebar', 'newstv-vi', 1, '{\"id\":\"VideoPostsWidget\",\"name\":\"Video \",\"number_display\":\"4\"}', '2018-04-13 10:10:24', '2018-04-13 10:10:24'),
(105, 'FacebookWidget', 'primary_sidebar', 'newstv-vi', 2, '{\"id\":\"FacebookWidget\",\"name\":\"Facebook\",\"facebook_name\":\"Botble Technologies \",\"facebook_id\":\"https:\\/\\/www.facebook.com\\/botble.technologies\\/\"}', '2018-04-13 10:10:24', '2018-04-13 10:10:24'),
(131, 'CustomMenuWidget', 'footer_sidebar', 'newstv-vi', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"\\u001fWebsite \\u01b0a th\\u00edch \",\"menu_id\":\"favorite-website\"}', '2018-04-13 10:12:50', '2018-04-13 10:12:50'),
(132, 'CustomMenuWidget', 'footer_sidebar', 'newstv-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft \",\"menu_id\":\"my-links\"}', '2018-04-13 10:12:50', '2018-04-13 10:12:50'),
(133, 'CustomMenuWidget', 'footer_sidebar', 'newstv-vi', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"\\u001fChuy\\u00ean m\\u1ee5c n\\u1ed5i b\\u1eadt \",\"menu_id\":\"featured-categories\"}', '2018-04-13 10:12:50', '2018-04-13 10:12:50'),
(134, 'CustomMenuWidget', 'footer_sidebar', 'newstv-vi', 3, '{\"id\":\"CustomMenuWidget\",\"name\":\"M\\u1ea1ng x\\u00e3 h\\u1ed9i \",\"menu_id\":\"social\"}', '2018-04-13 10:12:50', '2018-04-13 10:12:50'),
(143, 'PopularPostsWidget', 'primary_sidebar', 'newstv', 0, '{\"id\":\"PopularPostsWidget\",\"name\":\"Top Views\",\"number_display\":\"5\"}', '2019-11-03 17:32:32', '2019-11-03 17:32:32'),
(144, 'VideoPostsWidget', 'primary_sidebar', 'newstv', 1, '{\"id\":\"VideoPostsWidget\",\"name\":\"Videos\",\"number_display\":\"1\"}', '2019-11-03 17:32:32', '2019-11-03 17:32:32'),
(145, 'FacebookWidget', 'primary_sidebar', 'newstv', 2, '{\"id\":\"FacebookWidget\",\"name\":\"Facebook\",\"facebook_name\":\"Botble Technologies\",\"facebook_id\":\"https:\\/\\/www.facebook.com\\/botble.technologies\"}', '2019-11-03 17:32:32', '2019-11-03 17:32:32'),
(146, 'AdsWidget', 'primary_sidebar', 'newstv', 3, '{\"id\":\"AdsWidget\",\"image_link\":\"#\",\"image_new_tab\":\"0\",\"image_url\":\"\\/storage\\/ads\\/300x250.jpg\"}', '2019-11-03 17:32:32', '2019-11-03 17:32:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_history_user_id_index` (`user_id`),
  ADD KEY `audit_history_module_index` (`module`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_index` (`parent_id`),
  ADD KEY `categories_user_id_index` (`author_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_fields_field_item_id_foreign` (`field_item_id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `field_groups`
--
ALTER TABLE `field_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_groups_created_by_foreign` (`created_by`),
  ADD KEY `field_groups_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `field_items`
--
ALTER TABLE `field_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_items_field_group_id_foreign` (`field_group_id`),
  ADD KEY `field_items_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_index` (`user_id`);

--
-- Indexes for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_meta_content_id_index` (`reference_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_lang_meta_content_id_index` (`reference_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_email_unique` (`email`);

--
-- Indexes for table `member_activity_logs`
--
ALTER TABLE `member_activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_activity_logs_member_id_index` (`member_id`);

--
-- Indexes for table `member_password_resets`
--
ALTER TABLE `member_password_resets`
  ADD KEY `member_password_resets_email_index` (`email`),
  ADD KEY `member_password_resets_token_index` (`token`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `menu_nodes_related_id_index` (`reference_id`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_content_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_category_id_index` (`category_id`),
  ADD KEY `post_category_post_id_index` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_tag_id_index` (`tag_id`),
  ADD KEY `post_tag_post_id_index` (`post_id`);

--
-- Indexes for table `request_logs`
--
ALTER TABLE `request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_type_index` (`revisionable_type`),
  ADD KEY `revisions_revisionable_id_index` (`revisionable_id`),
  ADD KEY `revisions_user_id_index` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_key_index` (`key`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_user_id_index` (`author_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `field_groups`
--
ALTER TABLE `field_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `field_items`
--
ALTER TABLE `field_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member_activity_logs`
--
ALTER TABLE `member_activity_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=611;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `request_logs`
--
ALTER TABLE `request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2713;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD CONSTRAINT `custom_fields_field_item_id_foreign` FOREIGN KEY (`field_item_id`) REFERENCES `field_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `field_groups`
--
ALTER TABLE `field_groups`
  ADD CONSTRAINT `field_groups_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `field_groups_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `field_items`
--
ALTER TABLE `field_items`
  ADD CONSTRAINT `field_items_field_group_id_foreign` FOREIGN KEY (`field_group_id`) REFERENCES `field_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `field_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `field_items` (`id`) ON DELETE CASCADE;
