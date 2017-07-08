-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2017 at 08:24 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `contact` double NOT NULL,
  `experience` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `ctc` float NOT NULL,
  `ectc` float NOT NULL,
  `notice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `email`, `contact`, `experience`, `company`, `profile`, `ctc`, `ectc`, `notice`) VALUES
(1, 'adfdaf', 'sefef', 432543254, '234', 'fweef', 'fwef', 0, 0, 0),
(6, 'vivek', 'vc1258@gmail.com', 9098365776, '5', 'broctagon', 'developer', 10, 20.34, 45),
(7, 'abhishek', 'anhujja-ahahs@gmail.com', 8986754, '6', 'punnnnne', 'hr', 55555600, 7777780, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
