-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2024 at 09:45 AM
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
-- Database: `dockmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `berths_docks`
--

CREATE TABLE `berths_docks` (
  `BerthID` int(11) NOT NULL,
  `Length` float DEFAULT NULL,
  `Width` float DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Depth` float DEFAULT NULL,
  `Equipment_available` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `berths_docks`
--

INSERT INTO `berths_docks` (`BerthID`, `Length`, `Width`, `Status`, `Depth`, `Equipment_available`) VALUES
(51, 100.5, 20.5, 'Occupied', 10, 'Cranes'),
(52, 120, 25, 'Available', 12, 'Forklifts'),
(53, 110, 22, 'Occupied', 11, 'Cranes'),
(54, 130, 26, 'Available', 13, 'Forklifts'),
(55, 105, 21, 'Occupied', 10.5, 'Cranes'),
(56, 115, 23, 'Available', 11.5, 'Forklifts'),
(57, 125, 25, 'Occupied', 12.5, 'Cranes'),
(58, 135, 27, 'Available', 13.5, 'Forklifts'),
(59, 95, 19, 'Occupied', 9.5, 'Cranes'),
(60, 105, 21, 'Available', 10.5, 'Forklifts');

-- --------------------------------------------------------

--
-- Table structure for table `cargo_ship`
--

CREATE TABLE `cargo_ship` (
  `Ship_no` int(11) NOT NULL,
  `Type_of_Cargo` varchar(255) DEFAULT NULL,
  `Source` varchar(255) DEFAULT NULL,
  `Destination` varchar(255) DEFAULT NULL,
  `Cargo_unloaded` int(11) DEFAULT NULL,
  `Cargo_loaded` int(11) DEFAULT NULL,
  `Entry_date` date DEFAULT NULL,
  `Exit_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cargo_ship`
--

INSERT INTO `cargo_ship` (`Ship_no`, `Type_of_Cargo`, `Source`, `Destination`, `Cargo_unloaded`, `Cargo_loaded`, `Entry_date`, `Exit_date`) VALUES
(21, 'Aquatic', 'Port A', 'Port C', 100, 50, '2024-01-01', '2024-01-15'),
(22, 'Plant', 'Port B', 'Port D', 200, 100, '2024-01-05', '2024-01-20'),
(23, 'Animal', 'Port C', 'Port E', 150, 80, '2024-01-10', '2024-01-25'),
(24, 'Toys', 'Port D', 'Port F', 120, 60, '2024-01-15', '2024-01-30'),
(25, 'Books', 'Port E', 'Port G', 180, 90, '2024-01-20', '2024-02-05'),
(26, 'Aquatic', 'Port F', 'Port H', 220, 110, '2024-01-25', '2024-02-10'),
(27, 'Food', 'Port G', 'Port I', 130, 70, '2024-01-30', '2024-02-15'),
(28, 'Toys', 'Port H', 'Port J', 160, 80, '2024-02-05', '2024-02-20'),
(29, 'Books', 'Port I', 'Port K', 140, 70, '2024-02-10', '2024-02-25'),
(30, 'Electronics', 'Port J', 'Port L', 200, 100, '2024-02-15', '2024-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `crew`
--

CREATE TABLE `crew` (
  `CrewID` int(11) NOT NULL,
  `Ship_no` int(11) DEFAULT NULL,
  `Name_of_crew` varchar(255) DEFAULT NULL,
  `Job_description` varchar(255) DEFAULT NULL,
  `Contact` varchar(255) DEFAULT NULL,
  `Blood_type` varchar(255) DEFAULT NULL,
  `Salary` bigint(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crew`
--

INSERT INTO `crew` (`CrewID`, `Ship_no`, `Name_of_crew`, `Job_description`, `Contact`, `Blood_type`, `Salary`) VALUES
(41, 101, 'AA', 'Engineer', '1234567890', 'A+', 55),
(42, 102, 'AB', 'Chef', '9876543210', 'O-', 60),
(43, 103, 'BB', 'Navigator', '2345678901', 'B+', 62),
(44, 104, 'XY', 'Doctor', '3456789012', 'AB-', 65),
(45, 105, 'ZW', 'Entertainer', '4567890123', 'A-', 77),
(46, 106, 'OH', 'Security', '5678901234', 'O+', 80),
(47, 107, 'TH', 'Technician', '6789012345', 'B-', 84),
(48, 108, 'NJ', 'Housekeeper', '7890123456', 'AB+', 87),
(49, 109, 'SRK', 'Waiter', '8901234567', 'A-', 90),
(50, 110, 'AS', 'Bartender', '9012345678', 'O-', 95);

-- --------------------------------------------------------

--
-- Table structure for table `cruise_ship`
--

CREATE TABLE `cruise_ship` (
  `Ship_no` int(11) NOT NULL,
  `Captain_Name` varchar(255) DEFAULT NULL,
  `Source` varchar(255) DEFAULT NULL,
  `Destination` varchar(255) DEFAULT NULL,
  `Occupancy` int(11) DEFAULT NULL,
  `No_Of_life_boats` int(11) DEFAULT NULL,
  `Entry_date` date DEFAULT NULL,
  `Exit_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cruise_ship`
--

INSERT INTO `cruise_ship` (`Ship_no`, `Captain_Name`, `Source`, `Destination`, `Occupancy`, `No_Of_life_boats`, `Entry_date`, `Exit_date`) VALUES
(101, 'Captain Jack', 'Port X', 'Port Y', 500, 10, '2024-02-01', '2024-02-15'),
(102, 'Captain Sparrow', 'Port Z', 'Port W', 600, 12, '2024-02-05', '2024-02-20'),
(103, 'Captain Blackbeard', 'Port A', 'Port B', 550, 11, '2024-02-10', '2024-02-25'),
(104, 'Captain Law', 'Port C', 'Port D', 700, 14, '2024-02-15', '2024-03-01'),
(105, 'Captain Kidd', 'Port E', 'Port F', 450, 9, '2024-02-20', '2024-03-05'),
(106, 'Captain Morgan', 'Port G', 'Port H', 800, 16, '2024-02-25', '2024-03-10'),
(107, 'Captain Whitebeard', 'Port I', 'Port J', 600, 12, '2024-03-01', '2024-03-15'),
(108, 'Captain Teach', 'Port K', 'Port L', 750, 15, '2024-03-05', '2024-03-20'),
(109, 'Captain Roger', 'Port M', 'Port N', 500, 10, '2024-03-10', '2024-03-25'),
(110, 'Captain Nami', 'Port O', 'Port P', 650, 13, '2024-03-15', '2024-03-30');

-- --------------------------------------------------------

--
-- Stand-in structure for view `expimp`
-- (See below for the actual view)
--
CREATE TABLE `expimp` (
`Destination` varchar(255)
,`source` varchar(255)
,`Type_of_Cargo` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `export`
--

CREATE TABLE `export` (
  `ExportID` int(11) NOT NULL,
  `Destination` varchar(255) DEFAULT NULL,
  `Type_of_Cargo` varchar(255) DEFAULT NULL,
  `Supervisor` varchar(255) DEFAULT NULL,
  `Receiver` varchar(255) DEFAULT NULL,
  `Company` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `export`
--

INSERT INTO `export` (`ExportID`, `Destination`, `Type_of_Cargo`, `Supervisor`, `Receiver`, `Company`) VALUES
(11, 'Port C', 'Aquatic', 'Jack Black', 'PQR Retail', 'PQR Enterprises'),
(12, 'Port D', 'Plant', 'Emma Brown', 'LMN Supermart', 'LMN Group'),
(13, 'Port E', 'Animal', 'Alice Blue', 'UVW Fashion', 'UVW Industries'),
(14, 'Port F', 'Toys', 'Sam Red', 'IJK Toys', 'IJK Enterprises'),
(15, 'Port G', 'Books', 'Mary Yellow', 'EFG Bookstore', 'EFG Group'),
(16, 'Port H', 'Aquatic', 'Peter Purple', 'HIJ Electronics', 'HIJ Industries'),
(17, 'Port I', 'Food', 'Lily Orange', 'KLM Fashion', 'KLM Enterprises'),
(18, 'Port J', 'Toys', 'John Doe', 'ABC Supermart', 'ABC Group'),
(19, 'Port K', 'Books', 'Jane Smith', 'XYZ Toys', 'XYZ Enterprises'),
(20, 'Port L', 'Electronics', 'Tom Green', 'RST Bookstore', 'RST Group');

-- --------------------------------------------------------

--
-- Stand-in structure for view `exp_imp`
-- (See below for the actual view)
--
CREATE TABLE `exp_imp` (
`Destination` varchar(255)
,`source` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `import`
--

CREATE TABLE `import` (
  `ImportID` int(11) NOT NULL,
  `Source` varchar(255) DEFAULT NULL,
  `Type_of_Cargo` varchar(255) DEFAULT NULL,
  `Owner` varchar(255) DEFAULT NULL,
  `Supervisor` varchar(255) DEFAULT NULL,
  `Company` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `import`
--

INSERT INTO `import` (`ImportID`, `Source`, `Type_of_Cargo`, `Owner`, `Supervisor`, `Company`) VALUES
(1, 'Port A', 'Aquatic', 'ABC Importers', 'John Doe', 'ABC Company'),
(2, 'Port B', 'Plant', 'XYZ Importers', 'Jane Smith', 'XYZ Corporation'),
(3, 'Port C', 'Animal', 'PQR Importers', 'Jack Black', 'PQR Company'),
(4, 'Port D', 'Toys', 'LMN Importers', 'Emma Brown', 'LMN Corporation'),
(5, 'Port E', 'Books', 'RST Importers', 'Tom Green', 'RST Company'),
(6, 'Port F', 'Aquatic', 'UVW Importers', 'Alice Blue', 'UVW Corporation'),
(7, 'Port G', 'Food', 'IJK Importers', 'Sam Red', 'IJK Company'),
(8, 'Port H', 'Toys', 'EFG Importers', 'Mary Yellow', 'EFG Company'),
(9, 'Port I', 'Books', 'HIJ Importers', 'Peter Purple', 'HIJ Corporation'),
(10, 'Port J', 'Electronics', 'KLM Importers', 'Lily Orange', 'KLM Company');

-- --------------------------------------------------------

--
-- Table structure for table `onsite_worker`
--

CREATE TABLE `onsite_worker` (
  `Name` varchar(255) DEFAULT NULL,
  `Employee_id` int(11) NOT NULL,
  `Role` varchar(255) DEFAULT NULL,
  `Blood_type` varchar(255) DEFAULT NULL,
  `Contact` varchar(255) DEFAULT NULL,
  `Schedule` varchar(255) DEFAULT NULL,
  `e_BerthID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `onsite_worker`
--

INSERT INTO `onsite_worker` (`Name`, `Employee_id`, `Role`, `Blood_type`, `Contact`, `Schedule`, `e_BerthID`) VALUES
('A', 1001, 'Supervisor', 'A-', '4567890123', 'Mon-Fri, 9am-5pm', 51),
('B', 1002, 'Worker', 'O+', '5678901234', 'Tue-Sat, 10am-6pm', 52),
('C', 1003, 'Technician', 'B+', '6789012345', 'Mon-Fri, 8am-4pm', 53),
('D', 1004, 'Security', 'AB-', '7890123456', 'Wed-Sun, 11pm-7am', 54),
('E', 1005, 'Engineer', 'A+', '8901234567', 'Thu-Mon, 7am-3pm', 55),
('F', 1006, 'Doctor', 'O-', '9012345678', 'Fri-Tue, 12pm-8pm', 56),
('G', 1007, 'Nurse', 'B-', '0123456789', 'Sat-Wed, 3pm-11pm', 57),
('H', 1008, 'Housekeeper', 'AB+', '1234567890', 'Sun-Thu, 10am-6pm', 58),
('I', 1009, 'Waiter', 'A-', '2345678901', 'Mon-Fri, 6am-2pm', 59),
('J', 1010, 'Bartender', 'O+', '3456789012', 'Tue-Sat, 4pm-12am', 60);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `Passenger_id` int(255) NOT NULL,
  `Name_of_passenger` varchar(255) NOT NULL,
  `Ship_no` int(11) DEFAULT NULL,
  `Contact` varchar(255) DEFAULT NULL,
  `Blood_type` varchar(255) DEFAULT NULL,
  `Room_details` varchar(255) DEFAULT NULL,
  `Disabilities` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`Passenger_id`, `Name_of_passenger`, `Ship_no`, `Contact`, `Blood_type`, `Room_details`, `Disabilities`) VALUES
(1, 'A', 101, '2345678901', 'B+', 'Suite A/Deck 1', 'None'),
(2, 'B', 102, '3456789012', 'AB-', 'Cabin B/Deck 2', 'Wheelchair'),
(3, 'C', 103, '4567890123', 'A+', 'Suite C/Deck 3', 'None'),
(4, 'D', 104, '5678901234', 'O-', 'Cabin D/Deck 4', 'Crutches'),
(5, 'E', 105, '6789012345', 'B-', 'Suite E/Deck 5', 'None'),
(6, 'F', 106, '7890123456', 'AB+', 'Cabin F/Deck 6', 'Wheelchair'),
(7, 'G', 107, '8901234567', 'A-', 'Suite G/Deck 7', 'None'),
(8, 'H', 108, '9012345678', 'O+', 'Cabin H/Deck 8', 'Crutches'),
(9, 'I', 109, '0123456789', 'AB-', 'Suite I/Deck 9', 'None'),
(10, 'J', 110, '1234567890', 'B+', 'Cabin J/Deck 10', 'Wheelchair');

-- --------------------------------------------------------

--
-- Table structure for table `type_of_cargo`
--

CREATE TABLE `type_of_cargo` (
  `TypeID` int(11) NOT NULL,
  `Ship_no` int(11) DEFAULT NULL,
  `Category` varchar(255) DEFAULT NULL,
  `Fragile` tinyint(1) DEFAULT NULL,
  `Size` varchar(255) DEFAULT NULL,
  `Weight` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type_of_cargo`
--

INSERT INTO `type_of_cargo` (`TypeID`, `Ship_no`, `Category`, `Fragile`, `Size`, `Weight`) VALUES
(31, 21, 'Fish', 1, 'Small', 10.5),
(32, 22, 'Flowers', 0, 'Large', 25),
(33, 23, 'Animals', 1, 'Medium', 50),
(34, 24, 'Electronics', 0, 'Large', 30),
(35, 25, 'Books', 0, 'Medium', 20),
(36, 26, 'Fish', 1, 'Large', 15),
(37, 27, 'Food', 1, 'Medium', 40),
(38, 28, 'Toys', 0, 'Small', 5),
(39, 29, 'Books', 0, 'Large', 35),
(40, 30, 'Electronics', 1, 'Medium', 25);

-- --------------------------------------------------------

--
-- Table structure for table `weather_conditions`
--

CREATE TABLE `weather_conditions` (
  `Date` date NOT NULL,
  `Temperature` float DEFAULT NULL,
  `WindSpeed` float DEFAULT NULL,
  `Visibility` varchar(255) DEFAULT NULL,
  `Precipitation_in_mm` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weather_conditions`
--

INSERT INTO `weather_conditions` (`Date`, `Temperature`, `WindSpeed`, `Visibility`, `Precipitation_in_mm`) VALUES
('2024-01-01', 25.5, 10.2, 'Clear', -1),
('2024-01-02', 24.8, 9.5, 'Clear', 3),
('2024-01-03', 26, 11, 'Clear', 9),
('2024-01-04', 24.6, 9.8, 'Clear', 17),
('2024-01-05', 25.2, 10.5, 'Clear', 70),
('2024-01-06', 24.9, 9.7, 'Clear', 74),
('2024-01-07', 25.3, 10.1, 'Clear', 90),
('2024-01-08', 25.7, 10.3, 'Clear', 56),
('2024-01-09', 25.1, 9.9, 'Clear', 22),
('2024-01-10', 24.5, 9.6, 'Clear', 0);

-- --------------------------------------------------------

--
-- Structure for view `expimp`
--
DROP TABLE IF EXISTS `expimp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `expimp`  AS SELECT `e`.`Destination` AS `Destination`, `i`.`Source` AS `source`, `i`.`Type_of_Cargo` AS `Type_of_Cargo` FROM (`export` `e` join `import` `i`) WHERE `i`.`Type_of_Cargo` = 'Aquatic''Aquatic'  ;

-- --------------------------------------------------------

--
-- Structure for view `exp_imp`
--
DROP TABLE IF EXISTS `exp_imp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `exp_imp`  AS SELECT `e`.`Destination` AS `Destination`, `i`.`Source` AS `source` FROM (`export` `e` join `import` `i`)  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berths_docks`
--
ALTER TABLE `berths_docks`
  ADD PRIMARY KEY (`BerthID`);

--
-- Indexes for table `cargo_ship`
--
ALTER TABLE `cargo_ship`
  ADD PRIMARY KEY (`Ship_no`);

--
-- Indexes for table `crew`
--
ALTER TABLE `crew`
  ADD PRIMARY KEY (`CrewID`),
  ADD KEY `Ship_no` (`Ship_no`);

--
-- Indexes for table `cruise_ship`
--
ALTER TABLE `cruise_ship`
  ADD PRIMARY KEY (`Ship_no`);

--
-- Indexes for table `export`
--
ALTER TABLE `export`
  ADD PRIMARY KEY (`ExportID`);

--
-- Indexes for table `import`
--
ALTER TABLE `import`
  ADD PRIMARY KEY (`ImportID`);

--
-- Indexes for table `onsite_worker`
--
ALTER TABLE `onsite_worker`
  ADD PRIMARY KEY (`Employee_id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`Passenger_id`),
  ADD KEY `Ship_no` (`Ship_no`);

--
-- Indexes for table `type_of_cargo`
--
ALTER TABLE `type_of_cargo`
  ADD PRIMARY KEY (`TypeID`),
  ADD KEY `Ship_no` (`Ship_no`);

--
-- Indexes for table `weather_conditions`
--
ALTER TABLE `weather_conditions`
  ADD PRIMARY KEY (`Date`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `crew`
--
ALTER TABLE `crew`
  ADD CONSTRAINT `crew_ibfk_1` FOREIGN KEY (`Ship_no`) REFERENCES `cruise_ship` (`Ship_no`);

--
-- Constraints for table `passenger`
--
ALTER TABLE `passenger`
  ADD CONSTRAINT `passenger_ibfk_1` FOREIGN KEY (`Ship_no`) REFERENCES `cruise_ship` (`Ship_no`);

--
-- Constraints for table `type_of_cargo`
--
ALTER TABLE `type_of_cargo`
  ADD CONSTRAINT `type_of_cargo_ibfk_1` FOREIGN KEY (`Ship_no`) REFERENCES `cargo_ship` (`Ship_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
