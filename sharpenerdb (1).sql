-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2022 at 07:43 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sharpenerdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empid` int(10) NOT NULL,
  `fname` varchar(10) NOT NULL,
  `lname` varchar(10) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(35) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(6) NOT NULL,
  `adr1` varchar(25) NOT NULL,
  `adr2` varchar(25) NOT NULL,
  `city` varchar(10) NOT NULL,
  `country` varchar(10) NOT NULL,
  `pcode` int(10) NOT NULL,
  `desig` varchar(15) NOT NULL,
  `pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empid`, `fname`, `lname`, `phone`, `email`, `dob`, `gender`, `adr1`, `adr2`, `city`, `country`, `pcode`, `desig`, `pass`) VALUES
(17, 'stanley', 'stephen', 2147483647, 'stanley@gmail.com', '2004-06-08', 'male', 'kottayam town ', 'kottayam district /  kera', 'kottayam', 'india', 678989, 'front end devel', 'stanley123'),
(18, 'nidhin ', 'george', 2147483647, 'nidhin@gmail.com', '2022-03-03', 'male', 'kakkanad / ernakulam', 'kakkanad / ernakulam ', 'kochi', 'india', 892920, 'full stack deve', 'nid123'),
(19, 'rohith', 'pai', 2147483647, 'rohith@gmail.com', '2022-03-10', 'male', 'thammanam / ernakulam', 'ernamkulam district', 'kochi', 'india', 897890, 'developer', 'rohith@123'),
(20, 'afreena', 'bhai', 2147483647, 'afreena@gmail.com', '2022-03-21', 'female', 'fortkochi /  ernakulam', 'ernakulam district', 'ernakulam', 'india', 989898, 'software engine', 'afreena123'),
(21, 'joshni', 'jolly', 2147483647, 'joshni@gmail.com', '2022-03-24', 'female', 'thammanam', 'ernakulam', 'kochi', 'india', 682010, 'sales head', 'joshni123');

-- --------------------------------------------------------

--
-- Table structure for table `evnttable`
--

CREATE TABLE `evnttable` (
  `evid` int(10) NOT NULL,
  `evntname` varchar(50) NOT NULL,
  `evnttime` varchar(10) NOT NULL,
  `evntdesc` varchar(100) NOT NULL,
  `evntdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evnttable`
--

INSERT INTO `evnttable` (`evid`, `evntname`, `evnttime`, `evntdesc`, `evntdate`) VALUES
(10, 'project meeting', '3.pm', 'join the zoom link', '2022-03-31'),
(11, 'project meeting', '3.pm', 'join the zoom link', '2022-03-31'),
(12, 'monthly report ', '12 PM', 'join the zoom meeting ', '2022-03-07');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `srid` int(11) NOT NULL,
  `subj` varchar(100) NOT NULL,
  `stype` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(25) NOT NULL,
  `descrip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`srid`, `subj`, `stype`, `phone`, `email`, `descrip`) VALUES
(1, 'need a website', 'web application', 2147483647, 'client@gmail.com', 'want it immediatley'),
(2, 'need a static web application', 'webapplication', 2147483647, 'client@gmail.com', 'need a good quality website in low budget'),
(3, 'need a mobile application', 'android app', 2147483647, 'nikhil@gmail.com', 'need a good quality mobile app for storing the attendance details of employees');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `tid` int(11) NOT NULL,
  `usrname` varchar(25) NOT NULL,
  `usremail` varchar(25) NOT NULL,
  `mobile` int(10) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `department` varchar(25) NOT NULL,
  `priority` varchar(10) NOT NULL,
  `service` varchar(25) NOT NULL,
  `message` varchar(100) NOT NULL,
  `status` varchar(25) NOT NULL,
  `atchment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`tid`, `usrname`, `usremail`, `mobile`, `subject`, `department`, `priority`, `service`, `message`, `status`, `atchment`) VALUES
(1, 'Caleb antony', 'client@gmail.com', 2147483647, 'website not responding', 'Product development', 'high', 'bug issue', 'need immediate response', 'On  Hold', 'Null'),
(2, 'rueben tom', 'client@gmail.com', 2147483647, 'server not responding', 'Server & Security', 'high', 'server', 'ok da kuttappi', 'Customer replay', 'Null'),
(3, 'abin tom', 'client@gmail.com', 2147483647, 'file uploading not working', 'Product development', 'low', 'upload error', 'need immediate response', 'open', 'img1.jpg'),
(4, 'nikhil', 'nikhil@gmail.com', 2147483647, 'bug in the homepage', 'Product development', 'Medium', 'bug issue', 'need to resolve it', 'open', 'Nill');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usrid` int(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `utype` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usrid`, `name`, `email`, `password`, `utype`) VALUES
(1, 'admin', 'admin@123', 'admin', 'a'),
(23, 'stanley', 'stanley@gmail.com', 'stanley123', 'e'),
(24, 'nidhin ', 'nidhin@gmail.com', 'nid123', 'e'),
(25, 'rohith', 'rohith@gmail.com', 'rohith@123', 'e'),
(26, 'afreena', 'afreena@gmail.com', 'afreena123', 'e'),
(28, 'client', 'client@gmail.com', 'client123', 'c'),
(29, 'joshni', 'joshni@gmail.com', 'joshni123', 'e'),
(30, 'nikhil', 'nikhil@gmail.com', 'nikhil123', 'c');

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `wid` int(11) NOT NULL,
  `wstatus` varchar(25) NOT NULL,
  `srid` int(10) NOT NULL,
  `empid` int(10) NOT NULL,
  `wdate` date NOT NULL,
  `pymnt` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`wid`, `wstatus`, `srid`, `empid`, `wdate`, `pymnt`) VALUES
(16, 'In progress', 2, 17, '2022-03-20', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `evnttable`
--
ALTER TABLE `evnttable`
  ADD PRIMARY KEY (`evid`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`srid`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usrid`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`wid`),
  ADD KEY `srid` (`srid`),
  ADD KEY `empid` (`empid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `empid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `evnttable`
--
ALTER TABLE `evnttable`
  MODIFY `evid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `srid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usrid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `work`
--
ALTER TABLE `work`
  ADD CONSTRAINT `empid` FOREIGN KEY (`empid`) REFERENCES `employee` (`empid`),
  ADD CONSTRAINT `srid` FOREIGN KEY (`srid`) REFERENCES `service` (`srid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
