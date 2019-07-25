-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jul 05, 2018 at 11:38 AM
-- Server version: 5.6.39-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rehman1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_ID` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`admin_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_ID`, `username`, `password`) VALUES
(1, 'junaid', 'junaid89'),
(2, 'huzaifa', 'huzaifa8580');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_Id` int(11) NOT NULL,
  `customer_name` varchar(20) NOT NULL,
  `customer_cell` varchar(15) NOT NULL,
  `service_availed` varchar(150) NOT NULL,
  `customer_date` varchar(15) NOT NULL,
  PRIMARY KEY (`customer_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_Id`, `customer_name`, `customer_cell`, `service_availed`, `customer_date`) VALUES
(1, 'HUZAIFA ASIF', '3360508401', 'front elevation survey ', '17-10-2017'),
(2, 'ahsan', '0333523744', 'position of house ', '08-09-2017'),
(4, 'hikhksh', 'uff', '', ''),
(3, 'AHSAN', '9373737', 'MAP', '23-10-2017');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `employee_Id` int(11) NOT NULL,
  `username` varchar(18) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_Id`, `username`, `password`) VALUES
(1, 'employee', 'alrehman8580');

-- --------------------------------------------------------

--
-- Table structure for table `linechart`
--

CREATE TABLE IF NOT EXISTS `linechart` (
  `date` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `linechart`
--

INSERT INTO `linechart` (`date`, `amount`) VALUES
('Nov, 2017', 502000),
('Dec, 2017', 585500),
('Jan, 2018', 542000),
('Feb, 2018', 223000);

-- --------------------------------------------------------

--
-- Table structure for table `map_record`
--

CREATE TABLE IF NOT EXISTS `map_record` (
  `map_Id` int(11) NOT NULL AUTO_INCREMENT,
  `m_totalpayment` varchar(12) NOT NULL,
  `m_advancepayment` varchar(12) NOT NULL,
  `m_duepayment` varchar(12) NOT NULL,
  `remarks` varchar(40) NOT NULL,
  `description` varchar(150) NOT NULL,
  `m_date` varchar(15) NOT NULL,
  `dp_date` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`map_Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=345 ;

--
-- Dumping data for table `map_record`
--

INSERT INTO `map_record` (`map_Id`, `m_totalpayment`, `m_advancepayment`, `m_duepayment`, `remarks`, `description`, `m_date`, `dp_date`) VALUES
(3, '11000', '11000', '0', 'Muhammad Zahoor', 'R-1041, 1042 (6 Marla)', '11/01/2017', ''),
(1, '12000', '12000', '0', 'Yasir Rasheed', 'Phase 7 Plot no 26 5 Marla', '11/01/2017', ''),
(2, '5000', '5000', '0', 'Zeeshan nasir mughal (Passing Fee)', 'Plot no 127 phase 4C-1', '11/01/2017', ''),
(4, '10000', '10000', '0', 'Abdur Rehman', 'Plot no MC-15 phase 4-B 6Marla', '11/02/2017', ''),
(5, '7000', '7000', '0', 'Ghulam Hussain (Passing Fee)', 'Plot no 121 phase 7 (7 Marla)', '11/02/2017', ''),
(6, '13000', '13000', '0', 'Akbar Khan', 'Plot no A-665 phase 4-A (5 Marla)', '11/03/2017', ''),
(7, '5000', '0', '0', 'Raja Muhammad sohail (Remaining dues pai', 'Plot no 897 phase 4C-2 3.6Marla', '11/03/2017', ''),
(8, '10000', '5000', '5000', 'Muhammad Tariq', 'Plot no 662 Phase 4-B 5 Marla', '11/04/2017', ''),
(9, '20000', '5000', '15000', 'Jahanzeb Afridi', 'Plot no RC-32 phase 4C-2 4.2 Marla', '11/04/2017', ''),
(10, '12000', '3000', '9000', 'Zaitoon Baigum', 'Plot no 1316 phase 4C-2 5 Marla', '11/04/2017', ''),
(11, '11000', '1000', '10000', 'Tariq Mehmood', 'Plot no 1205 Phase 4-A 4 Marla', '11/04/2017', ''),
(12, '10000', '10000', '0', 'Khalid Mehmood', 'Plot no RC-1 Phase 7 10 Marla', '11/04/2017', ''),
(13, '12000', '12000', '0', 'Shazia Shakeel', 'Plot no 265 Phase 4C-2 5 Marla', '11/06/2017', ''),
(14, '10000', '5000', '5000', 'Shahida Parveen', 'Plot no 737 Phase 4-A 4 Marla', '11/06/2017', ''),
(15, '20000', '10000', '10000', 'Manzoor Hussain', 'Plot no C-2A Phase 4-A 3.6 Marla', '11/06/2017', ''),
(16, '13000', '13000', '0', 'Muhammad Shahzad', 'Plot no 1212 phase 7 5 Marla', '11/07/2017', ''),
(17, '20000', '15000', '5000', 'Ehsan Ullah', 'Plot no C-25 phase 4C-2 3.5 Marla', '11/07/2017', ''),
(18, '5000', '5000', '0', 'Ajaz Ahmed ( Passing Fee)', 'Plot no 1157/A phase 4-A 4 Marla', '11/07/2017', ''),
(19, '13000', '6000', '7000', 'Lubna Ansari', 'Plot no 3566/B phase 7 5 Marla', '11/08/2017', ''),
(20, '9000', '5000', '4000', 'Muhammad Rafique', 'Plot no A-551-I phase 4-A 4 Marla', '11/08/2017', ''),
(21, '10000', '10000', '0', 'Faisal Abbasi', 'Plot no R-161 phase 4-A 5 Marla', '11/09/2017', ''),
(22, '25000', '25000', '0', 'Muhammad Tanveer', 'Plot no RC-27 phase7  6Marla', '11/10/2017', ''),
(23, '5000', '5000', '0', 'Liaqat Ali', 'Plot no 3494 Phase 7 5Marla', '11/11/2017', ''),
(24, '5000', '5000', '0', 'Aziz Ahmed khan', 'Plot no 3495 phase 7 5Marla', '11/11/2017', ''),
(25, '18000', '10000', '8000', 'Shahid Khan', 'Plot no 772 phase 7 6Marla', '11/11/2017', ''),
(26, '7000', '7000', '0', 'Muhammad zeeshan nasir', 'Plot no A-203 phase 4-A 5Marla', '11/11/2017', ''),
(27, '16000', '16000', '0', 'Adnan younis malik', 'Plot no 1614 phase 7 7Marla', '11/11/2017', ''),
(28, '10000', '10000', '0', 'Riyaz Ahmed', 'Plot no 2439 phase 7 3Marla', '11/13/2017', ''),
(29, '10000', '4000', '6000', 'Muhammad Ajmal', 'Plot no 384 phase 4C/2 3Marla', '11/13/2017', ''),
(30, '4000', '4000', '0', 'Muhammad Shahzeb', 'Plot no 268 phase 4-B 5Marla', '11/13/2017', ''),
(31, '5000', '5000', '0', 'Nadeem shahzad', 'plot no 314 phase 7 5Marla', '11/13/2017', ''),
(32, '7000', '7000', '0', 'Qaneez zohaib', 'plot no R-294 phase 4-A 5Marla', '11/14/2017', ''),
(33, '15000', '15000', '0', 'Afzaal Ahmed', 'plot no 3578 phase 7 5Marla', '11/16/2017', ''),
(34, '11000', '11000', '0', 'Arshad Rehman', 'plot no 819 phase 7 5Marla', '11/16/2017', ''),
(35, '2000', '0', '0', 'Aswan Ali (Remaining Dues paid)', 'plot no 873-A phase 4-A 5Marla', '11/16/2017', ''),
(36, '11000', '11000', '0', 'Shumaila idrees', 'plot no 577/A phase 4-B 5Marla', '11/16/2017', ''),
(37, '12000', '12000', '0', 'Qamah saqeef', 'plot no A-820', '11/17/2017', ''),
(38, '5000', '5000', '0', 'Ayesha imran', 'plot no 25 phase 7 5Marla', '11/17/2017', ''),
(39, '12000', '5000', '7000', 'Arif mehmood qureshi', 'plot no 643/A phase 4-B 5Marla', '11/18/2017', ''),
(40, '5000', '5000', '0', 'Hafiza khatoon', 'plot no 3823 phase 7 5Marla', '11/20/2017', ''),
(41, '5000', '5000', '0', 'Muhammad Iltaf hussain', 'plot no 348 phase 7 5Marla', '11/21/2017', ''),
(42, '15000', '15000', '0', 'Tahir Ilyas', 'plot no 117 phase 7 7Marla', '11/22/2017', ''),
(43, '5000', '5000', '0', 'Kousar jabeen sultani', 'plot no 283 phase 4C-2 5Marla', '11/22/2017', ''),
(44, '10000', '10000', '0', 'Amjad Ali abbasi', 'plot no R-548 Phase 4/A 5Marla', '11/23/2017', ''),
(45, '5000', '5000', '0', 'Addem sohail', 'plot no 1723 phase 7 5Marla', '11/28/2017', ''),
(46, '14000', '14000', '0', 'Muhammad jameel', 'plot no R-1049 phase 4-A 5Marla', '11/29/2017', ''),
(47, '13000', '13000', '0', 'Abdul Qayyum', 'plot no 1822/p phase 7 5Marla', '11/29/2017', ''),
(48, '5000', '5000', '0', 'Ijaz manzoor', 'plot no MC-34/A phase 7 3Marla', '11/29/2017', ''),
(49, '7000', '7000', '0', 'Farrukh nawaz', 'plot no 79 phase 3 7Marla', '11/30/2017', ''),
(51, '5000', '5000', '0', 'Muhammad Asif', 'plot no A-492 phase 4A 5Marla', '12/05/2017', ''),
(52, '15000', '15000', '0', 'Zahoor Ahmed', 'plot no 775 phase 4C-2 5Marla', '12/05/2017', ''),
(53, '13000', '13000', '0', 'Ahsan mehmood', 'plot no 442 phase 4C-2 4Marla', '12/05/2017', ''),
(54, '4000', '4000', '0', 'Allah Baksh', 'plot no 1807 phase 7 5Marla', '12/06/2017', ''),
(55, '10000', '5000', '5000', 'Muhammad shafique', 'plot no 616 phase 7 5Marla', '12/06/2017', ''),
(56, '7000', '7000', '0', 'Tanveer Ahmed', 'plot no 63 phase 4B 7Marla', '12/07/2017', ''),
(57, '5000', '5000', '0', 'Muhammad Amin', 'plot no A-114 phase 4-A 5Marla', '12/07/2017', ''),
(58, '15000', '4000', '11000', 'Shahbaz Ahmed', 'plot no 639 phase 4-B 7Marla', '12/07/2017', ''),
(59, '15000', '15000', '0', 'Muhammad zeeshan', 'plot no R-177 phase 4-A 5Marla', '12/07/2017', ''),
(61, '17000', '17000', '0', 'Ghulam sarwar', 'plot no 192 phase 7 5Marla', '12/07/2017', ''),
(62, '12000', '12000', '0', 'Muhammad usman', 'plot no AEC-34 phase 7 5Marla', '12/11/2017', ''),
(63, '5000', '5000', '0', 'Rizwan amam', 'plot no A-113 phase 4-A 5Marla', '12/11/2017', ''),
(64, '12000', '12000', '0', 'Muhammad umair', 'plot no 242 phase 7 5Marla', '12/12/2017', ''),
(65, '10000', '5000', '5000', 'Rizwan amam', 'plot no R-748 phase 4-A 3Marla', '12/13/2017', ''),
(66, '10000', '5000', '5000', 'Naseem akhter', 'plot no 772 phase 4c-2 6Marla', '12/13/2017', ''),
(67, '30000', '5000', '20000', 'Tariq Mehmood', 'Plot no A-327 phase 4-A 7Marla', '12/13/2017', ''),
(68, '15000', '15000', '0', 'Muhammad usman basit', 'plot no 472 phase 4-B 5Marla', '12/13/2017', ''),
(69, '12000', '12000', '0', 'Muhammad Aameen', 'plot no 1279 phase 4c-2 5Marla', '12/13/2017', ''),
(70, '10000', '5000', '5000', 'Ghulam Abbas', 'plot no R-572 phase 4-A 4Marla', '12/16/2017', ''),
(71, '10000', '5000', '5000', 'Ghulam mustafa', 'plot no R-573 phase 4-A 4Marla', '12/16/2017', ''),
(73, '13000', '13000', '0', 'Waheed arshed', 'plot no 264 phase 4C-2 5Marla', '12/16/2017', ''),
(74, '13000', '5000', '8000', 'Hamza rasheed', 'plot no 1170-g phase 4C-2 5Marla', '12/16/2017', ''),
(75, '30000', '30000', '0', 'Muhammad ashraf mehfooz', 'plot no MBC/c-13 Block C phase 7', '12/16/2017', ''),
(76, '5000', '5000', '0', 'Ayub Ali khan', 'plot no 800 phase 4C-2 5Marla', '12/18/2017', ''),
(77, '5000', '5000', '0', 'Ayub Ali khan', 'plot no 801 phase 4C-2 5Marla', '12/18/2017', ''),
(78, '5000', '5000', '0', 'Shazia', 'plot no 802 phase 4C-2 5Marla', '12/18/2017', ''),
(79, '5000', '5000', '0', 'Shazia', 'plot no 803 phase 4C-2 5Marla', '12/18/2017', ''),
(80, '11000', '11000', '0', 'Muhammad Ali', 'plot no 740 phase 4C-2 5Marla', '12/18/2017', ''),
(81, '12000', '12000', '0', 'Raja Muhammad Sagheer', 'plot no 1821/g phase 7 5Marla', '12/18/2017', ''),
(82, '5000', '5000', '0', 'Abid Sb', 'Quetta site (Proposal plan)', '12/18/2017', ''),
(83, '8000', '8000', '0', 'Amin Ullah', 'plot no IK-113 phase 7 3Marla', '12/18/2017', ''),
(84, '25000', '10000', '15000', 'Raja Amjad Farooq', 'plot no MBC 04 phase 7 5Marla', '12/18/2017', ''),
(85, '13000', '13000', '0', 'Syed sajid hussain', 'plot no A-266 Phase 4-A 5Marla', '12/19/2017', ''),
(86, '13000', '13000', '0', 'Syed sajid hussain', 'plot no A-267 Phase 4-A 5Marla', '12/19/2017', ''),
(87, '5000', '5000', '0', 'Pervaiz akhter kiyani', 'plot no 81 phase 4-B 5marla', '12/20/2017', ''),
(88, '15000', '15000', '0', 'Aqeel Ahmed khan', 'plot no 268 phase 4C-2 5Marla', '12/20/2017', ''),
(89, '12000', '12000', '0', 'Zahida Ahmed', 'phot no 1318 phase 4C-2 5Marla', '12/20/2017', ''),
(90, '16500', '16500', '0', 'waqas saleem', 'plot no AED-15 phase 7 6Marla', '12/21/2017', ''),
(91, '18000', '18000', '0', 'Muhammad shafique', 'plot no 97/A phase 7 8Marla', '12/21/2017', ''),
(92, '8000', '4000', '4000', 'shazia kaneez', 'plot no Ik-151 phase 7 3Marla', '12/21/2017', ''),
(93, '5000', '5000', '0', 'Muhammad shakeel', 'plot no 934 phase 7 5Marla', '12/21/2017', ''),
(94, '17000', '17000', '0', 'Muhammad Fayyaz', 'plot no 378 phase 4-B 5Marla', '12/23/2017', ''),
(95, '5000', '5000', '0', 'Muhammad imtiaz khan', 'plot no A-1090 phase 4A 4Marla', '12/23/2017', ''),
(96, '13000', '13000', '0', 'Muhammad Bilal butt', 'plot no 764 phase 4-B 7Marla', '12/23/2017', ''),
(97, '15000', '15000', '0', 'Muhammad Arif', 'plot no 667 phase 3 6Marla', '12/26/2017', ''),
(98, '10000', '5000', '5000', 'zahid hussain', 'plot no 1205/E phase 4-A 5Marla', '12/26/2017', ''),
(99, '12000', '12000', '0', 'Mushtaq Ahmed awan', 'plot no 2353 phase 7 4Marla', '12/27/2017', ''),
(100, '10000', '10000', '0', 'Zulfiqar Ali', 'plot no A-388 phase 4-A 5Marla', '12/29/2017', ''),
(101, '5000', '5000', '0', 'Ghulam Mujtaba', 'plot no 279 phase 4-B 5Marla', '12/29/2017', ''),
(102, '12000', '12000', '0', 'Abid un Nisa', 'plot no 252 phase 7 5Marla', '12/30/2017', ''),
(103, '12000', '12000', '0', 'Muhammad Tahir/Masuda Bibi', 'plot no 3 phase 4C-1 5Marla', '12/30/2017', ''),
(104, '12000', '12000', '0', 'Muhammad javaid', 'plot no AEA-2 phase 7 5Marla', '01/01/2018', ''),
(105, '5000', '5000', '0', 'Muhammad muzaffar', 'plot no 882 phase 7 5Marla', '01/01/2018', ''),
(106, '12000', '12000', '0', 'Tauqeer aftab', 'plot no 1305 phase 7 5Marla', '01/01/2018', ''),
(107, '10000', '10000', '0', 'Abdur Rauf khan', 'plot no MC-54 phase 4C-2 6Marla', '01/01/2018', ''),
(108, '10000', '10000', '0', 'Kamran dastageer', 'plot no R-386 phase 4-A 5Marla', '01/02/2018', ''),
(109, '5000', '5000', '0', 'Amir lateef', 'plot no GR-281 Ghouri Garded 5Marla', '01/04/2018', ''),
(110, '12000', '12000', '0', 'Azmat Ullah', 'plot no 287 phase 4C-2 5Marla', '01/05/2018', ''),
(111, '25000', '25000', '0', 'Qamar saddique', 'plot no 4062 phase 7 10Marla', '01/05/2018', ''),
(112, '18000', '5000', '13000', 'Ikram Ullah', 'plot no 1599 phase 7 7Marla', '01/06/2018', ''),
(113, '8000', '5000', '0', 'waheed mehmood', 'plot no 304 phase 4-B 10Marla', '01/06/2018', '01/13/2018'),
(114, '35000', '20000', '15000', 'Zahid Ali', 'plot MBC 23 phase 7 6Marla', '01/08/2018', ''),
(115, '22000', '10000', '12000', 'Muhammad arshad', 'plot no MC-29 phase 7 6Marla', '01/09/2018', ''),
(116, '12000', '12000', '0', 'Mehreen kanwal', 'plot no 379 phase 4B 5Marla', '01/10/2018', ''),
(117, '10000', '10000', '0', 'Tanveer hussain', 'plot no 996 phase 4-A 5Marla', '01/11/2018', ''),
(118, '12000', '12000', '0', 'zariq hussain', 'plot no 290 phase 7 7Marla', '01/13/2018', ''),
(119, '12000', '12000', '0', 'Muhammad naqshad', 'plot no 1295 phase 4C-2 5Marla', '01/13/2018', ''),
(120, '10000', '10000', '0', 'Muhammad sarfraz', 'plot no 1588 phase 7 3Marla', '01/16/2018', ''),
(121, '11000', '6000', '5000', 'Muneer Ahmad', 'plot no 207 phase 4C-1 4Marla', '01/16/2018', ''),
(122, '7000', '7000', '0', 'Muhammad tayyab', 'plot no 473 phase 4C-2 7Marla', '01/16/2018', ''),
(123, '18000', '18000', '0', 'Ayaz mehmood', 'plot no MC-27 phase 5A 14Marla', '01/16/2018', ''),
(124, '12000', '10000', '2000', 'Habib akhter', 'plot no A-464 phase 4A 5Marla', '01/16/2018', ''),
(125, '14000', '7000', '7000', 'Muhammad mujeeb', 'plot no 156 phase 4-A 7Marla', '01/16/2018', ''),
(126, '12000', '2000', '10000', 'Danish insaf', 'plot no 929 phase 7 5Marla', '01/18/2018', ''),
(127, '13000', '13000', '0', 'shafqat hameed', 'plot no 3758 phase 7 5Marla', '01/18/2018', ''),
(128, '13000', '5000', '8000', 'Rana aamar sohail', 'plot no 241 phase 4C-2 5Marla', '01/20/2018', ''),
(129, '6000', '6000', '0', 'Pervaiz Ahmed (Dues paid Sep 2013)', 'plot no R-697 phase 4-A 3Marla', '01/20/2018', ''),
(130, '10000', '10000', '0', 'Nadeem hussain', 'plot no MC-26 phase 5A 6Marla', '01/20/2018', ''),
(131, '5000', '5000', '0', 'Shahrukh butt', 'plot no 999 phase 4C-2 5Marla', '01/22/2018', ''),
(132, '13000', '13000', '0', 'Ahsan mehmood', 'plot no 971 phase 4A 4Marla', '01/23/2018', ''),
(133, '11000', '11000', '0', 'Muhammad Habib', 'plot no 443 phase 4C-2 4Marla', '01/23/2018', ''),
(134, '12000', '12000', '0', 'Salma Abdul Qadeer', 'plot no 3805 phase 7 5Marla', '01/23/2018', ''),
(135, '10000', '10000', '0', 'Jameel Ahmed', 'plot no 342 phase 4C-2 4Marla', '01/24/2018', ''),
(136, '12000', '12000', '0', 'Talat nabeel', 'plot no A-841 phase 4-A 5Marla', '01/25/2018', ''),
(137, '17000', '17000', '0', 'Muhammad yousaf shaheen', 'plot no MC-32 phase 7 4Marla', '01/25/2018', ''),
(138, '15000', '15000', '0', 'Tassadaq mehmood', 'plot no HA-5 phase 7 2Marla', '01/27/2018', ''),
(139, '15000', '5000', '10000', 'Ch Muhammad Akhter', 'plot no 493 phase 4C-2 7Marla', '01/27/2018', ''),
(140, '12000', '12000', '0', 'Waqas Ahmed chugtai', 'plot no 522 phase 4C-2 5Marla', '01/27/2018', ''),
(141, '5000', '5000', '0', 'Muhammad naeem', 'plot no 661 phase 4C-2 5Marla', '01/27/2018', ''),
(142, '12000', '5000', '7000', 'Muhammad naeem iqbal', 'plot no 160 phase 4B 5Marla', '01/27/2018', NULL),
(143, '12000', '12000', '0', 'Mubashir Ahmed', 'plot no 289 phase 7 5Marla', '01/27/2018', NULL),
(144, '5000', '5000', '0', 'Atiq qureshi', 'plot no 119 phase 4C-1 5Marla', '01/27/2018', NULL),
(145, '10000', '10000', '0', 'Safeel Raheem', 'plot no A-278 phase 4A 5Marla', '01/27/2018', NULL),
(146, '15000', '15000', '0', 'Faisal mehmood/Zaryab naveed', 'plot no 1139 phase 4C-2 5Marla', '01/29/2018', NULL),
(147, '15000', '15000', '0', 'Hassan raza', 'plot no 1694 phase 7 5Marla', '01/31/2018', NULL),
(148, '13000', '13000', '0', 'Naseem akhter', 'plot no 352 phase 4C-2 4Marla', '02/01/2018', NULL),
(149, '5000', '5000', '0', 'Bilal naseer', 'plot no 1755 phase 7 5Marla', '02/01/2018', NULL),
(150, '15000', '15000', '0', 'Waseem ur Rehman', 'plot no R-167/A phase 4-A 5Marla', '02/01/2018', NULL),
(151, '12000', '3000', '9000', 'Naeem Ahmed', 'plot no R-991 phase 4-A 4Marla', '02/01/2018', NULL),
(152, '12000', '4000', '8000', 'Muhammad Asif', 'plot no R-991A phase 4A 3Marla', '02/01/2018', NULL),
(153, '10000', '10000', '0', 'Arshad mehmood awan', 'plot no MC-22 phase 4-A 7Marla', '02/01/2018', NULL),
(154, '5000', '5000', '0', 'Arshad hussain', 'plot no 1316 phase 4C-2 5Marla', '02/01/2018', NULL),
(155, '18000', '18000', '0', 'Nayyer iqbal', 'plot no 1206 phase 7 5Marla', '02/03/2018', NULL),
(156, '10000', '10000', '0', 'Hazrat khan', 'plot no MC-17 phase 4A 6Marla', '02/03/2018', NULL),
(157, '15000', '15000', '0', 'Muhammad sultan', 'plot no R-724 phase 4-A 3Marla', '02/03/2018', NULL),
(158, '18000', '10000', '8000', 'shahid zafar', 'plot no 1074 phase 7 5Marla', '02/03/2018', NULL),
(159, '5000', '5000', '0', 'abid hussain', 'plot no A-823 phase 4-A 5Marla', '02/06/2018', NULL),
(160, '5000', '5000', '0', 'Zulfiqar Ali', 'plot no 819 phase 4-A 5Marla', '02/06/2018', NULL),
(161, '5000', '5000', '0', 'Muneer hussain', 'plot no A-551 phase 4-A 5Marla', '02/06/2018', NULL),
(162, '5000', '0', '5000', 'Mumtaz Ahmed', 'plot no 589 phase 4C-2 5Marla', '02/06/2018', NULL),
(163, '15000', '10000', '5000', 'raja Asim abbas', 'plot no 1367 phase 7 5Marla', '02/06/2018', NULL),
(164, '7000', '7000', '0', 'Nighat mumtaz', 'plot no R-511 phase 4-A 7Marla', '02/06/2018', NULL),
(165, '15000', '5000', '10000', 'Misri khan', 'plot no 562 phase 7 5Marla', '02/06/2018', NULL),
(166, '18000', '15000', '3000', 'ubail Ullah', 'plot no 130 phase 4-A 7Marla', '02/06/2018', NULL),
(167, '15000', '15000', '0', 'Muddasir zeeshan', 'plot no A-1046 phase 4-A 5Marla', '02/06/2018', NULL),
(168, '12000', '2000', '10000', 'Ghulam abbas', 'plot no 233/f phase 4C-2 4Marla', '02/08/2018', NULL),
(169, '15000', '8000', '7000', 'Mohsin gulzar', 'plot no 288 phase 4C-2 5Marla', '02/08/2018', NULL),
(170, '20000', '20000', '0', 'Saeed Ahmed akhter', 'plot no A-593 phase 4-A 7Marla', '02/08/2018', NULL),
(171, '15000', '15000', '0', 'Naseer Ahmed', 'plot no 3770 phase 7 5Marla', '02/08/2018', NULL),
(172, '10000', '10000', '0', 'Adnan mumtaz', 'plot no 453 phase 4c-2 10Marla', '02/09/2018', NULL),
(173, '5000', '5000', '0', 'Raja tariq mehmood', 'plot no 1170-L phase 4c-2 5Marla', '02/10/2018', NULL),
(174, '14000', '13000', '1000', 'Arslan iltaf ', 'plot no 330 phase 7 5Marla', '02/10/2018', NULL),
(175, '20000', '20000', '0', 'Arshad mehmood', 'plot no 57 REHMAN ENCLAVE (BURMA)', '02/10/2018', NULL),
(176, '15000', '5000', '10000', 'Muhammad ishaq', 'plot no A-644 phase 4-A 5Marla', '02/10/2018', NULL),
(177, '5000', '5000', '0', 'Shamim Akhter', 'plot no 884 phase 4c-2 5Marla', '02/10/2018', NULL),
(178, '14000', '6000', '8000', 'Muhammad Ihsan ullah', 'plot no 4350 phase 7 5Marla', '02/12/2018', NULL),
(179, '4000', '4000', '0', 'Nisar Ahmed', 'plot no 430 phase 4C-2 3Marla', '02/13/2018', NULL),
(180, '5000', '5000', '0', 'Mussab ali khan', 'plot no R-50 phase 4-A 5Marla', '02/13/2018', NULL),
(181, '7000', '7000', '0', 'Farzana kausar', 'plot no GR-67 Ghouri garden 7Marla', '02/14/2018', NULL),
(182, '14000', '7000', '7000', 'zahoor Ahmed', 'plot no 67 phase 4C-1 5Marla', '02/14/2018', NULL),
(183, '5000', '5000', '0', 'Rashid arif abbasi', 'plot no 36 phase 4C-1 5Marla', '02/14/2018', NULL),
(184, '7000', '7000', '0', 'Yasir mehmood', 'plot no 179 phase 4B 7Marla', '02/15/2018', NULL),
(185, '16000', '16000', '0', 'Muhammad saadat', 'plot no A-659 phase 4-A 5Marla', '02/15/2018', NULL),
(186, '5000', '5000', '0', 'Adnan zia', 'plot no 759 phase 4c-2 5Marla', '02/15/2018', NULL),
(187, '5000', '5000', '0', 'Zulfiqar Ali', 'plot no 742 phase 4c-2 5Marla', '02/15/2018', NULL),
(188, '20000', '10000', '10000', 'Sheikh amir ali', 'plot no 36 phase 7 8Marla', '02/15/2018', NULL),
(189, '15000', '10000', '5000', 'sajid iqbal', 'plot no 883 phase 7 5Marla', '02/15/2018', NULL),
(190, '5000', '5000', '0', 'Muhammad almas khan', 'plot no 982 phase 4C-2 5Marla', '02/16/2018', NULL),
(191, '13000', '10000', '3000', 'Abdul rasheed', 'plot no 449 phase 7 5Marla', '02/16/2018', NULL),
(192, '15000', '12000', '3000', 'pervaiz mashi', 'plot no 1149 phase 4c-2 5Marla', '02/17/2018', NULL),
(193, '5000', '5000', '0', 'arshad mehmood', 'plot no 600 phase 4c-2 5Marla', '02/17/2018', NULL),
(194, '5000', '5000', '0', 'asim zia aslam', 'plot no 301 phase 7 5Marla', '02/19/2018', NULL),
(195, '4000', '4000', '0', 'asim zia aslam', 'plot no 279 phase 7 5Marla', '02/19/2018', NULL),
(196, '4000', '4000', '0', 'mian Muhammad aslam', 'plot no 307 phase 7 5Marla', '02/19/2018', NULL),
(197, '6000', '6000', '0', 'Muhammad ijaz', 'plot no 05 phase 7 5Marla', '02/19/2018', NULL),
(198, '15000', '15000', '0', 'Ali akbar', 'plot no 1336 phase 7 5Marla', '02/19/2018', NULL),
(199, '15000', '10000', '5000', 'Muhammad tahir', 'plot no 1083 phase 7 5Marla', '02/19/2018', NULL),
(200, '5000', '3000', '2000', 'Akhter hussain rana', 'plot no 635 phase 4C-2 5Marla', '02/19/2018', NULL),
(201, '5000', '5000', '0', 'sajjad Ahmed loudhi', 'plot no 1321/E-1 phase 4c-2 5Marla', '02/19/2018', NULL),
(202, '5000', '5000', '0', 'Mehmood hussain', 'plot no 326 ghouri garden 5Marla', '02/19/2018', NULL),
(203, '5000', '5000', '0', 'Muhammad yousaf', 'plot no MC-25 phase 7 3Marla', '02/19/2018', NULL),
(204, '13000', '3000', '10000', 'Muhammad sajjad awan', 'plot no R-66 phase 4A 5Marla', '02/22/2018', NULL),
(205, '5000', '5000', '0', 'Muhammad tariq', 'plot no MC-21 phase 7 3Marla', '02/23/2018', NULL),
(206, '5000', '5000', '0', 'sajid shahzad', 'plot no A-739 phase 4-A', '02/24/2018', NULL),
(207, '14000', '14000', '0', 'rubina shabnam', 'plot no 602 phase 4c-2 5Marla', '02/27/2018', NULL),
(208, '5000', '5000', '0', 'Muhammad Yameen', 'plot no 1136 phase 4C-2 5Marla', '02/27/2018', NULL),
(209, '5000', '5000', '0', 'Sheikh tajammal', 'plot no 1091 phase 4c-2 5Marla', '02/27/2018', NULL),
(210, '14000', '14000', '0', 'Hafiz kashif shareef', 'plot no 743 phase 4c-2 5Marla', '02/28/2018', NULL),
(211, '5000', '5000', '0', 'Gulfraz Ahmed khan', 'plot no 273 phase 4c-2 5Marla', '03/01/2018', NULL),
(212, '5000', '5000', '0', 'Hameeda bano', 'plot no A-1048 phase 4-A 5Marla', '03/01/2018', NULL),
(213, '10000', '10000', '0', 'Muhammad asif', 'plot no A-435 phase 4-A 5Marla', '03/01/2018', NULL),
(214, '15000', '5000', '10000', 'Zulfiqar Ali', 'plot no R-885 phase 4A 5Marla', '03/03/2018', NULL),
(215, '14000', '5000', '10000', 'Mustafa kamal', 'plot no 3603 phase 7 5Marla', '03/03/2018', NULL),
(216, '5000', '5000', '0', 'Muhammad arshad', 'plot no 1319 phase 4c-2 5Marla', '03/03/2018', NULL),
(217, '5000', '5000', '0', 'waseem Ahmed abbasi', 'plot no A-753 phase 4-A 5Marla', '03/03/2018', NULL),
(218, '5000', '5000', '0', 'Abdul Ghaffar', 'plot no f-09/A phase 4A 5Marla', '03/05/2018', NULL),
(219, '15000', '7000', '8000', 'Bilal Ahmed', 'plot no 856 phase 7 5Marla', '03/05/2018', NULL),
(220, '5000', '5000', '0', 'naseem khushi', 'plot no 174/0 phase 4c-1 4Marla', '03/06/2018', NULL),
(221, '5000', '5000', '0', 'Intezar Ali', 'plot no 1236 phase 7 5Marla', '03/06/2018', NULL),
(222, '5000', '5000', '0', 'liaqat khan', 'plot no 1102 phase 4C-2 5Marla', '03/07/2018', NULL),
(223, '5000', '5000', '0', 'syeda habiba maqsood', 'plot no 1125 phase 4c-2 5Marla', '03/07/2018', NULL),
(224, '14000', '3000', '11000', 'Sheikh mukhtar Ahmed', 'plot no 1170/E phase 4C-2 5Marla', '03/07/2018', NULL),
(225, '14000', '3000', '11000', 'Sheikh mukhtar Ahmed', 'plot no 1170/f phase 4C-2 5Marla', '03/07/2018', NULL),
(226, '10000', '10000', '0', 'aziz Ahmed', 'plot no MBC 06 phase 7 5Marla', '03/07/2018', NULL),
(227, '15000', '15000', '0', 'asmat jabeen', 'plot no AEC-20 phase 7 5Marla', '03/08/2018', NULL),
(228, '4000', '4000', '0', 'Mehdi Hassan', 'plot no 824 phase 7', '03/08/2018', NULL),
(229, '5000', '5000', '0', 'Ghulam shabbir', 'plot no 3434 phase 7 5Marla', '03/09/2018', NULL),
(230, '5000', '5000', '0', 'muzammil hussain', 'plot no 4098 phase 7 5Marla', '03/09/2018', NULL),
(231, '5000', '5000', '0', 'javed khan', 'plot no 1043/c phase 4a 5Marla', '03/09/2018', NULL),
(232, '4000', '4000', '0', 'Muhammad asghar ali', 'plot no 1193 phase 4A 4Marla', '03/10/2018', NULL),
(233, '20000', '2000', '18000', 'Ajmal Hussain', 'plot no 59 phase 4-B 7Marla', '03/10/2018', NULL),
(234, '14000', '10000', '4000', 'Hameeda begam', 'plot no 3354 phase 7 5Marla', '03/10/2018', NULL),
(235, '5000', '5000', '0', 'Atiq Ahmed', 'plot no 2414 phase 7 5Marla', '03/12/2018', NULL),
(236, '5000', '5000', '0', 'Abdur Rauf', 'plot no 1234/D phase 4C-2 5Marla', '03/12/2018', NULL),
(237, '5000', '5000', '0', 'Afifa yaseen', 'plot no 845 phase 4C-2 5Marla', '03/13/2018', NULL),
(238, '5000', '5000', '0', 'sadaqat hussain', 'plot no 846 phase 4C-2 5Marla', '03/13/2018', NULL),
(239, '15000', '15000', '0', 'khalid mehmood', 'plot no 4196 phase 7 5Marla', '03/13/2018', NULL),
(240, '15000', '15000', '0', 'Ch Yasir arshad', 'plot no 1253 phase 4C-2 5Marla', '03/13/2018', NULL),
(241, '7000', '7000', '0', 'Muhammad furqan ali', 'plot no A-187/K phase 4A 7Marla', '03/15/2018', NULL),
(242, '5000', '5000', '0', 'Muhammad aqeel', 'plot no 551 phase 4c2 5marla', '03/15/2018', NULL),
(243, '7000', '7000', '0', 'Masood Ahmed', 'plot no R-199/A phase 4A 7Marla', '03/15/2018', NULL),
(244, '8000', '8000', '0', 'Muhammad Sajid', 'plot no R-948 phase 4A 3Marla', '03/16/2018', NULL),
(245, '5000', '5000', '0', 'Muhammad Hanif', 'plot no 4120 phase 7 5Marla', '03/17/2018', NULL),
(246, '15000', '15000', '0', 'Rameez Shabbir', 'plot no 652 phase 7 5Marla', '03/19/2018', NULL),
(247, '5000', '5000', '0', 'Muhammad ilyas khan', 'plot no 1047 phase 7 5Marla', '03/19/2018', NULL),
(248, '3000', '3000', '0', 'Tariq', 'Mangral town 4Marla proposal', '03/19/2018', NULL),
(249, '20000', '20000', '0', 'fauzia alvi', 'plot no 132 phase 4B 7Marla', '03/20/2018', NULL),
(250, '5000', '5000', '0', 'Ahmed Hussain shah', 'plot no 286 phase 7 5Marla', '03/20/2018', NULL),
(251, '14000', '5000', '9000', 'syed sajid hussain shah', 'plot no 193 phase 7 5Marla', '03/20/2018', NULL),
(252, '5000', '5000', '0', 'Kashif ilyas', 'plot no 67 2.5Marla Hassan chowk', '03/20/2018', NULL),
(253, '14000', '7000', '7000', 'Izhar ul haq', 'plot no A-1044/B phase 4A 5Marla', '03/20/2018', NULL),
(254, '13000', '13000', '0', 'Zakir hussain', 'plot no A-935/B phase 4A 5Marla', '03/21/2018', NULL),
(255, '12000', '12000', '0', 'Ammad Ahmed', 'plot no 744 phase 4B 4Marla', '03/21/2018', NULL),
(256, '12000', '5000', '7000', 'sajjid hussain', 'plot no 1383/B phase 7 5Marla', '03/21/2018', NULL),
(257, '5000', '5000', '0', 'Abdulla jan', 'plot no 982 phase 4c2 5Marla', '03/21/2018', NULL),
(258, '7000', '7000', '0', 'Jamal hussain', 'plot no 465 phase 4c2 7Marla', '03/21/2018', NULL),
(259, '4000', '4000', '0', 'Adil Afaq', 'plot no 336 phase 4c2 4Marla', '03/21/2018', NULL),
(260, '15000', '15000', '0', 'Ahmed Khan', 'plot no 1760 phase 7 5Marla', '03/22/2018', NULL),
(261, '10000', '10000', '0', 'Hazrat khan', 'plot no A-54 phase 4A 10Marla', '03/22/2018', NULL),
(262, '15000', '15000', '0', 'Muhammad Asim khan', 'plot no 796 phase 7 5Marla', '03/26/2018', NULL),
(263, '5000', '5000', '0', 'Muhammad AbuBakar', 'plot no 170/D phase 4C1 5Marla', '03/26/2018', NULL),
(264, '15000', '7000', '8000', 'Muhammad Umar Abbasi', 'plot no 984 phase 4C2 5Marla', '03/26/2018', NULL),
(265, '13000', '13000', '0', 'Muhammad shabbir', 'plot no R-122 phase 4A 4Marla', '03/27/2018', NULL),
(266, '5000', '5000', '0', 'Dost Muhammad', 'plot no 3377 phase 7 5MArla', '03/27/2018', NULL),
(267, '7000', '7000', '0', 'Muhammad Khalid', 'plot no 97 phase 7 7Marla', '03/27/2018', NULL),
(268, '14000', '14000', '0', 'Muhammad Amjad iqbal', 'plot no 3943 phase 7 5Marla', '03/27/2018', NULL),
(269, '12000', '12000', '0', 'Aziz ur Rehman', 'plot no 1595 phase 7 5Marla', '03/27/2018', NULL),
(270, '13000', '5000', '8000', 'Muhammad Akram', 'plot no 357 phase 7 5Marla', '03/27/2018', NULL),
(271, '5000', '5000', '0', 'Babar zubair', 'plot no 3801 phase 7 5Marla', '03/28/2018', NULL),
(272, '15000', '5000', '10000', 'Shaheen Akhter', 'plot no A-278 phase 4A 5Marla', '03/28/2018', NULL),
(273, '7000', '7000', '0', 'Naveed abbasi', 'plot no A-164 phase 4A 7Marla', '03/28/2018', NULL),
(274, '5000', '5000', '0', 'Manzoor mannan', 'plot no 262 phase 7 5Marla', '03/29/2018', NULL),
(275, '5000', '5000', '0', 'Shakeel ur Rehman', 'plot no 2367 phase 7 5Marla', '03/29/2018', NULL),
(276, '14000', '14000', '0', 'Hussain Jan', 'Plot no 3797 Phase 7 5Marla', '03/29/2018', NULL),
(277, '10000', '5000', '5000', 'Muhammad Nadeem', 'plot no 72/A phase 7 3Marla', '03/29/2018', NULL),
(278, '25000', '25000', '0', 'Abida khanum', 'plot no 12 phase 7 10Marla', '03/29/2018', NULL),
(279, '15000', '15000', '0', 'Mustafa khan', 'plot no 706 phase 7 5Marla', '03/30/2018', NULL),
(280, '20000', '20000', '0', 'Muhammad Afzaal', 'plot no A-628 phase 4A 7Marla', '03/30/2018', NULL),
(281, '5000', '5000', '0', 'Imran Hussain', 'plot no 993 phase 4c2 5Marla', '03/30/2018', NULL),
(282, '14000', '14000', '0', 'Noor fatima', 'plot no aec-10 phase 7 5Marla', '04/02/2018', NULL),
(283, '5000', '5000', '0', 'Masood Ahmed', 'plot no 973 phase 7 5Marla', '04/02/2018', NULL),
(284, '12000', '6000', '6000', 'Zulfiqar Ahmed', 'plot no R-777 phase 4A 3Marla', '04/02/2018', NULL),
(285, '5000', '5000', '0', 'Parveen', 'plot no 12 phase 4C2 5Marla', '04/02/2018', NULL),
(286, '8000', '8000', '0', 'Muhammad Riaz', 'plot no 213/A phase 4A 7Marla', '04/03/2018', NULL),
(287, '5000', '5000', '0', 'Kausar begum', 'plot no 1293 phase 4C-2 5Marla', '04/03/2018', NULL),
(288, '13000', '5000', '8000', 'Muhammad asif', 'plot no 4172 phase 7 5Marla', '04/03/2018', NULL),
(289, '5000', '5000', '0', 'Muhammad Ikram', 'plot no 294 phase 4C2 5Marla', '04/03/2018', NULL),
(290, '15000', '2000', '13000', 'Muhammad Adnan awan', 'plot no 266 phase 4C2 5Marla', '04/04/2018', NULL),
(291, '18000', '18000', '0', 'Nazar Muhammad', 'plot no MC-34 phase 7 4Marla', '04/04/2018', NULL),
(292, '5000', '5000', '0', 'zafar mehmood', 'plot no 274 phase 4C1 5Marla', '04/04/2018', NULL),
(293, '11000', '11000', '0', 'Gul shahzad', 'plot no 437 phase 4c2 4Marla', '04/04/2018', NULL),
(294, '5000', '5000', '0', 'Muhammad maroof', 'plot no 3399 phase 7 5Marla', '04/04/2018', NULL),
(295, '20000', '20000', '0', 'Atif javed', 'plot no 199 phase 4c 7Marla', '04/04/2018', NULL),
(296, '5000', '5000', '0', 'Atiq ur Rehman', 'Ik-101 phase 7 5MArla', '04/05/2018', NULL),
(297, '5000', '5000', '0', 'Muhammad Riaz', 'plot no 539 phase 7 5Marla', '04/05/2018', NULL),
(298, '12000', '12000', '0', 'Sakina sadaf', 'plot no 404 phase 4C2 3Maral', '04/05/2018', NULL),
(299, '15000', '15000', '0', 'Abdul Qadeer khan', 'plot no 3806 phase 7 5Marla', '04/05/2018', NULL),
(300, '14000', '7000', '14000', 'Hakeem safdar', 'plot no 727 phase 4c2 5Marla', '04/06/2018', NULL),
(301, '5000', '5000', '0', 'Majid Jahangir', 'plot no 746 phase 7 5Marla', '04/07/2018', NULL),
(302, '15000', '15000', '0', 'Najma khatoon', 'plot no 968 phase 4C2 5Marla', '04/07/2018', NULL),
(303, '13000', '10000', '3000', 'Azeem ul haq', 'plot no 550 phase 4c2 5Marla', '04/07/2018', NULL),
(304, '13000', '10000', '3000', 'shahab ud din', 'plot no 345 phase 4c2 5Marla', '04/07/2018', NULL),
(305, '13000', '5000', '8000', 'Asif abbas awan', 'plot no 186 phase 4c1 5Marla', '04/07/2018', NULL),
(306, '14000', '14000', '0', 'Shahid abbasi', 'plot no 964 4C-2 5Marla', '04/09/2018', NULL),
(307, '10000', '5000', '5000', 'Nazish faraz', 'MCB-6 phase 7 6Marla', '04/09/2018', NULL),
(308, '15000', '15000', '0', 'Muhammad khurshid khan', 'plot no 2433 phase 7 5Marla', '04/09/2018', NULL),
(309, '5000', '5000', '0', 'Aqeel Ahmed', 'plot no 882/B phase 4c-2 5Marla', '04/10/2018', NULL),
(310, '5000', '5000', '0', 'shahzad ashraf', 'plot no R-1062 phase 4-A 5Marla', '04/10/2018', NULL),
(311, '5000', '5000', '0', 'Qaiser Abbas', 'plot no AEC-19 phase 7 6.6Marla', '04/10/2018', NULL),
(312, '5000', '5000', '0', 'Abdul shareef bangash', 'plot no 833 phase 4C-2 5Marla', '04/10/2018', NULL),
(313, '20000', '15000', '5000', 'Aftab shah', 'plot no RC-9 phase 7 6Marla', '04/10/2018', NULL),
(314, '4000', '4000', '0', 'sajida parveen', 'plot no A-1102 phase 4A', '04/10/2018', NULL),
(315, '7000', '7000', '0', 'Akhter mehmood', 'plot no R-37/B phase 4A 7Marla', '04/11/2018', NULL),
(316, '5000', '5000', '0', 'Mubashir rasheed', 'plot no 4107 phase 7 5Marla', '04/11/2018', NULL),
(317, '7000', '7000', '0', 'Abdul Ghani', 'plot no 1050 phase 7 5Marla', '04/12/2018', NULL),
(318, '5000', '5000', '0', 'Faisal mehmood', 'plot no 269 phase 4c-2 5Marla', '04/12/2018', NULL),
(319, '5000', '5000', '0', 'zafar mehmood', 'plot no 275 phase 4C-2 5Marla', '04/12/2018', NULL),
(320, '5000', '5000', '0', 'Qurban hussain', 'plot no 1821J phase 7 5Marla', '04/12/2018', NULL),
(321, '15000', '15000', '0', 'Sultan zainab', 'plot no 1315/A phase 4C-2 5Marla', '04/13/2018', NULL),
(322, '20000', '5000', '15000', 'ejaz ul haq', 'plot no R-201 phase 4A 7Marla', '04/14/2018', NULL),
(323, '5000', '5000', '0', 'Imran rasool', 'plot no 232 phase 4C-2 5Marla', '04/14/2018', NULL),
(324, '5000', '5000', '0', 'Muhammad Sajid', 'plot no 365 phase 4C-2', '04/14/2018', NULL),
(325, '6000', '6000', '0', 'Muhammad aslam', 'plot no 131 phase 7 7Marla', '04/14/2018', NULL),
(326, '14000', '14000', '0', 'Ishtiaq Ahmed', 'plot no 720 phase 7 5Marla', '04/14/2018', NULL),
(327, '20000', '20000', '0', 'Jahangir hussain', 'Plot no MC-25 phase 4C-1', '04/14/2018', NULL),
(328, '20000', '20000', '0', 'Farah asia', 'plot no 617/D phase 4A 7Marla', '04/14/2018', NULL),
(329, '20000', '20000', '0', 'Nasir Zahid', 'plot no R-204 phase 4A 5Marla', '04/14/2018', NULL),
(330, '14000', '5000', '9000', 'Atif Mehmood', 'plot no 3358 phase 7 5Marla', '04/16/2018', NULL),
(331, '16000', '16000', '0', 'Muhammad faheem khan', 'plot no MC-3/A phase 7 2.5Marla', '04/16/2018', NULL),
(332, '5000', '5000', '0', 'Ghulam murtaza', 'plot no R-981 phase 4A 5Marla', '04/16/2018', NULL),
(333, '5000', '5000', '0', 'Nasreen gohar', 'plot no MC-34 phase 7 Akbar enclave', '04/17/2018', NULL),
(334, '15000', '15000', '0', 'Nabila shahzadi', 'plot no 4122 phase 7 5Marla', '04/17/2018', NULL),
(335, '15000', '2000', '13000', 'Asghar khan', 'plot no 4053 phase 7 5Marla', '04/18/2018', NULL),
(336, '17000', '7000', '10000', 'Muhammad Asghar', 'plot no HU-04 phase 7 3Marla', '04/18/2018', NULL),
(337, '8000', '8000', '0', 'Abid ehsan', 'plot no 125 phase 4C-1 8Marla', '04/19/2018', NULL),
(338, '11000', '5000', '6000', 'Muhammad Hussain', 'plot no 2350 phase 7 5Marla', '04/19/2018', NULL),
(339, '25000', '25000', '0', 'Faisal hussain', 'plot no 249, 250 phase 4C-2 5Marla', '04/20/2018', NULL),
(340, '14000', '14000', '0', 'Imran khalid', 'plot no 300 phase 4C-2 5Marla', '04/21/2018', NULL),
(341, '12000', '12000', '0', 'Shoukat Ali', 'plot no 4352 phase 7 5Marla', '04/21/2018', NULL),
(342, '8000', '8000', '0', 'Tanveer Ahmed', 'plot no R-531 phase 4A 7Marla', '04/21/2018', NULL),
(343, '5000', '5000', '0', 'Abdul Qayyum', 'plot no 1292 phase 4C-2 5Marla', '04/23/2018', NULL),
(344, '5000', '5000', '0', 'Shaheen naz', 'plot no 322 phase 4C-2 5Marla', '04/23/2018', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `monthly_expense`
--

CREATE TABLE IF NOT EXISTS `monthly_expense` (
  `me_ID` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(25) NOT NULL,
  `m_description` text NOT NULL,
  `m_date` varchar(15) NOT NULL,
  `m_amount` int(11) NOT NULL,
  PRIMARY KEY (`me_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Dumping data for table `monthly_expense`
--

INSERT INTO `monthly_expense` (`me_ID`, `m_name`, `m_description`, `m_date`, `m_amount`) VALUES
(1, 'Petrol', '', '02/01/2018', 2000),
(2, 'Others', 'Office cleaning', '02/01/2018', 3000),
(3, 'Others', 'Site Car Repairing', '02/01/2018', 5000),
(4, 'Others', 'Ch. Junaid ur Rehma', '02/01/2018', 5000),
(5, 'Others', 'Ch. Junaid ur Rehman', '02/01/2018', 1000),
(6, 'Others', 'Milk, biscuit, office running', '02/02/2018', 500),
(7, 'Others', 'Site Car Repairing', '02/02/2018', 2120),
(8, 'Petrol', 'Choona, Doorie', '02/02/2018', 2000),
(9, 'Others', 'Taxi fare', '02/02/2018', 300),
(10, 'Others', 'Ch. sohaib ur Rehman', '02/02/2018', 5000),
(11, 'Others', 'Tissue, pen, etc', '02/03/2018', 500),
(15, 'Office Running', 'Milk', '02/03/2018', 500),
(16, 'Others', 'Motorcycle', '02/03/2018', 500),
(17, 'Others', 'brochures print', '02/06/2018', 1000),
(18, 'Zakat', '', '02/06/2018', 3000),
(19, 'Office Running', 'Gas valve', '02/06/2018', 1000),
(20, 'Office Running', 'Milk', '02/07/2018', 500),
(21, 'Flat Expense', '', '02/07/2018', 30000),
(22, 'Petrol', 'Car', '02/07/2018', 2000),
(23, 'Map Stamp', '', '02/07/2018', 6000),
(24, 'Office Running', 'Biscuit, Stationary', '02/08/2018', 680),
(25, 'Zakat', '', '02/08/2018', 2000),
(26, 'Others', 'Madrassa(Khana ziarat)', '02/09/2018', 25000),
(27, 'Map Stamp', '', '02/09/2018', 6000),
(28, 'Petrol', 'Choona, Doorie', '02/10/2018', 2000),
(29, 'Others', 'Biryani for office', '02/10/2018', 1000),
(30, 'Office Running', 'Stationary items', '02/10/2018', 2000),
(31, 'Office Running', 'bakery items', '02/10/2018', 200),
(32, 'Office Running', 'Milk', '02/12/2018', 500),
(33, 'Others', 'Motorcycle Repairing', '02/12/2018', 1920),
(34, 'Petrol', 'Choona, Doorie', '03/01/2018', 2000),
(35, 'Office Running', 'Bobby for office cleaning', '03/01/2018', 3000),
(36, 'Others', 'Tacometer', '03/01/2018', 250),
(37, 'Map Printing', '', '03/02/2018', 3500),
(38, 'Map Stamp', '', '03/02/2018', 16000),
(39, 'Others', 'Autocad fee for Ammar', '03/03/2018', 16000),
(40, 'Others', 'Ch. Junaid ur Rehman', '03/03/2018', 10000),
(41, 'Office Running', 'daily expense', '03/05/2018', 2900),
(42, 'Others', 'sarvaior Asad Ali medical expense', '03/05/2018', 2000),
(43, 'Zakat', '', '03/05/2018', 8000),
(44, 'Petrol', 'Car and motorcycle', '03/05/2018', 2500),
(45, 'Zakat', '', '03/05/2018', 2500),
(46, 'Zakat', '', '03/06/2018', 3000),
(47, 'Others', 'Usman ashraf advance salary', '03/06/2018', 5000),
(48, 'Petrol', 'Choona, Doorie', '03/06/2018', 2000),
(49, 'Office Running', 'Stationary items', '03/06/2018', 2300),
(50, 'Zakat', '', '03/07/2018', 2000),
(51, 'Petrol', 'Khan', '03/07/2018', 1000),
(52, 'Zakat', '', '03/07/2018', 5000),
(53, 'Others', 'Motorcycle Repairing Riasat', '03/07/2018', 800),
(54, 'Others', 'Tissue', '03/08/2018', 200),
(55, 'Map Stamp', '', '03/08/2018', 3500),
(56, 'Others', 'Ch. Junaid ur Rehman', '03/08/2018', 10000),
(57, 'Others', 'Malik iltaf salary', '03/09/2018', 10000),
(58, 'Map Printing', '', '03/09/2018', 4000),
(59, 'Map Stamp', '', '03/09/2018', 6000),
(60, 'Zakat', '', '03/10/2018', 3000),
(61, 'Petrol', 'Car and motorcycle', '03/10/2018', 2500),
(62, 'Others', 'Kitchen expense (5 to 10)', '03/10/2018', 6700),
(63, 'Others', 'Flat expense', '03/12/2018', 30000),
(64, 'Others', 'advance salary hassam satti', '03/13/2018', 5000),
(65, 'Map Printing', '', '03/13/2018', 1000),
(66, 'Office Running', 'A4 + A3 papers', '03/13/2018', 2000),
(67, 'Others', 'Ch. Junaid ur Rehman', '03/14/2018', 1000),
(68, 'Petrol', 'Repairing + petrol', '03/15/2018', 2000),
(69, 'Petrol', 'Car and motorcycle', '03/15/2018', 2500),
(70, 'Others', 'Ch. sohaib ur Rehman', '03/15/2018', 10000),
(71, 'Petrol', 'Choona, Doorie', '03/15/2018', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `others`
--

CREATE TABLE IF NOT EXISTS `others` (
  `other_Id` int(11) NOT NULL,
  `other_desc` varchar(180) NOT NULL,
  `other_amount` varchar(10) NOT NULL,
  `other_date` varchar(15) NOT NULL,
  PRIMARY KEY (`other_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `others`
--

INSERT INTO `others` (`other_Id`, `other_desc`, `other_amount`, `other_date`) VALUES
(1, 'car oil change', '5000', '15-10-2017'),
(2, 'zakat', '5000', '19-07-2017'),
(3, 'loan to umair', '7000', '15-10-2017');

-- --------------------------------------------------------

--
-- Table structure for table `position_record`
--

CREATE TABLE IF NOT EXISTS `position_record` (
  `position_ID` int(11) NOT NULL AUTO_INCREMENT,
  `plot_no` varchar(20) NOT NULL,
  `p_size` varchar(20) NOT NULL,
  `p_phase` varchar(20) NOT NULL,
  `p_payment` varchar(20) NOT NULL,
  `p_date` varchar(15) NOT NULL,
  PRIMARY KEY (`position_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `position_record`
--

INSERT INTO `position_record` (`position_ID`, `plot_no`, `p_size`, `p_phase`, `p_payment`, `p_date`) VALUES
(1, 'A-865', '2 M', 'c', '2078', '01/25/2018'),
(2, 'A-768', '2 M', '2-c', '4000', '02/01/2018'),
(3, 'h-98', '7 m', 'b', '7', '02/13/2018');

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE IF NOT EXISTS `survey` (
  `survey_Id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_location` varchar(110) NOT NULL,
  `survey_amount` varchar(12) NOT NULL,
  `survey_date` varchar(15) NOT NULL,
  PRIMARY KEY (`survey_Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `survey`
--

INSERT INTO `survey` (`survey_Id`, `survey_location`, `survey_amount`, `survey_date`) VALUES
(1, 'sector a, house no#45.', '5050', '11/12/2017'),
(2, 'sector a, house no#87', '5000', '11/16/2017'),
(3, 'ghori town phase a house no#1', '40000', '12/04/2017');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_Id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_Id`, `username`, `password`) VALUES
(1, 'junaid', 'junaid89');

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE IF NOT EXISTS `worker` (
  `worker_Id` int(11) NOT NULL AUTO_INCREMENT,
  `worker_name` varchar(25) NOT NULL,
  `worker_address` varchar(400) NOT NULL,
  `worker_cellNo` varchar(17) NOT NULL,
  `join_date` varchar(15) NOT NULL,
  PRIMARY KEY (`worker_Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`worker_Id`, `worker_name`, `worker_address`, `worker_cellNo`, `join_date`) VALUES
(1, 'faisal', 'HOUSE NO#432, STREET NO#18, FALCON COMPLEX, RAWALPINDI.', '03009876577', '12-10-2017'),
(2, 'arslan', 'ghori town', '03235467845', '01-02-2016');

-- --------------------------------------------------------

--
-- Table structure for table `worker_salary`
--

CREATE TABLE IF NOT EXISTS `worker_salary` (
  `ws_Id` int(11) NOT NULL AUTO_INCREMENT,
  `ws_name` varchar(20) NOT NULL,
  `ws_amount` varchar(12) NOT NULL,
  `ws_date` varchar(15) NOT NULL,
  PRIMARY KEY (`ws_Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `worker_salary`
--

INSERT INTO `worker_salary` (`ws_Id`, `ws_name`, `ws_amount`, `ws_date`) VALUES
(1, 'usman', '28000', '01-06-2017'),
(2, 'jameel', '13000', '01-05-2017'),
(3, 'arsalan', '15000', '01-10-2017');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
