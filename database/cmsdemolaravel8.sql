SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `client_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_currency` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `project_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `income_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee_percent` double(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_09_15_000000_create_media_table', 1),
(8, '2019_09_15_000001_create_permissions_table', 1),
(9, '2019_09_15_000002_create_project_statuses_table', 1),
(10, '2019_09_15_000003_create_transactions_table', 1),
(11, '2019_09_15_000004_create_documents_table', 1),
(12, '2019_09_15_000005_create_notes_table', 1),
(13, '2019_09_15_000006_create_projects_table', 1),
(14, '2019_09_15_000007_create_roles_table', 1),
(15, '2019_09_15_000008_create_clients_table', 1),
(16, '2019_09_15_000009_create_client_statuses_table', 1),
(17, '2019_09_15_000010_create_income_sources_table', 1),
(18, '2019_09_15_000011_create_transaction_types_table', 1),
(19, '2019_09_15_000012_create_currencies_table', 1),
(20, '2019_09_15_000013_create_users_table', 1),
(21, '2019_09_15_000014_create_role_user_pivot_table', 1),
(22, '2019_09_15_000015_create_permission_role_pivot_table', 1),
(23, '2019_09_15_000016_add_relationship_fields_to_clients_table', 1),
(24, '2019_09_15_000017_add_relationship_fields_to_projects_table', 1),
(25, '2019_09_15_000018_add_relationship_fields_to_notes_table', 1),
(26, '2019_09_15_000019_add_relationship_fields_to_documents_table', 1),
(27, '2019_09_15_000020_add_relationship_fields_to_transactions_table', 1);

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `note_text` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `project_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(2, 'permission_create', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(3, 'permission_edit', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(4, 'permission_show', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(5, 'permission_delete', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(6, 'permission_access', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(7, 'role_create', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(8, 'role_edit', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(9, 'role_show', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(10, 'role_delete', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(11, 'role_access', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(12, 'user_create', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(13, 'user_edit', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(14, 'user_show', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(15, 'user_delete', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(16, 'user_access', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(17, 'client_management_setting_access', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(18, 'currency_create', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(19, 'currency_edit', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(20, 'currency_show', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(21, 'currency_delete', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(22, 'currency_access', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(23, 'transaction_type_create', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(24, 'transaction_type_edit', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(25, 'transaction_type_show', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(26, 'transaction_type_delete', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(27, 'transaction_type_access', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(28, 'income_source_create', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(29, 'income_source_edit', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(30, 'income_source_show', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(31, 'income_source_delete', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(32, 'income_source_access', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(33, 'client_status_create', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(34, 'client_status_edit', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(35, 'client_status_show', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(36, 'client_status_delete', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(37, 'client_status_access', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(38, 'project_status_create', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(39, 'project_status_edit', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(40, 'project_status_show', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(41, 'project_status_delete', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(42, 'project_status_access', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(43, 'client_management_access', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(44, 'client_create', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(45, 'client_edit', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(46, 'client_show', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(47, 'client_delete', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(48, 'client_access', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(49, 'project_create', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(50, 'project_edit', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(51, 'project_show', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(52, 'project_delete', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(53, 'project_access', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(54, 'note_create', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(55, 'note_edit', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(56, 'note_show', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(57, 'note_delete', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(58, 'note_access', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(59, 'document_create', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(60, 'document_edit', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(61, 'document_show', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(62, 'document_delete', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(63, 'document_access', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(64, 'transaction_create', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(65, 'transaction_edit', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(66, 'transaction_show', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(67, 'transaction_delete', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(68, 'transaction_access', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(69, 'client_report_create', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(70, 'client_report_edit', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(71, 'client_report_show', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(72, 'client_report_delete', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL),
(73, 'client_report_access', '2019-09-14 23:10:05', '2019-09-14 23:10:05', NULL);

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 42),
(2, 43),
(2, 44),
(2, 45),
(2, 46),
(2, 47),
(2, 48),
(2, 49),
(2, 50),
(2, 51),
(2, 52),
(2, 53),
(2, 54),
(2, 55),
(2, 56),
(2, 57),
(2, 58),
(2, 59),
(2, 60),
(2, 61),
(2, 62),
(2, 63),
(2, 64),
(2, 65),
(2, 66),
(2, 67),
(2, 68),
(2, 69),
(2, 70),
(2, 71),
(2, 72),
(2, 73);

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `start_date` date DEFAULT NULL,
  `budget` double(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `client_id` int(10) UNSIGNED DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `project_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', '2019-09-14 23:09:29', '2019-09-14 23:09:29', NULL),
(2, 'User', '2019-09-14 23:09:29', '2019-09-14 23:09:29', NULL);

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `project_id` int(10) UNSIGNED DEFAULT NULL,
  `transaction_type_id` int(10) UNSIGNED DEFAULT NULL,
  `income_source_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `transaction_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$rA.UbFkvBY0TnPXC5AvdEew7ITCs.PFo9eAfkH.m48GlOdhFMXvLG', 'jP7HZsYQXttKYeAIG9jpG39qetsR2ZiiGKFHDTuJZXRVMcY5S8MFVcKXnmy7', '2019-09-14 23:09:29', '2019-09-14 23:09:29', NULL);


ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_fk_340032` (`status_id`);

ALTER TABLE `client_statuses`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_fk_340053` (`project_id`);

ALTER TABLE `income_sources`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_fk_340047` (`project_id`);

ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_339981` (`role_id`),
  ADD KEY `permission_id_fk_339981` (`permission_id`);

ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_fk_340038` (`client_id`),
  ADD KEY `status_fk_340042` (`status_id`);

ALTER TABLE `project_statuses`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `role_user`
  ADD KEY `user_id_fk_339990` (`user_id`),
  ADD KEY `role_id_fk_339990` (`role_id`);

ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_fk_340061` (`project_id`),
  ADD KEY `transaction_type_fk_340062` (`transaction_type_id`),
  ADD KEY `income_source_fk_340063` (`income_source_id`),
  ADD KEY `currency_fk_340065` (`currency_id`);

ALTER TABLE `transaction_types`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `client_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `income_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `project_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `transaction_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `clients`
  ADD CONSTRAINT `status_fk_340032` FOREIGN KEY (`status_id`) REFERENCES `client_statuses` (`id`);

ALTER TABLE `documents`
  ADD CONSTRAINT `project_fk_340053` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

ALTER TABLE `notes`
  ADD CONSTRAINT `project_fk_340047` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_339981` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_339981` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

ALTER TABLE `projects`
  ADD CONSTRAINT `client_fk_340038` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `status_fk_340042` FOREIGN KEY (`status_id`) REFERENCES `project_statuses` (`id`);

ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_339990` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_339990` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

ALTER TABLE `transactions`
  ADD CONSTRAINT `currency_fk_340065` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `income_source_fk_340063` FOREIGN KEY (`income_source_id`) REFERENCES `income_sources` (`id`),
  ADD CONSTRAINT `project_fk_340061` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `transaction_type_fk_340062` FOREIGN KEY (`transaction_type_id`) REFERENCES `transaction_types` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
