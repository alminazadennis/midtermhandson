-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2025 at 06:35 AM
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
-- Database: `wit`
--

-- --------------------------------------------------------

--
-- Table structure for table `instructorstb`
--

CREATE TABLE `instructorstb` (
  `instructorID` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `instructorEmail` varchar(25) NOT NULL,
  `department` varchar(25) NOT NULL,
  `instructorPass` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructorstb`
--

INSERT INTO `instructorstb` (`instructorID`, `name`, `instructorEmail`, `department`, `instructorPass`, `username`) VALUES
('001', 'Maam Nene', 'nene@gmail.com', 'itdept', 'nene69', 'nene'),
('002', 'Sir Toto', 'toto@gmail.com', 'itdept', 'toto69', 'toto');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `instructorstb`
--
ALTER TABLE `instructorstb`
  ADD PRIMARY KEY (`instructorID`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `email` (`instructorEmail`),
  ADD KEY `instructorPass` (`instructorPass`),
  ADD KEY `username` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
