-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2023 at 07:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `room_reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

CREATE TABLE `administration` (
  `JOB_DEPARTMENT` varchar(50) NOT NULL,
  `GUEST_ID` int(20) NOT NULL,
  `JOB_ID` int(20) NOT NULL,
  `JOB_TITLE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `NAME` varchar(100) NOT NULL,
  `DESCRIPTION` varchar(500) NOT NULL,
  `AVAILABILITY_STATUS` varchar(20) NOT NULL,
  `COST` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `businessman`
--

CREATE TABLE `businessman` (
  `BUSINESS_REG_NO` int(20) NOT NULL,
  `GUEST_ID` int(20) NOT NULL,
  `BUSINESS_NAME` varchar(50) NOT NULL,
  `YEAR_OF_ESTABLISHMENT` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `check_in`
--

CREATE TABLE `check_in` (
  `CHECK_IN_ID` int(20) NOT NULL,
  `RESERVSATION_ID` int(20) NOT NULL,
  `Staff_ID` int(20) NOT NULL,
  `Room_ID` int(10) NOT NULL,
  `CHECK_IN_DATE` int(10) NOT NULL,
  `CHECK_OUT_DATE` int(10) NOT NULL,
  `SPECIAL_REQUESTS` varchar(200) DEFAULT NULL,
  `GUEST_PREFERENCES` varchar(250) DEFAULT NULL,
  `PAYMENT_METHOD` varchar(50) NOT NULL,
  `DIGITAL_SIGNATURES` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `check_out`
--

CREATE TABLE `check_out` (
  `CHECK_OUT_ID` int(20) NOT NULL,
  `CHECK_IN_ID` int(20) NOT NULL,
  `Staff_ID` int(20) NOT NULL,
  `INVOICE_ID` int(20) NOT NULL,
  `CHECK_OUT_DATE` int(10) NOT NULL,
  `Additional_Charges` double NOT NULL,
  `FEEDBACK` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `criminal_justice`
--

CREATE TABLE `criminal_justice` (
  `CAREER_FIELD` varchar(50) NOT NULL,
  `GUEST_ID` int(20) NOT NULL,
  `JOB_ID` int(20) NOT NULL,
  `EDUCATION` varchar(50) NOT NULL,
  `YEAR_OF_EXPERIENCE` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eduaction`
--

CREATE TABLE `eduaction` (
  `INSTITUTION_NAME` varchar(50) NOT NULL,
  `GUEST_ID` int(20) NOT NULL,
  `JOB_ID` int(20) NOT NULL,
  `EDUCATION_LEVEL` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emergency_services`
--

CREATE TABLE `emergency_services` (
  `SERVICE_NAME` varchar(50) NOT NULL,
  `GUEST_ID` int(20) NOT NULL,
  `JOB_ID` int(20) NOT NULL,
  `JOB_LOCATION` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `freedom_fighter`
--

CREATE TABLE `freedom_fighter` (
  `FF_ID` int(50) NOT NULL,
  `GUEST_ID` int(20) NOT NULL,
  `HONOR_TYPE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_desk_staff`
--

CREATE TABLE `front_desk_staff` (
  `Staff_ID` int(50) NOT NULL,
  `BIRTH_DATE` int(20) NOT NULL,
  `HIRE_DATE` date NOT NULL,
  `First_name` varchar(100) NOT NULL,
  `Last_name` varchar(200) NOT NULL,
  `Role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `GUEST_ID` int(20) NOT NULL,
  `DOB` int(100) NOT NULL,
  `FIRST_NAME` varchar(100) NOT NULL,
  `LAST_NAME` varchar(100) NOT NULL,
  `PHONE_NUMBER` int(20) NOT NULL,
  `EMAIL_ADDRESS` varchar(100) NOT NULL,
  `PREFERENCES` varchar(500) DEFAULT NULL,
  `LOYALTY_PROGRAM_STATUS` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `HOTEL_ID` int(20) NOT NULL,
  `Hotel_Rating` int(50) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `Phone_Number` int(100) NOT NULL,
  `Email_Address` varchar(250) NOT NULL,
  `STREET_NAME` varchar(250) NOT NULL,
  `STREET_NUMBER` varchar(250) NOT NULL,
  `CITY` varchar(250) NOT NULL,
  `COUNTRY` varchar(250) NOT NULL,
  `AFFILIATIONS` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_guest`
--

CREATE TABLE `hotel_guest` (
  `HOTEL_ID` int(20) NOT NULL,
  `GUEST_ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_rating`
--

CREATE TABLE `hotel_rating` (
  `HOTEL_RATING` int(50) NOT NULL,
  `RESERVATION_ID` int(20) NOT NULL,
  `DATE_OF_RATING` date NOT NULL,
  `Guest_feedback` varchar(500) NOT NULL,
  `Online_Reviews` varchar(200) NOT NULL,
  `Quality_assessment` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `INVOICE_ID` int(20) NOT NULL,
  `ROOM_CHARGES` int(50) NOT NULL,
  `TAXES` int(50) NOT NULL,
  `APPLICABLE_DISCOUNTS` int(50) DEFAULT NULL,
  `MINI_BAR_BILL` int(50) DEFAULT NULL,
  `LAUNDRY_CHARGE` int(50) DEFAULT NULL,
  `ENTERTAINMENT_CHRGE` int(50) DEFAULT NULL,
  `TOTAL_BILL` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PAYMENT_ID` int(20) NOT NULL,
  `RESERVATION_ID` int(20) NOT NULL,
  `INVOICE_ID` int(20) NOT NULL,
  `PAYMENT_DATE` date NOT NULL,
  `PAYMENT_METHOD` varchar(50) NOT NULL,
  `THIRD_PARTY_BILLING` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `private`
--

CREATE TABLE `private` (
  `COMPANY_NAME` varchar(50) NOT NULL,
  `JOB_ID` int(20) NOT NULL,
  `GUEST_ID` int(20) NOT NULL,
  `JOB_ROLE` varchar(20) NOT NULL,
  `DEPARTMENT` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `public`
--

CREATE TABLE `public` (
  `DEPARTMENT_NAME` varchar(50) NOT NULL,
  `GUEST_ID` int(20) NOT NULL,
  `JOB_ID` int(20) NOT NULL,
  `DESIGNATION` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `RESERVSATION_ID` int(20) NOT NULL,
  `Hotel_ID` int(50) NOT NULL,
  `Room_Type_ID` int(100) NOT NULL,
  `Guest_ID` int(100) NOT NULL,
  `Date_of_Reservation` int(100) NOT NULL,
  `CHECK_IN_DATES` varchar(10) NOT NULL,
  `CHECK_OUT_DATES` varchar(10) NOT NULL,
  `SPECIAL_REQUESTS` varchar(200) DEFAULT NULL,
  `GUEST_PREFERENCES` varchar(250) DEFAULT NULL,
  `PAYMENT_METHOD` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reserve_room`
--

CREATE TABLE `reserve_room` (
  `RESERVSATION_ID` int(20) NOT NULL,
  `ROOM_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reserve_rtype`
--

CREATE TABLE `reserve_rtype` (
  `RESERVSATION_ID` int(20) NOT NULL,
  `ROOM_TYPE_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `retiree`
--

CREATE TABLE `retiree` (
  `DATE_OF_RETIREMENT` date NOT NULL,
  `GUEST_ID` int(20) NOT NULL,
  `JOB_TYPE` varchar(50) NOT NULL,
  `JOB_INSTITUTION` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `ROOM_ID` int(10) NOT NULL,
  `ROOM_TYPE` varchar(30) NOT NULL,
  `ROOM_RATE` int(20) NOT NULL,
  `AMENITIES` varchar(250) DEFAULT NULL,
  `VIEW` varchar(50) DEFAULT NULL,
  `FLOOR_LEVEL` int(200) DEFAULT NULL,
  `ADDITIONAL_SERVICES` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_rate`
--

CREATE TABLE `room_rate` (
  `Room_rate` int(20) NOT NULL,
  `Facilities` varchar(200) NOT NULL,
  `Seasonal_Pricing` double NOT NULL,
  `Weekend_Pricing` double NOT NULL,
  `Weekday_Pricing` double NOT NULL,
  `Discounts` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `ROOM_TYPE_ID` int(30) NOT NULL,
  `ROOM_RATE` int(20) NOT NULL,
  `ROOM_SIZE` varchar(20) NOT NULL,
  `VIEW` varchar(50) DEFAULT NULL,
  `DECORATION` varchar(500) DEFAULT NULL,
  `ROOM_FACILITIES` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rtype_amenities`
--

CREATE TABLE `rtype_amenities` (
  `ROOM_TYPE_ID` int(30) NOT NULL,
  `AMENITY_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_holder`
--

CREATE TABLE `service_holder` (
  `JOB_ID` int(50) NOT NULL,
  `GUEST_ID` int(20) NOT NULL,
  `JOB_SECTOR` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_services`
--

CREATE TABLE `social_services` (
  `SERVICE_TYPE` varchar(50) NOT NULL,
  `GUEST_ID` int(20) NOT NULL,
  `JOB_ID` int(20) NOT NULL,
  `SERVICE_LOCATION` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `STUDENT_ID` int(20) NOT NULL,
  `GUEST_ID` int(20) NOT NULL,
  `INSTITUTION` varchar(100) NOT NULL,
  `HIGEST_DEGREE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administration`
--
ALTER TABLE `administration`
  ADD PRIMARY KEY (`JOB_DEPARTMENT`),
  ADD KEY `GUEST_ID` (`GUEST_ID`),
  ADD KEY `JOB_ID` (`JOB_ID`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`NAME`);

--
-- Indexes for table `businessman`
--
ALTER TABLE `businessman`
  ADD PRIMARY KEY (`BUSINESS_REG_NO`),
  ADD KEY `GUEST_ID` (`GUEST_ID`);

--
-- Indexes for table `check_in`
--
ALTER TABLE `check_in`
  ADD PRIMARY KEY (`CHECK_IN_ID`),
  ADD KEY `RESERVSATION_ID` (`RESERVSATION_ID`),
  ADD KEY `Room_ID` (`Room_ID`),
  ADD KEY `CHECK_OUT_DATE` (`CHECK_OUT_DATE`),
  ADD KEY `Staff_ID` (`Staff_ID`);

--
-- Indexes for table `check_out`
--
ALTER TABLE `check_out`
  ADD PRIMARY KEY (`CHECK_OUT_ID`),
  ADD KEY `CHECK_IN_ID` (`CHECK_IN_ID`),
  ADD KEY `INVOICE_ID` (`INVOICE_ID`),
  ADD KEY `Staff_ID` (`Staff_ID`);

--
-- Indexes for table `criminal_justice`
--
ALTER TABLE `criminal_justice`
  ADD PRIMARY KEY (`CAREER_FIELD`),
  ADD KEY `GUEST_ID` (`GUEST_ID`),
  ADD KEY `JOB_ID` (`JOB_ID`);

--
-- Indexes for table `eduaction`
--
ALTER TABLE `eduaction`
  ADD PRIMARY KEY (`INSTITUTION_NAME`),
  ADD KEY `GUEST_ID` (`GUEST_ID`),
  ADD KEY `JOB_ID` (`JOB_ID`);

--
-- Indexes for table `emergency_services`
--
ALTER TABLE `emergency_services`
  ADD PRIMARY KEY (`SERVICE_NAME`),
  ADD KEY `GUEST_ID` (`GUEST_ID`),
  ADD KEY `JOB_ID` (`JOB_ID`);

--
-- Indexes for table `freedom_fighter`
--
ALTER TABLE `freedom_fighter`
  ADD PRIMARY KEY (`FF_ID`),
  ADD KEY `GUEST_ID` (`GUEST_ID`);

--
-- Indexes for table `front_desk_staff`
--
ALTER TABLE `front_desk_staff`
  ADD PRIMARY KEY (`Staff_ID`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`GUEST_ID`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`HOTEL_ID`),
  ADD KEY `Hotel_Rating` (`Hotel_Rating`);

--
-- Indexes for table `hotel_guest`
--
ALTER TABLE `hotel_guest`
  ADD KEY `HOTEL_ID` (`HOTEL_ID`),
  ADD KEY `GUEST_ID` (`GUEST_ID`);

--
-- Indexes for table `hotel_rating`
--
ALTER TABLE `hotel_rating`
  ADD PRIMARY KEY (`HOTEL_RATING`),
  ADD KEY `RESERVATION_ID` (`RESERVATION_ID`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`INVOICE_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PAYMENT_ID`);

--
-- Indexes for table `private`
--
ALTER TABLE `private`
  ADD PRIMARY KEY (`COMPANY_NAME`),
  ADD KEY `GUEST_ID` (`GUEST_ID`),
  ADD KEY `JOB_ID` (`JOB_ID`);

--
-- Indexes for table `public`
--
ALTER TABLE `public`
  ADD PRIMARY KEY (`DEPARTMENT_NAME`),
  ADD KEY `GUEST_ID` (`GUEST_ID`),
  ADD KEY `JOB_ID` (`JOB_ID`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`RESERVSATION_ID`),
  ADD KEY `Guest_ID` (`Guest_ID`),
  ADD KEY `Hotel_ID` (`Hotel_ID`),
  ADD KEY `Room_Type_ID` (`Room_Type_ID`);

--
-- Indexes for table `reserve_room`
--
ALTER TABLE `reserve_room`
  ADD KEY `RESERVSATION_ID` (`RESERVSATION_ID`),
  ADD KEY `ROOM_ID` (`ROOM_ID`);

--
-- Indexes for table `reserve_rtype`
--
ALTER TABLE `reserve_rtype`
  ADD KEY `RESERVSATION_ID` (`RESERVSATION_ID`),
  ADD KEY `ROOM_TYPE_ID` (`ROOM_TYPE_ID`);

--
-- Indexes for table `retiree`
--
ALTER TABLE `retiree`
  ADD PRIMARY KEY (`DATE_OF_RETIREMENT`),
  ADD KEY `GUEST_ID` (`GUEST_ID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`ROOM_ID`),
  ADD KEY `ROOM_RATE` (`ROOM_RATE`);

--
-- Indexes for table `room_rate`
--
ALTER TABLE `room_rate`
  ADD PRIMARY KEY (`Room_rate`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`ROOM_TYPE_ID`);

--
-- Indexes for table `rtype_amenities`
--
ALTER TABLE `rtype_amenities`
  ADD KEY `ROOM_TYPE_ID` (`ROOM_TYPE_ID`);

--
-- Indexes for table `service_holder`
--
ALTER TABLE `service_holder`
  ADD PRIMARY KEY (`JOB_ID`),
  ADD KEY `GUEST_ID` (`GUEST_ID`);

--
-- Indexes for table `social_services`
--
ALTER TABLE `social_services`
  ADD PRIMARY KEY (`SERVICE_TYPE`),
  ADD KEY `GUEST_ID` (`GUEST_ID`),
  ADD KEY `JOB_ID` (`JOB_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`STUDENT_ID`),
  ADD KEY `GUEST_ID` (`GUEST_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `administration`
--
ALTER TABLE `administration`
  ADD CONSTRAINT `administration_ibfk_1` FOREIGN KEY (`GUEST_ID`) REFERENCES `guest` (`GUEST_ID`),
  ADD CONSTRAINT `administration_ibfk_2` FOREIGN KEY (`JOB_ID`) REFERENCES `service_holder` (`JOB_ID`);

--
-- Constraints for table `businessman`
--
ALTER TABLE `businessman`
  ADD CONSTRAINT `businessman_ibfk_1` FOREIGN KEY (`GUEST_ID`) REFERENCES `guest` (`GUEST_ID`);

--
-- Constraints for table `check_in`
--
ALTER TABLE `check_in`
  ADD CONSTRAINT `check_in_ibfk_1` FOREIGN KEY (`RESERVSATION_ID`) REFERENCES `reservation` (`RESERVSATION_ID`),
  ADD CONSTRAINT `check_in_ibfk_2` FOREIGN KEY (`Room_ID`) REFERENCES `room` (`ROOM_ID`),
  ADD CONSTRAINT `check_in_ibfk_3` FOREIGN KEY (`CHECK_OUT_DATE`) REFERENCES `check_out` (`CHECK_OUT_ID`),
  ADD CONSTRAINT `check_in_ibfk_4` FOREIGN KEY (`Staff_ID`) REFERENCES `front_desk_staff` (`Staff_ID`);

--
-- Constraints for table `check_out`
--
ALTER TABLE `check_out`
  ADD CONSTRAINT `check_out_ibfk_1` FOREIGN KEY (`CHECK_IN_ID`) REFERENCES `check_in` (`CHECK_IN_ID`),
  ADD CONSTRAINT `check_out_ibfk_2` FOREIGN KEY (`INVOICE_ID`) REFERENCES `invoice` (`INVOICE_ID`),
  ADD CONSTRAINT `check_out_ibfk_3` FOREIGN KEY (`Staff_ID`) REFERENCES `front_desk_staff` (`Staff_ID`);

--
-- Constraints for table `criminal_justice`
--
ALTER TABLE `criminal_justice`
  ADD CONSTRAINT `criminal_justice_ibfk_1` FOREIGN KEY (`GUEST_ID`) REFERENCES `guest` (`GUEST_ID`),
  ADD CONSTRAINT `criminal_justice_ibfk_2` FOREIGN KEY (`JOB_ID`) REFERENCES `service_holder` (`JOB_ID`);

--
-- Constraints for table `eduaction`
--
ALTER TABLE `eduaction`
  ADD CONSTRAINT `eduaction_ibfk_1` FOREIGN KEY (`GUEST_ID`) REFERENCES `guest` (`GUEST_ID`),
  ADD CONSTRAINT `eduaction_ibfk_2` FOREIGN KEY (`JOB_ID`) REFERENCES `service_holder` (`JOB_ID`);

--
-- Constraints for table `emergency_services`
--
ALTER TABLE `emergency_services`
  ADD CONSTRAINT `emergency_services_ibfk_1` FOREIGN KEY (`GUEST_ID`) REFERENCES `guest` (`GUEST_ID`),
  ADD CONSTRAINT `emergency_services_ibfk_2` FOREIGN KEY (`JOB_ID`) REFERENCES `service_holder` (`JOB_ID`);

--
-- Constraints for table `freedom_fighter`
--
ALTER TABLE `freedom_fighter`
  ADD CONSTRAINT `freedom_fighter_ibfk_1` FOREIGN KEY (`GUEST_ID`) REFERENCES `guest` (`GUEST_ID`);

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`Hotel_Rating`) REFERENCES `hotel_rating` (`HOTEL_RATING`);

--
-- Constraints for table `hotel_guest`
--
ALTER TABLE `hotel_guest`
  ADD CONSTRAINT `hotel_guest_ibfk_1` FOREIGN KEY (`HOTEL_ID`) REFERENCES `hotel` (`HOTEL_ID`),
  ADD CONSTRAINT `hotel_guest_ibfk_2` FOREIGN KEY (`GUEST_ID`) REFERENCES `guest` (`GUEST_ID`);

--
-- Constraints for table `hotel_rating`
--
ALTER TABLE `hotel_rating`
  ADD CONSTRAINT `hotel_rating_ibfk_1` FOREIGN KEY (`RESERVATION_ID`) REFERENCES `reservation` (`RESERVSATION_ID`);

--
-- Constraints for table `private`
--
ALTER TABLE `private`
  ADD CONSTRAINT `private_ibfk_1` FOREIGN KEY (`GUEST_ID`) REFERENCES `guest` (`GUEST_ID`),
  ADD CONSTRAINT `private_ibfk_2` FOREIGN KEY (`JOB_ID`) REFERENCES `service_holder` (`JOB_ID`);

--
-- Constraints for table `public`
--
ALTER TABLE `public`
  ADD CONSTRAINT `public_ibfk_1` FOREIGN KEY (`GUEST_ID`) REFERENCES `guest` (`GUEST_ID`),
  ADD CONSTRAINT `public_ibfk_2` FOREIGN KEY (`JOB_ID`) REFERENCES `service_holder` (`JOB_ID`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`Guest_ID`) REFERENCES `guest` (`GUEST_ID`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`Hotel_ID`) REFERENCES `hotel` (`HOTEL_ID`),
  ADD CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`Room_Type_ID`) REFERENCES `room_type` (`ROOM_TYPE_ID`);

--
-- Constraints for table `reserve_room`
--
ALTER TABLE `reserve_room`
  ADD CONSTRAINT `reserve_room_ibfk_1` FOREIGN KEY (`RESERVSATION_ID`) REFERENCES `reservation` (`RESERVSATION_ID`),
  ADD CONSTRAINT `reserve_room_ibfk_2` FOREIGN KEY (`ROOM_ID`) REFERENCES `room` (`ROOM_ID`);

--
-- Constraints for table `reserve_rtype`
--
ALTER TABLE `reserve_rtype`
  ADD CONSTRAINT `reserve_rtype_ibfk_1` FOREIGN KEY (`RESERVSATION_ID`) REFERENCES `reservation` (`RESERVSATION_ID`),
  ADD CONSTRAINT `reserve_rtype_ibfk_2` FOREIGN KEY (`ROOM_TYPE_ID`) REFERENCES `room_type` (`ROOM_TYPE_ID`);

--
-- Constraints for table `retiree`
--
ALTER TABLE `retiree`
  ADD CONSTRAINT `retiree_ibfk_1` FOREIGN KEY (`GUEST_ID`) REFERENCES `guest` (`GUEST_ID`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`ROOM_RATE`) REFERENCES `room_rate` (`Room_rate`);

--
-- Constraints for table `rtype_amenities`
--
ALTER TABLE `rtype_amenities`
  ADD CONSTRAINT `rtype_amenities_ibfk_1` FOREIGN KEY (`ROOM_TYPE_ID`) REFERENCES `room_type` (`ROOM_TYPE_ID`);

--
-- Constraints for table `service_holder`
--
ALTER TABLE `service_holder`
  ADD CONSTRAINT `service_holder_ibfk_1` FOREIGN KEY (`GUEST_ID`) REFERENCES `guest` (`GUEST_ID`);

--
-- Constraints for table `social_services`
--
ALTER TABLE `social_services`
  ADD CONSTRAINT `social_services_ibfk_1` FOREIGN KEY (`GUEST_ID`) REFERENCES `guest` (`GUEST_ID`),
  ADD CONSTRAINT `social_services_ibfk_2` FOREIGN KEY (`JOB_ID`) REFERENCES `service_holder` (`JOB_ID`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`GUEST_ID`) REFERENCES `guest` (`GUEST_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
