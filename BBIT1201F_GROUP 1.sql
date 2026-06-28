-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 28, 2026 at 07:22 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `market_stall_allocation_system`
--
CREATE DATABASE IF NOT EXISTS `market_stall_allocation_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `market_stall_allocation_system`;

-- --------------------------------------------------------

--
-- Table structure for table `allocations`
--
-- Creation: Jun 04, 2026 at 12:38 PM
--

DROP TABLE IF EXISTS `allocations`;
CREATE TABLE IF NOT EXISTS `allocations` (
  `allocation_id` int(11) NOT NULL AUTO_INCREMENT,
  `trader_id` int(11) DEFAULT NULL,
  `stall_id` int(11) DEFAULT NULL,
  `allocation_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `allocation_status` varchar(20) DEFAULT 'Active',
  PRIMARY KEY (`allocation_id`),
  KEY `trader_id` (`trader_id`),
  KEY `stall_id` (`stall_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `allocations`
--

INSERT INTO `allocations` (`allocation_id`, `trader_id`, `stall_id`, `allocation_date`, `expiry_date`, `allocation_status`) VALUES
(1, 1, 2, '2026-01-10', '2026-12-31', 'Active'),
(2, 2, 4, '2026-02-01', '2026-11-30', 'Active'),
(3, 3, 1, '2026-03-05', '2026-09-30', 'Pending'),
(29, 1, 2, '2026-01-01', '2026-12-31', 'Active'),
(30, 2, 4, '2026-01-03', '2026-12-31', 'Active'),
(31, 3, 5, '2026-01-05', '2026-12-31', 'Active'),
(32, 4, 7, '2026-01-08', '2026-12-31', 'Active'),
(33, 6, 9, '2026-01-10', '2026-12-31', 'Active'),
(34, 7, 10, '2026-01-12', '2026-12-31', 'Active'),
(35, 8, 13, '2026-01-15', '2026-12-31', 'Active'),
(36, 9, 14, '2026-01-18', '2026-12-31', 'Active'),
(37, 10, 17, '2026-01-20', '2026-12-31', 'Active'),
(38, 11, 18, '2026-01-22', '2026-12-31', 'Active'),
(39, 12, 21, '2026-01-25', '2026-12-31', 'Active'),
(40, 13, 22, '2026-01-27', '2026-12-31', 'Active'),
(41, 14, 1, '2026-02-01', '2026-12-31', 'Inactive'),
(42, 15, 3, '2026-02-03', '2026-12-31', 'Inactive'),
(43, 16, 6, '2026-02-05', '2026-12-31', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `market`
--
-- Creation: Jun 04, 2026 at 03:25 PM
--

DROP TABLE IF EXISTS `market`;
CREATE TABLE IF NOT EXISTS `market` (
  `market_id` int(11) NOT NULL AUTO_INCREMENT,
  `market_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  PRIMARY KEY (`market_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `market`
--

INSERT INTO `market` (`market_id`, `market_name`, `location`) VALUES
(1, 'Big Market', 'Freetown'),
(2, 'Lumley Market', 'Lumley'),
(3, 'Congo Market', 'Central Freetown'),
(4, 'Big Market', 'Freetown'),
(5, 'Lumley Market', 'Lumley'),
(6, 'Kissy Market', 'Kissy'),
(7, 'Allen Town Market', 'Allen Town'),
(8, 'Calaba Market', 'Calaba Town');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--
-- Creation: May 29, 2026 at 04:20 AM
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `registration_id` int(11) NOT NULL AUTO_INCREMENT,
  `allocation_id` int(11) DEFAULT NULL,
  `registration_date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(20) DEFAULT 'Paid',
  PRIMARY KEY (`registration_id`),
  KEY `allocation_id` (`allocation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`registration_id`, `allocation_id`, `registration_date`, `amount`, `status`) VALUES
(1, 1, '2026-01-10', 1500.00, 'Paid'),
(2, 2, '2026-02-01', 2000.00, 'Paid'),
(3, 3, '2026-03-05', 1000.00, 'Pending'),
(34, 1, '2026-01-01', 500.00, 'Paid'),
(35, 2, '2026-01-03', 600.00, 'Paid'),
(36, 3, '2026-01-05', 750.00, 'Pending'),
(37, 29, '2026-01-08', 550.00, 'Paid'),
(38, 30, '2026-01-10', 800.00, 'Paid'),
(39, 31, '2026-01-12', 650.00, 'Paid'),
(40, 32, '2026-01-15', 700.00, 'Paid'),
(41, 33, '2026-01-18', 600.00, 'Paid'),
(42, 34, '2026-01-20', 900.00, 'Paid'),
(43, 35, '2026-01-22', 850.00, 'Paid'),
(44, 36, '2026-01-25', 700.00, 'Paid'),
(45, 37, '2026-01-27', 650.00, 'Paid'),
(46, 38, '2026-02-01', 500.00, 'Pending'),
(47, 39, '2026-02-03', 450.00, 'Pending'),
(48, 40, '2026-02-05', 550.00, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `stall`
--
-- Creation: May 29, 2026 at 04:19 AM
--

DROP TABLE IF EXISTS `stall`;
CREATE TABLE IF NOT EXISTS `stall` (
  `stall_id` int(11) NOT NULL AUTO_INCREMENT,
  `stall_number` varchar(20) NOT NULL,
  `stall_size` varchar(20) NOT NULL,
  `stall_status` varchar(20) DEFAULT 'Available',
  `location_description` varchar(150) DEFAULT NULL,
  `market_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`stall_id`),
  KEY `market_id` (`market_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stall`
--

INSERT INTO `stall` (`stall_id`, `stall_number`, `stall_size`, `stall_status`, `location_description`, `market_id`) VALUES
(1, 'A101', 'Small', 'Available', 'Near Main Entrance', 1),
(2, 'B205', 'Medium', 'Occupied', 'Second Floor', 1),
(3, 'C310', 'Large', 'Available', 'West Wing', 2),
(4, 'D115', 'Medium', 'Occupied', 'Food Section', 3),
(5, 'A001', 'Large', 'Occupied', NULL, 1),
(6, 'A002', 'Medium', 'Available', NULL, 1),
(7, 'A003', 'Small', 'Occupied', NULL, 1),
(8, 'A004', 'Medium', 'Available', NULL, 1),
(9, 'B001', 'Large', 'Occupied', NULL, 2),
(10, 'B002', 'Medium', 'Occupied', NULL, 2),
(11, 'B003', 'Small', 'Available', NULL, 2),
(12, 'B004', 'Large', 'Available', NULL, 2),
(13, 'C001', 'Medium', 'Occupied', NULL, 3),
(14, 'C002', 'Small', 'Occupied', NULL, 3),
(15, 'C003', 'Large', 'Available', NULL, 3),
(16, 'C004', 'Medium', 'Available', NULL, 3),
(17, 'D001', 'Large', 'Occupied', NULL, 4),
(18, 'D002', 'Medium', 'Occupied', NULL, 4),
(19, 'D003', 'Small', 'Available', NULL, 4),
(20, 'D004', 'Large', 'Available', NULL, 4),
(21, 'E001', 'Medium', 'Occupied', NULL, 5),
(22, 'E002', 'Small', 'Occupied', NULL, 5),
(23, 'E003', 'Large', 'Available', NULL, 5),
(24, 'E004', 'Medium', 'Available', NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `trader`
--
-- Creation: Jun 27, 2026 at 07:29 PM
--

DROP TABLE IF EXISTS `trader`;
CREATE TABLE IF NOT EXISTS `trader` (
  `trader_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `adress` varchar(50) DEFAULT NULL,
  `business_type` varchar(100) NOT NULL,
  PRIMARY KEY (`trader_id`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trader`
--

INSERT INTO `trader` (`trader_id`, `full_name`, `gender`, `phone_number`, `adress`, `business_type`) VALUES
(1, 'Samuel Tucker', 'Male', '073782211', 'Freetown', 'Fashion'),
(2, 'Aminata Kamara', 'Female', '09900000', 'Lumley', 'Food Vendor'),
(3, 'Mohamed Sesay', 'Male', '+23276000222', 'Congo Cross', 'Electronics'),
(4, 'Fatmata Bangura', 'Female', '+23276000333', 'Wilkinson Road', 'Cosmetics'),
(6, 'John Kamra', 'Male', '+23278084553', '22 lewis stret', 'Fish'),
(7, 'Abdul Kamara', 'Male', '076123456', 'Kroo Bay', 'Foodstuff'),
(8, 'Mariama Conteh', 'Female', '078234567', 'Lumley', 'Clothing'),
(9, 'Alusine Sesay', 'Male', '079345678', 'Waterloo', 'Electronics'),
(10, 'Hawa Bangura', 'Female', '077456789', 'Calaba Town', 'Vegetables'),
(11, 'Mohamed Koroma', 'Male', '088567890', 'Wellington', 'Mobile Accessories'),
(12, 'Kadiatu Turay', 'Female', '076678901', 'Allen Town', 'Cosmetics'),
(13, 'Ibrahim Kanu', 'Male', '078789012', 'Congo Cross', 'Shoes'),
(14, 'Fatmata Jalloh', 'Female', '079890123', 'Murray Town', 'Foodstuff'),
(15, 'Sorie Kamara', 'Male', '077901234', 'Kissy', 'Building Materials'),
(16, 'Adama Sesay', 'Female', '088012345', 'Goderich', 'Tailoring'),
(17, 'Musa Conteh', 'Male', '076111222', 'Wilkinson Road', 'Electronics'),
(18, 'Aminata Koroma', 'Female', '078222333', 'Jui', 'Hair Products'),
(19, 'Abubakarr Bangura', 'Male', '079333444', 'Hill Station', 'Stationery'),
(20, 'Rugiatu Kamara', 'Female', '077444555', 'Lumley', 'Fruit Seller'),
(21, 'Sahr Kallon', 'Male', '088555666', 'Kissy Dockyard', 'Phone Repair'),
(22, 'Mabinty Sesay', 'Female', '076666777', 'Cline Town', 'Cosmetics'),
(23, 'Joseph Turay', 'Male', '078777888', 'Allen Town', 'Furniture'),
(24, 'Isatu Kamara', 'Female', '079888999', 'Calaba Town', 'Clothing'),
(25, 'Abdulai Kanu', 'Male', '077999000', 'Waterloo', 'Hardware'),
(26, 'Ramatu Koroma', 'Female', '088000111', 'Wellington', 'Vegetables'),
(27, 'Alpha Bah', 'Male', '076112233', 'Mile 91', 'Electronics'),
(28, 'Jeneba Conteh', 'Female', '078223344', 'Makeni', 'Foodstuff'),
(29, 'Momoh Sesay', 'Male', '079334455', 'Bo', 'Shoes'),
(30, 'Bintu Kamara', 'Female', '077445566', 'Kenema', 'Cosmetics'),
(31, 'Abass Bangura', 'Male', '088556677', 'Port Loko', 'Tailoring'),
(32, 'Hindolo Kanu', 'Male', '076667788', 'Kabala', 'Phone Accessories'),
(33, 'Zainab Koroma', 'Female', '078778899', 'Magburaka', 'Clothing'),
(34, 'Sia Conteh', 'Female', '079889900', 'Moyamba', 'Vegetables'),
(35, 'Komba Turay', 'Male', '077990011', 'Lunsar', 'Building Materials'),
(36, 'Aisha Sesay', 'Female', '088101112', 'Freetown', 'Foodstuff'),
(37, 'Hawa S Bangura', 'Female', '099238933', '23 New England', 'Fish Trader');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `allocations`
--
ALTER TABLE `allocations`
  ADD CONSTRAINT `allocations_ibfk_1` FOREIGN KEY (`trader_id`) REFERENCES `trader` (`trader_id`),
  ADD CONSTRAINT `allocations_ibfk_2` FOREIGN KEY (`stall_id`) REFERENCES `stall` (`stall_id`);

--
-- Constraints for table `registration`
--
ALTER TABLE `registration`
  ADD CONSTRAINT `registration_ibfk_1` FOREIGN KEY (`allocation_id`) REFERENCES `allocations` (`allocation_id`);

--
-- Constraints for table `stall`
--
ALTER TABLE `stall`
  ADD CONSTRAINT `stall_ibfk_1` FOREIGN KEY (`market_id`) REFERENCES `market` (`market_id`);


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table allocations
--

--
-- Metadata for table market
--

--
-- Metadata for table registration
--

--
-- Metadata for table stall
--

--
-- Metadata for table trader
--

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'market_stall_allocation_system', 'trader', '{\"CREATE_TIME\":\"2026-05-30 19:31:54\"}', '2026-05-30 20:39:14');

--
-- Metadata for database market_stall_allocation_system
--
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
