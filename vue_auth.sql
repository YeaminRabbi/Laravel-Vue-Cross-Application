-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2023 at 01:56 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vue_auth`
--

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
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `parentable_type` varchar(255) NOT NULL,
  `parentable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `type`, `parentable_type`, `parentable_id`, `created_at`, `updated_at`) VALUES
(1, 'images/users/1697575151.png', 'png', 'App\\Models\\User', 1, '2023-10-17 14:39:11', '2023-10-17 14:39:11'),
(2, 'images/users/1697578905.png', 'png', 'App\\Models\\User', 2, '2023-10-17 15:41:45', '2023-10-17 15:41:45'),
(3, 'images/users/1697578924.jpg', 'jpg', 'App\\Models\\User', 3, '2023-10-17 15:42:04', '2023-10-17 15:42:04'),
(4, 'images/users/1697578993.jpg', 'jpg', 'App\\Models\\User', 4, '2023-10-17 15:43:13', '2023-10-17 15:43:13');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_10_12_093234_create_images_table', 1),
(7, '2023_10_12_093709_create_permission_tables', 1);

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
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'users.module', 'web', '2023-10-17 14:37:12', '2023-10-17 14:37:12'),
(2, 'users.create', 'web', '2023-10-17 14:37:19', '2023-10-17 14:37:19'),
(3, 'users.view', 'web', '2023-10-17 14:37:28', '2023-10-17 14:37:28'),
(4, 'users.edit', 'web', '2023-10-17 14:37:34', '2023-10-17 14:37:34'),
(5, 'users.index', 'web', '2023-10-17 14:38:34', '2023-10-17 14:38:34');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'token-name', 'f34ca8e155a809896b4fbd5a970bc60a0eb26f817bfa69593e0acefa87d337bf', '[\"*\"]', NULL, NULL, '2023-10-17 16:29:37', '2023-10-17 16:29:37'),
(2, 'App\\Models\\User', 1, 'token-name', 'b0a41ec4b05f38dc1bf2b168a19f9133ff5abcfe6059fa153fd0e432b33f557f', '[\"*\"]', '2023-10-17 16:52:35', NULL, '2023-10-17 16:30:20', '2023-10-17 16:52:35'),
(3, 'App\\Models\\User', 1, 'token-name', '490dab6e211465c6d41e6e7f4a92b275b1b989e93aa1029f3e1ab6bef2e12e12', '[\"*\"]', NULL, NULL, '2023-10-17 17:02:59', '2023-10-17 17:02:59'),
(4, 'App\\Models\\User', 1, 'token-name', '02edc9d8260c55af4458768db85fa7f6d19c97a065f52b5b9b09c8401a1f8c1f', '[\"*\"]', NULL, NULL, '2023-10-17 17:04:57', '2023-10-17 17:04:57'),
(5, 'App\\Models\\User', 1, 'laravel-auth-token', '50eee43220c9761022f93181d59d0d271b03f040c60a331cf16c138b5450f92f', '[\"*\"]', NULL, NULL, '2023-10-17 17:09:24', '2023-10-17 17:09:24'),
(6, 'App\\Models\\User', 1, 'laravel-auth-token', '76e4808b0ede5f15b117e52fa6d6c10485228fb2c17cf6e30a4f7365b7d7be41', '[\"*\"]', NULL, NULL, '2023-10-17 17:12:48', '2023-10-17 17:12:48'),
(7, 'App\\Models\\User', 1, 'laravel-auth-token', 'bbea10551fa87343461858a37b34b2b9d96c25c71573de0c3f3da37c87f6745f', '[\"*\"]', '2023-10-17 17:37:45', NULL, '2023-10-17 17:14:08', '2023-10-17 17:37:45'),
(8, 'App\\Models\\User', 1, 'laravel-auth-token', '1c1f45b1371fe678916147b333061d7581b1104f1d7d0bbe2ec108c1ba9a9d94', '[\"*\"]', NULL, NULL, '2023-10-17 17:15:32', '2023-10-17 17:15:32'),
(9, 'App\\Models\\User', 1, 'laravel-auth-token', 'cb57b4b0a4e9b8fab66aee55c1130d6c8e0c899b0327f8102d827e5262d4aee2', '[\"*\"]', NULL, NULL, '2023-10-17 17:18:03', '2023-10-17 17:18:03'),
(10, 'App\\Models\\User', 1, 'laravel-auth-token', '428adca66542dcb664c3df1ec86345bcd06a8f4c056aba05cc740fb05e06f0db', '[\"*\"]', NULL, NULL, '2023-10-17 17:29:14', '2023-10-17 17:29:14'),
(11, 'App\\Models\\User', 1, 'laravel-auth-token', 'd8855c3f399342e1548894c31dbf6a196f4945cae599de86881e5996d6afc8c0', '[\"*\"]', '2023-10-17 17:48:57', NULL, '2023-10-17 17:38:13', '2023-10-17 17:48:57'),
(12, 'App\\Models\\User', 1, 'laravel-auth-token', '9ff07e2c45ce8f5c77f8f034468c732d5318a632c402d045b60a5fcb42856f34', '[\"*\"]', '2023-10-17 17:51:59', NULL, '2023-10-17 17:49:11', '2023-10-17 17:51:59'),
(13, 'App\\Models\\User', 1, 'laravel-auth-token', 'f77a4e8bbec4da59de098e1688feb6df7bf4776bf8aab967e49bb5ea576f365a', '[\"*\"]', '2023-10-17 17:50:12', NULL, '2023-10-17 17:50:09', '2023-10-17 17:50:12'),
(14, 'App\\Models\\User', 1, 'laravel-auth-token', '07cd3392402bea281b82baf96a49f59ebeb3f7beb9cfe89f5b08f90b96a674de', '[\"*\"]', '2023-10-17 17:51:39', NULL, '2023-10-17 17:51:37', '2023-10-17 17:51:39'),
(15, 'App\\Models\\User', 4, 'laravel-auth-token', '4a3b70938802a6fdb080f1dc08e666937fafb13ad7579442bcc4144b82d40d7a', '[\"*\"]', '2023-10-17 17:52:48', NULL, '2023-10-17 17:52:36', '2023-10-17 17:52:48'),
(16, 'App\\Models\\User', 3, 'laravel-auth-token', '8567976bb3869d6fc69a62517af2257adb1acb03af14dec6312a03fa38711013', '[\"*\"]', '2023-10-17 17:54:27', NULL, '2023-10-17 17:53:48', '2023-10-17 17:54:27');

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
(1, 'admin', 'web', '2023-10-17 14:36:17', '2023-10-17 14:36:17'),
(2, 'user', 'web', '2023-10-17 14:36:39', '2023-10-17 14:36:39'),
(3, 'editor', 'web', '2023-10-17 15:42:36', '2023-10-17 15:42:36');

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
(1, 3),
(5, 2);

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
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$ihDR.ENDwDetSsqnTP2zg.1IXCmPlKtkXFN.JTazcb3EDDGPvcN6S', NULL, '2023-10-17 14:36:17', '2023-10-17 14:36:17'),
(2, 'JellyFish', 'jellfish@gmail.com', NULL, '$2y$10$8M5HJD1aHKrDdYiUaFUkwuL6R3oR.0WR9G3iPpq.8SEvpp1yva2OS', NULL, '2023-10-17 15:41:45', '2023-10-17 15:41:45'),
(3, 'Pakhi', 'pakhi@gmail.com', NULL, '$2y$10$rNCFKksng5gw7iZPmrnPIO.TXgCPQIGbQMl4FsdVt9waxo5QTS7p6', NULL, '2023-10-17 15:42:04', '2023-10-17 15:42:04'),
(4, 'Yeamin Rabbi', 'rabbi@gmail.com', NULL, '$2y$10$X4v3KsB/jTm16Y4e.paA5ursoD.MZg6AOe/r316eqfeGTHPItbZuq', NULL, '2023-10-17 15:43:13', '2023-10-17 15:43:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_parentable_type_parentable_id_index` (`parentable_type`,`parentable_id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
