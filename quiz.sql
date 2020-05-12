-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2020 at 10:56 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_answer` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `topic_id`, `user_id`, `question_id`, `user_answer`, `answer`, `created_at`, `updated_at`) VALUES
(108, 1, 1, 1, '', 'B', '2020-04-13 04:50:45', '2020-04-28 08:59:03'),
(109, 1, 1, 2, 'B', 'C', '2020-04-13 04:50:45', '2020-04-21 08:27:32'),
(110, 1, 1, 3, 'C', 'B', '2020-04-13 04:50:45', '2020-04-22 05:58:58'),
(111, 1, 1, 4, 'B', 'D', '2020-04-13 04:50:45', '2020-04-22 05:59:02'),
(112, 1, 1, 5, 'B', 'A', '2020-04-13 04:50:45', '2020-04-22 05:59:06'),
(113, 1, 1, 6, 'B', 'B', '2020-04-13 04:50:45', '2020-04-22 05:59:09'),
(114, 1, 1, 7, 'D', 'B', '2020-04-13 04:50:45', '2020-04-22 05:59:31'),
(115, 1, 1, 8, 'C', 'A', '2020-04-13 04:50:45', '2020-04-22 05:59:35'),
(116, 1, 1, 9, 'A', 'D', '2020-04-13 04:50:46', '2020-04-22 05:59:44'),
(117, 1, 1, 10, '', 'C', '2020-04-13 04:50:46', '2020-04-28 08:58:40'),
(118, 1, 1, 11, 'B', 'B', '2020-04-13 04:50:46', '2020-04-22 05:59:48'),
(119, 1, 1, 12, 'C', 'C', '2020-04-13 04:50:46', '2020-04-22 05:59:57'),
(120, 1, 1, 13, 'D', 'A', '2020-04-13 04:50:46', '2020-04-22 06:00:03'),
(121, 1, 1, 14, 'B', 'D', '2020-04-13 04:50:46', '2020-04-22 06:00:06'),
(122, 1, 1, 15, 'D', 'D', '2020-04-13 04:50:46', '2020-04-22 06:00:12'),
(123, 1, 1, 16, 'C', 'C', '2020-04-13 04:50:46', '2020-04-22 06:00:21'),
(124, 1, 1, 17, 'C', 'B', '2020-04-13 04:50:46', '2020-04-22 06:00:29'),
(125, 1, 1, 18, 'A', 'D', '2020-04-13 04:50:46', '2020-04-22 06:00:39'),
(126, 1, 1, 19, 'D', 'A', '2020-04-13 04:50:46', '2020-04-22 06:00:43'),
(127, 1, 1, 20, '', 'C', '2020-04-13 04:50:46', '2020-04-28 09:00:03'),
(143, 1, 4, 29, 'A', 'A', '2020-04-17 05:12:55', '2020-04-17 05:12:55'),
(144, 1, 4, 27, 'B', 'B', '2020-04-17 05:13:01', '2020-04-17 05:13:01'),
(145, 1, 4, 14, 'D', 'D', '2020-04-17 05:13:10', '2020-04-17 05:13:10'),
(146, 1, 4, 35, 'D', 'D', '2020-04-17 05:13:14', '2020-04-17 05:13:14'),
(147, 1, 4, 18, 'D', 'D', '2020-04-17 05:13:20', '2020-04-17 05:13:20'),
(148, 1, 4, 23, 'B', 'D', '2020-04-17 05:13:23', '2020-04-17 05:13:23'),
(149, 1, 4, 13, 'B', 'A', '2020-04-17 05:13:28', '2020-04-17 05:13:28'),
(150, 1, 4, 30, 'D', 'A', '2020-04-17 05:13:33', '2020-04-17 05:13:33'),
(151, 1, 4, 15, 'D', 'D', '2020-04-17 05:13:39', '2020-04-17 05:13:39'),
(152, 1, 4, 5, 'B', 'A', '2020-04-17 05:13:46', '2020-04-17 05:13:46'),
(153, 1, 4, 3, 'B', 'B', '2020-04-17 05:13:52', '2020-04-17 05:13:52'),
(154, 1, 4, 34, 'B', 'B', '2020-04-17 05:13:58', '2020-04-17 05:13:58'),
(155, 1, 4, 25, 'D', 'B', '2020-04-17 05:14:01', '2020-04-17 05:14:01'),
(156, 1, 4, 20, 'B', 'C', '2020-04-17 05:14:09', '2020-04-17 05:14:09'),
(157, 1, 4, 31, 'D', 'B', '2020-04-17 05:14:14', '2020-04-17 05:14:14'),
(158, 1, 4, 1, 'B', 'B', '2020-04-17 05:14:17', '2020-04-17 05:14:17'),
(159, 1, 4, 16, 'B', 'C', '2020-04-17 05:14:22', '2020-04-17 05:14:22'),
(160, 1, 4, 9, 'D', 'D', '2020-04-17 05:14:25', '2020-04-17 05:14:25'),
(161, 1, 4, 17, 'D', 'B', '2020-04-17 05:14:30', '2020-04-17 05:14:30'),
(162, 1, 4, 26, 'D', 'C', '2020-04-17 05:14:37', '2020-04-17 05:14:37'),
(163, 1, 1, 26, '', 'C', '2020-04-23 08:24:24', '2020-04-23 08:24:24'),
(164, 1, 1, 25, '', 'B', '2020-04-23 08:24:24', '2020-04-23 08:24:24'),
(165, 1, 1, 24, '', 'A', '2020-04-23 08:24:24', '2020-04-23 08:24:24'),
(166, 1, 1, 23, '', 'D', '2020-04-23 08:24:24', '2020-04-23 08:24:24'),
(167, 1, 1, 21, '', 'C', '2020-04-23 08:24:24', '2020-04-23 08:24:24'),
(168, 1, 1, 33, '', 'A', '2020-04-23 08:24:24', '2020-04-23 08:24:24'),
(169, 1, 1, 28, '', 'C', '2020-04-23 08:24:24', '2020-04-23 08:24:24'),
(170, 1, 1, 31, '', 'B', '2020-04-23 08:24:24', '2020-04-23 08:24:24'),
(171, 1, 1, 34, '', 'B', '2020-04-23 08:24:24', '2020-04-23 08:24:24'),
(172, 1, 1, 22, '', 'B', '2020-04-23 08:24:24', '2020-04-23 08:24:24');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(10) UNSIGNED NOT NULL,
  `MAIL_FROM_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MAIL_DRIVER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MAIL_HOST` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MAIL_PORT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MAIL_USERNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MAIL_FROM_ADDRESS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MAIL_PASSWORD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MAIL_ENCRYPTION` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `copyrighttexts`
--

CREATE TABLE `copyrighttexts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `copyrighttexts`
--

INSERT INTO `copyrighttexts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Atmiya University', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_11_23_160102_create_sessions_table', 1),
(4, '2017_11_25_133229_create_settings_table', 1),
(5, '2017_12_03_080242_create_topics_table', 1),
(6, '2017_12_03_080330_create_tests_table', 1),
(7, '2017_12_03_091845_create_questions_table', 1),
(8, '2017_12_03_110511_create_answers_table', 1),
(9, '2017_12_21_085915_add_image_video_column_to_questions', 1),
(10, '2019_02_04_100908_create_social_icons_table', 1),
(11, '2019_02_04_122123_create_pages_table', 1),
(12, '2019_02_07_113422_create_f_a_qs_table', 1),
(13, '2019_02_12_065327_create_copyrighttexts_table', 1),
(14, '2019_02_12_165455_create_topic_user_table', 1),
(15, '2019_02_15_072716_create_config_table', 1),
(16, '2019_03_04_044254_create_user_topics_table', 1),
(20, '2020_04_23_133812_create_user_quizzes_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `a` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `code_snippet` text COLLATE utf8mb4_unicode_ci,
  `answer_exp` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `question_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `answer`, `mark`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`) VALUES
(1, 1, 'Which option is used to set image inside the object or text?', 'Feather', 'Cliping Mask', 'Stroke', 'Blending Option', 'B', '5', NULL, NULL, '0000-00-00 00:00:00', '2020-04-14 09:22:47', NULL, NULL),
(2, 1, 'Which key is used to remove all selection?', 'Ctrl + R', 'Ctrl + T', 'Ctrl + D', 'Ctrl + J', 'C', '5', NULL, NULL, '0000-00-00 00:00:00', '2020-04-14 09:22:59', NULL, NULL),
(3, 1, 'Which key is used for free transform?', 'Ctrl + R', 'Ctrl + T', 'Ctrl + D', 'Ctrl + J', 'B', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(4, 1, 'Which key is used to create inverse selection in image?', 'Shift + Alt + I', 'Ctrl + Alt + I', 'Ctrl + Tab + I', 'Ctrl + Shift + I', 'D', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(5, 1, 'Where is the option \'Expand\'?', 'Select->Modify->Expand', 'View->Modify->Expand', 'Edit->Modify->Expand', 'Filter->Modify->Expand', 'A', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(6, 1, 'Which key is used to view full screen with menubar?', 'Space bar', 'Tab', 'Ctrl', 'Shift', 'B', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(7, 1, 'Which key used to give a color balance in an image?', 'Ctrl + R', 'Ctrl + B', 'Ctrl + J', 'Ctrl + D', 'B', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(8, 1, 'Which menu contains Tools panel?', 'Window', 'Text', 'Edit', 'View', 'A', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(9, 1, 'Which option is used to apply transparency in object?', 'Drop Shadow', 'Feather', 'Stroke', 'Opacity', 'D', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(10, 1, 'Which option is used to apply border around object?', 'Drop Shadow', 'Feather', 'Stroke', 'Opacity', 'C', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(11, 1, 'What is the size of Passport photo?', '54 x 86', '35 x 45 mm', '86 x 45', '54 x 35', 'B', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(12, 1, 'Which extension is used to create transparent image?', '.GIF', '.PSD', '.PNG', '.JPEG', 'C', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(13, 1, 'What is the size of social media story?', '1080 x 1920', '1080 x 1080', '1080 x 720', '720 x 1920', 'A', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(14, 1, 'What is the size of Smart Card?', '35 x 45 mm', '86 x 45', '54 x 35', '54 x 86', 'D', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(15, 1, 'Which extension is used to create image file ?', '.PNG', '.GIF', '.PSD', '.JPEG', 'D', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(16, 1, 'Photoshop is the product of _________.  ', 'Macromedia', 'Microsoft', 'Adobe', 'Google', 'C', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(17, 1, 'To create duplicate layer __________ key is used.', 'Ctrl + R', 'Ctrl + J', 'Ctrl + D', 'Ctrl + B', 'B', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(18, 1, 'Which key is used to set image view as fit to screen?', 'Ctrl + R', 'Ctrl + Tab', 'Ctrl + 1', 'Ctrl + 0', 'D', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(19, 1, 'To show or hide ruler _________ key is used.', 'Ctrl + R', 'Ctrl + B', 'Ctrl + J', 'Ctrl + D', 'A', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(20, 1, 'To show or hide Layer panel _________ key is used.', 'F5', 'F6', 'F7', 'F8', 'C', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(21, 1, 'Which extension is used for photoshop file ?', '.PNG', '.GIF', '.PSD', '.JPEG', 'C', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(22, 1, 'How to Zoom-in the canvas view in Photoshop ?', 'Ctrl + \" { \"', 'Ctrl + \"+\"', 'Ctrl + \" 0 \" (Zero)', 'Ctrl + \"-\"', 'B', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(23, 1, 'How to Zoom-out the canvas view in Photoshop ?', 'Ctrl + \" { \"', 'Ctrl + \"+\"', 'Ctrl + \" 0 \" (Zero)', 'Ctrl + \"-\"', 'D', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(24, 1, 'Increase the size of brush', '\" } \"  or  \" ] \"', '\" { \"  or  \" [ \"', 'Ctrl + \"+\"', 'Ctrl + \"-\"', 'A', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(25, 1, 'How to Decrease the size of brush?', '\" } \"  or  \" ] \"', '\" { \"  or  \" [ \"', 'Ctrl + \"+\"', 'Ctrl + \"-\"', 'B', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(26, 1, 'Which key is used for Move Tool?', 'M', 'H', 'V', 'D', 'C', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(27, 1, 'Which key is used for Hand Tool?', 'M', 'H', 'V', 'D', 'B', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(28, 1, 'Which key is used for Hue/Saturation?', 'Ctrl + B', 'Ctrl + T ', 'Ctrl + U', 'Ctrl + D', 'C', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(29, 1, 'Which key is used for Color Balance?', 'Ctrl + B', 'Ctrl + T ', 'Ctrl + U', 'Ctrl + D', 'A', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(30, 1, 'Which key is used to view Brush panel?', 'F5', 'F6', 'F7', 'F8', 'A', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(31, 1, 'Which key is used to view Color Panel?', 'F5', 'F6', 'F7', 'F8', 'B', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(32, 1, 'Which key is used to give a Feather in selection ?', 'Shift + F5', 'Shift + F6', 'Shift + F7', 'Shift + F8', 'B', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(33, 1, 'Where is option Contract ?', 'Select->Modify->Contract', 'View->Modify->Contract', 'Edit->Modify->Contract', 'Filter->Modify->Contract', 'A', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(34, 1, 'What is the size of social media post?', '720 x 1090', '1080 x 1080', '1920 x 1080', '720 x 1080', 'B', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(35, 1, 'Which key is used for step backward(Undo) more than one?', 'Ctrl + Shift + Z', 'Shift + Alt + Z', 'Alt + Z', 'Alt + Ctrl + Z', 'D', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(25) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_txt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Quick Quiz',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `welcome_txt`, `created_at`, `updated_at`) VALUES
(1, 'logo.png', 'icon.ico', 'Quick Quiz', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_icons`
--

CREATE TABLE `social_icons` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `marks` int(11) NOT NULL,
  `total_marks` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `per_q_mark` int(11) NOT NULL,
  `totalquestion` int(8) DEFAULT NULL,
  `timer` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` float(8,2) DEFAULT NULL,
  `show_ans` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `title`, `description`, `per_q_mark`, `totalquestion`, `timer`, `amount`, `show_ans`, `created_at`, `updated_at`) VALUES
(1, 'VAC_DTP', 'VAC DTP', 1, 20, '20', NULL, 0, '2020-03-11 05:34:08', '2020-03-11 05:34:08');

-- --------------------------------------------------------

--
-- Table structure for table `topic_user`
--

CREATE TABLE `topic_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` float(8,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `mobile`, `address`, `city`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prakash Gujarati', 'prakash@vsc.edu.in', '$2y$12$.ofHrMDj4VQaUE6gD4YijuUNj/snbCEclpSlIRlLe1egCxj1tLYSK', NULL, NULL, NULL, 'A', NULL, '2020-03-11 05:02:02', '2020-03-11 05:02:02'),
(2, 'Abhi Teraiya', 'abhi@gmail.com', '$2y$10$5ywWmT/pDwTymfkBq.Gw8emcTM0bvDKUVW.On48eT3cL2QNgxtMmK', '9898989898', NULL, NULL, 'S', NULL, '2020-03-11 05:30:06', '2020-03-12 02:55:34'),
(3, 'Jitendra Timrai', 'jitendra@gmail.com', '$2y$10$2OJgo2rLCwWrnHsrw2qYJOIMnXjsSLXwu30ecjupPBJgqpmQrX2d.', '9898989898', NULL, NULL, 'S', NULL, '2020-03-11 05:30:06', '2020-03-12 02:55:34'),
(4, 'Anjali Sanepara', '190801130', '$2y$10$UVMrPtq2Q4Z1LmY.gwrBsu0MJD1AKhbISvuCmFvmNfWxIbYclhjEe', '9426785865', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:34'),
(5, 'Avani Dudhagara', '190801040', '$2y$10$iENuT6WdTytd0KYhieiiu.JPu1EYUmQYM.mdmVC.E00N3drNYgS/W', '8849536879', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:35'),
(6, 'Ayushi Dadhaniya', '19BBC017', '$2y$10$BD6peTo6j2VqYLY5b42pCO8gZN9AbjqTxKgPK4OkBsi4YdltRpy7q', '9925146622', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:35'),
(7, 'Devangi Koradiya', '190801068', '$2y$10$VyLH1GuctuUwmyDTOCx2rOs451b5MF/tohptccD8vYdj3FOza1T1C', '9106877870', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:35'),
(8, 'Devanshee Siddhpura', '190801141', '$2y$10$0SwHKTZF2jSM/aibIeSRseRpspriKbPFMXVXarcUcimnf/OrrMiqi', '9265232999', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:35'),
(9, 'Dharaba Zala', '190802123', '$2y$10$PmXi1k8RWjGC6RHfwj6yEeB8En8wikj.snjRTasVNKDswmCPhIjk6', '9328676015', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:35'),
(10, 'Dhruvi Kotecha', '190802054', '$2y$10$idKGX6yamLv08ONXXXtpUukfWBHXJ2X1H4pcj3dHcZGdiXzh323zi', '9909406045', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:35'),
(11, 'Dhruvisha Jobanputra', '190801057', '$2y$10$xBZqigg01x4zXcTeq79XQ.7cavZRb21dbRVqyOrpIny.71ydIXrFW', '9825323359', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:35'),
(12, 'Dhwani Kotecha', '190802055', '$2y$10$1qxNwuwVzRUGArJs3fvHnef5YDpE/gjFl1TrfepaYcHoqe3mze5RG', '9106392983', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:35'),
(13, 'Diya Desai', '190801031', '$2y$10$ZBG8Zf8MsIp/QIkzZnQcUuce17m9MfWTJuUSio./.TMOrg/BTZs.G', '9429919839', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:35'),
(14, 'Drashti Bapodara', '190802009', '$2y$10$8gcIQ8IuUpBXWVASod20uO0iAGY1KuYTga6zZilGe8KDXt7pQNMki', '6355167044', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:35'),
(15, 'Drashti Detroja', '190801034', '$2y$10$C/n87Q1qxyRVuaPher0areyCPQrbH9XE9Y4jgIUIXIYDXSrX8MGcO', '6354276880', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:35'),
(16, 'Drashti Gadhiya', '190802030', '$2y$10$Lz/NSZE.9tSB1jrm5OBnCe.7zU/3laQp9NJOOp06UXr3Mcii5gua2', '7016889160', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:35'),
(17, 'Drashti Nonghanavadra', '190801089', '$2y$10$hZ.VliM1Sbf.4OBvMoKlROxkWty92U8s3QXDVfGPp7hlKLV1J51DO', '9374116032', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:35'),
(18, 'Foram Desai', '190801032', '$2y$10$2OY5Bga1B/Q4BLmceeQex.71yaaSOeuxo13M/EgUeilhefykTybI6', '9510226942', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:35'),
(19, 'Gopi Chhatbar', '190801019', '$2y$10$ATGmK0xxnEjF5Yc.m/r.X.LU7njLlnl0kCcluuAClVTu6yYAoRWCC', '9104794795', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:35'),
(20, 'Hardika Vekariya', '190802120', '$2y$10$3DjPYKR2gnH3i5O89AHaOuKYbX.V8KeTE8B7wMbV6Jlj5mhsoHdhy', '9924027774', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:35'),
(21, 'Henisha Akbari', '190802004', '$2y$10$APLXEW/btAoEwP/OSioLbuBEPafKnLmMMeuaPyG26/75lQpZgZNZ.', '9824406036', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:35'),
(22, 'Hitaishi Metaliya', '190802066', '$2y$10$LdT22VgiN/30jEuNV.ORCOPQFtfpmkhsaON/C6tN0LRQVVhb1m/2y', '9327510715', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:35'),
(23, 'Isha Sorathiya', '190801144', '$2y$10$QgXc7znkjpRv.a2DTAPLbO8wZRDZQnEO42nBusNK67c0wcShTZeU.', '6354285171', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:35'),
(24, 'Isha Thosani', '19BBC053', '$2y$10$TCfhlffz6OCWTuqtkVZ2Zua67ulDsFAXQeQqGHOHGVRNHGCZLsDoe', '9510464690', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:35'),
(25, 'Isha Uchat', 'ishau', '$2y$10$IF6PyZKQ3CR1frh4lIK2vOHo5DolZ2gN2nxToH74K8JyrWYDaaYBO', '6354436552', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:36'),
(26, 'Ishika Budhrani', '19BBC009', '$2y$10$c2/IeONr0.BehBsDOKx1E.qppwMlR5LcMx/H8pCpyoUnrxMsBcsai', '9664797323', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:36'),
(27, 'Ishita Savera', '190801132', '$2y$10$u04GEqNugFkdETw3lmCX3uR2YgVSsJjebH8xy56HziorpIutj6416', '9408134699', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:36'),
(28, 'Janhvi Nandaniya', '190802069', '$2y$10$k0BTMe7nZQed88ckVmlZ/OOU8WBLkSNKuhwPT9KTRQCr8bTbsjp8.', '8320143703', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:36'),
(29, 'Janvi Mungra', '190802068', '$2y$10$uIx6CcyYDK/iTKN.efBV4eAYb6J7/533ZE4a47mU4rVA6.rrKxbWC', '9099919927', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:36'),
(30, 'Janvi Teraiya', '19BBC052', '$2y$10$NPCF/7PKF8b6He.IxoWTAubUdzSDSFIPDa0GKB4jSVEwwn0L9v9He', '6352312471', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:36'),
(31, 'Janvi Varasada', '190801163', '$2y$10$wVe/dOUmIjgT9HJjKu1Q/up6W5XzU2LEL6B2pRox7MJ3gFEqeCyIC', '9033339211', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:36'),
(32, 'Kairavi Lunagariya ', '190801074', '$2y$10$y3Lo2vZnyONg.wF1MMZ42um6rpyUmZASIjZseIPhyOne4681guyCK', '9316171936', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:36'),
(33, 'Khyati Sheth', '190801138', '$2y$10$6qptrhOuH2bW.9NbjRVGfe6bxSXWuwI/L9FiBbHgLd19s/PWTmtlW', '9106771073', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:36'),
(34, 'Krishna Baraiya', '190801008', '$2y$10$j7OJJrQY/IhWoe9ld8gO.uqm6mjHMuX6jujOfpA0YT7wFf19tYqwm', '6359104856', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:36'),
(35, 'Krupa Raval', '190802097', '$2y$10$ZVLMjvN0c7QJFHD4hojEu.idp4yn14Pnsdlp9Xo5RKkDfoYu0IrXy', '9106682229', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:36'),
(36, 'Mansi Hirani', '190802040', '$2y$10$bLKlnigLnxSpXYIguSm5MuOoXLshHNuoUKP1zstYJkjMF8erkulgK', '9265657415', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:36'),
(37, 'Mansi Rathod', '190801119', '$2y$10$HDJlgm9ynTlfbtQBuBckxekZ6zRYzbk63AQtEyNye0gL7OoQW1gq2', '9099011147', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:36'),
(38, 'Manushi Mandaviya', '190801076', '$2y$10$OEkV3DJGS9zneC7G9LqMWuKN1.d8puwZk1VLAgnlgGph86VuF2VH.', '6352232772', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:36'),
(39, 'Megha Savsani', '190802103', '$2y$10$e75J22tdBSLuLcrG10mHM.LROYsw9IHQxxOuOuWg.Gb/bUiQPMDr6', '9512684258', NULL, NULL, 'S', 'Yok9UZ2ARBVUZ2GO9YKgaU0iBC02IqN8ZVVSPaKKipmQnrAdl1a3uWe67c3m', '0000-00-00 00:00:00', '2020-03-12 02:55:36'),
(40, 'Neha Gondaliya', '190802036', '$2y$10$MyMxUkzlSqC/eLMGdgcPRu1SM7SvkE/xtXMyChCtnXotFohnLCiAq', '9328223060', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:36'),
(41, 'Nidhi Paun', '190802085', '$2y$10$XCOdF9Ffkylmo0gniBmOtOa0Fsc5gqwsqYWGrqz6B08zS6OWrDY1a', '9099785448', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:36'),
(42, 'Nirali Dadhaniya', '190802020', '$2y$10$/6ROQwwhLqN1jxINXwM3T.8uWlxj1kfJTKR70SeGkSd0GwGQQtvoy', '8200753792', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:36'),
(43, 'Nirju Kalariya', '190802047', '$2y$10$MvMwqnGWMFOgBDjA/tP2z.2VRtXzXdxj.bl8LwibhLFbZacKkonZK', '7621914457', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:36'),
(44, 'Nishi Poojara', '190802087', '$2y$10$q78wQi24XNl34PpLN/BFGunUQrT1flc/sQMc0X1griWLdA8SubeWm', '9662805533', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:37'),
(45, 'Payal Padariya', '190802072', '$2y$10$CBtR2DcPt8XwXUtuOSVo/umuiWcESs2PWdHzCBcRznDm8PCC7LS0C', '9725460295', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:37'),
(46, 'Priya Ginoya', '190802035', '$2y$10$5nye4cNhgExzWOsHCK1IFu8vyrFCL1LgROXtpBUXGrYec52ie/gAa', '9265036098', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:37'),
(47, 'Priyal Bhalodi', '190801012', '$2y$10$oJ6nBGbwpz3ZMU6UdTC.CePEQ.fG2vue/GZEloGlAQnbE/2Ci4j8e', '6351824831', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:37'),
(48, 'Priyal Khirsariya', '190801066', '$2y$10$yRXR50/Sy7SPW04KWsSPreZpxZroW5LvTZarSswTEzwzjqILM2yDq', '7817845645', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:37'),
(49, 'Priyanshi Daxini', '190801029', '$2y$10$JynfDuoCIdRJ/J32A8c2TecDVYJacMgf4snlhchEaLE5oSAHqL8ly', '9825383211', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:37'),
(50, 'Ruchi Kakadiya', '190801061', '$2y$10$tV0EkbHbhfiELo9TWAnq8.en5gIAiThWrZm.M86n0HoByvo4dUf5u', '8758202857', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:37'),
(51, 'Rutvika Rojasara', '190801123', '$2y$10$cDDtHE26EJn1GKOkXQoXiu4nwxIvk/yHFX1MqW0NCeT7Lij5/cFRG', '9773090894', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:37'),
(52, 'Shivali Makwana', '190802060', '$2y$10$FbVxxQ6G/bsEL23xURVM1ecPpcqceiVHMW8Q12Kbr7BGG4QOfr6tG', '6354641414', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:37'),
(53, 'Shreya Dabhi', '190801025', '$2y$10$7APVpU4O1DLDArC7/sTFh.MKwtqCMUxNZhM2hj4tfUXnJ6yg.mtZy', '9409764876', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:37'),
(54, 'Shruti Sharma', '190802108', '$2y$10$i8yQE1zA/cfGWCaHeC8HjuiCKapcXHvap4TglPj9f/4Plaf7h0B2O', '8200912172', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:37'),
(55, 'Shweta Darji', '190802022', '$2y$10$vJvKU5a7Mb9fohyD45dHr.vFMSTncqZlVyR/EAd7F22QB2ZmTx4Jy', '9328709925', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:37'),
(56, 'Tanisha Modi', '190802067', '$2y$10$Q7gCTrmY3jR0/4rqsWMJd.VrsKvX4DjF9Hto1hWu0Q.KV06VsUHsO', '7990825003', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:37'),
(57, 'Twisha Dhanesha', '190801037', '$2y$10$AwZOTukJFevp18UT5a6MUuW5SYpRnVpcgClmQYjZmgNtc1du11cbK', '9408544430', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:37'),
(58, 'Twisha Solanki', '190802113', '$2y$10$ByhxPuKH.l6WpGarp1pFIO1FGj1hwKXfSXBWJs0zSze3oSFXLBdZq', '9408181310', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:37'),
(59, 'Vidhi Ambaliya', '190802005', '$2y$10$BiT3aNJ9T7qBgt2Y5MYrdeZby8relPu5nmJ2ysGBkF5/jzw4RQVWu', '9664606657', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:37'),
(60, 'Vrunda Vadaliya', '190801158', '$2y$10$BhbZiCwqBiep9Pb.M3R83.rBWezpQzZrbcgyeadG6x.YjWbyNcmlO', '8733045581', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:37'),
(61, 'Vrushti Kotadiya', '190801069', '$2y$10$uzLG0f7a.c4vDQPWVl1fT.WAPyjRalHfLyom7TQH84LFnQAtcFv82', '9879392616', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:37'),
(62, 'Yashvi Ghetiya', '190802033', '$2y$10$ucGWztdWBdb0EZQ8S9TC0.nbh2xEwL72LsizyvYHu8x5T04o7/h56', '9879817955', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:37'),
(63, 'Abhay Bhuva', '190701020', '$2y$10$tsn9caoSFEUNBWG.Owa8tu2pw.PY3H5g3q9C8GzJaPHBF6GguU1jO', '9512307634', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:37'),
(64, 'Aesha Shelani', '190802109', '$2y$10$nuaXX1FQvOc5t4Mq3MYdDOQjlmawhi4U1zFET/b.nP43qVGuhPrJG', '9925071127', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:38'),
(65, 'Akshay Borsaniya', '190802015', '$2y$10$KXiPAKubBAUbS7xsAU9AQuuH9CEeXDMbW5TJSCfuYl2bv28/gs5zu', '9376366222', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:38'),
(66, 'Akshay Faldu', '190801041', '$2y$10$tQbqIDvtEwiLvV4E4TLo1u4n4SnEWnJsDqYUAYpa2wO4I5/ee1mHO', '6355662025', NULL, NULL, 'S', 'KtuaeuLvFBMZBhmc5sCtBQ6wrlyQqMJeEj2T0AMxisKVjYjLK79KhuGOJIIr', '0000-00-00 00:00:00', '2020-03-12 02:55:38'),
(67, 'Anant Delvadiya', '180802021', '$2y$10$yNdeKJDOJw9zIsyo2trDROUjSn.bGsRJ2hTr1TlJpBcUiQpEW6aUe', '8780373159', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:38'),
(68, 'Ayush Rajpara', '190801111', '$2y$10$zZSDh4F5j9gtTVKK8P5WWeR6Cx5me6ZPIqNwl1qdriA.YMQzuEIdO', '6351062474', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:38'),
(69, 'Ayushi Thadeshwar', '180341054', '$2y$10$TokaGyYaAKOXNo0.aPs28unNYaM2D9FRQE9CEIlqaMjKQd38rEAHu', '7043888701', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:38'),
(70, 'Bhavin Padiya', '190802073', '$2y$10$hgiX7mtlaPLj4LH74Gmp4eTrCJCavPrv34Rm3uXqlme.tQkJrpahG', '7435812484', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:38'),
(71, 'Darpit Lakhani', '190801073', '$2y$10$XMS9o31nzRiz4U4x29Iw..hoV9KVv1/hFdDP4XLLmBDHbtW1lIsQa', '9484883907', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:38'),
(72, 'Darshan Bhatt', '190802012', '$2y$10$bnxEMgVbEasGqtoRFcJ88eQrYmbh8o9VjD.Y8WuZrf3sCuIST/okG', '9420218968', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:38'),
(73, 'Darshan Kakkad', '190802045', '$2y$10$n.6LVPwmapLRpuR/t.Id8u6rsPGFaJPGcX6ldKGiP4jPt7HAXeFtC', '9909217817', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:38'),
(74, 'Dev Ajani', '190801005', '$2y$10$nwvCDU2MySBBtg88momn8.d9fn9fhMW89nUmP9uxAxmwOqcs7jHwy', '123456789', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:38'),
(75, 'Devang Vachhani', '190802117', '$2y$10$hkcvUgxR6yufv8kTfTRtw.LtYrSwu..Gpi6n.1bu4..wUuihM.6lS', '7567531375', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:38'),
(76, 'Dhruvi Selani', '190802105', '$2y$10$koaS04LC/9/NX3QfZF5DMu3n4kIjFnaAnM9yB5LUzzCKj6uZK44Bu', '9924486858', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:38'),
(77, 'Dhwani Chitroda', '190341008', '$2y$10$puZ0DeRkfTjD0jQydBkoy.nHoDiozODPjTZecgXZF7xONGRU5kuKW', '9767113327', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:38'),
(78, 'Dhyani Kawa', '190301074', '$2y$10$qHPE8Zk9.jEcBU.PWDdP9OGyDEQTaAeScm4GK.rSJFis5Tkhdonvi', '9033051051', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:38'),
(79, 'Divyesh Mevada', '19BIC028', '$2y$10$3aHFacGImM.HqBROaSo7puk7550Yg6hApy/J1MZwJE5dwCZQD0eEi', '9173158586', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:38'),
(80, 'Drashti Makwana', '190801075', '$2y$10$7sWHMeVPM71xL4Zp8bQqce/oErI2LX7Pm.NxQ7ex3hDykIwDMA1aG', '6359101184', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:38'),
(81, 'Hardik Mehta', '19BIC026', '$2y$10$L81yvT4ttsiC1fYcW5ZXpuq.Pofx0bCfCxT9M69Vp3aP3JsgK.11a', '9499552025', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:38'),
(82, 'Harshil Morad', '190801085', '$2y$10$fmkeTxJxDeffrEMSqGKQTefptXUOLPMtilkid2ECNNr8dIIDz1n2i', '7621042788', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:38'),
(83, 'Harshit Babariya', '190802006', '$2y$10$jXBfwuBSWdiobIQ/FXHvyeuyWKUsmJ5lu6HKTJzN45xBAFN2C8Zum', '7046324355', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:39'),
(84, 'Harshit Dhameliya', '190301040', '$2y$10$7tU0a325w3WjGrn6.0q9nu9Q7j693FpddLFD/cpuA7P6FprOhGH0K', '9773019713', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:39'),
(85, 'Hemanshi Sakhiya', '19BMB046', '$2y$10$dIMKcVprpoGyxibswaLRwe2Tui2rf4uRYmNrX.1990Yi.p1om2yxy', '9624151172', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:39'),
(86, 'Het Kotak', '190341027', '$2y$10$OEpDvAOHBIdD6dRUTKKi6eg6XJ7w9TUcF7Yn94f6jT/dsbgP7HeTu', '9106768002', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:39'),
(87, 'Jenisha Ranpariya', '19BMB041', '$2y$10$XA0J5AJmK.kk1hnmVY7ye.eACwyPM61yUWgXFOpF4TfGE33r6CB7m', '8000822004', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:39'),
(88, 'Jigar Soladhara', '190801142', '$2y$10$xsxdFV88TRPc9lypdvm5pOz/nmNQLwgvQ0OwoX/DtsPx9/5y.WkH2', '123456789', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:39'),
(89, 'Kashvi Makadia', '190802058', '$2y$10$.e4Z6hhdCYP7NR1YQT0P4O7ysNV2hGzH1U4xJky8Tqed5S7bkw1TG', '9510630670', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:39'),
(90, 'Kashyap Loriya', 'kashyapl', '$2y$10$i3wplJHAd6IYon4RXlfKbOyIvjGcunac0a/.341mjpY6J.f.4M9Yu', '123456789', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:39'),
(91, 'Kevin Dhanesa', '190802023', '$2y$10$ndF5q1rRo1CPLZj3UkfvceK9E3zSl4UlomTDcajxl6huwjaPmcmbi', '7048318736', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:39'),
(92, 'Khushi Dhakan', '19BMT018', '$2y$10$ZgZ4CeSvHVR4kpi8gVyq1urVGQ8.EDwXdGgyU3xdaVlWweDfsuK2u', '9426628938', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:39'),
(93, 'Khushi Parsaniya', '190602111', '$2y$10$FOH7thf3E8jkCRmEfN.ejOFBbQQnFMDqPP0Pg9MTOQpw7IF7wfTKq', '9328892150', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:39'),
(94, 'Khyati Detroja', '19BMT017', '$2y$10$lE7hqX08FezxhmXrnFuJT.axI8kWiBYOshiOJ53Z74ezMaFMBJvbO', '8469327519', NULL, NULL, 'S', 'MSlFXraDtW90ZVSo19WcYTMf4SkRdAjFRukd13oucttWUwBhFMrnNk4G1BPy', '0000-00-00 00:00:00', '2020-03-12 02:55:39'),
(95, 'Krupali Rathod', '190341044', '$2y$10$QC5/BPg6dT331AKLNqQ/1ejfpntwPzZdlb09XWJB0TR3zNLFqVSwa', '9408774799', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:39'),
(96, 'Mansi Gajera', '19BMB011', '$2y$10$5dmBwMUsE7PRdqLTfZJ/VeVHQSEd5i8xyoAFFGH0forcMBBnIsve.', '6354240743', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:39'),
(97, 'Manthan Dedaniya', '190701037', '$2y$10$eAdd7E8ulavBT7HlCeDq7eCpGYTjRP/RhuNT9liuJ1SCfW4LMyXma', '9484433880', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:39'),
(98, 'Mayur Joshi', '190802042', '$2y$10$dtOv9cGyd6JLAm2xHAd6IuW2D3tvLCPfIWE9TsKikHpZm5z0hDX66', '8320517888', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:39'),
(99, 'Meet Gojariya', '190701052', '$2y$10$Q/H4Z1EVw6zcyh/27tiuIugcKSIPMxmXOOSmIowrZkN1kWFlt.Wze', '7990632347', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:39'),
(100, 'Mihir Domadiya', '190301044', '$2y$10$lnASUNGfU2cPp2z6FtNDXOlyuYFpJDdqBNvz3w0BwfJ.U6NTIuuXq', '9727200049', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:39'),
(101, 'Mohit Makwana', '190803013', '$2y$10$DZnMPhCTX.xDiHBqWm/vOOGS6n1NQenwruFV/RZFJPmXRs3McMNMS', '8401530031', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:39'),
(102, 'Palak Kalena', '19BMT030', '$2y$10$ZeVDkvA7txX0/DjlLRrKkeNx2kGWBAT48PROqdfuPSnQpBlh.OUE.', '8141674417', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:39'),
(103, 'Pooja Mehta', '19BMB029', '$2y$10$TeXmMqywcarIWPXTC0z2AeC1wmpyDF5iYTCd97VoOZweiYv.c1GIe', '7016071476', NULL, NULL, 'S', 'IZvjYWJ6XowZBv91QV2O06N4ZzAl7MtLZgQ5knvu5R2PLLMXunMYfm3iPn7U', '0000-00-00 00:00:00', '2020-03-12 02:55:40'),
(104, 'Pratik Ramani', '190801115', '$2y$10$2nrCG7yxvKScWuBy6K9eb.EkoqrTxuiyFqWkpRqlF6B268aA51znu', '9898642950', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:40'),
(105, 'Purva Lakhani', '19BMT040', '$2y$10$ScGsT/JY12rpultefkNfweURNV4x2VJPLqul1N1v8hiyBwJXwAcie', '9428287460', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:40'),
(106, 'Rachana Sindhav', '190301139', '$2y$10$/38fpJLCObL1/JkiH3u2iOBjBgTV4dqcAUims9V3n2no1tpol88gG', '8320448759', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:40'),
(107, 'Raj Barvadiya', '190701009', '$2y$10$YHVHULO5TdrE52JTTANlouPxE9qLs1YyjTWoFejLRHRF6OumY9fxO', '9328262206', NULL, NULL, 'S', 'l5ajegktjy40mMn9glkBjNmzMKtpkk4khBfYZ5tU4KjrPvySxxVEYwPLLRlo', '0000-00-00 00:00:00', '2020-03-12 02:55:40'),
(109, 'Ravi Dobariya', '19BIC010', '$2y$10$A5rDQ42yKFuozoaahEDZPOyw7AwiYIfWXbZs.w.n9P//ZJU6Jtgs2', '9601966030', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:40'),
(110, 'Rimpal Makwana', '190802059', '$2y$10$wOFEigKnqD/FTLORbz8O6uukFquKL4R7Y2r9v06ttMnKLCGCedCSS', '7359850449', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:40'),
(111, 'Salman Parasara', '190801091', '$2y$10$2aKBq7m1dwmX2ORsuc7U/.8TTqzrWOFdr3fqcAt9.nsCUCKJD0LMW', '9173493892', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:40'),
(112, 'Satyam Maravaniya', '19BMT042', '$2y$10$J7y52SCwqaySHG6pF6sEDebL9KKF4Pgek0U3VCDEoj71Sb3BL5dYu', '9265725701', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:40'),
(113, 'Shreya Kardani', '190602070', '$2y$10$yAk7ji2MeiJNGVLUimvpBuCNpUKAZIEYXUGgtelOTbfZUPbRn05n6', '8490070307', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:40'),
(114, 'Soham Tanna', '190341055', '$2y$10$8/VV3Frq1QBAzva0jXaeTOGwjBHH8SbiowAlYuWtywPw4t99oKuLO', '8849670890', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:40'),
(115, 'Tarang Bhuva', '190701021', '$2y$10$8.g7I1vgAkT1EfvZL.7.KeAG/2rz6zmfbPcK7ZNjDCELjrwio5lYu', '7096970707', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:40'),
(116, 'Tarangkumar Bambharoliya', '190802008', '$2y$10$0n4y9htEQw/lMzNHmOi1Cumlr0aTKCy..jl1dWGjcF8sRnIcHXG6q', '9723746672', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:40'),
(117, 'Utsav Gorasiya', '190802037', '$2y$10$cZBlg/Yzg87d7H93lZMZY.HHKPDwQXpMCLPzTZsLR1kry/R1UBwoG', '9328059356', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:40'),
(118, 'Vaibhav Padsumbiya', '19BMT046', '$2y$10$po0feH78oZr4/1xnKBwSFeLvbHiuTaeGL.byUtSNys4uIFiz.VXCC', '8320640297', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:40'),
(119, 'Vasu Bhimani', '190701015', '$2y$10$BNcCCgeF/soXSTOZGpMzpeNg6JQEh5wZPu3hMCfSEWr0ZwFbsU8su', '7486987387', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:40'),
(120, 'Viraj Prajapati', '190802089', '$2y$10$12krzUmacVuQliMUg5zhy.SFo5ZW1cA1QL2MdKlc4ylWid3Wt5hOC', '7069503805', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:40'),
(121, 'Vishwa Jani', '190341017', '$2y$10$0uTIj7JsEBxvuw03CqNA..5AVJCgj89BqejH.oAoFaxOmm6gOVhhO', '9512240000', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:40'),
(122, 'Vrutika Vadodariya', '19BMT056', '$2y$10$x7kzwb.vdph/KRXGntA1zOXy2EWLbdtggNZhw8vLRgqHSkQFQi.ay', '8141674417', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:40'),
(123, 'Yesha Karathiya', '190802050', '$2y$10$GIyp75nkX9bgUCtn3aw00OcuzvWPBzbZK3u/rDYPRI.vmxX4XX.UO', '7487973657', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:41'),
(124, 'Aashutosh Vadoliya', '190801159', '$2y$10$PSiCvSY.5ddXdYk9YWnES.sob8KFRwsWHODveggp3q4B2zFtmwdne', '9409762630', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:41'),
(125, 'Abhishek Aadesara', 'abhisheka', '$2y$10$ZQQDgJhB/UkhmCkP6H.be.eYSDaq2RlrEB8gQIaJ4WphyY6O3jy6e', '6351397919', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:41'),
(126, 'Abhishek Mehta', '190401082', '$2y$10$8lKSJ57Yj7WgQFnMdJjtPebB3XXZjXEdQPUqKGMDhx/48Fv6bT0jS', '9664828343', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:41'),
(127, 'Aditya Sayani', 'adityas', '$2y$10$2rUEOWc2NAQWMJi7pwkPyu/gviM9P/7O9MYtBTY7SB.EzegFO0Que', '7069349597', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:41'),
(128, 'Ajay Prajapati', '190801107', '$2y$10$sOCsP8uDo/9ffiAO7IyyseshowSiDXwiVJA/H2qq9pDvJu7XbAxOW', '9574693970', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:41'),
(129, 'Aniket Chauhan', '190801018', '$2y$10$EHIqVxSPFmlb1QTY8ELS0.3I5PilKPpUm7y9Qm9MbxuEhQ1CAEFEi', '9510086095', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:41'),
(130, 'Bhavin Aghera', '190801004', '$2y$10$HfaziRzyqBUKZ9EpgjDx4OOriK4TuzqIDbFnYY56nB8felihvsAIO', '7046074960', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:41'),
(131, 'Darshil Modhasiya', 'darshilm', '$2y$10$kunFQXSA0ztKD9g134tUS.cH6Kx2UGDcicQFtQJuGrtlc4vPQ9F3a', '9054761000', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:41'),
(132, 'Darshit Talaviya', 'darshilt', '$2y$10$QX5Qd6oPYhR4BgiVSW62ZuWXEsabxgWU6dtdOEjds/3NQvjxOOm/6', '9714526727', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:41'),
(133, 'Deep Kalariya', '190801063', '$2y$10$EZW2F/5Is2ztHIFjlU5LwupHZGif7eW/K9sDjqwrtqd7ez2tOk7Au', '7016257898', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:41'),
(134, 'Deep Sapariya', '190801131', '$2y$10$RLCxRwxycgcN6In7wq.06OCbmvorPAZY0TXJnOGXbInto0EfIwIJ2', '8758814324', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:41'),
(135, 'Dharmil Kachhava', '190801059', '$2y$10$lWdv11/uogAzxxvA0lfo2OpSOvRNcG9sjRS6cUiLNNw91T3Ieu/OC', '8758250238', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:41'),
(136, 'Dhrupal Vasani', '190801164', '$2y$10$WfMsLJBl1P2Xzsm3fNYJ9ekm1IuQOcXq/Q9ksueeuDpjkzaVBUxI6', '9265937061', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:41'),
(137, 'Dhruv Rajdev', '190801110', '$2y$10$ZPZtu6FEpz3HIK6Rjxls7eTG9.nQKKboYlvw85B.7CmIbIMUT6BPi', '8320801152', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:41'),
(138, 'Dhruvin Patadiya', 'dhruvinp', '$2y$10$7gd1Uny3ZwExw03NuHZPKeYmuz7Gv0Mz/j5lRLBE1nGGDryJngzcq', '9106611095', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:41'),
(139, 'Dipesh Sanchaniya', '190801128', '$2y$10$SJUy4/gmkio26bx4kntrgudr0Ud7LSXS6qgKUaJ61KYOvuCYIljxy', '9725525013', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:41'),
(140, 'Divyaraj Mehta', '190801080', '$2y$10$ta.J2DrBYuIglWrgqP6ka.JR2ZWyawnhcdxTzvfAvgABJFAlNbu3e', '7698824501', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:41'),
(141, 'Dixit Vasoya', 'dixitv', '$2y$10$G50ThTjooF9VgBBv88qjpeOYCM3/LN2nhDjPRPwi37Y2mPLr2a8Qe', '7575094693', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:41'),
(142, 'Gaurang Vank', '190801162', '$2y$10$26yYAS29Lcj.pL6o0Imvj.B0275Uati.6hBrMkgpCe25yJ1JMwYYu', '8320668058', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:41'),
(143, 'Gautam Pansuriya', '190401101', '$2y$10$.V8NXvNgyWGHixI/Nf1S9.SSUzaKtRWLE3lYBBXCimsRMxvGP1BTm', '7046449119', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:42'),
(144, 'Harsh Ranpara', '190401117', '$2y$10$7NSeI.5iVuYgP1cVU2thtOJaDzfmn5SCxW5PUifzfeW9b4NoBodIS', '9898995832', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:42'),
(145, 'Hemanshu Pandya', '190801090', '$2y$10$LIRbA/gXzYqhqJFb0ewXWuYzIbb809qE0oXyVoFzZlxbevIHpE.W6', '9328421506', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:42'),
(146, 'Hiren Sutariya', '190801145', '$2y$10$Ohen8XECtKkKIX6C7OpFwuEb/5hn0oGWTas/qgN01km3Z/kywKfMO', '9737736356', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:42'),
(147, 'Jainam Doshi', '190801039', '$2y$10$yAbtr.1mHqKYCytvuUEhIeTnoTx28L8UZLRDc2/eGBwRcaQ3Be6x2', '9228396412', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:42'),
(148, 'Jatin Gondaliya', '190801054', '$2y$10$4EBRMQWR/IxnmEWC09NqBemoB5Axc7dnO8Tt/WXSp.NDgPS.6NgXG', '9275159780', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:42'),
(149, 'Jay Dhaduk', '190801035', '$2y$10$OTk7HzL4CD.OruKxQ56xzOqMCAk8S2zZSipiQ7UjR0GFZGQaKkqxa', '8469626460', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:42'),
(150, 'Jay Ghetiya', 'jayg', '$2y$10$EDQgOARZ.ARwyeUmlmGk8.lgzBpQPfPqNicdZ3AbtzdLdfgIqPh36', '7016827020', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:42'),
(151, 'Jay Thaker', '190801153', '$2y$10$ICgO/GDAwXDiBlzi5V8Pf.lAE4ZD.hN4TLT1gPDZvjOSTHvHJY2yW', '9714971714', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:42'),
(152, 'Jaydatt Ramkabir', 'jaydattr', '$2y$10$BPDbW2Z1V5tPq5kNeJzmH.7F/jQ9fj3mSXASTE6aRnCZ9.OjuVmIO', '9724704704', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:42'),
(153, 'Karan Kalariya', '190401063', '$2y$10$mg3ZMMWSMDkODQB.d2lCKuvkbrpwvhrZA1WDL7/0pSAQz3g/zJqwW', '9909092159', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:42'),
(154, 'Meet Adesara', 'meeta', '$2y$10$wCM6LWoGX8/Z6MYKEPI0YeA9sLK3F11DWXrlUZ.SLRpUZdoOOviFy', '8238383866', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:42'),
(155, 'Meet Dobariya', 'meetd', '$2y$10$pdTncz5QEpj1djvl0/xj1.EMrAUV6y1FnDXVLk9PxgJ0rGixWC1v6', '7698444988', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:42'),
(156, 'Meet Ganatra', '190801046', '$2y$10$Oztd2TWXtl54Uq9vLMew/eHATn01wnsVXwKBEtrc/YjSl01lCnjhC', '9898713083', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:42'),
(157, 'Miral Savera', '190801133', '$2y$10$uP/gacm1YVuRYArCCPY7wuRD.SJzohFJ75VFN6.khuWfOFvu4gtHK', '9510500358', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:42'),
(158, 'Naimish Tankariya', '190801150', '$2y$10$.cp85xZXN4X4neLVu.lpNO4AI/oW1fkVlYBf.DzLxhEMbF4hW/LCW', '6354622363', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:42'),
(159, 'Nigar Ghada', 'nigarg', '$2y$10$kLs.lPtaeiE6YDadgFPXouHEaPqMRvmv58Dp2yMhNJaI7gFzHsQ8a', '7359266006', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:42'),
(160, 'Nikunj Ranpara', '190801117', '$2y$10$2WQQnyvgpvSwupFG7iZn0O6R8XagT/FQRzybYNU3IEdq6z9HEDGZ.', '9409754851', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:42'),
(161, 'Rahul Matta', '190801078', '$2y$10$ihM/c57SE4a10qiPNn8Kb.maD6GAlLNd8Txr9Kf6WJ3TsU6.4EES6', '9558666547', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:42'),
(162, 'Raiyani Rushi', 'rushir', '$2y$10$F5ZKljDjAoBDQbfce/ShnePod4s4O2.hRvI3yb2RbUCQGHDTeUa8i', '8320531109', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:43'),
(163, 'Raj Chatwani', 'rajc', '$2y$10$vM2maBzPXNvTWHEOol.BmO1yR1YzUGmWqxerAJ.Z7gcZlkMbC/Kla', '8347430961', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:43'),
(164, 'Ravi Chudasama', 'ravic', '$2y$10$FTLgLXN5uhPIWEIie0LZY.dQUiDepBZWi7uXZsfEKNDzt7XpjxNW6', '9773157454', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:43'),
(165, 'Ritik Godhani', '190801051', '$2y$10$aI4qJKVizD9jh9VIRlgFmOloRS4F5Vav6bvhzmVgnrxjYfdjMHC8.', '7574991071', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:43'),
(166, 'Ronak Mer', '190801083', '$2y$10$VPu5oItLbPCSqyO7vabfZOEbON8EPNKCfTBRn0Um/xIdnZAPXVK1i', '9537840962', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:43'),
(167, 'Ronak Mungapara', 'ronakm', '$2y$10$UFSvJEcPKV7YU0i7jGM5PezGxUstoTDnyl8.RO395OMwHQs1p4RFC', '9924243842', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:43'),
(168, 'Ruchit Khunt', 'ruchitk', '$2y$10$.A0GtB1acJGbPpZ9O6b1/exoYKb9fUuvZvNQ3B14oaiIxAGPzsrXi', '9725106972', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:43'),
(169, 'Shahrukh Belim', '190801010', '$2y$10$Bo4DWIK85GB6OZNcGo/XUuzbEPblsIhibXIih/WEALbjNAQWp9cSq', '8866600478', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:43'),
(170, 'Shyam Vachhani', '190801157', '$2y$10$l9XV1vsFTMnpLsC4P/guZOgB0/8EvDAA.pWx0FDJ9TmUvNeQqPf8C', '9328480355', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:43'),
(171, 'Smit Kachrola', 'smitk', '$2y$10$jMlPNwxkLuUFPcMNb0v3BOfk0M4mUDvu9czmBdPUMVNSnF0H6RsUy', '7436054220', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:43'),
(172, 'Sushil Marakana', 'sushilm', '$2y$10$ycOyAAbPdkQH/Y8FVusoHuGa0QBEVr99Ho4LD5PFEEZlUr5WC/j6K', '7069961481', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:43'),
(173, 'Utsav Vyas', '190801169', '$2y$10$xJaMlQNUy/7KFIvTLLsVyOu4FcGdDQRiPRtHRzboXv38uXTiC7MDa', '8469796474', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:43'),
(174, 'Uttam Bhalara', 'uttamb', '$2y$10$Q8dQ8yBbjXaXGf93.b47UeHB1LZmjybq5duiPwZfMdX1q32Uj4a2u', '9904662636', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:43'),
(175, 'Vinit Mehta', '140801081', '$2y$10$O/M.CEKt3cIvzFm1W4BYleJdEu.BR4Pl2myfatIvCWdzbOfUzClnO', '9157746137', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:43'),
(176, 'Vishvaraj Jadav', '190301059', '$2y$10$PWKvgYdG2kzz5gwr9zltXuJOOJwTlmKre9JqXvy2V6GwEkufHqmlW', '9173733838', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:43'),
(177, 'Yamunesh Patadia', '190801100', '$2y$10$5KaPyxwexyxT74B.Z2U2iOcc7sWeNSpIUMzITX7j3UaJg5SuznbVm', '7600698989', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:43'),
(178, 'Yash Bavishi', '190801009', '$2y$10$FAU1pUwAfkDVd39gi0O6MOJ.VmAwFO87uAALjHv/nztOBk1AAUgeW', '9106847275', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:43'),
(179, 'Yash Dhaduk', '190801036', '$2y$10$ydLQ8SLjmNoR6ILLLdjD2ueviBpuRoSNou6e97qOWVt5T5Q0ZZM1a', '9510928019', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:43'),
(180, 'Ashok Sisodiya', '19BBC050', '$2y$10$T7X3vbUYrVvjlmfgfn7CcuVQ8riNj0RQKQEjknoMkwIMbECqDB00.', '8866276326', NULL, NULL, 'S', 'zwXDqQcAQjxcl8UasPj1nDtYqjD1tgLJjTcnJ81E4DItyUoVCN47bEfvpRB9', '0000-00-00 00:00:00', '2020-03-12 02:55:43'),
(181, 'Brijesh Gandhi', '190802032', '$2y$10$YjHvxeqj5MszgtdZq0ajyOVJvQ0LQIVT3HfM2H./NuF.tej/CLLgy', '8140050762', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:43'),
(182, 'Darshan Bhimani', '190802013', '$2y$10$5hC/uBKHSUVgL/NlzpFQhel9e9/Q5zgFcGT0kAB.3zxlKtttziChq', '8401736202', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:44'),
(183, 'Devangi Joshi', '190301064', '$2y$10$THkvw/cr8lV/7QauR.HUweHt1IBHKoihB7FyYmWgnNLP/gUV29Afu', '9825215435', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:44'),
(184, 'Dhruvik Pansuriya', '190802078', '$2y$10$9ppPVPQoYxBrd2vqyWJzD.QClpnlEl9t0xijxYXfPIqT0XpUf3XoS', '8668503528', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:44'),
(185, 'Dishali Rupareliya (R) ', '180801092', '$2y$10$l4dtW8UpCU2cBXM.Hto/XeIdeageCIMni347LJySOXKwEl/6A4QCi', '9624676285', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:44'),
(186, 'Gresi Hadvani', '190802039', '$2y$10$n9vOK9DwmfEmmJmKJk5WQu3cjYIwKHKa9V3PUWKTe/kRMgxTPpALC', '8141751806', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:44'),
(187, 'Harshit Vasoya', '190301163', '$2y$10$MEiSV5/IcsG2Qu3lSJ5aUuT9SG2P5cS0IM5mtSXqe2KLzy/FK11MS', '9638539421', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:44'),
(188, 'Het Pansara', '190802043', '$2y$10$L6n1XCQf6dYsAsg8hfqU/OxgIgKkBiXmRdGTwPWHbln76QXFFmrc.', '9408239405', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:44'),
(189, 'Janki Pala', '190802074', '$2y$10$3PyJUfGSQFI/bH20KmAVcewSQXix2xnVAx1JgbVu9MTJkSpvwLHKu', '8141820458', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:44'),
(190, 'Janki Ramani', '190801113', '$2y$10$BtktELEPGhtxGSkhAUHwP.WTCiZZy53v2dGH4K0wV.DcTMwwbYLbC', '8140331022', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:44'),
(191, 'Jashgiri Goswami', '190802038', '$2y$12$.ofHrMDj4VQaUE6gD4YijuUNj/snbCEclpSlIRlLe1egCxj1tLYSK', '9510353117', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:44'),
(192, 'Karishma Gajjar', '190802031', '$2y$10$sNR8ehf8uctl6dX8NfuZm.H1GcQbMBsdKmCLU3AGKl3oN8bM5vkXe', '9924956615', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:44'),
(193, 'Krishna Chandarana (R)', '180801013', '$2y$10$3SDrRCxyebNUTXdGOXdlYejpNB3hM/adaL4VH/bNzLsLtOXz5EIeu', '9898663456', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:44'),
(194, 'Krishna Sindhav', '190802112', '$2y$10$8k0fnQJ6XO9/2oy/70IIoe1VBklLo3xcyijFZRdRJWyjjzJRACrpe', '9510283128', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:44'),
(195, 'Krupali Faldu', '190301046', '$2y$10$a3Tzdp/0Sji8H27C3in7weJ9yIF.izSdjYLPLl/X7KLmdxFF8g0P6', '9925074619', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:44'),
(196, 'Meghavi Faldu  (R) ', '180801035', '$2y$10$PoKwvNi86dzDCesEWtiM5u.qi1INKwrtFNqd8sZNwIM3./gqYE9ea', '9537225411', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:44'),
(197, 'Nancy Parmar', '19BMT047', '$2y$10$EC5NTjYbwmHi5JtH3QNfXufNakQ5RX8/ywN9SJMX6v1U9SEv1vl6u', '9033492265', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:44'),
(198, 'Nirav Pitroda', '190802086', '$2y$10$uXmJn.GFQk606j/Phnz.WuYbcZH9rwwe.GsfdIeV9aboFB68Bgfkm', '9723048437', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:44'),
(199, 'Nisha Patel', '190801103', '$2y$10$74engcmY37liQQd17.eEWumvSdYfIGdrfVrGtdfkLWu5JNry1zYLu', '9664520456', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:44'),
(200, 'Niyati Chauhan', '19BMT014', '$2y$10$dSB7WCcp.KjQMetyKas1OOxYeohFLWSq6ygLRv4NoAV7U2WqsahsG', '6354122304', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:44'),
(201, 'Parisha Dodiya', '190301043', '$2y$10$wey9OpqPnWnDZvfvlsUGvecQgIhmaX.oMTBIMWY4UNQil8u.NXLSG', '7359990012', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:44'),
(202, 'Poojan Pandya', '190802077', '$2y$10$jWDZc8YDsrFI2q3/zYKqxuokngMmdofVnHqOxrilBMN6J6ZpUInuy', '7567123427', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:45'),
(203, 'Pratha Dave', '190301037', '$2y$10$WNPp8wUAEpo8dCMcnDxhb.VaRX/mgEVsQmH5iPtbYMtUrTx/gZece', '9328241478', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:45'),
(204, 'Prince Bhalodiya', '190802010', '$2y$10$ojiNhaajXfs/N6KNtcsWwe6y9xLY0/W10UjnTsgsnnWckaDozV4G.', '9427536295', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:45'),
(205, 'Prince Kalola', '190802048', '$2y$10$PkDJmkL9GXchOk5oFddybuO8snMRZhu6LMwq0Vu3y7QcZR8om9Qs.', '9328899102', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:45'),
(206, 'Riya Kansagara', '190802049', '$2y$10$Wk0Ul10kCY0iQ.3yeSL6X.I02LT8x/yjmgCROSqcgnIqlFxFd2qDa', '9499696500', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:45'),
(207, 'Sagar Patadiya', '190301109', '$2y$10$5xmHYyWBK4QzMH4N9l3AO.te34kxq33bcVCZiXyyabmEzjJHGhSfG', '9106928055', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:45'),
(208, 'Sakina Vora', '190301169', '$2y$10$XrwMCl7dUSADH/xaKzVZU.HK8627gpeX8g.T.BoKMRa.m9VOzaDb2', '9898981152', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:45'),
(209, 'Salma Sadikot', '190301124', '$2y$10$9w5V9lOAL5G.iPxpuZWQ4e4WhFRZsdG0hurKHIRSVekzB3Pu1pSsK', '9978199741', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:45'),
(210, 'Savan Dhokiya', '190301041', '$2y$10$G18lhDqJ8DcbP0mHee8rVuGh/gO7epvJVTT79UAz8RzkZnC0JhjkC', '9081626325', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:45'),
(211, 'Utsav Somaiya', 'utsavs', '$2y$12$.ofHrMDj4VQaUE6gD4YijuUNj/snbCEclpSlIRlLe1egCxj1tLYSK', '123456789', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:45'),
(212, 'Abhishek Kariya', 'abhishekk', '$2y$10$tLwZ3hbGuZocjVNs0UgUzOLjRa7W.Q0prMd8ZZYNZdGZt./i3aew6', '8160686288', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:45'),
(213, 'Aniket Gadara', '190301047', '$2y$10$RvL1QU3td/O59i0yuC4Dd.82kZ1T7Qk6YQkxy8miMCNFBK9hOaJsy', '9327553035', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:45'),
(214, 'Banshi Pungera', '19BMT050', '$2y$10$GwyxScXT7iZZ2iUllL1IyOUKxTOMjICubWVuP.9QX2HmkXxQlZ5LG', '9510724578', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:45'),
(215, 'Bhargaviba Jadeja', '19BMT025', '$2y$10$i0kbruwlXPHtwIAfEWtdBeQT6Lz8ZbkfZcF.3VMsErEVJxRf1rs7S', '9157730964', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:45'),
(216, 'Chaitanya Mehta', '190301099', '$2y$10$Zwewnnc5qL7uNggXadwVzuHEJV3RAS5l7keIRwioDMwLVJEbZmdpq', '9409530717', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:45'),
(217, 'Chhaya Chauhan', '190302006', '$2y$10$ny8DJSrugur8LyJPBcKomO5e7HHUZ0fWdo6mnBzNXsObKAoHWJbC.', '9979355768', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:45'),
(218, 'Dharani Seta', '190301134', '$2y$10$ip8G1Usd4K6YbGhXM4lhOeVgws/peFNOy6VUQBNDMQNB2IwlSUNiC', '7048363525', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:45'),
(219, 'Dharmik Aghera', '190802002', '$2y$10$j7ABwcgicS61u.Az.ONx2eLkL.wXkhOH/XgF0Vo7vFwPXyG...WS6', '9898205621', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:45'),
(220, 'Harsh Sakariya', '190802099', '$2y$10$D1w38QgAb81whwBpwOugWu1fyOUZi0Zn27lPxOSBNALy7bNee7pYm', '9723474212', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:45'),
(221, 'Harsh Shah', '190802106', '$2y$10$PJVyfVyCZh2uQMurtc8PlOfsKzUa23NT1Qd8WTbg98lSvoboAdCRC', '8141989583', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:46'),
(222, 'Hiralba Zala', '190801170', '$2y$10$nfv9CVyTzqAPYftsiI0F.Okb4LD.vecm/AbnO6yuU7MC2LhQub/.u', '9265688033', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:46'),
(223, 'Indira Ganatra', '190301050', '$2y$10$jtVmROb37Lu3.4YvGPAAA.xfFW.kYwSydJraAITCNRgw0V6BA2DhK', '9998113979', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:46'),
(224, 'Ishita Bagdai', '190301008', '$2y$10$Pc/zoTClBULN6xtaR5iTaOAwb3qabNpDgMWaGM0LlKmtuJyeUmUzK', '8980616293', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:46'),
(225, 'Janki Gohil', '190801053', '$2y$10$uBcwl2n5yWDwHslCzR1FRuhaYFoa7z.rRFO8t5JpLpb/1PCymgysS', '8160812322', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:46'),
(226, 'Janvi Sorathiya', '190302045', '$2y$10$bttGcK2TVhSDWBcYcnTZye7hJh9zKlr29Khb6JvlIis5Dqyb7j3JS', '9601983193', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:46'),
(227, 'Jay Goswami', '190301055', '$2y$10$RSnj3LXpRfEghT6jl9/6.OFfS.wm4zlYuZ3ZXGoeQUZHDVYfQNknS', '9574519787', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:46'),
(228, 'Jay Marakana', '19BIC024', '$2y$10$B38w/E874TnSIf/jOw93O.5pbyeL.52Gwyi6rJl9r.qlEKXQbK.xW', '9662619554', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:46'),
(229, 'Jay Ramani', '190802094', '$2y$10$QLJNAYX2ol6q1ZfCpuF/heH26H/2zeyAPcrs8/Wr6pwhKjD.Ck7pO', '9664552722', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:46'),
(230, 'Jeel Neradiya', '190802070', '$2y$10$wFG0AJrJFEUXdV4/3Z1cP.BcjW5UqJTOai8e8ALpQYyYugqalpiNi', '9510446539', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:46'),
(231, 'Jeet Santoki', '190802101', '$2y$10$w3t1mKLJjnXFLHxCNPrGNe/CI2izVTCT5cMr/ksKJ3zKFxV1csJ.6', '7283842143', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:46'),
(232, 'Jinal Ramani', '190801114', '$2y$10$lbrNSRMLHkLs3PY2mVEMn.BZc/vxi8D2zXYu3DXP9xSmuMrKbJf.i', '7567373045', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:46'),
(233, 'Kemy Vegad(Wed-Thu)', '190341058', '$2y$10$ob3AWYvCjcr51eRPYqUTYeoqkmSzyYrD6dRs0Zx6PQEI7.GZJYkeS', '7990468072', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:46'),
(234, 'Khushbu Pathak', '190301110', '$2y$10$SoAYPkVOew7rC9N/FchsH.KWgtTmrASUr2YWzZ4lIb3jnwLjGldDy', '9265467843', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:46'),
(235, 'Krusha Limbasiya', '190301086', '$2y$10$qK8u5zrCv5NP3S34FBpwd./kKeTSKneQCHWzL6wNVTp9vIQLuPHOO', '8849925313', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:46'),
(236, 'Madhav Davada', 'madhavd', '$2y$10$Ly8bQ1DidAqgbFuvZxUZsO2sysV7HKzihljRTxGVsmBGIHNXwHUbm', '9879512058', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:46'),
(237, 'Maulik Nimavat', '190802071', '$2y$10$YnkRGwg0gewz/Vm9g3E5c.40p3anbJeWLFGGILPQjnwhlUeeFpxEy', '8200525507', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:46'),
(238, 'Meet Rangani', '190802095', '$2y$10$wAPBYXcr0xXO92zEToaLVOxkmrGVfMC7GlM8NnvjJ8O/oOwM83urK', '8980917544', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:46'),
(239, 'Milan Rajpara', '190802091', '$2y$10$dyTA.QFqqtfCY2ltYqrnx./Zuhw6YK336HpXKGft5EPtRjYMJBQ2O', '8866825284', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:46'),
(240, 'Miral Chovatiya', '190701031', '$2y$10$tcfinF1btSLgta9DQadwBOExHobmIE2YHs4RtPBP.efjz5.fot6PS', '9016474076', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:46'),
(241, 'Mohit Dobariya', '190802027', '$2y$10$1RzwGgO8e/oUt7lveJd2HOkT72nCnMvcQVJG3761V2Jkh1QZknBRG', '9638118618', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:47'),
(242, 'Naimish Maniyar', '190301091', '$2y$10$0NgjLV6zZhpbckMy0HhvNeEQJXZ/j1oxzMLk5UWq6A920X6rppDfy', '7041014119', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:47'),
(243, 'Nandini May', '190301095', '$2y$10$5EfW3VpF91RNB47GTr5luO9DX5v7q5ZK0O1xgmKA/gxI27yOBjvYG', '9909512316', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:47'),
(244, 'Nawazkhan Pathan', 'nawazkhanp', '$2y$10$HI9v1bLW3fDA6wzIYKvazOGcuhY1fgM6dYQ7d5Y8c2niUdnWV8Y3i', '6351610710', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:47'),
(245, 'Parth Bhalodiya', '190301014', '$2y$10$GSvEO8g.LY3SBo3KNm0ELeY.lM4u3LEFarvbVYe6nCjPSzpm52OG2', '6355266798', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:47'),
(246, 'Parth Katharotiya', '190802053', '$2y$10$t2SjMH3E4UQF1QljknbD3ORHk9kCDxoSSwmpgEINHQleolJZQ2PrG', '9913510347', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:47'),
(247, 'Parth Topia', '190802116', '$2y$10$biLElHelz0EWSezpgnSeoeX.L79SVaJntYKRX1SLQ2AlZlsCfPQ/S', '9016044640', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:47'),
(248, 'Parth Vadher', '190301153', '$2y$10$gcT.877j0kDsmtDJac63b.NvSO4sYJEOkoxfqa9tSxXZmwquV2RIq', '9426732146', NULL, NULL, 'S', 'iZXMqyvjgWFUUCHo7ua7tkH8Puhp6PcUuD8xOGg6dL7YD3mvF8iyKJupXen3', '0000-00-00 00:00:00', '2020-03-12 02:55:47'),
(249, 'Pradip Bhanderi', 'pradipb', '$2y$10$.c2gvsIrNwYw9.el.2E1DeSnXZTlvaw5d3K.Iq1QXGhyqRb6cOVE2', '9265911240', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:47'),
(250, 'Priyanka Sarapdadia', '190701129', '$2y$10$t7MKYh3Bnn0HFwrMn4FfqeM6oMlBe3gexO0U3vw/GhBsny8JH1EbS', '8849541949', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:47'),
(251, 'Purva Patel', '190801104', '$2y$10$GnA.CrKm4byGe1/CjWbiBOrgdNfyfpISrVFQoMf.damtclbJbSd8K', '7285065521', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:47'),
(252, 'Riddhi Chaudhari', '190701023', '$2y$10$qLwSLRawl3u4Ml1kbfXoBuqKJR1VmIP26NrhxoscvxKwoyOQMGb7e', '9328060496', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:47'),
(253, 'Riddhi Chovatiya', '190341009', '$2y$10$VJWjOH1tYJGz32aVUEDj2.kORed7efjyb7wtoJhPz8yo6RT1zO0Ge', '9879550159', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:47'),
(254, 'Ritika Vekariya', '190801167', '$2y$10$2uWLc5RG6jH8gT7kkzpZveQTzktpIt8nqN1HGlAO/dm5uVSeisKnq', '6354504722', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:47'),
(255, 'Riya Parmar', '190801097', '$2y$10$X5ww.js/KxfnrKVY3Rxyre8a0NWgqJNQtTAK.gZPDq6IiJEC.PG12', '9316397363', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:47'),
(256, 'Rushikesh Sherasiya', '190802110', '$2y$10$3n.B2GlzuR2TSPB2ev3f3uuXWpVWjcW.cy3T4UHysuLE6S0lLLt/G', '9904636859', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:47'),
(257, 'Sahil Hapaliya', '190301056', '$2y$10$y8.GgbdZmN.ndj6ff7J1Yus2Fy57InqqBRULqgQlrTP0PiOliiJEe', '9909092159', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:47'),
(258, 'Sapna Chothani', '190301031', '$2y$10$3ve3S8zBvXRhJ8mI3IRHBO2qEE.xFG9k6ltfCWxpivaGFeBCMkYqi', '9510684195', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:47'),
(259, 'Savan Savaliya', '190802102', '$2y$10$UNcMZPyWnHVuQIev0MacZOivGuX9.zpoSGv/7eEdrntaNYbc9m2F.', '8140808580', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:47'),
(261, 'Shreya Rajpera', '190801112', '$2y$10$BZ4ysR8RLGzoTP7.3gaLJ.f/XYK4.1zHpFnCwkFzuIQTmpUrXSGm2', '9429076203', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:48'),
(262, 'Shyam Gadhiya', '190301048', '$2y$10$9jwcFZiDlhbgalNFZp/ijOkdYlU3V.crd8nPACr7aET6c/0TvGCi2', '8200763083', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:48'),
(263, 'Smit Patel', '190802083', '$2y$10$rpKifb/vYV/MkOX1zuqamOjsbUA7iWJNvGwjkaYabZ9sTpR5BEXmO', '9825842423', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:48'),
(264, 'Sumit Sabhaya', '190802098', '$2y$10$uyHWhBGlkfg91jS/dRXIF.mB62lcIcEKMHJUwom1Os1BxfNL/Wg.q', '9426306721', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:48'),
(265, 'Suraj Parmar', '190802082', '$2y$10$GnFkuG0iam/H.HWvuqJXIOF3ExJRoawzxCV0IbDMVKJ.cxzj1u3fO', '9265065554', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:48'),
(266, 'Urmi Dadhaniya', '190301034', '$2y$10$Qj9rOJBZiG5UYWtKC.d27OhpQv953/4qQljV4oMZvD6KSk0HtEcjm', '9510927906', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:48'),
(267, 'Urvi Dalsaniya', '190701033', '$2y$10$Zp57.eQ5KQuzW1tgs5ooT.pVbnQcEJNbt9utAow1XOdLxZMNq.zG6', '9328084586', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:48'),
(268, 'Yash Aiya', '190301003', '$2y$10$tEWezgR7SkukpWyrfCVa/OXo8gZ4YS6M6U.TiCWJdNXe0B0dDdGay', '8866310363', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:48'),
(269, 'Yashvi Nathani', '192801001', '$2y$10$7q4X46ez2GaPHuvA09B1E.DUhYiaXR41kW7laR0B9gKz6WHWn2if.', '7984828871', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:48'),
(270, 'Hardik Ghodasara', 'hardikg', '$2y$10$aKkrjM7jU.aDO264HzIrAO0DIhH0WvIL8pojFRnf2SQ1EoldzJFDa', '123456789', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:48'),
(271, 'Kagathara Jainish', 'jainishk', '$2y$10$hSbMoDfhOA5Zr.46qv3A0.SjVESetPQaquWMxGYxe2v8zFtCk7GAS', '123456789', NULL, NULL, 'S', 'vsO2biFCuC7IM4vKrwhiszuR4pBLJRUYfG2A9r59uj0OJFnn47mBRa0gtMgo', '0000-00-00 00:00:00', '2020-03-12 02:55:48'),
(272, 'Himanshu Solanki', 'himanshus', '$2y$10$.hKD.ZSysKRBXQq90yAkmeaG2RLE1GeJlmjbLY.cS6IE1UBwD3haK', '123456789', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:48'),
(273, 'Dipen Chhatrola', 'dipenc', '$2y$10$xSVxxcFXI7JPvCdyiKaU4O/YzbTSqxYFc6PMHJ42fCXK7PF3kL4UG', '123456789', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:48');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `mobile`, `address`, `city`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(274, 'Khemani Harnam', 'harnamk', '$2y$10$NK2tddRM65YJi9UzvoWbXOGLlIMafLaoma406PZZewQ.ThAS1r2HK', '123456789', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:48'),
(275, 'Tushar Rathod', 'tusharr', '$2y$10$1J4uPTqkEh5tuIWrNKBfseLQPm7vZ5p.rWNhrCGKxLsl32u0TP7MS', '123456789', NULL, NULL, 'S', NULL, '0000-00-00 00:00:00', '2020-03-12 02:55:48');

-- --------------------------------------------------------

--
-- Table structure for table `user_quizzes`
--

CREATE TABLE `user_quizzes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `hours` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `minutes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `seconds` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `mark` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `total_mark` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_quizzes`
--

INSERT INTO `user_quizzes` (`id`, `user_id`, `topic_id`, `hours`, `minutes`, `seconds`, `mark`, `total_mark`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 1, '0', '19', '44', '5', '24', 'quiz', '2020-04-24 08:11:07', '2020-04-28 09:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `user_topics`
--

CREATE TABLE `user_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_topic_id_foreign` (`topic_id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `copyrighttexts`
--
ALTER TABLE `copyrighttexts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_topic_id_foreign` (`topic_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_icons`
--
ALTER TABLE `social_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic_user`
--
ALTER TABLE `topic_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_user_user_id_foreign` (`user_id`),
  ADD KEY `topic_user_topic_id_foreign` (`topic_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_quizzes`
--
ALTER TABLE `user_quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_topics`
--
ALTER TABLE `user_topics`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `copyrighttexts`
--
ALTER TABLE `copyrighttexts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_icons`
--
ALTER TABLE `social_icons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `topic_user`
--
ALTER TABLE `topic_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT for table `user_quizzes`
--
ALTER TABLE `user_quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_topics`
--
ALTER TABLE `user_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
