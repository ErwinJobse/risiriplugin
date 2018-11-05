-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2018 at 09:00 AM
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
-- Table structure for table `risiri_klanten`
--

CREATE TABLE `risiri_klanten` (
  `klantnummer` int(10) NOT NULL,
  `voorNaam` varchar(32) NOT NULL,
  `TussenVoegsel` varchar(32) NOT NULL,
  `Achternaam` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risiri_klanten`
--

INSERT INTO `risiri_klanten` (`klantnummer`, `voorNaam`, `TussenVoegsel`, `Achternaam`, `email`) VALUES
(1, 'li', '', 'yo', 'lo@qq.cc'),
(2, 'Bob', 'van', 'Dalen', 'bobje@gmail.com'),
(3, 'Lia', 'Von', 'Inowit', '4517842758@qq.cn'),
(4, '0101', '0111', '0101', '0101'),
(5, 'Jan', '', 'Sql', '0613289535');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `risiri_klanten`
--
ALTER TABLE `risiri_klanten`
  ADD PRIMARY KEY (`klantnummer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `risiri_klanten`
--
ALTER TABLE `risiri_klanten`
  MODIFY `klantnummer` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
