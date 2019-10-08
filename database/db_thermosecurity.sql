-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 08, 2019 at 09:43 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_thermosecurity`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alexa`
--

DROP TABLE IF EXISTS `tbl_alexa`;
CREATE TABLE IF NOT EXISTS `tbl_alexa` (
  `A_ID` int(11) NOT NULL AUTO_INCREMENT,
  `A_TITLE` varchar(60) NOT NULL,
  `A_BODY` text NOT NULL,
  PRIMARY KEY (`A_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_alexa`
--

INSERT INTO `tbl_alexa` (`A_ID`, `A_TITLE`, `A_BODY`) VALUES
(1, 'The Smartphone of Smarthomes', 'Hands-free communication has never been easier with the integration of Amazon’s very own AI, Alexa. Set reminders, search the web, play music, and more! Alexa also allows for you to use your voice like a remote control with access to over 50,000 skills and commands. If you own a smart speaker, ThermoSecure will connect and stream music to it, allowing you to fill your house with the greatest hits. Stream music from Amazon Music, Apple Music, Sirius XM, Spotify, and more. Just say the magic word.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_capabilities`
--

DROP TABLE IF EXISTS `tbl_capabilities`;
CREATE TABLE IF NOT EXISTS `tbl_capabilities` (
  `CAPABILITIES_ID` int(11) NOT NULL AUTO_INCREMENT,
  `C_TITLE` varchar(60) NOT NULL,
  `C_BODY` text NOT NULL,
  PRIMARY KEY (`CAPABILITIES_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_capabilities`
--

INSERT INTO `tbl_capabilities` (`CAPABILITIES_ID`, `C_TITLE`, `C_BODY`) VALUES
(1, 'Stuck out in the cold?', 'No problem. ThermoSecure uses a desktop portal and mobile app so that you can use its full capabilities even when you’re not at home. If you need to unlock doors, open windows, or just check in on the homestead with portable cameras, we’ve got your back.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_features`
--

DROP TABLE IF EXISTS `tbl_features`;
CREATE TABLE IF NOT EXISTS `tbl_features` (
  `FEATURE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `F_TITLE` varchar(30) NOT NULL,
  `ICON1` text NOT NULL,
  `ICON2` text NOT NULL,
  `ICON3` text NOT NULL,
  `ICON4` text NOT NULL,
  `ICON5` text NOT NULL,
  PRIMARY KEY (`FEATURE_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_features`
--

INSERT INTO `tbl_features` (`FEATURE_ID`, `F_TITLE`, `ICON1`, `ICON2`, `ICON3`, `ICON4`, `ICON5`) VALUES
(1, 'Hot Features', 'Thermostat – Regulate and control the temperature in your house, including those hard to reach hot and cold spots with programmable sensors', 'Snowflake – Regulates indoor humidity levels to prevent frost buildup on outside windows', 'Clouds – View the daily, hourly, and weekly forecast all from one streamlined location', 'Alexa – Turn your home into a smart home with built-in support of Amazon’s own voice-controlled AI, Alexa', 'Security – Check motion sensors, cameras, and more right from your pocket. Open windows, unlock doors, and even test for Carbon Monoxide and smoke');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

DROP TABLE IF EXISTS `tbl_footer`;
CREATE TABLE IF NOT EXISTS `tbl_footer` (
  `FOOTER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ADDRESS` varchar(60) NOT NULL,
  `PHONE` varchar(30) NOT NULL,
  `EMAIL` varchar(40) NOT NULL,
  `WORKING_HOURS` text NOT NULL,
  `COPYRIGHT` varchar(60) NOT NULL,
  PRIMARY KEY (`FOOTER_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`FOOTER_ID`, `ADDRESS`, `PHONE`, `EMAIL`, `WORKING_HOURS`, `COPYRIGHT`) VALUES
(1, '138 Dundas St. London, ON', '519-647-5589', 'thermosecurity@housecom.com', 'Monday to Friday: 9am to 5pm\r\nSaturday: Closed\r\nSunday: Closed', '©Copyright 2019 HouseCom™');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_header`
--

DROP TABLE IF EXISTS `tbl_header`;
CREATE TABLE IF NOT EXISTS `tbl_header` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(60) NOT NULL,
  `SUB-TITLE` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_header`
--

INSERT INTO `tbl_header` (`ID`, `TITLE`, `SUB-TITLE`) VALUES
(1, 'Introducing ThermoSecurity', 'The HouseCom™ ThermoSecurity™ System is a fully digital, hardwired and wireless enabled home personal and secure environment control system, designed with you and your home in mind');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_packaging`
--

DROP TABLE IF EXISTS `tbl_packaging`;
CREATE TABLE IF NOT EXISTS `tbl_packaging` (
  `P_ID` int(11) NOT NULL AUTO_INCREMENT,
  `P_TITLE` varchar(60) NOT NULL,
  `P_BODY` text NOT NULL,
  PRIMARY KEY (`P_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_packaging`
--

INSERT INTO `tbl_packaging` (`P_ID`, `P_TITLE`, `P_BODY`) VALUES
(1, 'Bring ThermoSecurity home today', 'When you purchase ThermoSecure, you get a bundle of gadgets and gizmos to set up. The standard box comes with the ThermoSecure device itself, 5 cameras, 5 programmable sensors, and a card that has a unique QR code to scan into your devices for a more personal setup. In case this all sounds like a lot for you, our team has dedicated professionals that can come into your home and have everything properly set up for you.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_recognition`
--

DROP TABLE IF EXISTS `tbl_recognition`;
CREATE TABLE IF NOT EXISTS `tbl_recognition` (
  `R_ID` int(11) NOT NULL AUTO_INCREMENT,
  `R_TITLE` varchar(60) NOT NULL,
  `R_BODY` text NOT NULL,
  PRIMARY KEY (`R_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_recognition`
--

INSERT INTO `tbl_recognition` (`R_ID`, `R_TITLE`, `R_BODY`) VALUES
(1, 'ThermoSecurity knows you', 'With a built in ID camera, you can set up ThermoSecurity to only be changed by the most unique password in the world: your face. This means no unwanted energy charges, no sudden accidental flash-freezes, and no random alarms at 2am. All of the features that ThermoSecure offers can be controlled from your smartphone or the physical device itself. Passwords can be set up on your device when it comes to extra features such as cameras or setting temperature controls. Your security is important to us and totally customisable by you.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_security`
--

DROP TABLE IF EXISTS `tbl_security`;
CREATE TABLE IF NOT EXISTS `tbl_security` (
  `S_ID` int(11) NOT NULL AUTO_INCREMENT,
  `S_TITLE` varchar(60) NOT NULL,
  `S_BODY` text NOT NULL,
  PRIMARY KEY (`S_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_security`
--

INSERT INTO `tbl_security` (`S_ID`, `S_TITLE`, `S_BODY`) VALUES
(1, 'Keep it secret, keep it safe', 'Live stream straight to your phone with zoom functionality. ThermoSecure’s built in person detection also removes the risk of giving you irritating push notifications when a fly buzzes across the camera. You can set your own motion-zones so that you only get notified for events that happen in those areas. ThermoSecure captures a 14 second clip every time that motion sensors are triggered, which are then uploaded to your personal Cloud storage. Now, you can also use hands-free commands such as “Alexa, show me the living room” for added accessibility.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
