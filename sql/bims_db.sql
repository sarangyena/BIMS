-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2024 at 07:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bims_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `educational`
--

CREATE TABLE `educational` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `ename` varchar(10) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `barangay` varchar(50) NOT NULL,
  `age` int(255) NOT NULL,
  `bday` date NOT NULL,
  `pnumber` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `school` varchar(100) NOT NULL,
  `educational` varchar(50) NOT NULL,
  `estatus` varchar(50) NOT NULL,
  `amount` decimal(65,0) NOT NULL,
  `precinct_num` varchar(50) NOT NULL,
  `datecreated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `educational`
--

INSERT INTO `educational` (`id`, `fname`, `mname`, `lname`, `ename`, `fullname`, `address`, `barangay`, `age`, `bday`, `pnumber`, `email`, `gender`, `school`, `educational`, `estatus`, `amount`, `precinct_num`, `datecreated`) VALUES
(1, 'MARYNEL', '', 'ORAPA', '', 'MARYNEL  ORAPA ', 'ST. JOSEPH AVE. BARRACKS II TALA', '186', 24, '1999-10-26', '09309011446', 'marynelorapa26@gmail.com', 'Female', 'TECHNOLOGICAL UNIVERSITY OF THE PHILIPPINES', 'SMART', 'pending', 0, '1531B', '2024-07-15');

-- --------------------------------------------------------

--
-- Table structure for table `financial`
--

CREATE TABLE `financial` (
  `id` bigint(50) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `ename` varchar(10) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `barangay` varchar(100) NOT NULL,
  `age` int(255) NOT NULL,
  `bday` date NOT NULL,
  `pnumber` varchar(50) NOT NULL,
  `civil` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `financial` varchar(50) NOT NULL,
  `precinct_num` varchar(10) NOT NULL,
  `bfname` varchar(255) NOT NULL,
  `bmname` varchar(255) NOT NULL,
  `blname` varchar(255) NOT NULL,
  `bename` varchar(10) NOT NULL,
  `bfullname` varchar(255) NOT NULL,
  `baddress` varchar(50) NOT NULL,
  `bage` int(255) NOT NULL,
  `bbday` date NOT NULL,
  `bcivil` varchar(50) NOT NULL,
  `bgender` varchar(50) NOT NULL,
  `brelation` varchar(50) NOT NULL,
  `fstatus` varchar(50) NOT NULL,
  `amount` decimal(65,0) NOT NULL,
  `bprecinct_num` varchar(10) NOT NULL,
  `datecreated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `financial`
--

INSERT INTO `financial` (`id`, `fname`, `mname`, `lname`, `ename`, `fullname`, `address`, `barangay`, `age`, `bday`, `pnumber`, `civil`, `gender`, `financial`, `precinct_num`, `bfname`, `bmname`, `blname`, `bename`, `bfullname`, `baddress`, `bage`, `bbday`, `bcivil`, `bgender`, `brelation`, `fstatus`, `amount`, `bprecinct_num`, `datecreated`) VALUES
(1, 'JOHN', 'BARLAAN', 'FERNANDEZ', '', 'JOHN BARLAAN FERNANDEZ', 'MANGGAHAN PUROK 7 MALARIA', '185', 25, '1998-07-09', '09973925252', 'Single', 'Male', 'Financial Assistance', '', 'JOHN', 'BARLAAN', 'FERNANDEZ', '', 'JOHN BARLAAN FERNANDEZ', 'MANGGAHAN PUROK 7 MALARIA', 25, '1998-07-09', 'Single', 'Male', 'SELF', 'Approved', 2000, '', '2024-05-28'),
(2, 'HONEY GEL', 'RONOLO', 'BACALOCOS', '', 'HONEY GEL RONOLO BACALOCOS', '6-B NHC ROAD NHC VILLAGE TE TALA', '186', 24, '1999-06-12', '09817381995', 'Single', 'Female', 'Financial Assistance', '', 'HONEY GEL', 'RONOLO', 'BACALOCOS', '', 'HONEY GEL RONOLO BACALOCOS', '6-B NHC ROAD NHC VILLAGE TE TALA', 24, '1999-06-12', 'Single', 'Female', 'SELF', 'Approved', 2000, '', '2024-05-28'),
(3, 'SHELLA MAE', 'NICOR', 'MARIPOSA', '', 'SHELLA MAE NICOR MARIPOSA ', 'ST. PAUL EXT.', '178', 26, '1998-01-26', '09270538645', 'Single', 'Female', 'FINANCIAL', '1661A', 'SHELLA MAE', 'NICOR', 'MARIPOSA', '', 'SHELLA MAE NICOR MARIPOSA ', 'ST. PAUL EXT.', 26, '1998-01-26', 'Single', 'Choose Gender', 'SELF', 'pending', 5000, '1661A', '2024-07-15');

-- --------------------------------------------------------

--
-- Table structure for table `guarantee`
--

CREATE TABLE `guarantee` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `ename` varchar(10) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `barangay` varchar(50) NOT NULL,
  `age` int(255) NOT NULL,
  `bday` date NOT NULL,
  `pnumber` varchar(50) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `hospital` varchar(100) NOT NULL,
  `diagnosis` varchar(100) NOT NULL,
  `gletter` varchar(50) NOT NULL,
  `gstatus` varchar(50) NOT NULL,
  `amount` decimal(65,0) NOT NULL,
  `datecreated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guarantee`
--

INSERT INTO `guarantee` (`id`, `fname`, `mname`, `lname`, `ename`, `fullname`, `address`, `barangay`, `age`, `bday`, `pnumber`, `gender`, `hospital`, `diagnosis`, `gletter`, `gstatus`, `amount`, `datecreated`) VALUES
(1, 'ALEX', 'BERIDO', 'PECUNDO', '', 'ALEX BERIDO PECUNDO', 'PH 6 PKG 2 BLK 5 LOT 14 SITIO 3 DAU ST. CAMARIN', '178', 26, '1997-07-09', '09636471000', 'Male', 'Healthway-Qualimed Medical Center SJDM', 'DENTAL', 'Guarantee Letter', 'Rejected', 2000, '2024-05-28'),
(2, 'ALLAN', 'BUISING', 'ADONES', '', 'ALLAN BUISING ADONES', 'SITIO DAGAT DAGATAN AREA D. CAMARIN', '178', 36, '1987-08-04', '09982540415', 'Male', 'Dr. Jose N. Rodriguez Memorial Hospital', 'HIGH BLOOD PRESURE', 'Guarantee Letter', 'Rejected', 1500, '2024-05-28');

-- --------------------------------------------------------

--
-- Table structure for table `kda_bkda`
--

CREATE TABLE `kda_bkda` (
  `id` bigint(20) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `ename` varchar(10) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `bday` date NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `barangay` int(11) NOT NULL,
  `pnumber` varchar(20) NOT NULL,
  `teamtype` varchar(100) NOT NULL,
  `precinct_num` varchar(50) NOT NULL,
  `status` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `datecreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kda_bkda`
--

INSERT INTO `kda_bkda` (`id`, `fname`, `mname`, `lname`, `ename`, `fullname`, `bday`, `age`, `address`, `barangay`, `pnumber`, `teamtype`, `precinct_num`, `status`, `remarks`, `datecreated`) VALUES
(1, 'MARYNEL', '', 'ORAPA', '', 'MARYNEL  ORAPA ', '1999-10-26', 24, 'ST. JOSEPH AVENUE', 186, '09309011446', 'KDA', '1531B', 'ACTIVE', '', '2024-07-07 15:00:54'),
(2, 'ALLIAH NICOLE', 'ESOY', 'CASTILLON', '', 'ALLIAH NICOLE ESOY CASTILLON ', '2000-03-09', 24, 'MIRAMONTE HEIGHTS', 180, '09055681235', 'BKDA', '1530C', 'ACTIVE', '', '2024-07-07 15:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `usertype` varchar(100) NOT NULL,
  `action` varchar(255) NOT NULL,
  `logdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `username`, `usertype`, `action`, `logdate`) VALUES
(1, 'admin', 'admin', 'Added new user with username of marynel', '2024-04-27 23:58:30'),
(7, 'admin', 'admin', 'Added generated pdf for burial beneficiaries list', '2024-04-28 00:29:40'),
(8, 'admin', 'admin', 'Added generated pdf for financial beneficiaries list', '2024-04-28 00:31:14'),
(9, 'admin', 'admin', 'Added generated pdf for GL beneficiaries list', '2024-04-28 00:32:34'),
(10, 'admin', 'admin', 'Added generated pdf for medical beneficiaries list', '2024-04-28 00:35:05'),
(14, 'admin', 'admin', 'User admin login unsuccessful', '2024-04-28 00:49:18'),
(15, 'admin', 'admin', 'User admin logged in successfully', '2024-04-28 00:49:49'),
(28, 'admin', 'admin', 'User admin logged out successfully', '2024-04-28 01:00:47'),
(29, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-04-28 01:05:57'),
(30, 'admin', 'admin', 'User admin logged in successfully', '2024-05-10 11:17:56'),
(31, 'admin', 'admin', 'User admin logged in successfully', '2024-05-10 11:18:26'),
(32, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-10 11:19:39'),
(35, 'nelorapa', 'cos', 'Approve the medical application of beneficiary 1', '2024-05-10 11:29:19'),
(36, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 14', '2024-05-10 11:29:43'),
(37, 'nelorapa', 'cos', 'Approve the burial application of beneficiary 6', '2024-05-10 11:29:59'),
(38, 'nelorapa', 'cos', 'Approve the financial application of beneficiary 6', '2024-05-10 11:30:22'),
(39, 'nelorapa', 'cos', 'Approve the financial application of beneficiary 7', '2024-05-10 11:30:22'),
(40, 'admin', 'admin', 'Added generated pdf for burial beneficiaries list', '2024-05-10 11:39:26'),
(41, 'admin', 'admin', 'User admin logged in successfully', '2024-05-10 11:44:58'),
(42, 'admin', 'admin', 'User admin logged out successfully', '2024-05-10 11:45:38'),
(43, 'admin', 'admin', 'User admin logged in successfully', '2024-05-10 22:39:55'),
(44, 'admin', 'admin', 'Added generated pdf for GL beneficiaries list', '2024-05-10 22:40:20'),
(45, 'admin', 'admin', 'Added generated pdf for GL beneficiaries list', '2024-05-10 22:40:21'),
(46, 'admin', 'admin', 'User admin logged in successfully', '2024-05-11 07:29:17'),
(47, 'admin', 'admin', 'User admin logged in successfully', '2024-05-11 09:12:15'),
(48, 'admin', 'admin', 'User admin logged out successfully', '2024-05-11 09:20:07'),
(49, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-11 09:20:18'),
(50, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 15', '2024-05-11 09:21:00'),
(51, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 16', '2024-05-11 09:21:00'),
(52, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 17', '2024-05-11 09:21:00'),
(53, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 18', '2024-05-11 09:21:00'),
(54, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 6', '2024-05-11 09:31:30'),
(55, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 7', '2024-05-11 09:31:30'),
(56, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 8', '2024-05-11 09:31:30'),
(57, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 6', '2024-05-11 09:31:48'),
(58, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 7', '2024-05-11 09:31:48'),
(59, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 8', '2024-05-11 09:31:48'),
(60, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-11 10:30:15'),
(61, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 6', '2024-05-11 10:32:00'),
(62, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 7', '2024-05-11 10:32:00'),
(63, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 8', '2024-05-11 10:32:00'),
(64, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 9', '2024-05-11 10:32:00'),
(65, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 12', '2024-05-11 10:32:00'),
(66, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 14', '2024-05-11 10:32:00'),
(67, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 6', '2024-05-11 10:32:16'),
(68, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 7', '2024-05-11 10:32:16'),
(69, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 8', '2024-05-11 10:32:16'),
(70, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 9', '2024-05-11 10:32:16'),
(71, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 12', '2024-05-11 10:32:16'),
(72, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 14', '2024-05-11 10:32:16'),
(73, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 6', '2024-05-11 10:32:30'),
(74, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 7', '2024-05-11 10:32:30'),
(75, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 8', '2024-05-11 10:32:30'),
(76, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 9', '2024-05-11 10:32:30'),
(77, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 12', '2024-05-11 10:32:30'),
(78, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 14', '2024-05-11 10:32:30'),
(79, 'nelorapa', 'cos', 'Reject the medical application of beneficiary 6', '2024-05-11 10:33:46'),
(80, 'nelorapa', 'cos', 'Reject the medical application of beneficiary 7', '2024-05-11 10:33:46'),
(81, 'nelorapa', 'cos', 'Approve the medical application of beneficiary 6', '2024-05-11 10:34:19'),
(82, 'nelorapa', 'cos', 'Approve the medical application of beneficiary 7', '2024-05-11 10:34:19'),
(83, 'nelorapa', 'cos', 'Reject the medical application of beneficiary 7', '2024-05-11 10:34:23'),
(84, 'nelorapa', 'cos', 'Reject the medical application of beneficiary 1', '2024-05-11 10:36:09'),
(85, 'nelorapa', 'cos', 'Reject the medical application of beneficiary 2', '2024-05-11 10:36:09'),
(86, 'nelorapa', 'cos', 'Reject the medical application of beneficiary 7', '2024-05-11 10:36:09'),
(87, 'nelorapa', 'cos', 'Approve the medical application of beneficiary 1', '2024-05-11 10:36:15'),
(88, 'nelorapa', 'cos', 'Approve the medical application of beneficiary 2', '2024-05-11 10:36:15'),
(89, 'nelorapa', 'cos', 'Approve the medical application of beneficiary 7', '2024-05-11 10:36:15'),
(90, 'nelorapa', 'cos', 'Reject the burial application of beneficiary 6', '2024-05-11 10:37:47'),
(91, 'nelorapa', 'cos', 'Approve the burial application of beneficiary 6', '2024-05-11 10:37:50'),
(92, 'nelorapa', 'cos', 'Reject the burial application of beneficiary 6', '2024-05-11 10:37:52'),
(93, 'nelorapa', 'cos', 'Approve the burial application of beneficiary 6', '2024-05-11 10:37:53'),
(94, 'nelorapa', 'cos', 'Approve the financial application of beneficiary 6', '2024-05-11 10:38:42'),
(95, 'nelorapa', 'cos', 'Approve the financial application of beneficiary 7', '2024-05-11 10:38:42'),
(96, 'nelorapa', 'cos', 'Reject the financial application of beneficiary 6', '2024-05-11 10:38:45'),
(97, 'nelorapa', 'cos', 'Reject the financial application of beneficiary 7', '2024-05-11 10:38:45'),
(98, 'nelorapa', 'cos', 'Approve the financial application of beneficiary 6', '2024-05-11 10:38:48'),
(99, 'nelorapa', 'cos', 'Approve the financial application of beneficiary 7', '2024-05-11 10:38:48'),
(100, 'nelorapa', 'cos', 'User nelorapa logged out successfully', '2024-05-11 10:38:53'),
(101, 'admin', 'admin', 'User admin logged in successfully', '2024-05-11 10:38:57'),
(102, 'admin', 'admin', 'User admin logged out successfully', '2024-05-11 10:39:23'),
(103, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-11 10:39:44'),
(104, 'nelorapa', 'cos', 'User nelorapa logged out successfully', '2024-05-11 11:00:00'),
(105, 'admin', 'admin', 'User admin logged in successfully', '2024-05-11 11:00:03'),
(106, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-11 11:00:29'),
(107, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-16 16:19:22'),
(108, 'admin', 'admin', 'User admin logged in successfully', '2024-05-16 16:24:29'),
(109, 'admin', 'admin', 'User admin logged out successfully', '2024-05-16 16:25:06'),
(110, 'admin', 'admin', 'User admin login unsuccessful', '2024-05-16 17:34:19'),
(111, 'admin', 'admin', 'User admin logged in successfully', '2024-05-16 17:34:23'),
(112, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-16 17:34:39'),
(113, 'nelorapa', 'cos', 'Added generated pdf for GL beneficiaries list', '2024-05-17 11:26:02'),
(114, 'nelorapa', 'cos', 'Added generated pdf for GL beneficiaries list', '2024-05-17 11:26:02'),
(115, 'nelorapa', 'cos', 'Added generated pdf for GL beneficiaries list', '2024-05-17 11:26:13'),
(116, 'nelorapa', 'cos', 'Added generated pdf for GL beneficiaries list', '2024-05-17 11:26:13'),
(117, 'nelorapa', 'cos', 'Added generated pdf for GL beneficiaries list', '2024-05-17 11:26:28'),
(118, 'nelorapa', 'cos', 'Added generated pdf for GL beneficiaries list', '2024-05-17 11:26:29'),
(119, 'nelorapa', 'cos', 'Added generated pdf for medical beneficiaries list', '2024-05-17 11:33:53'),
(120, 'nelorapa', 'cos', 'Added generated pdf for medical beneficiaries list', '2024-05-17 11:33:53'),
(121, 'nelorapa', 'cos', 'Added generated pdf for burial beneficiaries list', '2024-05-17 11:38:42'),
(122, 'nelorapa', 'cos', 'Added generated pdf for burial beneficiaries list', '2024-05-17 11:38:42'),
(123, 'nelorapa', 'cos', 'Added generated pdf for financial beneficiaries list', '2024-05-17 11:40:36'),
(124, 'nelorapa', 'cos', 'Added generated pdf for financial beneficiaries list', '2024-05-17 11:40:37'),
(125, 'nelorapa', 'cos', 'User nelorapa logged out successfully', '2024-05-17 11:43:02'),
(126, 'admin', 'admin', 'User admin logged in successfully', '2024-05-17 11:43:05'),
(127, 'admin', 'admin', 'User admin logged in successfully', '2024-05-17 11:43:30'),
(128, 'admin', 'admin', 'User admin logged in successfully', '2024-05-17 11:43:41'),
(129, 'admin', 'admin', 'User admin logged out successfully', '2024-05-17 11:44:05'),
(130, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-17 11:44:12'),
(131, 'nelorapa', 'cos', 'User nelorapa logged out successfully', '2024-05-17 11:44:42'),
(132, 'admin', 'admin', 'User admin logged in successfully', '2024-05-17 11:44:45'),
(133, 'admin', 'admin', 'User admin logged out successfully', '2024-05-17 11:49:54'),
(134, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-17 11:49:59'),
(135, 'nelorapa', 'cos', 'User nelorapa logged out successfully', '2024-05-17 11:50:07'),
(136, 'admin', 'admin', 'User admin logged in successfully', '2024-05-17 11:50:12'),
(137, 'admin', 'admin', 'User admin logged out successfully', '2024-05-17 12:18:51'),
(138, 'neloh', 'officehead', 'User neloh logged in successfully', '2024-05-17 12:19:10'),
(139, 'neloh', 'officehead', 'User neloh logged in successfully', '2024-05-20 19:49:34'),
(140, 'neloh', 'officehead', 'User neloh logged out successfully', '2024-05-20 20:02:54'),
(141, 'neloh', 'officehead', 'User neloh logged in successfully', '2024-05-20 20:03:05'),
(142, 'admin', 'admin', 'User admin logged in successfully', '2024-05-21 00:24:58'),
(143, 'admin', 'admin', 'User admin logged out successfully', '2024-05-21 00:55:07'),
(144, 'admin', 'admin', 'User admin login unsuccessful', '2024-05-21 00:55:23'),
(145, 'admin', 'admin', 'User admin logged in successfully', '2024-05-21 00:55:27'),
(146, 'admin', 'admin', 'User admin logged in successfully', '2024-05-22 15:58:56'),
(147, 'admin', 'admin', 'User admin logged out successfully', '2024-05-22 15:59:57'),
(148, 'admin', 'admin', 'User admin logged in successfully', '2024-05-22 16:00:27'),
(149, 'admin', 'admin', 'User admin logged in successfully', '2024-05-22 16:12:14'),
(150, 'admin', 'admin', 'User admin logged out successfully', '2024-05-22 16:38:31'),
(151, 'admin', 'admin', 'User admin logged in successfully', '2024-05-22 16:38:35'),
(152, 'admin', 'admin', 'User admin logged out successfully', '2024-05-22 16:39:56'),
(153, 'neloh', 'officehead', 'User neloh logged in successfully', '2024-05-22 16:40:14'),
(154, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-22 16:40:39'),
(155, 'nelorapa', 'cos', 'Added generated pdf for GL beneficiaries list', '2024-05-22 16:47:43'),
(156, 'nelorapa', 'cos', 'Added generated pdf for GL beneficiaries list', '2024-05-22 16:47:44'),
(157, 'nelorapa', 'cos', 'User nelorapa logged out successfully', '2024-05-22 16:48:11'),
(158, 'admin', 'admin', 'User admin logged in successfully', '2024-05-22 16:48:15'),
(159, 'admin', 'admin', 'Added generated pdf for GL beneficiaries list', '2024-05-22 16:49:22'),
(160, 'admin', 'admin', 'Added generated pdf for GL beneficiaries list', '2024-05-22 16:49:23'),
(161, 'admin', 'admin', 'User admin logged in successfully', '2024-05-22 21:46:41'),
(162, 'admin', 'admin', 'User admin logged in successfully', '2024-05-24 08:52:11'),
(163, 'admin', 'admin', 'User admin logged out successfully', '2024-05-24 11:56:58'),
(164, 'admin', 'admin', 'User admin logged in successfully', '2024-05-24 11:57:01'),
(165, 'admin', 'admin', 'User admin logged out successfully', '2024-05-24 11:57:04'),
(166, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-24 11:57:25'),
(167, 'nelorapa', 'cos', 'User nelorapa logged out successfully', '2024-05-24 11:57:27'),
(168, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-24 20:47:15'),
(169, 'nelorapa', 'cos', 'Added generated pdf for GL beneficiaries list', '2024-05-24 20:47:27'),
(170, 'nelorapa', 'cos', 'Added generated pdf for GL beneficiaries list', '2024-05-24 20:47:28'),
(171, 'nelorapa', 'cos', 'Added generated pdf for GL beneficiaries list', '2024-05-24 20:47:30'),
(172, 'nelorapa', 'cos', 'Added generated pdf for GL beneficiaries list', '2024-05-24 20:47:40'),
(173, 'nelorapa', 'cos', 'Added generated pdf for GL beneficiaries list', '2024-05-24 20:47:43'),
(174, 'nelorapa', 'cos', 'User nelorapa logged out successfully', '2024-05-24 20:47:49'),
(175, 'admin', 'admin', 'User admin logged in successfully', '2024-05-24 20:47:54'),
(176, 'admin', 'admin', 'Added generated pdf for GL beneficiaries list', '2024-05-24 20:48:00'),
(177, 'admin', 'admin', 'Added generated pdf for GL beneficiaries list', '2024-05-24 20:48:08'),
(178, 'admin', 'admin', 'User admin logged out successfully', '2024-05-24 20:48:33'),
(179, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-24 20:48:41'),
(180, 'nelorapa', 'cos', 'Added generated pdf for burial beneficiaries list', '2024-05-24 20:48:48'),
(181, 'nelorapa', 'cos', 'Added generated pdf for burial beneficiaries list', '2024-05-24 20:48:50'),
(182, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 6', '2024-05-24 20:50:37'),
(183, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 8', '2024-05-24 20:50:37'),
(184, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 9', '2024-05-24 20:50:37'),
(185, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 12', '2024-05-24 20:50:37'),
(186, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 14', '2024-05-24 20:50:37'),
(187, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 15', '2024-05-24 20:50:37'),
(188, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 16', '2024-05-24 20:50:37'),
(189, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 17', '2024-05-24 20:50:37'),
(190, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 18', '2024-05-24 20:50:37'),
(191, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 20', '2024-05-24 20:50:37'),
(192, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 21', '2024-05-24 20:50:37'),
(193, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 22', '2024-05-24 20:50:37'),
(194, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 23', '2024-05-24 20:50:37'),
(195, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 38', '2024-05-24 20:50:37'),
(196, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 40', '2024-05-24 20:50:37'),
(197, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 41', '2024-05-24 20:50:37'),
(198, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 6', '2024-05-24 20:50:44'),
(199, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 8', '2024-05-24 20:50:44'),
(200, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 9', '2024-05-24 20:50:44'),
(201, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 12', '2024-05-24 20:50:44'),
(202, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 14', '2024-05-24 20:50:44'),
(203, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 15', '2024-05-24 20:50:44'),
(204, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 16', '2024-05-24 20:50:44'),
(205, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 17', '2024-05-24 20:50:44'),
(206, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 18', '2024-05-24 20:50:44'),
(207, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 20', '2024-05-24 20:50:44'),
(208, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 21', '2024-05-24 20:50:44'),
(209, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 22', '2024-05-24 20:50:44'),
(210, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 23', '2024-05-24 20:50:44'),
(211, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 38', '2024-05-24 20:50:44'),
(212, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 40', '2024-05-24 20:50:44'),
(213, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 41', '2024-05-24 20:50:44'),
(214, 'nelorapa', 'cos', 'User nelorapa logged out successfully', '2024-05-24 20:54:12'),
(215, 'admin', 'admin', 'User admin logged in successfully', '2024-05-24 20:54:16'),
(216, 'admin', 'admin', 'User admin logged in successfully', '2024-05-24 21:25:15'),
(217, 'admin', 'admin', 'User admin logged out successfully', '2024-05-24 21:25:17'),
(218, 'admin', 'admin', 'User admin logged in successfully', '2024-05-24 21:25:20'),
(219, 'admin', 'admin', 'User admin logged in successfully', '2024-05-24 21:38:38'),
(220, 'admin', 'admin', 'User admin logged out successfully', '2024-05-24 21:54:53'),
(221, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-24 21:55:02'),
(222, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 6', '2024-05-24 21:55:05'),
(223, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 8', '2024-05-24 21:55:05'),
(224, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 9', '2024-05-24 21:55:05'),
(225, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 14', '2024-05-24 21:55:05'),
(226, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 15', '2024-05-24 21:55:05'),
(227, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 16', '2024-05-24 21:55:05'),
(228, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 17', '2024-05-24 21:55:05'),
(229, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 18', '2024-05-24 21:55:05'),
(230, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 20', '2024-05-24 21:55:05'),
(231, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 21', '2024-05-24 21:55:05'),
(232, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 22', '2024-05-24 21:55:05'),
(233, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 23', '2024-05-24 21:55:05'),
(234, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 38', '2024-05-24 21:55:05'),
(235, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 40', '2024-05-24 21:55:05'),
(236, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 41', '2024-05-24 21:55:05'),
(237, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 6', '2024-05-24 21:55:07'),
(238, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 8', '2024-05-24 21:55:07'),
(239, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 9', '2024-05-24 21:55:07'),
(240, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 14', '2024-05-24 21:55:07'),
(241, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 15', '2024-05-24 21:55:07'),
(242, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 16', '2024-05-24 21:55:07'),
(243, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 17', '2024-05-24 21:55:07'),
(244, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 18', '2024-05-24 21:55:07'),
(245, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 20', '2024-05-24 21:55:07'),
(246, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 21', '2024-05-24 21:55:07'),
(247, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 22', '2024-05-24 21:55:07'),
(248, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 23', '2024-05-24 21:55:07'),
(249, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 38', '2024-05-24 21:55:07'),
(250, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 40', '2024-05-24 21:55:07'),
(251, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 41', '2024-05-24 21:55:07'),
(252, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 6', '2024-05-24 21:56:01'),
(253, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 8', '2024-05-24 21:56:01'),
(254, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 9', '2024-05-24 21:56:01'),
(255, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 14', '2024-05-24 21:56:01'),
(256, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 15', '2024-05-24 21:56:01'),
(257, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 16', '2024-05-24 21:56:01'),
(258, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 17', '2024-05-24 21:56:01'),
(259, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 18', '2024-05-24 21:56:01'),
(260, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 20', '2024-05-24 21:56:01'),
(261, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 21', '2024-05-24 21:56:02'),
(262, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 22', '2024-05-24 21:56:02'),
(263, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 23', '2024-05-24 21:56:02'),
(264, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 38', '2024-05-24 21:56:02'),
(265, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 40', '2024-05-24 21:56:02'),
(266, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 41', '2024-05-24 21:56:02'),
(267, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 6', '2024-05-24 21:56:05'),
(268, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 8', '2024-05-24 21:56:05'),
(269, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 9', '2024-05-24 21:56:05'),
(270, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 14', '2024-05-24 21:56:05'),
(271, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 15', '2024-05-24 21:56:05'),
(272, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 16', '2024-05-24 21:56:05'),
(273, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 17', '2024-05-24 21:56:05'),
(274, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 18', '2024-05-24 21:56:05'),
(275, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 20', '2024-05-24 21:56:05'),
(276, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 21', '2024-05-24 21:56:05'),
(277, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 22', '2024-05-24 21:56:05'),
(278, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 23', '2024-05-24 21:56:05'),
(279, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 38', '2024-05-24 21:56:05'),
(280, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 40', '2024-05-24 21:56:06'),
(281, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 41', '2024-05-24 21:56:06'),
(282, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 6', '2024-05-24 21:56:15'),
(283, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 8', '2024-05-24 21:56:15'),
(284, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 9', '2024-05-24 21:56:15'),
(285, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 14', '2024-05-24 21:56:15'),
(286, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 15', '2024-05-24 21:56:15'),
(287, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 16', '2024-05-24 21:56:15'),
(288, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 17', '2024-05-24 21:56:15'),
(289, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 18', '2024-05-24 21:56:15'),
(290, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 20', '2024-05-24 21:56:15'),
(291, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 21', '2024-05-24 21:56:15'),
(292, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 22', '2024-05-24 21:56:15'),
(293, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 23', '2024-05-24 21:56:15'),
(294, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 38', '2024-05-24 21:56:15'),
(295, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 40', '2024-05-24 21:56:15'),
(296, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 41', '2024-05-24 21:56:15'),
(297, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 6', '2024-05-24 21:56:17'),
(298, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 8', '2024-05-24 21:56:17'),
(299, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 9', '2024-05-24 21:56:17'),
(300, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 14', '2024-05-24 21:56:17'),
(301, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 15', '2024-05-24 21:56:17'),
(302, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 16', '2024-05-24 21:56:17'),
(303, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 17', '2024-05-24 21:56:17'),
(304, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 18', '2024-05-24 21:56:17'),
(305, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 20', '2024-05-24 21:56:17'),
(306, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 21', '2024-05-24 21:56:17'),
(307, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 22', '2024-05-24 21:56:17'),
(308, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 23', '2024-05-24 21:56:17'),
(309, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 38', '2024-05-24 21:56:17'),
(310, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 40', '2024-05-24 21:56:17'),
(311, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 41', '2024-05-24 21:56:17'),
(312, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 6', '2024-05-24 21:56:19'),
(313, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 8', '2024-05-24 21:56:19'),
(314, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 9', '2024-05-24 21:56:19'),
(315, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 14', '2024-05-24 21:56:19'),
(316, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 15', '2024-05-24 21:56:19'),
(317, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 16', '2024-05-24 21:56:19'),
(318, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 17', '2024-05-24 21:56:19'),
(319, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 18', '2024-05-24 21:56:19'),
(320, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 20', '2024-05-24 21:56:19'),
(321, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 21', '2024-05-24 21:56:19'),
(322, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 22', '2024-05-24 21:56:19'),
(323, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 23', '2024-05-24 21:56:19'),
(324, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 38', '2024-05-24 21:56:19'),
(325, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 40', '2024-05-24 21:56:19'),
(326, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 41', '2024-05-24 21:56:19'),
(327, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 6', '2024-05-24 21:56:22'),
(328, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 8', '2024-05-24 21:56:22'),
(329, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 9', '2024-05-24 21:56:22'),
(330, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 14', '2024-05-24 21:56:22'),
(331, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 15', '2024-05-24 21:56:22'),
(332, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 16', '2024-05-24 21:56:22'),
(333, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 17', '2024-05-24 21:56:22'),
(334, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 18', '2024-05-24 21:56:22'),
(335, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 20', '2024-05-24 21:56:22'),
(336, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 21', '2024-05-24 21:56:22'),
(337, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 22', '2024-05-24 21:56:22'),
(338, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 23', '2024-05-24 21:56:22'),
(339, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 38', '2024-05-24 21:56:22'),
(340, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 40', '2024-05-24 21:56:22'),
(341, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 41', '2024-05-24 21:56:22'),
(342, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 6', '2024-05-24 21:56:23'),
(343, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 8', '2024-05-24 21:56:23'),
(344, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 9', '2024-05-24 21:56:23'),
(345, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 14', '2024-05-24 21:56:23'),
(346, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 15', '2024-05-24 21:56:23'),
(347, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 16', '2024-05-24 21:56:23'),
(348, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 17', '2024-05-24 21:56:23'),
(349, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 18', '2024-05-24 21:56:23'),
(350, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 20', '2024-05-24 21:56:23'),
(351, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 21', '2024-05-24 21:56:23'),
(352, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 22', '2024-05-24 21:56:23'),
(353, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 23', '2024-05-24 21:56:23'),
(354, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 38', '2024-05-24 21:56:23'),
(355, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 40', '2024-05-24 21:56:23'),
(356, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 41', '2024-05-24 21:56:23'),
(357, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 6', '2024-05-24 21:56:24'),
(358, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 8', '2024-05-24 21:56:24'),
(359, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 9', '2024-05-24 21:56:24'),
(360, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 14', '2024-05-24 21:56:24'),
(361, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 15', '2024-05-24 21:56:24'),
(362, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 16', '2024-05-24 21:56:24'),
(363, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 17', '2024-05-24 21:56:24'),
(364, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 18', '2024-05-24 21:56:24'),
(365, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 20', '2024-05-24 21:56:24'),
(366, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 21', '2024-05-24 21:56:24'),
(367, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 22', '2024-05-24 21:56:24'),
(368, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 23', '2024-05-24 21:56:24'),
(369, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 38', '2024-05-24 21:56:24'),
(370, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 40', '2024-05-24 21:56:24'),
(371, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 41', '2024-05-24 21:56:24'),
(372, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 6', '2024-05-24 21:56:25'),
(373, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 8', '2024-05-24 21:56:25'),
(374, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 9', '2024-05-24 21:56:25'),
(375, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 14', '2024-05-24 21:56:25'),
(376, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 15', '2024-05-24 21:56:25'),
(377, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 16', '2024-05-24 21:56:25'),
(378, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 17', '2024-05-24 21:56:25'),
(379, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 18', '2024-05-24 21:56:25'),
(380, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 20', '2024-05-24 21:56:25'),
(381, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 21', '2024-05-24 21:56:25'),
(382, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 22', '2024-05-24 21:56:25'),
(383, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 23', '2024-05-24 21:56:25'),
(384, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 38', '2024-05-24 21:56:25'),
(385, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 40', '2024-05-24 21:56:25'),
(386, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 41', '2024-05-24 21:56:25'),
(387, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 6', '2024-05-24 21:56:26'),
(388, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 8', '2024-05-24 21:56:26'),
(389, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 9', '2024-05-24 21:56:26'),
(390, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 14', '2024-05-24 21:56:26'),
(391, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 15', '2024-05-24 21:56:26'),
(392, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 16', '2024-05-24 21:56:26'),
(393, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 17', '2024-05-24 21:56:26'),
(394, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 18', '2024-05-24 21:56:26'),
(395, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 20', '2024-05-24 21:56:26'),
(396, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 21', '2024-05-24 21:56:26'),
(397, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 22', '2024-05-24 21:56:26'),
(398, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 23', '2024-05-24 21:56:26'),
(399, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 38', '2024-05-24 21:56:26'),
(400, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 40', '2024-05-24 21:56:26'),
(401, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 41', '2024-05-24 21:56:26'),
(402, 'nelorapa', 'cos', 'User nelorapa logged out successfully', '2024-05-24 21:58:01'),
(403, 'admin', 'admin', 'User admin logged in successfully', '2024-05-24 21:58:04'),
(404, 'admin', 'admin', 'User admin logged out successfully', '2024-05-25 15:45:21'),
(405, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-25 15:45:28'),
(406, 'nelorapa', 'cos', 'Added generated pdf for GL beneficiaries list', '2024-05-25 15:45:50'),
(407, 'nelorapa', 'cos', 'Added generated pdf for GL beneficiaries list', '2024-05-25 15:45:50'),
(408, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 6', '2024-05-25 15:45:58'),
(409, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 8', '2024-05-25 15:45:58'),
(410, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 9', '2024-05-25 15:45:58'),
(411, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 14', '2024-05-25 15:45:58'),
(412, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 15', '2024-05-25 15:45:58'),
(413, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 16', '2024-05-25 15:45:58'),
(414, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 17', '2024-05-25 15:45:58'),
(415, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 18', '2024-05-25 15:45:58'),
(416, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 20', '2024-05-25 15:45:58'),
(417, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 21', '2024-05-25 15:45:58'),
(418, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 22', '2024-05-25 15:45:58'),
(419, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 23', '2024-05-25 15:45:58'),
(420, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 38', '2024-05-25 15:45:58'),
(421, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 40', '2024-05-25 15:45:58'),
(422, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 41', '2024-05-25 15:45:58'),
(423, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 6', '2024-05-25 15:46:05'),
(424, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 8', '2024-05-25 15:46:05'),
(425, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 9', '2024-05-25 15:46:05'),
(426, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 14', '2024-05-25 15:46:05'),
(427, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 15', '2024-05-25 15:46:05'),
(428, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 16', '2024-05-25 15:46:05'),
(429, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 17', '2024-05-25 15:46:05'),
(430, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 18', '2024-05-25 15:46:05'),
(431, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 20', '2024-05-25 15:46:05'),
(432, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 21', '2024-05-25 15:46:05'),
(433, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 22', '2024-05-25 15:46:05'),
(434, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 23', '2024-05-25 15:46:05'),
(435, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 38', '2024-05-25 15:46:05'),
(436, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 40', '2024-05-25 15:46:05'),
(437, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 41', '2024-05-25 15:46:05'),
(438, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 6', '2024-05-25 15:46:09'),
(439, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 8', '2024-05-25 15:46:09'),
(440, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 9', '2024-05-25 15:46:09'),
(441, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 14', '2024-05-25 15:46:09'),
(442, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 15', '2024-05-25 15:46:09'),
(443, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 16', '2024-05-25 15:46:09'),
(444, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 17', '2024-05-25 15:46:09'),
(445, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 18', '2024-05-25 15:46:09'),
(446, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 20', '2024-05-25 15:46:09'),
(447, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 21', '2024-05-25 15:46:09'),
(448, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 22', '2024-05-25 15:46:09'),
(449, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 23', '2024-05-25 15:46:09'),
(450, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 38', '2024-05-25 15:46:09'),
(451, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 40', '2024-05-25 15:46:09'),
(452, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 41', '2024-05-25 15:46:09'),
(453, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 6', '2024-05-25 15:46:12'),
(454, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 8', '2024-05-25 15:46:12'),
(455, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 9', '2024-05-25 15:46:12'),
(456, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 14', '2024-05-25 15:46:12'),
(457, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 15', '2024-05-25 15:46:12'),
(458, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 16', '2024-05-25 15:46:12'),
(459, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 17', '2024-05-25 15:46:12'),
(460, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 18', '2024-05-25 15:46:12'),
(461, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 20', '2024-05-25 15:46:12'),
(462, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 21', '2024-05-25 15:46:12'),
(463, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 22', '2024-05-25 15:46:12'),
(464, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 23', '2024-05-25 15:46:12'),
(465, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 38', '2024-05-25 15:46:12'),
(466, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 40', '2024-05-25 15:46:12'),
(467, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 41', '2024-05-25 15:46:12'),
(468, 'nelorapa', 'cos', 'User nelorapa logged out successfully', '2024-05-25 16:04:41'),
(469, 'admin', 'admin', 'User admin logged in successfully', '2024-05-25 16:04:44'),
(470, 'admin', 'admin', 'User admin logged out successfully', '2024-05-25 16:05:16'),
(471, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-25 16:05:27'),
(472, 'nelorapa', 'cos', 'User nelorapa logged out successfully', '2024-05-25 16:22:50'),
(473, 'admin', 'admin', 'User admin logged in successfully', '2024-05-25 16:22:56'),
(474, 'admin', 'admin', 'User admin logged in successfully', '2024-05-26 11:56:51'),
(475, 'admin', 'admin', 'Added generated pdf for GL beneficiaries list', '2024-05-26 12:45:29'),
(476, 'admin', 'admin', 'User admin logged out successfully', '2024-05-26 13:41:44'),
(477, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-26 13:42:00'),
(478, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-26 13:59:57'),
(479, 'nelorapa', 'cos', 'User nelorapa logged out successfully', '2024-05-26 14:05:22'),
(480, 'admin', 'admin', 'User admin logged in successfully', '2024-05-26 14:05:26'),
(481, 'admin', 'admin', 'User admin logged out successfully', '2024-05-26 14:05:49'),
(482, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-26 14:05:54'),
(483, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 43', '2024-05-26 14:18:28'),
(484, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 43', '2024-05-26 14:18:49'),
(485, 'nelorapa', 'cos', 'Approve the burial application of beneficiary 7', '2024-05-26 14:18:55'),
(486, 'nelorapa', 'cos', 'Approve the Educational letter application of beneficiary 43', '2024-05-26 14:23:34'),
(487, 'nelorapa', 'cos', 'Approve the financial application of beneficiary 8', '2024-05-26 14:28:33'),
(488, 'nelorapa', 'cos', 'User nelorapa logged out successfully', '2024-05-26 14:32:25'),
(489, 'admin', 'admin', 'User admin logged in successfully', '2024-05-26 14:32:29'),
(490, 'admin', 'admin', 'User admin logged out successfully', '2024-05-26 14:34:46'),
(491, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-26 14:34:51'),
(492, 'nelorapa', 'cos', 'Approve the medical application of beneficiary 8', '2024-05-26 14:35:35'),
(493, 'nelorapa', 'cos', 'Reject the medical application of beneficiary 8', '2024-05-26 14:35:37'),
(494, 'nelorapa', 'cos', 'Approve the medical application of beneficiary 8', '2024-05-26 14:35:39'),
(495, 'nelorapa', 'cos', 'User nelorapa logged out successfully', '2024-05-26 14:35:49'),
(496, 'admin', 'admin', 'User admin logged in successfully', '2024-05-26 14:35:55'),
(497, 'neloh', 'officehead', 'User neloh logged in successfully', '2024-05-27 17:31:40'),
(498, 'neloh', 'officehead', 'User neloh logged in successfully', '2024-05-27 17:54:00'),
(499, 'admin', 'admin', 'User admin logged in successfully', '2024-05-28 13:01:41'),
(500, 'admin', 'admin', 'User admin logged out successfully', '2024-05-28 13:02:06'),
(501, 'admin', 'admin', 'User admin logged in successfully', '2024-05-28 13:05:57'),
(502, 'admin', 'admin', 'User admin logged out successfully', '2024-05-28 13:16:38'),
(503, 'neloh', 'officehead', 'User neloh logged in successfully', '2024-05-28 13:16:48'),
(504, 'neloh', 'officehead', 'User neloh logged out successfully', '2024-05-28 13:52:44'),
(505, 'admin', 'admin', 'User admin logged in successfully', '2024-05-28 13:52:51'),
(506, 'admin', 'admin', 'User admin logged out successfully', '2024-05-28 13:55:40'),
(507, 'neloh', 'officehead', 'User neloh logged in successfully', '2024-05-28 13:55:46'),
(508, 'neloh', 'officehead', 'User neloh logged out successfully', '2024-05-28 13:57:30'),
(509, 'admin', 'admin', 'User admin logged in successfully', '2024-05-28 13:57:34'),
(510, 'admin', 'admin', 'User admin logged out successfully', '2024-05-28 13:59:38'),
(511, 'neloh', 'officehead', 'User neloh login unsuccessful', '2024-05-28 13:59:44'),
(512, 'neloh', 'officehead', 'User neloh logged in successfully', '2024-05-28 13:59:53'),
(513, 'neloh', 'officehead', 'User neloh logged out successfully', '2024-05-28 14:05:49'),
(514, 'admin', 'admin', 'User admin logged in successfully', '2024-05-28 14:05:54'),
(515, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-28 14:41:58'),
(516, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 1', '2024-05-28 14:42:06');
INSERT INTO `logs` (`id`, `username`, `usertype`, `action`, `logdate`) VALUES
(517, 'nelorapa', 'cos', 'Approve the guarantee letter application of beneficiary 2', '2024-05-28 14:42:06'),
(518, 'nelorapa', 'cos', 'Approve the medical application of beneficiary 1', '2024-05-28 14:42:12'),
(519, 'nelorapa', 'cos', 'Approve the medical application of beneficiary 2', '2024-05-28 14:42:12'),
(520, 'nelorapa', 'cos', 'Approve the burial application of beneficiary 1', '2024-05-28 14:42:16'),
(521, 'nelorapa', 'cos', 'Approve the burial application of beneficiary 2', '2024-05-28 14:42:16'),
(522, 'nelorapa', 'cos', 'Approve the financial application of beneficiary 1', '2024-05-28 14:42:24'),
(523, 'nelorapa', 'cos', 'Approve the financial application of beneficiary 2', '2024-05-28 14:42:24'),
(524, 'nelorapa', 'cos', 'User nelorapa logged out successfully', '2024-05-28 14:42:30'),
(525, 'neloh', 'officehead', 'User neloh logged in successfully', '2024-05-28 14:42:37'),
(526, 'admin', 'admin', 'User admin logged out successfully', '2024-05-28 15:22:55'),
(527, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-28 15:23:04'),
(528, 'nelorapa', 'cos', 'User nelorapa logged out successfully', '2024-05-28 15:23:33'),
(529, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-28 15:23:39'),
(530, 'nelorapa', 'cos', 'User nelorapa logged out successfully', '2024-05-28 15:23:55'),
(531, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-28 15:24:22'),
(532, 'nelorapa', 'cos', 'User nelorapa logged out successfully', '2024-05-28 15:30:24'),
(533, 'admin', 'admin', 'User admin login unsuccessful', '2024-05-28 15:31:46'),
(534, 'admin', 'admin', 'User admin login unsuccessful', '2024-05-28 15:33:58'),
(535, 'admin', 'admin', 'User admin login unsuccessful', '2024-05-28 15:36:43'),
(536, 'admin', 'admin', 'User admin login unsuccessful', '2024-05-28 15:38:17'),
(537, 'admin', 'admin', 'User admin login unsuccessful', '2024-05-28 15:38:32'),
(538, 'admin', 'admin', 'User admin login unsuccessful', '2024-05-28 15:39:04'),
(539, 'admin', 'admin', 'User admin logged in successfully', '2024-05-28 20:41:21'),
(540, 'admin', 'admin', 'User admin logged out successfully', '2024-05-28 20:41:32'),
(541, 'neloh', 'officehead', 'User neloh logged out successfully', '2024-05-29 14:55:39'),
(542, 'admin', 'admin', 'User admin logged in successfully', '2024-05-29 14:55:42'),
(543, 'admin', 'admin', 'User admin logged out successfully', '2024-05-29 14:57:26'),
(544, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-05-29 14:57:44'),
(545, 'nelorapa', 'cos', 'User nelorapa logged out successfully', '2024-05-29 14:58:01'),
(546, 'admin', 'admin', 'User admin login unsuccessful', '2024-05-29 14:58:04'),
(547, 'admin', 'admin', 'User admin logged in successfully', '2024-05-29 14:58:07'),
(548, 'admin', 'admin', 'User admin logged out successfully', '2024-05-29 15:00:28'),
(549, 'neloh', 'officehead', 'User neloh logged in successfully', '2024-05-29 16:34:45'),
(550, 'neloh', 'officehead', 'User neloh logged out successfully', '2024-05-29 18:30:48'),
(551, 'neloh', 'officehead', 'User neloh logged in successfully', '2024-05-29 18:31:05'),
(552, 'neloh', 'officehead', 'User neloh logged out successfully', '2024-05-29 18:45:30'),
(553, 'admin', 'admin', 'User admin logged in successfully', '2024-05-29 18:45:34'),
(554, 'admin', 'admin', 'User admin logged out successfully', '2024-05-29 18:47:11'),
(555, 'neloh', 'officehead', 'User neloh logged in successfully', '2024-05-29 18:47:20'),
(556, 'neloh', 'officehead', 'User neloh logged out successfully', '2024-05-29 19:31:30'),
(557, 'admin', 'admin', 'User admin login unsuccessful', '2024-05-29 19:31:33'),
(558, 'admin', 'admin', 'User admin logged in successfully', '2024-05-29 19:31:37'),
(559, 'admin', 'admin', 'User admin logged out successfully', '2024-05-29 19:39:27'),
(560, 'neloh', 'officehead', 'User neloh logged in successfully', '2024-05-29 19:39:34'),
(561, 'neloh', 'officehead', 'User neloh logged in successfully', '2024-06-07 13:41:02'),
(562, 'neloh', 'officehead', 'User neloh logged out successfully', '2024-06-07 13:44:19'),
(563, 'nelorapa', 'cos', 'User nelorapa login unsuccessful', '2024-06-07 13:44:23'),
(564, 'neloh', 'officehead', 'User neloh logged in successfully', '2024-06-07 13:44:28'),
(565, 'neloh', 'officehead', 'User neloh logged in successfully', '2024-06-07 13:45:45'),
(566, 'neloh', 'officehead', 'User neloh logged in successfully', '2024-06-07 14:08:45'),
(567, 'neloh', 'officehead', 'User neloh logged out successfully', '2024-06-07 16:16:56'),
(568, 'admin', 'admin', 'User admin logged in successfully', '2024-06-07 16:17:05'),
(569, 'admin', 'admin', 'User admin logged in successfully', '2024-06-09 17:35:59'),
(570, 'admin', 'admin', 'User admin logged out successfully', '2024-06-09 17:39:13'),
(571, 'nelorapa', 'cos', 'User nelorapa logged in successfully', '2024-06-09 17:39:48'),
(572, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 1', '2024-06-09 17:41:02'),
(573, 'nelorapa', 'cos', 'Reject the guarantee letter application of beneficiary 2', '2024-06-09 17:41:02'),
(574, 'nelorapa', 'cos', 'User nelorapa logged out successfully', '2024-06-09 17:49:57'),
(575, 'admin', 'admin', 'User admin logged in successfully', '2024-06-09 17:50:00'),
(576, 'admin', 'admin', 'User admin logged in successfully', '2024-07-03 21:25:28'),
(577, 'admin', 'admin', 'User admin logged in successfully', '2024-07-03 21:42:41'),
(578, 'admin', 'admin', 'User admin logged in successfully', '2024-07-05 12:00:25'),
(579, 'admin', 'admin', 'User admin logged out successfully', '2024-07-05 12:00:35'),
(580, 'admin', 'admin', 'User admin logged in successfully', '2024-07-14 23:53:28'),
(581, 'admin', 'admin', 'User admin logged out successfully', '2024-07-15 00:05:24'),
(582, 'admin', 'admin', 'User admin logged in successfully', '2024-07-15 00:41:33'),
(583, 'admin', 'admin', 'User admin logged out successfully', '2024-07-15 00:46:22'),
(584, 'admin', 'admin', 'User admin logged in successfully', '2024-07-15 00:48:31'),
(585, 'admin', 'admin', 'User admin logged out successfully', '2024-07-15 00:49:30'),
(586, 'admin', 'admin', 'User admin logged in successfully', '2024-07-15 00:54:30'),
(587, 'admin', 'admin', 'User admin logged out successfully', '2024-07-15 01:15:13');

-- --------------------------------------------------------

--
-- Table structure for table `medicalmission`
--

CREATE TABLE `medicalmission` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `ename` varchar(10) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `barangay` varchar(50) NOT NULL,
  `age` int(255) NOT NULL,
  `bday` date NOT NULL,
  `pnumber` varchar(50) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `diagnosis` varchar(100) NOT NULL,
  `mmission` varchar(50) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  `datecreated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicalmission`
--

INSERT INTO `medicalmission` (`id`, `fname`, `mname`, `lname`, `ename`, `fullname`, `address`, `barangay`, `age`, `bday`, `pnumber`, `gender`, `diagnosis`, `mmission`, `remarks`, `datecreated`) VALUES
(3, 'JAYRON', 'ESOY', 'CASTILLON', '', 'JAYRON ESOY CASTILLON ', 'LITTLE BAGUIO MIRAMONTE HEIGHTS', '180', 20, '2004-05-19', '09266515189', 'Male', 'COUGH AND COLD', 'Medical Mission', '', '2024-07-15');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `service_status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `service_status`) VALUES
(1, 'guarantee_letter', 1),
(2, 'financial_assistance', 1),
(3, 'educational_assistance', 1),
(4, 'tesda_scholarship', 1),
(5, 'kda_bkda', 1),
(6, 'medical_mission', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tesda`
--

CREATE TABLE `tesda` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `ename` varchar(10) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `barangay` varchar(50) NOT NULL,
  `age` int(255) NOT NULL,
  `bday` date NOT NULL,
  `pnumber` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `tesda` varchar(50) NOT NULL,
  `tstatus` varchar(50) NOT NULL,
  `precinct_num` varchar(50) NOT NULL,
  `datecreated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tesda`
--

INSERT INTO `tesda` (`id`, `fname`, `mname`, `lname`, `ename`, `fullname`, `address`, `barangay`, `age`, `bday`, `pnumber`, `email`, `gender`, `tesda`, `tstatus`, `precinct_num`, `datecreated`) VALUES
(1, 'MARK JOSEPH', 'CESUMISSION', 'VERCILLA', '', 'MARK JOSEPH CESUMISSION VERCILLA ', 'MIRAMONTE PARK', '180', 22, '2001-07-31', '09916854600', 'markvercilla@gmail.com', 'Male', 'DRIVING', 'pending', '1536D', '2024-07-15');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(50) NOT NULL,
  `user_id` bigint(50) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `usertype` varchar(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_id`, `username`, `password`, `gender`, `usertype`, `date`) VALUES
(1, 1, 'admin', 'admin1', '', 'admin', '2024-01-08'),
(4, 55346, 'nelorapa', 'marynel123', 'female', 'cos', '2024-04-27'),
(5, 574069, 'neloh', 'officeheadnel', 'female', 'officehead', '2024-04-27'),
(6, 39627, 'marynel', 'marynel1', 'female', 'admin', '2024-04-27'),
(7, 5650961, 'marynel', 'marynel1', 'female', 'admin', '2024-04-27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `educational`
--
ALTER TABLE `educational`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fname` (`fname`),
  ADD KEY `mname` (`mname`),
  ADD KEY `lname` (`lname`,`address`,`barangay`,`educational`,`age`,`bday`,`pnumber`,`gender`,`school`,`amount`),
  ADD KEY `status` (`estatus`),
  ADD KEY `extname` (`ename`),
  ADD KEY `email` (`email`),
  ADD KEY `precinct_num` (`precinct_num`),
  ADD KEY `fullname` (`fullname`);

--
-- Indexes for table `financial`
--
ALTER TABLE `financial`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `fname` (`fname`,`mname`,`lname`,`address`,`barangay`,`financial`,`age`,`bday`,`pnumber`,`civil`,`gender`,`bfname`,`bmname`,`blname`,`baddress`,`bage`,`bbday`,`bcivil`,`bgender`,`brelation`,`datecreated`) USING HASH,
  ADD KEY `amount` (`amount`),
  ADD KEY `fstatus` (`fstatus`),
  ADD KEY `prenum` (`bprecinct_num`),
  ADD KEY `extname` (`ename`),
  ADD KEY `bename` (`bename`),
  ADD KEY `bfullname` (`bfullname`),
  ADD KEY `fullname` (`fullname`),
  ADD KEY `precinct_num` (`precinct_num`);

--
-- Indexes for table `guarantee`
--
ALTER TABLE `guarantee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fname` (`fname`),
  ADD KEY `mname` (`mname`),
  ADD KEY `lname` (`lname`,`address`,`barangay`,`gletter`,`age`,`bday`,`pnumber`,`gender`,`hospital`,`diagnosis`,`amount`),
  ADD KEY `status` (`gstatus`),
  ADD KEY `ename` (`ename`),
  ADD KEY `fullname` (`fullname`);

--
-- Indexes for table `kda_bkda`
--
ALTER TABLE `kda_bkda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `precinct_num` (`precinct_num`),
  ADD KEY `lname` (`lname`),
  ADD KEY `fname` (`fname`),
  ADD KEY `mname` (`mname`),
  ADD KEY `ename` (`ename`),
  ADD KEY `fullname` (`fullname`),
  ADD KEY `bday` (`bday`),
  ADD KEY `age` (`age`),
  ADD KEY `address` (`address`),
  ADD KEY `brgy` (`barangay`),
  ADD KEY `phone_num` (`pnumber`),
  ADD KEY `team_type` (`teamtype`),
  ADD KEY `status` (`status`),
  ADD KEY `remarks` (`remarks`),
  ADD KEY `ename_2` (`ename`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `usertype` (`usertype`),
  ADD KEY `action` (`action`),
  ADD KEY `date` (`logdate`),
  ADD KEY `logdate` (`logdate`);

--
-- Indexes for table `medicalmission`
--
ALTER TABLE `medicalmission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fname` (`fname`),
  ADD KEY `mname` (`mname`),
  ADD KEY `lname` (`lname`,`address`,`barangay`,`age`,`bday`,`pnumber`,`gender`,`diagnosis`),
  ADD KEY `status` (`remarks`),
  ADD KEY `ename` (`ename`),
  ADD KEY `fullname` (`fullname`),
  ADD KEY `mmision` (`mmission`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_name` (`service_name`);

--
-- Indexes for table `tesda`
--
ALTER TABLE `tesda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fname` (`fname`),
  ADD KEY `mname` (`mname`),
  ADD KEY `lname` (`lname`,`address`,`barangay`,`tesda`,`age`,`bday`,`pnumber`,`gender`),
  ADD KEY `status` (`tstatus`),
  ADD KEY `extname` (`ename`),
  ADD KEY `email` (`email`),
  ADD KEY `precinct_num` (`precinct_num`),
  ADD KEY `fullname` (`fullname`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `username` (`username`),
  ADD KEY `password` (`password`),
  ADD KEY `usertype` (`usertype`),
  ADD KEY `gender` (`gender`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `educational`
--
ALTER TABLE `educational`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `financial`
--
ALTER TABLE `financial`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guarantee`
--
ALTER TABLE `guarantee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kda_bkda`
--
ALTER TABLE `kda_bkda`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=588;

--
-- AUTO_INCREMENT for table `medicalmission`
--
ALTER TABLE `medicalmission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tesda`
--
ALTER TABLE `tesda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
