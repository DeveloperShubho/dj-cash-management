-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2024 at 12:16 PM
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
-- Database: `pettycash_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add pcash100 user', 1, 'add_pcash100user'),
(2, 'Can change pcash100 user', 1, 'change_pcash100user'),
(3, 'Can delete pcash100 user', 1, 'delete_pcash100user'),
(4, 'Can view pcash100 user', 1, 'view_pcash100user'),
(5, 'Can add pcash150 bank', 2, 'add_pcash150bank'),
(6, 'Can change pcash150 bank', 2, 'change_pcash150bank'),
(7, 'Can delete pcash150 bank', 2, 'delete_pcash150bank'),
(8, 'Can view pcash150 bank', 2, 'view_pcash150bank'),
(9, 'Can add pcash250 addcredit', 3, 'add_pcash250addcredit'),
(10, 'Can change pcash250 addcredit', 3, 'change_pcash250addcredit'),
(11, 'Can delete pcash250 addcredit', 3, 'delete_pcash250addcredit'),
(12, 'Can view pcash250 addcredit', 3, 'view_pcash250addcredit'),
(13, 'Can add log entry', 4, 'add_logentry'),
(14, 'Can change log entry', 4, 'change_logentry'),
(15, 'Can delete log entry', 4, 'delete_logentry'),
(16, 'Can view log entry', 4, 'view_logentry'),
(17, 'Can add permission', 5, 'add_permission'),
(18, 'Can change permission', 5, 'change_permission'),
(19, 'Can delete permission', 5, 'delete_permission'),
(20, 'Can view permission', 5, 'view_permission'),
(21, 'Can add group', 6, 'add_group'),
(22, 'Can change group', 6, 'change_group'),
(23, 'Can delete group', 6, 'delete_group'),
(24, 'Can view group', 6, 'view_group'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add content type', 8, 'add_contenttype'),
(30, 'Can change content type', 8, 'change_contenttype'),
(31, 'Can delete content type', 8, 'delete_contenttype'),
(32, 'Can view content type', 8, 'view_contenttype'),
(33, 'Can add session', 9, 'add_session'),
(34, 'Can change session', 9, 'change_session'),
(35, 'Can delete session', 9, 'delete_session'),
(36, 'Can view session', 9, 'view_session'),
(37, 'Can add pcash200 expnhead', 10, 'add_pcash200expnhead'),
(38, 'Can change pcash200 expnhead', 10, 'change_pcash200expnhead'),
(39, 'Can delete pcash200 expnhead', 10, 'delete_pcash200expnhead'),
(40, 'Can view pcash200 expnhead', 10, 'view_pcash200expnhead');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$31o8HYWNk2KAuet6JufPSH$rsFh1tANYjBrjRCI1JFDVN16Sl7FnxlxDpqh4fE9bXs=', '2024-10-04 09:13:53.112319', 1, 'admin', '', '', '', 1, 1, '2024-09-09 10:05:37.400895');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-09-10 05:03:59.806037', '1', 'Pcash250Addcredit object (1)', 3, '', 3, 1),
(2, '2024-09-10 07:51:22.338572', '4', 'Pcash250Addcredit object (4)', 3, '', 3, 1),
(3, '2024-09-10 07:51:22.338572', '3', 'Pcash250Addcredit object (3)', 3, '', 3, 1),
(4, '2024-09-10 07:51:22.342073', '2', 'Pcash250Addcredit object (2)', 3, '', 3, 1),
(5, '2024-09-10 08:12:47.611109', '11', 'Pcash250Addcredit object (11)', 3, '', 3, 1),
(6, '2024-09-10 08:12:47.612106', '10', 'Pcash250Addcredit object (10)', 3, '', 3, 1),
(7, '2024-09-10 08:12:47.613547', '9', 'Pcash250Addcredit object (9)', 3, '', 3, 1),
(8, '2024-09-10 08:12:47.615134', '8', 'Pcash250Addcredit object (8)', 3, '', 3, 1),
(9, '2024-09-10 08:12:47.616575', '7', 'Pcash250Addcredit object (7)', 3, '', 3, 1),
(10, '2024-09-10 08:12:47.617580', '6', 'Pcash250Addcredit object (6)', 3, '', 3, 1),
(11, '2024-09-10 08:12:47.618580', '5', 'Pcash250Addcredit object (5)', 3, '', 3, 1),
(12, '2024-09-11 05:25:39.754653', '14', 'Pcash250Addcredit object (14)', 3, '', 3, 1),
(13, '2024-09-11 05:25:39.757065', '13', 'Pcash250Addcredit object (13)', 3, '', 3, 1),
(14, '2024-09-11 05:25:39.759180', '12', 'Pcash250Addcredit object (12)', 3, '', 3, 1),
(15, '2024-09-11 05:32:15.555335', '4', 'Pcash300ExpnGist object (4)', 3, '', 11, 1),
(16, '2024-09-11 05:32:21.154174', '7', 'Pcash350ExpnDetails object (7)', 3, '', 12, 1),
(17, '2024-09-11 05:32:21.157449', '6', 'Pcash350ExpnDetails object (6)', 3, '', 12, 1),
(18, '2024-09-11 06:09:26.494786', '11', 'Pcash350ExpnDetails object (11)', 3, '', 12, 1),
(19, '2024-09-11 06:09:26.503673', '10', 'Pcash350ExpnDetails object (10)', 3, '', 12, 1),
(20, '2024-09-11 06:09:26.505645', '9', 'Pcash350ExpnDetails object (9)', 3, '', 12, 1),
(21, '2024-09-11 06:09:26.505645', '8', 'Pcash350ExpnDetails object (8)', 3, '', 12, 1),
(22, '2024-09-11 06:09:31.823506', '6', 'Pcash300ExpnGist object (6)', 3, '', 11, 1),
(23, '2024-09-11 06:09:31.827069', '5', 'Pcash300ExpnGist object (5)', 3, '', 11, 1),
(24, '2024-09-11 06:10:22.036412', '12', 'Pcash350ExpnDetails object (12)', 3, '', 12, 1),
(25, '2024-09-11 06:10:27.581483', '7', 'Pcash300ExpnGist object (7)', 3, '', 11, 1),
(26, '2024-09-11 06:13:31.068930', '8', 'Pcash300ExpnGist object (8)', 3, '', 11, 1),
(27, '2024-09-11 06:13:36.813503', '13', 'Pcash350ExpnDetails object (13)', 3, '', 12, 1),
(28, '2024-09-11 06:20:32.901261', '9', 'Pcash300ExpnGist object (9)', 3, '', 11, 1),
(29, '2024-09-11 06:20:46.268086', '15', 'Pcash350ExpnDetails object (15)', 3, '', 12, 1),
(30, '2024-09-11 06:20:46.277578', '14', 'Pcash350ExpnDetails object (14)', 3, '', 12, 1),
(31, '2024-09-11 06:41:11.902744', '21', 'Pcash350ExpnDetails object (21)', 3, '', 12, 1),
(32, '2024-09-11 06:41:11.909777', '20', 'Pcash350ExpnDetails object (20)', 3, '', 12, 1),
(33, '2024-09-11 06:41:11.911170', '19', 'Pcash350ExpnDetails object (19)', 3, '', 12, 1),
(34, '2024-09-11 06:41:11.914376', '18', 'Pcash350ExpnDetails object (18)', 3, '', 12, 1),
(35, '2024-09-11 06:41:11.916489', '17', 'Pcash350ExpnDetails object (17)', 3, '', 12, 1),
(36, '2024-09-11 06:41:11.918237', '16', 'Pcash350ExpnDetails object (16)', 3, '', 12, 1),
(37, '2024-09-11 06:41:17.117485', '12', 'Pcash300ExpnGist object (12)', 3, '', 11, 1),
(38, '2024-09-11 06:41:17.126616', '11', 'Pcash300ExpnGist object (11)', 3, '', 11, 1),
(39, '2024-09-11 06:41:17.130194', '10', 'Pcash300ExpnGist object (10)', 3, '', 11, 1),
(40, '2024-09-11 07:39:29.181956', '18', 'Pcash250Addcredit object (18)', 3, '', 3, 1),
(41, '2024-09-11 07:39:29.193303', '17', 'Pcash250Addcredit object (17)', 3, '', 3, 1),
(42, '2024-09-11 07:39:29.195519', '16', 'Pcash250Addcredit object (16)', 3, '', 3, 1),
(43, '2024-09-11 07:39:29.197548', '15', 'Pcash250Addcredit object (15)', 3, '', 3, 1),
(44, '2024-09-11 07:39:34.090074', '22', 'Pcash300ExpnGist object (22)', 3, '', 11, 1),
(45, '2024-09-11 07:39:34.096305', '21', 'Pcash300ExpnGist object (21)', 3, '', 11, 1),
(46, '2024-09-11 07:39:39.482608', '26', 'Pcash350ExpnDetails object (26)', 3, '', 12, 1),
(47, '2024-09-11 07:39:39.485296', '25', 'Pcash350ExpnDetails object (25)', 3, '', 12, 1),
(48, '2024-09-11 07:39:39.487300', '24', 'Pcash350ExpnDetails object (24)', 3, '', 12, 1),
(49, '2024-09-11 07:39:39.489428', '23', 'Pcash350ExpnDetails object (23)', 3, '', 12, 1),
(50, '2024-09-11 07:39:39.490408', '22', 'Pcash350ExpnDetails object (22)', 3, '', 12, 1),
(51, '2024-09-11 08:36:43.275118', '27', 'Pcash250Addcredit object (27)', 3, '', 3, 1),
(52, '2024-09-11 08:36:43.280480', '26', 'Pcash250Addcredit object (26)', 3, '', 3, 1),
(53, '2024-09-11 08:36:43.282821', '25', 'Pcash250Addcredit object (25)', 3, '', 3, 1),
(54, '2024-09-11 08:36:43.286872', '24', 'Pcash250Addcredit object (24)', 3, '', 3, 1),
(55, '2024-09-11 08:36:43.286872', '23', 'Pcash250Addcredit object (23)', 3, '', 3, 1),
(56, '2024-09-11 08:36:43.288897', '22', 'Pcash250Addcredit object (22)', 3, '', 3, 1),
(57, '2024-09-11 08:36:43.290426', '21', 'Pcash250Addcredit object (21)', 3, '', 3, 1),
(58, '2024-09-11 08:36:43.293908', '20', 'Pcash250Addcredit object (20)', 3, '', 3, 1),
(59, '2024-09-11 08:36:43.295139', '19', 'Pcash250Addcredit object (19)', 3, '', 3, 1),
(60, '2024-09-11 10:46:13.335225', '28', 'Pcash250Addcredit object (28)', 3, '', 3, 1),
(61, '2024-09-11 10:46:18.432913', '24', 'Pcash300ExpnGist object (24)', 3, '', 11, 1),
(62, '2024-09-11 10:46:18.435155', '23', 'Pcash300ExpnGist object (23)', 3, '', 11, 1),
(63, '2024-09-11 10:46:22.931108', '30', 'Pcash350ExpnDetails object (30)', 3, '', 12, 1),
(64, '2024-09-11 10:46:22.934512', '29', 'Pcash350ExpnDetails object (29)', 3, '', 12, 1),
(65, '2024-09-11 10:46:22.936382', '28', 'Pcash350ExpnDetails object (28)', 3, '', 12, 1),
(66, '2024-09-11 10:46:22.938090', '27', 'Pcash350ExpnDetails object (27)', 3, '', 12, 1),
(67, '2024-09-11 13:19:49.663969', '31', 'Pcash350ExpnDetails object (31)', 3, '', 12, 1),
(68, '2024-09-11 13:19:54.100760', '25', 'Pcash300ExpnGist object (25)', 3, '', 11, 1),
(69, '2024-09-11 13:19:59.476069', '35', 'Pcash250Addcredit object (35)', 3, '', 3, 1),
(70, '2024-09-11 13:19:59.476069', '34', 'Pcash250Addcredit object (34)', 3, '', 3, 1),
(71, '2024-09-11 13:19:59.476069', '33', 'Pcash250Addcredit object (33)', 3, '', 3, 1),
(72, '2024-09-11 13:19:59.476069', '32', 'Pcash250Addcredit object (32)', 3, '', 3, 1),
(73, '2024-09-11 13:19:59.485072', '31', 'Pcash250Addcredit object (31)', 3, '', 3, 1),
(74, '2024-09-11 13:19:59.485072', '30', 'Pcash250Addcredit object (30)', 3, '', 3, 1),
(75, '2024-09-11 13:19:59.485072', '29', 'Pcash250Addcredit object (29)', 3, '', 3, 1),
(76, '2024-09-12 06:55:44.962735', '37', 'Pcash250Addcredit object (37)', 3, '', 3, 1),
(77, '2024-09-12 06:55:44.967076', '36', 'Pcash250Addcredit object (36)', 3, '', 3, 1),
(78, '2024-09-12 08:27:45.355688', '40', 'Pcash250Addcredit object (40)', 3, '', 3, 1),
(79, '2024-09-12 08:27:45.359686', '39', 'Pcash250Addcredit object (39)', 3, '', 3, 1),
(80, '2024-09-12 08:27:45.362689', '38', 'Pcash250Addcredit object (38)', 3, '', 3, 1),
(81, '2024-09-13 05:01:23.976014', '44', 'Pcash250Addcredit object (44)', 3, '', 3, 1),
(82, '2024-09-13 05:01:23.978640', '43', 'Pcash250Addcredit object (43)', 3, '', 3, 1),
(83, '2024-09-13 05:01:23.980656', '42', 'Pcash250Addcredit object (42)', 3, '', 3, 1),
(84, '2024-09-13 05:01:23.981668', '41', 'Pcash250Addcredit object (41)', 3, '', 3, 1),
(85, '2024-09-13 06:53:41.845246', '47', 'Pcash250Addcredit object (47)', 3, '', 3, 1),
(86, '2024-09-13 06:53:41.850063', '46', 'Pcash250Addcredit object (46)', 3, '', 3, 1),
(87, '2024-09-13 06:53:41.851599', '45', 'Pcash250Addcredit object (45)', 3, '', 3, 1),
(88, '2024-09-13 07:22:24.004695', '48', 'Pcash250Addcredit object (48)', 3, '', 3, 1),
(89, '2024-09-13 07:44:22.406258', '50', 'Pcash250Addcredit object (50)', 3, '', 3, 1),
(90, '2024-09-13 07:44:22.409272', '49', 'Pcash250Addcredit object (49)', 3, '', 3, 1),
(91, '2024-09-13 08:19:40.404227', '55', 'Pcash250Addcredit object (55)', 3, '', 3, 1),
(92, '2024-09-13 08:19:40.406583', '54', 'Pcash250Addcredit object (54)', 3, '', 3, 1),
(93, '2024-09-13 08:19:40.407600', '53', 'Pcash250Addcredit object (53)', 3, '', 3, 1),
(94, '2024-09-13 08:19:40.410056', '52', 'Pcash250Addcredit object (52)', 3, '', 3, 1),
(95, '2024-09-13 08:19:40.412065', '51', 'Pcash250Addcredit object (51)', 3, '', 3, 1),
(96, '2024-09-13 08:21:27.685549', '56', 'Pcash250Addcredit object (56)', 3, '', 3, 1),
(97, '2024-09-13 08:25:04.580457', '58', 'Pcash250Addcredit object (58)', 3, '', 3, 1),
(98, '2024-09-13 08:25:04.582765', '57', 'Pcash250Addcredit object (57)', 3, '', 3, 1),
(99, '2024-09-13 09:41:39.205734', '63', 'Pcash250Addcredit object (63)', 3, '', 3, 1),
(100, '2024-09-13 09:41:39.205734', '62', 'Pcash250Addcredit object (62)', 3, '', 3, 1),
(101, '2024-09-13 09:41:39.210585', '61', 'Pcash250Addcredit object (61)', 3, '', 3, 1),
(102, '2024-09-13 09:41:39.211919', '60', 'Pcash250Addcredit object (60)', 3, '', 3, 1),
(103, '2024-09-13 09:41:39.214071', '59', 'Pcash250Addcredit object (59)', 3, '', 3, 1),
(104, '2024-09-13 11:52:00.880135', '67', 'Pcash250Addcredit object (67)', 3, '', 3, 1),
(105, '2024-09-13 11:52:00.880135', '66', 'Pcash250Addcredit object (66)', 3, '', 3, 1),
(106, '2024-09-13 11:52:00.880135', '65', 'Pcash250Addcredit object (65)', 3, '', 3, 1),
(107, '2024-09-13 11:52:00.880135', '64', 'Pcash250Addcredit object (64)', 3, '', 3, 1),
(108, '2024-09-14 04:49:29.324295', '71', 'Pcash250Addcredit object (71)', 3, '', 3, 1),
(109, '2024-09-14 04:49:29.328428', '70', 'Pcash250Addcredit object (70)', 3, '', 3, 1),
(110, '2024-09-14 04:49:29.329401', '69', 'Pcash250Addcredit object (69)', 3, '', 3, 1),
(111, '2024-09-14 04:49:29.329401', '68', 'Pcash250Addcredit object (68)', 3, '', 3, 1),
(112, '2024-09-14 05:20:27.621925', '28', 'Pcash300ExpnGist object (28)', 3, '', 11, 1),
(113, '2024-09-14 05:20:27.625836', '27', 'Pcash300ExpnGist object (27)', 3, '', 11, 1),
(114, '2024-09-14 05:20:27.627880', '26', 'Pcash300ExpnGist object (26)', 3, '', 11, 1),
(115, '2024-09-14 05:20:32.274240', '39', 'Pcash350ExpnDetails object (39)', 3, '', 12, 1),
(116, '2024-09-14 05:20:32.274240', '38', 'Pcash350ExpnDetails object (38)', 3, '', 12, 1),
(117, '2024-09-14 05:20:32.274240', '37', 'Pcash350ExpnDetails object (37)', 3, '', 12, 1),
(118, '2024-09-14 05:20:32.282252', '36', 'Pcash350ExpnDetails object (36)', 3, '', 12, 1),
(119, '2024-09-14 05:20:32.282252', '35', 'Pcash350ExpnDetails object (35)', 3, '', 12, 1),
(120, '2024-09-14 05:20:32.282252', '34', 'Pcash350ExpnDetails object (34)', 3, '', 12, 1),
(121, '2024-09-14 05:20:32.282252', '33', 'Pcash350ExpnDetails object (33)', 3, '', 12, 1),
(122, '2024-09-14 05:20:32.290534', '32', 'Pcash350ExpnDetails object (32)', 3, '', 12, 1),
(123, '2024-09-14 07:10:04.290364', '33', 'Pcash300ExpnGist object (33)', 3, '', 11, 1),
(124, '2024-09-14 07:10:04.290364', '32', 'Pcash300ExpnGist object (32)', 3, '', 11, 1),
(125, '2024-09-14 07:10:04.290364', '31', 'Pcash300ExpnGist object (31)', 3, '', 11, 1),
(126, '2024-09-14 07:10:04.297836', '30', 'Pcash300ExpnGist object (30)', 3, '', 11, 1),
(127, '2024-09-14 07:10:04.299812', '29', 'Pcash300ExpnGist object (29)', 3, '', 11, 1),
(128, '2024-09-14 07:10:09.460790', '45', 'Pcash350ExpnDetails object (45)', 3, '', 12, 1),
(129, '2024-09-14 07:10:09.462583', '44', 'Pcash350ExpnDetails object (44)', 3, '', 12, 1),
(130, '2024-09-14 07:10:09.464626', '43', 'Pcash350ExpnDetails object (43)', 3, '', 12, 1),
(131, '2024-09-14 07:10:09.465724', '42', 'Pcash350ExpnDetails object (42)', 3, '', 12, 1),
(132, '2024-09-14 07:10:09.469058', '41', 'Pcash350ExpnDetails object (41)', 3, '', 12, 1),
(133, '2024-09-14 07:10:09.470737', '40', 'Pcash350ExpnDetails object (40)', 3, '', 12, 1),
(134, '2024-09-19 04:57:47.323107', '71', 'Pcash400Adjustment object (71)', 3, '', 13, 1),
(135, '2024-09-19 04:57:47.326107', '70', 'Pcash400Adjustment object (70)', 3, '', 13, 1),
(136, '2024-09-19 04:57:47.327107', '69', 'Pcash400Adjustment object (69)', 3, '', 13, 1),
(137, '2024-09-19 04:57:47.328117', '68', 'Pcash400Adjustment object (68)', 3, '', 13, 1),
(138, '2024-09-19 04:57:47.328621', '67', 'Pcash400Adjustment object (67)', 3, '', 13, 1),
(139, '2024-09-19 04:57:47.329985', '66', 'Pcash400Adjustment object (66)', 3, '', 13, 1),
(140, '2024-09-19 04:57:47.330490', '65', 'Pcash400Adjustment object (65)', 3, '', 13, 1),
(141, '2024-09-19 04:59:15.248238', '76', 'Pcash250Addcredit object (76)', 3, '', 3, 1),
(142, '2024-09-19 04:59:15.249671', '75', 'Pcash250Addcredit object (75)', 3, '', 3, 1),
(143, '2024-09-19 04:59:15.250681', '74', 'Pcash250Addcredit object (74)', 3, '', 3, 1),
(144, '2024-09-19 04:59:15.251910', '73', 'Pcash250Addcredit object (73)', 3, '', 3, 1),
(145, '2024-09-19 04:59:15.252915', '72', 'Pcash250Addcredit object (72)', 3, '', 3, 1),
(146, '2024-09-19 04:59:26.840365', '34', 'Pcash300ExpnGist object (34)', 3, '', 11, 1),
(147, '2024-09-19 04:59:33.507301', '46', 'Pcash350ExpnDetails object (46)', 3, '', 12, 1),
(148, '2024-09-19 05:28:09.985668', '79', 'Pcash250Addcredit object (79)', 3, '', 3, 1),
(149, '2024-09-19 05:28:09.987665', '78', 'Pcash250Addcredit object (78)', 3, '', 3, 1),
(150, '2024-09-19 05:28:09.988807', '77', 'Pcash250Addcredit object (77)', 3, '', 3, 1),
(151, '2024-09-19 05:36:10.137103', '49', 'Pcash350ExpnDetails object (49)', 3, '', 12, 1),
(152, '2024-09-19 05:36:10.138114', '48', 'Pcash350ExpnDetails object (48)', 3, '', 12, 1),
(153, '2024-09-19 05:36:10.139941', '47', 'Pcash350ExpnDetails object (47)', 3, '', 12, 1),
(154, '2024-09-19 05:36:16.444097', '36', 'Pcash300ExpnGist object (36)', 3, '', 11, 1),
(155, '2024-09-19 05:36:16.445156', '35', 'Pcash300ExpnGist object (35)', 3, '', 11, 1),
(156, '2024-09-19 06:30:33.335706', '79', 'Pcash400Adjustment object (79)', 3, '', 13, 1),
(157, '2024-09-19 06:30:33.337998', '78', 'Pcash400Adjustment object (78)', 3, '', 13, 1),
(158, '2024-09-19 06:30:33.339472', '77', 'Pcash400Adjustment object (77)', 3, '', 13, 1),
(159, '2024-09-19 06:30:33.340839', '76', 'Pcash400Adjustment object (76)', 3, '', 13, 1),
(160, '2024-09-19 06:30:33.341961', '75', 'Pcash400Adjustment object (75)', 3, '', 13, 1),
(161, '2024-09-19 06:30:33.343232', '74', 'Pcash400Adjustment object (74)', 3, '', 13, 1),
(162, '2024-09-19 06:30:33.343232', '73', 'Pcash400Adjustment object (73)', 3, '', 13, 1),
(163, '2024-09-19 06:30:33.344683', '72', 'Pcash400Adjustment object (72)', 3, '', 13, 1),
(164, '2024-09-19 06:30:39.753277', '81', 'Pcash400Adjustment object (81)', 3, '', 13, 1),
(165, '2024-09-19 06:30:39.753782', '80', 'Pcash400Adjustment object (80)', 3, '', 13, 1),
(166, '2024-09-19 06:33:08.455580', '83', 'Pcash400Adjustment object (83)', 3, '', 13, 1),
(167, '2024-09-19 06:33:08.456581', '82', 'Pcash400Adjustment object (82)', 3, '', 13, 1),
(168, '2024-09-19 08:19:15.544795', '88', 'Pcash400Adjustment object (88)', 3, '', 13, 1),
(169, '2024-09-19 08:19:15.545792', '87', 'Pcash400Adjustment object (87)', 3, '', 13, 1),
(170, '2024-09-19 08:19:15.546792', '86', 'Pcash400Adjustment object (86)', 3, '', 13, 1),
(171, '2024-09-19 08:19:15.547792', '85', 'Pcash400Adjustment object (85)', 3, '', 13, 1),
(172, '2024-09-19 08:19:15.548792', '84', 'Pcash400Adjustment object (84)', 3, '', 13, 1),
(173, '2024-09-19 09:46:00.430907', '89', 'Pcash400Adjustment object (89)', 3, '', 13, 1),
(174, '2024-09-19 10:13:37.516023', '50', 'Pcash350ExpnDetails object (50)', 3, '', 12, 1),
(175, '2024-09-19 10:13:37.519822', '51', 'Pcash350ExpnDetails object (51)', 3, '', 12, 1),
(176, '2024-09-19 10:13:37.522077', '52', 'Pcash350ExpnDetails object (52)', 3, '', 12, 1),
(177, '2024-09-19 10:13:42.700636', '39', 'Pcash300ExpnGist object (39)', 3, '', 11, 1),
(178, '2024-09-19 10:13:42.703211', '38', 'Pcash300ExpnGist object (38)', 3, '', 11, 1),
(179, '2024-09-19 10:13:42.705917', '37', 'Pcash300ExpnGist object (37)', 3, '', 11, 1),
(180, '2024-09-19 10:13:49.501082', '94', 'Pcash400Adjustment object (94)', 3, '', 13, 1),
(181, '2024-09-19 10:13:49.504103', '93', 'Pcash400Adjustment object (93)', 3, '', 13, 1),
(182, '2024-09-19 10:13:49.505115', '92', 'Pcash400Adjustment object (92)', 3, '', 13, 1),
(183, '2024-09-19 10:13:49.507550', '91', 'Pcash400Adjustment object (91)', 3, '', 13, 1),
(184, '2024-09-19 10:13:49.509706', '90', 'Pcash400Adjustment object (90)', 3, '', 13, 1),
(185, '2024-09-19 10:13:54.248302', '83', 'Pcash250Addcredit object (83)', 3, '', 3, 1),
(186, '2024-09-19 10:13:54.259408', '82', 'Pcash250Addcredit object (82)', 3, '', 3, 1),
(187, '2024-09-19 10:13:54.260418', '81', 'Pcash250Addcredit object (81)', 3, '', 3, 1),
(188, '2024-09-19 10:13:54.265005', '80', 'Pcash250Addcredit object (80)', 3, '', 3, 1),
(189, '2024-09-19 11:12:05.398544', '103', 'Pcash400Adjustment object (103)', 3, '', 13, 1),
(190, '2024-09-19 11:12:05.402577', '102', 'Pcash400Adjustment object (102)', 3, '', 13, 1),
(191, '2024-09-19 11:12:05.404879', '101', 'Pcash400Adjustment object (101)', 3, '', 13, 1),
(192, '2024-09-19 11:12:05.406933', '100', 'Pcash400Adjustment object (100)', 3, '', 13, 1),
(193, '2024-09-19 11:12:05.408945', '99', 'Pcash400Adjustment object (99)', 3, '', 13, 1),
(194, '2024-09-19 11:12:05.409948', '98', 'Pcash400Adjustment object (98)', 3, '', 13, 1),
(195, '2024-09-19 11:12:05.411945', '97', 'Pcash400Adjustment object (97)', 3, '', 13, 1),
(196, '2024-09-19 11:12:05.414262', '96', 'Pcash400Adjustment object (96)', 3, '', 13, 1),
(197, '2024-09-19 11:12:05.416460', '95', 'Pcash400Adjustment object (95)', 3, '', 13, 1),
(198, '2024-09-19 11:12:26.120179', '43', 'Pcash300ExpnGist object (43)', 3, '', 11, 1),
(199, '2024-09-19 11:12:26.122171', '42', 'Pcash300ExpnGist object (42)', 3, '', 11, 1),
(200, '2024-09-19 11:12:26.123936', '41', 'Pcash300ExpnGist object (41)', 3, '', 11, 1),
(201, '2024-09-19 11:12:26.125620', '40', 'Pcash300ExpnGist object (40)', 3, '', 11, 1),
(202, '2024-09-19 11:12:30.424443', '56', 'Pcash350ExpnDetails object (56)', 3, '', 12, 1),
(203, '2024-09-19 11:12:30.431390', '55', 'Pcash350ExpnDetails object (55)', 3, '', 12, 1),
(204, '2024-09-19 11:12:30.433712', '54', 'Pcash350ExpnDetails object (54)', 3, '', 12, 1),
(205, '2024-09-19 11:12:30.434841', '53', 'Pcash350ExpnDetails object (53)', 3, '', 12, 1),
(206, '2024-09-19 11:38:39.754977', '106', 'Pcash400Adjustment object (106)', 3, '', 13, 1),
(207, '2024-09-19 11:38:39.760269', '105', 'Pcash400Adjustment object (105)', 3, '', 13, 1),
(208, '2024-09-19 11:38:39.762403', '104', 'Pcash400Adjustment object (104)', 3, '', 13, 1),
(209, '2024-09-19 11:51:47.920606', '109', 'Pcash400Adjustment object (109)', 3, '', 13, 1),
(210, '2024-09-19 11:51:47.924626', '108', 'Pcash400Adjustment object (108)', 3, '', 13, 1),
(211, '2024-09-19 11:51:47.925540', '107', 'Pcash400Adjustment object (107)', 3, '', 13, 1),
(212, '2024-09-19 11:51:53.963397', '59', 'Pcash350ExpnDetails object (59)', 3, '', 12, 1),
(213, '2024-09-19 11:51:53.965762', '58', 'Pcash350ExpnDetails object (58)', 3, '', 12, 1),
(214, '2024-09-19 11:51:53.968043', '57', 'Pcash350ExpnDetails object (57)', 3, '', 12, 1),
(215, '2024-09-19 11:51:58.482838', '45', 'Pcash300ExpnGist object (45)', 3, '', 11, 1),
(216, '2024-09-19 11:51:58.485382', '44', 'Pcash300ExpnGist object (44)', 3, '', 11, 1),
(217, '2024-09-19 11:52:04.963040', '85', 'Pcash250Addcredit object (85)', 3, '', 3, 1),
(218, '2024-09-19 11:52:04.965137', '84', 'Pcash250Addcredit object (84)', 3, '', 3, 1),
(219, '2024-09-19 12:13:30.900557', '112', 'Pcash400Adjustment object (112)', 3, '', 13, 1),
(220, '2024-09-19 12:13:30.903926', '111', 'Pcash400Adjustment object (111)', 3, '', 13, 1),
(221, '2024-09-19 12:13:30.904940', '110', 'Pcash400Adjustment object (110)', 3, '', 13, 1),
(222, '2024-09-19 12:25:33.864876', '8', 'Pcash200Expnhead object (8)', 3, '', 10, 1),
(223, '2024-09-19 12:25:33.891901', '1', 'Pcash200Expnhead object (1)', 3, '', 10, 1),
(224, '2024-09-19 12:25:38.026815', '88', 'Pcash250Addcredit object (88)', 3, '', 3, 1),
(225, '2024-09-19 12:25:38.028727', '87', 'Pcash250Addcredit object (87)', 3, '', 3, 1),
(226, '2024-09-19 12:25:38.028727', '86', 'Pcash250Addcredit object (86)', 3, '', 3, 1),
(227, '2024-09-19 12:25:42.148005', '60', 'Pcash350ExpnDetails object (60)', 3, '', 12, 1),
(228, '2024-09-19 12:27:17.389199', '46', 'Pcash300ExpnGist object (46)', 3, '', 11, 1),
(229, '2024-09-19 12:57:42.698428', '61', 'Pcash350ExpnDetails object (61)', 3, '', 12, 1),
(230, '2024-09-19 12:57:47.184962', '47', 'Pcash300ExpnGist object (47)', 3, '', 11, 1),
(231, '2024-09-19 13:37:02.799784', '115', 'Pcash400Adjustment object (115)', 3, '', 13, 1),
(232, '2024-09-19 13:37:02.805059', '114', 'Pcash400Adjustment object (114)', 3, '', 13, 1),
(233, '2024-09-19 13:37:02.807092', '113', 'Pcash400Adjustment object (113)', 3, '', 13, 1),
(234, '2024-09-19 13:54:49.204708', '117', 'Pcash400Adjustment object (117)', 3, '', 13, 1),
(235, '2024-09-19 13:54:49.204708', '116', 'Pcash400Adjustment object (116)', 3, '', 13, 1),
(236, '2024-09-19 13:57:00.532233', '118', 'Pcash400Adjustment object (118)', 3, '', 13, 1),
(237, '2024-09-19 14:04:41.121701', '119', 'Pcash400Adjustment object (119)', 3, '', 13, 1),
(238, '2024-09-19 14:04:57.656528', '120', 'Pcash400Adjustment object (120)', 3, '', 13, 1),
(239, '2024-09-19 14:11:14.328890', '121', 'Pcash400Adjustment object (121)', 3, '', 13, 1),
(240, '2024-09-19 14:21:36.372536', '122', 'Pcash400Adjustment object (122)', 3, '', 13, 1),
(241, '2024-09-19 14:21:49.673299', '95', 'Pcash250Addcredit object (95)', 3, '', 3, 1),
(242, '2024-09-19 14:21:49.673299', '94', 'Pcash250Addcredit object (94)', 3, '', 3, 1),
(243, '2024-09-19 14:21:49.679272', '93', 'Pcash250Addcredit object (93)', 3, '', 3, 1),
(244, '2024-09-19 14:24:12.205980', '65', 'Pcash350ExpnDetails object (65)', 3, '', 12, 1),
(245, '2024-09-19 14:24:12.208820', '64', 'Pcash350ExpnDetails object (64)', 3, '', 12, 1),
(246, '2024-09-19 14:24:12.210831', '63', 'Pcash350ExpnDetails object (63)', 3, '', 12, 1),
(247, '2024-09-19 14:24:12.213581', '62', 'Pcash350ExpnDetails object (62)', 3, '', 12, 1),
(248, '2024-09-19 14:24:21.310634', '92', 'Pcash250Addcredit object (92)', 3, '', 3, 1),
(249, '2024-09-19 14:24:21.313459', '91', 'Pcash250Addcredit object (91)', 3, '', 3, 1),
(250, '2024-09-19 14:24:21.315649', '90', 'Pcash250Addcredit object (90)', 3, '', 3, 1),
(251, '2024-09-19 14:24:21.316648', '89', 'Pcash250Addcredit object (89)', 3, '', 3, 1),
(252, '2024-09-19 14:24:26.423900', '51', 'Pcash300ExpnGist object (51)', 3, '', 11, 1),
(253, '2024-09-19 14:24:26.427478', '50', 'Pcash300ExpnGist object (50)', 3, '', 11, 1),
(254, '2024-09-19 14:24:26.429522', '49', 'Pcash300ExpnGist object (49)', 3, '', 11, 1),
(255, '2024-09-19 14:24:26.429522', '48', 'Pcash300ExpnGist object (48)', 3, '', 11, 1),
(256, '2024-09-19 14:34:24.937219', '127', 'Pcash400Adjustment object (127)', 3, '', 13, 1),
(257, '2024-09-19 14:34:24.941212', '126', 'Pcash400Adjustment object (126)', 3, '', 13, 1),
(258, '2024-09-19 14:34:24.943412', '125', 'Pcash400Adjustment object (125)', 3, '', 13, 1),
(259, '2024-09-19 14:34:24.944432', '124', 'Pcash400Adjustment object (124)', 3, '', 13, 1),
(260, '2024-09-19 14:34:24.946424', '123', 'Pcash400Adjustment object (123)', 3, '', 13, 1),
(261, '2024-09-20 04:43:30.390441', '99', 'Pcash250Addcredit object (99)', 3, '', 3, 1),
(262, '2024-09-20 04:43:30.391539', '98', 'Pcash250Addcredit object (98)', 3, '', 3, 1),
(263, '2024-09-20 04:43:30.392545', '97', 'Pcash250Addcredit object (97)', 3, '', 3, 1),
(264, '2024-09-20 04:43:30.393551', '96', 'Pcash250Addcredit object (96)', 3, '', 3, 1),
(265, '2024-09-20 04:43:35.639276', '52', 'Pcash300ExpnGist object (52)', 3, '', 11, 1),
(266, '2024-09-20 04:43:42.582262', '66', 'Pcash350ExpnDetails object (66)', 3, '', 12, 1),
(267, '2024-09-20 04:43:49.696172', '130', 'Pcash400Adjustment object (130)', 3, '', 13, 1),
(268, '2024-09-20 04:43:49.697096', '129', 'Pcash400Adjustment object (129)', 3, '', 13, 1),
(269, '2024-09-20 04:43:49.697609', '128', 'Pcash400Adjustment object (128)', 3, '', 13, 1),
(270, '2024-09-20 05:12:28.749428', '103', 'Pcash250Addcredit object (103)', 3, '', 3, 1),
(271, '2024-09-20 05:32:20.942311', '55', 'Pcash300ExpnGist object (55)', 3, '', 11, 1),
(272, '2024-09-20 05:32:20.944291', '54', 'Pcash300ExpnGist object (54)', 3, '', 11, 1),
(273, '2024-09-20 05:32:20.944291', '53', 'Pcash300ExpnGist object (53)', 3, '', 11, 1),
(274, '2024-09-20 05:32:25.444665', '69', 'Pcash350ExpnDetails object (69)', 3, '', 12, 1),
(275, '2024-09-20 05:32:25.445592', '68', 'Pcash350ExpnDetails object (68)', 3, '', 12, 1),
(276, '2024-09-20 05:32:25.446677', '67', 'Pcash350ExpnDetails object (67)', 3, '', 12, 1),
(277, '2024-09-20 05:32:30.672280', '138', 'Pcash400Adjustment object (138)', 3, '', 13, 1),
(278, '2024-09-20 05:32:30.673351', '137', 'Pcash400Adjustment object (137)', 3, '', 13, 1),
(279, '2024-09-20 05:32:30.674383', '136', 'Pcash400Adjustment object (136)', 3, '', 13, 1),
(280, '2024-09-20 05:32:30.675396', '135', 'Pcash400Adjustment object (135)', 3, '', 13, 1),
(281, '2024-09-20 05:32:30.676118', '134', 'Pcash400Adjustment object (134)', 3, '', 13, 1),
(282, '2024-09-20 05:32:30.676118', '133', 'Pcash400Adjustment object (133)', 3, '', 13, 1),
(283, '2024-09-20 05:32:30.677609', '132', 'Pcash400Adjustment object (132)', 3, '', 13, 1),
(284, '2024-09-20 05:32:30.678736', '131', 'Pcash400Adjustment object (131)', 3, '', 13, 1),
(285, '2024-09-20 07:22:44.525448', '148', 'Pcash400Adjustment object (148)', 3, '', 13, 1),
(286, '2024-09-20 07:22:44.526543', '147', 'Pcash400Adjustment object (147)', 3, '', 13, 1),
(287, '2024-09-20 07:22:44.527451', '146', 'Pcash400Adjustment object (146)', 3, '', 13, 1),
(288, '2024-09-20 07:22:44.528458', '145', 'Pcash400Adjustment object (145)', 3, '', 13, 1),
(289, '2024-09-20 07:22:44.528458', '144', 'Pcash400Adjustment object (144)', 3, '', 13, 1),
(290, '2024-09-20 07:22:44.529754', '143', 'Pcash400Adjustment object (143)', 3, '', 13, 1),
(291, '2024-09-20 07:22:44.530807', '142', 'Pcash400Adjustment object (142)', 3, '', 13, 1),
(292, '2024-09-20 07:22:44.532037', '141', 'Pcash400Adjustment object (141)', 3, '', 13, 1),
(293, '2024-09-20 07:22:44.533148', '140', 'Pcash400Adjustment object (140)', 3, '', 13, 1),
(294, '2024-09-20 07:22:44.533148', '139', 'Pcash400Adjustment object (139)', 3, '', 13, 1),
(295, '2024-09-20 08:03:29.966692', '150', 'Pcash400Adjustment object (150)', 3, '', 13, 1),
(296, '2024-09-20 08:03:29.967692', '149', 'Pcash400Adjustment object (149)', 3, '', 13, 1),
(297, '2024-09-20 08:27:09.659895', '156', 'Pcash400Adjustment object (156)', 3, '', 13, 1),
(298, '2024-09-20 08:27:09.662629', '155', 'Pcash400Adjustment object (155)', 3, '', 13, 1),
(299, '2024-09-20 08:27:09.664636', '154', 'Pcash400Adjustment object (154)', 3, '', 13, 1),
(300, '2024-09-20 08:27:09.669047', '153', 'Pcash400Adjustment object (153)', 3, '', 13, 1),
(301, '2024-09-20 08:27:09.671271', '152', 'Pcash400Adjustment object (152)', 3, '', 13, 1),
(302, '2024-09-20 08:27:09.672763', '151', 'Pcash400Adjustment object (151)', 3, '', 13, 1),
(303, '2024-09-20 09:31:21.225164', '164', 'Pcash400Adjustment object (164)', 3, '', 13, 1),
(304, '2024-09-20 09:31:21.227162', '163', 'Pcash400Adjustment object (163)', 3, '', 13, 1),
(305, '2024-09-20 09:31:21.228164', '162', 'Pcash400Adjustment object (162)', 3, '', 13, 1),
(306, '2024-09-20 09:31:21.228164', '161', 'Pcash400Adjustment object (161)', 3, '', 13, 1),
(307, '2024-09-20 09:31:21.229627', '160', 'Pcash400Adjustment object (160)', 3, '', 13, 1),
(308, '2024-09-20 09:31:21.230636', '159', 'Pcash400Adjustment object (159)', 3, '', 13, 1),
(309, '2024-09-20 09:31:21.231633', '158', 'Pcash400Adjustment object (158)', 3, '', 13, 1),
(310, '2024-09-20 09:31:21.232633', '157', 'Pcash400Adjustment object (157)', 3, '', 13, 1),
(311, '2024-09-23 04:53:39.037146', '104', 'Pcash250Addcredit object (104)', 3, '', 3, 1),
(312, '2024-09-23 04:53:39.040869', '102', 'Pcash250Addcredit object (102)', 3, '', 3, 1),
(313, '2024-09-23 04:53:39.042401', '101', 'Pcash250Addcredit object (101)', 3, '', 3, 1),
(314, '2024-09-23 04:53:39.043951', '100', 'Pcash250Addcredit object (100)', 3, '', 3, 1),
(315, '2024-09-23 04:53:47.718055', '56', 'Pcash300ExpnGist object (56)', 3, '', 11, 1),
(316, '2024-09-23 04:53:53.512233', '70', 'Pcash350ExpnDetails object (70)', 3, '', 12, 1),
(317, '2024-09-23 04:53:58.640614', '170', 'Pcash400Adjustment object (170)', 3, '', 13, 1),
(318, '2024-09-23 04:53:58.649459', '169', 'Pcash400Adjustment object (169)', 3, '', 13, 1),
(319, '2024-09-23 04:53:58.651142', '168', 'Pcash400Adjustment object (168)', 3, '', 13, 1),
(320, '2024-09-23 04:53:58.652181', '167', 'Pcash400Adjustment object (167)', 3, '', 13, 1),
(321, '2024-09-23 04:53:58.653863', '166', 'Pcash400Adjustment object (166)', 3, '', 13, 1),
(322, '2024-09-23 04:53:58.655554', '165', 'Pcash400Adjustment object (165)', 3, '', 13, 1),
(323, '2024-09-23 07:00:33.163389', '106', 'Pcash250Addcredit object (106)', 3, '', 3, 1),
(324, '2024-09-23 07:00:33.170685', '105', 'Pcash250Addcredit object (105)', 3, '', 3, 1),
(325, '2024-09-23 07:00:37.691658', '58', 'Pcash300ExpnGist object (58)', 3, '', 11, 1),
(326, '2024-09-23 07:00:37.694998', '57', 'Pcash300ExpnGist object (57)', 3, '', 11, 1),
(327, '2024-09-23 07:00:42.625894', '73', 'Pcash350ExpnDetails object (73)', 3, '', 12, 1),
(328, '2024-09-23 07:00:42.629163', '72', 'Pcash350ExpnDetails object (72)', 3, '', 12, 1),
(329, '2024-09-23 07:00:42.631412', '71', 'Pcash350ExpnDetails object (71)', 3, '', 12, 1),
(330, '2024-09-23 07:00:47.341316', '177', 'Pcash400Adjustment object (177)', 3, '', 13, 1),
(331, '2024-09-23 07:00:47.344351', '176', 'Pcash400Adjustment object (176)', 3, '', 13, 1),
(332, '2024-09-23 07:00:47.346261', '175', 'Pcash400Adjustment object (175)', 3, '', 13, 1),
(333, '2024-09-23 07:00:47.349339', '174', 'Pcash400Adjustment object (174)', 3, '', 13, 1),
(334, '2024-09-23 07:00:47.351918', '173', 'Pcash400Adjustment object (173)', 3, '', 13, 1),
(335, '2024-09-23 07:00:47.353976', '172', 'Pcash400Adjustment object (172)', 3, '', 13, 1),
(336, '2024-09-23 07:00:47.356768', '171', 'Pcash400Adjustment object (171)', 3, '', 13, 1),
(337, '2024-09-23 12:35:12.436149', '110', 'Pcash250Addcredit object (110)', 3, '', 3, 1),
(338, '2024-09-23 12:35:12.439486', '109', 'Pcash250Addcredit object (109)', 3, '', 3, 1),
(339, '2024-09-23 12:35:12.439995', '108', 'Pcash250Addcredit object (108)', 3, '', 3, 1),
(340, '2024-09-23 12:35:12.441121', '107', 'Pcash250Addcredit object (107)', 3, '', 3, 1),
(341, '2024-09-23 12:35:17.315746', '60', 'Pcash300ExpnGist object (60)', 3, '', 11, 1),
(342, '2024-09-23 12:35:17.317746', '59', 'Pcash300ExpnGist object (59)', 3, '', 11, 1),
(343, '2024-09-23 12:35:21.935629', '76', 'Pcash350ExpnDetails object (76)', 3, '', 12, 1),
(344, '2024-09-23 12:35:21.936789', '75', 'Pcash350ExpnDetails object (75)', 3, '', 12, 1),
(345, '2024-09-23 12:35:21.937939', '74', 'Pcash350ExpnDetails object (74)', 3, '', 12, 1),
(346, '2024-09-23 13:44:12.586306', '117', 'Pcash250Addcredit object (117)', 3, '', 3, 1),
(347, '2024-09-23 13:44:12.587676', '116', 'Pcash250Addcredit object (116)', 3, '', 3, 1),
(348, '2024-09-23 13:44:12.588604', '115', 'Pcash250Addcredit object (115)', 3, '', 3, 1),
(349, '2024-09-23 13:44:12.589904', '114', 'Pcash250Addcredit object (114)', 3, '', 3, 1),
(350, '2024-09-23 13:44:12.590916', '113', 'Pcash250Addcredit object (113)', 3, '', 3, 1),
(351, '2024-09-23 13:44:12.591911', '112', 'Pcash250Addcredit object (112)', 3, '', 3, 1),
(352, '2024-09-23 13:44:12.592911', '111', 'Pcash250Addcredit object (111)', 3, '', 3, 1),
(353, '2024-09-23 13:44:17.624539', '63', 'Pcash300ExpnGist object (63)', 3, '', 11, 1),
(354, '2024-09-23 13:44:17.626415', '62', 'Pcash300ExpnGist object (62)', 3, '', 11, 1),
(355, '2024-09-23 13:44:17.627174', '61', 'Pcash300ExpnGist object (61)', 3, '', 11, 1),
(356, '2024-09-23 13:44:22.673110', '83', 'Pcash350ExpnDetails object (83)', 3, '', 12, 1),
(357, '2024-09-23 13:44:22.674970', '82', 'Pcash350ExpnDetails object (82)', 3, '', 12, 1),
(358, '2024-09-23 13:44:22.675981', '81', 'Pcash350ExpnDetails object (81)', 3, '', 12, 1),
(359, '2024-09-23 13:44:22.675981', '80', 'Pcash350ExpnDetails object (80)', 3, '', 12, 1),
(360, '2024-09-23 13:44:22.677467', '79', 'Pcash350ExpnDetails object (79)', 3, '', 12, 1),
(361, '2024-09-23 13:44:22.678893', '78', 'Pcash350ExpnDetails object (78)', 3, '', 12, 1),
(362, '2024-09-23 13:44:22.679955', '77', 'Pcash350ExpnDetails object (77)', 3, '', 12, 1),
(363, '2024-09-23 14:18:46.281440', '118', 'Pcash250Addcredit object (118)', 3, '', 3, 1),
(364, '2024-09-24 04:58:02.163137', '119', 'Pcash250Addcredit object (119)', 3, '', 3, 1),
(365, '2024-09-24 05:12:31.502050', '124', 'Pcash250Addcredit object (124)', 3, '', 3, 1),
(366, '2024-09-24 05:12:31.504662', '123', 'Pcash250Addcredit object (123)', 3, '', 3, 1),
(367, '2024-09-24 05:12:31.507167', '122', 'Pcash250Addcredit object (122)', 3, '', 3, 1),
(368, '2024-09-24 05:12:31.509603', '121', 'Pcash250Addcredit object (121)', 3, '', 3, 1),
(369, '2024-09-24 05:12:31.511488', '120', 'Pcash250Addcredit object (120)', 3, '', 3, 1),
(370, '2024-09-24 05:36:01.091170', '125', 'Pcash250Addcredit object (125)', 3, '', 3, 1),
(371, '2024-09-24 06:28:40.204516', '135', 'Pcash250Addcredit object (135)', 3, '', 3, 1),
(372, '2024-09-24 06:28:40.207517', '134', 'Pcash250Addcredit object (134)', 3, '', 3, 1),
(373, '2024-09-24 06:28:40.209517', '133', 'Pcash250Addcredit object (133)', 3, '', 3, 1),
(374, '2024-09-24 06:28:40.211517', '132', 'Pcash250Addcredit object (132)', 3, '', 3, 1),
(375, '2024-09-24 06:28:40.214010', '131', 'Pcash250Addcredit object (131)', 3, '', 3, 1),
(376, '2024-09-24 06:28:40.216021', '130', 'Pcash250Addcredit object (130)', 3, '', 3, 1),
(377, '2024-09-24 06:28:40.218063', '129', 'Pcash250Addcredit object (129)', 3, '', 3, 1),
(378, '2024-09-24 06:28:40.220627', '128', 'Pcash250Addcredit object (128)', 3, '', 3, 1),
(379, '2024-09-24 06:28:40.222655', '127', 'Pcash250Addcredit object (127)', 3, '', 3, 1),
(380, '2024-09-24 06:28:40.223181', '126', 'Pcash250Addcredit object (126)', 3, '', 3, 1),
(381, '2024-09-24 06:38:05.939139', '64', 'Pcash300ExpnGist object (64)', 3, '', 11, 1),
(382, '2024-09-24 06:38:10.475138', '85', 'Pcash350ExpnDetails object (85)', 3, '', 12, 1),
(383, '2024-09-24 06:38:10.478167', '84', 'Pcash350ExpnDetails object (84)', 3, '', 12, 1),
(384, '2024-09-24 10:17:59.566111', '139', 'Pcash250Addcredit object (139)', 3, '', 3, 1),
(385, '2024-09-24 10:17:59.568560', '138', 'Pcash250Addcredit object (138)', 3, '', 3, 1),
(386, '2024-09-24 10:17:59.569814', '137', 'Pcash250Addcredit object (137)', 3, '', 3, 1),
(387, '2024-09-24 10:17:59.571035', '136', 'Pcash250Addcredit object (136)', 3, '', 3, 1),
(388, '2024-09-24 13:16:05.524945', '145', 'Pcash250Addcredit object (145)', 3, '', 3, 1),
(389, '2024-09-24 13:16:05.526704', '144', 'Pcash250Addcredit object (144)', 3, '', 3, 1),
(390, '2024-09-24 13:16:05.527465', '143', 'Pcash250Addcredit object (143)', 3, '', 3, 1),
(391, '2024-09-24 13:16:05.528470', '142', 'Pcash250Addcredit object (142)', 3, '', 3, 1),
(392, '2024-09-24 13:16:05.529083', '141', 'Pcash250Addcredit object (141)', 3, '', 3, 1),
(393, '2024-09-24 13:16:05.529476', '140', 'Pcash250Addcredit object (140)', 3, '', 3, 1),
(394, '2024-10-01 08:13:36.552948', '149', 'Pcash250Addcredit object (149)', 3, '', 3, 1),
(395, '2024-10-01 08:13:36.554025', '148', 'Pcash250Addcredit object (148)', 3, '', 3, 1),
(396, '2024-10-01 08:13:36.554536', '147', 'Pcash250Addcredit object (147)', 3, '', 3, 1),
(397, '2024-10-01 08:13:36.555734', '146', 'Pcash250Addcredit object (146)', 3, '', 3, 1),
(398, '2024-10-01 08:13:47.938688', '90', 'Pcash350ExpnDetails object (90)', 3, '', 12, 1),
(399, '2024-10-01 08:13:47.941181', '89', 'Pcash350ExpnDetails object (89)', 3, '', 12, 1),
(400, '2024-10-01 08:13:47.942186', '88', 'Pcash350ExpnDetails object (88)', 3, '', 12, 1),
(401, '2024-10-01 08:13:47.942186', '87', 'Pcash350ExpnDetails object (87)', 3, '', 12, 1),
(402, '2024-10-01 08:13:47.943186', '86', 'Pcash350ExpnDetails object (86)', 3, '', 12, 1),
(403, '2024-10-01 08:13:53.839787', '189', 'Pcash400Adjustment object (189)', 3, '', 13, 1),
(404, '2024-10-01 08:13:53.840787', '188', 'Pcash400Adjustment object (188)', 3, '', 13, 1),
(405, '2024-10-01 08:13:53.842590', '187', 'Pcash400Adjustment object (187)', 3, '', 13, 1),
(406, '2024-10-01 08:13:53.843096', '186', 'Pcash400Adjustment object (186)', 3, '', 13, 1),
(407, '2024-10-01 08:13:53.843096', '185', 'Pcash400Adjustment object (185)', 3, '', 13, 1),
(408, '2024-10-01 08:13:53.844555', '184', 'Pcash400Adjustment object (184)', 3, '', 13, 1),
(409, '2024-10-01 08:13:53.845561', '183', 'Pcash400Adjustment object (183)', 3, '', 13, 1),
(410, '2024-10-01 08:13:53.846561', '182', 'Pcash400Adjustment object (182)', 3, '', 13, 1),
(411, '2024-10-01 08:13:53.847563', '181', 'Pcash400Adjustment object (181)', 3, '', 13, 1),
(412, '2024-10-01 08:13:53.848562', '180', 'Pcash400Adjustment object (180)', 3, '', 13, 1),
(413, '2024-10-01 08:13:53.849635', '179', 'Pcash400Adjustment object (179)', 3, '', 13, 1),
(414, '2024-10-01 08:13:53.850642', '178', 'Pcash400Adjustment object (178)', 3, '', 13, 1),
(415, '2024-10-01 08:14:15.726209', '66', 'Pcash300ExpnGist object (66)', 3, '', 11, 1),
(416, '2024-10-01 08:14:15.727848', '65', 'Pcash300ExpnGist object (65)', 3, '', 11, 1),
(417, '2024-10-04 05:32:12.800196', '153', 'Pcash250Addcredit object (153)', 3, '', 3, 1),
(418, '2024-10-04 05:32:12.803204', '152', 'Pcash250Addcredit object (152)', 3, '', 3, 1),
(419, '2024-10-04 05:32:12.805203', '151', 'Pcash250Addcredit object (151)', 3, '', 3, 1),
(420, '2024-10-04 05:32:12.807576', '150', 'Pcash250Addcredit object (150)', 3, '', 3, 1),
(421, '2024-10-04 05:32:17.621716', '68', 'Pcash300ExpnGist object (68)', 3, '', 11, 1),
(422, '2024-10-04 05:32:17.624968', '67', 'Pcash300ExpnGist object (67)', 3, '', 11, 1),
(423, '2024-10-04 05:32:22.213452', '93', 'Pcash350ExpnDetails object (93)', 3, '', 12, 1),
(424, '2024-10-04 05:32:22.216432', '92', 'Pcash350ExpnDetails object (92)', 3, '', 12, 1),
(425, '2024-10-04 05:32:22.217413', '91', 'Pcash350ExpnDetails object (91)', 3, '', 12, 1),
(426, '2024-10-04 05:32:26.841189', '195', 'Pcash400Adjustment object (195)', 3, '', 13, 1),
(427, '2024-10-04 05:32:26.870573', '194', 'Pcash400Adjustment object (194)', 3, '', 13, 1),
(428, '2024-10-04 05:32:26.874123', '193', 'Pcash400Adjustment object (193)', 3, '', 13, 1),
(429, '2024-10-04 05:32:26.876654', '192', 'Pcash400Adjustment object (192)', 3, '', 13, 1),
(430, '2024-10-04 05:32:26.877651', '191', 'Pcash400Adjustment object (191)', 3, '', 13, 1),
(431, '2024-10-04 05:32:26.879653', '190', 'Pcash400Adjustment object (190)', 3, '', 13, 1),
(432, '2024-10-04 07:23:47.074137', '161', 'Pcash250Addcredit object (161)', 3, '', 3, 1),
(433, '2024-10-04 07:23:47.075216', '160', 'Pcash250Addcredit object (160)', 3, '', 3, 1),
(434, '2024-10-04 07:23:47.075727', '159', 'Pcash250Addcredit object (159)', 3, '', 3, 1),
(435, '2024-10-04 07:23:47.077106', '158', 'Pcash250Addcredit object (158)', 3, '', 3, 1),
(436, '2024-10-04 07:23:47.077609', '157', 'Pcash250Addcredit object (157)', 3, '', 3, 1),
(437, '2024-10-04 07:23:47.078616', '156', 'Pcash250Addcredit object (156)', 3, '', 3, 1),
(438, '2024-10-04 07:23:47.080117', '155', 'Pcash250Addcredit object (155)', 3, '', 3, 1),
(439, '2024-10-04 07:23:47.080623', '154', 'Pcash250Addcredit object (154)', 3, '', 3, 1),
(440, '2024-10-04 07:43:29.784772', '166', 'Pcash250Addcredit object (166)', 3, '', 3, 1),
(441, '2024-10-04 07:43:29.786713', '165', 'Pcash250Addcredit object (165)', 3, '', 3, 1),
(442, '2024-10-04 07:43:29.787725', '164', 'Pcash250Addcredit object (164)', 3, '', 3, 1),
(443, '2024-10-04 07:43:29.787725', '163', 'Pcash250Addcredit object (163)', 3, '', 3, 1),
(444, '2024-10-04 07:43:29.789067', '162', 'Pcash250Addcredit object (162)', 3, '', 3, 1),
(445, '2024-10-04 07:59:34.016670', '172', 'Pcash250Addcredit object (172)', 3, '', 3, 1),
(446, '2024-10-04 07:59:34.017845', '171', 'Pcash250Addcredit object (171)', 3, '', 3, 1),
(447, '2024-10-04 07:59:34.019343', '170', 'Pcash250Addcredit object (170)', 3, '', 3, 1),
(448, '2024-10-04 07:59:34.020347', '169', 'Pcash250Addcredit object (169)', 3, '', 3, 1),
(449, '2024-10-04 07:59:34.020347', '168', 'Pcash250Addcredit object (168)', 3, '', 3, 1),
(450, '2024-10-04 07:59:34.021352', '167', 'Pcash250Addcredit object (167)', 3, '', 3, 1),
(451, '2024-10-04 09:16:03.105806', '176', 'Pcash250Addcredit object (176)', 3, '', 3, 1),
(452, '2024-10-04 09:16:03.107742', '175', 'Pcash250Addcredit object (175)', 3, '', 3, 1),
(453, '2024-10-04 09:16:03.108450', '174', 'Pcash250Addcredit object (174)', 3, '', 3, 1),
(454, '2024-10-04 09:16:03.109612', '173', 'Pcash250Addcredit object (173)', 3, '', 3, 1),
(455, '2024-10-04 09:16:08.011837', '71', 'Pcash300ExpnGist object (71)', 3, '', 11, 1),
(456, '2024-10-04 09:16:08.012848', '70', 'Pcash300ExpnGist object (70)', 3, '', 11, 1),
(457, '2024-10-04 09:16:08.014078', '69', 'Pcash300ExpnGist object (69)', 3, '', 11, 1),
(458, '2024-10-04 09:16:14.593804', '98', 'Pcash350ExpnDetails object (98)', 3, '', 12, 1),
(459, '2024-10-04 09:16:14.594763', '97', 'Pcash350ExpnDetails object (97)', 3, '', 12, 1),
(460, '2024-10-04 09:16:14.595275', '96', 'Pcash350ExpnDetails object (96)', 3, '', 12, 1),
(461, '2024-10-04 09:16:14.596280', '95', 'Pcash350ExpnDetails object (95)', 3, '', 12, 1),
(462, '2024-10-04 09:16:14.597279', '94', 'Pcash350ExpnDetails object (94)', 3, '', 12, 1),
(463, '2024-10-04 09:16:21.241600', '201', 'Pcash400Adjustment object (201)', 3, '', 13, 1),
(464, '2024-10-04 09:16:21.243269', '200', 'Pcash400Adjustment object (200)', 3, '', 13, 1),
(465, '2024-10-04 09:16:21.244057', '199', 'Pcash400Adjustment object (199)', 3, '', 13, 1),
(466, '2024-10-04 09:16:21.244961', '198', 'Pcash400Adjustment object (198)', 3, '', 13, 1),
(467, '2024-10-04 09:16:21.245285', '197', 'Pcash400Adjustment object (197)', 3, '', 13, 1),
(468, '2024-10-04 09:16:21.246365', '196', 'Pcash400Adjustment object (196)', 3, '', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(4, 'admin', 'logentry'),
(1, 'app_login', 'pcash100user'),
(2, 'app_login', 'pcash150bank'),
(10, 'app_login', 'pcash200expnhead'),
(3, 'app_login', 'pcash250addcredit'),
(11, 'app_login', 'pcash300expngist'),
(12, 'app_login', 'pcash350expndetails'),
(13, 'app_login', 'pcash400adjustment'),
(6, 'auth', 'group'),
(5, 'auth', 'permission'),
(7, 'auth', 'user'),
(8, 'contenttypes', 'contenttype'),
(9, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-09-06 11:35:46.395493'),
(2, 'auth', '0001_initial', '2024-09-06 11:35:46.876696'),
(3, 'admin', '0001_initial', '2024-09-06 11:35:46.978256'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-09-06 11:35:46.987249'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-09-06 11:35:46.993582'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-09-06 11:35:47.049654'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-09-06 11:35:47.104197'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-09-06 11:35:47.123193'),
(9, 'auth', '0004_alter_user_username_opts', '2024-09-06 11:35:47.131180'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-09-06 11:35:47.173220'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-09-06 11:35:47.177237'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-09-06 11:35:47.184311'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-09-06 11:35:47.199220'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-09-06 11:35:47.215390'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-09-06 11:35:47.231596'),
(16, 'auth', '0011_update_proxy_permissions', '2024-09-06 11:35:47.243601'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-09-06 11:35:47.257581'),
(18, 'sessions', '0001_initial', '2024-09-06 11:35:47.288580');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('cz5uv1g25n5tw1oq88sp9nbrr2zpl1p5', '.eJx1Ucty3CAQ_Bedt1QI4RXyMXd_A4VgtMKWQEHDPpLKv5vBWm9ccY5MP6Z7-F0pnXBSaYOonK2eq6Y6_D0btHkDT4B91f4UahM8RjfURKl3dKtfgoX5x879YjDpbcrqUcpePwnNemCm62TP-NiOmkvLWNf1QgxC8pFbOXKwQghpueZDK0QnRSN7SuU2dYboRmc0uuCrZ4wJyngOJ_f5NilG8Fi258XaLhk7VHAFk9Cd4dG1eZBXfYJCfk0bLjQ5O7hkmcnxlfO5Bh2h6Rmr2UN21nOC_WhZq_C20hOua76D-nAjkwjW4X9RWnFxONmoL3pWViPROOOC9U1Hzf2Wu5VYu0emjkU7wc8EyqdlKG0b3oqnYwa2kKKBQleCsQwFnHLvVd_Ihxgwg8mG0V-9sqhui92ZZbNkLZVaQqKtQQ1AiRHupEayjO92XzJ_KFftrBpuefjraqiDVS0Jj8dDhQFzz9273Xey8kmrL0HaR5C-kRm5X7ocb4PqbrLPy69sqCOqMcRFIwX9NxTd_XucDv3nHS9Z_0A:1st6Co:lvswK-V4axpftAf2UX0YGoDlvGpuu2C9EUUzJbXINNs', '2024-10-08 14:07:54.517645'),
('i0819vb2u3eq8oz3lnrsv0cfdn480wft', '.eJx1jdEKwjAMRf-lz0O6KhP3MyG22RbYWmnTKoj_bivonnzMPffcPBUnKBR5YovCwatRYqauxWuY-XfbHCN5gZwoqlGh2yrrFD3IZuFCHwDs1Njv5RvOVMsO03INGB0Upnu1bA2APSzoqzCcD3p3Cq65SX3tJcEoMIW4oQg5cCgNGW1OetCm_ffuD7-YY-USBNfvpj7o1xuHsFJW:1ssjeL:J5gxlDeHCOAwlgiCJ1LH7mDEfIlFdXJ_yz27f7pqWMc', '2024-10-07 14:02:49.216819'),
('jdme7xa5qxxne2mxwd0i906h0kj3bseo', '.eJx1jVEKwjAMQO_S7yHdUNBdJsQ22wJbK21aBfHupoLuy8_kvZc8DWeolHhih8IxmFFSoa6t1zjzb3YlJQoCJVMyo0G_KesMPcgV4UofAOzN2O_yDWdS2WNerhGTh8p018rpAjjAgkGD09ke7B5VXEurehWzYBKYYtpQhDx4lIYGOxztxTaDgv_Hh6NyiYLr96b-eb0BzM5SiQ:1ssyZU:eknFxetn42eb4jPk_9pzLN0L4ydIBj6PUNi4Htx1cfk', '2024-10-08 05:58:48.495062'),
('kun34csrrzrbusojc0ok31cpoyleppp0', '.eJx1Uctu5CAQ_BefRyOMiYxz3Pt-A2pDe0xig8NjHlrtvy_NeDKJtLnZXdVV1cWfRkFOs8oRg7KmeW3a5vB1NoJ-R0eAeQN38kftXQp2PBLluKPx-NsbXH7t3G8CM8S5bE9SDvAigA3IdN_LgfGpm4BLw1jfD0KMQvKJGzlxNEIIaTjwsROil6KVA6WyUZ0x2MlqSNa75jWFjHW8-JP9_Nc5BHSpuhdjMGvBDg1eUedkz_i8tX2SNzgh3VjCjh6CUWeLl7Kly0BZV66gDjrG2JE9t86wZNw7iwlCUpMPK6SERhlIBHHGBRsYMUo1_8fbtuLJJ1gemtUHzJtKt414eN1ov0xyTBQsoLHpR5RiX2yaTYBLEf1qxqqZdbHUtdIVu4ae8aM4H_YP5fI61gZb3gk60OegsbKVYKwAPs2lyQ1uJEMMXFAXveCuTpmkbqvZmfcWOlZIsPpMpl6NSIGpizuplYTvct_76-6INWq8lWE0kU4wqqPFvnt0t2vXafPCWH32zdUg3WeQvYHH49XuIjZ__wEddf5r:1swfIh:FqyBx6NrX76lt0jszJcX4NI-hHUrgoyF9ht-XEhqKTc', '2024-10-18 10:12:43.837598');

-- --------------------------------------------------------

--
-- Table structure for table `pcash_100_user`
--

CREATE TABLE `pcash_100_user` (
  `id_100` int(11) NOT NULL,
  `user_fullname_100` varchar(100) DEFAULT NULL,
  `loginname_100` varchar(100) DEFAULT NULL,
  `loginpwd_100` varchar(100) DEFAULT NULL,
  `user_pan_100` varchar(10) DEFAULT NULL,
  `active_yn_100` varchar(20) NOT NULL DEFAULT 'yes',
  `modified_by_100` int(11) NOT NULL,
  `modified_on_100` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `created_by_100` int(11) NOT NULL,
  `created_on_100` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pcash_100_user`
--

INSERT INTO `pcash_100_user` (`id_100`, `user_fullname_100`, `loginname_100`, `loginpwd_100`, `user_pan_100`, `active_yn_100`, `modified_by_100`, `modified_on_100`, `created_by_100`, `created_on_100`) VALUES
(1, 'PMD', 'admin', 'e6e061838856bf47e1de730719fb2609', 'HTYPB4519B', 'yes', 0, '2024-08-26 04:50:13.798538', 0, '2024-08-26 15:46:12.000000'),
(2, 'Innova Accounts', 'accounts', 'a7150f3b736229cadeb7374a93814f9e', 'WTPUB3123S', 'yes', 0, '2024-09-04 07:21:15.834520', 0, '2024-08-26 15:49:58.000000');

-- --------------------------------------------------------

--
-- Table structure for table `pcash_150_bank`
--

CREATE TABLE `pcash_150_bank` (
  `id_150` int(11) NOT NULL,
  `bank_full_name_150` varchar(100) DEFAULT NULL,
  `bank_by_name_150` varchar(50) DEFAULT NULL,
  `active_yn_150` varchar(20) NOT NULL DEFAULT 'yes',
  `modified_by_150` int(11) NOT NULL,
  `modified_on_150` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `created_by_150` int(11) NOT NULL,
  `created_on_150` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pcash_150_bank`
--

INSERT INTO `pcash_150_bank` (`id_150`, `bank_full_name_150`, `bank_by_name_150`, `active_yn_150`, `modified_by_150`, `modified_on_150`, `created_by_150`, `created_on_150`) VALUES
(1, 'Punjab National Bank', 'PNB', 'yes', 1, '2024-09-06 07:19:04.027832', 1, '2024-09-06 12:49:04.027832'),
(2, 'Canara Bank', 'CNB', 'yes', 1, '2024-09-06 07:19:04.027832', 1, '2024-09-06 12:49:04.027832'),
(3, 'Indian Bank - Savings AC', 'INB-Savings', 'yes', 1, '2024-09-06 07:22:48.924274', 1, '2024-09-06 12:52:48.924274'),
(4, 'Indian Bank - Current AC', 'INB-Current', 'yes', 1, '2024-09-06 07:22:48.924274', 1, '2024-09-06 12:52:48.924274');

-- --------------------------------------------------------

--
-- Table structure for table `pcash_200_expnhead`
--

CREATE TABLE `pcash_200_expnhead` (
  `id_200` int(11) NOT NULL,
  `expn_head_group_200` varchar(100) NOT NULL,
  `expn_head_name_200` varchar(200) DEFAULT NULL,
  `expn_code_200` varchar(100) DEFAULT NULL,
  `active_yn_200` varchar(20) NOT NULL DEFAULT 'yes',
  `modified_by_200` int(11) NOT NULL,
  `modified_on_200` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `created_by_200` int(11) NOT NULL,
  `created_on_200` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pcash_200_expnhead`
--

INSERT INTO `pcash_200_expnhead` (`id_200`, `expn_head_group_200`, `expn_head_name_200`, `expn_code_200`, `active_yn_200`, `modified_by_200`, `modified_on_200`, `created_by_200`, `created_on_200`) VALUES
(15, 'computer_expenses', 'laptop_battery', 'CELB1', 'yes', 1, '2024-09-19 07:41:48.490090', 1, '2024-09-19 12:28:27.389020'),
(16, 'Scooty-Parts', 'CDI_With_Cables', 'SPCD1', 'yes', 1, '2024-09-19 07:43:05.471440', 1, '2024-09-19 13:13:05.471440');

-- --------------------------------------------------------

--
-- Table structure for table `pcash_250_addcredit`
--

CREATE TABLE `pcash_250_addcredit` (
  `id_250` int(11) NOT NULL,
  `type_250` varchar(50) NOT NULL DEFAULT 'internal/other',
  `cash_withdrawal_ymd_250` varchar(50) DEFAULT NULL,
  `bank_id_250` int(11) NOT NULL,
  `instrument_type_250` varchar(50) NOT NULL DEFAULT 'cheque/cash/upi/draft',
  `instrument_no_250` varchar(100) DEFAULT NULL,
  `instrument_ymd_250` varchar(50) DEFAULT NULL,
  `narration_250` text DEFAULT NULL,
  `paid_by_250` varchar(50) NOT NULL DEFAULT 'Bank/Other',
  `amount_250` varchar(100) DEFAULT NULL,
  `withdrawal_by_250` varchar(100) DEFAULT NULL,
  `pment_dt_ymd_250` varchar(50) NOT NULL,
  `collected_by_250` varchar(100) DEFAULT NULL,
  `modified_by_250` int(11) NOT NULL,
  `modified_on_250` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `created_by_250` int(11) NOT NULL,
  `created_on_250` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pcash_250_addcredit`
--

INSERT INTO `pcash_250_addcredit` (`id_250`, `type_250`, `cash_withdrawal_ymd_250`, `bank_id_250`, `instrument_type_250`, `instrument_no_250`, `instrument_ymd_250`, `narration_250`, `paid_by_250`, `amount_250`, `withdrawal_by_250`, `pment_dt_ymd_250`, `collected_by_250`, `modified_by_250`, `modified_on_250`, `created_by_250`, `created_on_250`) VALUES
(177, 'internal_credit', '20240930', 2, 'cheque', '123456', '20241001', '', '', '1200', 'sidharth', '', '', 1, '2024-10-04 03:53:06.645661', 1, '2024-10-04 09:23:06.645661'),
(178, 'internal_credit', '20241001', 4, 'cheque', '1234', '20241002', '', '', '1200', 'jghjgj', '', '', 1, '2024-10-04 03:54:23.799716', 1, '2024-10-04 09:24:23.799716'),
(179, 'other_payment', '20241004', 0, '', '', '', '', 'karthik', '320', '', '20241004', 'xcz', 1, '2024-10-04 03:55:18.433523', 1, '2024-10-04 09:25:18.433523'),
(180, 'other_payment', '20241004', 0, '', '', '', 'chtytrytry', 'sds', '180', '', '20240930', 'cde', 1, '2024-10-04 03:57:07.948781', 1, '2024-10-04 09:27:07.948781'),
(181, 'internal_credit', '20240930', 4, 'draft', '5425852', '20241001', '', '', '1200', 'sidharth', '', '', 1, '2024-10-04 04:12:02.849650', 1, '2024-10-04 09:42:02.849650');

-- --------------------------------------------------------

--
-- Table structure for table `pcash_300_expn_gist`
--

CREATE TABLE `pcash_300_expn_gist` (
  `id_300` int(11) NOT NULL,
  `expn_ymd_300` varchar(50) DEFAULT NULL,
  `user_id_100_300` int(11) NOT NULL,
  `exec_name_300` varchar(100) NOT NULL,
  `total_amount_300` varchar(100) DEFAULT NULL,
  `modified_by_300` int(11) NOT NULL,
  `modified_on_300` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `created_by_300` int(11) NOT NULL,
  `created_on_300` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pcash_300_expn_gist`
--

INSERT INTO `pcash_300_expn_gist` (`id_300`, `expn_ymd_300`, `user_id_100_300`, `exec_name_300`, `total_amount_300`, `modified_by_300`, `modified_on_300`, `created_by_300`, `created_on_300`) VALUES
(72, '20240930', 1, 'executive', '600', 1, '2024-10-04 04:14:41.018363', 1, '2024-10-04 09:44:41.018363'),
(73, '20241001', 1, 'executive', '500', 1, '2024-10-04 04:17:57.175748', 1, '2024-10-04 09:47:57.175748');

-- --------------------------------------------------------

--
-- Table structure for table `pcash_350_expn_details`
--

CREATE TABLE `pcash_350_expn_details` (
  `id_350` int(11) NOT NULL,
  `expn_head_200_350` int(11) NOT NULL,
  `expn_gist_id_350_350` int(11) NOT NULL,
  `narration_350` varchar(200) DEFAULT NULL,
  `amount_350` varchar(100) DEFAULT NULL,
  `modified_by_350` int(11) NOT NULL,
  `modified_on_350` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `created_by_350` int(11) NOT NULL,
  `created_on_350` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pcash_350_expn_details`
--

INSERT INTO `pcash_350_expn_details` (`id_350`, `expn_head_200_350`, `expn_gist_id_350_350`, `narration_350`, `amount_350`, `modified_by_350`, `modified_on_350`, `created_by_350`, `created_on_350`) VALUES
(99, 16, 72, '', '100', 1, '2024-10-04 04:14:41.020362', 1, '2024-10-04 09:44:41.020362'),
(100, 15, 72, '', '500', 1, '2024-10-04 04:14:41.022535', 1, '2024-10-04 09:44:41.022535'),
(101, 16, 73, '', '500', 1, '2024-10-04 04:17:57.177753', 1, '2024-10-04 09:47:57.177753');

-- --------------------------------------------------------

--
-- Table structure for table `pcash_400_adjustment`
--

CREATE TABLE `pcash_400_adjustment` (
  `id_400` int(11) NOT NULL,
  `adj_ymd_400` varchar(50) DEFAULT NULL,
  `adj_type_400` varchar(50) NOT NULL DEFAULT 'credit_adj/expn_adj',
  `source_type_400` varchar(100) NOT NULL DEFAULT 'internal/others/expn',
  `select_trnxn_dt_ymd_400` varchar(50) DEFAULT NULL,
  `amount_to_be_adjted_400` varchar(50) DEFAULT NULL,
  `adj_narration_400` varchar(200) DEFAULT NULL,
  `adj_deduct_amnt_400` varchar(100) DEFAULT NULL,
  `adj_add_amnt_400` varchar(100) DEFAULT NULL,
  `expn_details_id_350_400` int(11) NOT NULL,
  `modified_by_400` int(11) NOT NULL,
  `modified_on_400` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `created_by_400` int(11) NOT NULL,
  `created_on_400` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pcash_400_adjustment`
--

INSERT INTO `pcash_400_adjustment` (`id_400`, `adj_ymd_400`, `adj_type_400`, `source_type_400`, `select_trnxn_dt_ymd_400`, `amount_to_be_adjted_400`, `adj_narration_400`, `adj_deduct_amnt_400`, `adj_add_amnt_400`, `expn_details_id_350_400`, `modified_by_400`, `modified_on_400`, `created_by_400`, `created_on_400`) VALUES
(202, '20241004', 'credit_adjust', 'internal_credit', '20240930', '1200', '', NULL, '200', 0, 1, '2024-10-04 04:19:28.765999', 1, '2024-10-04 09:49:28.765999'),
(203, '20241004', 'credit_adjust', 'other_payment', '20240930', '180', '', NULL, '300', 0, 1, '2024-10-04 04:23:05.109187', 1, '2024-10-04 09:53:05.109187'),
(204, '20241004', 'expn_adj', 'expn', '20241001', '500', '', NULL, '300', 73, 1, '2024-10-04 04:26:33.548284', 1, '2024-10-04 09:56:33.548284'),
(205, '20241004', 'credit_adjust', 'internal_credit', '20241001', '1200', '', '500', NULL, 0, 1, '2024-10-04 04:30:04.634412', 1, '2024-10-04 10:00:04.634412'),
(206, '20241004', 'credit_adjust', 'other_payment', '20240930', '180', '', '100', NULL, 0, 1, '2024-10-04 04:31:13.936200', 1, '2024-10-04 10:01:13.936200'),
(207, '20241004', 'expn_adj', 'expn', '20241001', '500', '', '200', NULL, 73, 1, '2024-10-04 04:32:08.443227', 1, '2024-10-04 10:02:08.443227');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `pcash_100_user`
--
ALTER TABLE `pcash_100_user`
  ADD PRIMARY KEY (`id_100`);

--
-- Indexes for table `pcash_150_bank`
--
ALTER TABLE `pcash_150_bank`
  ADD PRIMARY KEY (`id_150`);

--
-- Indexes for table `pcash_200_expnhead`
--
ALTER TABLE `pcash_200_expnhead`
  ADD PRIMARY KEY (`id_200`);

--
-- Indexes for table `pcash_250_addcredit`
--
ALTER TABLE `pcash_250_addcredit`
  ADD PRIMARY KEY (`id_250`);

--
-- Indexes for table `pcash_300_expn_gist`
--
ALTER TABLE `pcash_300_expn_gist`
  ADD PRIMARY KEY (`id_300`);

--
-- Indexes for table `pcash_350_expn_details`
--
ALTER TABLE `pcash_350_expn_details`
  ADD PRIMARY KEY (`id_350`);

--
-- Indexes for table `pcash_400_adjustment`
--
ALTER TABLE `pcash_400_adjustment`
  ADD PRIMARY KEY (`id_400`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=469;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pcash_100_user`
--
ALTER TABLE `pcash_100_user`
  MODIFY `id_100` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pcash_150_bank`
--
ALTER TABLE `pcash_150_bank`
  MODIFY `id_150` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pcash_200_expnhead`
--
ALTER TABLE `pcash_200_expnhead`
  MODIFY `id_200` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pcash_250_addcredit`
--
ALTER TABLE `pcash_250_addcredit`
  MODIFY `id_250` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `pcash_300_expn_gist`
--
ALTER TABLE `pcash_300_expn_gist`
  MODIFY `id_300` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `pcash_350_expn_details`
--
ALTER TABLE `pcash_350_expn_details`
  MODIFY `id_350` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `pcash_400_adjustment`
--
ALTER TABLE `pcash_400_adjustment`
  MODIFY `id_400` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
