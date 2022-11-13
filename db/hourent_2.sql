-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2022 at 06:35 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hourent`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) UNSIGNED NOT NULL,
  `admin_name` varchar(55) NOT NULL,
  `admin_email` varchar(55) NOT NULL,
  `admin_password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `booking_status` tinyint(1) UNSIGNED NOT NULL,
  `create_date` varchar(11) NOT NULL,
  `update_date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) UNSIGNED NOT NULL,
  `vendor_id` int(11) UNSIGNED NOT NULL,
  `post_type` tinyint(1) NOT NULL,
  `construction_year` int(11) NOT NULL,
  `square_areas` int(11) NOT NULL,
  `living_rooms` int(4) NOT NULL,
  `bed_rooms` int(4) NOT NULL,
  `bath_rooms` int(4) NOT NULL,
  `parking` int(4) NOT NULL,
  `total_floor` int(4) NOT NULL,
  `kitchens` int(4) NOT NULL,
  `Insurance` tinyint(4) NOT NULL,
  `pools` int(4) NOT NULL,
  `garages` int(4) NOT NULL,
  `price` int(55) UNSIGNED NOT NULL,
  `available` tinyint(1) NOT NULL,
  `create_date` varchar(55) NOT NULL,
  `update_date` varchar(55) NOT NULL,
  `post_description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `vendor_id`, `post_type`, `construction_year`, `square_areas`, `living_rooms`, `bed_rooms`, `bath_rooms`, `parking`, `total_floor`, `kitchens`, `Insurance`, `pools`, `garages`, `price`, `available`, `create_date`, `update_date`, `post_description`) VALUES
(1, 10001, 0, 2002, 938, 1, 2, 3, 0, 8, 1, 1, 1, 0, 5454545, 1, '11122022', '44899', 'dyddgdgd'),
(2, 10002, 1, 2014, 166, 1, 2, 2, 1, 6, 1, 1, 1, 1, 8657466, 1, '11122022', '44899', NULL),
(3, 10003, 1, 2000, 564, 2, 4, 3, 0, 5, 1, 0, 1, 1, 1492130, 0, '11122022', '44899', NULL),
(4, 10004, 1, 2000, 792, 2, 3, 2, 1, 9, 1, 1, 0, 0, 2728633, 1, '11122022', '44899', NULL),
(5, 10005, 1, 2018, 783, 2, 5, 2, 1, 13, 1, 0, 0, 1, 9875155, 1, '11122022', '44899', NULL),
(6, 10006, 1, 2015, 626, 1, 2, 1, 1, 5, 1, 1, 0, 1, 4245735, 1, '11122022', '44899', NULL),
(7, 10007, 1, 2014, 690, 1, 4, 1, 1, 14, 1, 1, 0, 1, 6250479, 1, '11122022', '44899', NULL),
(8, 10008, 1, 2010, 517, 1, 5, 1, 0, 6, 1, 0, 1, 1, 9912814, 1, '11122022', '44899', NULL),
(9, 10009, 1, 2004, 887, 1, 5, 2, 1, 15, 1, 1, 1, 0, 1792919, 1, '11122022', '44899', NULL),
(10, 10010, 1, 2014, 823, 1, 4, 1, 1, 7, 1, 1, 1, 1, 1696931, 0, '11122022', '44899', NULL),
(11, 10011, 1, 2009, 928, 1, 4, 1, 0, 8, 1, 1, 1, 0, 2283611, 1, '11122022', '44899', NULL),
(12, 10012, 1, 2018, 767, 2, 3, 2, 1, 10, 1, 1, 1, 0, 1781776, 1, '11122022', '44899', NULL),
(13, 10013, 1, 2018, 495, 2, 1, 3, 1, 8, 1, 0, 1, 1, 9738949, 1, '11122022', '44899', NULL),
(14, 10014, 1, 2011, 645, 2, 1, 3, 0, 12, 1, 1, 0, 1, 8068380, 1, '11122022', '44899', NULL),
(15, 10015, 1, 2003, 151, 1, 2, 1, 1, 8, 1, 1, 1, 0, 1902921, 1, '11122022', '44899', NULL),
(16, 10016, 1, 2008, 162, 2, 5, 1, 0, 7, 1, 0, 1, 0, 4255851, 0, '11122022', '44899', NULL),
(17, 10017, 1, 2005, 139, 2, 4, 1, 0, 12, 1, 0, 0, 0, 1960059, 1, '11122022', '44899', NULL),
(18, 10018, 1, 2001, 742, 1, 5, 1, 1, 3, 1, 1, 0, 0, 119618, 0, '11122022', '44899', NULL),
(19, 10019, 1, 2009, 145, 2, 5, 2, 1, 4, 1, 1, 0, 1, 8580942, 1, '11122022', '44899', NULL),
(20, 10020, 1, 2008, 928, 1, 1, 1, 0, 9, 1, 1, 1, 1, 4595034, 1, '11122022', '44899', NULL),
(21, 10021, 1, 2011, 873, 2, 2, 2, 0, 1, 1, 1, 1, 1, 273507, 1, '11122022', '44899', NULL),
(22, 10022, 1, 2021, 630, 2, 3, 1, 0, 3, 1, 1, 0, 1, 2667738, 0, '11122022', '44899', NULL),
(23, 10023, 1, 2014, 499, 2, 1, 1, 1, 7, 1, 1, 1, 1, 8388780, 1, '11122022', '44899', NULL),
(24, 10024, 1, 2010, 857, 2, 4, 1, 1, 2, 1, 0, 0, 0, 5642637, 1, '11122022', '44899', NULL),
(25, 10025, 1, 2001, 73, 2, 5, 2, 0, 2, 1, 1, 1, 0, 6884692, 1, '11122022', '44899', NULL),
(26, 10026, 1, 2002, 353, 2, 2, 2, 0, 7, 1, 1, 1, 1, 5874672, 1, '11122022', '44899', NULL),
(27, 10027, 0, 2011, 994, 1, 3, 1, 1, 3, 1, 1, 1, 0, 6318476, 0, '11122022', '44899', NULL),
(28, 10028, 1, 2012, 803, 1, 5, 2, 0, 6, 1, 1, 0, 1, 4073675, 0, '11122022', '44899', NULL),
(29, 10029, 1, 2011, 812, 2, 4, 2, 0, 8, 1, 0, 1, 1, 5152207, 0, '11122022', '44899', NULL),
(30, 10030, 1, 2012, 803, 1, 5, 2, 0, 6, 1, 1, 0, 1, 4073675, 0, '11122022', '44899', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) UNSIGNED NOT NULL,
  `review_rating` tinyint(1) NOT NULL,
  `review_com` varchar(500) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED NOT NULL,
  `booking_status` tinyint(3) UNSIGNED NOT NULL,
  `create_id` varchar(11) NOT NULL,
  `update_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `user_name` varchar(55) NOT NULL,
  `user_email` varchar(55) NOT NULL,
  `create_date` int(11) NOT NULL,
  `update_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) UNSIGNED NOT NULL,
  `vendor_name` varchar(55) NOT NULL,
  `vendor_email` varchar(55) NOT NULL,
  `vendor_password` varchar(55) NOT NULL,
  `create_date` int(11) NOT NULL,
  `update_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
