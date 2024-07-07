-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2024 at 02:35 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
-- Table structure for table `burial`
--

CREATE TABLE `burial` (
  `id` bigint(50) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `barangay` varchar(100) NOT NULL,
  `burial` varchar(50) NOT NULL,
  `age` int(255) NOT NULL,
  `bday` date NOT NULL,
  `pnum` varchar(50) NOT NULL,
  `civil` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `bfname` varchar(255) NOT NULL,
  `bmname` varchar(255) NOT NULL,
  `blname` varchar(255) NOT NULL,
  `baddress` varchar(50) NOT NULL,
  `bage` int(255) NOT NULL,
  `bbday` date NOT NULL,
  `bcivil` varchar(50) NOT NULL,
  `bgender` varchar(50) NOT NULL,
  `brelation` varchar(50) NOT NULL,
  `bstatus` varchar(50) NOT NULL,
  `amount` decimal(65,0) NOT NULL,
  `datecreated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `burial`
--

INSERT INTO `burial` (`id`, `fname`, `mname`, `lname`, `address`, `barangay`, `burial`, `age`, `bday`, `pnum`, `civil`, `gender`, `bfname`, `bmname`, `blname`, `baddress`, `bage`, `bbday`, `bcivil`, `bgender`, `brelation`, `bstatus`, `amount`, `datecreated`) VALUES
(1, 'ANALYN', 'FELIZARTA', 'ANAS', '33 PECANA PECHAYAN CAMARIN', '178', 'Burial Assistance', 39, '1985-02-05', '09950805373', 'Married', 'Female', 'ALFONSA', 'DEL MONTE', 'FELIZARTA', '33 PECANA PECHAYAN CAMARIN', 48, '1976-03-18', 'Single', 'Female', 'DAUGHTER', 'Approved', 5000, '2024-05-28'),
(2, 'RELET', 'MONES', 'DIESTA', 'PH 12 RIVERSIDE', '188', 'Burial Assistance', 54, '1970-04-16', '09511558994', 'Married', 'Female', 'EDGARDO', 'PERPUSE', 'MONES', 'PH 12 RIVERSIDE', 72, '1952-03-18', 'Single', 'Male', 'DAUGHTER', 'Approved', 5000, '2024-05-28');

-- --------------------------------------------------------

--
-- Table structure for table `financial`
--

CREATE TABLE `financial` (
  `id` bigint(50) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `barangay` varchar(100) NOT NULL,
  `financial` varchar(50) NOT NULL,
  `age` int(255) NOT NULL,
  `bday` date NOT NULL,
  `pnum` varchar(50) NOT NULL,
  `civil` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `bfname` varchar(255) NOT NULL,
  `bmname` varchar(255) NOT NULL,
  `blname` varchar(255) NOT NULL,
  `baddress` varchar(50) NOT NULL,
  `bage` int(255) NOT NULL,
  `bbday` date NOT NULL,
  `bcivil` varchar(50) NOT NULL,
  `bgender` varchar(50) NOT NULL,
  `brelation` varchar(50) NOT NULL,
  `fstatus` varchar(50) NOT NULL,
  `amount` decimal(65,0) NOT NULL,
  `datecreated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `financial`
--

INSERT INTO `financial` (`id`, `fname`, `mname`, `lname`, `address`, `barangay`, `financial`, `age`, `bday`, `pnum`, `civil`, `gender`, `bfname`, `bmname`, `blname`, `baddress`, `bage`, `bbday`, `bcivil`, `bgender`, `brelation`, `fstatus`, `amount`, `datecreated`) VALUES
(1, 'JOHN', 'BARLAAN', 'FERNANDEZ', 'MANGGAHAN PUROK 7 MALARIA', '185', 'Financial Assistance', 25, '1998-07-09', '09973925252', 'Single', 'Male', 'JOHN', 'BARLAAN', 'FERNANDEZ', 'MANGGAHAN PUROK 7 MALARIA', 25, '1998-07-09', 'Single', 'Male', 'SELF', 'Approved', 2000, '2024-05-28'),
(2, 'HONEY GEL', 'RONOLO', 'BACALOCOS', '6-B NHC ROAD NHC VILLAGE TE TALA', '186', 'Financial Assistance', 24, '1999-06-12', '09817381995', 'Single', 'Female', 'HONEY GEL', 'RONOLO', 'BACALOCOS', '6-B NHC ROAD NHC VILLAGE TE TALA', 24, '1999-06-12', 'Single', 'Female', 'SELF', 'Approved', 2000, '2024-05-28');

-- --------------------------------------------------------

--
-- Table structure for table `guarantee`
--

CREATE TABLE `guarantee` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `barangay` varchar(50) NOT NULL,
  `gletter` varchar(50) NOT NULL,
  `age` int(255) NOT NULL,
  `bday` date NOT NULL,
  `pnumber` varchar(50) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `hospital` varchar(100) NOT NULL,
  `diagnosis` varchar(100) NOT NULL,
  `gstatus` varchar(50) NOT NULL,
  `amount` decimal(65,0) NOT NULL,
  `datecreated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guarantee`
--

INSERT INTO `guarantee` (`id`, `fname`, `mname`, `lname`, `address`, `barangay`, `gletter`, `age`, `bday`, `pnumber`, `gender`, `hospital`, `diagnosis`, `gstatus`, `amount`, `datecreated`) VALUES
(1, 'ALEX', 'BERIDO', 'PECUNDO', 'PH 6 PKG 2 BLK 5 LOT 14 SITIO 3 DAU ST. CAMARIN', '178', 'Guarantee Letter', 26, '1997-07-09', '09636471000', 'Male', 'Healthway-Qualimed Medical Center SJDM', 'DENTAL', 'Approved', 2000, '2024-05-28'),
(2, 'ALLAN', 'BUISING', 'ADONES', 'SITIO DAGAT DAGATAN AREA D. CAMARIN', '178', 'Guarantee Letter', 36, '1987-08-04', '09982540415', 'Male', 'Dr. Jose N. Rodriguez Memorial Hospital', 'HIGH BLOOD PRESURE', 'Approved', 1500, '2024-05-28');

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
(538, 'admin', 'admin', 'User admin login unsuccessful', '2024-05-28 15:39:04');

-- --------------------------------------------------------

--
-- Table structure for table `medical`
--

CREATE TABLE `medical` (
  `id` bigint(50) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `barangay` varchar(100) NOT NULL,
  `medical` varchar(50) NOT NULL,
  `age` int(255) NOT NULL,
  `bday` date NOT NULL,
  `pnum` varchar(50) NOT NULL,
  `civil` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `bfname` varchar(255) NOT NULL,
  `bmname` varchar(255) NOT NULL,
  `blname` varchar(255) NOT NULL,
  `baddress` varchar(50) NOT NULL,
  `bage` int(255) NOT NULL,
  `bbday` date NOT NULL,
  `bcivil` varchar(50) NOT NULL,
  `bgender` varchar(50) NOT NULL,
  `brelation` varchar(50) NOT NULL,
  `mstatus` varchar(50) NOT NULL,
  `amount` decimal(65,0) NOT NULL,
  `datecreated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medical`
--

INSERT INTO `medical` (`id`, `fname`, `mname`, `lname`, `address`, `barangay`, `medical`, `age`, `bday`, `pnum`, `civil`, `gender`, `bfname`, `bmname`, `blname`, `baddress`, `bage`, `bbday`, `bcivil`, `bgender`, `brelation`, `mstatus`, `amount`, `datecreated`) VALUES
(1, 'ALLY KIM', 'ISIP', 'NAVARRO', '11242 PHASE 6 PUROK 2 AREA D CAMARIN', '178', 'Medical Assistance', 23, '2000-10-10', '09812013421', 'Single', 'Female', 'ALLY KIM', 'ISIP', 'NAVARRO', '11242 PHASE 6 PUROK 2 AREA D CAMARIN', 23, '2000-10-10', 'Single', 'Female', 'SELF', 'Approved', 2000, '2024-05-28'),
(2, 'ANA', 'DOMINGUEZ', 'DUCAY', '1600 PUROK LALOMA SITIO 6 AREA D CAMARIN', '178', 'Medical Assistance', 32, '1992-03-11', '09277727993', 'Single', 'Female', 'HILDA', 'DOMINGUEZ', 'DITAN', '1600 PUROK LALOMA SITIO 6 AREA D CAMARIN', 18, '2005-06-14', 'Single', 'Female', 'MOTHER', 'Approved', 2000, '2024-05-28');

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
-- Indexes for table `burial`
--
ALTER TABLE `burial`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `fname` (`fname`,`mname`,`lname`,`address`,`barangay`,`burial`,`age`,`bday`,`pnum`,`civil`,`gender`,`bfname`,`bmname`,`blname`,`baddress`,`bage`,`bbday`,`bcivil`,`bgender`,`brelation`,`datecreated`) USING HASH,
  ADD KEY `amount` (`amount`),
  ADD KEY `bstatus` (`bstatus`);

--
-- Indexes for table `financial`
--
ALTER TABLE `financial`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `fname` (`fname`,`mname`,`lname`,`address`,`barangay`,`financial`,`age`,`bday`,`pnum`,`civil`,`gender`,`bfname`,`bmname`,`blname`,`baddress`,`bage`,`bbday`,`bcivil`,`bgender`,`brelation`,`datecreated`) USING HASH,
  ADD KEY `amount` (`amount`),
  ADD KEY `fstatus` (`fstatus`);

--
-- Indexes for table `guarantee`
--
ALTER TABLE `guarantee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fname` (`fname`),
  ADD KEY `mname` (`mname`),
  ADD KEY `lname` (`lname`,`address`,`barangay`,`gletter`,`age`,`bday`,`pnumber`,`gender`,`hospital`,`diagnosis`,`amount`),
  ADD KEY `status` (`gstatus`);

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
-- Indexes for table `medical`
--
ALTER TABLE `medical`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `fname` (`fname`,`mname`,`lname`,`address`,`barangay`,`medical`,`age`,`bday`,`pnum`,`civil`,`gender`,`bfname`,`bmname`,`blname`,`baddress`,`bage`,`bbday`,`bcivil`,`bgender`,`brelation`,`datecreated`) USING HASH,
  ADD KEY `amount` (`amount`),
  ADD KEY `status` (`mstatus`);

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
-- AUTO_INCREMENT for table `burial`
--
ALTER TABLE `burial`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `financial`
--
ALTER TABLE `financial`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guarantee`
--
ALTER TABLE `guarantee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=539;

--
-- AUTO_INCREMENT for table `medical`
--
ALTER TABLE `medical`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
