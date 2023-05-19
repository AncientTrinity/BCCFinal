-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2023 at 08:04 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belizebuscompanion`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `busid` int(11) NOT NULL,
  `busnumber` tinytext NOT NULL,
  `buscompid` int(11) NOT NULL,
  `model` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `liscenseplate` tinytext NOT NULL,
  `capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`busid`, `busnumber`, `buscompid`, `model`, `image`, `year`, `liscenseplate`, `capacity`) VALUES
(1, '4200', 5, ' Blue Bird All American school bus', '', 2012, 'D-0569854', 77),
(8, 'B4242', 8, 'Blue Bird ', '', 2008, 'D-696969', 77),
(9, 'V-5252', 11, 'Blue Bird School Bus', '', 2005, 'D-1845', 77),
(10, 'R-1456', 14, 'Blue Bird School Bus', '', 2007, 'D-9652', 77),
(11, 'B-1554', 17, 'GreyHound A/C Bus', '', 2008, 'D-5487', 88),
(12, 'BT-45678', 18, 'All American Blue Bird Bus', '', 2006, '', 77),
(13, 'S-8521', 12, 'Prevost H3-45', '', 2000, 'D-5648', 54),
(14, 'F-9563', 4, 'Yutong A/c Bus', '', 2020, 'D-0635', 88);

-- --------------------------------------------------------

--
-- Table structure for table `buscompanies`
--

CREATE TABLE `buscompanies` (
  `buscompid` int(11) NOT NULL,
  `buscompname` varchar(255) NOT NULL,
  `phonenumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buscompanies`
--

INSERT INTO `buscompanies` (`buscompid`, `buscompname`, `phonenumber`) VALUES
(1, 'James', 0),
(2, 'McFadzean', 0),
(3, 'Westline', 0),
(4, 'Floralia', 0),
(5, 'Morales', 0),
(6, 'Shaws', 0),
(7, 'Russel', 0),
(8, 'Brads', 0),
(9, 'Speed Busline', 0),
(10, 'Tillett\'s', 0),
(11, 'Valencia', 0),
(12, 'Silvas', 0),
(13, 'Ghillharry', 0),
(14, 'R-Tillett', 0),
(15, 'CHElls', 0),
(16, 'A-Tillett', 0),
(17, 'Belize Bus Cooperative ', 0),
(18, 'Belize Transit System', 0);

-- --------------------------------------------------------

--
-- Table structure for table `busschedule`
--

CREATE TABLE `busschedule` (
  `busscheid` int(11) NOT NULL,
  `busid` int(11) NOT NULL,
  `begin_locationid` int(11) NOT NULL,
  `end_locationid` int(11) NOT NULL,
  `busdepart` time NOT NULL,
  `busarrival` time NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `busschedule`
--

INSERT INTO `busschedule` (`busscheid`, `busid`, `begin_locationid`, `end_locationid`, `busdepart`, `busarrival`, `date`) VALUES
(1, 8, 1, 2, '08:00:00', '08:55:00', '2023-05-02'),
(2, 8, 2, 3, '09:00:00', '10:00:00', '2023-05-01'),
(3, 14, 3, 4, '10:00:00', '11:30:00', '2023-05-03'),
(8, 12, 1, 3, '03:30:00', '05:00:00', '2023-05-01'),
(9, 1, 1, 4, '02:45:00', '06:15:00', '2023-05-01'),
(10, 9, 1, 4, '03:30:00', '07:15:00', '2023-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `locationofstop`
--

CREATE TABLE `locationofstop` (
  `stoplocid` int(11) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `locationofstop`
--

INSERT INTO `locationofstop` (`stoplocid`, `location`) VALUES
(1, 'Ranchito'),
(2, 'Calcutta'),
(3, 'San Joaquin'),
(4, 'Concepcion'),
(5, 'San Narciso'),
(6, 'San Roman'),
(7, 'Corozal'),
(8, 'Orange Walk'),
(9, 'Buena Vista'),
(10, 'San Pablo'),
(11, 'Carmelita'),
(12, 'Crooked Tree'),
(13, 'Biscayne'),
(14, 'Sand Hill'),
(15, 'LadyVille'),
(16, 'Belize City'),
(17, 'HattieVille'),
(18, 'Burrel Boom'),
(19, 'La Democracia'),
(20, 'Mahogany Heights'),
(21, 'Cotton Tree'),
(22, 'Belmopan City');

-- --------------------------------------------------------

--
-- Table structure for table `paymentoptions`
--

CREATE TABLE `paymentoptions` (
  `paymentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `cardtype` tinyint(1) NOT NULL COMMENT '1= Debitcard 2= credit card',
  `info` varchar(60) NOT NULL,
  `securitypin` int(11) NOT NULL,
  `expiredate` date NOT NULL,
  `amountpaid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `seatid` int(11) NOT NULL,
  `busid` int(60) NOT NULL,
  `seatno` text NOT NULL,
  `is_booked` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`seatid`, `busid`, `seatno`, `is_booked`) VALUES
(3, 1, 'A1', 0),
(4, 1, 'A2', 0),
(7, 1, 'B1', 0),
(8, 1, 'B2', 0),
(11, 1, 'C1', 0),
(12, 1, 'C2', 0),
(15, 1, 'D1', 0),
(16, 1, 'D2', 0),
(17, 1, 'F1', 0),
(18, 1, 'F2', 0),
(19, 1, 'G1', 0),
(20, 1, 'G2', 0),
(21, 8, 'A1', 0),
(22, 8, 'A2', 0),
(23, 8, 'B1', 0),
(24, 8, 'B2', 0),
(25, 8, 'C1', 0),
(26, 8, 'C2', 0),
(27, 8, 'D1', 0),
(28, 8, 'D2', 0),
(29, 8, 'F1', 0),
(30, 8, 'F2', 0),
(31, 8, 'G1', 0),
(32, 8, 'G2', 0),
(33, 9, 'A1', 0),
(34, 9, 'A2', 0),
(35, 9, 'B1', 0),
(36, 9, 'B2', 0),
(37, 9, 'C1', 0),
(38, 9, 'C2', 0),
(39, 9, 'D1', 0),
(40, 9, 'D2', 0),
(41, 9, 'F1', 0),
(42, 9, 'F2', 0),
(43, 9, 'G1', 0),
(44, 9, 'G2', 0),
(45, 10, 'A1', 0),
(46, 10, 'A2', 0),
(47, 10, 'B1', 0),
(48, 10, 'B2', 0),
(49, 10, 'C1', 0),
(50, 10, 'C2', 0),
(51, 10, 'D1', 0),
(52, 10, 'D2', 0),
(53, 10, 'F1', 0),
(54, 10, 'F2', 0),
(55, 10, 'G1', 0),
(56, 10, 'G2', 0),
(57, 11, 'A1', 0),
(58, 11, 'A2', 0),
(59, 11, 'B1', 0),
(60, 11, 'B2', 0),
(61, 11, 'C1', 0),
(62, 11, 'C2', 0),
(63, 11, 'D1', 0),
(64, 11, 'D2', 0),
(65, 11, 'F1', 0),
(66, 11, 'F2', 0),
(67, 11, 'G1', 0),
(68, 11, 'G2', 0),
(69, 12, 'A1', 0),
(70, 12, 'A2', 0),
(71, 12, 'B1', 0),
(72, 12, 'B2', 0),
(73, 12, 'C1', 0),
(74, 12, 'C2', 0),
(75, 12, 'D1', 0),
(76, 12, 'D2', 0),
(77, 12, 'F1', 0),
(78, 12, 'F2', 0),
(79, 12, 'G1', 0),
(80, 12, 'G2', 0),
(81, 13, 'A1', 0),
(82, 13, 'A2', 0),
(83, 13, 'B1', 0),
(84, 13, 'B2', 0),
(85, 13, 'C1', 0),
(86, 13, 'C2', 0),
(87, 13, 'D1', 0),
(88, 13, 'D2', 0),
(89, 13, 'F1', 0),
(90, 13, 'F2', 0),
(91, 13, 'G1', 0),
(92, 13, 'G2', 0),
(93, 14, 'A1', 0),
(94, 14, 'A2', 0),
(95, 14, 'B1', 0),
(96, 14, 'B2', 0),
(97, 14, 'C1', 0),
(98, 14, 'C2', 0),
(99, 14, 'D1', 0),
(100, 14, 'D2', 0),
(101, 14, 'F1', 0),
(102, 14, 'F2', 0),
(103, 14, 'G1', 0),
(104, 14, 'G2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `seats_booking`
--

CREATE TABLE `seats_booking` (
  `id` int(11) NOT NULL,
  `seat_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seats_booking`
--

INSERT INTO `seats_booking` (`id`, `seat_no`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, '9'),
(10, '10');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticketid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `seatid` int(11) NOT NULL,
  `busscheid` int(11) NOT NULL,
  `trip_detid` int(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `tripid` int(11) NOT NULL,
  `bus_terminal` varchar(60) NOT NULL,
  `location` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`tripid`, `bus_terminal`, `location`) VALUES
(1, 'Corozal Bus Terminal', 'Corozal Town'),
(2, 'O.W Bus Terminal', 'Orange Walk Town'),
(3, 'Belize City Terminal', 'Belize City'),
(4, 'Belmopan Bus Terminal', 'Belmopan City');

-- --------------------------------------------------------

--
-- Table structure for table `trip_detail`
--

CREATE TABLE `trip_detail` (
  `trip_detid` int(60) NOT NULL,
  `destination` int(3) NOT NULL,
  `busschedid` int(60) NOT NULL,
  `pickuploc` int(11) NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trip_detail`
--

INSERT INTO `trip_detail` (`trip_detid`, `destination`, `busschedid`, `pickuploc`, `cost`) VALUES
(1, 8, 1, 2, 6),
(3, 16, 2, 11, 12),
(4, 22, 3, 17, 12),
(6, 8, 8, 11, 10),
(7, 22, 9, 5, 12);

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `userid` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phonenumber` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `verify_token` varchar(191) NOT NULL,
  `verify_status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`userid`, `fname`, `lname`, `email`, `address`, `phonenumber`, `password`, `verify_token`, `verify_status`, `created_at`) VALUES
(1, 'victor', 'Tillett', 'victillettjr@gmail.com', 'Test Address', 123456, '12345', '332090c47fdc4eda613c91014fc4113c', 1, '2023-05-16 04:29:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`busid`),
  ADD KEY `buscompid` (`buscompid`),
  ADD KEY `busnumber` (`busnumber`(255)),
  ADD KEY `busnumber_2` (`busnumber`(255));

--
-- Indexes for table `buscompanies`
--
ALTER TABLE `buscompanies`
  ADD PRIMARY KEY (`buscompid`);

--
-- Indexes for table `busschedule`
--
ALTER TABLE `busschedule`
  ADD PRIMARY KEY (`busscheid`),
  ADD KEY `busid` (`busid`),
  ADD KEY `begin_locationid` (`begin_locationid`),
  ADD KEY `end_locationid` (`end_locationid`);

--
-- Indexes for table `locationofstop`
--
ALTER TABLE `locationofstop`
  ADD PRIMARY KEY (`stoplocid`);

--
-- Indexes for table `paymentoptions`
--
ALTER TABLE `paymentoptions`
  ADD PRIMARY KEY (`paymentid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`seatid`),
  ADD KEY `busnumber` (`busid`),
  ADD KEY `busid` (`busid`);

--
-- Indexes for table `seats_booking`
--
ALTER TABLE `seats_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticketid`),
  ADD KEY `seatid` (`seatid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `busscheid` (`busscheid`),
  ADD KEY `trip_detid` (`trip_detid`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`tripid`);

--
-- Indexes for table `trip_detail`
--
ALTER TABLE `trip_detail`
  ADD PRIMARY KEY (`trip_detid`),
  ADD KEY `bus_start` (`destination`),
  ADD KEY `busschedid` (`busschedid`),
  ADD KEY `pickuploc` (`pickuploc`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `busid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `buscompanies`
--
ALTER TABLE `buscompanies`
  MODIFY `buscompid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `busschedule`
--
ALTER TABLE `busschedule`
  MODIFY `busscheid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `locationofstop`
--
ALTER TABLE `locationofstop`
  MODIFY `stoplocid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `paymentoptions`
--
ALTER TABLE `paymentoptions`
  MODIFY `paymentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seat`
--
ALTER TABLE `seat`
  MODIFY `seatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `seats_booking`
--
ALTER TABLE `seats_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticketid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `tripid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trip_detail`
--
ALTER TABLE `trip_detail`
  MODIFY `trip_detid` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bus`
--
ALTER TABLE `bus`
  ADD CONSTRAINT `bus_ibfk_1` FOREIGN KEY (`buscompid`) REFERENCES `buscompanies` (`buscompid`);

--
-- Constraints for table `busschedule`
--
ALTER TABLE `busschedule`
  ADD CONSTRAINT `busschedule_ibfk_3` FOREIGN KEY (`busid`) REFERENCES `bus` (`busid`),
  ADD CONSTRAINT `busschedule_ibfk_4` FOREIGN KEY (`begin_locationid`) REFERENCES `trips` (`tripid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `busschedule_ibfk_5` FOREIGN KEY (`end_locationid`) REFERENCES `trips` (`tripid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `paymentoptions`
--
ALTER TABLE `paymentoptions`
  ADD CONSTRAINT `paymentoptions_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userinfo` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`busid`) REFERENCES `bus` (`busid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`seatid`) REFERENCES `seat` (`seatid`),
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`userid`) REFERENCES `userinfo` (`userid`),
  ADD CONSTRAINT `ticket_ibfk_4` FOREIGN KEY (`busscheid`) REFERENCES `busschedule` (`busscheid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_5` FOREIGN KEY (`trip_detid`) REFERENCES `trip_detail` (`trip_detid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trip_detail`
--
ALTER TABLE `trip_detail`
  ADD CONSTRAINT `trip_detail_ibfk_3` FOREIGN KEY (`destination`) REFERENCES `locationofstop` (`stoplocid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trip_detail_ibfk_5` FOREIGN KEY (`busschedid`) REFERENCES `busschedule` (`busscheid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trip_detail_ibfk_6` FOREIGN KEY (`pickuploc`) REFERENCES `locationofstop` (`stoplocid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
