-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2020 at 03:25 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `park_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tb`
--

CREATE TABLE `admin_tb` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_tb`
--

INSERT INTO `admin_tb` (`id`, `username`, `password`) VALUES
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `parking_tb`
--

CREATE TABLE `parking_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `cnumber` varchar(30) NOT NULL,
  `model` varchar(30) NOT NULL,
  `datex` varchar(30) NOT NULL,
  `ptime` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `slot` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parking_tb`
--

INSERT INTO `parking_tb` (`id`, `name`, `mobile`, `cnumber`, `model`, `datex`, `ptime`, `price`, `slot`) VALUES
(190, 'fgf', 'dsd', 'sddsd', 'sdsd', '16-04-2020', '9:25 PM', '4', 'A-2');

-- --------------------------------------------------------

--
-- Table structure for table `slot_tb`
--

CREATE TABLE `slot_tb` (
  `id` int(11) NOT NULL,
  `addslots` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slot_tb`
--

INSERT INTO `slot_tb` (`id`, `addslots`, `status`) VALUES
(2, 'A-1', 0),
(3, 'A-2', 1),
(4, 'A-3', 0),
(5, 'A-4', 0),
(6, 'A-5', 0),
(7, 'A-6', 0),
(8, 'A-7', 0),
(10, 'A-9', 0),
(11, 'A-10', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tb`
--
ALTER TABLE `admin_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parking_tb`
--
ALTER TABLE `parking_tb`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slot` (`slot`);

--
-- Indexes for table `slot_tb`
--
ALTER TABLE `slot_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tb`
--
ALTER TABLE `admin_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `parking_tb`
--
ALTER TABLE `parking_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `slot_tb`
--
ALTER TABLE `slot_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
