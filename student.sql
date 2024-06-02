-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2024 at 02:44 PM
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
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `cid` int(10) NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `dept` varchar(30) NOT NULL,
  `maxlimit` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`cid`, `course_name`, `dept`, `maxlimit`) VALUES
(1, 'MTECH', 'CS', 2),
(2, 'MTECH', 'IS', 16),
(3, 'MTECH', 'IT', 16),
(4, 'ss2028', 'Economics', 16),
(5, 'ss2032', 'Economics', 16),
(6, 'ss2030', 'ITM', 60),
(7, 'MD44', 'Medicine', 2),
(8, 'pc77', 'pharmacy', 60);

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `hostel_id` int(10) NOT NULL,
  `hostel_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_details`
--

CREATE TABLE `image_details` (
  `image_id` tinyint(3) NOT NULL DEFAULT 0,
  `image_type` varchar(25) NOT NULL DEFAULT '',
  `image` blob NOT NULL,
  `image_size` varchar(25) NOT NULL DEFAULT '',
  `image_ctgy` varchar(25) NOT NULL DEFAULT '',
  `image_name` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `eid` varchar(7) NOT NULL,
  `rno` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `fathername` varchar(30) NOT NULL,
  `hostelid` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sem` int(2) NOT NULL,
  `cid` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `gender` varchar(7) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT 'MALE',
  `nationality` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`eid`),
  ADD UNIQUE KEY `eid` (`eid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD UNIQUE KEY `email_3` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
