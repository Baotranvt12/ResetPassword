-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2022 at 05:38 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydata`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `accountid` int(11) NOT NULL,
  `password` varchar(250) DEFAULT NULL,
  `avatar` varchar(250) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `username_id` int(11) DEFAULT NULL,
  `callsignid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`accountid`, `password`, `avatar`, `experience`, `createdate`, `editdate`, `isenable`, `note`, `username_id`, `callsignid_id`) VALUES
(5, 'user1', NULL, 0, '2021-11-17', '2021-11-16 18:11:27.041776', 1, NULL, 8, 1),
(6, 'user2', NULL, 0, '2021-11-17', '2021-11-16 19:30:56.768999', 1, NULL, 9, 1),
(7, 'user3', '/media/users//background2.png', 9960, '2021-11-17', '2021-12-16 05:53:02.903035', 1, NULL, 10, 1),
(8, 'tran', '/media/avatar.PNG', 0, '2021-11-17', '2021-11-17 11:01:25.058505', 1, NULL, 11, 1),
(9, 'user5', '/media/bee.png', 0, '2021-11-17', '2021-11-17 11:24:43.115341', 1, NULL, 12, 1),
(10, 'user', '/media/avatar_TY2zBd9.PNG', 0, '2021-11-17', '2021-11-17 12:59:28.548119', 1, NULL, 13, 1),
(11, 'a', '/media/lesson1.png', 0, '2021-11-17', '2021-11-17 13:03:44.805783', 1, NULL, 14, 1),
(12, 'b', '/media/lesson1_Rf6Ju9E.png', 0, '2021-11-17', '2021-11-17 13:07:44.241303', 1, NULL, 15, 1),
(13, 'aa', '/media/lesson1_veU6pVC.png', 0, '2021-11-17', '2021-11-17 13:09:59.800919', 1, NULL, 16, 1),
(14, 'c', '/media/lesson6.png', 0, '2021-11-17', '2021-11-17 13:12:11.876030', 1, NULL, 17, 1),
(15, 'khai', '/media/users//2beefinger.png', 60, '2021-11-30', '2021-12-17 11:14:06.295062', 1, NULL, 18, 1),
(16, 'tuyet', '/media/users//1star.png', 510, '2021-12-16', '2022-01-04 13:40:03.034748', 1, NULL, 24, 2);

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `activityid` int(11) NOT NULL,
  `activityorder` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `lessonid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`activityid`, `activityorder`, `name`, `image`, `description`, `link`, `stars`, `createdate`, `editdate`, `isenable`, `note`, `lessonid_id`) VALUES
(1, 1, 'Gi???i thi???u b??n ph??m', 'media/lessons/images/hdgioithieu.png', '', '/media/lessons/lesson1/script1/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 1),
(2, 1, 'K??? n??ng g?? ph??m', 'media/lessons/images/hdgioithieu.png', '', '', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 2),
(3, 1, 'Gi???i thi???u', 'media/lessons/images/hdgioithieu.png', '', 'https://www.youtube.com/embed/MWE9mcSUAU4', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 3),
(4, 2, 'G?? ph??m A S D F', 'media/lessons/images/hdlamquen.png\n', '', '/media/lessons/lesson3/script2/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 3),
(5, 3, 'Th??? t??i tr?? nh???', 'media/lessons/images/hdtracnghiem.png', '', '/media/lessons/lesson3/script3/index.html', 3, '2021-11-05', '2021-12-24 20:28:49.080837', 1, '', 3),
(6, 4, 'Gi???i m?? b??n ph??m', 'media/lessons/images/hdgiaima.png', '', '/media/lessons/lesson3/script4/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 3),
(7, 5, 'Vui g?? ph??m', 'media/lessons/images/hdvuigophim.png', '', '/media/lessons/lesson3/script5/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 3),
(8, 2, 'Th??? t??i tr?? nh???', 'media/lessons/images/hdtracnghiem.png', '', '/media/lessons/lesson1/script2/index.html', 3, '2021-11-05', '2021-12-24 20:29:23.339810', 1, '', 1),
(9, 3, 'Gi???i m?? b??n ph??m', 'media/lessons/images/hdgiaima.png', '', '/media/lessons/lesson1/script3/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 1),
(10, 2, 'Th??? t??i tr?? nh???', 'media/lessons/images/hdtracnghiem.png', '', NULL, 3, '2021-11-05', '2021-12-24 20:29:14.705185', 1, '', 2),
(11, 3, 'Gi???i m?? b??n ph??m', 'media/lessons/images/hdgiaima.png', '', '', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 2),
(12, 1, 'Gi???i thi???u', 'media/lessons/images/hdgioithieu.png', '', '/media/lessons/lesson4/script1/asdf.mp4', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 4),
(13, 2, 'G?? ph??m J K L ;', 'media/lessons/images/hdlamquen.png\r\n', '', '/media/lessons/lesson4/script2/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 4),
(14, 3, 'Th??? t??i tr?? nh???', 'media/lessons/images/hdtracnghiem.png', '', '/media/lessons/lesson4/script3/index.html', 3, '2021-11-05', '2021-12-24 20:29:07.320495', 1, '', 4),
(15, 5, 'Vui g?? ph??m', 'media/lessons/images/hdvuigophim.png', '', '/media/lessons/lesson4/script5/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 4),
(16, 4, 'Gi???i m?? b??n ph??m', 'media/lessons/images/hdgiaima.png', '', '/media/lessons/lesson4/script4/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 4),
(17, 1, 'Gi???i thi???u', 'media/lessons/images/hdgioithieu.png', '', '/media/lessons/lesson5/script1/asdf.mp4', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 5),
(18, 2, 'G?? ph??m G H', 'media/lessons/images/hdlamquen.png\r\n', '', '/media/lessons/lesson5/script2/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 5),
(19, 3, 'Th??? t??i tr?? nh???', 'media/lessons/images/hdtracnghiem.png', '', '/media/lessons/lesson5/script3/index.html', 3, '2021-11-05', '2021-12-24 20:29:01.366692', 1, '', 5),
(20, 5, 'Vui g?? ph??m', 'media/lessons/images/hdvuigophim.png', '', '/media/lessons/lesson5/script5/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 5),
(21, 4, 'Gi???i m?? b??n ph??m', 'media/lessons/images/hdgiaima.png', '', '/media/lessons/lesson5/script4/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 5),
(22, 5, 'Vui g?? ph??m', 'media/lessons/images/hdvuigophim.png', '', '/media/lessons/lesson6/script5/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 6),
(23, 4, 'Gi???i m?? b??n ph??m', 'media/lessons/images/hdgiaima.png', '', '/media/lessons/lesson6/script4/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 6),
(24, 1, 'Gi???i thi???u', 'media/lessons/images/hdgioithieu.png', '', '/media/lessons/lesson7/script1/asdf.mp4', 3, '2021-12-28', '2021-12-28 02:55:50.802355', 1, '', 7),
(25, 2, 'G?? ph??m Q W E R', 'media/lessons/images/hdlamquen.png', '', '/media/lessons/lesson7/script2/index.html', 3, '2021-12-28', '2021-12-28 03:00:18.075073', 1, '', 7),
(26, 3, 'Th??? t??i tr?? nh???', 'media/lessons/images/hdtracnghiem.png', '', '/media/lessons/lesson7/script3/index.html', 3, '2021-11-05', '2021-12-24 20:28:49.080837', 1, '', 7),
(27, 5, 'Vui g?? ph??m', 'media/lessons/images/hdvuigophim.png', '', '/media/lessons/lesson7/script5/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 7),
(28, 4, 'Gi???i m?? b??n ph??m', 'media/lessons/images/hdgiaima.png', '', '/media/lessons/lesson7/script4/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 7),
(29, 1, 'Gi???i thi???u', 'media/lessons/images/hdgioithieu.png', '', '/media/lessons/lesson8/script1/asdf.mp4', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 8),
(30, 2, 'G?? ph??m U I O P', 'media/lessons/images/hdlamquen.png\r\n', '', '/media/lessons/lesson8/script2/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 8),
(31, 3, 'Th??? t??i tr?? nh???', 'media/lessons/images/hdtracnghiem.png', '', '/media/lessons/lesson8/script3/index.html', 3, '2021-11-05', '2021-12-24 20:29:07.320495', 1, '', 8),
(32, 5, 'Vui g?? ph??m', 'media/lessons/images/hdvuigophim.png', '', '/media/lessons/lesson8/script5/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 8),
(33, 4, 'Gi???i m?? b??n ph??m', 'media/lessons/images/hdgiaima.png', '', '/media/lessons/lesson8/script4/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 8),
(34, 1, 'Gi???i thi???u', 'media/lessons/images/hdgioithieu.png', '', 'https://www.youtube.com/embed/MWE9mcSUAU4', 3, '2021-12-28', '2021-12-28 02:55:50.802355', 1, '', 9),
(35, 2, 'G?? ph??m T Y', 'media/lessons/images/hdlamquen.png', '', '/media/lessons/lesson9/script2/index.html', 3, '2021-12-28', '2021-12-28 03:00:18.075073', 1, '', 9),
(36, 3, 'Th??? t??i tr?? nh???', 'media/lessons/images/hdtracnghiem.png', '', '/media/lessons/lesson9/script3/index.html', 3, '2021-11-05', '2021-12-24 20:29:01.366692', 1, '', 9),
(37, 5, 'Vui g?? ph??m', 'media/lessons/images/hdvuigophim.png', '', '/media/lessons/lesson9/script5/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 9),
(38, 4, 'Gi???i m?? b??n ph??m', 'media/lessons/images/hdgiaima.png', '', '/media/lessons/lesson9/script4/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 9),
(39, 4, 'Gi???i m?? b??n ph??m', 'media/lessons/images/hdgiaima.png', '', '/media/lessons/lesson10/script4/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 10),
(40, 5, 'Vui g?? ph??m', 'media/lessons/images/hdvuigophim.png', '', '/media/lessons/lesson10/script5/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 10),
(41, 1, 'Gi???i thi???u', 'media/lessons/images/hdgioithieu.png', '', '/media/lessons/lesson11/script1/asdf.mp4', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 11),
(42, 2, 'G?? ph??m Z X C V', 'media/lessons/images/hdlamquen.png', '', '/media/lessons/lesson11/script2/index.html', 3, '2021-12-28', '2021-12-28 03:00:18.075073', 1, '', 11),
(43, 3, 'Th??? t??i tr?? nh???', 'media/lessons/images/hdtracnghiem.png', '', '/media/lessons/lesson11/script3/index.html', 3, '2021-11-05', '2021-12-24 20:29:01.366692', 1, '', 11),
(44, 4, 'Gi???i m?? b??n ph??m', 'media/lessons/images/hdgiaima.png', '', '/media/lessons/lesson11/script4/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 11),
(45, 5, 'Vui g?? ph??m', 'media/lessons/images/hdvuigophim.png', '', '/media/lessons/lesson11/script5/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 11),
(46, 1, 'Gi???i thi???u', 'media/lessons/images/hdgioithieu.png', '', '/media/lessons/lesson12/script1/asdf.mp4', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 12),
(47, 2, 'G?? ph??m M , . /', 'media/lessons/images/hdlamquen.png\r\n', '', '/media/lessons/lesson12/script2/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 12),
(48, 3, 'Th??? t??i tr?? nh???', 'media/lessons/images/hdtracnghiem.png', '', '/media/lessons/lesson12/script3/index.html', 3, '2021-11-05', '2021-12-24 20:28:49.080837', 1, '', 12),
(49, 4, 'Gi???i m?? b??n ph??m', 'media/lessons/images/hdgiaima.png', '', '/media/lessons/lesson12/script4/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 12),
(50, 5, 'Vui g?? ph??m', 'media/lessons/images/hdvuigophim.png', '', '/media/lessons/lesson12/script5/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 12),
(51, 1, 'Gi???i thi???u', 'media/lessons/images/hdgioithieu.png', '', '/media/lessons/lesson13/script1/asdf.mp4', 3, '2021-12-28', '2021-12-28 02:55:50.802355', 1, '', 13),
(52, 2, 'G?? ph??m B N', 'media/lessons/images/hdlamquen.png', '', '/media/lessons/lesson13/script2/index.html', 3, '2021-12-28', '2021-12-28 03:00:18.075073', 1, '', 13),
(53, 3, 'Th??? t??i tr?? nh???', 'media/lessons/images/hdtracnghiem.png', '', '/media/lessons/lesson13/script3/index.html', 3, '2021-11-05', '2021-12-24 20:29:01.366692', 1, '', 13),
(54, 4, 'Gi???i m?? b??n ph??m', 'media/lessons/images/hdgiaima.png', '', '/media/lessons/lesson13/script4/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 13),
(55, 5, 'Vui g?? ph??m', 'media/lessons/images/hdvuigophim.png', '', '/media/lessons/lesson13/script5/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 13),
(56, 4, 'Gi???i m?? b??n ph??m', 'media/lessons/images/hdgiaima.png', '', '/media/lessons/lesson14/script4/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 14),
(57, 5, 'Vui g?? ph??m', 'media/lessons/images/hdvuigophim.png', '', '/media/lessons/lesson14/script5/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 14),
(58, 1, 'Gi???i thi???u', 'media/lessons/images/hdgioithieu.png', '', '/media/lessons/lesson15/script1/phimso.mp4', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 15),
(59, 2, 'G?? ph??m s???', 'media/lessons/images/hdlamquen.png\r\n', '', '/media/lessons/lesson15/script2/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 15),
(60, 3, 'Th??? t??i tr?? nh???', 'media/lessons/images/hdtracnghiem.png', '', '/media/lessons/lesson15/script3/index.html', 3, '2021-11-05', '2021-12-24 20:29:07.320495', 1, '', 15),
(61, 4, 'Gi???i m?? b??n ph??m', 'media/lessons/images/hdgiaima.png', '', '/media/lessons/lesson15/script4/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 15),
(62, 5, 'Vui g?? ph??m', 'media/lessons/images/hdvuigophim.png', '', '/media/lessons/lesson15/script5/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 15),
(63, 1, 'Gi???i thi???u', 'media/lessons/images/hdgioithieu.png', '', '/media/lessons/lesson16/script1/phimchucnang.mp4', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 16),
(64, 2, 'G?? ph??m ch???c n??ng', 'media/lessons/images/hdlamquen.png\r\n', '', '/media/lessons/lesson16/script2/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 16),
(65, 3, 'Th??? t??i tr?? nh???', 'media/lessons/images/hdtracnghiem.png', '', '/media/lessons/lesson16/script3/index.html', 3, '2021-11-05', '2021-12-24 20:29:07.320495', 1, '', 16),
(66, 3, 'Gi???i m?? b??n ph??m', 'media/lessons/images/hdgiaima.png', '', '/media/lessons/lesson16/script3/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 16),
(67, 5, 'Vui g?? ph??m', 'media/lessons/images/hdvuigophim.png', '', '/media/lessons/lesson16/script5/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 16),
(69, 1, 'Gi???i thi???u', 'media/lessons/images/hdgioithieu.png', '', '/media/lessons/lesson17/script1/asdf.mp4', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 17),
(70, 2, 'H???c g?? d???u v?? ch???', 'media/lessons/images/hdlamquen.png', '', '/media/lessons/lesson17/script2/index.html', 3, '2021-11-05', '2021-12-28 04:07:05.252088', 1, '', 17),
(71, 3, 'Th??? t??i tr?? nh???', 'media/lessons/images/hdtracnghiem.png', '', '/media/lessons/lesson17/script3/index.html', 3, '2021-11-05', '2021-12-24 20:29:01.366692', 1, '', 17),
(72, 5, 'Vui g?? ph??m', 'media/lessons/images/hdvuigophim.png', '', '/media/lessons/lesson17/script5/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 17),
(73, 1, 'Gi???i thi???u', 'media/lessons/images/hdgioithieu.png', '', '/media/lessons/lesson18/script1/asdf.mp4', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 18),
(74, 2, 'H???c g?? d???u v?? ch???', 'media/lessons/images/hdlamquen.png', '', '/media/lessons/lesson18/script2/index.html', 3, '2021-11-05', '2021-12-28 04:07:05.252088', 1, '', 18),
(75, 3, 'Th??? t??i tr?? nh???', 'media/lessons/images/hdtracnghiem.png', '', '/media/lessons/lesson18/script3/index.html', 3, '2021-11-05', '2021-12-24 20:29:01.366692', 1, '', 18),
(76, 5, 'Vui g?? ph??m', 'media/lessons/images/hdvuigophim.png', '', '/media/lessons/lesson18/script5/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 18);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add account', 7, 'add_account'),
(26, 'Can change account', 7, 'change_account'),
(27, 'Can delete account', 7, 'delete_account'),
(28, 'Can view account', 7, 'view_account'),
(29, 'Can add character', 8, 'add_character'),
(30, 'Can change character', 8, 'change_character'),
(31, 'Can delete character', 8, 'delete_character'),
(32, 'Can view character', 8, 'view_character'),
(33, 'Can add competition', 9, 'add_competition'),
(34, 'Can change competition', 9, 'change_competition'),
(35, 'Can delete competition', 9, 'delete_competition'),
(36, 'Can view competition', 9, 'view_competition'),
(37, 'Can add contact', 10, 'add_contact'),
(38, 'Can change contact', 10, 'change_contact'),
(39, 'Can delete contact', 10, 'delete_contact'),
(40, 'Can view contact', 10, 'view_contact'),
(41, 'Can add document', 11, 'add_document'),
(42, 'Can change document', 11, 'change_document'),
(43, 'Can delete document', 11, 'delete_document'),
(44, 'Can view document', 11, 'view_document'),
(45, 'Can add lesson', 12, 'add_lesson'),
(46, 'Can change lesson', 12, 'change_lesson'),
(47, 'Can delete lesson', 12, 'delete_lesson'),
(48, 'Can view lesson', 12, 'view_lesson'),
(49, 'Can add news', 13, 'add_news'),
(50, 'Can change news', 13, 'change_news'),
(51, 'Can delete news', 13, 'delete_news'),
(52, 'Can view news', 13, 'view_news'),
(53, 'Can add practice badge', 14, 'add_practicebadge'),
(54, 'Can change practice badge', 14, 'change_practicebadge'),
(55, 'Can delete practice badge', 14, 'delete_practicebadge'),
(56, 'Can view practice badge', 14, 'view_practicebadge'),
(57, 'Can add text', 15, 'add_text'),
(58, 'Can change text', 15, 'change_text'),
(59, 'Can delete text', 15, 'delete_text'),
(60, 'Can view text', 15, 'view_text'),
(61, 'Can add topic lesson', 16, 'add_topiclesson'),
(62, 'Can change topic lesson', 16, 'change_topiclesson'),
(63, 'Can delete topic lesson', 16, 'delete_topiclesson'),
(64, 'Can view topic lesson', 16, 'view_topiclesson'),
(65, 'Can add topic practice', 17, 'add_topicpractice'),
(66, 'Can change topic practice', 17, 'change_topicpractice'),
(67, 'Can delete topic practice', 17, 'delete_topicpractice'),
(68, 'Can view topic practice', 17, 'view_topicpractice'),
(69, 'Can add word', 18, 'add_word'),
(70, 'Can change word', 18, 'change_word'),
(71, 'Can delete word', 18, 'delete_word'),
(72, 'Can view word', 18, 'view_word'),
(73, 'Can add user detail', 19, 'add_userdetail'),
(74, 'Can change user detail', 19, 'change_userdetail'),
(75, 'Can delete user detail', 19, 'delete_userdetail'),
(76, 'Can view user detail', 19, 'view_userdetail'),
(77, 'Can add time test', 20, 'add_timetest'),
(78, 'Can change time test', 20, 'change_timetest'),
(79, 'Can delete time test', 20, 'delete_timetest'),
(80, 'Can view time test', 20, 'view_timetest'),
(81, 'Can add lesson badge', 21, 'add_lessonbadge'),
(82, 'Can change lesson badge', 21, 'change_lessonbadge'),
(83, 'Can delete lesson badge', 21, 'delete_lessonbadge'),
(84, 'Can view lesson badge', 21, 'view_lessonbadge'),
(85, 'Can add game', 22, 'add_game'),
(86, 'Can change game', 22, 'change_game'),
(87, 'Can delete game', 22, 'delete_game'),
(88, 'Can view game', 22, 'view_game'),
(89, 'Can add content test', 23, 'add_contenttest'),
(90, 'Can change content test', 23, 'change_contenttest'),
(91, 'Can delete content test', 23, 'delete_contenttest'),
(92, 'Can view content test', 23, 'view_contenttest'),
(93, 'Can add competition badge', 24, 'add_competitionbadge'),
(94, 'Can change competition badge', 24, 'change_competitionbadge'),
(95, 'Can delete competition badge', 24, 'delete_competitionbadge'),
(96, 'Can view competition badge', 24, 'view_competitionbadge'),
(97, 'Can add call sign', 25, 'add_callsign'),
(98, 'Can change call sign', 25, 'change_callsign'),
(99, 'Can delete call sign', 25, 'delete_callsign'),
(100, 'Can view call sign', 25, 'view_callsign'),
(101, 'Can add activity', 26, 'add_activity'),
(102, 'Can change activity', 26, 'change_activity'),
(103, 'Can delete activity', 26, 'delete_activity'),
(104, 'Can view activity', 26, 'view_activity'),
(105, 'Can add faq', 27, 'add_faq'),
(106, 'Can change faq', 27, 'change_faq'),
(107, 'Can delete faq', 27, 'delete_faq'),
(108, 'Can view faq', 27, 'view_faq'),
(109, 'Can add header', 28, 'add_header'),
(110, 'Can change header', 28, 'change_header'),
(111, 'Can delete header', 28, 'delete_header'),
(112, 'Can view header', 28, 'view_header'),
(113, 'Can add tracking', 29, 'add_tracking'),
(114, 'Can change tracking', 29, 'change_tracking'),
(115, 'Can delete tracking', 29, 'delete_tracking'),
(116, 'Can view tracking', 29, 'view_tracking'),
(117, 'Can add tracking activity', 29, 'add_trackingactivity'),
(118, 'Can change tracking activity', 29, 'change_trackingactivity'),
(119, 'Can delete tracking activity', 29, 'delete_trackingactivity'),
(120, 'Can view tracking activity', 29, 'view_trackingactivity'),
(121, 'Can add tracking game', 30, 'add_trackinggame'),
(122, 'Can change tracking game', 30, 'change_trackinggame'),
(123, 'Can delete tracking game', 30, 'delete_trackinggame'),
(124, 'Can view tracking game', 30, 'view_trackinggame'),
(125, 'Can add game level', 31, 'add_gamelevel'),
(126, 'Can change game level', 31, 'change_gamelevel'),
(127, 'Can delete game level', 31, 'delete_gamelevel'),
(128, 'Can view game level', 31, 'view_gamelevel'),
(129, 'Can add tracking level game', 32, 'add_trackinglevelgame'),
(130, 'Can change tracking level game', 32, 'change_trackinglevelgame'),
(131, 'Can delete tracking level game', 32, 'delete_trackinglevelgame'),
(132, 'Can view tracking level game', 32, 'view_trackinglevelgame'),
(133, 'Can add lesson instruction', 33, 'add_lessoninstruction'),
(134, 'Can change lesson instruction', 33, 'change_lessoninstruction'),
(135, 'Can delete lesson instruction', 33, 'delete_lessoninstruction'),
(136, 'Can view lesson instruction', 33, 'view_lessoninstruction'),
(137, 'Can add category', 34, 'add_category'),
(138, 'Can change category', 34, 'change_category'),
(139, 'Can delete category', 34, 'delete_category'),
(140, 'Can view category', 34, 'view_category');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$qkszsHqs5Vev83BDi3VH0F$Hur5ioP3yit46daKibnvE3l07aXHLNsMK1s8uqBMyVU=', '2022-01-04 13:55:15.359918', 1, 'admin', '', '', '', 1, 1, '2021-11-15 17:57:04.108713'),
(8, 'pbkdf2_sha256$260000$EZKfdqQ5xmP9XRQUeJRhj9$i/vCgukW59FZOlbq99m+TU9VCHKAPf0ttW5bCIwaULQ=', '2021-11-16 18:50:43.132575', 0, 'user1', '', '', '', 0, 1, '2021-11-16 18:11:26.806392'),
(9, 'pbkdf2_sha256$260000$uAlLMdh6mwKMIrvG5791fa$r8WeZrTIGM6l+xPEZK0Qp4E/0bD36lzJrFK3K34Mc7s=', '2021-11-24 12:25:11.839459', 0, 'user2', '', '', '', 0, 1, '2021-11-16 19:30:56.514067'),
(10, 'pbkdf2_sha256$260000$PA5rakwIEwlr8TjL4eYk46$hU61S6I2sErnrdy8Y+sKw75j6zDECqwKJpnDhiY0wRE=', '2021-12-16 10:59:21.785700', 0, 'user3', '', '', '', 0, 1, '2021-11-17 03:37:18.270245'),
(11, 'pbkdf2_sha256$260000$QLWzeCU2bHKCm7zqMhA07t$oAlHMacVy4GgdtV3DYGSdas2vfS+9N+Anv2T51Yzs9o=', '2021-11-17 11:01:25.050830', 0, 'tran', '', '', '', 0, 1, '2021-11-17 11:01:24.788436'),
(12, 'pbkdf2_sha256$260000$I8lJhP9sf1hOayYUdtmrVc$QhTqwDO772Sx3+CAYpGjHxR0sq3JD5OQZE/+HinZdgQ=', '2021-11-17 11:24:43.107533', 0, 'user5', '', '', '', 0, 1, '2021-11-17 11:24:42.856819'),
(13, 'pbkdf2_sha256$260000$wkykGNGo01KpP8xVbTyp3c$/W4pfrlgG9oSd0wRz0QmTmaaDY3IFj88j+6gILp7/y8=', '2021-11-17 12:59:28.537963', 0, 'user', '', '', '', 0, 1, '2021-11-17 12:59:27.903827'),
(14, 'pbkdf2_sha256$260000$3Bmpx0wOYdIW3dTIegxVoH$PLO6n2TLuMTd9JQ9YIlAyVK0zk9ECtDijMjXfmR+Bdw=', '2021-11-17 13:03:44.795551', 0, 'a', '', '', '', 0, 1, '2021-11-17 13:03:44.125223'),
(15, 'pbkdf2_sha256$260000$wdjq2ccB29O3KRcZrsOw0V$LiYMnL4SNUSbIzVOg5IMqHMBuj3UbX5PDt07UdJDVro=', '2021-11-17 13:07:44.227791', 0, 'b', '', '', '', 0, 1, '2021-11-17 13:07:43.483380'),
(16, 'pbkdf2_sha256$260000$qU1o4kC0TNXNE9STXnm2jl$Z4yszxhy/y/T1N+tf5cdXycHM7Da50akhgX6+H6hPxU=', '2021-11-17 13:09:59.788182', 0, 'aa', '', '', '', 0, 1, '2021-11-17 13:09:59.143465'),
(17, 'pbkdf2_sha256$260000$VMIWjyMLC6IQGYXexosKdu$9y8ABseF+XhboUTo6gqmjJB5cNxgguQQ9k1jSp3RZXQ=', '2021-11-17 13:12:11.856230', 0, 'c', '', '', '', 0, 1, '2021-11-17 13:12:11.099719'),
(18, 'pbkdf2_sha256$260000$P4QHNaqEF01A12AsHHtPwL$FwC328ZvfQswUbUCF+enCNqNrsJ7Fz8Mxr9tS5dlYbY=', '2022-01-01 19:21:01.649687', 0, 'khai', '', '', '', 0, 1, '2021-11-29 17:13:21.959850'),
(24, 'pbkdf2_sha256$260000$vVJysss2GfWAf5kvtidrZK$kSrD14kFoxex/uv7bhAdSsTtfLMPja4h8glmd2yfrN0=', '2022-01-04 16:25:33.224691', 0, 'tuyet', '', '', '', 0, 1, '2021-12-16 11:08:41.897857');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `callsign`
--

CREATE TABLE `callsign` (
  `callsignid` int(11) NOT NULL,
  `callsignorder` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `frame` varchar(250) DEFAULT NULL,
  `exrequired` int(11) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `callsign`
--

INSERT INTO `callsign` (`callsignid`, `callsignorder`, `name`, `frame`, `exrequired`, `createdate`, `editdate`, `isenable`, `note`) VALUES
(1, 1, 'T??n binh', 'media/callsign/tanbinh.png', 100, '2021-11-05', '2021-11-05 13:08:02.000000', 1, ''),
(2, 2, 'Binh nh???t', 'media/callsign/binhnhat.png', 500, '2021-11-05', '2021-11-05 13:08:02.000000', 1, ''),
(3, 3, 'Th?????ng s??', 'media/callsign/thuongsi.png', 1000, '2021-11-05', '2021-11-05 13:08:02.000000', 1, ''),
(4, 4, '?????i ??y', 'media/callsign/daiuy.png', 2000, '2021-11-05', '2021-11-05 13:08:02.000000', 1, ''),
(5, 5, '?????i t??', 'media/callsign/daita.png', 5000, '2021-11-05', '2021-11-05 13:08:02.000000', 1, ''),
(6, 6, '?????i t?????ng', 'media/callsign/daituong.png', 10000, '2021-11-05', '2021-11-05 13:08:02.000000', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `name`, `createdate`, `editdate`, `isenable`, `note`) VALUES
(1, 'Ch????ng tr??nh Tin H???c', '2022-01-04', '2022-01-04 14:09:50.859540', 1, ''),
(2, 'Ch????ng tr??nh T???ng th???', '2022-01-04', '2022-01-04 14:09:54.922989', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `character`
--

CREATE TABLE `character` (
  `characterid` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `typekey` varchar(250) DEFAULT NULL,
  `row` varchar(250) DEFAULT NULL,
  `finger` varchar(250) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `competition`
--

CREATE TABLE `competition` (
  `competitionid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `startdate` datetime(6) DEFAULT NULL,
  `enddate` datetime(6) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `competition`
--

INSERT INTO `competition` (`competitionid`, `name`, `startdate`, `enddate`, `image`, `description`, `link`, `createdate`, `editdate`, `isenable`, `note`) VALUES
(1, 'Tranh t??i th??ng 12/2021', '2021-12-01 10:00:00.000000', '2021-12-31 22:00:00.000000', '/media/test/competition.png', '<p>Tranh t&agrave;i th&aacute;ng 12/2021</p>', '/media/competion/script-12-2021', '2021-12-16', '2021-12-16 06:58:12.322621', 1, ''),
(2, 'Tranh t??i th??ng 01/2022', '2022-01-01 10:00:00.000000', '2022-01-31 22:00:00.000000', '/media/test/competition.png', '<p>Tranh t&agrave;i th&aacute;ng 01/2022</p>', '/media/competion/script-01-2021', '2021-12-16', '2021-12-16 06:58:06.108669', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `competitionbadge`
--

CREATE TABLE `competitionbadge` (
  `competitionbadgeid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `competitionid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactid` int(11) NOT NULL,
  `fullname` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contenttest`
--

CREATE TABLE `contenttest` (
  `contenttestid` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contenttest`
--

INSERT INTO `contenttest` (`contenttestid`, `name`, `description`, `link`, `createdate`, `editdate`, `isenable`, `note`, `image`) VALUES
(1, 'KI???M TRA V??N B???N - D???', '', NULL, '2021-12-04', '2021-12-04 14:15:54.228637', 1, '', '/media/test/content1.png'),
(2, 'KI???M TRA V??N B???N - TRUNG B??NH', '', NULL, '2021-12-04', '2021-12-04 14:16:19.394614', 1, '', '/media/test/content2.png'),
(3, 'KI???M TRA V??N B???N - KH??', '', NULL, '2021-12-04', '2021-12-04 14:16:38.654801', 1, '', '/media/test/content3.png');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-12-03 12:44:08.466993', '1', 'KI???M TRA 1 PH??T', 1, '[{\"added\": {}}]', 20, 1),
(2, '2021-12-03 12:52:24.458805', '1', 'KI???M TRA 1 PH??T', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 20, 1),
(3, '2021-12-03 13:39:33.426907', '2', 'KI???M TRA 3 PH??T', 1, '[{\"added\": {}}]', 20, 1),
(4, '2021-12-03 13:40:04.306589', '3', 'KI???M TRA 5 PH??T', 1, '[{\"added\": {}}]', 20, 1),
(5, '2021-12-03 13:40:23.759912', '4', 'KI???M TRA 10 PH??T', 1, '[{\"added\": {}}]', 20, 1),
(6, '2021-12-03 13:40:37.241007', '5', 'KI???M TRA 15 PH??T', 1, '[{\"added\": {}}]', 20, 1),
(7, '2021-12-03 13:41:01.019621', '6', 'KI???M TRA KH??NG GI???I H???N', 1, '[{\"added\": {}}]', 20, 1),
(8, '2021-12-04 14:15:54.229671', '1', 'KI???M TRA V??N B???N - D???', 1, '[{\"added\": {}}]', 23, 1),
(9, '2021-12-04 14:16:19.395631', '2', 'KI???M TRA V??N B???N - TRUNG B??NH', 1, '[{\"added\": {}}]', 23, 1),
(10, '2021-12-04 14:16:38.655315', '3', 'KI???M TRA V??N B???N - KH??', 1, '[{\"added\": {}}]', 23, 1),
(11, '2021-12-12 16:04:33.697339', '5', 'Ph??m ???????c b???m nhi???u nh???t', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Content\"]}}]', 13, 1),
(12, '2021-12-12 16:04:41.948594', '4', 'T?????ng ????i b??n ph??m', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Content\"]}}]', 13, 1),
(13, '2021-12-12 16:04:52.122024', '3', 'N?????c n??o ????nh m??y kh?? nh???t', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Content\"]}}]', 13, 1),
(14, '2021-12-12 16:05:05.443034', '2', 'V??? sinh b??n ph??m th?????ng xuy??n', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Content\"]}}]', 13, 1),
(15, '2021-12-12 16:05:21.598296', '1', 'T???c ????? ????nh m??y chu???n', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Content\"]}}]', 13, 1),
(16, '2021-12-12 16:06:06.132873', '3', 'M??ch b???n nh???ng m???o nh??? trong qu?? tr??nh ????nh m??y m?????i ng??n.', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Content\"]}}]', 11, 1),
(17, '2021-12-12 16:06:14.449388', '2', 'Chia s??? cho b???n b?? quy???t h???c ????nh m??y m?????i ng??n hi???u qu???.', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Content\"]}}]', 11, 1),
(18, '2021-12-12 16:06:27.723830', '1', 'B???n c???n th???i gian bao l??u ????? h???c ????nh m??y m?????i ng??n?', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Content\"]}}]', 11, 1),
(19, '2021-12-16 06:50:05.535666', '1', 'KI???M TRA 1 PH??T', 2, '[{\"changed\": {\"fields\": [\"Isenable\"]}}]', 20, 1),
(20, '2021-12-16 06:50:21.889166', '1', 'KI???M TRA 1 PH??T', 2, '[{\"changed\": {\"fields\": [\"Isenable\"]}}]', 20, 1),
(21, '2021-12-16 06:50:33.893528', '4', 'KI???M TRA 10 PH??T', 2, '[{\"changed\": {\"fields\": [\"Isenable\"]}}]', 20, 1),
(22, '2021-12-16 06:50:40.794230', '5', 'KI???M TRA 15 PH??T', 2, '[{\"changed\": {\"fields\": [\"Isenable\"]}}]', 20, 1),
(23, '2021-12-16 06:50:47.323418', '6', 'KI???M TRA KH??NG GI???I H???N', 2, '[{\"changed\": {\"fields\": [\"Isenable\"]}}]', 20, 1),
(24, '2021-12-16 06:56:21.309267', '1', 'Tranh t??i th??ng 12/2021', 1, '[{\"added\": {}}]', 9, 1),
(25, '2021-12-16 06:58:06.116673', '2', 'Tranh t??i th??ng 01/2022', 1, '[{\"added\": {}}]', 9, 1),
(26, '2021-12-16 06:58:12.330793', '1', 'Tranh t??i th??ng 12/2021', 2, '[{\"changed\": {\"fields\": [\"Link\"]}}]', 9, 1),
(27, '2021-12-24 20:28:49.080837', '5', 'Th??? t??i tr?? nh???', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 26, 1),
(28, '2021-12-24 20:29:01.374761', '19', 'Th??? t??i tr?? nh???', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 26, 1),
(29, '2021-12-24 20:29:07.328441', '14', 'Th??? t??i tr?? nh???', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 26, 1),
(30, '2021-12-24 20:29:14.713197', '10', 'Th??? t??i tr?? nh???', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 26, 1),
(31, '2021-12-24 20:29:23.347888', '8', 'Th??? t??i tr?? nh???', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]', 26, 1),
(32, '2021-12-30 10:10:58.673450', '1', 'M??n 1- D???', 1, '[{\"added\": {}}]', 31, 1),
(33, '2021-12-30 10:11:18.853575', '1', 'D???', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 31, 1),
(34, '2021-12-30 10:11:39.843517', '1', 'D???', 2, '[{\"changed\": {\"fields\": [\"Gameid\"]}}]', 31, 1),
(35, '2021-12-30 10:12:52.312075', '2', 'Trung b??nh', 1, '[{\"added\": {}}]', 31, 1),
(36, '2021-12-30 10:13:05.052427', '1', 'D???', 2, '[{\"changed\": {\"fields\": [\"Stars\"]}}]', 31, 1),
(37, '2021-12-30 10:13:33.177026', '3', 'Kh??', 1, '[{\"added\": {}}]', 31, 1),
(38, '2021-12-30 10:17:21.567386', '1', 'D???', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 31, 1),
(39, '2021-12-30 10:17:46.710460', '1', 'D???', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 31, 1),
(40, '2021-12-30 10:18:46.406413', '1', 'D???', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 31, 1),
(41, '2021-12-30 10:23:59.562237', '1', 'D???', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 31, 1),
(42, '2021-12-30 10:25:29.535863', '1', 'D???', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 31, 1),
(43, '2021-12-30 10:33:39.861471', '1', 'D???', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 31, 1),
(44, '2021-12-30 10:35:36.324771', '1', 'D???', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 31, 1),
(45, '2021-12-30 10:37:17.944634', '2', 'Trung b??nh', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 31, 1),
(46, '2021-12-30 10:37:25.610350', '2', 'Trung b??nh', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 31, 1),
(47, '2021-12-30 10:37:34.603822', '3', 'Kh??', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 31, 1),
(48, '2021-12-31 11:05:18.492213', '4', 'D???', 1, '[{\"added\": {}}]', 31, 1),
(49, '2021-12-31 11:06:01.275825', '1', 'D???', 2, '[]', 31, 1),
(50, '2021-12-31 11:06:27.669648', '5', 'Trung b??nh', 1, '[{\"added\": {}}]', 31, 1),
(51, '2021-12-31 11:06:51.204210', '6', 'Kh??', 1, '[{\"added\": {}}]', 31, 1),
(52, '2022-01-01 17:07:40.985197', '3', 'Kh??', 2, '[{\"changed\": {\"fields\": [\"Link\"]}}]', 31, 1),
(53, '2022-01-02 04:48:22.124585', '4', 'CH????NG TR??NH GI??O D???C PH??? TH??NG - CH????NG TR??NH T???NG TH??? 2018', 1, '[{\"added\": {}}]', 11, 1),
(54, '2022-01-02 04:53:22.391030', '4', 'CH????NG TR??NH GI??O D???C PH??? TH??NG - CH????NG TR??NH T???NG TH??? 2018', 2, '[{\"changed\": {\"fields\": [\"Pdf\"]}}]', 11, 1),
(55, '2022-01-02 20:14:52.076546', '6', 'CH????NG TR??NH GI??O D???C PH??? TH??NG 2018 - CH????NG TR??NH M??N TIN H???C', 1, '[{\"added\": {}}]', 11, 1),
(56, '2022-01-02 20:17:28.876777', '6', '<p>CH????NG TR&Igrave;NH GI&Aacute;O D???C PH??? TH&Ocirc;NG 2018</p>\r\n\r\n<p>- CH????NG TR&Igrave;NH M&Ocirc;N TIN H???C</p>', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(57, '2022-01-02 20:18:13.113511', '6', '<p>CH????NG TR??NH GI??O D???C PH??? TH??NG 2018</p>\r\n\r\n<p>- CH????NG TR??NH M??N TIN H???C</p>', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(58, '2022-01-02 20:18:55.584496', '6', '<p>CH????NG TR??NH GI??O D???C PH??? TH??NG 2018</p> <p>- CH????NG TR??NH M??N TIN H???C</p>', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(59, '2022-01-02 20:19:39.734814', '6', 'CH????NG TR&Igrave;NH GI&Aacute;O D???C PH??? TH&Ocirc;NG 2018\r\n\r\n- CH????NG TR&Igrave;NH M&Ocirc;N TIN H???C', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(60, '2022-01-02 20:21:07.029624', '6', 'CH????NG TR??NH GI??O D???C PH??? TH??NG 2018\r\n- CH????NG TR??NH M??N TIN H???C', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(61, '2022-01-02 20:22:01.719844', '6', '<p>CH????NG TR&Igrave;NH GI&Aacute;O D???C PH??? TH&Ocirc;NG 2018</p>\r\n\r\n<p>- CH????NG TR&Igrave;NH M&Ocirc;N TIN H???C</p>', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(62, '2022-01-02 20:25:52.232323', '6', '<p>CH????NG TR&Igrave;NH GI&Aacute;O D???C PH??? TH&Ocirc;NG 2018<br />\r\n- CH????NG TR&Igrave;NH M&Ocirc;N TIN H???C</p>', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(63, '2022-01-02 20:26:06.432093', '6', '<p>CH????NG TR&Igrave;NH GI&Aacute;O D???C PH??? TH&Ocirc;NG 2018<br />\r\n- CH????NG TR&Igrave;NH M&Ocirc;N TIN H???C</p>', 2, '[]', 11, 1),
(64, '2022-01-02 20:26:43.392506', '6', '<p>CH????NG TR??NH GI??O D???C PH??? TH??NG 2018<br />\r\n- CH????NG TR??NH M??N TIN H???C</p>', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(65, '2022-01-02 20:27:16.685693', '5', '<p>CH????NG TR&Igrave;NH GI&Aacute;O D???C PH??? TH&Ocirc;NG T???NG TH??? 2018<br />\r\n- T&Oacute;M T???T T???NG TH???</p>', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(66, '2022-01-02 20:27:37.529018', '5', '<p>CH????NG TR??NH GI??O D???C PH??? TH??NG T???NG TH??? 2018<br />\r\n- T??M T???T T???NG TH???</p>', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(67, '2022-01-02 20:28:14.290726', '4', '<p>CH????NG TR??NH GI??O D???C PH??? TH??NG T???NG TH??? 2018<br />\r\n- CH????NG TR??NH T???NG TH???</p>', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(68, '2022-01-02 20:28:51.523822', '4', '<p>CH????NG TR&Igrave;NH GI&Aacute;O D???C PH??? TH&Ocirc;NG&nbsp;2018<br />\r\n- CH????NG TR&Igrave;NH T???NG TH???</p>', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(69, '2022-01-04 02:49:47.940511', '5', '<p>CH????NG TR&Igrave;NH GI&Aacute;O D???C PH??? TH&Ocirc;NG 2018<br />\r\n- T&Oacute;M T???T T???NG TH???</p>', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(70, '2022-01-04 13:56:28.183983', '1', 'Ch????ng tr??nh Tin H???c', 1, '[{\"added\": {}}]', 34, 1),
(71, '2022-01-04 13:56:38.116063', '2', 'Ch????ng tr??nh T???ng th???', 1, '[{\"added\": {}}]', 34, 1),
(72, '2022-01-04 13:56:57.692702', '4', '<p>CH????NG TR&Igrave;NH GI&Aacute;O D???C PH??? TH&Ocirc;NG&nbsp;2018<br />\r\n- CH????NG TR&Igrave;NH T???NG TH???</p>', 2, '[{\"changed\": {\"fields\": [\"Categoryid\"]}}]', 11, 1),
(73, '2022-01-04 13:57:05.323405', '5', '<p>CH????NG TR&Igrave;NH GI&Aacute;O D???C PH??? TH&Ocirc;NG 2018<br />\r\n- T&Oacute;M T???T T???NG TH???</p>', 2, '[{\"changed\": {\"fields\": [\"Categoryid\"]}}]', 11, 1),
(74, '2022-01-04 13:57:08.612830', '6', '<p>CH????NG TR&Igrave;NH GI&Aacute;O D???C PH??? TH&Ocirc;NG 2018<br />\r\n- CH????NG TR&Igrave;NH M&Ocirc;N TIN H???C</p>', 2, '[{\"changed\": {\"fields\": [\"Categoryid\", \"Title\"]}}]', 11, 1),
(75, '2022-01-04 13:57:21.389777', '3', 'M??ch b???n nh???ng m???o nh??? trong qu?? tr??nh ????nh m??y m?????i ng??n.', 3, '', 11, 1),
(76, '2022-01-04 13:57:21.394606', '2', 'Chia s??? cho b???n b?? quy???t h???c ????nh m??y m?????i ng??n hi???u qu???.', 3, '', 11, 1),
(77, '2022-01-04 13:57:21.396565', '1', 'B???n c???n th???i gian bao l??u ????? h???c ????nh m??y m?????i ng??n?', 3, '', 11, 1),
(78, '2022-01-04 14:09:50.861534', '1', 'Ch????ng tr??nh Tin H???c', 1, '[{\"added\": {}}]', 34, 1),
(79, '2022-01-04 14:09:54.924692', '2', 'Ch????ng tr??nh T???ng th???', 1, '[{\"added\": {}}]', 34, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'homepage', 'account'),
(26, 'homepage', 'activity'),
(25, 'homepage', 'callsign'),
(34, 'homepage', 'category'),
(8, 'homepage', 'character'),
(9, 'homepage', 'competition'),
(24, 'homepage', 'competitionbadge'),
(10, 'homepage', 'contact'),
(23, 'homepage', 'contenttest'),
(11, 'homepage', 'document'),
(27, 'homepage', 'faq'),
(22, 'homepage', 'game'),
(31, 'homepage', 'gamelevel'),
(28, 'homepage', 'header'),
(12, 'homepage', 'lesson'),
(21, 'homepage', 'lessonbadge'),
(33, 'homepage', 'lessoninstruction'),
(13, 'homepage', 'news'),
(14, 'homepage', 'practicebadge'),
(15, 'homepage', 'text'),
(20, 'homepage', 'timetest'),
(16, 'homepage', 'topiclesson'),
(17, 'homepage', 'topicpractice'),
(29, 'homepage', 'trackingactivity'),
(30, 'homepage', 'trackinggame'),
(32, 'homepage', 'trackinglevelgame'),
(19, 'homepage', 'userdetail'),
(18, 'homepage', 'word'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-11-14 10:21:03.557991'),
(2, 'auth', '0001_initial', '2021-11-14 10:21:04.046127'),
(3, 'admin', '0001_initial', '2021-11-14 10:21:04.189714'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-11-14 10:21:04.213938'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-11-14 10:21:04.234820'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-11-14 10:21:04.306292'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-11-14 10:21:04.357250'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-11-14 10:21:04.382186'),
(9, 'auth', '0004_alter_user_username_opts', '2021-11-14 10:21:04.400279'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-11-14 10:21:04.448374'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-11-14 10:21:04.452096'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-11-14 10:21:04.467868'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-11-14 10:21:04.489121'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-11-14 10:21:04.505151'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-11-14 10:21:04.529143'),
(16, 'auth', '0011_update_proxy_permissions', '2021-11-14 10:21:04.553151'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-11-14 10:21:04.583301'),
(18, 'homepage', '0001_initial', '2021-11-14 10:21:06.288226'),
(19, 'homepage', '0002_activity_topiclessonid', '2021-11-14 10:21:06.390166'),
(20, 'homepage', '0003_alter_character_characterid', '2021-11-14 10:21:06.673704'),
(21, 'homepage', '0004_auto_20211101_2307', '2021-11-14 10:21:09.081850'),
(22, 'homepage', '0005_remove_scriptactivity_lessonid', '2021-11-14 10:21:09.155971'),
(23, 'homepage', '0006_auto_20211105_1259', '2021-11-14 10:21:09.518317'),
(24, 'homepage', '0007_auto_20211105_1318', '2021-11-14 10:21:09.725611'),
(25, 'homepage', '0008_auto_20211105_1414', '2021-11-14 10:21:09.763637'),
(26, 'homepage', '0009_alter_game_image', '2021-11-14 10:21:09.775221'),
(27, 'homepage', '0010_alter_account_avatar', '2021-11-14 10:21:09.833453'),
(28, 'homepage', '0011_auto_20211114_1719', '2021-11-14 10:21:11.913083'),
(29, 'sessions', '0001_initial', '2021-11-14 10:21:12.014776'),
(30, 'homepage', '0012_faq', '2021-11-17 02:10:22.951693'),
(31, 'homepage', '0013_auto_20211117_0912', '2021-11-17 02:12:33.793145'),
(32, 'homepage', '0014_header', '2021-11-18 02:47:36.325626'),
(33, 'homepage', '0015_delete_header', '2021-11-18 02:55:49.844387'),
(34, 'homepage', '0016_activity_image', '2021-11-18 03:04:00.884969'),
(35, 'homepage', '0017_delete_activity', '2021-11-18 03:07:20.692415'),
(36, 'homepage', '0018_activity', '2021-11-18 03:07:36.069584'),
(37, 'homepage', '0019_header', '2021-11-18 08:20:24.314909'),
(38, 'homepage', '0020_tracking', '2021-11-28 12:53:02.101824'),
(39, 'homepage', '0021_alter_callsign_frame', '2021-11-29 15:47:13.033877'),
(40, 'homepage', '0022_auto_20211203_1941', '2021-12-03 12:41:14.715134'),
(41, 'homepage', '0023_auto_20211203_1943', '2021-12-03 12:43:56.659757'),
(42, 'homepage', '0024_auto_20211216_1251', '2021-12-16 05:51:57.095921'),
(43, 'homepage', '0025_auto_20211230_1704', '2021-12-30 10:05:08.319281'),
(44, 'homepage', '0026_gamelevel_levelorder', '2021-12-30 10:09:39.171482'),
(45, 'homepage', '0027_auto_20220101_2309', '2022-01-01 16:10:03.720737'),
(46, 'homepage', '0028_auto_20220102_0110', '2022-01-01 18:10:21.371611'),
(47, 'homepage', '0029_trackinglevelgame_stars', '2022-01-01 18:54:14.580207'),
(48, 'homepage', '0030_auto_20220102_0416', '2022-01-01 21:16:24.655144'),
(49, 'homepage', '0031_document_pdf', '2022-01-02 04:35:48.070993'),
(50, 'homepage', '0032_auto_20220102_1142', '2022-01-02 04:43:07.872973'),
(51, 'homepage', '0033_auto_20220102_1202', '2022-01-02 05:02:17.469644'),
(52, 'homepage', '0034_auto_20220103_0211', '2022-01-02 19:11:52.759848'),
(53, 'homepage', '0035_document_author', '2022-01-02 19:14:36.427585'),
(54, 'homepage', '0036_auto_20220103_0339', '2022-01-02 20:39:27.308925'),
(55, 'homepage', '0037_auto_20220104_2053', '2022-01-04 13:53:58.651994'),
(56, 'homepage', '0037_category', '2022-01-04 14:06:07.543972'),
(57, 'homepage', '0037_auto_20220104_2108', '2022-01-04 14:08:52.919904');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('36cgu10p114n94mfxpv5z9jyx9ub2jyu', '.eJxVjMEOwiAQRP-FsyHA1lo8eu83kF12K1UDSWlPxn-XJj3ocea9mbcKuK0pbFWWMLO6KqtOvx1hfEreAT8w34uOJa_LTHpX9EGrHgvL63a4fwcJa2prb8gZ10MXCYEulqAlAjGM3kfAHpzQ2XTWNEMQkAW9pYmHwSFNTn2-2rU4XQ:1mshJn:U_zOhG9sCNxbchEloU6tDW72bcUgANnm_KA_Qp2MPag', '2021-12-16 08:19:51.036995'),
('4yzrkezc5iggf5hdnozvpgq88lcmt6zj', 'e30:1mxoZG:2DvSCLOVH6iIxcaQY5yFtMROvb3JjUzeaSm2MZN-KW8', '2021-12-30 11:04:58.291127'),
('7ds9rj1fe9urlhnex85zxpu5s9roc6y5', '.eJxVjMEOwiAQRP-FsyHA1lo8eu83kF12K1UDSWlPxn-XJj3ocea9mbcKuK0pbFWWMLO6KqtOvx1hfEreAT8w34uOJa_LTHpX9EGrHgvL63a4fwcJa2prb8gZ10MXCYEulqAlAjGM3kfAHpzQ2XTWNEMQkAW9pYmHwSFNTn2-2rU4XQ:1mwRK0:MAk11aqb1vJfQybdGzxgLdrhYdiFQqklh4GAZAJgzPk', '2021-12-26 16:03:32.355644'),
('7q94wrvfy2t8wz9hwsczyomp0ppwc948', '.eJxVjMsOwiAQRf-FtSG8KS7d-w2EYQapGkhKuzL-uzbpQrf3nHNfLKZtrXEbtMQZ2ZlJwU6_I6T8oLYTvKd26zz3ti4z8F3hBx382pGel8P9O6hp1G9NVkmdvXG2SNSUJxsMTAaVTCBAWyBUwgeBXksAciRVAZczFWWDIGDvDwMoOIE:1mnd0N:Je9NubioruCC29YoKfRbRM9PClfwH-7hfpqGrfeF8Ao', '2021-12-02 08:42:51.543815'),
('8l6uvspb5va7hmlf5fsv41prqu8gadaw', 'e30:1mxoWQ:7Jzvz3L-ToFX-ZnD97oI30v2EZ5J0McjcbkyyRky1Us', '2021-12-30 11:02:02.781660'),
('94ch9990miwrddbc4gsh3tuvvp9um1ip', '.eJxVjEEOgjAQRe_StWmmlCnUpXvPQGamU4saSCisjHdXEha6_e-9_zIDbWsZtqrLMCZzNk1rTr8jkzx02km603SbrczTuoxsd8UetNrrnPR5Ody_g0K1fGsv4iByQz22LknPiC0ioSftIMQMDJqT77QTnzMCQmCljC44yRrZvD8KBTiN:1n4eKd:aJVexMUSlO53NSDqcEA7p9jJAUlVVljtmm2GuQGil7U', '2022-01-18 07:34:07.010600'),
('bk0t58zcn7fjofvxenn2uruqaw8hecm5', '.eJxVjMEOwiAQRP-FsyHA1lo8eu83kF12K1UDSWlPxn-XJj3ocea9mbcKuK0pbFWWMLO6KqtOvx1hfEreAT8w34uOJa_LTHpX9EGrHgvL63a4fwcJa2prb8gZ10MXCYEulqAlAjGM3kfAHpzQ2XTWNEMQkAW9pYmHwSFNTn2-2rU4XQ:1mnKks:lWcb-monv48wDf_og1z4sQSw3aj264zpidVVNypJ_Lo', '2021-12-01 13:13:38.260469'),
('c7uj8fmcpia7u5663st70k1q6bevbvnv', '.eJxVjMEOwiAQRP-FsyHA1lo8eu83kF12K1UDSWlPxn-XJj3ocea9mbcKuK0pbFWWMLO6KqtOvx1hfEreAT8w34uOJa_LTHpX9EGrHgvL63a4fwcJa2prb8gZ10MXCYEulqAlAjGM3kfAHpzQ2XTWNEMQkAW9pYmHwSFNTn2-2rU4XQ:1mtVop:_u8c0f0k4Id-ThrWIC_qQvXyhL2JCJxFDyJunGG4URA', '2021-12-18 14:15:15.862939'),
('czta0ujiwiuitfetevzwe0gux1ltpg3o', '.eJxVjMEOwiAQRP-FsyHA1lo8eu83kF12K1UDSWlPxn-XJj3ocea9mbcKuK0pbFWWMLO6KqtOvx1hfEreAT8w34uOJa_LTHpX9EGrHgvL63a4fwcJa2prb8gZ10MXCYEulqAlAjGM3kfAHpzQ2XTWNEMQkAW9pYmHwSFNTn2-2rU4XQ:1n0rVA:paWvnWJseOS5yMtGgWts5jBe4FRUWbVIY7CjEcfpZsY', '2022-01-07 20:49:20.557999'),
('ftbas66lw1ljtygswany6l66wpbrvyda', '.eJxVjMEOwiAQRP-FsyHA1lo8eu83kF12K1UDSWlPxn-XJj3ocea9mbcKuK0pbFWWMLO6KqtOvx1hfEreAT8w34uOJa_LTHpX9EGrHgvL63a4fwcJa2prb8gZ10MXCYEulqAlAjGM3kfAHpzQ2XTWNEMQkAW9pYmHwSFNTn2-2rU4XQ:1mt7pB:aFEP2eRUHoztsyXF7JsHTAsuXHEwgFHqWBGVj_Dy42M', '2021-12-17 12:38:01.968668'),
('h7lneeetf7lfhsuw150ks5it8k35uozw', '.eJxVjEEOgjAQRe_StWmmlCnUpXvPQGamU4saSCisjHdXEha6_e-9_zIDbWsZtqrLMCZzNk1rTr8jkzx02km603SbrczTuoxsd8UetNrrnPR5Ody_g0K1fGsv4iByQz22LknPiC0ioSftIMQMDJqT77QTnzMCQmCljC44yRrZvD8KBTiN:1n00tJ:VUcJ5OX5zXWtbTK6q3LO2KypW-WAEpJDrAzaZnzIl4o', '2022-01-05 12:38:45.584056'),
('j6ufy1hcqinkmqmzpsaauboa49ud116m', '.eJxVjEEOgjAQRe_StWmmlCnUpXvPQGamU4saSCisjHdXEha6_e-9_zIDbWsZtqrLMCZzNk1rTr8jkzx02km603SbrczTuoxsd8UetNrrnPR5Ody_g0K1fGsv4iByQz22LknPiC0ioSftIMQMDJqT77QTnzMCQmCljC44yRrZvD8KBTiN:1mxpFg:iAnw0VmQ2QIX9EY0IcbZQAikREyqKv4gL4doFYv0CIQ', '2021-12-30 11:48:48.490450'),
('jqj7rzgsurrfcckknpfjit0ehgas6y6h', '.eJxVjEEOgjAQRe_StWmmlCnUpXvPQGamU4saSCisjHdXEha6_e-9_zIDbWsZtqrLMCZzNk1rTr8jkzx02km603SbrczTuoxsd8UetNrrnPR5Ody_g0K1fGsv4iByQz22LknPiC0ioSftIMQMDJqT77QTnzMCQmCljC44yRrZvD8KBTiN:1mxozI:45wLKzfwwFLnS7TWxgZbVl5ZFZu_0PK9MGIc5bdIG6Y', '2021-12-30 11:31:52.577899'),
('k1uvcu6gahjtygve1rr0lilwq91hbbt6', '.eJxVjEEOgjAQRe_StWmmlCnUpXvPQGamU4saSCisjHdXEha6_e-9_zIDbWsZtqrLMCZzNk1rTr8jkzx02km603SbrczTuoxsd8UetNrrnPR5Ody_g0K1fGsv4iByQz22LknPiC0ioSftIMQMDJqT77QTnzMCQmCljC44yRrZvD8KBTiN:1mzuPX:LYciE-ABey9sU6KX2YaW7dDKae5lArMFWjMOFj_Z36M', '2022-01-05 05:43:35.525057'),
('ms5ocfqe7s6vhsbmlojr7pw2fs61rzwg', '.eJxVjEEOgjAQRe_StWmmlCnUpXvPQGamU4saSCisjHdXEha6_e-9_zIDbWsZtqrLMCZzNk1rTr8jkzx02km603SbrczTuoxsd8UetNrrnPR5Ody_g0K1fGsv4iByQz22LknPiC0ioSftIMQMDJqT77QTnzMCQmCljC44yRrZvD8KBTiN:1mxpNY:fbLmvEjl9RCThxtBLvy2WDRhHaWqfeicwYABWB2umVY', '2021-12-30 11:56:56.568755'),
('no6brdgl4cytov4zths5rahfzy3ee5n6', '.eJxVjEEOgjAQRe_StWmmlCnUpXvPQGamU4saSCisjHdXEha6_e-9_zIDbWsZtqrLMCZzNk1rTr8jkzx02km603SbrczTuoxsd8UetNrrnPR5Ody_g0K1fGsv4iByQz22LknPiC0ioSftIMQMDJqT77QTnzMCQmCljC44yRrZvD8KBTiN:1n2xxu:PgXvUcjGKDlAEjfJq8qRjj9XSEMYXojtDHdGhKOXOKQ', '2022-01-13 16:07:42.669144'),
('p72lgn5tgtwu7zgb8004zbxl47ik9eis', '.eJxVjEEOgjAQRe_StWmmlCnUpXvPQGamU4saSCisjHdXEha6_e-9_zIDbWsZtqrLMCZzNk1rTr8jkzx02km603SbrczTuoxsd8UetNrrnPR5Ody_g0K1fGsv4iByQz22LknPiC0ioSftIMQMDJqT77QTnzMCQmCljC44yRrZvD8KBTiN:1mxqYp:Yy7PcErFeF1LNTFhcBAYI-TaKYOj4LUX5IaFStiRAak', '2021-12-30 13:12:39.973177'),
('pw7b7u8lk0ikh866c5ra5hei2w7dnryo', '.eJxVjEEOgjAQRe_StWmmlCnUpXvPQGamU4saSCisjHdXEha6_e-9_zIDbWsZtqrLMCZzNk1rTr8jkzx02km603SbrczTuoxsd8UetNrrnPR5Ody_g0K1fGsv4iByQz22LknPiC0ioSftIMQMDJqT77QTnzMCQmCljC44yRrZvD8KBTiN:1n4mcv:dVwvhkNaIy-H42WDulK9vhTgl4SbzEiz34mlVRDRfFo', '2022-01-18 16:25:33.227669'),
('twutz06wh4xubu7so62cd0gt4vkfiid8', 'e30:1mxoXg:CiRv_3NEEN6jTqAV2DDqBzEEbrUGv63L8ECXQMhtsfk', '2021-12-30 11:03:20.136859'),
('ufn293lij1p8k2kaxn5ylx17fp9k9xse', '.eJxVjEEOgjAQRe_StWmmlCnUpXvPQGamU4saSCisjHdXEha6_e-9_zIDbWsZtqrLMCZzNk1rTr8jkzx02km603SbrczTuoxsd8UetNrrnPR5Ody_g0K1fGsv4iByQz22LknPiC0ioSftIMQMDJqT77QTnzMCQmCljC44yRrZvD8KBTiN:1n47Uj:2WpvZbe2J97Yjz3WzxFKTVLkHCvHJUux1Hv0TzCxJ0Q', '2022-01-16 20:30:21.639709'),
('utr5yd08o4t4mkh2e7yqy77go0i62hle', 'e30:1mn1wd:pO41zrUaPRKYDfNNaybwTaNByXICgKsi4fVknSBpS70', '2021-11-30 17:08:31.749705'),
('w3737ctm85h7g3qi2yhwmrgmbchnw33f', '.eJxVjEEOgjAQRe_StWmmlCnUpXvPQGamU4saSCisjHdXEha6_e-9_zIDbWsZtqrLMCZzNk1rTr8jkzx02km603SbrczTuoxsd8UetNrrnPR5Ody_g0K1fGsv4iByQz22LknPiC0ioSftIMQMDJqT77QTnzMCQmCljC44yRrZvD8KBTiN:1mzg3B:Vw2385XzWYXGeMVwrfFNJS6dCVAGn2TCAuBXHZ67ppo', '2022-01-04 14:23:33.879317'),
('wzxstjpfa3snfnwteluzud1l3vwkdm0z', '.eJxVjEEOwiAQRe_C2hAHKIJL956BDDODVA1NSrsy3l2bdKHb_977L5VwXWpau8xpZHVWENThd8xID2kb4Tu226Rpass8Zr0peqddXyeW52V3_w4q9vqtPaAzxgSmDKfCgIV9pGhCHqhYCRAxUiiWjWd_zCjWgYAN5IjdIEa9Pxt-OJg:1myArv:C6qqqMfytuaZ1vTIkBnOtTKDV8w7mjmgA0wZHYZ0-60', '2021-12-31 10:53:43.423655'),
('ya7u5k4plpx7f98ff1dbb9se4cz3lztz', '.eJxVjMEOwiAQRP-FsyHA1lo8eu83kF12K1UDSWlPxn-XJj3ocea9mbcKuK0pbFWWMLO6KqtOvx1hfEreAT8w34uOJa_LTHpX9EGrHgvL63a4fwcJa2prb8gZ10MXCYEulqAlAjGM3kfAHpzQ2XTWNEMQkAW9pYmHwSFNTn2-2rU4XQ:1n2sJk:0ObD1gu26Q4nj3GreJhE-t4BbRHBRT42SI0zyuffvTo', '2022-01-13 10:05:52.936192');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `documentid` int(11) NOT NULL,
  `title` longtext NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `pdf` varchar(250) DEFAULT NULL,
  `author` varchar(250) DEFAULT NULL,
  `categoryid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`documentid`, `title`, `image`, `description`, `content`, `createdate`, `editdate`, `isenable`, `note`, `pdf`, `author`, `categoryid_id`) VALUES
(4, '<p>CH????NG TR&Igrave;NH GI&Aacute;O D???C PH??? TH&Ocirc;NG&nbsp;2018<br />\r\n- CH????NG TR&Igrave;NH T???NG TH???</p>', 'CTGDPT-2018-Tong-the.png', '', '', '2022-01-02', '2022-01-04 13:56:57.690697', 1, '', 'CTGDPT-2018-Tong-the.pdf', 'Hu???nh Ng???c Tuy???t', 2),
(5, '<p>CH????NG TR&Igrave;NH GI&Aacute;O D???C PH??? TH&Ocirc;NG 2018<br />\r\n- T&Oacute;M T???T T???NG TH???</p>', 'CTGDPT-2018-Tom-tat-tong-the.png', '', '', '2022-01-02', '2022-01-04 13:57:05.321408', 1, '', 'CTGDPT-2018-Tom-tat-tong-the.pdf', 'Hu???nh Ng???c Tuy???t', 2),
(6, '<p>CH????NG TR&Igrave;NH GI&Aacute;O D???C PH??? TH&Ocirc;NG 2018<br />\r\n- CH????NG TR&Igrave;NH M&Ocirc;N TIN H???C</p>', 'CTGDPT-2018-mon-Tin-hoc.png', '', '', '2022-01-03', '2022-01-04 13:57:08.610939', 1, '', 'CTGDPT-2018-mon-Tin-hoc.pdf', 'Hu???nh Ng???c Tuy???t', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faqid` int(11) NOT NULL,
  `question` varchar(250) NOT NULL,
  `answer` longtext DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faqid`, `question`, `answer`, `createdate`, `editdate`, `isenable`, `note`) VALUES
(1, 'Kh??a h???c n??y ho??n to??n mi???n ph???', '????ng v???y, Smart Typing l?? ???ng d???ng web luy???n t???p ????nh m??y m?????i ng??n.', '2021-11-17', '2021-11-17 10:12:46.000000', 1, ''),
(2, 'T???i sao t??i c???n ????ng k?? ???ng d???ng n??y?', '1) N???u ????ng k??, b???n s??? c?? th??ng tin v??? s??? ti???n b??? v?? l???ch s??? c???a m??nh.N???u b???n c?? ????ng k?? th??ng tin t??i kho???n, b???n s??? ???????c l??u v???t qu?? tr??nh h???c v?? luy???n t???p tr??n ???ng d???ng Smart Typing. Ngo??i ra, h??? th???ng c??n cung c???p danh hi???u cho ng?????i h???c n???u ?????t ????? ??i???m kinh nghi???m m?? h??? th???ng ????a ra.', '2021-11-17', '2021-11-17 10:12:46.000000', 1, ''),
(3, 'M???t bao nhi??u th???i gian ????? c?? th??? h???c g?? 10 ng??n?', 'Th???i gian c???n ????? h???c g?? 10 ng??n ph??? thu???c v??o b???n th??n b???n. Th???c h??nh th?????ng xuy??n c??ng r???t quan tr???ng. ????? c?? k???t qu??? t???t, ch??ng t??i ????? ngh??? b???n th???c hi???n 1 b??i h???c m???t ng??y. H??y nh??? r???ng, bi???t v??? tr?? t???t c??? c??c ch??? c??i kh??ng c?? ngh??a l?? b???n ???? s???n sang ????? c?? th??? ????nh m??y nhanh. Ng??n tay c???a b???n c???n d???n d???n nh??? ???????c c??c m???u chuy???n ?????ng hay c??n g???i l?? \'ph???n x??? chuy???n ?????ng c?? ??i???u ki???n\' v??? v??? tr?? c???a m???i ph??m c??? th???, m?? kh??ng c???n suy ngh?? v??? c??c ph??m ho???c nh??n xu???ng b??n ph??m. Kh??? n??ng t??? ?????ng di chuy???n n??y ch??? ???????c ph??t tri???n sau nhi???u l???n l???p l???i. H??y nh??? r???ng ??? C?? c??ng m??i s???t c?? ng??y n??n kim!', '2021-11-17', '2021-11-17 10:12:46.000000', 1, ''),
(4, 'Ch??? s??? t??? tr??n ph??t (wpm) ???????c ??o b???ng c??ch n??o?', '????? ??o WPM, ch????ng tr??nh ?????m t???ng s??? t??? b???n ???? vi???t trong m???t ph??t. 1 t??? = 5 k?? t???, bao g???m c??? d???u c??ch v?? d???u c??u.', '2021-11-17', '2021-11-17 10:12:46.000000', 1, ''),
(5, 'L??m sao ????? t??i truy c???p v??o ???ng d???ng Smart Typing?', 'V??? m???t k??? thu???t, b???n ch??? c???n c?? k???t n???i Internet. Tuy nhi??n, b???n c??ng c???n c?? ?????ng l???c v?? s???n s??ng ????? c???i thi???n k??? n??ng g?? b??n ph??m c???a m??nh.', '2021-11-17', '2021-11-17 10:12:46.000000', 1, ''),
(6, 'T???i sao khi b???t ?????u b??i h???c, ch????ng tr??nh th??ng b??o t??i ph???i t???t Vietnamese mode.', '?????u ti??n, b???n h??y ki???m tra xem b???n c?? ??ang b???t ch??? ????? g?? ti???ng Vi???t hay kh??ng. N???u b???n ??ang b???t ch??? ????? g?? ti???ng Vi???t, ch????ng tr??nh s??? y??u c???u b???n t???t ch??? ????? g?? ti???ng vi???t ????? luy???n g?? k?? t??? v?? nh???ng t??? v???ng kh??ng d???u.', '2021-11-17', '2021-11-17 10:12:46.000000', 1, ''),
(7, '???ng d???ng Smart Typing d??nh cho ?????i t?????ng n??o?', 'Smart Typing ra ?????i ch??? y???u nh???m ?????n vi???c h?????ng d???n luy???n t???p ????nh m??y cho h???c sinh ti???u h???c. Tuy nhi??n, Smart Typing c??n d??nh cho t???t c??? nh???ng ng?????i mu???n ph??t tri???n k??? n??ng ????nh m??y c???a m??nh. ????y l?? m???t k??? n??ng cho ph??p ng?????i ????nh m??y kh??ng c???n nh??n v??o b??n ph??m ????? t??m ph??m ????ng.', '2021-11-17', '2021-11-17 10:12:46.000000', 1, ''),
(8, 'Ch????ng tr??nh c?? ph?? h???p cho nh???ng ng?????i m???c ch???ng kh?? ?????c kh??ng?', '???ng d???ng luy???n t???p g?? ph??m m?????i ng??n c?? th??ch h???p cho nh???ng ng?????i b??? ch???ng kh?? ?????c. V???i k??? n??ng ????nh m??y 10 ng??n nh???ng ng?????i n??y c?? m???t l???i th??? ?????c bi???t trong m???t s??? l??nh v???c so v???i nh???ng ng?????i kh??ng c?? k??? n??ng ????nh m??y m?????i ng??n. V???i m???t s??? ng?????i m???c ch???ng kh?? ?????c v???i ch??? vi???t tay, c??? v??? m???t t???c ????? v?? kh??? n??ng ?????c, vi???c ????nh m??y s??? thu???n ti???n h??n nhi???u.', '2021-11-17', '2021-11-17 10:12:46.000000', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `gameid` int(11) NOT NULL,
  `gameorder` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `topicpracticeid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`gameid`, `gameorder`, `name`, `image`, `description`, `link`, `stars`, `createdate`, `editdate`, `isenable`, `note`, `topicpracticeid_id`) VALUES
(1, 1, 'Ong v??ng th??m v?????n hoa', '/media/practices/images/game1.png', '', '/media/practices/game1/index.html', 3, '2021-11-05', '2021-11-05 12:40:09.000000', 1, '', 1),
(2, 2, 'Ong v??ng b???n bong b??ng', '/media/practices/images/game2.png', '', '/media/practices/game2/index.html', 3, '2021-11-05', '2021-11-05 12:40:09.000000', 1, '', 1),
(3, 3, 'Ong v??ng ??i t??m m???t', '/media/practices/images/game3.png', '', '/media/practices/game3/index.html', 3, '2021-11-05', '2021-11-05 12:40:09.000000', 1, '', 2),
(4, 4, 'Ong v??ng ch??i g???p th??', '/media/practices/images/game4.png', '', '/media/practices/game4/index.html', 3, '2021-11-05', '2021-11-05 12:40:09.000000', 1, '', 2),
(5, 5, 'Ong v??ng si??u vui nh???n', '/media/practices/images/game5.png', '', '/media/practices/game5/index.html', 3, '2021-11-05', '2021-11-05 12:40:09.000000', 1, '', 3),
(6, 6, 'Ong v??ng bay v??? t???', '/media/practices/images/game6.png', '', '/media/practices/game6/index.html', 3, '2021-11-05', '2021-11-05 12:40:09.000000', 1, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `gamelevel`
--

CREATE TABLE `gamelevel` (
  `levelid` int(11) NOT NULL,
  `name` longtext DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `gameid_id` int(11) DEFAULT NULL,
  `levelorder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gamelevel`
--

INSERT INTO `gamelevel` (`levelid`, `name`, `image`, `link`, `stars`, `createdate`, `editdate`, `isenable`, `note`, `gameid_id`, `levelorder`) VALUES
(1, 'D???', '/media/practices/images/game1/level1.png', '/media/practices/game1/level1/index.html', 3, '2021-12-30', '2021-12-31 11:06:01.267736', 1, '', 1, 1),
(2, 'Trung b??nh', '/media/practices/images/game1/level2.png', '/media/practices/game1/level2/index.html', 3, '2021-12-30', '2021-12-30 10:37:25.602351', 1, '', 1, 2),
(3, 'Kh??', '/media/practices/images/game1/level3.png', '/media/practices/game1/level3/index.html', 3, '2021-12-30', '2022-01-01 17:07:40.977198', 1, '', 1, 3),
(4, 'D???', '/media/practices/images/game2/level1.png', '/media/practices/game2/level1/index.html', 3, '2021-12-31', '2021-12-31 11:05:18.484155', 1, '', 2, 1),
(5, 'Trung b??nh', '/media/practices/images/game2/level2.png', '/media/practices/game2/level2/index.html', 3, '2021-12-31', '2021-12-31 11:06:27.666086', 1, '', 2, 2),
(6, 'Kh??', '/media/practices/images/game2/level3.png', '/media/practices/game2/level3/index.html', 3, '2021-12-31', '2021-12-31 11:06:51.196293', 1, '', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lessonid` int(11) NOT NULL,
  `lessonorder` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `topiclessonid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lessonid`, `lessonorder`, `name`, `image`, `description`, `stars`, `createdate`, `editdate`, `isenable`, `note`, `topiclessonid_id`) VALUES
(1, 1, 'L??m quen v???i b??n ph??m', 'media/lessons/images/lesson1.PNG', 'Gi???i thi???u v?? l??m quen v???i b??n ph??m', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 1),
(2, 2, 'K??? n??ng g?? ph??m 10 ng??n', 'media/lessons/images/lesson2.PNG', 'Gi???i thi???u k??? n??ng g?? ph??m 10 ng??n', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 1),
(3, 3, 'PH??M A, S, D, F', 'media/lessons/images/lesson3.png', 'H???c g?? h??ng ph??m gi???a b??n tay tr??i', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 2),
(4, 4, 'PH??M J, K, L, ;', 'media/lessons/images/lesson4.PNG', 'H???c g?? h??ng ph??m gi???a b??n tay ph???i', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 2),
(5, 5, 'PH??M G, H', 'media/lessons/images/lesson5.PNG', 'G?? k???t h???p tay tr??i v?? tay ph???i', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 2),
(6, 6, '??N T???P 1', 'media/lessons/images/lesson6.PNG', '??n t???p h??ng ph??m gi???a', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 2),
(7, 7, 'PH??M Q, W, E, R', 'media/lessons/images/lesson7.PNG', 'H???c g?? h??ng ph??m tr??n b??n tay tr??i', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 3),
(8, 8, 'PH??M U, I, O, P', 'media/lessons/images/lesson8.PNG', 'H???c g?? h??ng ph??m tr??n b??n tay ph???i', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 3),
(9, 9, 'PH??M T, Y', 'media/lessons/images/lesson9.PNG', 'G?? k???t h???p tay tr??i v?? tay ph???i', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 3),
(10, 10, '??N T???P 2', 'media/lessons/images/lesson10.PNG', '??n t???p h??ng ph??m tr??n', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 3),
(11, 11, 'PH??M Z, X, C, V', 'media/lessons/images/lesson11.PNG', 'H???c g?? h??ng ph??m d?????i b??n tay tr??i', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 4),
(12, 12, 'Ph??m M , . /', 'media/lessons/images/lesson12.PNG', 'H???c g?? h??ng ph??a d?????i b??n tay ph???i', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 4),
(13, 13, 'PH??M B, N', 'media/lessons/images/lesson13.PNG', 'G?? k???t h???p tay tr??i v?? tay ph???i', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 4),
(14, 14, '??N T???P 3', 'media/lessons/images/lesson14.PNG', '??n t???p h??ng ph??m d?????i', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 4),
(15, 15, 'PH??M S???', '', 'H???c g?? ph??m s???', 3, '2021-11-05', '2021-11-05 15:08:37.000000', 1, '', 5),
(16, 16, 'PH??M CH???C N??NG', '', 'H???c m???t s??? ph??m ch???c n??ng', 3, '2021-11-05', '2021-11-05 15:08:37.000000', 1, '', 6),
(17, 17, 'G?? TI???NG VI???T KI???U TELEX', '', 'H???c g?? ti???ng Vi???t c?? d???u', 3, '2021-11-05', '2021-11-05 15:08:37.000000', 1, '', 7),
(18, 18, 'G?? TI???NG VI???T KI???U VNI', '', 'H???c g?? ti???ng Vi???t c?? d???u', 3, '2021-11-05', '2021-11-05 15:08:37.000000', 1, '', 7);

-- --------------------------------------------------------

--
-- Table structure for table `lessonbadge`
--

CREATE TABLE `lessonbadge` (
  `lessonbadgeid` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `logo` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `condition` longtext DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `topiclessonid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lessonbadge_own`
--

CREATE TABLE `lessonbadge_own` (
  `id` bigint(20) NOT NULL,
  `lessonbadge_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lessoninstruction`
--

CREATE TABLE `lessoninstruction` (
  `lessoninstructionid` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `video` varchar(250) DEFAULT NULL,
  `album` varchar(250) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `lessonid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `newsid` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `author` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`newsid`, `title`, `image`, `description`, `content`, `createdate`, `editdate`, `isenable`, `note`, `author`) VALUES
(1, 'T???c ????? ????nh m??y chu???n', 'news/background3.png', '', '<p>t??? n&agrave;y. Kh??? n??ng g&otilde; ph&iacute;m hay ???????c vi???t t???t l&agrave; WPM ( word per min) t&iacute;nh theo ti???ng anh. ???????c chia l&agrave;m 4 c???p ????? + T???c ????? ??&aacute;nh m&aacute;y th???p: D?????i 60WPM + T???c ????? ??&aacute;nh m&aacute;y trung b&igrave;nh: T??? 60 ?????n 100 WPM + T???c ????? ??&aacute;nh m&aacute;y cao: T??? 100 WPM ?????n 140WPM. + T???c ????? ??&aacute;nh m&aacute;y chuy&ecirc;n nghi???p: Tr&ecirc;n 140WPM</p>', '2021-11-17', '2021-12-12 16:05:21.590387', 1, '', NULL),
(2, 'V??? sinh b??n ph??m th?????ng xuy??n', 'news/bee4.png', '', '<p>B&agrave;n ph&iacute;m b???n g???p 5 l???n nh&agrave; v??? sinh Kh&ocirc;ng nhi???u ng?????i d&ugrave;ng c&oacute; th&oacute;i quen v??? sinh b&agrave;n ph&iacute;m th?????ng xuy&ecirc;n, khi???n c&aacute;c ch???t b???n nh?? t&oacute;c, da ch???t v&agrave; nhi???u lo???i vi khu???n t??? tay b???n b??? b&aacute;m l???i tr&ecirc;n b&agrave;n ph&iacute;m. ??&oacute; l&agrave; l&yacute; do b&agrave;n ph&iacute;m n&ecirc;n ???????c v??? sinh v&agrave;i th&aacute;ng 1 l???n. H&agrave;ng ng&agrave;y h???u h???t ch&uacute;ng ta ?????u ??&aacute;nh m&aacute;y r???t nhi???u, m??? h&ocirc;i v&agrave; nh???ng ch???t b???t, vi khu???n c&oacute; th??? t??? ch&uacute;ng ta t??ng th&ecirc;m l&ecirc;n b&agrave;n ph&iacute;m v&agrave; c??ng ng?????c l???i. Do v???y l???i khuy&ecirc;n l&agrave; lu&ocirc;n r???a tay khi r???i kh???i b&agrave;n ph&iacute;m. Nh???t l&agrave; c&aacute;c b???n v??n ph&ograve;ng , ??ang ng???i m&agrave; c&oacute; ????? ??n v???t b???c tay lu&ocirc;n l&agrave; r???t kh&ocirc;ng t???t.</p>', '2021-11-17', '2021-12-12 16:05:05.439754', 1, '', NULL),
(3, 'N?????c n??o ????nh m??y kh?? nh???t', 'news/bee3.png', '', '<p>B???n ??&atilde; bao gi??? h???i m&igrave;nh l&agrave; : &ldquo;Ti???ng vi???t g&otilde; th???t ????n gi???n. Th??? v???i nh???ng k&yacute; t??? lo???ng ngo???ng nh?? ch??? Nh???t, Trung th&igrave; b&agrave;n ph&iacute;m g&otilde; ki???u g&igrave; &rdquo; kh&ocirc;ng ? S??? th???t l&agrave; 2 qu???c gia tr&ecirc;n c&oacute; b??? g&otilde; kh&oacute; nh???t th??? gi???i. C??ng s??? d???ng b&agrave;n ph&iacute;m b??? tr&iacute; QWERTY, nh??ng khi ???n ph&iacute;m b???n c???n hi???u phi&ecirc;n b???n ch??? Latinh c???a ch??? c???n nh???p ho???c ch??? nh???p c&aacute;c k&yacute; t??? ????n gi???n, ch???p n???i. Sau ??&oacute; l???i c???n nh&igrave;n v&agrave; thay ?????i n&oacute; th&agrave;nh t??? ??&uacute;ng v???i ng&ocirc;n ng??? Trung ho???c Nh???t ( ch???n l???i tr&ecirc;n m&agrave;n h&igrave;nh). Th???c s??? vi???c ??&aacute;nh m&aacute;y ??? nh???ng n?????c n&agrave;y c???n kh??? luy???n r???t nhi???u, ki&ecirc;n nh???n v&agrave; ?????y r???y kh&oacute; kh??n. ?????c bi???t ti???ng Trung v&igrave; b???n c??ng bi???t ??&oacute;, ch??? h??n k&eacute;m nhau 1 t&yacute; v??? ????? d&agrave;i n&eacute;t th&ocirc;i c??ng ??&atilde; th&agrave;nh 1 ch??? kh&aacute;c r???i. Ch&iacute;nh v&igrave; v???y t???t nhi&ecirc;n hai n?????c n&agrave;y c??ng c&oacute; m???t trong danh s&aacute;ch nh???ng b&agrave;n ph&iacute;m ph???c t???p nh???t th??? gi???i. V&igrave; c&oacute; qu&aacute; nhi???u ng&ocirc;n ng??? tr&ecirc;n c&ugrave;ng 1 b&agrave;n ph&iacute;m ho???c b???ng ch??? c&aacute;i c&oacute; h&agrave;ng tr??m k&yacute; t??? v&agrave; s??? ???????c th??? hi???n b???ng c&aacute;c t??? h???p ph&iacute;m. V&iacute; d??? Th&aacute;i Lan, H&agrave;n Qu???c, ???n ?????. T???t nhi&ecirc;n l&agrave; c??? 2 n?????c v???a n&oacute;i ph&iacute;a tr&ecirc;n. C&aacute;c b&agrave;n phim c???a c&aacute;c n?????c n&agrave;y c&oacute; t??? 3 t???i 4 k&yacute; t??? tr&ecirc;n m???i ph&iacute;m. L&acirc;u l&acirc;u ???n t??? h???p ph&iacute;m c&ograve;n th???y th&iacute;ch ch??? ph???i ???n c??? ng&agrave;y ????? vi???t th&igrave; th???t s??? r???t n???n ch&iacute; lu&ocirc;n.</p>', '2021-11-17', '2021-12-12 16:04:52.114088', 1, '', NULL),
(4, 'T?????ng ????i b??n ph??m', 'news/background2.png', '', '<p>T?????ng ??&agrave;i th?????ng xu???t hi???n ????? th??? hi???n s??? ng?????ng m???, t&ocirc;n s&ugrave;ng, ghi nh??? v&agrave; k&iacute;nh tr???ng v???i m???t nh&acirc;n v???t n&agrave;o ??&oacute;, 1 s??? ki???n n&agrave;o ??&oacute;. C??ng c&oacute; th??? l&agrave; 1 bi???u t?????ng n&agrave;o ??&oacute; c???a m???t qu???c gia c&oacute; &yacute; ngh??a ?????c bi???t v???i ng?????i d&acirc;n ?????a ph????ng hay qu???c gia ??&oacute;. Th??? nh??ng b&agrave;n ph&iacute;m m&aacute;y t&iacute;nh &ndash; th??? m&agrave; ai c??ng th???y &amp; s??? d???ng h&agrave;ng ng&agrave;y c??ng l???i c&oacute; t?????ng ??&agrave;i c???a m&igrave;nh theo ??&uacute;ng ngh??a ??en. T???i th&agrave;nh ph??? Yekaterinburg &ndash; Nga c&oacute; m???t t?????ng ??&agrave;i cho b&agrave;n ph&iacute;m QWERTY kh&ocirc;ng nh???. C&aacute;c ph&iacute;m l&agrave; ??&aacute; nguy&ecirc;n kh???i v&agrave; gi???a ch&uacute;ng l&agrave; c??? t???o th&agrave;nh m&ocirc; h&igrave;nh ti&ecirc;u chu???n c???a 1 chi???c b&agrave;n ph&iacute;m. 1 ??i???u th&uacute; v??? l&agrave; khi ai ??&oacute; m&agrave; ch??? y???u l&agrave; d&acirc;n ?????a ph????ng ch&aacute;n n???n cu???c s???ng mu???n refresh cu???c ?????i. H??? s??? t???i ??&acirc;y v&agrave; l&agrave;m ?????ng t&aacute;c ???n t??? h???p ph&iacute;m CTRL + AlT + DEL b???ng c&aacute;ch nh???y theo ??&uacute;ng th??? t??? 3 ph&iacute;m n&agrave;y. V&agrave; b???n c&oacute; bi???t t??? h???p ph&iacute;m Ctrl + Alt + Del ???????c ph&aacute;t minh b???i David Bradley c&ocirc;ng ty IBM sau khi xem x&eacute;t m???i kh??? n??ng th???p nh???t tr&aacute;nh k&iacute;ch ho???t ng???u nhi&ecirc;n. V&igrave; ch???c n??ng b&agrave;n ?????u c???a n&oacute; bao g???m kh???i ?????ng l???i ph???n m???m v&agrave; ??&oacute;ng ch????ng tr&igrave;nh tr&ecirc;n Windows. T?????ng ??&agrave;i th?????ng xu???t hi???n ????? th??? hi???n s??? ng?????ng m???, t&ocirc;n s&ugrave;ng, ghi nh??? v&agrave; k&iacute;nh tr???ng v???i m???t nh&acirc;n v???t n&agrave;o ??&oacute;, 1 s??? ki???n n&agrave;o ??&oacute;. C??ng c&oacute; th??? l&agrave; 1 bi???u t?????ng n&agrave;o ??&oacute; c???a m???t qu???c gia c&oacute; &yacute; ngh??a ?????c bi???t v???i ng?????i d&acirc;n ?????a ph????ng hay qu???c gia ??&oacute;. Th??? nh??ng b&agrave;n ph&iacute;m m&aacute;y t&iacute;nh &ndash; th??? m&agrave; ai c??ng th???y &amp; s??? d???ng h&agrave;ng ng&agrave;y c??ng l???i c&oacute; t?????ng ??&agrave;i c???a m&igrave;nh theo ??&uacute;ng ngh??a ??en. T???i th&agrave;nh ph??? Yekaterinburg &ndash; Nga c&oacute; m???t t?????ng ??&agrave;i cho b&agrave;n ph&iacute;m QWERTY kh&ocirc;ng nh???. C&aacute;c ph&iacute;m l&agrave; ??&aacute; nguy&ecirc;n kh???i v&agrave; gi???a ch&uacute;ng l&agrave; c??? t???o th&agrave;nh m&ocirc; h&igrave;nh ti&ecirc;u chu???n c???a 1 chi???c b&agrave;n ph&iacute;m. 1 ??i???u th&uacute; v??? l&agrave; khi ai ??&oacute; m&agrave; ch??? y???u l&agrave; d&acirc;n ?????a ph????ng ch&aacute;n n???n cu???c s???ng mu???n refresh cu???c ?????i. H??? s??? t???i ??&acirc;y v&agrave; l&agrave;m ?????ng t&aacute;c ???n t??? h???p ph&iacute;m CTRL + AlT + DEL b???ng c&aacute;ch nh???y theo ??&uacute;ng th??? t??? 3 ph&iacute;m n&agrave;y. V&agrave; b???n c&oacute; bi???t t??? h???p ph&iacute;m Ctrl + Alt + Del ???????c ph&aacute;t minh b???i David Bradley c&ocirc;ng ty IBM sau khi xem x&eacute;t m???i kh??? n??ng th???p nh???t tr&aacute;nh k&iacute;ch ho???t ng???u nhi&ecirc;n. V&igrave; ch???c n??ng b&agrave;n ?????u c???a n&oacute; bao g???m kh???i ?????ng l???i ph???n m???m v&agrave; ??&oacute;ng ch????ng tr&igrave;nh tr&ecirc;n Windows.</p>', '2021-11-17', '2021-12-12 16:04:41.940669', 1, '', NULL),
(5, 'Ph??m ???????c b???m nhi???u nh???t', 'news/bee7.png', '', '<p>N???u ph???i ??o&aacute;n ph&iacute;m n&agrave;o b??? ???n nhi???u nh???t ch???c ch???n c&aacute;c b???n s??? ??o&aacute;n ra ngay l&agrave; n&uacute;t Space. ?????c bi???t n???u ai ??&atilde; t???ng ch??i hay ??am m&ecirc; t???a game audition th&igrave; n&uacute;t Space c???a b&agrave;n ph&iacute;m ch???c ch???n l&agrave; b??? tra t???n kh???ng khi???p v&agrave; th?????ng ph???i thay th??? kh&aacute; s???m so v???i th&ocirc;ng th?????ng. N&uacute;t Space ???????c ???n nhi???u t???i n???i, c??? m???i khi b???n ???n n&uacute;t Space 1 l???n th&igrave; c&oacute; kho???ng 600.000 ng?????i kh&aacute;c tr&ecirc;n th??? gi???i c??ng c&ugrave;ng l&uacute;c ???n ph&iacute;m Space v???i b???n. N&oacute; chi???m t???i 18% t???ng s??? nh???p v??n b???n trung b&igrave;nh. Kh&ocirc;ng tin th&igrave; b???n th??? ?????m s??? k&yacute; t??? v&agrave; s??? kho???ng tr???ng trong 1 v??n b???n c???a m&igrave;nh xem. D??? d&agrave;ng ta th???y s??? t??? s??? b???ng s??? kho???ng tr???ng, v&agrave; n???u trung b&igrave;nh 1 t??? c&oacute; t??? 4-5 k&yacute; t??? th&igrave; b???n bi???t t&iacute;nh ra % c???a space r???i ??&oacute;. Nh??ng th???c t??? n&uacute;t Space kh&ocirc;ng ???????c t&igrave;nh v&igrave; n&oacute; kh&ocirc;ng th??? hi???n k&yacute; t??? g&igrave; c???, n&oacute;i ch&iacute;nh x&aacute;c l&agrave; n&oacute; ch??? c&oacute; &yacute; ngh??a tr&ecirc;n m&aacute;y t&iacute;nh c??ng gi???ng nh?? 1 s??? n&uacute;t kh&aacute;c. B???n kh&ocirc;ng th??? ph&aacute;t &acirc;m ra ph&iacute;m Space b???ng mi???ng ???????c. C&ograve;n n???u t&iacute;nh v??? ph&iacute;m c&oacute; ngh??a, c&oacute; th??? ph&aacute;t &acirc;m ra ???????c th&igrave; E v&agrave; T l&agrave; 2 ph&iacute;m ???????c ???n nhi???u nh???t tr&ecirc;n th??? gi???i.</p>', '2021-11-17', '2021-12-12 16:04:33.689308', 1, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `practicebadge`
--

CREATE TABLE `practicebadge` (
  `practicebadgeid` int(11) NOT NULL,
  `name` longtext DEFAULT NULL,
  `logo` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `condition` longtext DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `text`
--

CREATE TABLE `text` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `characterid_id` int(11) DEFAULT NULL,
  `wordid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `timetest`
--

CREATE TABLE `timetest` (
  `timetestid` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timetest`
--

INSERT INTO `timetest` (`timetestid`, `name`, `time`, `description`, `link`, `createdate`, `editdate`, `isenable`, `note`, `image`) VALUES
(1, 'KI???M TRA 1 PH??T', 60, '', NULL, '2021-12-03', '2021-12-16 06:50:21.881170', 1, '', '/media/test/timer1.png'),
(2, 'KI???M TRA 3 PH??T', 180, '', NULL, '2021-12-03', '2021-12-03 13:39:33.418753', 1, '', '/media/test/timer2.png'),
(3, 'KI???M TRA 5 PH??T', NULL, '', NULL, '2021-12-03', '2021-12-03 13:40:04.306589', 1, '', '/media/test/timer3.png'),
(4, 'KI???M TRA 10 PH??T', NULL, '', NULL, '2021-12-03', '2021-12-16 06:50:33.885481', 0, '', '/media/test/timer4.png'),
(5, 'KI???M TRA 15 PH??T', NULL, '', NULL, '2021-12-03', '2021-12-16 06:50:40.794230', 0, '', '/media/test/timer5.png'),
(6, 'KI???M TRA KH??NG GI???I H???N', NULL, '', NULL, '2021-12-03', '2021-12-16 06:50:47.323418', 0, '', '/media/test/timer6.png');

-- --------------------------------------------------------

--
-- Table structure for table `topiclesson`
--

CREATE TABLE `topiclesson` (
  `topiclessonid` int(11) NOT NULL,
  `topicorder` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topiclesson`
--

INSERT INTO `topiclesson` (`topiclessonid`, `topicorder`, `name`, `description`, `stars`, `createdate`, `editdate`, `isenable`, `note`) VALUES
(1, 1, 'GI???I THI???U', 'Gi???i thi???u k??? n??ng g?? ph??m m?????i ng??n', 6, '2021-11-02', '2021-11-02 00:15:22.000000', 1, ''),
(2, 2, 'H??NG PH??M GI???A', 'C??c b??i h???c v??? g?? ph??m h??ng gi???a', 12, '2021-11-02', '2021-11-02 00:15:22.000000', 1, ''),
(3, 3, 'H??NG PH??M TR??N', 'C??c b??i h???c v??? g?? ph??m h??ng tr??n', 12, '2021-11-02', '2021-11-02 00:15:22.000000', 1, ''),
(4, 4, 'H??NG PH??M D?????I', 'C??c b??i h???c v??? g?? ph??m h??ng d?????i', 12, '2021-11-02', '2021-11-02 00:15:22.000000', 1, ''),
(5, 5, 'H??NG PH??M S???', 'C??c b??i h???c v??? g?? ph??m h??ng s???', 12, '2021-11-05', '2021-11-05 15:05:37.000000', 1, ''),
(6, 6, 'H??NG PH??M CH???C N??NG', 'C??c b??i h???c v??? g?? ph??m h??ng ch???c n??ng', 12, '2021-11-05', '2021-11-05 15:05:37.000000', 1, ''),
(7, 7, 'H???C G?? TI???NG VI???T', 'C??c b??i h???c g?? ti???ng Vi???t c?? d???u', 12, '2021-11-05', '2021-11-05 15:05:37.000000', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `topicpractice`
--

CREATE TABLE `topicpractice` (
  `topicpracticeid` int(11) NOT NULL,
  `topicorder` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topicpractice`
--

INSERT INTO `topicpractice` (`topicpracticeid`, `topicorder`, `name`, `description`, `stars`, `createdate`, `editdate`, `isenable`, `note`) VALUES
(1, 1, 'Luy???n g?? k?? t???', '', 6, '2021-11-05', '2021-11-05 12:40:09.000000', 1, ''),
(2, 2, 'Luy???n g?? c???m t???', '', 6, '2021-11-05', '2021-11-05 12:40:09.000000', 1, ''),
(3, 3, 'Luy???n g?? v??n b???n', '', 6, '2021-11-05', '2021-11-05 12:40:09.000000', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `trackingactivity`
--

CREATE TABLE `trackingactivity` (
  `trackingactivityid` int(11) NOT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `accountid_id` int(11) DEFAULT NULL,
  `activityid_id` int(11) DEFAULT NULL,
  `lessonid_id` int(11) DEFAULT NULL,
  `topiclessonid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trackingactivity`
--

INSERT INTO `trackingactivity` (`trackingactivityid`, `createdate`, `editdate`, `isenable`, `note`, `accountid_id`, `activityid_id`, `lessonid_id`, `topiclessonid_id`) VALUES
(1, '2021-12-21', '2021-12-21 14:26:52.271897', 1, NULL, 16, 9, NULL, NULL),
(2, '2021-12-24', '2021-12-24 02:19:12.728588', 1, NULL, 16, 4, NULL, NULL),
(3, '2021-12-24', '2021-12-24 02:22:53.076199', 1, NULL, 16, 14, NULL, NULL),
(4, '2021-12-24', '2021-12-24 02:33:48.218281', 1, NULL, 16, 6, NULL, NULL),
(5, '2021-12-24', '2021-12-24 02:40:12.034746', 1, NULL, 16, 7, NULL, NULL),
(6, '2022-01-02', '2022-01-01 21:22:45.480199', 1, NULL, 16, 21, 5, 2),
(7, '2022-01-02', '2022-01-01 21:56:47.945402', 1, NULL, 16, 8, 1, 1),
(8, '2022-01-02', '2022-01-01 21:57:27.330249', 1, NULL, 16, 9, 1, 1),
(9, '2022-01-03', '2022-01-02 18:24:30.805266', 1, NULL, 16, 1, 1, 1),
(10, '2022-01-04', '2022-01-04 13:32:40.944157', 1, NULL, 16, 4, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `trackinglevelgame`
--

CREATE TABLE `trackinglevelgame` (
  `trackinglevelid` int(11) NOT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `accountid_id` int(11) DEFAULT NULL,
  `gameid_id` int(11) DEFAULT NULL,
  `levelid_id` int(11) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trackinglevelgame`
--

INSERT INTO `trackinglevelgame` (`trackinglevelid`, `createdate`, `editdate`, `isenable`, `note`, `accountid_id`, `gameid_id`, `levelid_id`, `stars`) VALUES
(1, '2022-01-01', '2022-01-01 19:09:29.112109', 1, NULL, 16, 1, 1, 3),
(2, '2022-01-02', '2022-01-01 20:44:50.320450', 1, NULL, 16, 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `userdetail`
--

CREATE TABLE `userdetail` (
  `userdetailid` int(11) NOT NULL,
  `lastname` varchar(250) DEFAULT NULL,
  `firstname` varchar(250) DEFAULT NULL,
  `yearofbirth` int(11) DEFAULT NULL,
  `userobject` varchar(250) DEFAULT NULL,
  `grade` varchar(250) DEFAULT NULL,
  `guardian` varchar(250) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `accountid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdetail`
--

INSERT INTO `userdetail` (`userdetailid`, `lastname`, `firstname`, `yearofbirth`, `userobject`, `grade`, `guardian`, `phone`, `email`, `createdate`, `editdate`, `isenable`, `note`, `accountid_id`) VALUES
(5, 'Huynh', 'Tuyet', NULL, NULL, NULL, NULL, NULL, 'user1@gmail.com', '2021-11-17', '2021-11-16 18:11:27.044607', 1, NULL, 5),
(7, 'Huynh', 'Tuyet', 2000, NULL, NULL, '', '123', 'user1@gmail.com', '2021-11-17', '2021-11-16 19:36:45.599535', 1, NULL, 6),
(8, 'Huynh', 'Tuyet', 2000, NULL, NULL, 'HNT', '123', 'user3@gmail.com', '2021-11-17', '2021-11-17 03:40:19.594327', 1, NULL, 7),
(9, 'Nguyen', 'Tran', 1, NULL, NULL, '1', '123', 'a@g', '2021-11-17', '2021-11-17 13:04:05.505998', 1, NULL, 11),
(10, 'Huynh', 'Tran', 200, NULL, NULL, 'HNT', '123', 'user3@gmail.com', '2021-11-17', '2021-11-17 13:08:07.725392', 1, NULL, 12),
(11, 'a', 'a', 2, NULL, NULL, '2', '123', 'user1@gmail.com', '2021-11-17', '2021-11-17 13:10:16.966107', 1, NULL, 13),
(12, 'Nguyen', 'Tran', 2, NULL, NULL, 'NNBT', '123', 'user1@gmail.com', '2021-11-17', '2021-11-17 13:12:29.946262', 1, NULL, 14),
(13, '?????', 'Kh???i', 2000, NULL, NULL, 'DQK', '1123', 'abc@gmail.com', '2021-11-30', '2021-11-29 17:13:50.854575', 1, NULL, 15),
(14, 'Huynh', 'Tuyet', 2000, NULL, NULL, 'HNT', '0903759180', 'tuyethuynh@gmail.com', '2021-12-16', '2021-12-16 11:09:14.297410', 1, NULL, 16);

-- --------------------------------------------------------

--
-- Table structure for table `word`
--

CREATE TABLE `word` (
  `wordid` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `characterid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`accountid`),
  ADD KEY `Account_username_id_6d202649_fk_auth_user_id` (`username_id`),
  ADD KEY `Account_callsignid_id_f081161c_fk` (`callsignid_id`);

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activityid`),
  ADD KEY `Activity_lessonid_id_70fc49ad_fk_Lesson_lessonid` (`lessonid_id`);

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
-- Indexes for table `callsign`
--
ALTER TABLE `callsign`
  ADD PRIMARY KEY (`callsignid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `character`
--
ALTER TABLE `character`
  ADD PRIMARY KEY (`characterid`);

--
-- Indexes for table `competition`
--
ALTER TABLE `competition`
  ADD PRIMARY KEY (`competitionid`);

--
-- Indexes for table `competitionbadge`
--
ALTER TABLE `competitionbadge`
  ADD PRIMARY KEY (`competitionbadgeid`),
  ADD KEY `CompetitionBadge_competitionid_id_b766acfd_fk` (`competitionid_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactid`);

--
-- Indexes for table `contenttest`
--
ALTER TABLE `contenttest`
  ADD PRIMARY KEY (`contenttestid`);

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
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`documentid`),
  ADD KEY `Document_categoryid_id_26ff9b21_fk_Category_categoryid` (`categoryid_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faqid`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`gameid`),
  ADD KEY `Game_topicpracticeid_id_19b7cd09_fk` (`topicpracticeid_id`);

--
-- Indexes for table `gamelevel`
--
ALTER TABLE `gamelevel`
  ADD PRIMARY KEY (`levelid`),
  ADD KEY `GameLevel_gameid_id_31118348_fk_Game_gameid` (`gameid_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lessonid`),
  ADD KEY `Lesson_topiclessonid_id_5d9e96a2_fk` (`topiclessonid_id`);

--
-- Indexes for table `lessonbadge`
--
ALTER TABLE `lessonbadge`
  ADD PRIMARY KEY (`lessonbadgeid`),
  ADD KEY `LessonBadge_topiclessonid_id_872edf05_fk` (`topiclessonid_id`);

--
-- Indexes for table `lessonbadge_own`
--
ALTER TABLE `lessonbadge_own`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `LessonBadge_own_lessonbadge_id_account_id_03f7beae_uniq` (`lessonbadge_id`,`account_id`),
  ADD KEY `LessonBadge_own_account_id_e7ca9e5c_fk_Account_accountid` (`account_id`);

--
-- Indexes for table `lessoninstruction`
--
ALTER TABLE `lessoninstruction`
  ADD PRIMARY KEY (`lessoninstructionid`),
  ADD KEY `LessonInstruction_lessonid_id_61b599bc_fk_Lesson_lessonid` (`lessonid_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsid`);

--
-- Indexes for table `practicebadge`
--
ALTER TABLE `practicebadge`
  ADD PRIMARY KEY (`practicebadgeid`);

--
-- Indexes for table `text`
--
ALTER TABLE `text`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Text_characterid_id_dbacc2bc_fk` (`characterid_id`),
  ADD KEY `Text_wordid_id_7ce108ad_fk` (`wordid_id`);

--
-- Indexes for table `timetest`
--
ALTER TABLE `timetest`
  ADD PRIMARY KEY (`timetestid`);

--
-- Indexes for table `topiclesson`
--
ALTER TABLE `topiclesson`
  ADD PRIMARY KEY (`topiclessonid`);

--
-- Indexes for table `topicpractice`
--
ALTER TABLE `topicpractice`
  ADD PRIMARY KEY (`topicpracticeid`);

--
-- Indexes for table `trackingactivity`
--
ALTER TABLE `trackingactivity`
  ADD PRIMARY KEY (`trackingactivityid`),
  ADD KEY `Tracking_accountid_id_2cf50a66_fk_Account_accountid` (`accountid_id`),
  ADD KEY `Tracking_activityid_id_cee4d1c8_fk_Activity_activityid` (`activityid_id`),
  ADD KEY `TrackingActivity_lessonid_id_f9634208_fk_Lesson_lessonid` (`lessonid_id`),
  ADD KEY `TrackingActivity_topiclessonid_id_e0e84d70_fk_TopicLess` (`topiclessonid_id`);

--
-- Indexes for table `trackinglevelgame`
--
ALTER TABLE `trackinglevelgame`
  ADD PRIMARY KEY (`trackinglevelid`),
  ADD KEY `TrackingLevelGame_accountid_id_4a11cda2_fk_Account_accountid` (`accountid_id`),
  ADD KEY `TrackingLevelGame_gameid_id_b830c5b2_fk_Game_gameid` (`gameid_id`),
  ADD KEY `TrackingLevelGame_levelid_id_e12c58ec_fk_GameLevel_levelid` (`levelid_id`);

--
-- Indexes for table `userdetail`
--
ALTER TABLE `userdetail`
  ADD PRIMARY KEY (`userdetailid`),
  ADD KEY `UserDetail_accountid_id_2d38ed41_fk` (`accountid_id`);

--
-- Indexes for table `word`
--
ALTER TABLE `word`
  ADD PRIMARY KEY (`wordid`),
  ADD KEY `Word_characterid_id_7b0ab798_fk` (`characterid_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `accountid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `activityid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
-- AUTO_INCREMENT for table `callsign`
--
ALTER TABLE `callsign`
  MODIFY `callsignid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `character`
--
ALTER TABLE `character`
  MODIFY `characterid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `competition`
--
ALTER TABLE `competition`
  MODIFY `competitionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `competitionbadge`
--
ALTER TABLE `competitionbadge`
  MODIFY `competitionbadgeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contenttest`
--
ALTER TABLE `contenttest`
  MODIFY `contenttestid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `documentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faqid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `gameid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gamelevel`
--
ALTER TABLE `gamelevel`
  MODIFY `levelid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lessonid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `lessonbadge`
--
ALTER TABLE `lessonbadge`
  MODIFY `lessonbadgeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lessonbadge_own`
--
ALTER TABLE `lessonbadge_own`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lessoninstruction`
--
ALTER TABLE `lessoninstruction`
  MODIFY `lessoninstructionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `newsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `practicebadge`
--
ALTER TABLE `practicebadge`
  MODIFY `practicebadgeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `text`
--
ALTER TABLE `text`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timetest`
--
ALTER TABLE `timetest`
  MODIFY `timetestid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `topiclesson`
--
ALTER TABLE `topiclesson`
  MODIFY `topiclessonid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `topicpractice`
--
ALTER TABLE `topicpractice`
  MODIFY `topicpracticeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trackingactivity`
--
ALTER TABLE `trackingactivity`
  MODIFY `trackingactivityid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `trackinglevelgame`
--
ALTER TABLE `trackinglevelgame`
  MODIFY `trackinglevelid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userdetail`
--
ALTER TABLE `userdetail`
  MODIFY `userdetailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `word`
--
ALTER TABLE `word`
  MODIFY `wordid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `Account_callsignid_id_f081161c_fk` FOREIGN KEY (`callsignid_id`) REFERENCES `callsign` (`callsignid`),
  ADD CONSTRAINT `Account_username_id_6d202649_fk_auth_user_id` FOREIGN KEY (`username_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `activity`
--
ALTER TABLE `activity`
  ADD CONSTRAINT `Activity_lessonid_id_70fc49ad_fk_Lesson_lessonid` FOREIGN KEY (`lessonid_id`) REFERENCES `lesson` (`lessonid`);

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
-- Constraints for table `competitionbadge`
--
ALTER TABLE `competitionbadge`
  ADD CONSTRAINT `CompetitionBadge_competitionid_id_b766acfd_fk` FOREIGN KEY (`competitionid_id`) REFERENCES `competition` (`competitionid`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `Document_categoryid_id_26ff9b21_fk_Category_categoryid` FOREIGN KEY (`categoryid_id`) REFERENCES `category` (`categoryid`);

--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `Game_topicpracticeid_id_19b7cd09_fk` FOREIGN KEY (`topicpracticeid_id`) REFERENCES `topicpractice` (`topicpracticeid`);

--
-- Constraints for table `gamelevel`
--
ALTER TABLE `gamelevel`
  ADD CONSTRAINT `GameLevel_gameid_id_31118348_fk_Game_gameid` FOREIGN KEY (`gameid_id`) REFERENCES `game` (`gameid`);

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `Lesson_topiclessonid_id_5d9e96a2_fk` FOREIGN KEY (`topiclessonid_id`) REFERENCES `topiclesson` (`topiclessonid`);

--
-- Constraints for table `lessonbadge`
--
ALTER TABLE `lessonbadge`
  ADD CONSTRAINT `LessonBadge_topiclessonid_id_872edf05_fk` FOREIGN KEY (`topiclessonid_id`) REFERENCES `topiclesson` (`topiclessonid`);

--
-- Constraints for table `lessoninstruction`
--
ALTER TABLE `lessoninstruction`
  ADD CONSTRAINT `LessonInstruction_lessonid_id_61b599bc_fk_Lesson_lessonid` FOREIGN KEY (`lessonid_id`) REFERENCES `lesson` (`lessonid`);

--
-- Constraints for table `text`
--
ALTER TABLE `text`
  ADD CONSTRAINT `Text_characterid_id_dbacc2bc_fk` FOREIGN KEY (`characterid_id`) REFERENCES `character` (`characterid`),
  ADD CONSTRAINT `Text_wordid_id_7ce108ad_fk` FOREIGN KEY (`wordid_id`) REFERENCES `word` (`wordid`);

--
-- Constraints for table `trackingactivity`
--
ALTER TABLE `trackingactivity`
  ADD CONSTRAINT `TrackingActivity_lessonid_id_f9634208_fk_Lesson_lessonid` FOREIGN KEY (`lessonid_id`) REFERENCES `lesson` (`lessonid`),
  ADD CONSTRAINT `TrackingActivity_topiclessonid_id_e0e84d70_fk_TopicLess` FOREIGN KEY (`topiclessonid_id`) REFERENCES `topiclesson` (`topiclessonid`),
  ADD CONSTRAINT `Tracking_accountid_id_2cf50a66_fk_Account_accountid` FOREIGN KEY (`accountid_id`) REFERENCES `account` (`accountid`),
  ADD CONSTRAINT `Tracking_activityid_id_cee4d1c8_fk_Activity_activityid` FOREIGN KEY (`activityid_id`) REFERENCES `activity` (`activityid`);

--
-- Constraints for table `trackinglevelgame`
--
ALTER TABLE `trackinglevelgame`
  ADD CONSTRAINT `TrackingLevelGame_accountid_id_4a11cda2_fk_Account_accountid` FOREIGN KEY (`accountid_id`) REFERENCES `account` (`accountid`),
  ADD CONSTRAINT `TrackingLevelGame_gameid_id_b830c5b2_fk_Game_gameid` FOREIGN KEY (`gameid_id`) REFERENCES `game` (`gameid`),
  ADD CONSTRAINT `TrackingLevelGame_levelid_id_e12c58ec_fk_GameLevel_levelid` FOREIGN KEY (`levelid_id`) REFERENCES `gamelevel` (`levelid`);

--
-- Constraints for table `userdetail`
--
ALTER TABLE `userdetail`
  ADD CONSTRAINT `UserDetail_accountid_id_2d38ed41_fk` FOREIGN KEY (`accountid_id`) REFERENCES `account` (`accountid`);

--
-- Constraints for table `word`
--
ALTER TABLE `word`
  ADD CONSTRAINT `Word_characterid_id_7b0ab798_fk` FOREIGN KEY (`characterid_id`) REFERENCES `character` (`characterid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
