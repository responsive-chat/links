-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 09, 2022 at 12:34 AM
-- Server version: 10.4.20-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `1144687`
--

-- --------------------------------------------------------

--
-- Table structure for table `MyCategories`
--

CREATE TABLE `MyCategories` (
  `CatID` bigint(21) NOT NULL,
  `CatName` varchar(32) NOT NULL,
  `CatParent` bigint(21) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `MyCategories`
--

INSERT INTO `MyCategories` (`CatID`, `CatName`, `CatParent`) VALUES
(1, 'გაცნობა', NULL),
(2, 'ფილმები', NULL),
(3, 'კაზინოები', NULL),
(4, 'ვიდეო', NULL),
(5, 'მუსიკა', NULL),
(6, 'საძიებო', NULL),
(7, 'დასაქმება', NULL),
(8, 'მაღაზიები', NULL),
(9, 'სურათები', NULL),
(10, 'მასმედია', NULL),
(11, 'რელიგია', NULL),
(12, '+18 საიტები', NULL),
(13, 'მეცნიერება', NULL),
(14, 'კომპანიები', NULL),
(15, 'ფორუმი', NULL),
(16, 'სერვისები', NULL),
(17, 'ბანკები', NULL),
(18, 'განათლება', NULL),
(19, 'მედიცინა', NULL),
(20, 'ბლოგები', NULL),
(21, 'სპორტი', NULL),
(22, 'ინტერნეტი', NULL),
(23, 'კომპიუტერები', NULL),
(24, 'პოლიტიკა', NULL),
(25, 'კულტურა', NULL),
(26, 'თამაშები', NULL),
(27, 'პროგრამები', NULL),
(28, 'ბავშვები', NULL),
(29, 'ავტომობილები', NULL),
(30, 'გასართობი', NULL),
(31, 'კულინარია', NULL),
(32, 'ცხოველები', NULL),
(33, 'ჰოროსკოპი', NULL),
(34, 'წიგნები', NULL),
(35, 'ამინდი', NULL),
(36, 'ლექსიკონი', NULL),
(37, 'ტანსაცმელი', NULL),
(38, 'მოგზაურობა', NULL),
(39, 'ცნობარი', NULL),
(40, 'ნადირობა', NULL),
(41, 'სხვადასხვა', NULL),
(42, 'სმარტფონები', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `MyLinks`
--

CREATE TABLE `MyLinks` (
  `LinkID` bigint(21) NOT NULL,
  `CatID` bigint(21) NOT NULL,
  `Url` varchar(255) NOT NULL,
  `LinkName` varchar(64) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Approved` tinyint(8) DEFAULT 0,
  `SubmitName` varchar(64) NOT NULL,
  `SubmitEmail` varchar(64) NOT NULL,
  `SubmitDate` bigint(21) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `MyCategories`
--
ALTER TABLE `MyCategories`
  ADD PRIMARY KEY (`CatID`),
  ADD UNIQUE KEY `CatName` (`CatName`);

--
-- Indexes for table `MyLinks`
--
ALTER TABLE `MyLinks`
  ADD PRIMARY KEY (`LinkID`),
  ADD UNIQUE KEY `Url` (`Url`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `MyCategories`
--
ALTER TABLE `MyCategories`
  MODIFY `CatID` bigint(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `MyLinks`
--
ALTER TABLE `MyLinks`
  MODIFY `LinkID` bigint(21) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
