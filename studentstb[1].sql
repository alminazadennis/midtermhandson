-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2025 at 06:05 AM
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
-- Table structure for table `studentstb`
--

CREATE TABLE `studentstb` (
  `name` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `mobile` int(25) NOT NULL,
  `course` varchar(25) NOT NULL,
  `studentID` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentstb`
--

INSERT INTO `studentstb` (`name`, `email`, `mobile`, `course`, `studentID`, `password`) VALUES

('Jonah Girl', 'jonah@gmail.com', 987654321, 'java', 's01', ''),
('Jobert Boy', 'jobert@gmail.com', 987654322, 'python', 's02', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `studentstb`
--
ALTER TABLE `studentstb`
  ADD PRIMARY KEY (`studentID`),
  ADD KEY `email` (`email`),
  ADD KEY `password` (`password`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
