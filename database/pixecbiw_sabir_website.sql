-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 24, 2023 at 11:27 AM
-- Server version: 10.5.20-MariaDB-cll-lve
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pixecbiw_sabir.website`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `name`, `email`, `description`, `date_time`, `created_at`, `updated_at`) VALUES
(1, 'saberfreeman@hotmail.com', 'saberfreeman@hotmail.com', 'has log in', 'Thu, Aug 3, 2023 5:06 PM', NULL, NULL),
(2, 'SuperSaber', 'saberfreeman@hotmail.com', 'has logged out', 'Thu, Aug 3, 2023 5:08 PM', NULL, NULL),
(3, 'saberbro@hotmail.com', 'saberbro@hotmail.com', 'has log in', 'Thu, Aug 3, 2023 5:09 PM', NULL, NULL),
(4, 'i.im.i@gmail.com', 'i.im.i@gmail.com', 'has log in', 'Thu, Aug 3, 2023 5:18 PM', NULL, NULL),
(5, 'Saber', 'saberbro@hotmail.com', 'has logged out', 'Thu, Aug 3, 2023 5:44 PM', NULL, NULL),
(6, 'imad', 'i.im.i@gmail.com', 'has logged out', 'Thu, Aug 3, 2023 5:55 PM', NULL, NULL),
(7, 'saberbro@hotmail.com', 'saberbro@hotmail.com', 'has log in', 'Thu, Aug 3, 2023 6:13 PM', NULL, NULL),
(8, 'Saber', 'saberbro@hotmail.com', 'has logged out', 'Thu, Aug 3, 2023 6:18 PM', NULL, NULL),
(9, 'saberbro@hotmail.com', 'saberbro@hotmail.com', 'has log in', 'Thu, Aug 3, 2023 6:23 PM', NULL, NULL),
(10, 'Saber', 'saberbro@hotmail.com', 'has logged out', 'Thu, Aug 3, 2023 6:23 PM', NULL, NULL),
(11, 'saber@hotmail.com', 'saber@hotmail.com', 'has log in', 'Thu, Aug 3, 2023 6:23 PM', NULL, NULL),
(12, 'saber@hotmail.com', 'saber@hotmail.com', 'has log in', 'Thu, Aug 3, 2023 6:26 PM', NULL, NULL),
(13, 'saber', 'saber@hotmail.com', 'has logged out', 'Thu, Aug 3, 2023 6:26 PM', NULL, NULL),
(14, 'saberbro@hotmail.com', 'saberbro@hotmail.com', 'has log in', 'Thu, Aug 3, 2023 6:28 PM', NULL, NULL),
(15, 'saberbro@hotmail.com', 'saberbro@hotmail.com', 'has log in', 'Sun, Aug 13, 2023 9:34 PM', NULL, NULL),
(16, 'saberbro@hotmail.com', 'saberbro@hotmail.com', 'has log in', 'Sun, Aug 13, 2023 9:35 PM', NULL, NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_23_230700_create_staff_table', 1),
(5, '2021_04_25_224042_create_user_activity_logs_table', 1),
(6, '2021_04_30_224320_create_activity_logs_table', 1),
(7, '2021_05_03_061844_create_user_types_table', 1),
(8, '2021_05_03_061918_create_role_type_users_table', 1),
(9, '2021_06_04_053627_create_sequence_tbls_table', 1),
(10, '2021_06_04_053741_create_generate_id_tbls_table', 1);

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
-- Table structure for table `role_type_users`
--

CREATE TABLE `role_type_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_type_users`
--

INSERT INTO `role_type_users` (`id`, `role_type`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Super Admin', NULL, NULL),
(3, 'Normal User', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sequence_tbls`
--

CREATE TABLE `sequence_tbls` (
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rec_id` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Triggers `staff`
--
DELIMITER $$
CREATE TRIGGER `id_store` BEFORE INSERT ON `staff` FOR EACH ROW BEGIN
                        INSERT INTO sequence_tbls VALUES (NULL);
                        SET NEW.rec_id = CONCAT("KHM_", LPAD(LAST_INSERT_ID(), 10, "0"));
                    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `status`, `role_name`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'SuperSaber', 'saberfreeman@hotmail.com', NULL, NULL, 'Super Admin', 'photo_defaults.jpg', NULL, '$2y$10$3yMKxNn5Q7OVkjNED2ZZ5u.RywXy3YBAoyxugQr2SpiC.ocMR8hju', NULL, '2023-08-03 21:06:30', '2023-08-03 21:06:30'),
(2, 'Saber', 'saberbro@hotmail.com', NULL, NULL, 'Admin', 'photo_defaults.jpg', NULL, '$2y$10$rye6yiPlLFVGUthQWF2YWOLcMqYJmo4ZH3Qle4crLt92rSvzNF/5e', NULL, '2023-08-03 21:09:29', '2023-08-03 21:09:29'),
(3, 'imad', 'i.im.i@gmail.com', NULL, NULL, 'Normal User', 'photo_defaults.jpg', NULL, '$2y$10$OWs3td9hqW22VVr624/xnufM/HJUI7gPGDY6AKmy10KP7UfnjIGf.', NULL, '2023-08-03 21:18:06', '2023-08-03 21:18:06'),
(4, 'efezfezfez', 'i.im.i@fefezf.com', NULL, NULL, 'Normal User', 'photo_defaults.jpg', NULL, '$2y$10$TT8clPMdQLQ47HUwlezS1.6455SMzGjP5Hdq0hjeXp1WXwSw5R2i6', NULL, '2023-08-03 21:33:26', '2023-08-03 21:33:26'),
(6, 'saber', 'saber@hotmail.com', NULL, NULL, 'Normal User', 'photo_defaults.jpg', NULL, '$2y$10$ImDP58AP2wUuNZ8IzKEqce0ivzW2Kn5O0WIWHiTcm1hdKHE0J0K/K', NULL, '2023-08-03 22:23:53', '2023-08-03 22:23:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_activity_logs`
--

CREATE TABLE `user_activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `modify_user` varchar(255) DEFAULT NULL,
  `date_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_activity_logs`
--

INSERT INTO `user_activity_logs` (`id`, `user_name`, `email`, `phone_number`, `status`, `role_name`, `modify_user`, `date_time`, `created_at`, `updated_at`) VALUES
(1, 'Saber', 'saberbro@hotmail.com', NULL, NULL, 'Admin', 'Delete', 'Thu, Aug 3, 2023 5:44 PM', NULL, NULL),
(2, 'Saber', 'saberbro@hotmail.com', NULL, NULL, 'Admin', 'Delete', 'Thu, Aug 3, 2023 6:28 PM', NULL, NULL),
(3, 'Saber', 'saberbro@hotmail.com', NULL, NULL, 'Admin', 'Delete', 'Thu, Aug 3, 2023 6:28 PM', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'Active', NULL, NULL),
(2, 'Disable', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `role_type_users`
--
ALTER TABLE `role_type_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequence_tbls`
--
ALTER TABLE `sequence_tbls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_activity_logs`
--
ALTER TABLE `user_activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `role_type_users`
--
ALTER TABLE `role_type_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sequence_tbls`
--
ALTER TABLE `sequence_tbls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_activity_logs`
--
ALTER TABLE `user_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
