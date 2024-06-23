-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 11, 2023 at 08:09 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railway_info_sys`
--

-- --------------------------------------------------------

--
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
CREATE TABLE IF NOT EXISTS `coach` (
  `coach_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `schedule_id` int DEFAULT NULL,
  `job_id` int NOT NULL,
  PRIMARY KEY (`coach_id`),
  KEY `schedule_id` (`schedule_id`),
  KEY `job_id` (`job_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `coach`
--

INSERT INTO `coach` (`coach_id`, `first_name`, `last_name`, `schedule_id`, `job_id`) VALUES
(1, 'john', 'kaminga', 2, 5),
(2, 'ricky', 'dave', 1, 5),
(3, 'rigobert', 'josh', 4, 5),
(4, 'gerald', 'peter', 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone_no` int NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `SSN` int NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `job_id` int DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'NOT NULL',
  PRIMARY KEY (`employee_id`),
  KEY `job_id` (`job_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `first_name`, `last_name`, `phone_no`, `address`, `date_of_birth`, `SSN`, `email`, `city`, `job_id`, `gender`) VALUES
(1, 'sasha', 'maeve', 2564574, 'dalington street', '1963-10-20', 784, 'que@gmailcom', 'ohio', 2, 'female'),
(2, 'gwen', 'gwei', 45477454, 'cite verte', '1992-02-06', 546, '', 'douala', 8, 'female'),
(3, 'calid', 'khal', 4789562, 'hillhigh street', '1975-06-20', 545, 'bew@gmailcom', 'beverlyhill', 1, 'male'),
(4, 'caleb', 'antoine', 1254789, 'hallway street', '1985-05-12', 778, 'ash@gmailcom', 'orgen', 4, 'male'),
(5, 'nadesh', 'wiley', 548966, 'queens street', '1988-12-12', 565, 'wal@gmailcom', 'quatemala', 3, 'female'),
(6, 'rosine', 'bouda', 45122145, 'toiture rouge', '1989-12-11', 112, '', 'douala', 7, 'female'),
(7, 'eleonore', 'tchang', 745445, 'rond point', '1973-11-25', 331, '', 'nkong', 6, 'female');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
CREATE TABLE IF NOT EXISTS `job` (
  `job_id` int NOT NULL AUTO_INCREMENT,
  `job_title` varchar(50) NOT NULL,
  `hired_date` date NOT NULL,
  `salary` int NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`job_id`, `job_title`, `hired_date`, `salary`) VALUES
(1, 'ticket controler', '2012-10-12', 70000),
(2, 'cashier', '2018-01-20', 80000),
(3, 'head office', '2010-05-02', 350000),
(4, 'station agent', '2015-08-15', 75000),
(5, 'coach', '2010-11-30', 85000),
(6, 'station mistress', '2001-06-25', 500000),
(7, 'accountant', '2005-10-05', 250000),
(8, 'receptionist', '2010-01-15', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
CREATE TABLE IF NOT EXISTS `passenger` (
  `passenger_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'NOT NULL',
  `phone_no` int NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  PRIMARY KEY (`passenger_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`passenger_id`, `first_name`, `last_name`, `gender`, `address`, `phone_no`, `date_of_birth`) VALUES
(1, 'will', 'djoukan', 'male', 'downtown', 1245879, '1996-02-06'),
(2, 'alanis', 'tchinda', 'female', 'uptown hehe', 8963523, '2000-05-21'),
(3, 'kopel', 'djonkou', 'male', 'ohio', 4512639, '1994-02-06'),
(4, 'corine', 'kengmo', 'female', 'utagae', 7856412, '1991-06-10'),
(6, 'pope', 'chambelain', 'male', 'quatemala', 5478963, '1965-02-25'),
(7, 'jery', 'elliot', 'male', 'spring street', 4574896, '1996-02-18'),
(8, 'quavo', 'bale', 'male', 'beverlyhill', 4789563, '2000-01-22'),
(9, 'riley', 'denovan', 'female', 'orgen', 4523698, '1998-12-25'),
(11, 'steve', 'djoukan', 'male', 'ortakoy', 4577841, '1996-10-06'),
(14, 'lavaldhiny', 'zara', 'male', 'ohoo', 4511241, '2005-12-26'),
(15, 'patricia', 'tchinda', 'female', 'nkong', 7844515, '1963-05-22'),
(16, 'calota', 'kagho', 'female', 'douala', 45445454, '1998-06-10'),
(17, 'felixa', 'tchinda', 'female', 'yaounde', 41124152, '2001-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `reservation_no` int NOT NULL AUTO_INCREMENT,
  `res_date` timestamp NOT NULL,
  `passenger_id` int DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `SRC` varchar(20) NOT NULL,
  `DST` varchar(20) DEFAULT NULL,
  `dep_time` time NOT NULL,
  `arr_time` time NOT NULL,
  `seat_no` int NOT NULL,
  `class` varchar(50) DEFAULT NULL,
  `train_no` int DEFAULT NULL,
  `station_id` int NOT NULL,
  PRIMARY KEY (`reservation_no`),
  KEY `passenger_id` (`passenger_id`),
  KEY `train_no` (`train_no`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservation_no`, `res_date`, `passenger_id`, `status`, `SRC`, `DST`, `dep_time`, `arr_time`, `seat_no`, `class`, `train_no`, `station_id`) VALUES
(1, '2023-01-11 16:55:49', 2, 'approved', 'ohio', 'downtown', '12:00:00', '13:30:00', 1, 'EC', 25, 2001),
(2, '2023-01-11 16:55:49', 4, 'approved', 'ohio', 'downtown', '12:00:00', '13:30:00', 2, '1AC', 25, 2125),
(3, '2023-01-11 16:55:49', 3, 'approved', 'downtown', 'ohio', '12:00:00', '13:30:00', 3, 'FC', 25, 2125),
(4, '2023-01-11 16:55:49', 6, 'approved', 'lavalte hills', 'downtown', '12:00:00', '13:30:00', 4, 'EC', 25, 2114),
(5, '2023-01-11 16:55:49', 5, 'cancel', 'beverlyhill', 'ohio', '14:00:00', '15:30:00', 1, 'FC', 52, 2101),
(6, '2023-01-10 18:30:00', 17, 'approved', 'Nkong', 'yaounde', '21:00:00', '03:00:00', 15, '2AC', 26, 2101),
(7, '2023-01-10 18:35:00', 14, 'approved', 'douala', 'yaounde', '21:00:00', '24:00:00', 20, 'FC', 52, 2125),
(8, '2023-01-10 18:40:00', 12, 'approved', 'Nkong', 'douala', '21:00:00', '23:00:00', 10, 'FC', 26, 2101),
(9, '2023-01-10 18:45:00', 15, 'approved', 'buea', 'limbe', '21:00:00', '21:45:00', 14, '1AC', 25, 2101),
(10, '2023-01-10 18:50:00', 16, 'approved', 'Ngoa', 'bare', '21:00:00', '22:30:00', 9, 'EC', 27, 2101),
(11, '2023-01-10 18:55:00', 10, 'approved', 'loum', 'mbanga', '21:00:00', '22:00:00', 7, 'FC', 26, 2101);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
CREATE TABLE IF NOT EXISTS `schedule` (
  `schedule_id` int NOT NULL AUTO_INCREMENT,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  `coach_id` int DEFAULT NULL,
  `reservation_id` int DEFAULT NULL,
  `ticket_no` int DEFAULT NULL,
  `train_no` int DEFAULT NULL,
  `station_id` int DEFAULT NULL,
  PRIMARY KEY (`schedule_id`),
  KEY `coach_id` (`coach_id`),
  KEY `reservation_id` (`reservation_id`),
  KEY `ticket_no` (`ticket_no`),
  KEY `train_no` (`train_no`),
  KEY `station_id` (`station_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`schedule_id`, `time_in`, `time_out`, `coach_id`, `reservation_id`, `ticket_no`, `train_no`, `station_id`) VALUES
(1, '15:50:00', '16:00:00', 3, 5, 1001, 25, 2),
(2, '13:30:00', '12:00:00', 1, 2, 1005, 26, 3),
(3, '15:30:00', '14:00:00', 1, 1, 1003, 52, 3),
(4, '15:50:00', '14:50:00', 3, 3, 1004, 25, 1),
(5, '13:30:00', '12:00:00', 3, 4, 1002, 25, 2);

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
CREATE TABLE IF NOT EXISTS `station` (
  `station_id` int NOT NULL,
  `station_name` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `schedule_id` int DEFAULT NULL,
  PRIMARY KEY (`station_id`),
  KEY `schedule_id` (`schedule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`station_id`, `station_name`, `city`, `schedule_id`) VALUES
(2001, 'Westbrone', 'ohio', 5),
(2101, 'Bronx', 'downtown', 1),
(2114, 'Trinity', 'beverlyhill', 2),
(2120, 'Dracant', 'treyo', 3),
(2125, 'downside', 'califort', 5),
(2126, 'Stark', 'downtown', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
CREATE TABLE IF NOT EXISTS `ticket` (
  `ticket_no` int NOT NULL AUTO_INCREMENT,
  `t_date` datetime NOT NULL,
  `dep_time` time NOT NULL,
  `arr_time` time NOT NULL,
  `class` varchar(50) NOT NULL,
  `station_id` int DEFAULT NULL,
  `seat_no` int NOT NULL,
  `SRC` varchar(50) NOT NULL,
  `DST` varchar(50) DEFAULT NULL,
  `passenger_id` int DEFAULT NULL,
  `train_no` int DEFAULT NULL,
  PRIMARY KEY (`ticket_no`),
  KEY `station_id` (`station_id`),
  KEY `passenger_id` (`passenger_id`),
  KEY `train_no` (`train_no`)
) ENGINE=MyISAM AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_no`, `t_date`, `dep_time`, `arr_time`, `class`, `station_id`, `seat_no`, `SRC`, `DST`, `passenger_id`, `train_no`) VALUES
(1001, '2023-01-11 14:00:00', '14:50:00', '15:50:48', 'EC', 2001, 8, 'oweho', 'ohio', 8, 26),
(1002, '2023-01-11 14:05:00', '14:50:00', '16:20:00', 'EC', 2120, 9, 'treyo', 'califort', 7, 25),
(1003, '2023-01-11 14:30:00', '14:50:00', '15:30:00', '2AC', 2101, 7, 'tradot', 'downtown', 1, 25),
(1004, '2023-01-11 14:40:00', '14:50:00', '16:20:00', 'FC', 2125, 1, 'treyo', 'yaounde', 9, 25),
(1005, '2023-01-11 14:40:00', '16:50:00', '17:20:00', 'FC', 2120, 6, 'queens', 'douala', 10, 26);

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

DROP TABLE IF EXISTS `train`;
CREATE TABLE IF NOT EXISTS `train` (
  `train_no` int NOT NULL,
  `available_seat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `schedule_id` int DEFAULT NULL,
  PRIMARY KEY (`train_no`),
  KEY `schedule_id` (`schedule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`train_no`, `available_seat`, `schedule_id`) VALUES
(25, '5', 1),
(52, '2', 3),
(26, '0', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
