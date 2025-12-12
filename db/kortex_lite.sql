-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2024 at 07:39 PM
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
-- Database: `kortex_lite`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `photo`) VALUES
(1, 'Mayuri K', 'mayuri.infospace@gmail.com', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', '05profile.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `case_register`
--

CREATE TABLE `case_register` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `case_no` varchar(20) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `court` varchar(50) NOT NULL,
  `case_type` varchar(50) NOT NULL,
  `case_stage` varchar(50) NOT NULL,
  `legel_acts` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `filling_date` date NOT NULL,
  `hearing_date` date NOT NULL,
  `opposite_lawyer` varchar(50) NOT NULL,
  `total_fees` int(20) NOT NULL,
  `unpaid` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `case_register`
--

INSERT INTO `case_register` (`id`, `title`, `case_no`, `client_name`, `court`, `case_type`, `case_stage`, `legel_acts`, `description`, `filling_date`, `hearing_date`, `opposite_lawyer`, `total_fees`, `unpaid`) VALUES
(1, 'Land Dispute Case', 'LD001', '1', '2', '1', '1', '1', 'Dispute over land ownership between two parties.', '2023-05-20', '2024-01-15', 'John Smith', 5000, 2000),
(2, 'Divorce Case', 'DV002', '2', '3', '2', '2', '2', 'Legal separation between married couple.', '2023-07-10', '2024-02-20', 'Emily Johnson', 7500, 3000),
(3, 'Employment Discrimination Case', 'ED003', '3', '1', '1', '3', '4', 'Allegations of workplace discrimination.', '2023-09-05', '2024-03-10', 'Rachel White', 10000, 4000),
(4, 'Personal Injury Case', 'PI004', '4', '4', '1', '4', '3', 'Compensation claim for injuries sustained in a car accident.', '2023-10-15', '2024-04-05', 'Michael Brown', 8000, 2000),
(5, 'Criminal Case', 'CR005', '5', '6', '3', '5', '5', 'Alleged theft of property.', '2023-11-20', '2024-05-15', 'David Wilson', 12000, 6000),
(6, 'Child Custody Case', 'CC006', '6', '7', '2', '2', '6', 'Dispute over custody of children in divorce proceedings.', '2024-01-05', '2024-06-20', 'Sarah Davis', 9000, 3000),
(7, 'Tax Evasion Case', 'TE007', '7', '8', '1', '6', '7', 'Alleged evasion of taxes by a business entity.', '2024-02-10', '2024-07-05', 'Daniel Clark', 15000, 7000),
(8, 'Environmental Law Violation Case', 'EV008', '8', '10', '1', '7', '8', 'Violation of environmental regulations by a corporation.', '2024-03-20', '2024-08-10', 'Olivia Martinez', 11000, 5000),
(9, 'Employment Contract Dispute Case', 'EC009', '9', '9', '1', '3', '9', 'Dispute over terms of employment contract.', '2024-04-15', '2024-09-20', 'Matthew Garcia', 8500, 2000),
(10, 'Adoption Case', 'AD010', '10', '5', '2', '2', '10', 'Legal process of adopting a child.', '2024-05-10', '2024-10-15', 'Ava Lee', 9500, 4000);

-- --------------------------------------------------------

--
-- Table structure for table `case_stage`
--

CREATE TABLE `case_stage` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL COMMENT '0-active,1-deactive'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `case_stage`
--

INSERT INTO `case_stage` (`id`, `name`, `status`) VALUES
(1, 'Initial Review', '0'),
(2, 'Investigation', 'Pending'),
(3, 'Legal Review', '0'),
(4, 'Resolution Negotiation', 'Pending'),
(5, 'Final Decision', 'Pending'),
(6, 'Appeal Process', 'Pending'),
(7, 'Settlement', 'Completed'),
(8, 'Closure', 'Completed'),
(9, 'Reopening', 'Pending'),
(10, 'Litigation', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `case_types`
--

CREATE TABLE `case_types` (
  `id` int(11) NOT NULL,
  `case_type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `case_types`
--

INSERT INTO `case_types` (`id`, `case_type`) VALUES
(1, 'Civil'),
(2, 'Criminal'),
(3, 'Family'),
(4, 'Employment'),
(5, 'Personal Injury'),
(6, 'Tax'),
(7, 'Environmental'),
(8, 'Contract'),
(9, 'Intellectual Property'),
(10, 'Immigration');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL COMMENT '0-active,1-deactive'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `gender`, `dob`, `email`, `mobile`, `address`, `status`) VALUES
(1, 'John Doe', 'Male', '1990-05-15', 'john.doe@example.com', '1234567890', '123 Main St, City, Country', '0'),
(2, 'Jane Smith', 'Female', '1985-09-25', 'jane.smith@example.com', '9876543210', '456 Elm St, Town, Country', '0'),
(3, 'Michael Johnson', 'Male', '1978-11-10', 'michael.johnson@example.com', '4567890123', '789 Oak St, Village, Country', '0'),
(4, 'Emily Brown', 'Female', '1995-03-20', 'emily.brown@example.com', '7890123456', '321 Pine St, Hamlet, Country', '0'),
(5, 'David Lee', 'Male', '1980-07-12', 'david.lee@example.com', '2345678901', '987 Maple St, City, Country', '0'),
(6, 'Sarah Wilson', 'Female', '1992-01-05', 'sarah.wilson@example.com', '8901234567', '654 Cedar St, Town, Country', '0'),
(7, 'Daniel Martinez', 'Male', '1987-04-30', 'daniel.martinez@example.com', '3456789012', '789 Birch St, Village, Country', '0'),
(8, 'Olivia Taylor', 'Female', '1983-08-17', 'olivia.taylor@example.com', '9012345678', '543 Pine St, Hamlet, Country', '0'),
(9, 'Matthew Anderson', 'Male', '1975-12-22', 'matthew.anderson@example.com', '0123456789', '234 Oak St, City, Country', '0'),
(10, 'Ava Garcia', 'Female', '1998-06-08', 'ava.garcia@example.com', '5678901234', '876 Elm St, Town, Country', '0');

-- --------------------------------------------------------

--
-- Table structure for table `court`
--

CREATE TABLE `court` (
  `id` int(11) NOT NULL,
  `court_category` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `court`
--

INSERT INTO `court` (`id`, `court_category`) VALUES
(1, 'Supreme Court'),
(2, 'High Court'),
(3, 'District Court'),
(4, 'Appellate Court'),
(5, 'Juvenile Court'),
(6, 'Family Court'),
(7, 'Tax Court'),
(8, 'Administrative Court'),
(9, 'Magistrate Court'),
(10, 'Probate Court');

-- --------------------------------------------------------

--
-- Table structure for table `legel_acts`
--

CREATE TABLE `legel_acts` (
  `id` int(11) NOT NULL,
  `act_name` varchar(50) NOT NULL,
  `status` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `legel_acts`
--

INSERT INTO `legel_acts` (`id`, `act_name`, `status`) VALUES
(1, 'Consumer Protection Act', 0),
(2, 'Family and Medical Leave Act', 0),
(3, 'Americans with Disabilities Act', 0),
(4, 'Civil Rights Act', 0),
(5, 'Fair Labor Standards Act', 0),
(6, 'Clean Air Act', 0),
(7, 'Occupational Safety and Health Act', 0),
(8, 'Freedom of Information Act', 0),
(9, 'National Environmental Policy Act', 0),
(10, 'Equal Pay Act', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `case_register`
--
ALTER TABLE `case_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `case_stage`
--
ALTER TABLE `case_stage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `case_types`
--
ALTER TABLE `case_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `court`
--
ALTER TABLE `court`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `legel_acts`
--
ALTER TABLE `legel_acts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `case_register`
--
ALTER TABLE `case_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `case_stage`
--
ALTER TABLE `case_stage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `case_types`
--
ALTER TABLE `case_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `court`
--
ALTER TABLE `court`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `legel_acts`
--
ALTER TABLE `legel_acts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
