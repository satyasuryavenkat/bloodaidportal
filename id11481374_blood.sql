-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 13, 2020 at 06:00 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id11481374_blood`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contactno` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `clgid` int(40) NOT NULL,
  `region` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `clg` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `contactno`, `clgid`, `region`, `clg`, `state`, `password`) VALUES
(1, 'surya', 'satyasuryavenkat@gmail.com', '7382647997', 160040643, 'vijayawada', 'k l unversity', 'ap', 'surya@123'),
(2, 'Lalith', 'satyapolavaraputhegreat@gmail.com', '9542455936', 160040717, 'KLU', 'KL University', 'Andhra Pradesh', 'lalith');

-- --------------------------------------------------------

--
-- Table structure for table `bloo`
--

CREATE TABLE `bloo` (
  `id` int(11) NOT NULL,
  `uname` varchar(200) NOT NULL,
  `blood` varchar(20) NOT NULL,
  `age` int(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `dd` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bloo`
--

INSERT INTO `bloo` (`id`, `uname`, `blood`, `age`, `mobile`, `city`, `dd`) VALUES
(2, 'surya', 'O-', 21, '9441772997', 'vijayawada', 1),
(3, 'rama chandra', 'B+', 21, '9293325828', 'vijayawada', 3),
(4, 'Ajay', 'A+', 21, '9553917914', 'vijayawada', 3),
(6, 'Saijagadeesh', 'AB+', 20, '8466049961', 'Guntur', 3),
(7, 'dheeraj', 'AB+', 20, '7075953294', 'guntur', 0),
(9, 'Mahesh Babu', 'O+', 21, '08919008867', 'Guntur', 18),
(10, 'jasmine', 'O+', 25, '6302933566', 'vijayawada', 3),
(12, 'jethin ', 'O+', 20, '7013954033', 'nizambad', 7),
(14, 'Ajay Tripuramallu', 'B+', 21, '7731939677', 'Guntur', 3),
(21, 'Lalith Polavarapu', 'B+', 20, '9542455936', 'Vijayawada', 3),
(22, 'satya surya venkat', 'O-', 21, '9441772997', 'vijayawada', 3);

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` int(50) NOT NULL,
  `Rname` text COLLATE utf8_unicode_ci NOT NULL,
  `blood1` text COLLATE utf8_unicode_ci NOT NULL,
  `Dname` text COLLATE utf8_unicode_ci NOT NULL,
  `ddate` date NOT NULL,
  `Hname` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `Rname`, `blood1`, `Dname`, `ddate`, `Hname`) VALUES
(1, 'Rama', 'O-', 'Surya', '2019-11-25', 'Manipal'),
(2, 'Surya', 'O-', 'Rama', '2019-11-12', 'Manipal');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(200) NOT NULL,
  `remobile` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `rehospital` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `reblood` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `recity` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `remobile`, `rehospital`, `reblood`, `recity`, `status`) VALUES
(1, '9441772997', 'Manipal', 'AB+', 'Vijayawada ', 'STARTED'),
(2, '9441772997', 'Manipal', 'AB+', 'Vijayawada ', 'STARTED'),
(3, '9441772997', 'Manipal', 'AB+', 'Vijayawada ', 'STARTED'),
(4, '9441772997', 'Manipal', 'AB+', 'Vijayawada ', 'STARTED'),
(5, '7382647997', 'manipal', 'B+', 'vijayawada', 'STARTED'),
(6, '7382647997', 'Manipal', 'A+', 'Vijayawada ', 'STARTED');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bloo`
--
ALTER TABLE `bloo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bloo`
--
ALTER TABLE `bloo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
