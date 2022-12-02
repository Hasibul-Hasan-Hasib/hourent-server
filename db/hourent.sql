-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2022 at 11:27 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

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
  `vendor_id` int(11) NOT NULL,
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
  `user_id` int(11) UNSIGNED NOT NULL,
  `post_type` tinyint(1) NOT NULL,
  `post_loc` varchar(500) NOT NULL,
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
  `img1` varchar(500) NOT NULL,
  `img2` varchar(500) NOT NULL,
  `img3` varchar(500) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `create_date` varchar(55) NOT NULL,
  `update_date` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `user_id`, `post_type`, `post_loc`, `construction_year`, `square_areas`, `living_rooms`, `bed_rooms`, `bath_rooms`, `parking`, `total_floor`, `kitchens`, `Insurance`, `pools`, `garages`, `price`, `img1`, `img2`, `img3`, `available`, `create_date`, `update_date`) VALUES
(1, 10001, 1, '		\r\n		Gulshan, Dhaka		\r\n				', 2002, 938, 1, 2, 3, 0, 8, 1, 1, 1, 0, 5454545, 'https://www.cgarchitect.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBOVJQQVE9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--c5aa20f3fe11f0052afe8ae291c8a18f2ca5bbe2/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9VY21WemFYcGxYM1J2WDJ4cGJXbDBXd2RwQWxZRk1Eb0tjMkYyWlhKN0Jqb01jWFZoYkdsMGVXbGsiLCJleHAiOm51bGwsInB1ciI6InZhcmlhdGlvbiJ9fQ==--a140f81341e053a34b77dbf5e04e777cacb11aff/c87a7744.jpg', 'https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.27-PM1-1.jpeg', 'https://i.pinimg.com/originals/cb/63/8a/cb638ac7f7f50756623aab42c276c17e.jpg', 1, '44876', '44899'),
(2, 10002, 0, '		\r\n		Mirpur, Dhaka		\r\n				', 2014, 166, 1, 2, 2, 1, 6, 1, 1, 1, 1, 8657466, 'https://i.pinimg.com/originals/4f/b4/f6/4fb4f68e9f4f6a83b6c534515c29f951.jpg', '			https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-06-at-2.24.47-PM1.jpeg', '		\r\n				\r\n				https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.25-PM.jpeg', 1, '44876', '44899'),
(3, 10003, 1, '	Baridhara, Dhaka	', 2000, 564, 2, 4, 3, 0, 5, 1, 0, 1, 1, 1492130, 'https://i.pinimg.com/originals/cb/63/8a/cb638ac7f7f50756623aab42c276c17e.jpg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-06-at-2.24.43-PM.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.26-PM.jpeg', 0, '44876', '44899'),
(4, 10004, 1, '	Gulshan, Dhaka	', 2000, 792, 2, 3, 2, 1, 9, 1, 1, 0, 0, 2728633, 'https://i.pinimg.com/originals/e4/4c/48/e44c48ca10a563f967839c0e533f1d9f.jpg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-06-at-2.24.40-PM1.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.27-PM2.jpeg', 1, '44876', '44899'),
(5, 10005, 1, '	Mohakhali, Dhaka	', 2018, 783, 2, 5, 2, 1, 13, 1, 0, 0, 1, 9875155, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Bangladesh_Bank_Building.jpg/800px-Bangladesh_Bank_Building.jpg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-06-at-2.24.46-PM.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.28-PM1.jpeg', 1, '44876', '44899'),
(6, 10006, 0, '	Mirpur, Dhaka	', 2015, 626, 1, 2, 1, 1, 5, 1, 1, 0, 1, 4245735, 'https://sheltech-bd.com/admin/uploads/product/sheltech-nurjahan/1618909440i49LS.jpg', '			https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.30-PM.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.28-PM.jpeg', 1, '44876', '44899'),
(7, 10007, 0, '	Badda, Dhaka	', 2014, 690, 1, 4, 1, 1, 14, 1, 1, 0, 1, 6250479, 'https://img.freepik.com/premium-photo/low-angle-view-residential-buildings-dhaka-bangladesh_260672-10023.jpg?w=2000', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.32-PM.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.29-PM.jpeg', 1, '44876', '44899'),
(8, 10008, 1, '	East Rampura, Dhaka	', 2010, 517, 1, 5, 1, 0, 6, 1, 0, 1, 1, 9912814, 'https://i.pinimg.com/originals/c4/cb/10/c4cb1005a193be3bccdd075337c6a6ab.jpg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.24-PM.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.31-PM1.jpeg', 1, '44876', '44899'),
(9, 10009, 1, '	Boro Moghbazar, Dhaka	', 2004, 887, 1, 5, 2, 1, 15, 1, 1, 1, 0, 1792919, '		https://images.adsttc.com/media/images/6356/7338/af1c/220b/b032/0476/large_jpg/ayna-burir-adar-residence-sharal-architecs_1.jpg?1666610055', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.25-PM2.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.27-PM1-1.jpeg', 1, '44876', '44899'),
(10, 10010, 0, '	Gabtoli, Dhaka	', 2014, 823, 1, 4, 1, 1, 7, 1, 1, 1, 1, 1696931, '		https://archello.s3.eu-central-1.amazonaws.com/images/2022/07/14/wallflower-architecture---design-second-nature-house-private-houses-archello.1657810278.467.jpg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.25-PM.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.30-PM1-1.jpeg', 0, '44876', '44899'),
(11, 10011, 1, '	Mirpur Colony, Dhaka	', 2009, 928, 1, 4, 1, 0, 8, 1, 1, 1, 0, 2283611, '		https://i.pinimg.com/originals/b5/56/b9/b556b953192328825f8da9c9cf84fead.png', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.26-PM.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.23-PM.jpeg', 1, '44876', '44899'),
(12, 10012, 1, '	Karnafuli  , Chittagong', 2018, 767, 2, 3, 2, 1, 10, 1, 1, 1, 0, 1781776, '		https://images.adsttc.com/media/images/5ba1/bbfd/f197/cc1b/4800/00b8/medium_jpg/PWBK3966.jpg?1537326071', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.27-PM2.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-06-at-2.24.47-PM1.jpeg', 1, '44876', '44899'),
(13, 10013, 0, '	\r\nKotwali    , Chittagong\r\n', 2018, 495, 2, 1, 3, 1, 8, 1, 0, 1, 1, 9738949, '		https://upload.wikimedia.org/wikipedia/commons/0/0f/Bangladesh_Bank_Building_rear_view.jpg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.28-PM1.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-06-at-2.24.43-PM.jpeg', 1, '44876', '44899'),
(14, 10014, 0, 'Khulshi   , Chittagong	', 2011, 645, 2, 1, 3, 0, 12, 1, 1, 0, 1, 8068380, '		http://www.akritybd.com/images/Residential/Amin%20Nibash,%20Adalot%20Para%20Tangail.jpg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.28-PM.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-06-at-2.24.40-PM1.jpeg', 1, '44876', '44899'),
(15, 10015, 0, '	Chandgaon  , Chittagong', 2003, 151, 1, 2, 1, 1, 8, 1, 1, 1, 0, 1902921, '		http://www.akritybd.com/images/Residential/Architectural%20Palace,%20Dhaka%20Asset%20Ltd.%20At%20Uttara,%20Dhaka.jpg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.29-PM.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-06-at-2.24.46-PM.jpeg', 1, '44876', '44899'),
(16, 10016, 0, '\r\nPanchlaish , Chittagong	', 2008, 162, 2, 5, 1, 0, 7, 1, 0, 1, 0, 4255851, '		http://www.akritybd.com/images/Residential/ArzuTower,%20Bilcon%20Properties%20at%20Indira%20Road%20Dhaka%20(2).jpg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.31-PM1.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.30-PM.jpeg', 0, '44876', '44899'),
(17, 10017, 0, 'Pahartali  , Chittagong	', 2005, 139, 2, 4, 1, 0, 12, 1, 0, 0, 0, 1960059, '		http://www.akritybd.com/images/Residential/Bashundhara%20House%20Imperial%20Real%20Estate%20at%20%20Plot-Block-B,%20Bashundhara,%20Dhaka.jpg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.27-PM1-1.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.32-PM.jpeg', 1, '44876', '44899'),
(18, 10018, 0, '\r\nBakalia  , Chittagong	', 2001, 742, 1, 5, 1, 1, 3, 1, 1, 0, 0, 119618, '		http://www.akritybd.com/images/Residential/Canada%20House%20at%20Uttara-%2010,%20Dhaka.jpg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.30-PM1-1.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.24-PM.jpeg', 0, '44876', '44899'),
(19, 10019, 0, 'Bayejid, Chittagong	', 2009, 145, 2, 5, 2, 1, 4, 1, 1, 0, 1, 8580942, '		http://www.akritybd.com/images/Residential/Cordial%20Charuta,%20Cordial%20Properties%20Ltd.%20at%20Sector-14,%20Uttara,%20Dhaka..jpg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.23-PM.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.25-PM2.jpeg', 1, '44876', '44899'),
(20, 10020, 1, '	Halishahar , Chittagong', 2008, 928, 1, 1, 1, 0, 9, 1, 1, 1, 1, 4595034, '		http://www.akritybd.com/images/Residential/Cordial%20Gulnahar,%20Cordial%20Properties%20Ltd.%20at%20Lichu%20Bagan%20Road,%20Gulshan%20Baridhara,%20Dhaka.jpg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-06-at-2.24.47-PM1.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.27-PM2.jpeg', 1, '44876', '44899'),
(21, 10021, 0, ' Agrabad , Chittagong	', 2011, 873, 2, 2, 2, 0, 1, 1, 1, 1, 1, 273507, '		http://www.akritybd.com/images/Residential/Cordial%20Protik,%20Cordial%20Properties%20Ltd.%20at%20Lichu%20Bagan,%20DOHS%20Baridhara,%20Dhaka.jpg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-06-at-2.24.43-PM.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.28-PM1.jpeg', 1, '44876', '44899'),
(22, 10022, 1, ' Bahaddarhat , Chittagong	', 2021, 630, 2, 3, 1, 0, 3, 1, 1, 0, 1, 2667738, '		http://www.akritybd.com/images/Residential/Cordial%20Samela,%20Cordial%20Properties%20Ltd.%20at%20Plot%20No-P-1,%20South%20Badda,%20Dhaka.jpg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-06-at-2.24.40-PM1.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.28-PM.jpeg', 0, '44876', '44899'),
(23, 10023, 0, ' Muradpur, Chittagong	', 2014, 499, 2, 1, 1, 1, 7, 1, 1, 1, 1, 8388780, '		http://www.akritybd.com/images/Residential/Far%20SL%20Dream,%20Far%20Holdings%20Ltd.%20%20Noorer%20Chala,%20Baridhara,%20Dhaka..jpg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-06-at-2.24.46-PM.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.29-PM.jpeg', 1, '44876', '44899'),
(24, 10024, 0, '	GEC , Chittagong', 2010, 857, 2, 4, 1, 1, 2, 1, 0, 0, 0, 5642637, '		http://www.akritybd.com/images/Residential/Grace%20Haque,%20Grace%20Holdings%20Ltd%20at%20Modhubazar%20Road,%20Dhanmondi,%20%20Dhaka.jpg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.30-PM.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.31-PM1.jpeg', 1, '44876', '44899'),
(25, 10025, 1, '		2No gate , Chittagong', 2001, 73, 2, 5, 2, 0, 2, 1, 1, 1, 0, 6884692, '		http://www.akritybd.com/images/Residential/Honey%20Life,%20Dhaka%20Asset%20Ltd.%20at%20Uttara,%20Dhaka.jpg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.32-PM.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.27-PM1-1.jpeg', 1, '44876', '44899'),
(26, 10026, 1, '	Lalkhan bazer, Chittagong	', 2002, 353, 2, 2, 2, 0, 7, 1, 1, 1, 1, 5874672, '		http://www.akritybd.com/images/Residential/Hosneara%20Villa,%20Basundhara%20RA,%20Dhaka.jpg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.24-PM.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.30-PM1-1.jpeg', 1, '44876', '44899'),
(27, 10027, 2, '	Patenga, Chittagong', 2011, 994, 1, 3, 1, 1, 3, 1, 1, 1, 0, 6318476, '		http://www.akritybd.com/images/Residential/Ikon%20Village,%20Ikon%20Holdings%20Ltd.%20at%20Kawlar%20Bazar,%20Khilgao,%20Dhaka%20(2).jpg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.25-PM2.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.23-PM.jpeg', 0, '44876', '44899'),
(28, 10028, 1, '		Agrabad CDA , Chittagong', 2012, 803, 1, 5, 2, 0, 6, 1, 1, 0, 1, 4073675, '		http://www.akritybd.com/images/Residential/King%20Palace,%20Bilcon%20Properties%20%20%20at%20West%20Dhanmondi%20Dhaka%20N.jpg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.25-PM.jpeg', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.27-PM2.jpeg', 0, '44876', '44899'),
(29, 10029, 2, '		New Market , Chittagong', 2011, 812, 2, 4, 2, 0, 8, 1, 0, 1, 1, 5152207, '		http://www.akritybd.com/images/Residential/Mam%20Garden,%20Fastbuild%20Limited%20at%20Mohammadpur,%20Dhaka..jpg', '	https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.28-PM1.jpeg	', '		https://s3.ap-southeast-1.amazonaws.com/rents.com.bd/wp-content/uploads/2022/11/WhatsApp-Image-2022-11-05-at-5.41.28-PM1.jpeg', 0, '44876', '44899');

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
  `saved_id` int(11) UNSIGNED NOT NULL,
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
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

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
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `savedId` (`saved_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
