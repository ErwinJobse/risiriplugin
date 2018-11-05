-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2018 at 12:48 PM
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
-- Database: `risiri`
--

-- --------------------------------------------------------

--
-- Table structure for table `risiri_artikelen`
--

CREATE TABLE `risiri_artikelen` (
  `Artikelnummer` int(10) NOT NULL,
  `Artikelnaam` varchar(32) NOT NULL,
  `Aanmaakdatum` date DEFAULT NULL,
  `omschrijving` text NOT NULL,
  `artikelArtikelnummer` int(10) NOT NULL,
  `ReserveringenReserveringNummer` int(10) NOT NULL,
  `Klantnummer` int(10) NOT NULL,
  `herringeringsNummer` int(10) NOT NULL,
  `voorNaam` varchar(32) NOT NULL,
  `TussenVoegsel` varchar(32) NOT NULL,
  `Achternaam` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `tell` varchar(32) NOT NULL,
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `event` text NOT NULL,
  `uitleenDatum` date NOT NULL,
  `inleverDatum` date NOT NULL,
  `ingeleverd` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risiri_artikelen`
--

INSERT INTO `risiri_artikelen` (`Artikelnummer`, `Artikelnaam`, `Aanmaakdatum`, `omschrijving`, `artikelArtikelnummer`, `ReserveringenReserveringNummer`, `Klantnummer`, `herringeringsNummer`, `voorNaam`, `TussenVoegsel`, `Achternaam`, `email`, `tell`, `data`, `event`, `uitleenDatum`, `inleverDatum`, `ingeleverd`) VALUES
(212, 'dskldjfk', '2018-09-27', 'dlfkjdflkdfjbackground-color: lightblue;\r\n    width: 110px;\r\n    height: 110px;\r\n    overflow: scroll;background-color: lightblue;\r\n    width: 110px;\r\n    height: 110px;\r\n    overflow: scroll;background-color: lightblue;\r\n    width: 110px;\r\n    height: 110px;\r\n    overflow: scroll;background-color: lightblue;\r\n    width: 110px;\r\n    height: 110px;\r\n    overflow: scroll;background-color: lightblue;\r\n    width: 110px;\r\n    height: 110px;\r\n    overflow: scroll;background-color: lightblue;\r\n    width: 110px;\r\n    height: 110px;\r\n    overflow: scroll;', 0, 0, 0, 0, '', '', '', '', '', '2018-10-23 09:32:33', '', '0000-00-00', '0000-00-00', 0),
(213, 'kdf', '2018-09-27', 'dkfjk', 0, 0, 0, 0, '', '', '', '', '', '2018-10-23 09:32:33', '', '0000-00-00', '0000-00-00', 0),
(214, 'dfkl', '2018-09-27', 'dfkjdflkj', 0, 0, 0, 0, '', '', '', '', '', '2018-10-23 09:32:33', '', '0000-00-00', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `risiri_artikel_reserveringen`
--

CREATE TABLE `risiri_artikel_reserveringen` (
  `artikelArtikelnummer` int(10) NOT NULL,
  `ReserveringenReserveringNummer` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `risiri_emailherinnering`
--

CREATE TABLE `risiri_emailherinnering` (
  `emailID` int(10) NOT NULL,
  `Klantnummer` int(10) NOT NULL,
  `herringeringsNummer` int(10) NOT NULL,
  `uitleenNummer` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `risiri_klanten`
--

CREATE TABLE `risiri_klanten` (
  `klantnummer` int(10) NOT NULL,
  `voorNaam` varchar(32) NOT NULL,
  `TussenVoegsel` varchar(32) NOT NULL,
  `Achternaam` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `tell` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risiri_klanten`
--

INSERT INTO `risiri_klanten` (`klantnummer`, `voorNaam`, `TussenVoegsel`, `Achternaam`, `email`, `tell`) VALUES
(65, 'jan', 'piet', 'von', 'email', '5500');

-- --------------------------------------------------------

--
-- Table structure for table `risiri_log`
--

CREATE TABLE `risiri_log` (
  `id` int(64) NOT NULL,
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `event` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risiri_log`
--

INSERT INTO `risiri_log` (`id`, `data`, `event`) VALUES
(1, '2018-09-20 13:08:41', 'dfsklj'),
(2, '2018-09-20 13:09:15', '9 kjdsfkjkj dklfedit'),
(3, '2018-09-20 13:14:47', 'jdfk dfkj added'),
(4, '2018-09-20 13:48:02', 'dfk dkfj added'),
(5, '2018-09-20 14:01:08', 'piet von  added'),
(6, '2018-09-20 14:01:21', 'lkj lkj added'),
(7, '2018-09-20 14:05:43', '30 deleted'),
(8, '2018-09-20 14:05:52', '30 deleted'),
(9, '2018-09-20 14:07:34', '30 deleted'),
(10, '2018-09-20 14:08:54', '30 deleted'),
(11, '2018-09-21 08:32:11', 'piet von  added'),
(12, '2018-09-21 08:34:35', '30 deleted'),
(13, '2018-09-21 08:35:59', 'lol lol added'),
(14, '2018-09-21 08:36:10', 'lol lol added'),
(15, '2018-09-21 08:38:42', ' piet                                                                                                                                                                                                                    fffffffffffffffffffff added'),
(16, '2018-09-21 08:38:55', 'dkf dkfj added'),
(17, '2018-09-21 08:40:01', '30 deleted'),
(18, '2018-09-21 08:50:05', '30 deleted'),
(19, '2018-09-21 08:51:31', '30 deleted'),
(20, '2018-09-21 08:52:18', '30 deleted'),
(21, '2018-09-21 08:53:05', '30 deleted'),
(22, '2018-09-21 08:54:37', '30 deleted'),
(23, '2018-09-21 08:56:09', '30 deleted'),
(24, '2018-09-21 08:56:16', '30 deleted'),
(25, '2018-09-21 08:56:25', 'piet piet added'),
(26, '2018-09-21 08:56:25', '30 deleted'),
(27, '2018-09-21 08:56:28', '30 deleted'),
(28, '2018-09-21 08:56:47', '30 deleted'),
(29, '2018-09-21 08:57:40', '30 deleted'),
(30, '2018-09-21 08:59:19', '30 deleted'),
(31, '2018-09-21 09:00:51', '30 deleted'),
(32, '2018-09-21 09:02:20', '30 deleted'),
(33, '2018-09-21 09:03:02', '30 deleted'),
(34, '2018-09-21 09:04:29', '30 deleted'),
(35, '2018-09-21 09:04:33', '30 deleted'),
(36, '2018-09-21 09:05:30', '30 deleted'),
(37, '2018-09-21 09:06:53', '30 deleted'),
(38, '2018-09-21 09:07:15', '30 deleted'),
(39, '2018-09-21 09:07:19', '30 deleted'),
(40, '2018-09-21 09:07:36', '30 deleted'),
(41, '2018-09-21 09:07:51', '30 deleted'),
(42, '2018-09-21 09:10:26', '30 deleted'),
(43, '2018-09-21 09:11:21', '30 deleted'),
(44, '2018-09-21 09:11:32', '30 deleted'),
(45, '2018-09-21 09:11:41', '30 deleted'),
(46, '2018-09-21 09:12:26', '30 deleted'),
(47, '2018-09-21 09:13:00', '30 deleted'),
(48, '2018-09-21 09:13:17', '30 deleted'),
(49, '2018-09-21 09:14:10', '30 deleted'),
(50, '2018-09-21 09:14:14', '30 deleted'),
(51, '2018-09-21 09:14:30', '30 deleted'),
(52, '2018-09-21 09:15:23', '30 deleted'),
(53, '2018-09-21 09:15:27', '30 deleted'),
(54, '2018-09-21 09:15:48', '30 deleted'),
(55, '2018-09-21 09:15:58', '30 deleted'),
(56, '2018-09-21 09:18:03', '30 deleted'),
(57, '2018-09-21 09:19:14', '30 deleted'),
(58, '2018-09-21 09:20:35', '30 deleted'),
(59, '2018-09-21 09:20:39', '30 deleted'),
(60, '2018-09-21 09:20:48', '30 deleted'),
(61, '2018-09-21 09:20:53', '30 deleted'),
(62, '2018-09-21 09:21:07', '30 deleted'),
(63, '2018-09-21 09:21:15', '30 deleted'),
(64, '2018-09-21 09:22:42', '30 deleted'),
(65, '2018-09-21 09:23:02', '30 deleted'),
(66, '2018-09-21 09:23:29', '30 deleted'),
(67, '2018-09-21 09:24:02', '30 deleted'),
(68, '2018-09-21 09:24:20', '30 deleted'),
(69, '2018-09-21 09:24:40', '30 deleted'),
(70, '2018-09-21 09:25:43', '30 deleted'),
(71, '2018-09-21 09:26:05', '30 deleted'),
(72, '2018-09-21 09:26:32', '30 deleted'),
(73, '2018-09-21 09:26:59', '30 deleted'),
(74, '2018-09-21 09:28:34', '30 deleted'),
(75, '2018-09-21 09:28:38', '30 deleted'),
(76, '2018-09-21 09:29:02', '30 deleted'),
(77, '2018-09-21 09:29:27', '30 deleted'),
(78, '2018-09-21 09:29:43', '30 deleted'),
(79, '2018-09-21 09:29:52', '30 deleted'),
(80, '2018-09-21 09:30:35', '30 deleted'),
(81, '2018-09-21 09:30:55', '30 deleted'),
(82, '2018-09-21 09:31:05', '30 deleted'),
(83, '2018-09-21 09:31:13', '30 deleted'),
(84, '2018-09-21 09:31:38', '30 deleted'),
(85, '2018-09-21 09:33:10', '30 deleted'),
(86, '2018-09-21 09:33:49', '30 deleted'),
(87, '2018-09-21 09:34:11', '30 deleted'),
(88, '2018-09-21 09:34:21', '30 deleted'),
(89, '2018-09-21 09:35:04', '30 deleted'),
(90, '2018-09-21 09:35:23', '30 deleted'),
(91, '2018-09-21 09:35:28', '30 deleted'),
(92, '2018-09-21 09:35:38', 'piet jan added'),
(93, '2018-09-21 09:35:38', '30 deleted'),
(94, '2018-09-21 09:35:40', '30 deleted'),
(95, '2018-09-21 09:35:45', '30 deleted'),
(96, '2018-09-21 09:36:37', '30 deleted'),
(97, '2018-09-21 09:36:50', '30 deleted'),
(98, '2018-09-21 09:36:59', '30 deleted'),
(99, '2018-09-21 09:37:49', '30 deleted'),
(100, '2018-09-21 09:38:13', '30 deleted'),
(101, '2018-09-21 09:38:17', '30 deleted'),
(102, '2018-09-21 09:39:06', '30 deleted'),
(103, '2018-09-21 09:39:21', '30 deleted'),
(104, '2018-09-21 09:39:30', '30 deleted'),
(105, '2018-09-21 09:39:34', '30 deleted'),
(106, '2018-09-21 09:39:55', '30 deleted'),
(107, '2018-09-21 09:40:10', '30 deleted'),
(108, '2018-09-21 09:40:23', '30 deleted'),
(109, '2018-09-21 09:41:07', '30 deleted'),
(110, '2018-09-21 09:41:23', '30 deleted'),
(111, '2018-09-21 09:41:48', '30 deleted'),
(112, '2018-09-21 09:41:58', '30 deleted'),
(113, '2018-09-21 09:42:40', '30 deleted'),
(114, '2018-09-21 09:42:47', '30 deleted'),
(115, '2018-09-21 09:42:57', '30 deleted'),
(116, '2018-09-21 09:43:10', '30 deleted'),
(117, '2018-09-21 09:44:04', '30 deleted'),
(118, '2018-09-21 09:44:47', '30 deleted'),
(119, '2018-09-21 09:44:57', '30 deleted'),
(120, '2018-09-21 09:45:13', '30 deleted'),
(121, '2018-09-21 09:45:27', '30 deleted'),
(122, '2018-09-21 09:45:35', '30 deleted'),
(123, '2018-09-21 09:46:07', '30 deleted'),
(124, '2018-09-21 09:46:12', '  added'),
(125, '2018-09-21 09:46:12', '30 deleted'),
(126, '2018-09-21 09:46:15', '30 deleted'),
(127, '2018-09-21 09:46:21', 'piet piet added'),
(128, '2018-09-21 09:46:21', '30 deleted'),
(129, '2018-09-21 09:46:24', '30 deleted'),
(130, '2018-09-21 09:47:37', '30 deleted'),
(131, '2018-09-21 09:47:53', '30 deleted'),
(132, '2018-09-21 09:48:05', '30 deleted'),
(133, '2018-09-21 09:48:30', '30 deleted'),
(134, '2018-09-21 09:48:35', '30 deleted'),
(135, '2018-09-21 09:48:43', '30 deleted'),
(136, '2018-09-21 09:48:52', '30 deleted'),
(137, '2018-09-21 09:49:19', '30 deleted'),
(138, '2018-09-21 09:49:39', '30 deleted'),
(139, '2018-09-21 09:51:00', '30 deleted'),
(140, '2018-09-21 09:51:27', '30 deleted'),
(141, '2018-09-21 09:51:54', '30 deleted'),
(142, '2018-09-21 09:52:12', '30 deleted'),
(143, '2018-09-21 09:52:16', '30 deleted'),
(144, '2018-09-21 09:52:24', '30 deleted'),
(145, '2018-09-21 09:53:35', '30 deleted'),
(146, '2018-09-21 09:54:29', '30 deleted'),
(147, '2018-09-21 09:54:37', '30 deleted'),
(148, '2018-09-21 09:54:50', '30 deleted'),
(149, '2018-09-21 09:55:16', '30 deleted'),
(150, '2018-09-21 09:55:25', '30 deleted'),
(151, '2018-09-21 09:55:56', '30 deleted'),
(152, '2018-09-21 09:56:00', '30 deleted'),
(153, '2018-09-21 09:56:31', '30 deleted'),
(154, '2018-09-21 09:56:46', '30 deleted'),
(155, '2018-09-21 09:57:06', '30 deleted'),
(156, '2018-09-21 09:57:18', '30 deleted'),
(157, '2018-09-21 09:57:37', '30 deleted'),
(158, '2018-09-21 09:57:41', '30 deleted'),
(159, '2018-09-21 09:57:55', '30 deleted'),
(160, '2018-09-21 09:58:05', '30 deleted'),
(161, '2018-09-21 09:58:30', '30 deleted'),
(162, '2018-09-21 09:58:37', '30 deleted'),
(163, '2018-09-21 09:58:56', '30 deleted'),
(164, '2018-09-21 09:59:04', '30 deleted'),
(165, '2018-09-21 09:59:17', '30 deleted'),
(166, '2018-09-21 10:00:59', '30 deleted'),
(167, '2018-09-21 10:01:48', '30 deleted'),
(168, '2018-09-21 10:01:53', '30 deleted'),
(169, '2018-09-21 10:02:33', '30 deleted'),
(170, '2018-09-21 10:02:47', '30 deleted'),
(171, '2018-09-21 10:02:58', '30 deleted'),
(172, '2018-09-21 10:03:24', '30 deleted'),
(173, '2018-09-21 10:03:35', '30 deleted'),
(174, '2018-09-21 10:04:37', '30 deleted'),
(175, '2018-09-21 10:05:02', '30 deleted'),
(176, '2018-09-21 10:05:13', '30 deleted'),
(177, '2018-09-21 10:08:23', '30 deleted'),
(178, '2018-09-21 10:08:30', '30 deleted'),
(179, '2018-09-21 10:09:56', '30 deleted'),
(180, '2018-09-21 10:29:25', '30 deleted'),
(181, '2018-09-21 10:29:41', 'piet piet added'),
(182, '2018-09-21 10:29:41', '30 deleted'),
(183, '2018-09-21 10:29:44', '30 deleted'),
(184, '2018-09-21 10:37:48', '30 deleted'),
(185, '2018-09-21 10:37:52', '30 deleted'),
(186, '2018-09-21 10:38:29', '30 deleted'),
(187, '2018-09-21 10:38:34', '30 deleted'),
(188, '2018-09-21 10:40:43', '30 deleted'),
(189, '2018-09-21 10:49:49', 'plan plan added'),
(190, '2018-09-21 11:32:25', 'lol lol added'),
(191, '2018-09-21 13:25:20', '62 deleted'),
(192, '2018-09-21 13:25:25', '62 deleted'),
(193, '2018-09-21 13:25:33', '62 deleted'),
(194, '2018-09-21 13:25:40', '1 deleted'),
(195, '2018-09-21 13:27:28', '1 deleted'),
(196, '2018-09-21 13:27:37', '1 deleted'),
(197, '2018-09-21 13:27:41', '1 deleted'),
(198, '2018-09-21 13:27:51', '1 deleted'),
(199, '2018-09-21 13:27:56', '1 deleted'),
(200, '2018-09-21 13:28:00', '1 deleted'),
(201, '2018-09-21 13:28:10', '1 deleted'),
(202, '2018-09-21 13:55:25', '1 deleted'),
(203, '2018-09-21 13:55:34', '1 deleted'),
(204, '2018-09-21 13:55:37', '1 deleted'),
(205, '2018-09-21 13:55:45', '1 deleted'),
(206, '2018-09-21 13:55:52', '1 deleted'),
(207, '2018-09-21 13:55:55', '1 deleted'),
(208, '2018-09-21 13:55:56', '1 deleted'),
(209, '2018-09-21 13:55:56', '1 deleted'),
(210, '2018-09-21 14:23:44', '1 deleted'),
(211, '2018-09-21 14:23:53', '1 deleted'),
(212, '2018-09-21 14:23:54', '1 deleted'),
(213, '2018-09-21 14:24:01', '1 deleted'),
(214, '2018-09-21 14:24:16', '1 deleted'),
(215, '2018-09-21 14:24:19', '1 deleted'),
(216, '2018-09-21 14:24:21', '1 deleted'),
(217, '2018-09-21 14:24:29', '1 deleted'),
(218, '2018-09-24 09:33:52', '62 deleted'),
(219, '2018-09-24 09:33:57', '62 deleted'),
(220, '2018-09-24 09:35:06', '62 deleted'),
(221, '2018-09-24 09:35:14', '62 deleted'),
(222, '2018-09-24 09:35:44', '62 deleted'),
(223, '2018-09-24 09:35:51', '62 deleted'),
(224, '2018-09-24 09:35:57', '62 deleted'),
(225, '2018-09-24 10:50:35', 'hello'),
(226, '2018-09-24 10:50:47', 'hello'),
(227, '2018-09-24 10:51:13', 'hello'),
(228, '2018-09-24 10:52:36', 'hello'),
(229, '2018-09-24 10:52:46', 'hello'),
(230, '2018-09-24 10:54:02', 'hello'),
(231, '2018-09-24 10:54:06', 'hello'),
(232, '2018-09-24 10:54:43', 'hello'),
(233, '2018-09-24 11:15:48', '2 deleted'),
(234, '2018-09-24 11:15:55', '3 deleted'),
(235, '2018-09-24 11:16:09', '4 deleted'),
(236, '2018-09-24 11:18:47', '63 deleted'),
(237, '2018-09-24 11:18:54', '63 deleted'),
(238, '2018-09-24 11:19:11', '63 deleted'),
(239, '2018-09-24 11:19:19', '64 deleted'),
(240, '2018-09-24 11:39:16', 'hello'),
(241, '2018-09-24 11:39:20', 'hello'),
(242, '2018-09-24 11:39:25', 'hello'),
(243, '2018-09-24 11:42:35', 'hello'),
(244, '2018-09-24 11:42:50', 'hello'),
(245, '2018-09-24 11:42:53', 'hello'),
(246, '2018-09-24 11:44:05', 'hello'),
(247, '2018-09-24 11:44:20', 'hello'),
(248, '2018-09-24 11:44:50', 'hello'),
(249, '2018-09-24 11:44:53', 'hello'),
(250, '2018-09-24 11:44:56', 'hello'),
(251, '2018-09-24 11:45:31', 'hello'),
(252, '2018-09-24 11:48:26', 'hello'),
(253, '2018-09-24 11:52:25', 'hello'),
(254, '2018-09-24 11:52:29', 'hello'),
(255, '2018-09-24 11:52:30', 'hello'),
(256, '2018-09-24 11:52:30', 'hello'),
(257, '2018-09-24 11:52:39', 'hello'),
(258, '2018-09-24 11:52:43', 'hello'),
(259, '2018-09-24 11:52:49', 'hello'),
(260, '2018-09-24 11:52:50', 'hello'),
(261, '2018-09-24 11:52:51', 'hello'),
(262, '2018-09-24 11:52:51', 'hello'),
(263, '2018-09-24 11:52:51', 'hello'),
(264, '2018-09-24 11:52:51', 'hello'),
(265, '2018-09-24 11:52:52', 'hello'),
(266, '2018-09-24 11:52:52', 'hello'),
(267, '2018-09-24 11:52:52', 'hello'),
(268, '2018-09-24 11:52:52', 'hello'),
(269, '2018-09-24 11:52:52', 'hello'),
(270, '2018-09-24 11:52:53', 'hello'),
(271, '2018-09-24 11:52:53', 'hello'),
(272, '2018-09-24 11:52:53', 'hello'),
(273, '2018-09-24 11:52:54', 'hello'),
(274, '2018-09-24 11:52:57', 'hello'),
(275, '2018-09-24 11:53:00', 'hello'),
(276, '2018-09-24 11:53:00', 'hello'),
(277, '2018-09-24 11:53:01', 'hello'),
(278, '2018-09-24 11:53:01', 'hello'),
(279, '2018-09-24 11:53:01', 'hello'),
(280, '2018-09-24 11:53:01', 'hello'),
(281, '2018-09-24 11:53:01', 'hello'),
(282, '2018-09-24 11:53:02', 'hello'),
(283, '2018-09-24 11:53:02', 'hello'),
(284, '2018-09-24 11:53:05', 'hello'),
(285, '2018-09-24 11:53:05', 'hello'),
(286, '2018-09-24 11:53:06', 'hello'),
(287, '2018-09-24 11:53:06', 'hello'),
(288, '2018-09-24 11:53:07', 'hello'),
(289, '2018-09-24 11:53:08', 'hello'),
(290, '2018-09-24 11:53:08', 'hello'),
(291, '2018-09-24 11:53:08', 'hello'),
(292, '2018-09-24 11:53:08', 'hello'),
(293, '2018-09-24 11:53:08', 'hello'),
(294, '2018-09-24 11:53:09', 'hello'),
(295, '2018-09-24 11:53:10', 'hello'),
(296, '2018-09-24 11:53:11', 'hello'),
(297, '2018-09-24 11:53:12', 'hello'),
(298, '2018-09-24 11:53:12', 'hello'),
(299, '2018-09-24 11:53:12', 'hello'),
(300, '2018-09-24 11:53:12', 'hello'),
(301, '2018-09-24 11:53:13', 'hello'),
(302, '2018-09-24 11:53:13', 'hello'),
(303, '2018-09-24 11:53:13', 'hello'),
(304, '2018-09-24 11:53:14', 'hello'),
(305, '2018-09-24 11:53:17', 'hello'),
(306, '2018-09-24 11:53:19', 'hello'),
(307, '2018-09-24 11:53:28', 'hello'),
(308, '2018-09-24 11:54:34', 'hello'),
(309, '2018-09-24 11:54:44', 'hello'),
(310, '2018-09-24 11:54:51', 'hello'),
(311, '2018-09-24 11:55:00', 'hello'),
(312, '2018-09-24 11:55:22', 'hello'),
(313, '2018-09-24 11:55:49', 'hello'),
(314, '2018-09-24 11:55:53', 'hello'),
(315, '2018-09-24 11:57:21', 'hello'),
(316, '2018-09-24 11:58:28', 'hello'),
(317, '2018-09-24 11:59:46', 'hello'),
(318, '2018-09-24 11:59:55', 'hello'),
(319, '2018-09-24 11:59:56', 'hello'),
(320, '2018-09-24 11:59:56', 'hello'),
(321, '2018-09-24 11:59:58', 'hello'),
(322, '2018-09-24 12:00:00', 'hello'),
(323, '2018-09-24 12:00:02', 'hello'),
(324, '2018-09-24 12:02:04', 'hello'),
(325, '2018-09-24 12:02:09', 'hello'),
(326, '2018-09-24 12:02:13', 'hello'),
(327, '2018-09-24 12:37:56', 'hello'),
(328, '2018-09-24 12:38:09', 'hello'),
(329, '2018-09-24 12:38:14', 'hello'),
(330, '2018-09-24 12:38:18', 'hello'),
(331, '2018-09-24 14:02:03', '6 deleted'),
(332, '2018-09-24 14:02:07', '13 deleted'),
(333, '2018-09-24 14:31:13', 'jan piet added'),
(334, '2018-09-24 14:43:54', '5 deleted'),
(335, '2018-09-24 14:43:59', '7 deleted'),
(336, '2018-09-25 08:53:14', 'hello'),
(337, '2018-09-25 08:53:16', 'hello'),
(338, '2018-09-25 08:53:21', 'hello'),
(339, '2018-09-25 08:53:23', 'hello'),
(340, '2018-09-25 08:53:28', 'hello'),
(341, '2018-09-25 08:53:38', 'hello'),
(342, '2018-09-25 08:53:39', 'hello'),
(343, '2018-09-25 08:53:42', 'hello'),
(344, '2018-09-25 08:53:43', 'hello'),
(345, '2018-09-25 08:53:46', 'hello'),
(346, '2018-09-25 08:53:48', 'hello'),
(347, '2018-09-25 08:53:50', 'hello'),
(348, '2018-09-25 08:53:55', 'hello'),
(349, '2018-09-25 08:53:57', 'hello'),
(350, '2018-09-25 08:54:00', 'hello'),
(351, '2018-09-25 08:54:03', 'hello'),
(352, '2018-09-25 08:54:06', 'hello'),
(353, '2018-09-25 08:54:10', 'hello'),
(354, '2018-09-25 08:54:12', 'hello'),
(355, '2018-09-25 08:54:14', 'hello'),
(356, '2018-09-25 08:54:16', 'hello'),
(357, '2018-09-25 08:54:17', 'hello'),
(358, '2018-09-25 08:54:31', 'hello'),
(359, '2018-09-25 09:00:32', 'hello'),
(360, '2018-09-25 09:00:34', 'hello'),
(361, '2018-09-25 09:00:39', 'hello'),
(362, '2018-09-25 09:03:42', 'hello'),
(363, '2018-09-25 09:03:47', 'hello'),
(364, '2018-09-25 09:09:29', 'hello'),
(365, '2018-09-25 09:09:41', 'hello'),
(366, '2018-09-25 09:10:12', 'hello'),
(367, '2018-09-25 09:10:24', 'hello'),
(368, '2018-09-25 09:10:24', 'hello'),
(369, '2018-09-25 09:10:38', 'hello'),
(370, '2018-09-25 09:11:29', 'hello'),
(371, '2018-09-25 09:11:50', 'hello'),
(372, '2018-09-25 09:11:52', 'hello'),
(373, '2018-09-25 09:12:35', 'hello'),
(374, '2018-09-25 09:12:36', 'hello'),
(375, '2018-09-25 09:12:37', 'hello'),
(376, '2018-09-25 09:12:38', 'hello'),
(377, '2018-09-25 09:12:38', 'hello'),
(378, '2018-09-25 09:12:40', 'hello'),
(379, '2018-09-25 09:15:42', 'hello'),
(380, '2018-09-25 09:16:07', 'hello'),
(381, '2018-09-25 09:19:13', 'hello'),
(382, '2018-09-25 09:19:27', 'hello'),
(383, '2018-09-25 09:30:52', 'hello'),
(384, '2018-09-25 09:35:41', 'hello'),
(385, '2018-09-25 09:35:44', 'hello'),
(386, '2018-09-25 09:37:16', 'hello'),
(387, '2018-09-25 09:41:49', 'hello'),
(388, '2018-09-25 09:42:26', 'hello'),
(389, '2018-09-25 09:42:30', 'hello'),
(390, '2018-09-25 09:48:09', 'hello'),
(391, '2018-09-25 09:48:29', 'hello'),
(392, '2018-09-25 09:48:45', 'hello'),
(393, '2018-09-25 09:49:14', 'hello'),
(394, '2018-09-25 09:49:32', 'hello'),
(395, '2018-09-25 09:49:39', 'hello'),
(396, '2018-09-25 09:50:29', 'hello'),
(397, '2018-09-25 09:50:59', 'hello'),
(398, '2018-09-25 09:52:36', 'hello'),
(399, '2018-09-25 09:52:53', 'hello'),
(400, '2018-09-25 09:57:02', 'hello'),
(401, '2018-09-25 09:57:41', 'hello'),
(402, '2018-09-25 09:58:22', 'hello'),
(403, '2018-09-25 09:58:27', 'hello'),
(404, '2018-09-25 09:58:31', 'hello'),
(405, '2018-09-25 09:59:15', 'hello'),
(406, '2018-09-25 09:59:29', 'hello'),
(407, '2018-09-25 09:59:43', 'hello'),
(408, '2018-09-25 10:01:52', 'hello'),
(409, '2018-09-25 10:04:36', 'hello'),
(410, '2018-09-25 10:04:42', 'hello'),
(411, '2018-09-25 10:04:51', 'hello'),
(412, '2018-09-25 10:05:11', 'hello'),
(413, '2018-09-25 11:55:26', 'hello'),
(414, '2018-09-25 11:55:39', 'hello'),
(415, '2018-09-25 11:57:11', 'hello'),
(416, '2018-09-25 12:02:42', 'hello'),
(417, '2018-09-25 12:03:36', 'hello'),
(418, '2018-09-25 12:52:36', 'hello'),
(419, '2018-09-25 12:54:44', 'hello'),
(420, '2018-09-25 13:00:16', 'hello'),
(421, '2018-09-25 13:30:45', 'hello'),
(422, '2018-09-25 13:48:35', 'hello'),
(423, '2018-09-25 13:48:41', 'hello'),
(424, '2018-09-25 14:08:32', 'hello'),
(425, '2018-09-25 14:08:55', 'hello'),
(426, '2018-09-25 14:27:05', 'hello'),
(427, '2018-09-25 14:29:25', 'hello'),
(428, '2018-09-25 14:29:40', 'hello'),
(429, '2018-09-27 08:29:19', 'hello'),
(430, '2018-09-27 10:46:46', 'hello'),
(431, '2018-09-27 10:59:17', 'hello'),
(432, '2018-09-27 10:59:29', 'hello'),
(433, '2018-09-27 11:01:17', 'hello'),
(434, '2018-09-27 11:04:47', 'hello'),
(435, '2018-09-27 11:07:00', 'hello'),
(436, '2018-09-27 11:07:14', 'hello'),
(437, '2018-09-27 11:14:35', 'hello'),
(438, '2018-09-27 11:15:04', 'hello'),
(439, '2018-09-27 11:15:12', 'hello'),
(440, '2018-09-27 11:16:40', 'hello'),
(441, '2018-09-27 11:16:45', 'hello'),
(442, '2018-09-27 11:18:48', 'hello'),
(443, '2018-09-27 11:18:55', 'hello'),
(444, '2018-09-27 11:22:11', 'hello'),
(445, '2018-09-27 11:26:27', 'hello'),
(446, '2018-09-27 11:27:12', 'hello'),
(447, '2018-09-27 11:29:01', 'hello'),
(448, '2018-09-27 11:37:32', 'hello'),
(449, '2018-09-27 11:38:17', 'hello'),
(450, '2018-09-27 11:38:36', 'hello'),
(451, '2018-09-27 11:38:36', 'hello'),
(452, '2018-09-27 11:40:47', 'hello'),
(453, '2018-09-27 11:41:02', 'hello'),
(454, '2018-09-27 11:49:08', 'hello'),
(455, '2018-09-27 11:50:13', 'hello'),
(456, '2018-09-27 11:50:33', 'hello'),
(457, '2018-09-27 11:51:37', 'hello'),
(458, '2018-09-27 11:51:44', 'hello'),
(459, '2018-09-27 11:52:11', 'hello'),
(460, '2018-09-27 11:54:56', 'hello'),
(461, '2018-09-27 11:56:58', 'hello'),
(462, '2018-09-27 12:03:38', 'hello'),
(463, '2018-09-27 12:04:34', 'hello'),
(464, '2018-09-27 12:04:40', 'hello'),
(465, '2018-09-27 12:04:51', 'hello'),
(466, '2018-09-27 12:38:08', 'hello'),
(467, '2018-09-27 12:38:24', 'hello'),
(468, '2018-09-27 12:40:16', 'hello'),
(469, '2018-09-27 12:40:46', 'hello'),
(470, '2018-09-27 12:43:49', 'hello'),
(471, '2018-09-27 12:49:10', 'hello'),
(472, '2018-09-27 12:49:56', 'hello'),
(473, '2018-09-27 12:52:58', 'hello'),
(474, '2018-09-27 12:53:24', 'hello'),
(475, '2018-09-27 12:54:34', 'hello'),
(476, '2018-09-27 12:55:26', 'hello'),
(477, '2018-09-27 12:56:10', 'hello'),
(478, '2018-09-27 12:56:23', 'hello'),
(479, '2018-09-27 12:56:23', 'hello'),
(480, '2018-09-27 12:57:41', 'hello'),
(481, '2018-09-27 12:58:16', 'hello'),
(482, '2018-09-27 12:58:39', 'hello'),
(483, '2018-09-27 12:58:56', 'hello'),
(484, '2018-09-27 13:00:42', 'hello'),
(485, '2018-09-27 13:02:44', 'hello'),
(486, '2018-09-27 13:05:19', 'hello'),
(487, '2018-09-27 13:05:24', 'hello'),
(488, '2018-09-27 13:05:51', 'hello'),
(489, '2018-09-27 13:06:24', 'hello'),
(490, '2018-09-27 13:08:06', 'hello'),
(491, '2018-09-27 13:08:29', 'hello'),
(492, '2018-09-27 13:10:11', 'hello'),
(493, '2018-09-27 13:11:24', 'hello'),
(494, '2018-09-27 13:11:51', 'hello'),
(495, '2018-09-27 13:12:03', 'hello'),
(496, '2018-09-27 13:12:23', 'hello'),
(497, '2018-09-27 13:13:01', 'hello'),
(498, '2018-09-27 13:13:01', 'hello'),
(499, '2018-09-27 13:13:20', 'hello'),
(500, '2018-09-27 13:14:04', 'hello'),
(501, '2018-09-27 13:14:56', 'hello'),
(502, '2018-09-27 13:15:23', 'hello'),
(503, '2018-09-27 13:16:09', 'hello'),
(504, '2018-09-27 13:16:24', 'hello'),
(505, '2018-09-27 13:17:42', 'hello'),
(506, '2018-09-27 13:18:00', 'hello'),
(507, '2018-09-27 13:18:26', 'hello'),
(508, '2018-09-27 13:18:33', 'hello'),
(509, '2018-09-27 13:19:25', 'hello'),
(510, '2018-09-27 13:21:41', 'hello'),
(511, '2018-09-27 13:25:46', 'hello'),
(512, '2018-09-27 13:26:12', 'hello'),
(513, '2018-09-27 13:26:47', 'hello'),
(514, '2018-09-27 13:28:26', 'hello'),
(515, '2018-09-27 13:28:37', 'hello'),
(516, '2018-09-27 13:29:06', 'hello'),
(517, '2018-09-27 13:29:45', 'hello'),
(518, '2018-09-27 13:30:25', 'hello'),
(519, '2018-09-27 13:30:59', 'hello'),
(520, '2018-09-27 13:31:33', 'hello'),
(521, '2018-09-27 13:32:14', 'hello'),
(522, '2018-09-27 13:32:59', 'hello'),
(523, '2018-09-27 13:34:52', 'hello'),
(524, '2018-09-27 13:36:47', 'hello'),
(525, '2018-09-27 13:38:17', 'hello'),
(526, '2018-09-27 13:39:13', 'hello'),
(527, '2018-09-27 13:40:46', 'hello'),
(528, '2018-09-27 13:42:04', 'hello'),
(529, '2018-09-27 13:44:03', 'hello'),
(530, '2018-09-27 13:44:49', 'hello'),
(531, '2018-09-27 13:45:21', 'hello'),
(532, '2018-09-27 13:46:00', 'hello'),
(533, '2018-09-27 13:46:32', 'hello'),
(534, '2018-09-27 13:47:12', 'hello'),
(535, '2018-09-27 13:49:40', 'hello'),
(536, '2018-09-27 13:50:03', 'hello'),
(537, '2018-09-27 13:50:15', 'hello'),
(538, '2018-09-27 13:51:50', 'hello'),
(539, '2018-09-27 13:54:42', 'hello'),
(540, '2018-09-27 13:54:47', 'hello'),
(541, '2018-09-27 13:54:53', 'hello'),
(542, '2018-09-27 13:55:08', 'hello'),
(543, '2018-09-27 13:55:29', 'hello'),
(544, '2018-09-27 13:55:39', 'hello'),
(545, '2018-09-27 13:55:43', 'hello'),
(546, '2018-09-27 13:57:22', 'hello'),
(547, '2018-09-27 13:57:54', 'hello'),
(548, '2018-09-27 13:59:47', 'hello'),
(549, '2018-09-27 14:00:58', 'hello'),
(550, '2018-09-27 14:01:25', 'hello'),
(551, '2018-09-27 14:03:35', 'hello'),
(552, '2018-09-27 14:03:47', 'hello'),
(553, '2018-09-27 14:03:52', 'hello'),
(554, '2018-09-27 14:03:58', 'hello'),
(555, '2018-09-27 14:04:06', 'hello'),
(556, '2018-09-27 14:04:16', 'hello'),
(557, '2018-09-27 14:04:24', 'hello'),
(558, '2018-09-27 14:04:58', 'hello'),
(559, '2018-09-27 14:05:44', 'hello'),
(560, '2018-09-27 14:05:55', 'hello'),
(561, '2018-09-27 14:07:54', 'hello'),
(562, '2018-10-01 09:12:52', 'hello'),
(563, '2018-10-01 09:38:36', 'hello'),
(564, '2018-10-01 09:42:38', 'hello'),
(565, '2018-10-01 12:53:47', 'hello'),
(566, '2018-10-01 12:54:32', 'hello'),
(567, '2018-10-01 12:54:38', 'hello'),
(568, '2018-10-01 12:58:33', 'hello'),
(569, '2018-10-01 13:04:09', 'hello'),
(570, '2018-10-01 13:04:15', 'hello'),
(571, '2018-10-01 13:05:12', 'hello'),
(572, '2018-10-01 13:06:41', 'hello'),
(573, '2018-10-04 13:15:32', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `risiri_reserveringen`
--

CREATE TABLE `risiri_reserveringen` (
  `klantNummer` int(10) NOT NULL,
  `artikelNummer` int(10) NOT NULL,
  `voorNaam` varchar(15) NOT NULL,
  `tussenVoegsel` varchar(6) NOT NULL,
  `achterNaam` varchar(15) NOT NULL,
  `uitleenDatum` date NOT NULL,
  `beginTijd` time NOT NULL,
  `eindTijd` time NOT NULL,
  `doel` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risiri_reserveringen`
--

INSERT INTO `risiri_reserveringen` (`klantNummer`, `artikelNummer`, `voorNaam`, `tussenVoegsel`, `achterNaam`, `uitleenDatum`, `beginTijd`, `eindTijd`, `doel`) VALUES
(1, 0, 'jop', 'de', 'meurichy', '2018-10-09', '13:00:00', '14:00:00', 'Gesprek');

-- --------------------------------------------------------

--
-- Table structure for table `risiri_uitleningen`
--

CREATE TABLE `risiri_uitleningen` (
  `uitleenNummer` int(10) NOT NULL,
  `Klantnummer` int(10) NOT NULL,
  `Artikelnummer` int(10) NOT NULL,
  `uitleenDatum` date NOT NULL,
  `inleverDatum` date NOT NULL,
  `ingeleverd` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risiri_uitleningen`
--

INSERT INTO `risiri_uitleningen` (`uitleenNummer`, `Klantnummer`, `Artikelnummer`, `uitleenDatum`, `inleverDatum`, `ingeleverd`) VALUES
(1, 500, 50, '0000-00-00', '2018-10-24', 0),
(2, 50, 500, '2018-10-17', '2018-10-24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-11 19:11:28', '2018-09-11 19:11:28', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/risiriplugin', 'yes'),
(2, 'home', 'http://localhost/risiriplugin', 'yes'),
(3, 'blogname', 'RiSiRi Magazijn', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mdenouden@student.scalda.nl', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:23:\"RisiriWidget/risiri.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'risiri', 'yes'),
(41, 'stylesheet', 'risiri', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:28:\"error-log-monitor/plugin.php\";s:14:\"__return_false\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:4:{s:13:\"administrator\";a:2:{s:4:\"name\";s:9:\"Beheerder\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:11:\"ivs_manager\";a:2:{s:4:\"name\";s:11:\"IVS_Manager\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:11:\"project_lid\";a:2:{s:4:\"name\";s:11:\"Project lid\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:9:\"Gebruiker\";a:2:{s:4:\"name\";s:9:\"Gebruiker\";s:12:\"capabilities\";a:0:{}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:17:\"unique-sidebar-id\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:7:{i:1541417902;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1541421272;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1541445094;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1541445164;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1541445165;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1541450049;a:1:{s:30:\"fs_data_sync_error-log-monitor\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1537789856;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1541411077;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(118, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1541411078;s:7:\"checked\";a:1:{s:23:\"RisiriWidget/risiri.php\";s:4:\"0.73\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no'),
(121, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1541411078;s:7:\"checked\";a:4:{s:6:\"risiri\";s:3:\"1.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(127, 'can_compress_scripts', '1', 'no'),
(158, 'recently_activated', 'a:1:{s:23:\"RisiriWidget/risiri.php\";i:1539197374;}', 'yes'),
(165, 'wordpress_plugin_template_version', '1.0.0', 'yes'),
(195, 'wp-bitbucket/wp-bitbucket.php-db-version', '100', 'yes'),
(206, 'current_theme', 'RiSiRi Theme', 'yes'),
(207, 'theme_mods_twentyfifteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1537786325;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:7:{i:0;s:12:\"wpb_widget-2\";i:1;s:8:\"search-2\";i:2;s:14:\"recent-posts-2\";i:3;s:17:\"recent-comments-2\";i:4;s:10:\"archives-2\";i:5;s:12:\"categories-2\";i:6;s:6:\"meta-2\";}}}}', 'yes'),
(208, 'theme_switched', '', 'yes'),
(209, '_transient_twentyfifteen_categories', '1', 'yes'),
(217, 'theme_mods_risiri', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1539197969;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:17:\"unique-sidebar-id\";a:0:{}}}s:11:\"custom_logo\";i:15;}', 'yes'),
(243, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:26:\"error-log-monitor/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.1.2\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1537174401;s:11:\"plugin_path\";s:28:\"error-log-monitor/plugin.php\";}}s:7:\"abspath\";s:31:\"C:\\xampp01\\htdocs\\risiriplugin/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:28:\"error-log-monitor/plugin.php\";s:8:\"sdk_path\";s:26:\"error-log-monitor/freemius\";s:7:\"version\";s:5:\"2.1.2\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1537174401;}}', 'yes'),
(244, 'fs_debug_mode', '', 'yes'),
(245, 'fs_accounts', 'a:14:{s:21:\"id_slug_type_path_map\";a:1:{i:2379;a:3:{s:4:\"slug\";s:17:\"error-log-monitor\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:28:\"error-log-monitor/plugin.php\";}}s:11:\"plugin_data\";a:1:{s:17:\"error-log-monitor\";a:19:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:28:\"error-log-monitor/plugin.php\";}s:17:\"install_timestamp\";i:1537174401;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.1.2\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"1.6.2\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:21:\"is_plugin_new_install\";b:1;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:9:\"localhost\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1537174401;s:7:\"version\";s:5:\"1.6.2\";}s:17:\"was_plugin_loaded\";b:1;s:15:\"prev_is_premium\";b:0;s:14:\"has_trial_plan\";b:0;s:22:\"install_sync_timestamp\";i:1539066537;s:20:\"activation_timestamp\";i:1537174407;s:9:\"sync_cron\";O:8:\"stdClass\":5:{s:7:\"version\";s:5:\"1.6.2\";s:7:\"blog_id\";i:0;s:11:\"sdk_version\";s:5:\"2.1.2\";s:9:\"timestamp\";i:1537174410;s:2:\"on\";b:1;}s:14:\"sync_timestamp\";i:1539066537;}}s:13:\"file_slug_map\";a:1:{s:28:\"error-log-monitor/plugin.php\";s:17:\"error-log-monitor\";}s:7:\"plugins\";a:1:{s:17:\"error-log-monitor\";O:9:\"FS_Plugin\":18:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:17:\"Error Log Monitor\";s:4:\"slug\";s:17:\"error-log-monitor\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:4:\"file\";s:28:\"error-log-monitor/plugin.php\";s:7:\"version\";s:5:\"1.6.2\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:7:\"is_live\";b:1;s:10:\"public_key\";s:32:\"pk_5b9b22d279f81369f3e39d6225e4c\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"2379\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"b5c731b9990167f9e857de13948a69cc\";s:5:\"plans\";a:1:{s:17:\"error-log-monitor\";a:2:{i:0;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:8:\"MjM3OQ==\";s:4:\"name\";s:8:\"ZnJlZQ==\";s:5:\"title\";s:8:\"RnJlZQ==\";s:11:\"description\";N;s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:4:\"MQ==\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";s:32:\"d2hpdGVzaGFkb3dAdy1zaGFkb3cuY29t\";s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:0:\"\";s:2:\"id\";s:8:\"MzY1MA==\";s:7:\"updated\";s:28:\"MjAxOC0wNy0zMCAxMzowMToyNQ==\";s:7:\"created\";s:28:\"MjAxOC0wNy0zMCAxMjo0Mzo1MQ==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:1;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:8:\"MjM3OQ==\";s:4:\"name\";s:4:\"cHJv\";s:5:\"title\";s:4:\"UHJv\";s:11:\"description\";N;s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:0:\"\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";s:32:\"d2hpdGVzaGFkb3dAdy1zaGFkb3cuY29t\";s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:4:\"MQ==\";s:2:\"id\";s:8:\"MzY1Mg==\";s:7:\"updated\";s:28:\"MjAxOC0wNy0zMCAxMzowNzo0Mg==\";s:7:\"created\";s:28:\"MjAxOC0wNy0zMCAxMzowMTo1MA==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}s:14:\"active_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1539066537;s:3:\"md5\";s:32:\"bc0c267b44d10ab07baf7ed6462062d1\";s:7:\"plugins\";a:2:{s:28:\"error-log-monitor/plugin.php\";a:5:{s:4:\"slug\";s:17:\"error-log-monitor\";s:7:\"version\";s:5:\"1.6.2\";s:5:\"title\";s:17:\"Error Log Monitor\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:23:\"RisiriWidget/risiri.php\";a:5:{s:4:\"slug\";s:12:\"RisiriWidget\";s:7:\"version\";s:3:\"1.0\";s:5:\"title\";s:6:\"Risiri\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}}}s:11:\"all_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1538645426;s:3:\"md5\";s:32:\"b80940ae43a4ee1724c17dc16788c7da\";s:7:\"plugins\";a:5:{s:28:\"error-log-monitor/plugin.php\";a:5:{s:4:\"slug\";s:17:\"error-log-monitor\";s:7:\"version\";s:5:\"1.6.2\";s:5:\"title\";s:17:\"Error Log Monitor\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:24:\"risiriByErwin/risiri.php\";a:5:{s:4:\"slug\";s:13:\"risiriByErwin\";s:7:\"version\";s:3:\"0.1\";s:5:\"title\";s:6:\"RiSiRi\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:38:\"RiSiRi Magazijn/my-event-organiser.php\";a:5:{s:4:\"slug\";s:15:\"RiSiRi Magazijn\";s:7:\"version\";s:5:\"0.0.1\";s:5:\"title\";s:13:\"RiSiri Plugin\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:29:\"wp-bitbucket/wp-bitbucket.php\";a:5:{s:4:\"slug\";s:12:\"wp-bitbucket\";s:7:\"version\";s:5:\"0.2.1\";s:5:\"title\";s:12:\"WP Bitbucket\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:23:\"RisiriWidget/risiri.php\";a:6:{s:4:\"slug\";s:12:\"RisiriWidget\";s:7:\"version\";s:3:\"1.0\";s:5:\"title\";s:6:\"Risiri\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;s:7:\"Version\";s:4:\"0.42\";}}}s:10:\"all_themes\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1539066537;s:3:\"md5\";s:32:\"8b1c09e987602c44c6383be5001c4bbb\";s:6:\"themes\";a:4:{s:6:\"risiri\";a:5:{s:4:\"slug\";s:6:\"risiri\";s:7:\"version\";s:3:\"1.0\";s:5:\"title\";s:12:\"RiSiRi Theme\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:13:\"twentyfifteen\";a:5:{s:4:\"slug\";s:13:\"twentyfifteen\";s:7:\"version\";s:3:\"2.0\";s:5:\"title\";s:14:\"Twenty Fifteen\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:15:\"twentyseventeen\";a:5:{s:4:\"slug\";s:15:\"twentyseventeen\";s:7:\"version\";s:3:\"1.7\";s:5:\"title\";s:16:\"Twenty Seventeen\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:13:\"twentysixteen\";a:5:{s:4:\"slug\";s:13:\"twentysixteen\";s:7:\"version\";s:3:\"1.5\";s:5:\"title\";s:14:\"Twenty Sixteen\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}}}s:5:\"sites\";a:1:{s:17:\"error-log-monitor\";O:7:\"FS_Site\":25:{s:7:\"site_id\";s:7:\"5107661\";s:9:\"plugin_id\";s:4:\"2379\";s:7:\"user_id\";s:7:\"1440267\";s:5:\"title\";s:15:\"RiSiRi Magazijn\";s:3:\"url\";s:29:\"http://localhost/risiriplugin\";s:7:\"version\";s:5:\"1.6.2\";s:8:\"language\";s:5:\"en-US\";s:7:\"charset\";s:5:\"UTF-8\";s:16:\"platform_version\";s:5:\"4.9.8\";s:11:\"sdk_version\";s:5:\"2.1.2\";s:28:\"programming_language_version\";s:5:\"7.2.8\";s:7:\"plan_id\";s:4:\"3650\";s:10:\"license_id\";N;s:13:\"trial_plan_id\";N;s:10:\"trial_ends\";N;s:10:\"is_premium\";b:0;s:15:\"is_disconnected\";b:0;s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;s:10:\"public_key\";s:32:\"pk_b427f98ff2f17f96c5eb11e816390\";s:10:\"secret_key\";s:32:\"sk_twFTbhdL77&AMV*?:Bd&)-+NaCJ[h\";s:2:\"id\";s:7:\"1961374\";s:7:\"updated\";N;s:7:\"created\";s:19:\"2018-09-17 08:53:25\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:5:\"users\";a:1:{i:1440267;O:7:\"FS_User\":12:{s:5:\"email\";s:27:\"mdenouden@student.scalda.nl\";s:5:\"first\";s:5:\"admin\";s:4:\"last\";s:0:\"\";s:11:\"is_verified\";b:0;s:11:\"customer_id\";N;s:5:\"gross\";i:0;s:10:\"public_key\";s:32:\"pk_bb82e697b4a085ff5cfc1ab31f05c\";s:10:\"secret_key\";s:32:\"sk_#p9zkapMm#qj}~utPRafD&-@Qa_E_\";s:2:\"id\";s:7:\"1440267\";s:7:\"updated\";N;s:7:\"created\";s:19:\"2018-09-17 08:53:25\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:13:\"admin_notices\";a:1:{s:17:\"error-log-monitor\";a:1:{s:19:\"activation_complete\";a:8:{s:7:\"message\";s:63:\"<b>Error Log Monitor</b> activation was successfully completed.\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:7:\"success\";s:6:\"sticky\";b:1;s:2:\"id\";s:19:\"activation_complete\";s:10:\"manager_id\";s:17:\"error-log-monitor\";s:6:\"plugin\";s:17:\"Error Log Monitor\";s:10:\"wp_user_id\";N;}}}s:23:\"user_id_license_ids_map\";a:1:{i:2379;a:1:{i:1440267;a:0:{}}}s:12:\"all_licenses\";a:1:{i:2379;a:0:{}}}', 'yes'),
(246, 'ws_error_log_monitor_settings', 'a:23:{s:17:\"widget_line_count\";i:20;s:20:\"strip_wordpress_path\";b:0;s:20:\"send_errors_to_email\";a:0:{}s:16:\"email_line_count\";i:100;s:14:\"email_interval\";i:3600;s:24:\"email_log_check_interval\";i:3600;s:25:\"last_sent_email_timestamp\";i:0;s:27:\"last_email_log_interval_end\";N;s:25:\"email_last_line_timestamp\";i:0;s:16:\"timestamp_format\";s:10:\"M d, H:i:s\";s:10:\"sort_order\";s:13:\"chronological\";s:23:\"extra_filter_line_count\";i:1000;s:20:\"dashboard_log_layout\";s:4:\"list\";s:28:\"enable_log_size_notification\";b:0;s:31:\"log_size_notification_threshold\";i:1048576;s:23:\"log_size_check_interval\";i:3600;s:26:\"log_size_notification_sent\";b:0;s:24:\"dashboard_message_filter\";s:3:\"all\";s:31:\"dashboard_message_filter_groups\";a:6:{i:0;s:5:\"error\";i:1;s:7:\"warning\";i:2;s:6:\"notice\";i:3;s:10:\"deprecated\";i:4;s:16:\"strict standards\";i:5;s:5:\"other\";}s:20:\"email_message_filter\";s:17:\"same_as_dashboard\";s:27:\"email_message_filter_groups\";a:6:{i:0;s:5:\"error\";i:1;s:7:\"warning\";i:2;s:6:\"notice\";i:3;s:10:\"deprecated\";i:4;s:16:\"strict standards\";i:5;s:5:\"other\";}s:16:\"ignored_messages\";a:0:{}s:21:\"enable_premium_notice\";b:1;}', 'no'),
(247, 'fs_api_cache', 'a:4:{s:26:\"get:/v1/users/1440267.json\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":16:{s:11:\"customer_id\";N;s:15:\"default_card_id\";N;s:5:\"gross\";i:0;s:6:\"source\";i:0;s:13:\"last_login_at\";N;s:5:\"email\";s:27:\"mdenouden@student.scalda.nl\";s:5:\"first\";s:5:\"admin\";s:4:\"last\";s:0:\"\";s:7:\"picture\";N;s:2:\"ip\";s:14:\"217.102.251.48\";s:11:\"is_verified\";b:0;s:10:\"secret_key\";s:32:\"sk_#p9zkapMm#qj}~utPRafD&-@Qa_E_\";s:10:\"public_key\";s:32:\"pk_bb82e697b4a085ff5cfc1ab31f05c\";s:2:\"id\";s:7:\"1440267\";s:7:\"created\";s:19:\"2018-09-17 08:53:25\";s:7:\"updated\";N;}s:7:\"created\";i:1537174407;s:9:\"timestamp\";i:1537260807;}s:29:\"get:/v1/installs/1961374.json\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":30:{s:7:\"site_id\";s:7:\"5107661\";s:9:\"plugin_id\";s:4:\"2379\";s:7:\"user_id\";s:7:\"1440267\";s:3:\"url\";s:29:\"http://localhost/risiriplugin\";s:5:\"title\";s:15:\"RiSiRi Magazijn\";s:7:\"version\";s:5:\"1.6.2\";s:7:\"plan_id\";s:4:\"3650\";s:10:\"license_id\";N;s:13:\"trial_plan_id\";N;s:10:\"trial_ends\";N;s:15:\"subscription_id\";N;s:5:\"gross\";i:0;s:12:\"country_code\";s:2:\"nl\";s:8:\"language\";s:5:\"en-US\";s:7:\"charset\";s:5:\"UTF-8\";s:16:\"platform_version\";s:5:\"4.9.8\";s:11:\"sdk_version\";s:5:\"2.1.2\";s:28:\"programming_language_version\";s:5:\"7.2.8\";s:9:\"is_active\";b:1;s:15:\"is_disconnected\";b:0;s:10:\"is_premium\";b:0;s:14:\"is_uninstalled\";b:0;s:9:\"is_locked\";b:0;s:6:\"source\";i:0;s:8:\"upgraded\";N;s:10:\"secret_key\";s:32:\"sk_twFTbhdL77&AMV*?:Bd&)-+NaCJ[h\";s:10:\"public_key\";s:32:\"pk_b427f98ff2f17f96c5eb11e816390\";s:2:\"id\";s:7:\"1961374\";s:7:\"created\";s:19:\"2018-09-17 08:53:25\";s:7:\"updated\";N;}s:7:\"created\";i:1537174407;s:9:\"timestamp\";i:1537260807;}s:45:\"get:/v1/users/1440267/plugins/2379/plans.json\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":1:{s:5:\"plans\";a:2:{i:0;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:4:\"2379\";s:4:\"name\";s:4:\"free\";s:5:\"title\";s:4:\"Free\";s:11:\"description\";N;s:17:\"is_free_localhost\";b:1;s:17:\"is_block_features\";b:1;s:12:\"license_type\";i:0;s:16:\"is_https_support\";b:0;s:12:\"trial_period\";N;s:23:\"is_require_subscription\";b:0;s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";s:24:\"whiteshadow@w-shadow.com\";s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";b:0;s:11:\"is_featured\";b:0;s:2:\"id\";s:4:\"3650\";s:7:\"updated\";s:19:\"2018-07-30 13:01:25\";s:7:\"created\";s:19:\"2018-07-30 12:43:51\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:1;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:4:\"2379\";s:4:\"name\";s:3:\"pro\";s:5:\"title\";s:3:\"Pro\";s:11:\"description\";N;s:17:\"is_free_localhost\";b:1;s:17:\"is_block_features\";b:0;s:12:\"license_type\";i:0;s:16:\"is_https_support\";b:0;s:12:\"trial_period\";N;s:23:\"is_require_subscription\";b:0;s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";s:24:\"whiteshadow@w-shadow.com\";s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";b:0;s:11:\"is_featured\";b:1;s:2:\"id\";s:4:\"3652\";s:7:\"updated\";s:19:\"2018-07-30 13:07:42\";s:7:\"created\";s:19:\"2018-07-30 13:01:50\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}s:7:\"created\";i:1539066536;s:9:\"timestamp\";i:1539152936;}s:48:\"get:/v1/users/1440267/plugins/2379/licenses.json\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":1:{s:8:\"licenses\";a:0:{}}s:7:\"created\";i:1539066536;s:9:\"timestamp\";i:1539152936;}}', 'yes'),
(248, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:2:{s:8:\"required\";b:0;s:18:\"show_opt_in_notice\";b:0;}}', 'yes'),
(252, '_site_transient_timeout_locked_1', '1852534409', 'no'),
(253, '_site_transient_locked_1', '1', 'no'),
(396, 'widget_wpb_widget', 'a:2:{i:2;a:1:{s:5:\"title\";s:10:\"New titlef\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(412, 'theme_mods_twentysixteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1539239863;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(612, '_transient_twentysixteen_categories', '1', 'yes'),
(618, 'category_children', 'a:0:{}', 'yes'),
(853, '_site_transient_timeout_theme_roots', '1541412877', 'no'),
(854, '_site_transient_theme_roots', 'a:4:{s:6:\"risiri\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1536831258:1'),
(4, 2, '_edit_last', '1'),
(5, 7, '_edit_lock', '1539336986:1'),
(6, 7, '_edit_last', '1'),
(7, 1, '_edit_lock', '1537792298:1'),
(8, 12, '_wp_attached_file', '2018/09/RiSiRi-Logo-768x768-1.png'),
(9, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:33:\"2018/09/RiSiRi-Logo-768x768-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"RiSiRi-Logo-768x768-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"RiSiRi-Logo-768x768-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"RiSiRi-Logo-768x768-1-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 13, '_wp_attached_file', '2018/09/RiSiRi-Logo-768x768-2.png'),
(11, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:33:\"2018/09/RiSiRi-Logo-768x768-2.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"RiSiRi-Logo-768x768-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"RiSiRi-Logo-768x768-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"RiSiRi-Logo-768x768-2-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 14, '_wp_attached_file', '2018/09/risiri.png'),
(13, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:18:\"2018/09/risiri.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"risiri-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"risiri-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"risiri-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 15, '_wp_attached_file', '2018/09/risiri-1.png'),
(15, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:20:\"2018/09/risiri-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"risiri-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"risiri-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"risiri-1-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 17, '_edit_lock', '1539239950:1'),
(17, 17, '_edit_last', '1'),
(18, 21, '_wp_attached_file', '2018/10/XAMPP.png'),
(19, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:17:\"2018/10/XAMPP.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 22, '_wp_trash_meta_status', 'publish'),
(21, 22, '_wp_trash_meta_time', '1540192508');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-09-11 19:11:28', '2018-09-11 19:11:28', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-09-11 19:11:28', '2018-09-11 19:11:28', '', 0, 'http://localhost/risiri/?p=1', 0, 'post', '', 1),
(2, 1, '2018-09-11 19:11:28', '2018-09-11 19:11:28', '[my_event_organiser_main_view]', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-09-13 09:36:29', '2018-09-13 09:36:29', '', 0, 'http://localhost/risiri/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-09-11 19:11:28', '2018-09-11 19:11:28', '<h2>Who we are</h2><p>Our website address is: http://localhost/risiri.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-09-11 19:11:28', '2018-09-11 19:11:28', '', 0, 'http://localhost/risiri/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-09-13 09:36:29', '2018-09-13 09:36:29', '[my_event_organiser_main_view]', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-09-13 09:36:29', '2018-09-13 09:36:29', '', 2, 'http://localhost/risiriplugin/2018/09/13/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-09-24 11:38:37', '2018-09-24 11:38:37', '[risiriTable]', 'risiri', '', 'publish', 'closed', 'closed', '', 'risiri', '', '', '2018-09-25 11:51:13', '2018-09-25 11:51:13', '', 0, 'http://localhost/risiriplugin/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-09-24 11:38:37', '2018-09-24 11:38:37', '[test]', 'risiri', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-09-24 11:38:37', '2018-09-24 11:38:37', '', 7, 'http://localhost/risiriplugin/?p=8', 0, 'revision', '', 0),
(10, 1, '2018-09-25 11:50:50', '2018-09-25 11:50:50', '[risiriTable]', 'risiri', '', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2018-09-25 11:50:50', '2018-09-25 11:50:50', '', 7, 'http://localhost/risiriplugin/?p=10', 0, 'revision', '', 0),
(11, 1, '2018-09-25 11:51:13', '2018-09-25 11:51:13', '[risiriTable]', 'risiri', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-09-25 11:51:13', '2018-09-25 11:51:13', '', 7, 'http://localhost/risiriplugin/?p=11', 0, 'revision', '', 0),
(12, 1, '2018-09-25 12:24:03', '2018-09-25 12:24:03', '', 'RiSiRi-Logo-768x768', '', 'inherit', 'open', 'closed', '', 'risiri-logo-768x768', '', '', '2018-09-25 12:24:03', '2018-09-25 12:24:03', '', 0, 'http://localhost/risiriplugin/wp-content/uploads/2018/09/RiSiRi-Logo-768x768-1.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2018-09-25 12:24:15', '2018-09-25 12:24:15', '', 'RiSiRi-Logo-768x768', '', 'inherit', 'open', 'closed', '', 'risiri-logo-768x768-2', '', '', '2018-09-25 12:24:15', '2018-09-25 12:24:15', '', 0, 'http://localhost/risiriplugin/wp-content/uploads/2018/09/RiSiRi-Logo-768x768-2.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2018-09-25 12:25:56', '2018-09-25 12:25:56', '', 'risiri', '', 'inherit', 'open', 'closed', '', 'risiri-2', '', '', '2018-09-25 12:25:56', '2018-09-25 12:25:56', '', 0, 'http://localhost/risiriplugin/wp-content/uploads/2018/09/risiri.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2018-09-25 12:26:19', '2018-09-25 12:26:19', '', 'risiri', '', 'inherit', 'open', 'closed', '', 'risiri-3', '', '', '2018-09-25 12:26:19', '2018-09-25 12:26:19', '', 0, 'http://localhost/risiriplugin/wp-content/uploads/2018/09/risiri-1.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2018-10-08 07:46:32', '2018-10-08 07:46:32', '[risiriTable2]', 'risiri2', '', 'publish', 'closed', 'closed', '', 'risiri2', '', '', '2018-10-08 07:46:32', '2018-10-08 07:46:32', '', 0, 'http://localhost/risiriplugin/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-10-08 07:46:32', '2018-10-08 07:46:32', '[risiriTable2]', 'risiri2', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-10-08 07:46:32', '2018-10-08 07:46:32', '', 17, 'http://localhost/risiriplugin/?p=18', 0, 'revision', '', 0),
(21, 1, '2018-10-22 07:14:59', '2018-10-22 07:14:59', '', 'XAMPP', '', 'inherit', 'open', 'closed', '', 'xampp', '', '', '2018-10-22 07:14:59', '2018-10-22 07:14:59', '', 0, 'http://localhost/risiriplugin/wp-content/uploads/2018/10/XAMPP.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2018-10-22 07:15:08', '2018-10-22 07:15:08', '{\n    \"risiri::custom_logo\": {\n        \"value\": 15,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-22 07:15:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd2014736-0946-420e-806e-d69390eae226', '', '', '2018-10-22 07:15:08', '2018-10-22 07:15:08', '', 0, 'http://localhost/risiriplugin/?p=22', 0, 'customize_changeset', '', 0),
(23, 1, '2018-10-30 10:56:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-30 10:56:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/risiriplugin/?p=23', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '23'),
(18, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1540192513'),
(25, 2, 'nickname', 'beheerder'),
(26, 2, 'first_name', 'beheerder'),
(27, 2, 'last_name', ''),
(28, 2, 'description', ''),
(29, 2, 'rich_editing', 'true'),
(30, 2, 'syntax_highlighting', 'true'),
(31, 2, 'comment_shortcuts', 'false'),
(32, 2, 'admin_color', 'fresh'),
(33, 2, 'use_ssl', '0'),
(34, 2, 'show_admin_bar_front', 'true'),
(35, 2, 'locale', ''),
(36, 2, 'wp_capabilities', 'a:2:{s:9:\"beheerder\";b:1;s:9:\"Gebruiker\";b:1;}'),
(37, 2, 'wp_user_level', '0'),
(38, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(42, 2, 'wp_dashboard_quick_press_last_post_id', '6'),
(48, 2, 'session_tokens', 'a:1:{s:64:\"00386944d2e80c06f5b185122df4d9a4612bc52a1cb112d02745ccb091bf6e08\";a:4:{s:10:\"expiration\";i:1540555529;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:130:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.102 Safari/537.36 Vivaldi/2.0.1309.37\";s:5:\"login\";i:1540382729;}}'),
(49, 1, 'session_tokens', 'a:1:{s:64:\"251bc43a4078e613e1648a2bff666b0c8c1a63496da8d1fe62b69fa91bf726c9\";a:4:{s:10:\"expiration\";i:1541230694;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:130:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.102 Safari/537.36 Vivaldi/2.0.1309.37\";s:5:\"login\";i:1541057894;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Admin', '$P$Bg51M5/CtyBxkiIB8HwKP.Q2OybSOp.', 'admin', 'mdenouden@student.scalda.nl', '', '2018-09-11 19:11:26', '', 0, 'Admin'),
(2, 'beheerder', '$P$Bhbp.sPWkW3.ZeNNsCwnQ/28.njmsg0', 'beheerder', 'beheerder@email.tld', '', '2018-09-19 09:02:10', '', 0, 'beheerder');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `risiri_artikelen`
--
ALTER TABLE `risiri_artikelen`
  ADD PRIMARY KEY (`Artikelnummer`);

--
-- Indexes for table `risiri_artikel_reserveringen`
--
ALTER TABLE `risiri_artikel_reserveringen`
  ADD PRIMARY KEY (`artikelArtikelnummer`,`ReserveringenReserveringNummer`);

--
-- Indexes for table `risiri_emailherinnering`
--
ALTER TABLE `risiri_emailherinnering`
  ADD PRIMARY KEY (`emailID`);

--
-- Indexes for table `risiri_klanten`
--
ALTER TABLE `risiri_klanten`
  ADD PRIMARY KEY (`klantnummer`);

--
-- Indexes for table `risiri_log`
--
ALTER TABLE `risiri_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `risiri_reserveringen`
--
ALTER TABLE `risiri_reserveringen`
  ADD PRIMARY KEY (`klantNummer`);

--
-- Indexes for table `risiri_uitleningen`
--
ALTER TABLE `risiri_uitleningen`
  ADD PRIMARY KEY (`uitleenNummer`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `risiri_artikelen`
--
ALTER TABLE `risiri_artikelen`
  MODIFY `Artikelnummer` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `risiri_emailherinnering`
--
ALTER TABLE `risiri_emailherinnering`
  MODIFY `emailID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `risiri_klanten`
--
ALTER TABLE `risiri_klanten`
  MODIFY `klantnummer` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `risiri_log`
--
ALTER TABLE `risiri_log`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574;

--
-- AUTO_INCREMENT for table `risiri_reserveringen`
--
ALTER TABLE `risiri_reserveringen`
  MODIFY `klantNummer` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `risiri_uitleningen`
--
ALTER TABLE `risiri_uitleningen`
  MODIFY `uitleenNummer` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=857;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
