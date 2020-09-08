-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 08, 2020 at 06:43 PM
-- Server version: 10.3.22-MariaDB-1ubuntu1
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_beyahfitness`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `centent` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `category`, `centent`, `img`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Are Acai Bowls Healthy?', 'Beginneer', '<h2 style=\"margin: 1.6129em 0px 0.625em; padding: 0px; font-family: komikaaxisregular, komika_axisregular, impact, sans-serif; color: rgb(24, 34, 33); font-weight: 700; line-height: 1.3em; font-size: 1.73684em; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">What is an Acai Berry?</h2>\r\n<p style=\"margin: 0px 0px 1.2em; padding: 0px; line-height: 1.6316em; color: rgb(24, 34, 33); font-family: ff-tisa-sans-web-pro, sans-serif; font-size: 19px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">\r\n  <img class=\"lazy size-large wp-image-3379848 lazy-loaded\" src=\"https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-713x535.jpg\" data-lazy-type=\"image\" data-lazy-src=\"https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-713x535.jpg\" alt=\"\" width=\"713\" height=\"535\" data-lazy-srcset=\"https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-713x535.jpg 713w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-300x225.jpg 300w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-768x576.jpg 768w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-600x450.jpg 600w\" data-lazy-sizes=\"(max-width: 713px) 100vw, 713px\" srcset=\"https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-713x535.jpg 713w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-300x225.jpg 300w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-768x576.jpg 768w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-600x450.jpg 600w\" sizes=\"(max-width: 713px) 100vw, 713px\" style=\"padding: 0px; max-width: 100%; height: auto; border: 0px;\">\r\n</p>', 'fitnessMedia/img.png', NULL, NULL, NULL),
(2, 'Are Acai Bowls Healthy?', 'Beginneer', '<h2 style=\"margin: 1.6129em 0px 0.625em; padding: 0px; font-family: komikaaxisregular, komika_axisregular, impact, sans-serif; color: rgb(24, 34, 33); font-weight: 700; line-height: 1.3em; font-size: 1.73684em; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">What is an Acai Berry?</h2>\r\n<p style=\"margin: 0px 0px 1.2em; padding: 0px; line-height: 1.6316em; color: rgb(24, 34, 33); font-family: ff-tisa-sans-web-pro, sans-serif; font-size: 19px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">\r\n  <img class=\"lazy size-large wp-image-3379848 lazy-loaded\" src=\"https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-713x535.jpg\" data-lazy-type=\"image\" data-lazy-src=\"https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-713x535.jpg\" alt=\"\" width=\"713\" height=\"535\" data-lazy-srcset=\"https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-713x535.jpg 713w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-300x225.jpg 300w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-768x576.jpg 768w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-600x450.jpg 600w\" data-lazy-sizes=\"(max-width: 713px) 100vw, 713px\" srcset=\"https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-713x535.jpg 713w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-300x225.jpg 300w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-768x576.jpg 768w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-600x450.jpg 600w\" sizes=\"(max-width: 713px) 100vw, 713px\" style=\"padding: 0px; max-width: 100%; height: auto; border: 0px;\">\r\n</p>', 'fitnessMedia/img.png', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `drinkLogs`
--

CREATE TABLE `drinkLogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drinkTarget` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tragetReached` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2019_12_24_092125_create_users_table', 1),
(2, '2019_12_24_105744_add_target_to_users_table', 1),
(3, '2019_12_24_120036_workout_catgy', 1),
(4, '2019_12_24_120037_workout_videos', 1),
(5, '2019_12_24_122948_blog', 1),
(6, '2019_12_24_124056_drink_logs', 1),
(7, '2019_12_24_134734_workout_logs', 1),
(8, '2020_01_02_153626_add_thumbnail_table', 1),
(9, '2020_03_29_151706_create_password_resets_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` int(11) DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateOfbirth` date NOT NULL,
  `api_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workoutCategories`
--

CREATE TABLE `workoutCategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `mainTitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workoutLogs`
--

CREATE TABLE `workoutLogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `workoutvideoId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `WorkoutVideos`
--

CREATE TABLE `WorkoutVideos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryId` int(10) UNSIGNED NOT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drinkLogs`
--
ALTER TABLE `drinkLogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drinklogs_userid_foreign` (`userId`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workoutCategories`
--
ALTER TABLE `workoutCategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workoutLogs`
--
ALTER TABLE `workoutLogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workoutlogs_userid_foreign` (`userId`);

--
-- Indexes for table `WorkoutVideos`
--
ALTER TABLE `WorkoutVideos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workoutvideos_categoryid_foreign` (`categoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `drinkLogs`
--
ALTER TABLE `drinkLogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workoutCategories`
--
ALTER TABLE `workoutCategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workoutLogs`
--
ALTER TABLE `workoutLogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `WorkoutVideos`
--
ALTER TABLE `WorkoutVideos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `drinkLogs`
--
ALTER TABLE `drinkLogs`
  ADD CONSTRAINT `drinklogs_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `workoutLogs`
--
ALTER TABLE `workoutLogs`
  ADD CONSTRAINT `workoutlogs_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `WorkoutVideos`
--
ALTER TABLE `WorkoutVideos`
  ADD CONSTRAINT `workoutvideos_categoryid_foreign` FOREIGN KEY (`categoryId`) REFERENCES `workoutCategories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
