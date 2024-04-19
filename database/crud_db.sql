-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2024 at 05:02 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `vacation` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone`, `address`, `experience`, `image`, `salary`, `vacation`, `city`, `created_at`, `updated_at`) VALUES
(2, 'Glen Segovia', 'cbs.capbuild@gmail.com', '09848727172', 'P4 Lower Doonngan Butuan City22', '3 Year', 'upload/employee/1794195362165767.png', '70000', 'www', 'Butuan City', '2024-03-21 19:27:15', '2024-03-21 19:27:15'),
(4, 'Marc Virtudazo', 'admin@gmail.com', '098487271723', 'P4 Lower Doonngan Butuan City', '3 Year', 'upload/employee/1794195322129199.jpg', '60000', 'yeah', 'Butuan City', '2024-03-21 19:26:38', '2024-03-21 19:26:38'),
(6, 'Kypee Glenn R. Nano', 'kypee@gmail.com', '09887788', 'P4 Lower Doonngan Butuan City22', '4 Year', 'upload/employee/1794195283360078.PNG', '60000', '22', 'Butuan City', '2024-03-21 19:26:00', '2024-03-21 19:26:00'),
(10, 'Aljun Macun1111', 'aljun@gmail.com111', '098485788231111', 'p4a lower doongan butuan city111', '4 Year', 'upload/employee/1796730151905869.jpg', '800001111', '222111111', '333111111', '2024-04-18 18:57:06', '2024-04-18 18:57:06');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_18_023507_create_employees_table', 2),
(6, '2024_03_18_054237_create_employees_table', 3),
(7, '2024_03_22_033145_create_customers_table', 4),
(8, '2024_03_22_060308_create_suppliers_table', 5),
(9, '2024_03_22_065924_create_advance_salaries_table', 6),
(10, '2024_03_22_084541_create_pay_salaries_table', 7),
(11, '2024_03_27_024701_create_attendances_table', 8),
(12, '2024_04_03_060743_create_categories_table', 9),
(13, '2024_04_03_071708_create_products_table', 10),
(14, '2024_04_11_054151_create_expenses_table', 11);

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `photo`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '093888888', NULL, NULL, '$2y$12$aafswi/0.ZVGqUtDG8HTFeNX3jqcVXWO4lSlI3gQnz5QCk7dmUSQO', NULL, '2024-03-05 22:19:11', '2024-03-05 22:19:11'),
(2, 'glen', 'glen@gmail.com', '0988888', NULL, NULL, '$2y$12$ySAESJ6uRAkMwGmiZjIz5eDZZRkepjFDmGCruHKXMuVXthpFOvIqm', NULL, '2024-03-05 22:42:56', '2024-03-05 22:42:56'),
(3, 'Marc', 'marc@gmail.com', '09887788', NULL, NULL, '$2y$12$Xg6YxjXsempXhifPpncd/eF.zOUarBA7qbil85IqnqlP7RasZ/Tpi', NULL, '2024-03-06 00:20:49', '2024-03-06 00:20:49'),
(4, 'Kypee Glenn R. Nano', 'kypee@gmail.com', '09888282', NULL, NULL, '$2y$12$OCuXLjIfZ8FsiL6.4PEgrOD9iYvLljhbJCnvqsVs5NmfDl2RBHebG', NULL, '2024-03-06 00:23:50', '2024-03-06 00:23:50'),
(5, 'User', 'user@gmail.com', '09857543328', NULL, NULL, '$2y$12$9guGXSOHOxnCiRG2fE4oNOcG.Pc1wjad8wPdajhnLcAQqxeWmHSna', NULL, '2024-03-10 18:16:34', '2024-03-10 18:16:34'),
(6, 'Glen Segovia', 'gvcsegovia@gmail.com', '098487271723', '202403180550GSEGOVIA WHITEBACKGROUND.PNG', NULL, '$2y$12$bjQfQTUx4Cflw84kCqJC0ePsowHEPCyPJ7/crR0pNgXIa.y38Ii.K', NULL, '2024-03-13 00:16:14', '2024-03-17 21:50:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
