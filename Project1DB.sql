-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Oct 09, 2016 at 08:11 PM
-- Server version: 5.5.42
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Project1DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `Clients`
--

CREATE TABLE `Clients` (
  `ClientsID` int(11) NOT NULL COMMENT 'Primary key',
  `Client_Name` varchar(70) DEFAULT NULL,
  `Client_Address` varchar(250) DEFAULT NULL,
  `Client_Contact_Number` int(20) DEFAULT NULL,
  `Clients_Contact_Name` varchar(45) DEFAULT NULL,
  `Zip_Code_Zip_Code` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Clients`
--

INSERT INTO `Clients` (`ClientsID`, `Client_Name`, `Client_Address`, `Client_Contact_Number`, `Clients_Contact_Name`, `Zip_Code_Zip_Code`) VALUES
(1, 'Microsoft', 'Street 15', 12121212, 'James', 4200),
(3, 'Oracle', 'Road 16', 33488369, 'Vivi', 8400),
(4, 'Honeywell', 'Street', 48675422, 'Ola', 2800),
(5, 'Lenovo', 'C_Street', 22347890, 'Xi li', 3400),
(6, 'Apple', 'A_Road', 987664543, 'Steve', 3400);

-- --------------------------------------------------------

--
-- Table structure for table `Projects`
--

CREATE TABLE `Projects` (
  `ProjectID` int(11) NOT NULL,
  `Project_Name` varchar(80) DEFAULT NULL,
  `Project_Description` varchar(500) DEFAULT NULL,
  `Project_Start_Date` datetime DEFAULT NULL,
  `Project_End_Date` datetime DEFAULT NULL,
  `Other_Project_Details` varchar(500) DEFAULT NULL,
  `Clients_ClientsID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Projects`
--

INSERT INTO `Projects` (`ProjectID`, `Project_Name`, `Project_Description`, `Project_Start_Date`, `Project_End_Date`, `Other_Project_Details`, `Clients_ClientsID`) VALUES
(1, 'New WEB_Form', NULL, '2016-02-25 00:00:00', '2016-05-30 00:00:00', 'No Comment', 4),
(2, 'Marketing LandingPage', NULL, '2016-08-10 00:00:00', '2016-09-10 00:00:00', 'Nice', 3),
(3, 'Web Solution', NULL, '2016-08-12 00:00:00', '2017-01-02 00:00:00', 'New Soluiton', 4),
(4, 'AdOn - new', NULL, '2016-09-09 00:00:00', '2017-02-08 00:00:00', '-', 5),
(5, 'New -Paper,', NULL, '2016-10-21 00:00:00', '2017-03-01 00:00:00', 'Paper solution', 1),
(6, 'Web-Project1', NULL, '2016-10-10 00:00:00', '2016-11-10 00:00:00', 'New WEB', 6);

-- --------------------------------------------------------

--
-- Table structure for table `Projects_has_Resources`
--

CREATE TABLE `Projects_has_Resources` (
  `Projects_ProjectID` int(11) NOT NULL,
  `Resources_ResourceID` int(11) NOT NULL,
  `From_Date_Time` date DEFAULT NULL,
  `To_Date_Time` date DEFAULT NULL,
  `Hourly_Usage_Rate` decimal(2,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Projects_has_Resources`
--

INSERT INTO `Projects_has_Resources` (`Projects_ProjectID`, `Resources_ResourceID`, `From_Date_Time`, `To_Date_Time`, `Hourly_Usage_Rate`) VALUES
(1, 1, '2016-09-10', '2017-01-02', '45'),
(1, 2, '2016-09-10', '2016-12-30', '7'),
(2, 3, '2017-01-02', '2017-03-30', '45'),
(2, 5, '2017-02-02', '2017-03-12', '23'),
(2, 7, '2017-02-15', '2017-05-05', '87'),
(2, 8, '2016-09-19', '2016-11-30', '99'),
(5, 1, '2016-10-01', '2016-12-30', '43'),
(5, 2, '2016-09-25', '2016-12-30', '17'),
(6, 2, '2016-10-10', '2016-11-30', '74'),
(6, 6, '2017-01-25', '2017-06-30', '67');

-- --------------------------------------------------------

--
-- Table structure for table `Resources`
--

CREATE TABLE `Resources` (
  `ResourceID` int(11) NOT NULL,
  `Other_Resource_Details` varchar(350) DEFAULT NULL,
  `Resource_Name` varchar(45) DEFAULT NULL,
  `Resource_Type_Resource_Type_Code` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Resources`
--

INSERT INTO `Resources` (`ResourceID`, `Other_Resource_Details`, `Resource_Name`, `Resource_Type_Resource_Type_Code`) VALUES
(1, 'Web-developer and analist 1', 'John', 3),
(2, '-', 'Joe', 3),
(3, 'Good BUS analist', 'Viv', 2),
(4, 'DBA too', 'Vern', 3),
(5, 'The best', 'Ivan', 4),
(6, '-', 'Thomas', 5),
(7, '-', 'Tom', 1),
(8, 'OP_Manager', 'June', 5);

-- --------------------------------------------------------

--
-- Table structure for table `Resource_Type`
--

CREATE TABLE `Resource_Type` (
  `Resource_Type_Code` int(11) NOT NULL,
  `Resource_Type_Name` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Resource_Type`
--

INSERT INTO `Resource_Type` (`Resource_Type_Code`, `Resource_Type_Name`) VALUES
(1, 'Programmer'),
(2, 'Web-developer'),
(3, 'Business-Analyst'),
(4, 'DBA'),
(5, 'Operations');

-- --------------------------------------------------------

--
-- Table structure for table `Zip_Code`
--

CREATE TABLE `Zip_Code` (
  `Zip_Code_ID` int(45) NOT NULL,
  `City` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Zip_Code`
--

INSERT INTO `Zip_Code` (`Zip_Code_ID`, `City`) VALUES
(2800, 'Lyngby'),
(3400, 'Hillerød'),
(3520, 'Farum'),
(3660, 'Stenløse'),
(4200, 'Slagelse'),
(8400, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`ClientsID`),
  ADD KEY `fk_Clients_Zip Code1_idx` (`Zip_Code_Zip_Code`);

--
-- Indexes for table `Projects`
--
ALTER TABLE `Projects`
  ADD PRIMARY KEY (`ProjectID`,`Clients_ClientsID`),
  ADD UNIQUE KEY `ProjectID_UNIQUE` (`ProjectID`),
  ADD KEY `fk_Projects_Clients1_idx` (`Clients_ClientsID`);

--
-- Indexes for table `Projects_has_Resources`
--
ALTER TABLE `Projects_has_Resources`
  ADD PRIMARY KEY (`Projects_ProjectID`,`Resources_ResourceID`),
  ADD KEY `fk_Projects_has_Resources_Resources1_idx` (`Resources_ResourceID`),
  ADD KEY `fk_Projects_has_Resources_Projects_idx` (`Projects_ProjectID`);

--
-- Indexes for table `Resources`
--
ALTER TABLE `Resources`
  ADD PRIMARY KEY (`ResourceID`),
  ADD KEY `fk_Resources_Resource Type1_idx` (`Resource_Type_Resource_Type_Code`);

--
-- Indexes for table `Resource_Type`
--
ALTER TABLE `Resource_Type`
  ADD PRIMARY KEY (`Resource_Type_Code`);

--
-- Indexes for table `Zip_Code`
--
ALTER TABLE `Zip_Code`
  ADD PRIMARY KEY (`Zip_Code_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Clients`
--
ALTER TABLE `Clients`
  MODIFY `ClientsID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key';
--
-- AUTO_INCREMENT for table `Projects`
--
ALTER TABLE `Projects`
  MODIFY `ProjectID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Resources`
--
ALTER TABLE `Resources`
  MODIFY `ResourceID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Clients`
--
ALTER TABLE `Clients`
  ADD CONSTRAINT `fk_Clients_Zip Code1` FOREIGN KEY (`Zip_Code_Zip_Code`) REFERENCES `Zip Code` (`Zip Code_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Projects`
--
ALTER TABLE `Projects`
  ADD CONSTRAINT `fk_Projects_Clients1` FOREIGN KEY (`Clients_ClientsID`) REFERENCES `Clients` (`clientsID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Projects_has_Resources`
--
ALTER TABLE `Projects_has_Resources`
  ADD CONSTRAINT `fk_Projects_has_Resources_Projects` FOREIGN KEY (`Projects_ProjectID`) REFERENCES `Projects` (`ProjectID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Projects_has_Resources_Resources1` FOREIGN KEY (`Resources_ResourceID`) REFERENCES `Resources` (`ResourceID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Resources`
--
ALTER TABLE `Resources`
  ADD CONSTRAINT `fk_Resources_Resource Type1` FOREIGN KEY (`Resource_Type_Resource_Type_Code`) REFERENCES `Resource Type` (`Resource Type Code`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
