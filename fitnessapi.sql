-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2019 at 12:35 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitnessapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `centent` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `category`, `centent`, `img`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Are Acai Bowls Healthy?', 'Beginneer', '<h2 style=\"margin: 1.6129em 0px 0.625em; padding: 0px; font-family: komikaaxisregular, komika_axisregular, impact, sans-serif; color: rgb(24, 34, 33); font-weight: 700; line-height: 1.3em; font-size: 1.73684em; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">What is an Acai Berry?</h2>\n<p style=\"margin: 0px 0px 1.2em; padding: 0px; line-height: 1.6316em; color: rgb(24, 34, 33); font-family: ff-tisa-sans-web-pro, sans-serif; font-size: 19px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">\n  <img class=\"lazy size-large wp-image-3379848 lazy-loaded\" src=\"https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-713x535.jpg\" data-lazy-type=\"image\" data-lazy-src=\"https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-713x535.jpg\" alt=\"\" width=\"713\" height=\"535\" data-lazy-srcset=\"https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-713x535.jpg 713w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-300x225.jpg 300w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-768x576.jpg 768w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-600x450.jpg 600w\" data-lazy-sizes=\"(max-width: 713px) 100vw, 713px\" srcset=\"https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-713x535.jpg 713w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-300x225.jpg 300w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-768x576.jpg 768w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-600x450.jpg 600w\" sizes=\"(max-width: 713px) 100vw, 713px\" style=\"padding: 0px; max-width: 100%; height: auto; border: 0px;\">\n</p>', 'fitnessMedia/img.png', '2019-12-24 17:25:46', '2019-12-24 17:25:46', NULL),
(2, 'Are Acai Bowls Healthy?', 'Beginneer', '<h2 style=\"margin: 1.6129em 0px 0.625em; padding: 0px; font-family: komikaaxisregular, komika_axisregular, impact, sans-serif; color: rgb(24, 34, 33); font-weight: 700; line-height: 1.3em; font-size: 1.73684em; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">What is an Acai Berry?</h2>\n<p style=\"margin: 0px 0px 1.2em; padding: 0px; line-height: 1.6316em; color: rgb(24, 34, 33); font-family: ff-tisa-sans-web-pro, sans-serif; font-size: 19px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">\n  <img class=\"lazy size-large wp-image-3379848 lazy-loaded\" src=\"https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-713x535.jpg\" data-lazy-type=\"image\" data-lazy-src=\"https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-713x535.jpg\" alt=\"\" width=\"713\" height=\"535\" data-lazy-srcset=\"https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-713x535.jpg 713w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-300x225.jpg 300w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-768x576.jpg 768w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-600x450.jpg 600w\" data-lazy-sizes=\"(max-width: 713px) 100vw, 713px\" srcset=\"https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-713x535.jpg 713w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-300x225.jpg 300w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-768x576.jpg 768w, https://www.nerdfitness.com/wp-content/uploads/2018/09/acai-berry-600x450.jpg 600w\" sizes=\"(max-width: 713px) 100vw, 713px\" style=\"padding: 0px; max-width: 100%; height: auto; border: 0px;\">\n</p>', 'fitnessMedia/img.png', '2019-12-24 17:32:03', '2019-12-24 17:32:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `drinklogs`
--

CREATE TABLE `drinklogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drinkTarget` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tragetReached` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drink_logs`
--

CREATE TABLE `drink_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drinkTarget` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tragetReached` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drink_logs`
--

INSERT INTO `drink_logs` (`id`, `userId`, `title`, `category`, `drinkTarget`, `tragetReached`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'You Drank 600 Oz of water', 'Target Reached', '100', '82', '2019-12-24 16:53:27', '2019-12-24 16:53:27', NULL);

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
(9, '2019_12_24_092125_create_users_table', 1),
(10, '2019_12_24_105744_add_target_to_users_table', 1),
(11, '2019_12_24_120036_workout_videos', 1),
(12, '2019_12_24_122948_blog', 1),
(13, '2019_12_24_124056_drink_logs', 1),
(14, '2019_12_24_134734_workout_logs', 1),
(15, '2019_12_24_140408_workout_catgy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` int(11) DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateOfbirth` date NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workoutcategories`
--

CREATE TABLE `workoutcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `mainTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workoutlogs`
--

CREATE TABLE `workoutlogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `workoutvideoId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workoutvideos`
--

CREATE TABLE `workoutvideos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Indexes for table `drinklogs`
--
ALTER TABLE `drinklogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drink_logs`
--
ALTER TABLE `drink_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workoutcategories`
--
ALTER TABLE `workoutcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workoutlogs`
--
ALTER TABLE `workoutlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workoutvideos`
--
ALTER TABLE `workoutvideos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `drinklogs`
--
ALTER TABLE `drinklogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drink_logs`
--
ALTER TABLE `drink_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workoutcategories`
--
ALTER TABLE `workoutcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workoutlogs`
--
ALTER TABLE `workoutlogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workoutvideos`
--
ALTER TABLE `workoutvideos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
