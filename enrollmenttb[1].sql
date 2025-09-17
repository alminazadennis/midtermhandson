-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2025 at 06:33 AM
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
-- Table structure for table `enrollmenttb`
--

CREATE TABLE `enrollmenttb` (
  `enrollID` varchar(25) NOT NULL,
  `studentID` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `courseID` varchar(25) NOT NULL,
  `enrollDate` date NOT NULL,
  `grade` int(3) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollmenttb`
--

INSERT INTO `enrollmenttb` (`enrollID`, `studentID`, `name`, `courseID`, `enrollDate`, `grade`, `password`, `email`, `username`) VALUES
('JavaEn', 's01', 'Jonah Nene', 'java', '2009-09-25', 99, 'jonah69', 'jonah@gmail.com', 'nene'),
('PythonEn', 's02', 'Jobert Boy', 'python', '2009-09-25', 95, 'jobert69', 'jobert@gmail.com', 'toto');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enrollmenttb`
--
ALTER TABLE `enrollmenttb`
  ADD PRIMARY KEY (`enrollID`),
  ADD KEY `studentID` (`studentID`),
  ADD KEY `name` (`name`),
  ADD KEY `courseID` (`courseID`),
  ADD KEY `grade` (`grade`),
  ADD KEY `password` (`password`),
  ADD KEY `enrollmenttb_ibfk_3` (`email`),
  ADD KEY `username` (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrollmenttb`
--
ALTER TABLE `enrollmenttb`
  ADD CONSTRAINT `enrollmenttb_ibfk_1` FOREIGN KEY (`courseID`) REFERENCES `coursestb` (`courseID`),
  ADD CONSTRAINT `enrollmenttb_ibfk_2` FOREIGN KEY (`studentID`) REFERENCES `studentstb` (`studentID`),
  ADD CONSTRAINT `enrollmenttb_ibfk_3` FOREIGN KEY (`email`) REFERENCES `studentstb` (`email`),
  ADD CONSTRAINT `enrollmenttb_ibfk_4` FOREIGN KEY (`username`) REFERENCES `instructorstb` (`username`),
  ADD CONSTRAINT `enrollmenttb_ibfk_5` FOREIGN KEY (`password`) REFERENCES `studentstb` (`password`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
