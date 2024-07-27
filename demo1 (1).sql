-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2024 at 09:02 AM
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
-- Database: `demo1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `aname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `apassword` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `aname`, `email`, `apassword`) VALUES
(1, 'tejaswini', 'tejaswini@gmail.com', 'teju'),
(2, 'vaishnavi', 'vaishnavi@gmail.com', 'vaishnavi');

-- --------------------------------------------------------

--
-- Stand-in structure for view `name`
-- (See below for the actual view)
--
CREATE TABLE `name` (
`scode` varchar(12)
,`sname` varchar(100)
,`sem` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `scode` varchar(100) NOT NULL,
  `filename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `sem`, `scode`, `filename`) VALUES
(1, 2, '18MAT21', '18MAT21_notes.pdf'),
(3, 1, '18PHY12', '18PHY12_notes.pdf'),
(4, 1, '18ELE13', '18ELE13_notes.pdf'),
(5, 2, '18CHE22', '18CHE22_notes.pdf'),
(6, 2, '18CPS23', '18CPS23_notes.pdf'),
(7, 3, '18MAT31', '18MAT31_notes.pdf'),
(8, 3, '18CS32', '18CS32_notes.pdf'),
(13, 4, '18MAT41', '18MAT41_notes.pdf'),
(14, 4, '18CS42', '18CS42_notes.pdf'),
(15, 4, '18CS43', '18CS43_notes.pdf'),
(16, 5, '18CS51', '18CS51_notes.pdf'),
(17, 5, '18CS52', '18CS52_notes.pdf'),
(18, 5, '18CS53', '18CS53_notes.pdf'),
(19, 6, '18CS61', '18CS61_notes.pdf'),
(20, 6, '18CS62', '18CS62_notes.pdf'),
(31, 1, '18MAT11', '18MAT11_notes.pdf'),
(32, 6, '18CS63', '18CS63_notes.pdf'),
(33, 7, '18CS71', '18CS71_notes.pdf'),
(34, 7, '18CS72', '18CS72_notes.pdf'),
(35, 7, '18CS73', '18CS73_notes.pdf'),
(36, 8, '18CS81', '18CS81_notes.pdf'),
(37, 8, '18CS82', '18CS82_notes.pdf'),
(41, 3, '18CS33', '18CS33_notes .pdf'),
(43, 8, '18CS83', '18CS83_notes.pdf'),
(44, 21, 'INSERTED', '2024-02-26 21:44:58');

-- --------------------------------------------------------

--
-- Table structure for table `pdf_data`
--

CREATE TABLE `pdf_data` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `filename` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pdf_data`
--

INSERT INTO `pdf_data` (`id`, `username`, `filename`) VALUES
(1, 'lav', 'chai final.pdf'),
(2, 'Lavanya G', 'chai final.pdf'),
(3, 'Lavanya G', 'chai final.pdf'),
(4, 'Lavanya G', 'chai final.pdf'),
(6, 'manoj', 'rpprt sen.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `qp`
--

CREATE TABLE `qp` (
  `scode` varchar(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `filename` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qp`
--

INSERT INTO `qp` (`scode`, `sem`, `filename`) VALUES
('18CHE22', 2, '18CHE22_qp.pdf'),
('18CPS23', 2, '18CPS_qp.pdf'),
('18CS32', 3, '18CS32_qp.pdf'),
('18CS33', 3, '18CS33_qp.pdf'),
('18CS42', 4, '18CS42_qp.pdf'),
('18CS43', 4, '18CS43_qp.pdf'),
('18CS51', 5, '18CS51_qp.pdf'),
('18CS52', 5, '18CS52_qp.pdf'),
('18CS53', 5, '18CS53_qp.pdf'),
('18CS61', 6, '18CS61_qp.pdf'),
('18CS62', 6, '18CS62_qp.pdf'),
('18CS63', 6, '18CS63_qp.pdf'),
('18CS71', 7, '18CS73_qp.pdf'),
('18CS72', 7, '18CS72_qp.pdf'),
('18CS73', 7, '18CS73_qp.pdf'),
('18CS81', 8, '18CS82_qp.pdf'),
('18CS82', 8, '18CS82_qp.pdf'),
('18CS83', 8, '18CS83_qp.pdf'),
('18ELE13', 1, '18ELE13_qp.pdf'),
('18MAT11', 1, '18MAT11_qp.pdf'),
('18MAT21', 2, '18MAT21_qp.pdf'),
('18MAT31', 3, '18MAT31_qp.pdf'),
('18MAT41', 4, '18MAT41_qp.pdf'),
('18PHY12', 1, '18PHY12_qp.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `scode` varchar(12) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `sem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`scode`, `sname`, `sem`) VALUES
('18CHE22', 'CHEMISTRY', 2),
('18CPS23', 'C PROGRAMMING FOR PROBLEM SOLVING', 2),
('18CS32', 'DS', 3),
('18CS33', 'ADE', 3),
('18CS42', 'DAA', 4),
('18CS43', 'OPERATING SYSTEMS', 4),
('18CS51', 'MEIT', 5),
('18CS52', 'CNS', 5),
('18CS53', 'DBMS', 5),
('18CS61', 'SYSTEM SOFTWARE AND COMPILERS', 6),
('18CS62', 'COMPUTER GRAPHICS AND VISUALIZATION', 6),
('18CS63', 'WEB TECHNOLOGY AND ITS APPLICATIONS', 6),
('18CS71', 'ARTIFICIAL INTELLIGENCE AND MACHINE LEARNING', 7),
('18CS72', 'BIG DATA AND ANALYTICS', 7),
('18CS73', 'SOFTWARE ARCHITECTURE AND DESIGN PATTERNS', 7),
('18CS81', 'INTERNET OF THINGS', 8),
('18CS82', 'MOBILE COMPUTING', 8),
('18CS83', 'NOSQL DATABASE', 8),
('18ELE13', 'ELECTRICAL', 1),
('18MAT11', 'MATHS', 1),
('18MAT21', 'MATHS', 2),
('18MAT31', 'MATHS', 3),
('18MAT41', 'MATHS', 4),
('18PHY12', 'PHYSICS', 1),
('21CS52', 'COMPUTER NETWORKS', 5),
('21CS54', 'RESEARCH METHADOLOGY', 5);

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE `syllabus` (
  `scode` varchar(20) NOT NULL,
  `semester` int(11) NOT NULL,
  `subjectname` varchar(100) NOT NULL,
  `filename` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`scode`, `semester`, `subjectname`, `filename`) VALUES
('18CHE22', 2, 'CHEMISTRY', '18CHE22_syl.pdf'),
('18CPS23', 2, 'C PROGRAMMING FOR PROBLEM SOLVING', '18CPS23_syl.pdf'),
('18CS32', 3, 'DS', '18CS32_syl.pdf'),
('18CS33', 3, 'ADE', '18CS33_syl.pdf'),
('18CS42', 4, 'DAA', '18CS42_syl.pdf'),
('18CS43', 4, 'OPERATING SYSTEMS', '18CS43_syl.pdf'),
('18CS52', 5, 'CNS', '18CS52_syl.pdf'),
('18CS53', 5, 'DBMS', '18CS53_syl.pdf'),
('18CS61', 6, 'SYSTEM SOFTWARE AND COMPILERS', '18CS61_syl.pdf'),
('18CS62', 6, 'COMPUTER GRAPHICS AND VISUALIZATION', '18CS62_syl.pdf'),
('18CS63', 6, 'WEB TECHNOLOGY AND ITS APPLICATIONS', '18CS63_syl.pdf'),
('18CS71', 7, 'ARTIFICIAL INTELLIGENCE AND MACHINE LEARNING', '18CS71_syl.pdf'),
('18CS72', 7, 'BIG DATA AND ANALYTICS', '18CS72_syl.pdf'),
('18CS73', 7, 'SOFTWARE ARCHITECTURE AND DESIGN PATTERNS', '18CS73_syl.pdf'),
('18CS81', 8, 'INTERNET OF THINGS', '18CS81_syl.pdf'),
('18CS82', 8, 'MOBILE COMPUTING', '18CS82_syl.pdf'),
('18CS83', 8, 'NOSQL DATABASE', '18CS83_syl.pdf'),
('18ELE13', 1, 'ELECTRICAL', '18ELE13_syl.pdf'),
('18MAT11', 1, 'MATHS', '18MAT11_syl.pdf'),
('18MAT21', 2, 'MATHS', '18MAT21_syl.pdf'),
('18MAT31', 3, 'MATHS', '18MAT31_syl.pdf'),
('18MAT41', 4, 'MATHS', '18MAT41_syl.pdf'),
('18PHY12', 1, 'PHYSICS', '18PHY12_syl.pdf'),
('21CS52', 5, 'Computer networks', '21CS52_syl.pdf'),
('21CS54', 5, 'asd', '21CS54_syl');

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `uid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`uid`, `name`, `email`, `password`) VALUES
(1, 'lavanya', 'lavanyag938@gmail.com', 'lavanya'),
(2, 'udi', 'udi@cmrit.ac.in', 'udi'),
(3, 'Kavya', 'kavya@gmail.com', 'kavya'),
(4, 'manisha', 'manisha@gmail.com', 'manisha'),
(5, 'Tejaswini P', 'teju@12', 'teju'),
(6, 'mouni', 'mouni@gmail.com', 'mouni');

-- --------------------------------------------------------

--
-- Structure for view `name`
--
DROP TABLE IF EXISTS `name`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `name`  AS SELECT `subjects`.`scode` AS `scode`, `subjects`.`sname` AS `sname`, `subjects`.`sem` AS `sem` FROM `subjects` WHERE `subjects`.`sem` = 5 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scode` (`scode`);

--
-- Indexes for table `pdf_data`
--
ALTER TABLE `pdf_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qp`
--
ALTER TABLE `qp`
  ADD PRIMARY KEY (`scode`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`scode`);

--
-- Indexes for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`scode`);

--
-- Indexes for table `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `pdf_data`
--
ALTER TABLE `pdf_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `qp`
--
ALTER TABLE `qp`
  ADD CONSTRAINT `qp_fo` FOREIGN KEY (`scode`) REFERENCES `subjects` (`scode`) ON UPDATE CASCADE;

--
-- Constraints for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD CONSTRAINT `syllabus_ibfk_1` FOREIGN KEY (`scode`) REFERENCES `subjects` (`scode`) ON UPDATE CASCADE;
COMMIT;

create view semnotes as
select * from notes where sem=5;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
