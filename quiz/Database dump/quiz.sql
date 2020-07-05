-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2018 at 04:16 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `ansid` int(11) NOT NULL,
  `questions_questid` int(11) NOT NULL,
  `subject_subid` int(11) NOT NULL,
  `answer` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`ansid`, `questions_questid`, `subject_subid`, `answer`, `status`) VALUES
(413, 91, 12, 'World Worm Web', 0),
(414, 91, 12, 'World Word Web', 0),
(415, 91, 12, 'World Wide Web', 1),
(416, 91, 12, 'None of the above', 0),
(417, 92, 12, 'MAN', 1),
(418, 92, 12, 'LAN', 0),
(419, 92, 12, 'WAN', 0),
(420, 92, 12, 'All of the above', 0),
(421, 93, 12, 'Internet', 0),
(422, 93, 12, 'E-mail', 0),
(423, 93, 12, 'Network', 1),
(424, 93, 12, 'All of the above', 0),
(425, 94, 12, 'Hybrid', 1),
(426, 94, 12, 'Digital', 0),
(427, 94, 12, 'Analog', 0),
(428, 94, 12, 'None of the above', 0),
(433, 95, 12, 'Internet Browser', 0),
(434, 95, 12, 'Page Browser', 0),
(435, 95, 12, 'Web Browser', 1),
(436, 95, 12, 'All of the above', 0),
(437, 96, 12, 'MS-Word', 0),
(438, 96, 12, 'Ms-Excel', 0),
(439, 96, 12, 'Ms-Power Point', 1),
(440, 96, 12, 'Ms- Access', 0),
(441, 97, 12, 'International Service Provider', 0),
(442, 97, 12, 'Internet Service Provider', 1),
(443, 97, 12, 'Internet Service Presenter', 0),
(444, 97, 12, 'None of the above', 0),
(453, 99, 12, '1MB', 0),
(454, 99, 12, '1GB', 0),
(455, 99, 12, '1TB', 0),
(456, 99, 12, '1KB', 1),
(457, 100, 12, 'Downloading', 0),
(458, 100, 12, 'Uploading', 1),
(459, 100, 12, 'None of the above', 0),
(460, 100, 12, 'All of the above', 0),
(461, 101, 12, 'Hard Disk', 0),
(462, 101, 12, 'USB Disk', 0),
(463, 101, 12, 'Floppy Disk', 0),
(464, 101, 12, 'All of the above', 1),
(465, 102, 13, 'Conduction', 0),
(466, 102, 13, 'Convection', 1),
(467, 102, 13, 'Radiation', 0),
(468, 102, 13, 'Both conduction and convection', 0),
(469, 103, 13, 'conduction', 0),
(470, 103, 13, 'convection', 0),
(471, 103, 13, 'radiation', 1),
(472, 103, 13, 'modulation', 0),
(473, 104, 13, 'Geo Thermal Energy ', 0),
(474, 104, 13, 'Wind Energy', 0),
(475, 104, 13, 'Nuclear Energy ', 0),
(476, 104, 13, 'Solar Energy', 1),
(477, 105, 13, 'white ', 1),
(478, 105, 13, 'violet', 0),
(479, 105, 13, 'red', 0),
(480, 105, 13, 'yellow', 0),
(481, 106, 13, '12', 0),
(482, 106, 13, '9', 1),
(483, 106, 13, '6', 0),
(484, 106, 13, '3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userid` int(100) NOT NULL,
  `fullname` varchar(200) CHARACTER SET latin1 NOT NULL,
  `username` varchar(200) CHARACTER SET latin1 NOT NULL,
  `password` varchar(200) CHARACTER SET latin1 NOT NULL,
  `confirmpassword` varchar(200) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `fullname`, `username`, `password`, `confirmpassword`) VALUES
(1, 'Anderson Duwal', 'Anderson', '12345', '12345'),
(2, 'James Shrestha', 'James', '12345', '12345'),
(3, 'Prajwol', 'Prajwol', '12345', '12345'),
(4, 'Sujan', 'Sujan', '12345', '12345'),
(5, 'Sagar', 'Sagar', '12345', '12345'),
(6, 'Shekhar', 'Shekhar', '12345', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `questid` int(11) NOT NULL,
  `subject_subid` int(11) NOT NULL,
  `quest` varchar(255) DEFAULT NULL,
  `option1` varchar(200) NOT NULL,
  `option2` varchar(200) NOT NULL,
  `option3` varchar(200) NOT NULL,
  `option4` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`questid`, `subject_subid`, `quest`, `option1`, `option2`, `option3`, `option4`) VALUES
(91, 12, 'WWW stands for\r\n', 'World Worm Web', 'World Word Web', 'World Wide Web', 'None of the above'),
(92, 12, '________ is used to communicate from one city to another.\r\n', 'MAN', 'LAN', 'WAN', 'All of the above'),
(93, 12, 'A________________ is a group of independent computers attached to one another through communication media.', 'Internet', 'E-mail', 'Network', 'All of the above'),
(94, 12, 'Speedometer is an example of ____________ computers\r\n', 'Hybrid', 'Digital', 'Analog', 'None of the above'),
(95, 12, 'Which of the following software is used to view web pages?\r\n', 'Internet Browser', 'Page Browser', 'Web Browser', 'All of the above'),
(96, 12, 'Which of the following is a presentation program?\r\n', 'MS-Word', 'Ms-Excel', 'Ms-Power Point', 'Ms- Access'),
(97, 12, 'ISP stands for\r\n', 'International Service Provider', 'Internet Service Provider', 'Internet Service Presenter', 'None of the above'),
(99, 12, 'Collection of 1024 Bytes\r\n', '1MB', '1GB', '1TB', '1KB'),
(100, 12, '______________ is the process in which a user sends computer information from his computer to another computer through modem.', 'Downloading', 'Uploading', 'None of the above', 'All of the above'),
(101, 12, 'Which of the following is a storage device?\r\n', 'Hard Disk', 'USB Disk', 'Floppy Disk', 'All of the above'),
(102, 13, 'Heat is transmitted from higher temperature to lower temperature through the actual motion of the molecules in - \r\n', 'Conduction', 'Convection', 'Radiation', 'Both conduction and convection'),
(103, 13, 'Energy travels from Sun to Earch through \r\n', 'conduction', 'convection', 'radiation', 'modulation'),
(104, 13, 'Photovoltaic cell is related to - ', 'Geo Thermal Energy ', 'Wind Energy', 'Nuclear Energy ', 'Solar Energy'),
(105, 13, 'When beams of red, blue and green lights fell on the same spot, the colour of the light becomes - \r\n', 'white ', 'violet', 'red', 'yellow'),
(106, 13, 'How many units of electricity will be consumed if you use a 60 watt electric bulb for 5 hours everyday for 30 days ? \r\n', '12', '9', '6', '3');

-- --------------------------------------------------------

--
-- Table structure for table `quizscore`
--

CREATE TABLE `quizscore` (
  `scoreid` int(11) NOT NULL,
  `login_userid` int(11) NOT NULL,
  `subject_subid` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quizscore`
--

INSERT INTO `quizscore` (`scoreid`, `login_userid`, `subject_subid`, `score`) VALUES
(1, 3, 12, 20),
(2, 4, 13, 20),
(3, 4, 15, 0),
(4, 3, 13, 10);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subid` int(11) NOT NULL,
  `subname` varchar(200) DEFAULT NULL,
  `duration` int(45) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subid`, `subname`, `duration`, `state`) VALUES
(12, 'comp', 12, 1),
(13, 'Physics', 10, 1),
(15, 'php', 12, 1),
(18, 'science', 12, 1),
(19, 'Chemistry', 12, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`ansid`),
  ADD KEY `subject_subid` (`subject_subid`),
  ADD KEY `questions_questid` (`questions_questid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`questid`),
  ADD KEY `fk_questions_subject_idx` (`subject_subid`);

--
-- Indexes for table `quizscore`
--
ALTER TABLE `quizscore`
  ADD PRIMARY KEY (`scoreid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `ansid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=485;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `userid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `questid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `quizscore`
--
ALTER TABLE `quizscore`
  MODIFY `scoreid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `fk_answer_questions1` FOREIGN KEY (`questions_questid`) REFERENCES `questions` (`questid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `fk_questions_subject` FOREIGN KEY (`subject_subid`) REFERENCES `subject` (`subid`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
