-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2025 at 05:07 AM
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
-- Table structure for table `coursestb`
--

CREATE TABLE `coursestb` (
  `courseID` varchar(25) NOT NULL,
  `courseName` varchar(25) NOT NULL,
  `credits` int(25) NOT NULL,
  `description` varchar(25) NOT NULL,
  `instructorID` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coursestb`
--

INSERT INTO `coursestb` (`courseID`, `courseName`, `credits`, `description`, `instructorID`) VALUES
('java', '', 3, 'major', 1),
('python', '', 3, 'major', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coursestb`
--
ALTER TABLE `coursestb`
  ADD PRIMARY KEY (`courseID`),
  ADD KEY `courseName` (`courseName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
