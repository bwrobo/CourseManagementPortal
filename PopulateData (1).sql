-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2023 at 04:49 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE `tbl_course` (
  `courseID` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `courseNum` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `maxEnrollment` int(11) NOT NULL,
  `currentEnrollment` int(11) NOT NULL,
  `sessionID` int(11) NOT NULL,
  `prerequisiteID` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`courseID`, `title`, `courseNum`, `description`, `maxEnrollment`, `currentEnrollment`, `sessionID`, `prerequisiteID`) VALUES
(2, 'Capstone for Computer Software Technology', 'CST 499', 'This course will cover the major software development lifecycle phases: software requirements gathering, software architecture &amp; design, software development, software testing, and software project management.  This class sucks.....', 10, 9, 1, 'CST 301 - Software Technology &amp; Design'),
(3, 'Software Technology &amp; Design', 'CST 301', 'In this course, students will learn the application of theory, knowledge, and practices to effectively and efficiently build reliable software systems that satisfy the requirements of customers and users. Students will understand all phases of the lifecycle of a software system, including requirements analysis and specification, software architecture, design patterns and concerns, software development methodologies (i.e. waterfall and agile process development), and software testing.', 20, 12, 1, ''),
(4, 'Software Requirements and Analysis', 'CST 304', 'The course will discuss concepts for systematically establishing, defining and managing the requirements for a large, complex, changing and software-intensive systems, from technical, organizational and management perspectives. The course will involve building models of both requirements Technology process and requirements Technology product, concerning both functional and non-functional.', 20, 9, 2, 'CST 301 - Software Technology &amp; Design'),
(5, 'Software Architecture &amp; Design', 'CST 307', 'This course introduces basic concepts and principles about software architecture and design. It starts with discussion on architectural structures and styles, followed by coverage of design issues and design patterns. The emphasis is on the interaction between software design and quality attributes such as availability, performance, security, interoperability, and modifiability.', 6, 6, 2, 'CST 301 - Software Technology &amp; Design'),
(6, 'Software Development', 'CST 310', 'This course introduces students to modern software development principles and practices. It provides the necessary grounding on the different technologies associated with developing a business website. Students in this course will learn client-side web development; as well as server-side web development using PHP programing language.', 4, 4, 1, 'CST 301 - Software Technology &amp; Design'),
(7, 'Software Testing', 'CST 313', 'This course introduces students to software testing and quality control concepts, principles, and methodologies. The emphasis here is on understanding software testing process, planning, strategy, criteria, and testing methods, as well as software quality assurance concepts &amp; control process. It covers the various subjects, including test models, test design techniques (black box and white-box testing techniques), integration, regression, and system testing methods.', 6, 6, 2, 'CST 301 - Software Technology &amp; Design'),
(8, 'Information Security Management', 'CST 316', 'This course introduces students to skills, knowledge, techniques, and tools required by information technology security professionals. Topics include application security principles and techniques, network security mechanisms, cryptography, and secure programming techniques including cross site scripting, and SQL injection.', 2, 2, 1, 'CST 301 - Software Technology &amp; Design'),
(9, 'Capstone for Computer Software Technology', 'CST 499', 'This course will offer an opportunity for students to work on real life problems through an applied project in a teamwork environment. This course will cover the major software development lifecycle phases: software requirements gathering, software architecture &amp; design, software development, software testing, and software project management. Students are required to apply appropriate methodologies to the activities in the aforementioned phases based on the selected topic. Each group of students will report their progress through a weekly interactive assignment and receive feedback from the instructor. Upon the completion of the course, each group will be required to submit a professional technical report and a working software demonstration.', 4, 4, 2, 'CST 301 - Software Technology &amp; Design');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enrollment`
--

CREATE TABLE `tbl_enrollment` (
  `courseID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `status` varchar(32) NOT NULL,
  `requestDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_session`
--

CREATE TABLE `tbl_session` (
  `sessionID` int(11) NOT NULL,
  `description` varchar(64) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_session`
--

INSERT INTO `tbl_session` (`sessionID`, `description`, `year`) VALUES
(1, 'Fall', 2023),
(2, 'Winter', 2023),
(3, 'Fall', 2024),
(4, 'Winter', 2024);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userID` int(11) NOT NULL,
  `firstName` varchar(64) NOT NULL,
  `lastName` varchar(64) NOT NULL,
  `address` varchar(256) NOT NULL,
  `city` varchar(128) NOT NULL,
  `state` varchar(64) NOT NULL,
  `zip` varchar(64) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `ssn` bigint(20) NOT NULL,
  `userType` varchar(32) NOT NULL,
  `email` varchar(256) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userID`, `firstName`, `lastName`, `address`, `city`, `state`, `zip`, `phone`, `ssn`, `userType`, `email`, `username`, `password`) VALUES
(1, 'Admin', 'Admin', 'Admin', 'Admin', 'Admin', '12345', '12345678890', 1111111111, 'administrator', 'admin@admin.com', 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`courseID`);

--
-- Indexes for table `tbl_session`
--
ALTER TABLE `tbl_session`
  ADD PRIMARY KEY (`sessionID`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_course`
--
ALTER TABLE `tbl_course`
  MODIFY `courseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_session`
--
ALTER TABLE `tbl_session`
  MODIFY `sessionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
