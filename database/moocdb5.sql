-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2018 at 06:24 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moocdb5`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tb`
--

CREATE TABLE `admin_tb` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) DEFAULT NULL,
  `admin_username` varchar(50) DEFAULT NULL,
  `admin_password` varchar(70) DEFAULT NULL,
  `admin_status` varchar(1) DEFAULT '1',
  `admin_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_tb`
--

INSERT INTO `admin_tb` (`admin_id`, `admin_name`, `admin_username`, `admin_password`, `admin_status`, `admin_create`) VALUES
(1, 'Administrator', 'admin', 'aafd8346a677af9db717afeadf6b62ec', '1', '2016-11-06 10:46:10');

-- --------------------------------------------------------

--
-- Table structure for table `answer_course`
--

CREATE TABLE `answer_course` (
  `answer_id` int(11) NOT NULL,
  `answer_name` text,
  `answer_question` int(11) DEFAULT NULL,
  `answer_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `answer_student` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='คำตอบสำหรับหลักสูตร';

-- --------------------------------------------------------

--
-- Table structure for table `choice_tb`
--

CREATE TABLE `choice_tb` (
  `choice_id` int(11) NOT NULL,
  `choice_question` int(11) DEFAULT NULL,
  `choice_name` text,
  `choice_low` varchar(1) DEFAULT NULL,
  `choice_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `choice_tb`
--

INSERT INTO `choice_tb` (`choice_id`, `choice_question`, `choice_name`, `choice_low`, `choice_create`) VALUES
(1, 2, 'test', '1', '2016-11-06 09:23:18');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(100) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `contact_subject` varchar(200) DEFAULT NULL,
  `contact_message` text,
  `contact_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ข้อมูลติดต่อเรา';

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` int(11) DEFAULT NULL,
  `course_name` varchar(250) DEFAULT NULL,
  `course_about` varchar(250) DEFAULT NULL,
  `course_description` text,
  `course_languages` varchar(50) DEFAULT NULL,
  `course_date` date DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL COMMENT 'FR groups',
  `course_pretest` int(11) DEFAULT NULL COMMENT 'สอบก่อนเรียน',
  `course_posttest` int(11) DEFAULT NULL COMMENT 'สอบหลังเรียน',
  `course_instructor` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `course_start` date DEFAULT NULL,
  `course_end` date DEFAULT NULL,
  `course_price` float DEFAULT '0',
  `course_pic` varchar(50) DEFAULT 'rmumooc.jpg',
  `course_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `course_specialist` int(11) DEFAULT NULL,
  `course_sentmail` datetime DEFAULT NULL,
  `course_comment` text,
  `course_result` int(11) DEFAULT NULL COMMENT 'ผลจากผู้เชียวชาญ',
  `course_status` varchar(1) DEFAULT '1',
  `course_approve` varchar(1) DEFAULT '0',
  `course_published` datetime DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ตารางหลักสูตร';

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_name`, `course_about`, `course_description`, `course_languages`, `course_date`, `group_id`, `course_pretest`, `course_posttest`, `course_instructor`, `user_id`, `course_start`, `course_end`, `course_price`, `course_pic`, `course_create`, `course_specialist`, `course_sentmail`, `course_comment`, `course_result`, `course_status`, `course_approve`, `course_published`, `faculty_id`, `created_at`, `updated_at`) VALUES
(23, 0, 'ฟิกฮฺอัลอิบาดาต', 'ความหมาย ประวัติความเป็นมาของฟิกฮฺในยุคต่างๆ การกำเนิดของมัซฮับ ศึกษาประวัติและผลงานของมุจญ์ตะฮิดีนที่สำคัญ บทบัญญัติเกี่ยวกับการทำความสะอาด การละหมาด การถือศีลอด การจ่ายซะกาตและการทำฮัจญ์', '<p>เพื่อให้ผู้เรียนมีความรู้ความเข้าใจเกี่ยวกับบทบัญญัติต่างๆ เช่น บทบัญญัติเกี่ยวกับการทำความสะอาด การละหมาด การถือศิลอด การจ่ายซะกาด และการทำฮัจญ์</p>', 'Thai', NULL, 13, 0, 0, NULL, 12, '2018-12-01', '2018-12-31', 0, 'GJ8B3Yhmcp.png', '2018-12-13 10:52:33', NULL, NULL, NULL, NULL, '1', '0', NULL, 60, '2018-12-13 10:50:26', '2018-12-13 10:52:33'),
(24, 0, 'อิสลามในโลกปัจจุบัน', 'นิยามและความสำคัญของโลกมุสลิม องค์การที่ประชุมอิสลาม (OIC) สถานภาพของโลกมุสลิมด้านการศึกษา สังคม การเมือง และเศรษฐกิจในปัจจุบัน กรณีปัญหาปาเลสไตน์ อิรักและอัฟกานิสถาน และชนกลุ่มน้อยมุสลิม แนวโน้มของอิสลามและโลกมุสลิมในอนาคต', '<p>เพื่อให้ผู้เรียนมีความรู้ความเข้าใจ นิยาม และความสำคัญของโลกมุสลิม องค์กรที่ประชุมอิสลาม รวมถึงแนวโน้มของอิสลามและโลกมุสลิมในอนาคต สามารถใช้ความรู้เพื่อพัฒนาตนเองและสังคมให้รับรู้ถึงสถานการณ์ในโลกมุสลิม รวมทั้งสามารถเรียนรู้และใช้ประสบการณ์ในการรับรู้แนวโน้มของอิสลามและโลกมุสลิมในอนาคต</p>', 'Thai', NULL, 13, 0, 0, NULL, 12, '2018-12-02', '2018-12-31', 0, 'Jib4U8wZZT.png', '2018-12-13 11:28:49', NULL, NULL, NULL, NULL, '1', '0', NULL, 60, '2018-12-13 11:18:49', '2018-12-13 11:28:49');

--
-- Triggers `courses`
--
DELIMITER $$
CREATE TRIGGER `mooc_code` BEFORE INSERT ON `courses` FOR EACH ROW BEGIN
	DECLARE next_id INT;


	SET next_id =(SELECT AUTO_INCREMENT FROM information_schema.TABLES WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='courses');
	SET new.course_code = CONCAT('RMUMOOC',RIGHT(CONCAT('000000',next_id ),6));
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `examination_tb`
--

CREATE TABLE `examination_tb` (
  `examination_id` int(11) NOT NULL,
  `examination_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `examination_tb`
--

INSERT INTO `examination_tb` (`examination_id`, `examination_name`) VALUES
(1, 'ข้อสอบก่อนเรียน'),
(2, 'ข้อสอบหลังเรียน');

-- --------------------------------------------------------

--
-- Table structure for table `expert_tb`
--

CREATE TABLE `expert_tb` (
  `expert_id` int(11) NOT NULL,
  `expert_name` varchar(100) DEFAULT NULL,
  `expert_username` varchar(50) DEFAULT NULL,
  `expert_password` varchar(100) DEFAULT NULL,
  `expert_email` varchar(100) DEFAULT NULL,
  `expert_skill` text,
  `expert_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `expert_status` varchar(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int(11) NOT NULL,
  `faculty_name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `faculty_name`) VALUES
(20, 'วิทยาศาสตร์และเทคโนโลยี'),
(60, 'อิสลามศึกษา'),
(61, 'ศึกษาศาสตร์'),
(70, 'ศิลปศาสตร์และสังคมศาสตร์');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(150) DEFAULT NULL,
  `group_nameen` varchar(150) DEFAULT NULL,
  `group_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ตารางกลุ่มวิชา';

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `group_nameen`, `group_create`) VALUES
(1, 'พัฒนาระบบ', 'Development', '2016-08-31 00:46:46'),
(2, 'ธุระกิจ', 'Business', '2016-08-31 00:49:20'),
(6, NULL, 'Graphic Design', '2018-12-13 10:42:09'),
(13, NULL, 'Islamic', '2018-12-13 10:42:35'),
(14, NULL, 'Language', '2016-08-31 00:57:14'),
(15, NULL, 'Another', '2018-12-13 10:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `instructor_name` varchar(100) DEFAULT NULL,
  `instructor_username` varchar(100) DEFAULT NULL,
  `instructor_password` varchar(100) DEFAULT NULL,
  `instructor_citicenid` varchar(13) DEFAULT NULL,
  `instructor_email` varchar(100) DEFAULT NULL,
  `instructor_phone` varchar(15) DEFAULT NULL,
  `instructor_birthday` date DEFAULT NULL,
  `instructor_skill` varchar(250) DEFAULT NULL,
  `instructor_edu` text,
  `instructor_detail` text,
  `instructor_status` varchar(1) DEFAULT '1',
  `instructor_approve` varchar(1) DEFAULT '1',
  `instructor_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `instructor_pic` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ข้อมูลผู้สอน';

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `user_id`, `instructor_name`, `instructor_username`, `instructor_password`, `instructor_citicenid`, `instructor_email`, `instructor_phone`, `instructor_birthday`, `instructor_skill`, `instructor_edu`, `instructor_detail`, `instructor_status`, `instructor_approve`, `instructor_create`, `instructor_pic`, `created_at`, `updated_at`) VALUES
(23, 12, 'อับดุลย์ลาเต๊ะ สาและ', NULL, 'Abdul12345', '1345363478954', 'abdul_latif@gmail.com', '654-7864322', '2018-12-08', NULL, NULL, '<p><br></p>', '1', '1', '2018-12-13 10:47:44', NULL, '2018-12-13 10:47:44', '2018-12-13 10:47:44'),
(20, 8, 'อารยา', 'arya', '514244227', '2330700048766', 'arya@gmail.com', '099-898988', '2018-11-01', NULL, 'ar', '<p>ar</p>', '1', '1', '2018-11-18 07:18:51', NULL, '2018-11-18 07:18:51', '2018-11-18 07:18:51'),
(21, 9, '๊User Test', NULL, '514244227', '2334566654322', 'usertest@gmail.com', '098-765555', '2018-11-04', NULL, '44', '<p>44</p>', '1', '1', '2018-11-18 09:08:31', NULL, '2018-11-18 09:08:31', '2018-11-18 09:08:31'),
(18, 4, 't001', 't001', '1234567890', '2334544432111', 't001@rmu.ac.th', '098-9898988', '2017-04-17', NULL, 't001', '<p>ddd</p>', '1', '1', '2018-10-30 07:51:04', NULL, '2018-10-30 07:51:04', '2018-10-30 07:51:04'),
(19, 7, 'myte', 'myte', '514244227', '6777777777777', 'myte@gmail.com', '098-7655544', '2018-10-31', NULL, '0000', '<p>000</p>', '1', '1', '2018-10-30 10:04:57', NULL, '2018-10-30 10:04:57', '2018-10-30 10:04:57');

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `id` int(11) NOT NULL,
  `lecture_name` varchar(250) DEFAULT NULL,
  `lecture_number` int(11) DEFAULT NULL,
  `lecture_file` varchar(100) DEFAULT NULL COMMENT 'เก็บ file',
  `pdf` varchar(255) DEFAULT NULL,
  `ppt` varchar(255) DEFAULT NULL,
  `mp4` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `lecture_link` varchar(100) DEFAULT NULL COMMENT 'เก็บ link',
  `lecture_article` text COMMENT 'เก็บแบบ บทความ',
  `lecture_type` varchar(10) DEFAULT NULL,
  `lecture_size` float DEFAULT NULL,
  `lecture_preview` varchar(1) DEFAULT NULL COMMENT '1',
  `section_id` int(11) DEFAULT NULL,
  `lecture_comment` text,
  `user_id` int(11) DEFAULT NULL,
  `lecture_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lecture_status` varchar(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ตารางเก็บเรื่อง';

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`id`, `lecture_name`, `lecture_number`, `lecture_file`, `pdf`, `ppt`, `mp4`, `youtube`, `lecture_link`, `lecture_article`, `lecture_type`, `lecture_size`, `lecture_preview`, `section_id`, `lecture_comment`, `user_id`, `lecture_create`, `lecture_status`, `created_at`, `updated_at`) VALUES
(42, 'dd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 26, NULL, 7, '2018-11-18 09:01:28', '1', '2018-11-18 09:01:24', '2018-11-18 09:01:28'),
(43, 'เรื่องๆๆๆ', NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=EpIvJn-xRow&index=1&list=RDEpIvJn-xRow', NULL, NULL, NULL, NULL, '1', 28, NULL, 10, '2018-11-18 15:34:26', '1', '2018-11-18 15:33:13', '2018-11-18 15:34:26'),
(45, 'tet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 26, NULL, 7, '2018-11-29 02:35:28', '1', '2018-11-29 02:35:28', '2018-11-29 02:35:28'),
(46, 'ฟิกฮฺและประวัติความเป็นมาของฟิกฮฺในยุคต่างๆ', NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=DjgFHI8hrGs', NULL, '<p class=\"MsoNormal\"><b><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ความหมายของ ฟิกฮฺ ทางภาษา</span></b><b><o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">ฟิกฮฺในทางภาษามาจากรากศัพท์ภาษาอาหรับ</span><span lang=\"TH\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;\r\nline-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\">คำว่า</span><span lang=\"TH\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;\r\nline-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ฟะกิฮะ ยัฟเกาะฮุ ฟิกฮัน</span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">เช่นเดียวกับ อะลิมะ ยะอฺละมุ อิลมัน\r\nแปลว่า การรู้ และ เช่นเดียวกับ</span><span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"> คำว่า</span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">\r\nฟะฮิมะ ยัฟฮะมุ ฟะฮฺมัน แปลว่า การเข้าใจ (</span>Ibn al-Manzur, 1994: 13/522)<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">อัลลอฮฺ ได้ตรัสไว้ว่า</span><span lang=\"TH\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;\r\nline-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ความว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">พวกเขากล่าวว่า\r\nโอ้ ชุอัยบฺเอ๋ย เราไม่เข้าใจส่วนมากที่ท่านกล่าว</span>” (<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">ฮูด:</span>91\r\n)<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:\r\n115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:\r\nminor-latin;mso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">อิบนุมันซูร\r\n(</span>Ibn Manzur) <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">กล่าวว่า การรู้ในสิ่งหนึ่งและการเข้าใจในสิ่งนั้นด้วย\r\nอิบนุมันซูร ได้นำคำกล่าวของอาลิมท่านอื่น ๆ มาอธิบายเพิ่มเติมอีกว่า คำว่า\r\nฟิกฮฺในความหมายเดิมก็คือ การเข้าใจ\r\nและอัลกุรอานยังได้สนับสนุนในความหมายนี้เช่นกัน </span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">ดังที่อัลลอฮฺ</span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">ได้ตรัสไว้ความว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">เพื่อพวกเขาจะได้เข้าใจในศาสนา</span>”\r\n(<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:\r\n115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:\r\nminor-latin\">สูเราะอัตเตาบะฮฺ:</span>122)<span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">ท่านนบี\r\nได้ขอดุอาต่ออัลลอฮฺ ให้แก่ท่านอับดุลลอฮฺ อิบนุ อับบาส ว่า</span> “ <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">โอ้อัลลอฮฺ\r\n</span><span lang=\"TH\" style=\"font-size:14.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">ขอได้โปรดประทานความรู้ในศาสนาให้แก่เขาและให้เขาได้เข้าใจเกี่ยวกับการอธิบายความหมายของอัลกุรอานด้วยเถิด</span>”<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">หลังจากนั้นเขาก็ได้กลายเป็นผู้ที่มีความรู้ความเข้าใจในความหมายของอัลกุรอานเหนือกว่าคนอื่น\r\nๆจากอายะฮฺทั้งสามดังกล่าวเห็นได้ชัดว่าฟิกฮฺในทางภาษาศาสตร์นั้นหมายถึง\r\nความเข้าใจทั่วไปความเข้าใจที่ละเอียดและไม่ละเอียด\r\nความเข้าใจที่เป็นวัตถุประสงค์ของผู้พูดหรือที่ไม่เป็นวัตถุประสงค์ดังนั้นความหมายของฟิกฮฺทางภาษา\r\nคือ การเข้าใจ</span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>&nbsp;</b></p>\r\n\r\n<p class=\"MsoNormal\"><b><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ความหมายของฟิกฮฺ ทางวิชาการ</span><o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">อบูฮะนีฟะฮฺ รอฮิมะอุลลอฮฺ\r\nได้ให้ความหมายของฟิกฮฺ</span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"> มีความว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">การรู้จักตัวเองและสิ่งที่เป็นสิทธิ\r\nหน้าที่และความรับผิดชอบ</span>”<span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">คำว่า\r\n</span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;\r\nline-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">อัลมะอฺริฟะฮฺ</span>” <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">คือรู้ถึงส่วนต่าง\r\nๆ โดยมีหลักฐาน แต่จุดมุ่งหมายในที่นี้ คือสาเหตุของมัน\r\nคือความรู้ที่ได้มาโดยการปฏิบัติตามกฎเกณฑ์อยู่เรื่อย ๆ เป็นคำนิยามโดยทั่วๆ\r\nไปที่จะคลุมไปถึงข้อชี้ขาดด้านหลักเชื่อมั่น เช่น จำเป็นจะต้องศรัทธา และอื่น ๆ\r\nคลุมไปถึงด้านจรรยามารยาทและการสำรวมตัว คลุมไปถึงวินัยปฏิบัติ เช่น การละหมาด\r\nการถือศิลอด การค้าขายและอื่น ๆ</span><span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">ความหมายทั่วไปของฟิกฮฺตามทัศนะของอิหม่ามอบูหะนีฟะฮฺมีความเหมาะสมกับสมัยของท่าน\r\nซึ่งในสมัยนั้นยังไม่มีการแบ่งแยกสาขาวิชาต่างๆของบทบัญญัติอิสลาม\r\nหลังจากนั้นมีการแบ่งแยกสาขาวิชา เช่นวิชาเตาหีด (วิชาที่ศึกษาเรื่องการยึดมั่น)\r\nวิชาอะคฺล๊ากฺวัตตะเซาวุฟ (วิชาที่ศึกษาเรื่องมารยาท และจิตใต้สำนึก) และวิชาฟิกฮฺ\r\n(วิชาที่ศึกษาเรื่องบทบัญญัติอิสลามทางปฏิบัติ) (</span>al-Zuhayli ,1989:16)<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">อัชชาฟีอี รอฮิมะฮุลลอฮฺ\r\nได้ให้ความหมายของฟิกฮฺ ซึ่งถือเป็นคำนิยามที่ร่ำลือสำหรับนักวิชาการที่ว่า</span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">วิชาความรู้เกี่ยวกับข้อชี้ขาดทางด้านศาสนาภาคปฏิบัติโดยได้มาจากหลักฐานที่เป็นรายละเอียด</span>”<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">จากนิยามฟิกฮฺตามทัศนะของอิหม่ามชาฟีอีย์\r\nคำว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;\r\nline-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">อัลอิลมฺ</span>” <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">คือ\r\nการรู้ทั่วไป\r\nซึ่งหมายรวมถึงการรู้จริงอย่างมั่นใจและการรู้แบบมีน้ำหนักแต่ไม่มั่นใจ\r\nทั้งนี้เพราะ บทบัญญัติอิสลามทางปฏิบัตินั้น บางเรื่องมีหลักฐานชัดเจนเด็ดขาด\r\nในขณะที่บางเรื่องมีหลักฐานไม่ชัดเจนและไม่เด็ดขาด (</span>al-Zohayli , 1989:16)<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">ความหมายฟิกฮฺตามทัศนะของมัซฮับอิหม่ามชาฟีอีย์ถูกนำมาใช้อย่างแพร่หลายมากกว่าความหมายฟิกฮฺของอิหม่ามอบูหะนิฟะฮฺเนื่องจากอิหม่ามชาฟีอีย์\r\nเป็นคนแรกที่นิพนธ์ตำราทางด้านอุศุลุลฟิกฮฺ ซึ่งตำรานั้นมีชื่อว่า อัล ริสาละฮฺ\r\nและความหมายตามนิยามของท่านยังมีความชัดเจนและครอบคลุมกว่า</span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">ดังนั้นความหมายของ\r\nฟิกฮฺคือวิชาว่าด้วยหุกุ่มศาสนาเกี่ยวกับการปฎิบัติ\r\nซึ่งได้มาจากหลักฐานที่เกี่ยวกับสิ่งปลีกย่อย\r\nจากคำนิยามหรือคำจำกัดความดังกล่าวพอสรุปสั้นๆได้ว่า หุกุ่มฟิกฮฺ\r\nจะต้องมีหลักฐานทั้งสิ้น อ้างกันลอย ๆไม่ได้ ไม่ถือเป็นฟิกฮฺ ตามหลักวิชาการ</span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>&nbsp;</b></p>\r\n\r\n<p class=\"MsoNormal\"><b><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">แหล่งที่มาของฟิกฮฺ</span><o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">แหล่งที่มาของฟิกฮฺ หมายถึง\r\nหลักฐานต่างๆ ทางศาสนาที่สามารถนำมาใช้ในการกำหนดบทบัญญัติต่างๆ ของกฎหมายอิสลาม (</span>Wahbah\r\nAz-Zuhaili, 1996:417) <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">เห็นว่า หลักฐานกฎหมายอิสลาม มี </span>2<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">\r\nประเภทดังนี้</span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">1. <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">หลักฐานที่นักวิชาการส่วนมากเห็นพ้องกัน\r\nซึ่งประกอบด้วย</span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">อัลกุรอาน&nbsp; คือคัมภีร์ที่มาจากอัลลอฮฺ&nbsp; ทรงประทานแก่ท่านนบีมุหัมมัด&nbsp; ซึ่งเป็นที่มาของบทบัญญัติต่าง ๆ ของอิสลาม\r\nรวมทั้งบทบัญญัติทางด้านฟิกฮฺด้วย ส่วนใหญ่อัลกุรอานจะกำหนดหลักการใหญ่ๆ\r\nโดยมีส่วนน้อยมากที่อัลกุรอานจะกำหนดรายละเอียดลงไปด้วย</span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-theme-font:minor-bidi\"> </span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">อัลหะดีษ คือ คำพูด\r\nการกระทำหรือการยอมรับของท่านนบีมุหัมมัด&nbsp;\r\nอัลหะดีษและอัสสุนนะฮฺมีความหมายเหมือนกัน จะทำหน้าที่อธิบาย ขยาย จำกัดและยืนยันความหมายของอัลกุรอาน\r\nและบางครั้งจะทำหน้าที่บัญญัติสิ่งที่อัลกุรอานไม่ได้บัญญัติไว้ด้วย</span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">อัลอิจญ์มาอฺ คือ\r\nมติเอกฉันท์ของบรรดาปราชญ์กฎหมายอิสลามในแต่ละยุคแต่ละสมัย\r\nซึ่งมีฐานะเทียบเท่าตัวบทแม้ว่าไม่มีตัวบท\r\nในทางปฏิบัติอิจญ์มาอฺจะกระทำได้ในช่วงแรกของอิสลามเท่านั้น\r\nกล่าวคือในสมัยที่ท่านอะบูบักร อิศศิดดิกและท่านอุมัรเป็นเคาะลีฟะฮฺ\r\nเนื่องจากว่าช่วงดังกล่าวบรรดาปราชญ์และนักกฎหมายอิสลามทั้งหมดยังอาศัยอยู่ที่นครมะดีนะฮฺ\r\nการรวมตัวของพวกเขาเหล่านั้นก็สามารถกระทำได้โดยง่าย</span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">อัลกิยาส&nbsp; คือ เป็นการกำหนดบทบัญญัติโดยอาศัยการเทียบเคียงระหว่างสิ่งที่ไม่มีตัวบทกล่าวถึงกับสิ่งที่มีตัวบทกำหนดบทบัญญัติไว้</span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">2. <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">หลักฐานที่นักวิชาการมีความเห็นแตกต่างกันในการที่จะนำมาใช้ประกอบการวินิจฉัยข้อกฎหมายอิสลาม\r\nซึ่งประกอบด้วย </span>8<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\"> หลักฐานที่สำคัญดังนี้</span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">อัลมะศอลิหฺ มุรสะละฮฺ&nbsp; คือ เป็นการกำหนดบทบัญญัติโดยการยึดผลประโยชน์ที่ไม่ขัดกับตัวบทเป็นหลัก</span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">อัลอิสติหฺสาน&nbsp;\r\nคือ\r\nเป็นการกำหนดบทบัญญัติโดยการเปลี่ยนจากการใช้หลักการทั่วไปให้เป็นอย่างอื่น\r\nโดยมุ่งหมายให้เกิดความยุติธรรมและปลดเปลี้องความทุกข์ยาก</span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">อัลอุรฺฟ คือ เป็นการกำหนดบทบัญญัติโดยการใช้จารีตประเพณี\r\nซึ่งเป็นที่ยอมรับโดยทั่วไปและไม่ขัดกับตัวบท</span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">อัลอิสติศลาหฺ&nbsp;\r\nคือ\r\nการกำหนดบทบัญญัติโดยการมุ่งไปที่ผลประโยชน์เป็นหลักโดยไมมี่ตัวบทยอมรับว่าใช้ได้หรือไม่ได้เพียงแต่สาเหตุและเหตุผลคาบเกี่ยวกัน\r\n(</span>Musa, n.d.: 200)<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ประเภทของฟิกฮฺ</span><o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">กฎหมายอิสลามที่อัลลอฮฺได้ทรงประทานแก่ศรัทธาชนมีความสมบูรณ์และมีความสำคัญอย่างมากต่อการดำเนินชีวิตทั้งในโลกดุนยาและโลกอะคีเราะฮฺซึ่งสามารถจำแนกประเภทต่าง\r\nๆ ได้ดังต่อไปนี้ (</span>al- Ghazali , 1997 : 1 / 15 )<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent:36.0pt\">1. <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">ฟิกฮฺ\r\nอัลอิบาดาตหรือบทบัญญัติเกี่ยกับศาสนพิธี คือ ศาสนพิธีต่าง ๆ ซึ่งเป็นการกำหนดความสัมพันธ์ระหว่างมนุษย์กับอัลลอฮฺ\r\nเช่น การละหมาด การถือศีลอด การจ่ายซะกาต การประกอบพิธีหัจญ์และอื่น ๆ แม้ว่าอิบาดาตเป็นการเคารพภักดีของมนุษย์ต่ออัลลอฮฺสุบหานะฮูวะตะอาลา\r\nแต่อิบาดาตเหล่านี้จะมีผลต่อชีวิตมนุษย์ด้วย\r\nเช่นการละหมาดจะกระทำมิได้หากขาดความสะอาดทั้งร่างกายและจิตใจ</span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent:36.0pt\">2. <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">ฟิกฮฺ\r\nอัลมุอามาลาตหรือบทบัญญัติเกี่ยวกับนิติสัมพันธ์ คือ บทบัญญัติที่กำ\r\nหนดความสัมพันธ์ระหว่างมนุษย์กับมนุษย์ด้วยกัน ทั้งในทางแพ่งและพาณิชย์\r\nเช่นการซื้อขาย การจำนำจำนอง การเช่า เป็นต้น</span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent:36.0pt\">3. <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">ฟิกฮฺ\r\nอัลมุนากะหาตหรือบทบัญญัติเกี่ยวกับครอบครัวและมรดก คือ\r\nบทบัญญัติความสัมพันธ์ระหว่างมนุษย์กับมนุษย์ด้วยกันในลักษณะการเกี่ยวดองทางครอบครัว\r\nเช่น การสมรสการหย่าร้าง เป็นต้น</span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent:36.0pt\">4. <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">ฟิกฮฺ\r\nอัลญินายาตหรือกฎหมายอาญา คือ บทบัญญัติที่กำหนดบทลงโทษจากการกระทำความผิดทางอาญา\r\nเช่น ความผิดฐานลักทรัพย์ ความผิดฐานผิดประเวณี และความผิดฐานฆ่าผู้อื่น เป็นต้น</span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ปัจจัยที่ทำให้กฎหมายอิสลามเสื่อมคลายลงน่าจะเป็นสาเหตุดังต่อไปนี้</span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent:36.0pt\">1. <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">ความล้มเลวของระบบการปกครองที่ประสบกับราชวงค์อับบาสีย์\r\nไม่สามารถที่จะพัฒนาและส่งเสริมความรู้แก่นักวิชาการ และนักกฎหมายอิสลาม\r\nจนนักกฏหมายอิสลามไม่ค่อยได้รับการพัฒนาเท่าที่ควร</span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent:36.0pt\">2. <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">การที่นักวิชาการในยุคนี้มีการสังกัดสำนักกฎหมายอิสลามโดยยึดอย่างสุดโต่งต่อสำนักใดสำนักหนึ่ง\r\nการวินิจฉัยปัญหาต่าง ๆ ที่เกิดขึ้น การตีความกฎหมาย\r\nและการตัดสินตามแนวคิดเฉพาะของมัซฮับที่ตนเองสังกัดอยู่เท่านั้น\r\nหากมีการแต่งตำราหรือขยายความตำราก็เป็นตำราที่อยู่ในแนวคิดของสำนักเฉพาะเท่านั้น</span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent:36.0pt\">3. <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">การจำกัดมิให้ผู้พิพากษา\r\nทำการวินิจฉัยปัญหาที่เกิดขึ้นต่าง ๆ อย่างอิสระรวมทั้งจำกัดขอบเขตในการวินิจฉัย\r\nและการตัดสินคดีต่าง ๆ</span><o:p></o:p></p>', NULL, NULL, '1', 30, NULL, 12, '2018-12-13 11:10:18', '1', '2018-12-13 10:54:05', '2018-12-13 11:10:18');
INSERT INTO `lectures` (`id`, `lecture_name`, `lecture_number`, `lecture_file`, `pdf`, `ppt`, `mp4`, `youtube`, `lecture_link`, `lecture_article`, `lecture_type`, `lecture_size`, `lecture_preview`, `section_id`, `lecture_comment`, `user_id`, `lecture_create`, `lecture_status`, `created_at`, `updated_at`) VALUES
(47, 'มัซฮับ ประวัติและผลงานของมุจญ์ตะฮิดีนที่สำคัญ', NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=DjgFHI8hrGs', NULL, '<p class=\"MsoNormal\" style=\"text-align:justify\"><b><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">ความหมายของมัซฮับ</span><o:p></o:p></b></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">มัซฮับหรือสำนักคิดในหลักการด้านฟิกฮฺ\r\nถือว่าเป็นสิ่งที่มีความสำคัญยิ่ง และถือได้ว่าเป็นประเด็นหนึ่งที่มีทัศนะที่แตกต่างมากเป็นที่สุด\r\nกล่าวคือหลังจากการจากไปของท่านนบีมุฮัมมัด สำนักคิดอิสลาม ได้แตกออกหลายกลุ่ม\r\nและมีความแตกต่างกันทางด้านหลักปฏิบัติ</span><o:p></o:p></p><p class=\"MsoNormal\"><b>&nbsp;</b></p><p class=\"MsoNormal\"><b><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">นิยามของมัซฮับทางภาษา</span><o:p></o:p></b></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">มัซฮับ โดยทั่วไปแล้วหมายถึง เดินทางไป\r\nหรือเดินทางผ่านนอกจากนี้ยังให้ความหมายอื่นได้อีก เช่น ทัศนะ ความเห็น\r\nดังนั้นเมื่อใครคนหนึ่งรับเอา (ยึด)ความเห็นของผู้อื่น เราจะกล่าวที่มีความว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">เขามีความเห็นตามทัศนะของคนๆ\r\nหนึ่ง</span>”<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;\r\nline-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ในหนังสือศัพท์ภาษาชื่อ ลิสานุลอาหรับ (</span>1)\r\n<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:\r\n115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:\r\nminor-latin\">ได้ให้ความหมายว่า แปลว่า การไป: การดำเนินไป และการสัญจร</span><o:p></o:p></p><p class=\"MsoNormal\"><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ดังนั้นจากความหมายดังกล่าว คำว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">มัซฮับ</span>”\r\n<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:\r\n115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:\r\nminor-latin\">ในทางภาษาโดยทั่วไป หมายถึง แนวทางหลักการ คำสอน</span><o:p></o:p></p><p class=\"MsoNormal\"><b>&nbsp;</b></p><p class=\"MsoNormal\"><b><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">นิยามของมัซฮับทางวิชาการ</span><o:p></o:p></b></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">วะฮฺบะฮฺ อัซซุฮัยลี\r\nได้ให้ความหมายของมัซฮับทางวิชาการ คือ บรรรดาข้อชี้ขาดของปัญหาต่างๆ นั่นเอง\r\nอุปมาดังสถานที่ที่เราไปรวมไปถึงหนทางที่จะทำให้บรรลุสู่การมีชีวิตอยู่\r\nโดยอุปไมยที่บรรดาข้อชี้ขาดเหล่านั้น จะทำให้ไปถึงสถานที่ที่นัดหมายนั้นเอง</span><o:p></o:p></p><p class=\"MsoNormal\"><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">อุมัร สุลัยมาน อัลอัชก็อร ได้กล่าวว่า มัซฮับ\r\nคือ เส้นทางหรือวิธีทางที่ถูกกำหนดขึ้นโดยใครคนใดคนหนึ่ง หรือกลุ่มคนกลุ่มหนึ่ง\r\nทั้งในเรื่องหลักความเชื่อ การปฏิบัติ หุกุ่ม (ข้อบัญญัติ)และอื่นๆ</span><o:p></o:p></p><p class=\"MsoNormal\"><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ดังนั้นของคำว่า มัซฮับ ถูกใช้ในทางวิชาการ\r\nหมายถึง </span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;\r\nline-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">สิ่งที่ถูกยึดถือ</span>” <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">หรือแนวทางกาวิเคราะห์ปัญหาของบรรดาอิหม่ามต่างๆ\r\nที่ประชาชนได้ยึดถือทั้งด้านความเชื่อและปฏิบัติ</span><o:p></o:p></p><p class=\"MsoNormal\"><b>&nbsp;</b></p><p class=\"MsoNormal\"><b><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">การกำเนิดมัซฮับ</span><o:p></o:p></b></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">ได้เริ่มมาในสมัยยุคศอฮาบะฮฺ เช่น\r\nมัซฮับอาอิซะฮฺ มัซฮับอับดุลลอฮฺ อิบนิ อุมัร มัซฮับอับดุลลอฮฺ อิบนิ มัสอูด\r\nและคนอื่นๆ ต่อมาในยุคตาบิอีน\r\nบรรดานักนิติศาสตร์อิสลามที่มีชื่อเสียงในเมืองมะดีนะฮฺ </span>7<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">\r\nท่าน คือสะอีด อิบนุล มุซัยยับ</span>, <span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">อุรวะฮฺ อิบนุซซุบัยร์</span>, <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">อัลกอเซ็ม\r\nอิบนุ มุฮัมมัด</span>, <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">คอริญะฮฺ อิบนุ ซัยดฺ</span>, <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">อบูบักร\r\nอิบนุ อับดิรฺเราะหฺมาน อิบนิ ฮาริษ อิบนิ ฮิซาม</span>, <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">สุลัยมาน\r\nอิบนิ ยะซารฺ</span>, <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">อุบัยดิลลาฮฺ อิบนิ อัลดิลลาฮฺ อิบนิ อุตบะฮฺ\r\nอิบนิ มัสอูด และนาเฟียะฮฺ คนรับใช้ของอับดุลลอฮฺ อิบนุ อุมัรฺ</span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">ส่วนชาวเมืองอัลกูฟะฮฺ ได้แก่\r\nอัลกอมะฮฺ อิบนุ มัสอูด</span>, <span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">อิบรอฮีม อันนะคออี อาจารย์ของฮัมมาด\r\nอิบนิ อบีสุลัยมาน ซึ่งเป็นอาจารย์ของอบีหะนีฟะฮฺ ชาวเมืองอับบัศเราะฮฺ ได้แก่\r\nอัลหะซัน อัลบัศรี</span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"> </span><o:p></o:p></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">ในยุคสมัยของตาบิอิตตาบิอีน\r\nบรรดาเหตุการณ์และประเด็นปัญหาได้เกิดขึ้นมากมาย บรรดาฟัตวาต่าง ๆ ได้กระจัดกระจาย\r\nดังนั้นพวกเขาจึงทำการรวบบรรดาคำวินิจฉัยทั้งหมด และทำการจดจำหลักนิติศาสตร์ของ\r\nผู้ที่อยู่ก่อนจากนั้น พวกเขาได้ทำการวิเคราะห์การขัดแย้ง\r\nและความเห็นสอดคล้องของศอหาบะฮฺและตาบิอีน\r\nซึ่งพวกเขาได้เตือนให้ระวังการแพร่ขยายของกรณีดังกล่าวและการขัดแย้งที่ออกนอกกฎ\r\nดังนั้นพวกเขาจึงทำการ วินิจฉัย โดยการรวบรวมบรรดาสุนนนะฮฺต่างๆ\r\nและได้กำหนดบรรดาหลักมูลฐานแห่งนิติศาสตร์อิสลามขึ้น\r\nและเมื่อมีการถูกตั้งคำถามขึ้นมาพวกเขาก็จะทำการตอบและทำการกำหนดบรรดากฎเกณฑ์แห่งนิติศาสตร์วาง\r\nแนวทางหลักมูลฐานแห่งนิติศาสตร์ และทำการอธิบายเหตุการณ์ต่างๆ\r\nที่เกิดขึ้นโดยให้อยู่บนหลักการเหล่านั้น แล้วได้มีการประพันธ์\r\nและจัดเรียบเรียงเป็นบทๆขึ้นมาให้แก่ผู้คนทั้งหลาย และพวกเขาทุก ๆ\r\nคนก็ได้ปฏิบัติสิ่งที่ อัลลอฮฺทรงเปิดและชี้นำแก่เขา นับเป็นการตื่นตัวทางวิชาการ\r\nทั้งในศาสตร์ของหะดีษและฟิกฮ์ จนทำให้เกิดมัซฮับต่างๆ มากมาย ทั้งที่ยังคงอยู่\r\nในปัจจุบันและได้รับเชื่อถือจากประชาชน เช่นมัซฮับทั้งสี่คือ มัซฮับ หานาฟียฺ</span>,\r\n<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:\r\n115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:\r\nminor-latin\">มัซฮับ มาลิกี</span>, <span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">มัซฮับ ชาฟีอียฺ และมัซฮับ หัมบาลียฺ\r\nส่วนอีกหลายมัซฮับที่สูญหายไปแล้วเนื่องจากไม่มีผู้ทำการสืบสานและเผยแพร่ต่อ\r\nอย่างเช่น มัซฮับ เอาซาอียฺ อัลนะคออียฺอัฏฏอบะรียฺ เป็นต้น</span><o:p></o:p></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">นอกจากนั้นแล้ว ในระหว่างยุคตาบิอีน\r\nยังมีนักนิติศาสตร์อิสลามคนอื่นๆ เช่น อิกรีมะฮฺ คนรับใช้ของอิบนิ อับบาส</span>, <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">อะฏออฺ\r\nอิบนิ อบีรอบาฮฺ</span>, <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ฏอวูส อิบนุ กัยซาน</span>, <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">มุหัมมัด\r\nอิบนุ ซีรีน</span>, <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">อัลอัสวัด อิบนุ ยะซีด</span>, <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">มัสรูก\r\nอิบนุลอะอฺร็อจ</span>, <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">อัลกอมะฮฺ</span>, <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">อันนะคออี\r\nซุร็อยฮฺ</span>, <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;\r\nline-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">สะอีด อิบนุ ญุบัยริ</span>, <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">มักฮูก\r\nอัลดิมัซกีและอบูอิดรีส อัลคูลานี</span><span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">ในตอนต้นของศตวรรษที่\r\n</span>2<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;\r\nline-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\"> ไปจนถึงตอนกลางศตวรรษที่ </span>4<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">\r\nแห่งฮิจญเราะฮฺศักราช ถือเป็นยุคแห่งการอิจญติฮาด (วินิจฉัย) ได้มีมุจญตะฮิดจำนวน </span>13<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">\r\nท่านโด่งดังขึ้นมาโดยที่พวกเขาเป็นผู้รวบรวมแนวความคิดและทัศนะต่างๆ ในมัซฮับของพวกเขา\r\nแนวความคิดของพวกเขามีผู้ปฏิบัติตามมากมายคือ ซุฟยาน อิบนุ อุยันนะฮฺ\r\nแห่งเมืองมักกะฮฺ</span>, <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">มาลิก อิบนุ อนัส แห่งเมืองมะดีนะฮฺ</span>, <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">อัลฮะซัน\r\nอัลบัศรีแห่งเมืองบัศเราะฮฺ</span>, <span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">อบูฮะนีฟะฮฺและซุฟยาน อัษเซารี (ฮ.ศ.</span>161)\r\n<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:\r\n115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:\r\nminor-latin\">แห่งเมืองกุฟะฮฺ</span>, <span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">อัลเอาซาอี (ฮ.ศ.</span>157)<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">แห่งเมืองซาม</span>,\r\n<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:\r\n115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:\r\nminor-latin\">อัลลัยษฺ อิบนุ สะอัด แห่งอียิปต์. อิสฮาก อิบนุ รอฮะวัย\r\nแห่งเมืองนัยซาบูร</span>, <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">อบูเซารฺ</span>, <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">อะหมัด\r\nดาวูด อัซซอฮิรี และ อิบนุ ญุเรร อัฏฏ็อบรี แห่งกรุงบัฆดาด</span><o:p></o:p></p><p class=\"MsoNormal\"><b>&nbsp;</b></p><p class=\"MsoNormal\"><b><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ปัจจัยเหตุของการเกิดมัซฮับทั้งสี่</span><o:p></o:p></b></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">1-<span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">บรรดาลูกศิษย์และผู้ติดตามบรรดามุจญฺตะฮิดนั้น\r\nคือผู้ที่มีอิทธิพลที่สุดในการเผยแพร่มัซฮับของอิมามของตน\r\nบรรดาลูกศิษย์และผู้ติดตามอิมามมัซฮับทั้งสี่ ซึ่งอาศัยตามที่ต่างๆ\r\nทั่วอาณาจักรอิสลาม คือผู้ที่คอยเผยแพร่มัซฮับของอิมามของตนแก่สังคม\r\nทั้งด้วยการสั่งสอนหรือด้วยการผลิตตำราวิชาการฟิกฮฺ\r\nที่ใช้หลักเกณฑ์ของครูของเขาเป็นพื้นฐาน\r\nซึ่งสิ่งนี้มิได้เกิดขึ้นกับบรรดามุจญฺตะฮิดคนอื่นๆ ลูกศิษย์และผู้ติดตามของพวกเขา\r\nไม่ได้เผยแพร่แนวทางมัซฮับของตนอย่างเต็มที่ (ดังเช่นที่เกิดขึ้นกับสี่มัซฮับ)\r\nจนทำให้คำวินิจฉัยของพวกเขาไม่ค่อยเป็นที่แพร่หลายและไม่ได้รับการต่อยอดในภายหลัง\r\nเช่นดังที่อิมามชาฟีอีย์ได้กล่าวไว้เกี่ยวกับมุจญฺจะฮิดท่านหนึ่งที่มีชื่อว่า\r\nอัลลัยษ์ อัสสะอฺดีย์</span><o:p></o:p></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">2-<span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">อำนาจและตำแหน่งหน้าที่ก็เป็นอีกหนึ่งกำลังสำคัญในการเผยแพร่มัซฮับ\r\nทั้งจากเจ้าผู้ปกครองเองที่ได้เผยแพร่มัซฮับที่ตนยึดถือ\r\nดังที่เกิดขึ้นกับอิมามมาลิกหรือจากผู้ติดตามมัซฮับที่มีตำแหน่งหน้าที่สำคัญในราชวงศ์การปกครองหนึ่ง\r\nเช่นที่เกิดขึ้นกับลูกศิษย์ของอิมามอบูหะนีฟะฮฺคนหนึ่ง ที่มีชื่อว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">อบูยูสุฟ</span>”\r\n<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:\r\n115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:\r\nminor-latin\">ซึ่งดำรงตำแหน่งหน้าที่เป็นผู้พิพากษาใหญ่ในสมัยการปกครองของคอลีฟะฮฺอัลมะห์ดีย์\r\nอัลฮาดีย์ และฮารูน อัรเราะชีด แน่นอนที่เดียวว่า เขาพยายามที่จะเผยแพร่แนวมัซฮับของตนและเขาก็แต่งตั้งเจ้าหน้าที่ที่ยึดถึอในมัซฮับหะนะฟีย์เท่านั้น\r\nในขณะเดียวกันผู้พิพากษาในสมัยนั้น\r\nมิได้มีอำนาจหน้าที่แค่เพียงเรื่องการพิพากษาและความเป็นธรรมเท่านั้น\r\nแต่ยังมีตำแหน่งเป็นอิมามนำละหมาดและกล่าวคุตบะฮฺ อีกทั้งยังให้คำฟัตวา (วินิจฉัย)\r\nและทำการสอนแก่ประชาชนอีกด้วยเช่นเดียวกับ อบูซุรอะฮฺ มุหัมมัด บิน อุษมาน\r\nอัดดิมัชกีย์ อัชชาฟีอีย์ ที่ได้ดำรงตำแหน่งเป็นผู้พิพากษาอยู่ที่เมืองชาม\r\nจึงทำให้เขาสามารถทำการเผยแพร่แนวมัซฮับของตนในแถบภูมิภาคชามได้</span><o:p></o:p></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">3-<span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">พื้นที่การเผยแพร่มัซฮับทั้งสี่นั้น\r\nเริ่มต้นจากเมืองสำคัญ ซึ่งเป็นศูนย์กลางขององค์ความรู้และวิชาการในสมัยนั้น เช่น\r\nมัซฮับหะนะฟีย์ ที่เมืองกุฟะฮฺ (อิรัก) มัซฮับมาลิกีย์ ที่เมืองมะดีนะฮฺ\r\nมัซฮับชาฟีอีย์ ที่เมืองมักกะฮฺและอียิปต์ และมัซฮับฮัมบาลีย์ ที่เมืองแบกแดด\r\n(อีรัก) ดังนั้น ตามกฎเกณฑ์แห่งธรรมชาติ (สุนนะตุลลอฮฺ)\r\nการเผยแพร่ของมัซฮับทั้งสี่ให้แพร่กระจายในวงกว้าง จึงเป็นสิ่งที่ง่ายดายมาก\r\n(อับดุลลอฮฺ หัยดิร</span>,2556: 36-38)<o:p></o:p></p>', NULL, NULL, '1', 31, NULL, 12, '2018-12-13 11:11:19', '1', '2018-12-13 11:10:42', '2018-12-13 11:11:19'),
(48, 'การทำความสะอาด', NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=DjgFHI8hrGs', NULL, '<p class=\"MsoNormal\"><b><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ความหมายความสะอาด</span><o:p></o:p></b></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">เฏาะฮาเราะฮฺ ตามหลักภาษาแปลว่า\r\nความสะอาดและปราศจากสิ่งโสโครกที่เป็นรูปธรรม เช่น</span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">นะยิสต่าง ๆ และที่เป็นนามธรรม เช่น ข้อเสียและตำหนิต่าง\r\nๆ ความอิจฉาริษยาและความชั่วต่างๆ</span><o:p></o:p></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">เฏาะฮาเราะฮฺ ตามหลักวิชาการ คือ\r\nการชำระล้างอวัยวะที่ได้กำหนดไว้ ด้วยวิธีการที่เฉพาะหรือ\r\nการกระทำสิ่งซึ่งจะมีผลทำให้ละหมาดได้ เช่น การอาบน้ำละหมาด\r\nการอาบน้ำทั้งร่างกายสำหรับผู้ที่จะเป็น (วาญิบ)ต้องอาบน้ำ และการขจัดสิ่งโสโครกออกจากเสื้อผ้า\r\nร่างกายและสถานที่</span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">อิมามอันนะวาวีและอิมามอัชชาฟีอีย์ได้ให้ความหมายของคำว่า\r\n</span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;\r\nline-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">เฏาะฮาเราะฮฺ</span>” <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">ว่าเป็นการยกฮะดัษ\r\nหรือขจัดสิ่งสกปรก และยังสอดคล้องกับคำนิยามของกลุ่มอัลมาลิกียะห์และอัลฮะนาบีละฮฺ\r\nที่กล่าวว่า คำว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">เฏาะฮาเราะฮฺ</span>” <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">คือ\r\nการยกฮะดัษหรือขจัดสิ่งสกปรกที่ห้ามการละหมาดออกไปโดยใช้น้ำ\r\nหรือยกข้อชี้ขาดของมันออกไปด้วยการใช้ดินฝุ่น</span><o:p></o:p></p><p class=\"MsoNormal\"><b>&nbsp;</b></p><p class=\"MsoNormal\"><b><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ประเภทของความสะอาด</span><o:p></o:p></b></p><p class=\"MsoNormal\"><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">จากคำนิยามของคำว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">เฏาะฮาเราะฮฺ</span>”\r\n<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:\r\n115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:\r\nminor-latin\">สามารถแบ่งออกเป็น </span>2<span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\"> ประเภท คือ</span><o:p></o:p></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">1.<span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">ทำความสะอาดฮะดัษ ซึ่งเจาะจงกับร่างกาย\r\nได้แก่ ฮะดัษใหญ่ คือ การอาบน้ำ (อัลฆุสลฺ)ฮะดัษเล็ก คือ อาบน้ำละหมาด\r\nและแทนจากทั้งสองเมื่อมีอุปสรรค คือ การตะยัมมุม</span><o:p></o:p></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">2.<span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">ทำความสะอาดสิ่งสกปรก (นะยิส)\r\nซึ่งจะใช้กับร่างกาย เครื่องแต่งกายและสถานที่ ได้แก่การล้าง เช็ด พรมด้วยน้ำ</span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">ดังนั้นการทำความสะอาดจึงครอบคลุมไปถึงการอาบน้ำละหมาด\r\nการอาบน้ำ การขจัดสิ่งสกปรก การตะยัมมุม และสิ่งที่เกี่ยวข้อง</span><o:p></o:p></p><p class=\"MsoNormal\"><b>&nbsp;</b></p><p class=\"MsoNormal\"><b><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">เคล็บลับในการบัญญัติความสะอาด</span><o:p></o:p></b></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">1.<span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">ความสะอาด\r\nเป็นสิ่งที่ธรรมชาติบริสุทธิ์เรียกหา มนุษย์จะโอนเอียงเข้าหาความสะอาดโดยธรรมชาติ\r\nและจะตีตัวออกห่างจากความสกปรกโสมม และเมื่ออิสลามเป็นศาสนาธรรมชาติ\r\nจึงเป็นเรื่องปกติที่อิสลามจะต้องบัญชาให้ทำความสะอาด และรักษาความสะอาด</span><o:p></o:p></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">2.<span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">เป็นการรักษาเกียรติและศักดิ์ศรีของมุสลิม\r\nมนุษย์โดยทั่วไปมีนิสัยชอบคนที่สะอาด และประสงค์จะคบหากับคนที่สะอาด\r\nและนั่งร่วมวงกับคนที่สะอาด มนุษย์โดยทั่วไปจะเกลียดความสกปรกดูหมิ่น ตีตัวออกห่าง\r\nและไม่ประสงค์นั่งร่วมวงกับคนที่สกปรก\r\nและเมื่ออิสลามมีความต้องการอย่างแรงกล้าที่จะให้มุสลิมเป็นคนมีเกียรติและมีศักดิ์ศรีจึงได้บัญชาให้มุสลิมเป็นคนสะอาด\r\nเพื่อที่จะได้อยู่ท่ามกลางผู้คนอย่างมีเกียรติและสมศักดิ์ศรี</span><o:p></o:p></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">3.<span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">รักษาสุขภาพอนามัย\r\nความสะอาดเป็นสาเหตุสำคัญที่จะทำให้มนุษย์ปราศจากโรคภัยไข้เจ็บเนื่องจากโรคภัยไข้เจ็บส่วนใหญ่ที่แพร่กระจายไปในหมู่ผู้คนนั้น\r\nก็เนื่องจากความสกปรกเป็นต้นเหตุดังนั้นการทำความสะอาดร่างกาย ล้างหน้า\r\nมือทั้งสองข้าง จมูก เท้าทั้งสองข้าง ทุกวัน ๆ\r\nละหลายครั้งย่อมทำให้ร่างกายปลอดภัยจากโรคต่าง ๆ</span><o:p></o:p></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">4.<span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">หยุดอยู่ต่อหน้าองค์อภิบาลด้วยความสะอาด\r\nขณะที่มนุษย์ทำการละหมาดนั้น\r\nเขากำลังโต้ตอบและกระซิบกระซาบอยู่กับองค์อภิบาลของเขาอย่างใกล้ชิด\r\nเขาย่อมต้องระมัดระวังให้สะอาดทั้งภายนอกและภายใน คือ สะอาดร่างกายและจิตใจ\r\nเพราะอัลลอฮฺทรงโปรดผู้ที่กลับตัว และทรงโปรดผู้ที่สะอาด</span><o:p></o:p></p><p class=\"MsoNormal\"><b>&nbsp;</b></p><p class=\"MsoNormal\"><b><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ความสำคัญของความสะอาด</span></b><b><o:p></o:p></b></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">เมื่อมนุษย์ผู้หนึ่งมีความสะอาดภายนอกหลังจากการชำระล้างสิ่งสกปรกต่างๆด้วยน้ำและมีความสะอาดภายในด้วยการยึดมั่นในอัลลอฮฺ&nbsp;\r\nองค์เดียวและมีศรัทธาแล้วจิตวิญญาณของเขาก็จะมีความ บริสุทธิ์ผุดผ่อง\r\nจิตใจของเขาจะสงบ หัวใจของเขาจะตื่นตัวมีพลัง\r\nมีความพร้อมที่จะแสดงการเคารพสักการะพระผู้เป็นเจ้าของเขาในสภาพที่ดีที่สุด\r\nทั้งนี้ด้วยใจที่สะอาด ร่างกายที่สะอาดเครื่องนุ่งห่มที่สะอาดและสถานที่ที่สะอาด\r\nนี่คือมรรยาทที่สูงส่ง คือการแสดงถึงการเทิดทูน การน้อมรับถึงความยิ่งใหญ่ของพระผู้เป็นเจ้า\r\nซึ่งย่อมดีกว่าการที่เขาจะไปทำอิบาดะฮฺในสภาพที่ตรงกันข้ามกันกับสิ่งที่กล่าวมา\r\nดังนั้นจึงไม่แปลกที่ความสะอาดจะถือเป็นครึ่งหนึ่งของความศรัทธาอัลลอฮฺ ได้ตรัสว่า</span><span lang=\"TH\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;\r\nline-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ความว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">แท้จริงอัลลอฮฺ&nbsp;\r\nจะโปรดผู้ที่สำนึกตัวและชอบผู้ที่รักษาความสะอาด</span>”[<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">อัลบะเกาะเราะฮฺ\r\n:</span>222]<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">1.<span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">ใช้ให้อาบน้ำละหมาดทุกวัน ๆ\r\nละหลายครั้ง</span><o:p></o:p></p><p class=\"MsoNormal\"><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ความว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">โอ้บรรดาผู้ศรัทธาทั้งหลาย\r\nเมื่อพวกท่านประสงค์จะขึ้นละหมาด ให้พวกท่านจงล้างหน้าของพวกท่าน\r\nล้างมือของพวกท่านถึงข้อศอก\r\nและจงเช็ดศีรษะของพวกท่านและ(จงล้าง)เท้าของพวกท่านถึงตาตุ่มทั้งสองข้าง</span>” (<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">อัลมาอิดะห์:</span>6)<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">2.<span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">ส่งเสริมให้อาบน้ำในโอกาสต่าง ๆ\r\nอัลลอฮฺ ได้ตรัสไว้ว่า</span><o:p></o:p></p><p class=\"MsoNormal\"><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ความว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">และหากพวกท่านมีญุนุบ\r\nก็ให้พวกท่านจงทำความสะอาด</span>” (<span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">อัลมาอิดะห์:</span>6)<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">3.<span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">ใช้ให้ตัดเล็บ แปรงฟัน\r\nทำความสะอาดเสื้อผ้า</span><o:p></o:p></p><p class=\"MsoNormal\">- <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ตัดเล็บ ท่านรอซูล ได้กล่าว ความว่า ห้าประการซึ่งถือเป็นธรรมชาติบริสุทธิ์\r\nคือ การคิตาน การโกนขนใต้ร่มผ้า การถอนขนรักแร้ การตัดเล็บและการขลิบหนวด\r\n(บุคอรีและมุสลิม)</span><o:p></o:p></p><p class=\"MsoNormal\">- <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">แปรงฟัน ท่านรอซูล ได้กล่าว ความว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">ถ้าหากฉันไม่กลัวว่าจะเป็นความยากลำบากกับประชาชาติของฉัน\r\nแน่นอน</span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;\r\nline-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\">”\r\nฉันจะต้องใช้ให้พวกเขา</span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\"> แปรงฟันทุกครั้งที่ละหมาด</span>” (<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">บุคอรีและมุสลิม)</span><o:p></o:p></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<span style=\"font-size:11.0pt;mso-bidi-font-size:14.0pt;line-height:115%;\r\nfont-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-font-family:&quot;Cordia New&quot;;mso-bidi-theme-font:minor-bidi;mso-ansi-language:\r\nEN-US;mso-fareast-language:EN-US;mso-bidi-language:TH\">- </span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;\r\nmso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-ansi-language:\r\nEN-US;mso-fareast-language:EN-US;mso-bidi-language:TH\">ทำความสะอาดเสื้อผ้า อัลลอฮฺได้ตรัสไว้ว่า\r\nความว่า </span><span style=\"font-size:11.0pt;mso-bidi-font-size:14.0pt;\r\nline-height:115%;font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;\r\nmso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:\r\nminor-latin;mso-bidi-font-family:&quot;Cordia New&quot;;mso-ansi-language:EN-US;\r\nmso-fareast-language:EN-US;mso-bidi-language:TH\">“</span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;\r\nmso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;mso-ansi-language:\r\nEN-US;mso-fareast-language:EN-US;mso-bidi-language:TH\">และจงทำความสะอาดเสื้อผ้าของเจ้า</span><span style=\"font-size:11.0pt;mso-bidi-font-size:14.0pt;line-height:115%;font-family:\r\n&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-font-family:&quot;Cordia New&quot;;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:TH\">” (</span><span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:\r\nCalibri;mso-fareast-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:TH\">อัลมุดดัซซิร :4)</span><br></p>', NULL, NULL, '1', 32, NULL, 12, '2018-12-13 11:12:24', '1', '2018-12-13 11:11:40', '2018-12-13 11:12:24');
INSERT INTO `lectures` (`id`, `lecture_name`, `lecture_number`, `lecture_file`, `pdf`, `ppt`, `mp4`, `youtube`, `lecture_link`, `lecture_article`, `lecture_type`, `lecture_size`, `lecture_preview`, `section_id`, `lecture_comment`, `user_id`, `lecture_create`, `lecture_status`, `created_at`, `updated_at`) VALUES
(49, 'การละหมาด', NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=DjgFHI8hrGs', NULL, '<p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">การละหมาดเป็นองค์ประกอบของอิสลามที่สำคัญที่สุดรองจากการกล่าวชะฮาดะฮฺ\r\nและเป็นข้อบังคับสำหรับบรรดามุสลิมและมุสลิมะฮฺทุกคน ในทุกสถานการณ์\r\nไม่ว่าจะอยู่ในภาวะที่ปลอดภัยหรือหวาดกลัว\r\nจะอยู่ในภาวะที่ร่างกายสมบูรณ์หรือเจ็บป่วย จะอยู่ในภาวะที่อยู่กับบ้านหรือเดินทางไกล\r\nซึ่งในแต่ละสถานการณ์ดังกล่าวนั้นการละหมาดจะมีรูปแบบที่แตกต่างออกไป ที่เหมาะสมกับสถานการณ์ทั้งในด้านอิริยาบถและจำนวนร็อกอะฮฺ</span><o:p></o:p></p><p class=\"MsoNormal\"><b>&nbsp;</b></p><p class=\"MsoNormal\"><b><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ความหมายการละหมาด</span><o:p></o:p></b></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">การละหมาด ด้านภาษา คือ\r\nการดุอาอฺและขอลุแก่โทษ อัลลอฮฺได้ตรัสไว่ว่า</span><o:p></o:p></p><p class=\"MsoNormal\"><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ความว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">และเจ้าจงขอพรให้พวกเขา\r\nเพราะการขอพรของเจ้านั้นเป้นความสงบของพวกเขา</span>” (<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">อัตเตาบะฮฺ</span>,103)<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">การละหมาด ด้านวิชาการ\r\nตามทัศนะของอิหม่ามทั้งสี่ คือ อิหม่ามฮานาฟี(</span>Hanafiy) <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">อิหม่ามมาลิก\r\n(</span>Malik) <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;\r\nline-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">อิหม่ามชาฟีอี (</span>Shafi’iy) <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">และอิหม่ามอะหฺมัด\r\n(</span>Ahmad) <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;\r\nline-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ได้ให้ความหมายไว้ดังนี้</span><o:p></o:p></p><p class=\"MsoNormal\"><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ทัศนะของอิหม่ามฮานาฟี (</span>Hanafiy) <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">และอิหม่ามชาฟีอี\r\n( </span>Shafi’iy)<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">การละหมาด\r\nหมายถึง คำพูดและการกระทำโดยเริ่มด้วยการตักบีร&nbsp;\r\nและสิ้นสุดด้วยสลาม ตามเงื่อนไขที่กำหนดไว้</span><o:p></o:p></p><p class=\"MsoNormal\"><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ทัศนะของอิหม่ามมาลิกและฮานาบีละฮฺ(อุลามาอฺในมัซฮับอิหม่ามอะหฺมัด)\r\nเศาะลาฮฺ ให้ความว่าการน้อมเข้าใกล้ชิดของผู้ศรัทธากับอัลลอฮฺโดยกระทาด้วยตนเอง(ผู้ศรัทธา)\r\nด้วยการตักบีร สลามและสุญูดเท่านั้น</span><o:p></o:p></p><p class=\"MsoNormal\"><b>&nbsp;</b></p><p class=\"MsoNormal\"><b><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ประวัติการบัญญัติละหมาด</span><o:p></o:p></b></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">การละหมาดเป็นอิบาดะห์ที่ได้มีบัญญัติมาช้านานแล้ว\r\nตั้งแต่นบีคนแรกอะดัม และอัลลอฮฺได้ตรัสถึงการบัญญัติละหมาดในสมัยของนบีอิสมาอีลว่า</span><span lang=\"TH\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;\r\nline-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ความว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">และเขาใช้หมู่ญาติของเขาให้ปฏิบัติเศาะลาฮฺและจ่ายซะกาตและเขาเป็นที่โปรดปราน\r\nณ พระเจ้าของเขา</span>” (<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">มัรยัม : </span>55)<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">และความจริงพวกหะนะฟียะฮฺที่เป็นชนเผ่าของนบีอิบรอฮีมนั้น\r\nก็รู้จักละหมาดและเศาะหาบะฮฺของนบีมูซาก็รู้จักละหมาด\r\nและอัลลอฮฺได้ประทานอายะฮฺผ่านลิ้นของนบีอีซาว่าความว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">และพระองค์ได้กำชับฉันให้เศาะลาฮฺและจ่ายซะกาตตราบเท่าที่ฉันยังมีชีวิตอยู่</span>”\r\n(<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:\r\n115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:\r\nminor-latin\">มัรยัม : </span>31)<o:p></o:p></p><p class=\"MsoNormal\"><b>&nbsp;</b></p><p class=\"MsoNormal\"><b><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ความประเสริฐของการละหมาด</span></b><o:p></o:p></p><p class=\"MsoNormal\">- <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ความประเสริฐของการเดินไปละหมาด\r\nและการละหมาดญะมาอะฮฺที่มัสญิด</span><span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"> </span><o:p></o:p></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">จากอะบูฮุร็อยเราะฮฺ&nbsp; จากท่านนบี&nbsp;\r\nได้กล่าวว่า</span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">ความว่า\r\n</span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;\r\nline-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">การละหมาดญะมาอะฮฺมีผลบุญเพิ่มทวีคูณเป็นยี่สิบห้าเท่าจากการละหมาดคนเดียวที่บ้านหรือที่ร้าน\r\nเมื่อผู้ใดอาบน้ำละหมาดอย่างสมบูรณ์ที่สุดและได้เดินไปยังมัสญิด\r\nซึ่งเขาผู้นั้นไม่มีเป้าหมายอื่นใดนอกจากเพื่อการละหมาด\r\nเขาจะไม่ย่างก้าวไปหนึ่งก้าวนอกจาก\r\nอัลลอฮฺจะยกระดับให้เขาหนึ่งระดับชั้นและจะลบบาปของเขาหนึ่งบาปจนกว่าเขาจะเข้ามัสยิด\r\nและเมื่อได้เข้าอยู่มัสยิดเขาจะได้รับความดีเสมือนว่าเขาอยู่ใน\r\nนการละหมาดจนกว่าเขาจะออกจากมัสยิด และมลาอิกะฮฺจะขอพรแก่เขาตราบเท่าที่เขานั่งอยู่\r\nณ สถานที่ที่เขาทำการ ละหมาดด้วยการกล่าว</span><o:p></o:p></p><p class=\"MsoNormal\"><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ความว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">โอ้อัลลอฮฺได้โปรดให้การอภัยโทษแก่เขาผู้นี้ด้วยเถิด\r\nโอ้อัลลอฮฺได้โปรดให้ความ เมตตาแก่เขาด้วยเถิด ตราบที่เขาไม่มีหะดัษ\r\n(เสียน้ำละหมาด) ณ สถานที่ดังกล่าว</span>” (<span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">บันทึกโดยอัลบุคอรีย์หะดีษที่ </span>477\r\n<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:\r\n115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:\r\nminor-latin\">และมุสลิมหะดีษที่ </span>649)<o:p></o:p></p><p class=\"MsoNormal\"><b>- </b><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ความประเสริฐของผู้ที่เดินทางไปกลับมัสยิด</span><b><o:p></o:p></b></p><p class=\"MsoNormal\"><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">จากอบูฮุร็อยเราะฮฺ ได้กล่าวว่า ท่านนบี&nbsp; ได้กล่าวว่า</span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">ความว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">ผู้ใดที่ไปมัสยิดและกลับ\r\nอัลลอฮฺจะทรงตระเตรียมที่อยู่ในสวนสวรรค์ไว้สำหรับเขา ทุกครั้งที่เขาเดินทางไปกลับจากมัสยิด</span>”\r\n(<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:\r\n115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:\r\nminor-latin\">บันทึกโดยอัลบุคอรีย์หะดีษที่ </span>662<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">และมุสลิมหะดีษที่\r\n</span>669<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;\r\nline-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\"> สำนวนหะดีษเป็นของอัลบุคอรีย์)</span><o:p></o:p></p><p class=\"MsoNormal\"><b>- </b><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ความประเสริฐของการไปละหมาดด้วยความสำรวม\r\nความสงบเสงี่ยมและไม่เร่งรีบ</span><b><o:p></o:p></b></p><p class=\"MsoNormal\"><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">จาก อบูฮุร็อยเราะฮฺ&nbsp; ได้กล่าวว่า ท่านนบี&nbsp; ได้กล่าวว่า</span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">ความว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">เมื่อใดมีการเชิญชวนไปสู่การละหมาด\r\n(กล่าวอิกอมะฮฺ) พวกท่านอย่าได้ไปสู่การละหมาดด้วยความเร่งรีบ\r\nแต่พวกท่านจงเดินไปด้วยความสงบไม่รีบร้อน หากว่าพวกท่านทันการละหมาด\r\n(พร้อมกับอิหม่าม) พวกท่านก็จงละหมาด และสำหรับสิ่งที่ท่านพลาดไป (คือ\r\nร็อกอะฮฺของการละหมาดยังไม่สมบูรณ์ในขณะที่อิมามละหมาดเสร็จแล้ว)\r\nท่านก็จงเพิ่มเติมให้ ครบสมบูรณ์แท้ที่จริงแล้ว ผู้ใดมีความตั้งใจที่จะทำการละหมาด\r\n(ญะมาอะฮฺ) เขาผู้นั้นเสมือนอยู่ได้ในการทำละหมาด (ญะมาอะฮฺ)แล้ว</span>”(<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">บันทึกโดยอัลบุคอรีย์\r\nหะดีษที่ </span>636<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\"> และมุสลิม หะดีษที่ </span>602)<o:p></o:p></p><p class=\"MsoNormal\">- <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ความประเสริฐของการละหมาดในเวลา</span><o:p></o:p></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">จากอับดุลลอฮฺบิน มัสอูด&nbsp; ได้กล่าวว่า ฉันได้เอ่ยถามท่านนบี ว่า</span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">ความว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">การงานใดที่เป็นที่รักยิ่งของอัลลอฮฺ\r\nท่านนบี&nbsp; ตอบว่า การละหมาดตรงเวลา\r\nเขาได้ถามอีกว่าแล้วการงานอะไรอีก\r\nท่านนบีตอบว่าการทำดีต่อพ่อแม่แล้วเขาก็ได้ถามอีก ท่านนบีก็ตอบว่าการต่อสู้ในหนทางของอัลลอฮฺแล้วเขาก็ได้กล่าวอีก\r\nว่าท่านนบีได้กล่าวกับฉันเช่นนี้และถ้าหากฉันได้เอ่ยถามเพิ่มอีกแน่นอนท่านนบี&nbsp; ก็จะเพิ่มแก่ฉันอีก</span>” (<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">บันทึกโดยอัลบุคอรีย์หะดีษที่\r\n527 และมุสลิมหะดีษที่ 85)</span><o:p></o:p></p><p class=\"MsoNormal\"><b>&nbsp;</b></p><p class=\"MsoNormal\"><b><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:\r\n11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">เวลาละหมาด</span><o:p></o:p></b></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">อัลลอฮได้ทรงกำหนดเวลาให้กับการละหมาดในแต่ละช่วง\r\nโดยมีเวลาเฉพาะที่จะต้องปฏิบัติและทรงบัญชาให้พวกเรายึดมั่นต่อช่วงเวลานั้น ๆ\r\nอย่างเคร่งครัด ซึ่งพระองค์ตรัสไว้ว่า</span><span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">ความว่า\r\nครั้นเมื่อพวกเจ้าเสร็จจากการละหมาดแล้ว ก็จงกล่าวรำลึกถึงอัลลอฮฺ\r\nทั้งในสภาพยืนและนั่งและในสภาพนอนเอกเขนกของพวกเจ้า ครั้นเมื่อพวกเจ้าปลอดภัยแล้ว\r\nก็จงดำรงไว้ซึ่งการละหมาด\r\nแท้จริงการละหมาดนั้นเป็นบทบัญญัติที่ถูกกำหนดเวลาไว้แก่ผู้ศรัทธาทั้งหลายเพราะแท้จริงการละหมาดเป็นบัญญัติที่ถูกกำหนดเวลาไว้แก่บรรดามวลผู้มีศรัทธาทั้งหลายเวลาละหมาด</span><o:p></o:p></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\"><span lang=\"TH\" style=\"font-size:\r\n14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">1.การละหมาดฟัจรฺ (ละหมาดซุบฮฺ)\r\nเวลาของมันจะเริ่มตั้งแต่แสงอรุณขึ้นไปจนกระทั่งดวงอาทิตย์ขึ้นจากขอบฟ้า\r\nท่านรอซูลได้กล่าวว่าความว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">เวลาละหมาดซูบฮฺเริ่มตั้งแต่แสงอรุณขึ้น\r\nตราบที่ตะวันยังไม่ขึ้น</span>” (<span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">รายงานโดยมุสลิม)ตามทัศนะของชาฟิอียะฮฺ\r\nซูนัตให้ละหมาดในตอนต้นของเวลา และทัศนะนี้นับว่าเป็นทัศนะที่ถูกต้องที่สุด\r\nแต่ฮานาฟีย์กลับออกว่า ซุนัตให้ทอดเวลาออกมาเล็กน้อย</span>1<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">2. <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">การละหมาดซุฮรฺ\r\nเริ่มตั้งแต่ตะวันเอียง หรือตะวันคล้อยจากเส้นกลางฟ้า\r\nไปจนกระทั่งเงาของสิ่งของยาวเท่าตัวจริง ท่านรอซูบได้กล่าวไว้ว่าความว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">เวลาซูฮรฺเมื่อตะวันคล้อยและเงาของคนๆ\r\nหนึ่งเท่ากับความสูงของเขา ตราบเมื่อยังไม่ได้เวลาอัศร์</span>” (<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">รายงานโดยมุสลิม)แต่ซูนัตให้ทอดเวลามาเล็กน้อย\r\nหากเป็นช่วงเวลาที่อากาศร้อนมาก\r\nแต่หากไม่ใช่ในช่วงอากาศร้อนก็ให้รีบละหมาดเมื่อได้เวลา\r\nดังที่ท่านบุคอรีย์ได้รายงานไว้</span>2<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">3. <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">การละหมาดอัสร์\r\nเวลาจะเริ่มตั้งแต่เงาของสิ่งของยาวเท่าตัวจริง ไปจนกระทั่งถึงตะวันตกดิน</span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;\r\nmso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">ท่านรอซูลได้กล่าวไว้ว่า</span><span lang=\"TH\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;\r\nline-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:\r\nCalibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin\">ความว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">และเวลาอัศร์นั้นตราบเท่าที่ตะวันยังไม่เหลือง</span>”\r\n(<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:\r\n115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:\r\nminor-latin\">รายงานโดยมุสลิม)</span><span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-bidi\"> </span><span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">และซูนัตให้ทำการละหมาดในต้นเวลา\r\nมักรูฮ หากจะทำละหมาดในช่วงแสงอาทิตย์เป็นสีเหลือง การละหมาดอัสรีย์\r\nคือละหมาดที่เรียกว่า วุสฏอ (ละหมาดกลาง)</span><o:p></o:p></p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">4. <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">การละหมาดมัฆริบ\r\nเริ่มตั้งแต่ตะวันตกดิน ไปจนหมดแสงสีแดงบนฟากฟ้า\r\nซูนัตให้ละหมาดต้นเวลาอนุญาตให้ล่าช้าได้เล็กน้อยตราบใดที่แสงสีแดงยังไม่หมด</span>3<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;\r\nfont-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">\r\nท่านรอซูลได้กล่าวไว้ว่าความว่า </span>“<span lang=\"TH\" style=\"font-size:14.0pt;\r\nmso-ansi-font-size:11.0pt;line-height:115%;font-family:&quot;Cordia New&quot;,sans-serif;\r\nmso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:\r\nCalibri;mso-hansi-theme-font:minor-latin\">เวลามัฆริบนั้น ตราบที่แสงยังไม่หายไป</span>”\r\n(<span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:\r\n115%;font-family:&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:\r\nminor-latin\">รายงานโดยมุสลิม)</span><o:p></o:p></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-indent:36.0pt\">5. <span lang=\"TH\" style=\"font-size:14.0pt;mso-ansi-font-size:11.0pt;line-height:115%;font-family:\r\n&quot;Cordia New&quot;,sans-serif;mso-ascii-font-family:Calibri;mso-ascii-theme-font:\r\nminor-latin;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin\">การละหมาดอีชา\r\nเริ่มได้เวลาตั้งแต่แสงสีแดงหมดไปจนกระทั่งถึงแสงอรุณขึ้น\r\nซุนัตให้ทอดเวลาไปจนกระทั่งถึงเที่ยงคืน และอนุญาตให้ทำการละหมาดหลังจากเที่ยงคืน\r\nแค่มัครุฮฺหากจะนอนก่อนละหมาด</span><o:p></o:p></p>', NULL, NULL, '1', 33, NULL, 12, '2018-12-13 11:13:38', '1', '2018-12-13 11:12:45', '2018-12-13 11:13:38'),
(50, 'โลกอิสลามในปัจจุบัน', NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=DjgFHI8hrGs', NULL, '<p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">1.<span lang=\"TH\">คำนิยามของโลกอิสลาม</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">คำว่า </span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\">“<span lang=\"TH\">โลกอิสลาม</span>” <span lang=\"TH\">นั้น\r\nเป็นคำที่มีความหมายกว้างขวาง แต่โดยทั่วไปแล้ว โลกอิสลามมี</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\nline-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;\r\nletter-spacing:-.05pt\">อยู่ </span><span style=\"font-size:15.5pt;font-family:\r\n&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">2<span lang=\"TH\">\r\nความหมายด้วยกัน คือ</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">ความหมายแรก\r\nเป็นในเชิงวัฒนธรรม ซึ่งหมายถึงประชาคมทั่วโลกที่มีความเชื่อมั่นศรัทธาในศาสนา\r\nอิสลามเช่นเดียวกัน โดยผู้ที่ยอมรับนับถือศาสนาอิสลามจะถูกเรียกว่า </span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\">“<span lang=\"TH\">มุสลิม</span>”<span lang=\"TH\">ประชาคมมุสลิมเหล่านี้\r\nไม่ได้จำกัดอยู่เฉพาะในชาติใดชาติหนึ่งเท่านั้น แต่ครอบคลุมไปในกลุ่มชาติพันธุ์ที่แตกต่างหลากหลาย\r\nแม้จะมีความแตกต่างจากกัน\r\nแต่ชาวมุสลิมทั่วโลกก็มีความเชื่อมโยงกันจากมรดกตกทอดของความเชื่อมั่นศรัทธาในศาสนาเดียวกัน</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">ความหมายที่สอง\r\nคือ ทางภูมิศาสตร์และการเมือง โดยเฉพาะในบริบททางประวัติศาสตร์กล่าวคือ โลกอิสลาม\r\nหรือ โลกมุสลิม ที่หมายถึงหน่วยทางการเมืองและภูมิศาสตร์\r\nที่อิสลามมีอิทธิพลอยู่สูงหรือเป็นส่วนประกอบสำคัญ เมื่อกล่าวถึงโลกอิสลามนั้น\r\nคนส่วนใหญ่มักนึกถึงดินเเดนอาหรับ\r\nเเต่เเท้จริงเเล้วโลกมุสลิมมีอาณาบริเวณที่กว้างใหญ่ไพศาลกว่าดินเเดนอาหรับประกอบด้วยอาณาบริเวณที่พาดยาวจากโมร็อกโกซึ่งตั้งอยู่ปลายตะวันตกเฉียงเหนือสุดของเเอฟริกาไปถึงบรรดาหมู่เกาะน้อยใหญ่ในประเทศอินโดนีเซีย\r\nดังนั้นอิทธิพลของมุสลิมจึงมีอาณาบริเวณที่กว้างขวางถึงสามทวีป\r\nซึ่งครอบคลุมเขตยุทธศาสตร์สำคัญทางเศรษฐกิจเเละการเมืองของโลกอีกด้วย</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">โลกอิสลามในความหมายเชิงประชากรศาสตร์ดังกล่าว\r\nจึงประกอบด้วยชาวมุสลิม </span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;\r\nletter-spacing:-.05pt\">3<span lang=\"TH\"> กลุ่มใหญ่ ๆ\r\nที่กระจัดกระจายอยู่ทั่วโลกในปัจจุบัน ดังนี้</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">1. <span lang=\"TH\">กลุ่มประเทศมุสลิมอาหรับ\r\nคือ ประเทศมุสลิมซึ่งประชากรส่วนใหญ่เป็นชาวอาหรับ ใช้ภาษาอาหรับเป็นภาษากลาง\r\nกลุ่มนี้มีทั้งหมด </span>18<span lang=\"TH\"> ประเทศ คือ แอลจีเรีย บาห์เรน อียิปต์\r\nอิรักจอร์แดน คูเวต เลบานอน ลิเบีย โมร็อกโก โอมาน กาตาร์ ซาอุดีอาระเบีย โซมาเลีย\r\nซูดาน ซีเรีย ตูนีเซีย สหรัฐอาหรับเอมิเรตส์ และเยเมน</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">2. <span lang=\"TH\">กลุ่มประเทศมุสลิมที่ไม่ใช่อาหรับ\r\nคือ ประเทศที่ประชากรส่วนใหญ่นับถือศาสนาอิสลาม\r\nแต่ไม่ใช่ชาวอาหรับและไม่ได้ใช้ภาษาอาหรับเป็นภาษากลาง กลุ่มนี้มีทั้งหมด </span>38<span lang=\"TH\"> ประเทศ</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">3. <span lang=\"TH\">กลุ่มมุสลิมชนกลุ่มน้อยในประเทศที่ไม่ใช่มุสลิม\r\nคือ มุสลิมที่กระจัดกระจายอยู่ในประเทศที่ประชากรส่วนใหญ่ไม่ใช่มุสลิม\r\nซึ่งมีอยู่ทุกมุมโลก เช่น ออสเตรเลีย ฟิลิปปินส์ จีน อินเดียรัสเซีย มาซิโดเนีย\r\nฝรั่งเศส อังกฤษ สหรัฐอเมริกา อาร์เจนตินา ไทย ฯลฯ\r\nกลุ่มมุสลิมเหล่านี้เป็นประชากรส่วนน้อยในประเทศต่าง ๆ ไม่น้อยกว่า </span>120<span lang=\"TH\"> ประเทศทั่วโลก</span><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">ดังนั้นความหมายของโลกอิสลามโดยสรุป\r\nหมายถึง เมืองหรือประเทศที่มีประชากรเป็นมุสลิมมากกว่า </span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\">50<span lang=\"TH\"> เปอร์เซ็นต์ มีอิสลามเป็นศาสนาประจำชาติ\r\nและมีประมุขหรือผู้นำสูงสุดเป็นมุสลิมนั่นเอง</span><o:p></o:p></span></p>', NULL, NULL, '1', 34, NULL, 12, '2018-12-13 11:24:30', '1', '2018-12-13 11:23:56', '2018-12-13 11:24:30'),
(51, 'องค์การความร่วมมืออิสลาม', NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=DjgFHI8hrGs', NULL, '<p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">ระบบเคาะลีฟะฮฺ\r\nสิ้นสุดลงพร้อม ๆ กับการแตกสลายของอาณาจักรออตโตมานในปี ค.ศ. </span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\">1924<span lang=\"TH\"> และถึงแม้จะมีความพยายามที่จะสถาปนาสถาบันเคาะลีฟะฮฺขึ้นมาใหม่ในการประชุมที่กรุงไคโร\r\n(</span>Cairo Conference) <span lang=\"TH\">ประเทศอิยิปต์ ในปี </span>1926<span lang=\"TH\"> ก็ตาม แต่ความพยายามนี้ก็ไม่เป็นผล\r\nจนท้ายที่สุดอาณาจักรอิสลามจึงต้องถูกแบ่งออกเป็นรัฐ-\r\nชาติต่างๆตามระบบระหว่างประเทศสมัยใหม่การเปลี่ยนแปลงดังกล่าวทำให้โลกอิสลามเริ่มคิดรูปแบบการรวมตัวแบบพหุภาคีขึ้นใหม่ซึ่งแตกต่างจากระบบเคาะลีฟะฮฺในอดีต</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">อย่างไรก็ตาม\r\nการที่บรรดารัฐอิสลามใหม่ ๆ ต้องยุ่งอยู่กับกระบวนการการสร้างชาติ</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\">(Statebuildng) <span lang=\"TH\">เหมือนชาติอื่น ๆ\r\nทั่วไปจึงทำให้แผนการรวมตัวครั้งแรกเกิดขึ้นในระดับที่ไม่ใช่รัฐก่อนเชนในปี </span>1931<span lang=\"TH\"> มีการประชุมอิสลามทั่วไปจัดขึ้นที่อัล-กุดส์ (</span>Ai-Quds) <span lang=\"TH\">นครเยรูซาเล็มซึ่งมีการประกาศกฎบัตรก่อตั้งสถาบันถาวรสำหรับการประชุมอิสลามขึ้น\r\nนอกจากนั้นยังมีการประชุมอิสลามซึ่งจัดขึ้นที่กรุงเจนีวา (</span>Geneva)<span lang=\"TH\">ในปี </span>1935<span lang=\"TH\"> ซึ่งมีตัวแทนประชาคมอิสลามในยุโรปเข้าร่วมมากหมายแต่เนื่องด้วยการคัดค้านของยุโรปที่ไม่ต้องการให้มีความสัมพันธ์ในหมู่ประชาชนและประเทศอิสลามอย่างเป็นระบบจึงทำให้การประชุมอิสลามที่เกิดขึ้นไม่สามารถบรรลุวัตถุประสงค์ได้\r\nในขณะเดียวกัน เมื่อสงครามโลกครั้งที่ </span>2 <span lang=\"TH\">เกิดขึ้นความพยายามเหล่านี้จึงหยุดชะงักลงไปโดยปริยาย</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">องค์การความร่วมมืออิสลาม\r\n(</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;\r\nletter-spacing:-.05pt\">OIC) <span lang=\"TH\">เป็นองค์กรระหว่างสองรัฐใหญ่ที่สุดหลังจากสหประชาชาติซึ่งมีสมาชิก\r\n</span>57<span lang=\"TH\"> ประเทศกระจายไปสี่ทวีป </span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">OIC <span lang=\"TH\">ก่อตั้งขึ้นเมื่อเดือนพฤษภาคม </span>1971<span lang=\"TH\">\r\nตามมติที่ประชุมสุดยอดครั้งแรกของผู้นำกลุ่มประเทศมุสลิม </span>35<span lang=\"TH\">\r\nชาติ ที่กรุงราบัต ราชอาณาจักรโมร็อกโก ระหว่างวันที่ </span>22-25<span lang=\"TH\">\r\nกันยายน </span>1969 (<span lang=\"TH\">การประชุมสุดยอดดังกล่าวมีขึ้นเพื่อหาทางสร้างองค์กรความร่วมมือระหว่างรัฐมุสลิม\r\nหลังจากเกิดกรณีการวางเพลิงมัสยิดอัลอักซอร์ (</span>Al –Aqsa Mosque) <span lang=\"TH\">ซึ่งเป็นศาสนสถานที่สำคัญอันดับ </span>3<span lang=\"TH\"> ของโลกมุสลิม\r\nเมื่อเดือนสิงหาคม </span>1969)<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">การจัดตั้ง </span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\">OIC <span lang=\"TH\">มีกษัตริย์ </span>Faisal <span lang=\"TH\">แห่งซาอุดีอาระเบีย\r\nและกษัตริย์ </span>Hassain <span lang=\"TH\">แห่งโมร็อกโก\r\nเป็นผู้มีบทบาทสำคัญในการผลักดัน\r\nโดยมีเป้าหมายหลักในการสร้างความเป็นอันหนึ่งอันเดียวกัน และการผนึกกำลังกันของประชาชาติมุสลิม\r\n(</span>Islamic Ummah) <span lang=\"TH\">ตามแนวทาง </span>pan-Islamism <span lang=\"TH\">และการพิทักษ์และส่งเสริมผลประโยชน์ของชาวมุสลิม\r\nโดยเฉพาะอย่างยิ่งการปลดปล่อยดินแดนของชาวอาหรับ/มุสลิมรวมทั้ง </span>Al Quds Al\r\nSharif (<span lang=\"TH\">เยรูซาเล็ม) จากการยึดครองของอิสราเอล</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">OIC <span lang=\"TH\">ได้ให้สถานะผู้สังเกตการณ์ (</span>Observer Status) <span lang=\"TH\">แก่ </span>4<span lang=\"TH\"> ประเทศได้แก่ บอสเนีย - เฮอร์เซโกวินาสาธารณรัฐแอฟริกากลาง (</span>Central\r\nAfrican Republic) <span lang=\"TH\">ไทย และรัสเซีย นอกจากนี้\r\nชุมชนมุสลิมในประเทศต่าง ๆ เช่น สาธารณรัฐไซปรัสเหนือ (</span>Turkish Republic of\r\nNothern Cyprus) <span lang=\"TH\">ซึ่งอยู่ภายใต้ตุรกีและ </span>Moro National\r\nLiberation Front (MNLF) <span lang=\"TH\">ในฟิลิปปินส์ยังได้รับสถานะผู้สังเกตการณ์ในประเภทชุมชนมุสลิมและชนกลุ่มน้อยมุสลิม\r\n(</span>Muslim Communities and Minorities) <span lang=\"TH\">ด้วย\r\nโครงสร้างและกลไกที่สำคัญ</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">เลขาธิการคนปัจจุบัน\r\nคือ </span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;\r\nletter-spacing:-.05pt\">Prof.Ekmeleddin Ihsanoglu (<span lang=\"TH\">ชาวตรุกี)\r\nเข้ารับหน้าที่เมื่อ มกราคม</span>2548 (<span lang=\"TH\">วาระ </span>4<span lang=\"TH\"> ปี) และต่อมาได้รับการต่ออายุการดำรงตำแหน่งอีก </span>5<span lang=\"TH\">\r\nปี จึงจะอยู่ในตำแหน่งถึงปี </span>2557<span lang=\"TH\">สำนักงานเลขาธิการ (</span>The\r\nGeneral Secretariat) <span lang=\"TH\">เป็นหน่วยงานบริหารกลาง\r\nตั้งอยู่ที่เมืองเจดดาห์ประเทศซาอุดีอาระเบีย โดย </span>OIC <span lang=\"TH\">ถือว่า\r\nสำนักงานดังกล่าวเป็นสำนักงานชั่วคราว\r\nและกำหนดจะให้สำนักงานเลขาธิการถาวรตั้งขึ้นที่ กรุงเยรูชาเล็ม\r\nเมื่อมัสยิดอัลอักซอร์ได้รับการปลดปล่อยจากอิสราเอลแล้ว</span><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">การประชุมสุดยอด (</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\">The Islamic Summit Conference) <span lang=\"TH\">จัดประชุมทุก </span>3<span lang=\"TH\"> ปี ประธานการประชุมสุดยอด ครั้งที่ </span>11<span lang=\"TH\"> ในปี </span>2008<span lang=\"TH\"> ได้แก่ เซเนกัล และประธานการประชุมสุดยอด ครั้งที่ </span>12<span lang=\"TH\"> ได้แก่ อียิปต์</span>(2010-2012) <span lang=\"TH\">การประชุมระดับรัฐมนตรีต่างประเทศ\r\n(</span>Council of Foreign Ministers – CFM) <span lang=\"TH\">ประชุมทุกปี\r\nการประชุมครั้งต่อไปในปี </span>2555 (2012) <span lang=\"TH\">ครั้งที่ </span>39 <span lang=\"TH\">จะจัดขึ้น ณ กรุงจิบูตี ประเทศจิบูตี</span><o:p></o:p></span></p>', NULL, NULL, '1', 35, NULL, 12, '2018-12-13 11:25:19', '1', '2018-12-13 11:24:45', '2018-12-13 11:25:19');
INSERT INTO `lectures` (`id`, `lecture_name`, `lecture_number`, `lecture_file`, `pdf`, `ppt`, `mp4`, `youtube`, `lecture_link`, `lecture_article`, `lecture_type`, `lecture_size`, `lecture_preview`, `section_id`, `lecture_comment`, `user_id`, `lecture_create`, `lecture_status`, `created_at`, `updated_at`) VALUES
(52, 'สถานภาพโลกอิสลามในปัจจุบัน', NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=DjgFHI8hrGs', NULL, '<p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">อิสลามเป็นศาสนาที่ครอบคลุมทุกอณูของชีวิตมนุษย์\r\nอิสลามไม่เพียงแต่เป็นศาสนาเพื่อพิธีกรรมหรือการถือศีลเท่านั้น\r\nหากแต่อิสลามเป็นศาสนาที่วางระบบการดำเนินชีวิตของมนุษย์ในทุก ๆ ด้าน\r\nทั้งด้านความเชื่อ ด้านสังคม ด้านการเมืองการปกครอง ตลอดจนด้านเศรษฐกิจ\r\nเป็นต้นแต่ความสมบูรณ์ของอิสลามทีท่าว่าจะเหลือแค่ชื่อและร่องรอยเท่านั้น\r\nเพราะความอ่อนแอของมุสลิมเองและเพราะแผนการทำลายล้างอิสลามของผู้ที่ไม่หวังดี\r\nทำให้สถานภาพโลกอิสลามในปัจจุบันจำเป็นต้องหยิบยกมาพูดคุยและวิภาควิจารณ์เพื่อให้เกิดจิตสำนึกที่ดีแก่มุสลิมทุกคน\r\nซึ่งประเด็นหัวข้อที่จะนำเสนอพอสังเขป มีดังต่อไปนี้ คือ</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">1. <span lang=\"TH\">สถานภาพของโลกมุสลิมด้านการศึกษา</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">2. <span lang=\"TH\">สถานภาพของโลกมุสลิมด้านสังคม</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">3. <span lang=\"TH\">สถานภาพของโลกมุสลิมด้านการเมือง\r\nและ</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">4. <span lang=\"TH\">สถานภาพของโลกมุสลิมด้านเศรษฐกิจ</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\nline-height:normal\"><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;\r\nletter-spacing:-.05pt\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\nline-height:normal\"><b><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;\r\nletter-spacing:-.05pt\">1. <span lang=\"TH\">สถานภาพของโลกมุสลิมด้านการศึกษา</span><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">การศึกษาในโลกอิสลามหรือประเทศมุสลิมในปัจจุบันส่วนใหญ่มีระบบการศึกษาอยู่สองระบบ\r\nที่ได้รับความนิยมอย่างกว้างขวาง\r\nทั้งสองระบบดังกล่าวนี้วางอยู่บนพื้นฐานปรัชญาที่ต่างกันดังนั้นเป้าหมายทางการศึกษาของทั้งสองระบบจึงแตกต่างกันโดยปริยาย\r\nระบบการศึกษาทั้งสองนี้คือ</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;\r\nletter-spacing:-.05pt\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">&nbsp;(</span><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">1) <span lang=\"TH\">ระบบการศึกษาแบบดั้งเดิม\r\n(</span>Traditional System)<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">&nbsp;(2) <span lang=\"TH\">ระบบการศึกษาแบบสมัยใหม่ (</span>ModernSystem)<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">ระบบการศึกษาแบบดั้งเดิมบางครั้งจะเรียกว่า\r\n</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;\r\nletter-spacing:-.05pt\">“<span lang=\"TH\">ระบบการศึกษาศาสนา (</span>Religious\r\nSystem)<span lang=\"TH\">การศึกษาในระบบนี้จะเน้นหนักในเรื่องศาสนา\r\nโดยมุ่งเน้นให้ผู้เรียนศรัทธาต่ออัลลอฮ\r\nด้วยความบริสุทธิ์ใจและนำศาสนามาเป็นวิถีแห่งการดำเนินชีวิต\r\nนอกจากนั้นให้ยอมรับว่าวะหยูเป็นแหล่งที่มาของความจริงแท้</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">ระบบการศึกษาแบบสมัยใหม่เป็นระบบการศึกษาที่ได้รับอิทธิพลจากปรัชญาตะวันตกและปรัชญาเซคคิวลา\r\n(</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;\r\nletter-spacing:-.05pt\">Secular) <span lang=\"TH\">ที่แยกศาสนจักรออกจากอาณาจักร\r\nการศึกษาในระบบนี้จะไม่ยอมรับว่าวะหยูคือแหล่งที่มาของความรู้\r\nแต่จะยอมรับความรู้ที่เป็นวิทยาศาสตร์ที่มาจากสมมุติฐานต่าง ๆ\r\nที่ได้รับการทดลองทางวิทยาศาสตร์เท่านั้น (</span>Basri, 1991 : 17)<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">การทำลายระบบการศึกษาอิสลาม</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">1.<span lang=\"TH\">แผนการลบล้างอัลกุรอาน\r\nดังที่เราได้ทราบจากเนื้อเพลงปลุกใจของชาติตะวันตกในตอนต้นแล้วว่า\r\nพวกเขาจะต่อสู้อย่างสุดกำลัง เพื่อลบล้างอัลกุรอาน\r\nเพราะพวกเขาตระหนักว่าอัลกุรอานเป็นที่มาของพลังแห่งประชาชาติอิสลามและนี่\r\nคือคำยืนยันของแกลดสโตน (</span>GLADSTONE) <span lang=\"TH\">อีกครั้งหนึ่งที่เขาได้ยืนยันว่า\r\n</span>“<span lang=\"TH\">ตราบใดที่อัลกุรอานยังอยู่ตราบนั้นตะวันตกไม่สามารถมีชัยชนะเหนือตะวันออก\r\nได้ หากแต่ตะวันตกนั่นเองที่จะไม่มีความสงบ (ปลอดภัย)</span>”<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">2.<span lang=\"TH\">การทำลายระบบการศึกษาอิสลามของแนวคิดเซคคิวล่า\r\nแนวคิดเซคคิวล่าก็เป็นอีกแนวคิดสำคัญที่ตะวันตกใช้ทำลายระบบการศึกษาอิสลามที่ วัตถุประสงค์หลัก\r\nคือ เพื่อทำลายความรู้ต่างๆเกี่ยวกับศาสนา\r\nเพื่อให้มุสลิมลืมความหลังแห่งความรุ่งเรืองของอิสลาม\r\nและเพื่อให้ภาษาอาหรับเลือนหายไปจากมุสลิม</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">ส่วนวิธีการเซคคิวล่าในการทำลายการศึกษาอิสลามนั้นก็หลากหลายวิธี\r\nเช่นการกำหนดจำนวนคาบหรือเวลาให้น้อยลง\r\nอีกทั้งยังกำหนดเนื้อหาที่เยาวชนมุสลิมไม่ควรรับรู้ เช่น\r\nการญิฮาดการเมืองการปกครอง เป็นต้น\r\nนอกจากนี้ยังให้ความสำคัญต่อผู้ที่เรียนจบด้านศาสนาน้อยๆ\r\nกลับให้ความสำคัญด้านสามัญโดยมีวัตถุประสงค์เพื่อลูกหลานมุสลิมจะได้เรียนรู้ศาสนาน้อยลง</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\nline-height:normal\"><b><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;\r\nletter-spacing:-.05pt\">2. <span lang=\"TH\">สถานภาพโลกอิสลามด้านสังคม</span><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">สังคมอิสลามคือสังคมที่ได้รับการสถาปนาขึ้นบนพื้นฐานของอัลกุรอานและซุนนะฮ\r\nโดยมีหลักพื้นฐาน </span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;\r\nletter-spacing:-.05pt\">3<span lang=\"TH\"> ประการคือ</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">1. <span lang=\"TH\">หลักอากีดะฮ</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">2. <span lang=\"TH\">หลักชะรีอะฮ</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">3. <span lang=\"TH\">หลักอัคลาค</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">ดังนั้นสังคมใดก็ตามที่ถูกสร้างขึ้นมาโดยมิได้ตั้งอยู่บนพื้นฐานดังกล่าวและมิได้ใช้หลักพื้นฐานทั้ง\r\n</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;\r\nletter-spacing:-.05pt\">3<span lang=\"TH\"> ประการนี้\r\nสังคมนั้นไม่ถือว่าเป็นสังคมอิสลาม</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">สังคมอิสลามมีลักษณะพิเศษ\r\nคือกิจการทุกอย่างของสังคมจะต้องวางอยู่บนพื้นฐานของการเคารพภักดีต่ออัลลอฮเพียงองค์เดียวเท่านั้น\r\nจะไม่มีสังคมใดได้ชื่อว่าเป็นสังคมมุสลิมจนกว่าจะมีการนำเอาระบบแห่งการดำเนินชีวิตของอิสลามมาใช้ในสังคมนั้นในทางกลับกันสังคมที่มิใช่สังคมมุสลิมก็เป็นสังคมญาฮิลียะฮ</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">สังคมมุสลิมในปัจจุบันคือสังคมที่ประกอบด้วยหน่วยของสังคมเป็นครอบครัวมุสลิม\r\nโดยไม่คำนึงถึงว่าสังคมนั้นถูกสร้างขึ้นมาบนพื้นฐานของอะไรก็ตาม\r\nซึ่งตามความเข้าใจในลักษณะนี้สังคมมุสลิมในปัจจุบันอาจถูกจัดอยู่ในกลุ่มสังคมญาฮีลิยะฮก็ได้\r\nเพราะสังคมญาฮิลียะฮนั้น\r\nคือสังคมที่ไม่นำเอาระบบการดำเนินชีวิตของอิสลามมาใช้ในสังคม</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">ลักษณะเฉพาะของสังคมมุสลิม</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">1. <span lang=\"TH\">เป็นสังคมที่ตั้งอยู่บนพื้นฐานของความเท่าเทียมกันของมนุษย์ในระบบสังคมอิสลามถือว่าความแตกต่างของมนุษย์ในด้านภาษา\r\nชาติพันธุ์\r\nสี่ผิวและเชื้อชาตินั้นเป็นธรรมชาติที่อัลลอฮได้กำหนดขึ้นมาเพื่อให้มนุษย์สามารถรู้จักซึ่งกันและกัน\r\nดังที่อัลลอฮกล่าวในอัลกุรอาน</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">ความว่า </span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\">“<span lang=\"TH\">โอ้มนุษยชาติทั้งหลาย\r\nแท้จริงเราได้สร้างสูเจ้าขึ้นมาเป็นชายและหญิงแล้วเราได้บันดาลให้สู่เจ้ากลายเป็นเผ่าพันธุ์ต่าง\r\nๆ เพื่อที่สูเจ้าจะได้รู้จักซึ่งกันและกัน</span>”<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">2. <span lang=\"TH\">ระบบสังคมอิสลามพิทักษ์รักษาจริยธรรมอันดีงามแห่งหลักอัคลากในอิสลามสังคมอิสลามเป็นสังคมที่ปกป้องความบริสุทธิ์ของสมาชิกในสังคม\r\nทั้งคำพูดและการแสดงออกของสมาชิกทุกคนจะต้องเป็นความดีมีจริยธรรม\r\nซึ่งการรักษาคุณธรรมของสังคมนั้นอิสลามได้มอบให้เป็นภารกิจของหน่วยสังคมทุกหน่วยเป็นสถาบันที่มีบทบาท\r\nเริ่มตั้งแต่การกำหนดบทบาทของสมาชิกในหน่วย กำหนดลักษณะความสัมพันธ์ของบุคคลในสังคม\r\nกำหนดรูปแบบความสัมพันธ์ระหว่างหน่วยสังคมด้วยกัน\r\nในขณะเดียวกันระบบสังคมอิสลามก็มีเกราะป้องกันที่เข้มแข็งคือระบบกฎหมายอิสลามเข้าไปเป็นกลไกในการควบคุมสังคม\r\n(</span>Sosial Control)<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">3.\r\nสังคมอิสลามเป็นสังคมที่พิทักษ์ปกป้องความยุติธรรมทางสังคมระบบสังคมอิสลามเป็นระบบที่ประกอบด้วยหลักทางสังคมที่สำคัญ\r\nคือ หลักจริยธรรมหลักกฎหมาย หลักการเมือง และหลักเศรษฐกิจ\r\nซึ่งหลักทั้งหมดนั้นเป็นกฎของผู้อภิบาลแห่งมนุษยชาติ</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">ดังนั้นในสังคมอิสลามจึงกำหนดวิธีการดำเนินกิจกรรมทางเศรษฐกิจรวมทั้งจริยธรรมทางธุรกิจ\r\n(</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;\r\nletter-spacing:-.05pt\">Moral Issue in Business) <span lang=\"TH\">โดยคำนึงถึงความถูกต้องชอบธรรมของการแสวงหาปัจจัยยังชีพการใช้จ่ายเพื่อการยังชีพและอื่น\r\nๆ</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\nline-height:normal\"><b><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;\r\nletter-spacing:-.05pt\">3.<span lang=\"TH\">สถานภาพโลกอิสลามด้านการเมืองการปกครอง</span><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">อิสลามกับระบบการเมืองการปกครอง\r\nอิสลามเป็นศาสนาที่วางกฏระเบียบทุกประการของมนุษย์และให้มนุษย์ปฏิบัติภารกิจในฐานะผู้แทนของอัลลอฮฺ\r\nดังนั้นจึงมีการกำหนดกฏกติกาว่าด้วยการเมืองการปกครอง\r\nเพื่อใช้ศักยภาพในการพัฒนาชีวิตให้เป็นไปตามความประสงค์ของอัลลอฮฺผู้ทรงอำนาจอันแท้จริงในสากลจักรวาล</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">หลักคำสอนของอิสลามว่าด้วยการเมืองการปกครองแนวคิดทางการเมืองการปกครองในอิสลามประกอบด้วยองค์ประกอบสำคัญ\r\n</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;\r\nletter-spacing:-.05pt\">3<span lang=\"TH\"> ประการดังนี้</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">1. <span lang=\"TH\">แนวคิดว่าด้วยความเชื่อในเอกภาพของอัลลอฮ์\r\n(เตาฮีด)\r\nหมายถึงมุสลิมต้องเชื่อว่าอัลลอฮฺเพียงองค์เดียวที่มีสิทธิในการวางกฏระเบียบต่างๆให้ปฏิบัติ\r\nไม่มีผู้ใดมีอภิสิทธิ์ในการตัดสินร่วมกับพระองค์ ปฏิเสธการบูชาเคารพมนุษย์ด้วยกัน\r\nเพราะไม่มีสิ่งใดที่สมควรแก่การเคารพบูชานอกจากอัลลอฮฺ เท่านั้น</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">2. <span lang=\"TH\">แนวคิดว่าด้วยสาสน์แห่งนะบีมุฮัมมัด\r\n(ริสาละฮ์)\r\nเชื่อว่านะบีมุฮัมมัดคือต้นแบบสำหรับการดำเนินชีวิตที่สมบูรณ์ของมุสลิมและประสบผลสำเร็จ\r\nมุสลิมต้องศึกษาและปฏิบัติตามวิธีการดำเนินชีวิตของนะบีมุฮัมมัด\r\nอย่างครบถ้วนสมบูรณ์</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">3. <span lang=\"TH\">แนวคิดว่าด้วยการเป็นผู้แทนของอัลลอฮฺ\r\n(คิลาฟะฮ์) หมายถึงการใช้อำนาจในการเมืองการปกครอง\r\nมุสลิมต้องปฏิบัติในฐานะเป็นผู้แทนเท่านั้น มิได้มีกรรมสิทธิ์ที่สมบูรณ์\r\nจึงไม่มีสิทธิ์ปฏิบัติตามอำเภอใจ</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\nline-height:normal\"><b><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;\r\nletter-spacing:-.05pt\">4. <span lang=\"TH\">สถานภาพโลกอิสลามด้านเศรษฐกิจ</span><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">ระบบเศรษฐกิจ กับ\r\nอิสลาม ความจำเป็นพื้นฐานประการหนึ่งของมนุษย์\r\nคือมนุษย์ต้องอาศัยกิจกรรมทางเศรษฐกิจมาตอบสนองความต้องการของการดำรงชีวิต\r\nในฐานะที่อิสลามเป็นศาสนาที่สมบูรณ์ที่สอนมนุษย์ในทุกแง่มุมที่เป็นความต้องการของชีวิต\r\nดังนั้นอิสลามจึงมีคำสอนที่ว่าด้วยเศรษฐกิจ สรุปได้ดังนี้</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">วัตถุประสงค์และวิธีการของเศรษฐกิจอิสลาม</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">ระบบเศรษฐกิจอิสลามมีวัตถุประสงค์เพื่อดำรงไว้ซึ่งความยุติธรรมในสังคม\r\nหรือกล่าวอีกนัยหนึ่งคือ การประกันสิทธิ์\r\nการครอบครองทรัพย์สมบัติขั้นต่ำสุดที่มนุษย์ได้ ซึ่งสอดคล้องกับศักดิ์ศรีและเกียรติยศของมนุษย์พร้อมกับเจตนารมณ์อันสูงส่งของอัลลอฮ์\r\nที่ต้องการให้มนุษย์ใช้ศักยภาพที่มีอยู่เพื่อแสวงหาความโปรดปรานของพระองค์\r\nโดยปราศจากการบีบบังคับ\r\nเพื่อให้ได้มาซึ่งวัตถุประสงค์ดังกล่าวอิสลามจึงกำหนดวิธีการ </span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\">2<span lang=\"TH\"> รูปแบบคือ</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">1. <span lang=\"TH\">การกำหนดกฎเกณฑ์\r\nเช่น บทบัญญัติที่ว่าด้วยการครอบครองกรรมสิทธิ์ การกระจายรายได้ การจัดสรรทรัพยากร\r\nความสัมพันธ์ระหว่างมนุษย์ด้วยกัน\r\nระหว่างคนรวยกับคนจนความสัมพันธ์ระหว่างประชาชนกับรัฐที่เกี่ยวข้องกับกรรมสิทธิ์ในทรัพย์สิน\r\nซึ่งอิสลามได้กำหนดเป็นศาสนบัญญัติอย่างชัดเจน โดยที่มุสลิมต้องปฏิบัติอย่างเคร่งครัด</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">2. <span lang=\"TH\">การรณรงค์ส่งเสริม\r\nซึ่งถือเป็นการยกระดับให้มุสลิมใช้ชีวิตอย่างปกติสุข มีจริยธรรมอันสูงส่ง\r\nและพัฒนามนุษย์ให้เป็นผู้มีจิตใจโอบอ้อมอารีดังกรณีซะกาต อิสลามถือว่าซะกาต\r\nคือหลักประกันสังคมที่สำคัญในเศรษฐกิจ</span><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">&nbsp;ดังนั้นอิสลามจึงกำหนดศาสนบัญญัติว่าด้วยซะกาตอย่างชัดเจน\r\nการกำชับให้คนรวยจ่ายซะกาตแก่ผู้ด้อยโอกาสและถือว่าการไม่จ่ายซะกาตถือเป็นบาปอันยิ่งใหญ่สมควรได้รับโทษอันสาสม\r\nในขณะเดียวกันมีการส่งเสริมให้มุสลิมบริจาคทาน (เศาะดะเกาะฮ์)\r\nโดยถือว่าการบริจาคทานที่นอกเหนือจากการจ่ายซะกาตนั้น เป็นกุศลทานอันยิ่งใหญ่เช่นเดียวกัน</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\"><o:p></o:p></span></p>', NULL, NULL, '1', 36, NULL, 12, '2018-12-13 11:26:05', '1', '2018-12-13 11:25:32', '2018-12-13 11:26:05'),
(53, 'ปัญหาปาเลสไตน์', NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=DjgFHI8hrGs', NULL, '<p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">ปาเลสไตน์เป็นดินแดนศักดิ์สิทธิ์\r\n\"ปาเลสไตน์\"\r\nตั้งมาจากชื่อเมืองที่อยู่ทางภาคตะวันตกเฉียงใต้ของดินแดนที่เรียกว่า อัช-ชาม\r\n(เป็นดินแดนที่รวมเอาซีเรีย จอร์แดน เลบานอน และปาเลสไตน์)\r\nเนื้อที่ของปาเลสไตน์ตามที่ปรากฏในปัจจุบันมีทั้งสิ้น </span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\">27,009<span lang=\"TH\"> ตารางกิโลเมตร</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">ปาเลสไตน์เป็นดินแดนที่เชื่อมต่อระหว่างทวีปเอเซียกับทวีปอัฟริกาพรมแดนทางตอนเหนือของปาเลสไตน์ติดต่อกับเลบานอน\r\nทางตะวันออกเฉียงเหนือติดต่อกับซีเรีย\r\nทางด้านตะวันออกติดกับจอร์แดนและทางตอนใต้ติดต่อกับอิยิปต์</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">ปาเลสไตน์\r\n(ภาษาอาหรับ: /ฟิลัสฏีน/</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;\r\nletter-spacing:-.05pt\">; <span lang=\"TH\">ภาษาอังกฤษ: </span>Palestine)<span lang=\"TH\">เป็นชื่อเรียกดินแดนที่อยู่ระหว่างทะเลเมดิเตอร์เรเนียน\r\nและแม่น้ำจอร์แดนได้รับ การประกาศ เป็น รัฐปาเลสไตน์ในปี </span>1988<span lang=\"TH\">โดยสหประชาชาติ โดยมีดินแดนบางส่วนใน เวสต์แบงก์และฉนวนกาซา ซึ่งไม่ติดกัน\r\nชื่อ</span>\"<span lang=\"TH\">ปาเลสไตน์\" มาจากคำว่า \"</span>Philistine\"\r\n<span lang=\"TH\">ซึ่งหมายถึงชนเผ่าที่อาศัยอยู่บริเวณชายฝั่งทางใต้ของดินแดนนี้</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">อาณาเขต\r\nส่วนหนึ่งของดินแดนนี้ที่อยู่ทางตะวันตกของแม่น้ำจอร์แดน เคยถูกเรียกว่า</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\">\"<span lang=\"TH\">ดินแดนคะนาอัน\" (</span>Canaan) <span lang=\"TH\">ในช่วงที่อยู่ใต้การปกครองของอียิปต์\r\nในภายหลังได้แบ่งการปกครองออกเป็นสองส่วน ส่วนทางใต้กลายเป็นราชอาณาจักรยูดาห์\r\nส่วนทางเหนือคือราชอาณาจักรอิสราเอล</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">สถานะปัจจุบัน\r\nหลังสงครามอาหรับ-อิสราเอล ค.ศ. </span><span style=\"font-size:15.5pt;font-family:\r\n&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">1948<span lang=\"TH\">\r\nได้มีข้อตกลงสงบศึกใน ค.ศ.</span>1949<span lang=\"TH\"> กำหนดให้แบ่งดินแดนออกเป็น </span>4<span lang=\"TH\"> ส่วน ให้กับอิสราเอล และชาติอาหรับในบริเวณนั้นอีก </span>3<span lang=\"TH\">ชาติ คือ อียิปต์</span>, <span lang=\"TH\">จอร์แดน และซีเรีย</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">อิสราเอลได้เนื้อที่ไป\r\n</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;\r\nletter-spacing:-.05pt\">26%<span lang=\"TH\"> คือฝั่งตะวันตกของแม่น้ำจอร์แดน\r\nส่วนจอร์แดนได้ไป </span>21%<span lang=\"TH\"> กรุงเยรูซาเลมถูกแบ่งออกเป็น </span>2<span lang=\"TH\"> ส่วนให้กับทั้งอิสราเอลและจอร์แดน\r\nส่วนอียิปต์ได้บริเวณฉนวนกาซาเมื่อการแบ่งดินแดนกันเรียบร้อย\r\nก็เกิดการอพยพของชาวยิวและชาวอาหรับเพื่อเข้าไปอาศัยอยู่ในเขตแดนของตน\r\nหลังจากสงครามหกวัน ในปี ค.ศ. </span>1967<span lang=\"TH\">\r\nอิสราเอลได้ยึดดินแดนบางส่วนของอียิปต์และจอร์แดนได้</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><b><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">เผ่าพันธุ์ชาวปาเลสไตน์</span></b><b><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">กลุ่มชนที่มีอายุเก่าแก่ที่สุดซึ่งอาศัยอยู่ในปาเลสไตน์และได้จารึกร่องรอยของพวกเขาไว้ในแผ่นดินนี้คือ\r\nพวก \" คานาอาน\" ซึ่งพวกเขาเป็นกลุ่มชนที่มาจากคาบสมุทรอาหรับราว </span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\">4,500<span lang=\"TH\"> ปี ดั้งนั้นปาเลสไตน์จึงเป็นที่รู้จักในตอนต้นว่าเป็น\r\n\"ดินแดนแห่งคานาอาน\" ชาวปาเลสไตน์ในปัจจุบันคือทายาทของชาวคานาอาน</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">ถึงแม้ว่าปาเลสไตน์จะถูกปกครองโดยชนหลายกลุ่มครั้งแล้วครั้งเล่าก็ตามแต่ชนพื้นเมืองยังคงอาศัยอยู่ในดินแดนแห่งนี้อย่างไม่ขาดสาย\r\nพวกเขาจำนวนมากได้เข้ารับอิสลามและได้รับเอาภาษาอาหรับมาเป็นภาษาของพวกเขาพร้อมกับการมาถึงของอิสลาม\r\nดังนั้นเอกลักษณ์แห่งอิสลามของชาวปาเลสไตน์จึงได้ถูกสถาปนาขึ้นมาอย่างต่อเนื่องยาวนานติดต่อกันในช่วงแห่งประวัติศาสตร์ที่สืบทอดกันมาตั้งแต่การพิชิตของอิสลามในปีที่\r\n</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;\r\nletter-spacing:-.05pt\">636 <span lang=\"TH\">แห่งคริสต์ศักราช จวบจนปัจจุบัน</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><b><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">ปาเลสไตน์ในมุมมองอิสลาม</span></b><b><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">ปาเลสไตน์เป็นดินแดนที่มีความจำเริญและศักดิ์สิทธิ์\r\nเป็นสถานที่ซึ่งประกอบไปด้วยมัสยิดอัลอักซอกิบลัตแห่งแรกในการละหมาดของชาวมุสลิม เป็นมัสยิดที่ศักดิ์สิทธิ์ที่สุดเป็นอันดับสามของอิสลาม\r\nเป็นดินแดนของศาสดาทั้งหลาย\r\nศาสดาหลายท่านที่ถูกระบุอยู่ในอัลกุรอานอันสูงส่งได้เจริญเติบโตอยู่ทีนี่และศพของพวกเขาก็ถูกฝังอยู่ในดินแดนแห่งนี้\r\nปาเลสไตน์เป็นจุดศูนย์รวมของกลุ่มชนที่ได้รับชัยชนะ(ฏออิฟะฮฺ มันศูเราะฮฺ)\r\nที่ถูกสัญญาไว้ ซึ่งยืนหยัดในสัจธรรมจนกระทั่งถึงวันสิ้นโลก</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">เนื่องจากดินแดนแห่งนี้เป็นที่ตั้งของมัสยิดอัลอักซอที่ถูกสร้างมาก่อนการกำเนิดนบีมูซานอกจากนี้อัลกุรอานได้เรียกดินแดนแห่งนี้เป็นดินแดนแห่งสิริมลคล(บะเราะกะฮฺ)\r\nเป็นจุดหมายปลายทางของอิสเราะ (การเดินทางของนบีมูฮัมหมัด\r\nในเวลากลางคืนจากมัสยิดอัลหะรอม ณ นครมักกะฮฺถึงมัสยิดอัลอักซอที่ปาเลสไตน์)\r\nและเป็นจุดเริ่มต้นของมิอฺรอจ (การเดินทางของนบีมูหัมหมัด\r\nจากมัสยิดอัลอักซอสู่ฟากฟ้า)</span><span style=\"font-size:15.5pt;font-family:\r\n&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">ดินแดนปาเลสไตน์เป็นดินแดนแห่งคำวิวรณ์ของอัลลอฮฺ\r\nเนื่องจากบรรดาศาสนฑูตหลายท่าน เช่น ดาวูด สุลัยมาน อีซา\r\n(ขอความสันติสุขจงมีแด่ท่านทั้งมวล) ได้ถือกำเนิดและอาศัยอยู่ ณดินแดนแห่งนี้\r\nในขณะที่อิบรอฮีม ลูฎ อิสหาก ยะกู๊บ ยูซุฟและมูซา\r\n(ขอความสันติสุขจงมีแด่ท่านทั้งมวล) เคยอพยพเข้ามาสู่ดินแดนนี้เช่นเดียวกัน</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><b><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">ยิวในอัลกุรอาน</span></b><b><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">กล่าวได้ว่าอัลกุรอานที่มีปรากฏความเท็จใด\r\nๆ ทั้งเบื้องหน้ารและเบื้องหลัง\r\nเป็นตำราเล่มเดียวที่ได้เปิดโปงพฤติกรรมโฉดของยิวได้อย่างละเอียดและถูกต้องที่สุด\r\nนับเป็นเหตุผลลึก ๆประการหนึ่งในอิสลามี่บัญญัติให้มุสลิมผู้บรรลุศาสนภาวะทุกคน\r\nให้ทวนอ่านซูเราะฮฺอัลฟาติหะฮฺซึ่งเป็นการปฐมซูเราะฮฺในอัลกุรอานอย่างน้อยวันละ </span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\">17<span lang=\"TH\"> ครั้งตามจำนวนร็อกกะอัตละหมาดภาคบังคับ\r\nโดยในตอนท้ายของซูเราะฮฺนี้ อัลกุรอานได้พูดถึงกลุ่มชนที่อัลลอฮฺ\r\nทรงกริ้วที่มุสลิมทุกคนจะต้องระมัดระวังเป็นพิเศษและอย่านำเอาเป็นเยี่ยงอย่าง\r\nซึ่งเป็นที่ทราบกันดีว่า กลุ่มชนดังกล่าวก็คือยิวนั่นเอง\r\nนักอรรถานิบายอัลกุรอานได้อธิบายเพิ่มเติมว่า สาเหตุที่อัลลอฮฺ\r\nทางโกรธกริ้วพวกเขาเนื่องจากพวกเขาเป็นกลุ่มปัญญาชน มีความรอบรู้\r\nเปี่ยมด้วยวิชาการ แต่พวกเขาไม่เคยปฏิบัติตามความรู้ที่ได้มาเลย\r\nเป็นซาตานในคราบบัณฑิต จิตทรามในคราบนักบุญตั้งแต่ยุคแรกจวบจนปัจจุบันกล่าวได้ว่าทุกซูเราะฮฺในอัลกุรอานตั้งแต่ซูเราะฮฺลำดับแรกจนกระทั่งซูเราะฮฺลำดับสุดท้าย\r\nจะมีการกล่าวถึงพฤติกรรมของยิวไม่ทางตรงหรือทางอ้อม และซูเราะฮฺลำดับที่ </span>17<span lang=\"TH\"> ก็มีอีชื่อหนึ่งว่าซูเราะฮฺบะนีอิสรออีล</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><b><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">การอ้างสิทธิของชาวยิว</span></b><b><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:\r\n-.05pt\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">แม้ชาวยิวจะเข้าปกครองดินแดนส่วนหนึ่งของปาเลสไตน์เป็นเวลานานถึง\r\n</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;\r\nletter-spacing:-.05pt\">4<span lang=\"TH\"> ศตวรรษ</span>(1000-586<span lang=\"TH\">\r\nก่อนคริสตกาล)โดยประมาณแต่พวกเขาก็ไม่ได้ ปกครองดินแดนทั้งหมดของปาเลสไตน์\r\nต่อมาอำนาจการปกครองของชาวยิวค่อย ๆ\r\nสิ้นสุดลงอันเนื่องจากการเข้ามามีอำนาจของพวกแอสซีเรียน เปอร์เซีย กรีกและโรมัน\r\nในขณะที่ชาวปาเลสไตน์ยังคงตั้งรกรากอยู่ในแผ่นดินของตนเอง </span>90<span lang=\"TH\">\r\nปี ที่ว่างเว้นจากสงครามครูเสดอิสลามได้ปกครองดินแดนแห่งนี้เป็นเวลานานถึง</span>1,200<span lang=\"TH\"> ปี (ค.ศ.</span>636-1917) <span lang=\"TH\">ถือได้ว่าเป็นช่วงของการปกครองที่นานที่สุดในประวัติศาสตร์แห่งปาเลสไตน์\r\nในภาคปฏิบัติความสัมพันธ์ระหว่างยิวกับปาเลสไตน์ได้สิ้นสุดลงราว</span>1,800<span lang=\"TH\">ปีคือตั้งแต่ปีที่</span>135<span lang=\"TH\">แห่งคริสต์ศักราชจนถึงศตวรรษที่</span>20<span lang=\"TH\"> ในช่วงเวลาดังกล่าวพวกยิวไม่มีอำนาจทั้งทางด้านการเป็นผู้นำ</span>,<span lang=\"TH\">ด้านการเมืองหรือแม้แต่อารยธรรมให้เห็นในปาเลสไตน์\r\nแม้แต่ในคำสอนศาสนาก็ห้ามมิให้คนยิวกลับไปยังแผ่นดินปาเลสไตน์ไม่ว่าในกรณีใดๆทั้งสิ้น</span><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-cluster;\r\ntext-indent:36.0pt;line-height:normal\"><span lang=\"TH\" style=\"font-size:15.5pt;\r\nfont-family:&quot;TH SarabunPSK&quot;,sans-serif;letter-spacing:-.05pt\">ลูกหลานของอิสราเอล\r\n(บนีอิสรออีล)\r\nส่วนใหญ่ปฏิเสธที่จะเข้าร่วมกับศาสดามูซา(โมเซส)ในการอพยพไปสู่ดินแดนอันศักดิ์สิทธิ์\r\nในทำนองเดียวกันชาวยิวส่วนใหญ่ปฏิเสธที่จะกลับจากบาบิโลนไปยังปาเลสไตน์หลังข้อเสนอของจักรพรรดิ์ไซรัสแห่งเปอร์เซียเสนอที่จะรักษาคนเหล่านี้เอาไว้\r\nตลอดช่วงประวัติศาสตร์ทั้งหมดจวบจนปัจจุบันจำนวนของประชากรยิวในปาเลสไตน์ไม่เคยมีมากไปกว่าร้อยละ\r\n</span><span style=\"font-size:15.5pt;font-family:&quot;TH SarabunPSK&quot;,sans-serif;\r\nletter-spacing:-.05pt\">40 <span lang=\"TH\">ของจำนวนประชากรยิวในช่วงที่ดีที่สุดของพวกเขา</span><o:p></o:p></span></p>', NULL, NULL, '1', 37, NULL, 12, '2018-12-13 11:26:54', '1', '2018-12-13 11:26:17', '2018-12-13 11:26:54');

-- --------------------------------------------------------

--
-- Table structure for table `logemail`
--

CREATE TABLE `logemail` (
  `log_id` int(11) NOT NULL,
  `log_course` int(11) DEFAULT NULL,
  `log_expert` int(11) DEFAULT NULL,
  `log_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='log email';

--
-- Dumping data for table `logemail`
--

INSERT INTO `logemail` (`log_id`, `log_course`, `log_expert`, `log_create`) VALUES
(1, 14, 1, '2016-11-14 23:48:20'),
(2, 14, 1, '2016-11-14 23:49:00'),
(3, 14, 1, '2016-11-14 23:51:06'),
(4, 14, 1, '2016-11-14 23:52:14'),
(5, 1, 1, '2016-11-20 20:35:07'),
(6, NULL, NULL, '2016-11-20 20:35:26'),
(7, 3, 1, '2016-11-20 20:35:40'),
(8, 1, 1, '2016-11-20 20:37:05'),
(9, 15, 1, '2017-01-29 21:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `program_id` int(11) NOT NULL,
  `program_name` varchar(100) DEFAULT NULL,
  `program_nameen` varchar(100) DEFAULT NULL,
  `program_faculty` int(11) DEFAULT NULL,
  `program_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='สาขาวิชา';

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`program_id`, `program_name`, `program_nameen`, `program_faculty`, `program_create`) VALUES
(37, 'การจัดการเทคโนโลยีสารสนเทศ ', 'Information Technology  Management', 70, '2016-09-19 20:18:52'),
(38, 'เทคโนโลยีคอมพิวเตอร์และการสื่อสาร  ', 'Computer and Communication Technology', 70, '2016-09-19 20:18:49'),
(39, 'เทคโนโลยีมัลติมีเดียและแอนิเมชัน  ', 'Multimedia and Animation Technology', 70, '2016-09-19 20:18:46'),
(40, 'เทคโนโลยีสารสนเทศ  ', 'Information Technology', 70, '2016-09-19 20:18:44'),
(41, 'เทคโนโลยีสารสนเทศภูมิศาสตร์ ', 'Geographical Information Technology', 70, '2016-09-19 20:18:41');

-- --------------------------------------------------------

--
-- Table structure for table `question_course`
--

CREATE TABLE `question_course` (
  `question_id` int(11) NOT NULL,
  `question_name` text,
  `question_student` int(11) DEFAULT NULL,
  `question_course` int(11) DEFAULT NULL,
  `question_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='คำถามสำหรับหลักสูตร';

-- --------------------------------------------------------

--
-- Table structure for table `question_tb`
--

CREATE TABLE `question_tb` (
  `question_id` int(11) NOT NULL,
  `question_type` int(11) DEFAULT NULL,
  `question_instructor` int(11) DEFAULT NULL,
  `question_course` int(11) DEFAULT NULL,
  `question_name` text,
  `question_status` varchar(255) DEFAULT '1',
  `question_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='หัวข้อคำถาม';

--
-- Dumping data for table `question_tb`
--

INSERT INTO `question_tb` (`question_id`, `question_type`, `question_instructor`, `question_course`, `question_name`, `question_status`, `question_create`) VALUES
(2, 1, 1, 1, 'dfdfdfd', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reg_status` varchar(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ตารางสมัครเรียนออนไลน์';

--
-- Dumping data for table `registers`
--

INSERT INTO `registers` (`id`, `course_id`, `user_id`, `reg_date`, `reg_status`, `created_at`, `updated_at`) VALUES
(3, 1, 5, '2018-11-18 05:24:07', '1', '0000-00-00 00:00:00', '2018-11-18 02:18:30'),
(7, 3, 6, '2018-11-18 02:44:23', '1', '0000-00-00 00:00:00', '2018-11-18 02:18:30'),
(8, 15, 7, '2018-11-18 05:24:11', '1', '0000-00-00 00:00:00', '2018-11-18 02:18:30'),
(9, 14, 7, '2018-11-18 05:24:15', '1', '2018-11-18 04:12:26', '2018-11-18 04:12:26'),
(10, 23, 13, '2018-12-13 11:15:15', '1', '2018-12-13 11:15:15', '2018-12-13 11:15:15'),
(11, 24, 13, '2018-12-13 11:27:21', '1', '2018-12-13 11:27:21', '2018-12-13 11:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `result_tb`
--

CREATE TABLE `result_tb` (
  `result_id` int(11) NOT NULL,
  `result_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `result_tb`
--

INSERT INTO `result_tb` (`result_id`, `result_name`) VALUES
(1, 'ผ่านการพิจารณา'),
(2, 'แก้ไขหลักสูตร'),
(3, 'ไม่ผ่านการพิจารณา');

-- --------------------------------------------------------

--
-- Table structure for table `review_course`
--

CREATE TABLE `review_course` (
  `review_id` int(11) NOT NULL,
  `review_course` int(11) DEFAULT NULL,
  `review_name` varchar(200) DEFAULT NULL,
  `review_detail` text,
  `review_score` float DEFAULT NULL,
  `review_student` int(11) DEFAULT NULL,
  `review_instructor` int(11) DEFAULT NULL,
  `review_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `review_status` varchar(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='รีวิวหลักสูตรอบรม';

--
-- Dumping data for table `review_course`
--

INSERT INTO `review_course` (`review_id`, `review_course`, `review_name`, `review_detail`, `review_score`, `review_student`, `review_instructor`, `review_create`, `review_status`) VALUES
(1, 1, 'ดีมากๆ', 'สอนดีมากๆ', 5, 1, NULL, '2016-09-07 23:45:55', '1'),
(2, 1, 'test', 'test', 4, 1, NULL, '2016-09-07 23:55:12', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `section_name` varchar(150) DEFAULT NULL,
  `section_title` varchar(250) DEFAULT NULL,
  `section_number` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `section_date` date DEFAULT NULL,
  `section_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ตารงเก็บบทเรียน';

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section_name`, `section_title`, `section_number`, `course_id`, `user_id`, `section_date`, `section_create`, `created_at`, `updated_at`) VALUES
(29, 'บทที่ 2', '-', 1, 22, 10, '2018-11-18', '2018-11-18 15:32:44', '2018-11-18 15:32:44', '2018-11-18 15:32:44'),
(28, 'บทที 1', 'd', 1, 22, 10, '2018-11-18', '2018-11-18 15:32:26', '2018-11-18 15:32:26', '2018-11-18 15:32:26'),
(26, 'tet', 'dd', 1, 1, 7, '2018-11-18', '2018-11-18 09:01:17', '2018-11-18 09:01:17', '2018-11-18 09:01:17'),
(30, 'บทเรียนที่ 1', NULL, 1, 23, 12, '2018-12-01', '2018-12-13 10:53:01', '2018-12-13 10:50:26', '2018-12-13 10:53:01'),
(31, 'บทเรียนที่ 2', NULL, 1, 23, 12, '2018-12-13', '2018-12-13 10:53:16', '2018-12-13 10:53:16', '2018-12-13 10:53:16'),
(32, 'บทเรียนที่ 3', NULL, 1, 23, 12, '2018-12-13', '2018-12-13 10:53:28', '2018-12-13 10:53:28', '2018-12-13 10:53:28'),
(33, 'บทเรียนที่ 4', NULL, 1, 23, 12, '2018-12-13', '2018-12-13 10:53:39', '2018-12-13 10:53:39', '2018-12-13 10:53:39'),
(34, 'บทเรียนที่ 1', NULL, 1, 24, 12, '2018-12-02', '2018-12-13 11:23:03', '2018-12-13 11:18:49', '2018-12-13 11:23:03'),
(35, 'บทเรียนที่ 2', NULL, 1, 24, 12, '2018-12-13', '2018-12-13 11:23:15', '2018-12-13 11:23:15', '2018-12-13 11:23:15'),
(36, 'บทเรียนที่ 3', NULL, 1, 24, 12, '2018-12-13', '2018-12-13 11:23:25', '2018-12-13 11:23:25', '2018-12-13 11:23:25'),
(37, 'บทเรียนที่ 4', NULL, 1, 24, 12, '2018-12-13', '2018-12-13 11:23:36', '2018-12-13 11:23:36', '2018-12-13 11:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `skill_id` int(11) NOT NULL,
  `skill_name` varchar(100) DEFAULT NULL,
  `skill_instructor` int(11) DEFAULT NULL,
  `skill_score` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ตารางความถนัดของอาจารย์';

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `student_email` varchar(100) DEFAULT NULL,
  `student_password` varchar(100) DEFAULT NULL,
  `student_fullname` varchar(100) DEFAULT NULL,
  `student_nickname` varchar(50) DEFAULT NULL,
  `student_sex` varchar(30) DEFAULT NULL,
  `student_date` varchar(30) DEFAULT NULL,
  `student_edu` varchar(30) DEFAULT NULL,
  `student_address` text,
  `student_reason` text,
  `student_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `student_status` varchar(1) DEFAULT '1',
  `student_picture` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ข้อมูลนักเรียน';

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `student_email`, `student_password`, `student_fullname`, `student_nickname`, `student_sex`, `student_date`, `student_edu`, `student_address`, `student_reason`, `student_create`, `student_status`, `student_picture`, `created_at`, `updated_at`) VALUES
(2, 5, 'user test', 'd41d8cd98f00b204e9800998ecf8427e', 'user test', NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-18 05:24:52', '1', NULL, '0000-00-00 00:00:00', '2018-11-18 05:24:52'),
(8, 13, 'zaa.rita1538@gmail.com', '$2y$10$8egwBFvqXnLsJfDc4a2xX.bjvobPDQw0kSJFB9Iows83vZNLZig5S', 'Sarita', 'Sarita', 'female', NULL, 'bachelor degree', 'pattani', NULL, '2018-12-13 11:14:56', '0', NULL, '2018-12-13 11:14:56', '2018-12-13 11:14:56'),
(9, 14, 'sarita@gmail.com', '$2y$10$h4aBJbyj9VLu..8.JJ/iPOqQv/crrx2vyV2kI/pO1dkqL45JTBpRi', 'khunta', 'khunta', 'female', NULL, 'bachelor degree', 'yala', 'love', '2018-12-13 17:13:39', '0', NULL, '2018-12-13 17:13:39', '2018-12-13 17:13:39'),
(10, 15, 'ta@gmail.com', '$2y$10$ct65XnbLbXPwGjQNAd0sN.7PV5K1ytAu3TMULUJeSXvnzKW5TVMT.', 'ta', 'ta', 'female', NULL, 'bachelor degree', 'ta', 'ta', '2018-12-13 17:17:48', '0', NULL, '2018-12-13 17:17:48', '2018-12-13 17:17:48'),
(7, 11, 'myadmin@gmail.com', '$2y$10$Tzfh4383T8vDywnj7RwXfuXWn8xciFsumsj8KB8qpKlH2N4kmbfry', 'admin', 'admin', 'ชาย', NULL, '-', '-', '-', '2018-12-04 13:04:14', '0', NULL, '2018-12-04 13:04:14', '2018-12-04 13:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `studying_tb`
--

CREATE TABLE `studying_tb` (
  `id` int(11) NOT NULL,
  `lecture_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `studying_time` time DEFAULT NULL,
  `studying_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `course_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='การเข้าชั้นเรียน';

--
-- Dumping data for table `studying_tb`
--

INSERT INTO `studying_tb` (`id`, `lecture_id`, `user_id`, `studying_time`, `studying_create`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 16, 1, NULL, '2016-11-03 00:08:26', 1, '0000-00-00 00:00:00', '2018-11-18 01:58:52'),
(2, 17, 1, NULL, '2016-11-03 00:08:29', 1, '0000-00-00 00:00:00', '2018-11-18 01:58:52'),
(3, 18, 1, NULL, '2016-11-03 00:08:29', 1, '0000-00-00 00:00:00', '2018-11-18 01:58:52'),
(4, 19, 1, NULL, '2016-11-03 00:08:31', 1, '0000-00-00 00:00:00', '2018-11-18 01:58:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(4, 1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$R/AMEvW8xni26qqaqnI.g.LvmvzA9/.F/6WJm5sHVtwnx8lrlJZlS', NULL, 1, '2018-10-30 07:51:04', '2018-12-04 13:31:45'),
(7, 2, 'myte', 'myte@gmail.com', NULL, '$2y$10$j1d5.kpJehR2nJTdocwkB.PUgGJzFzSflvzCed1p5wQ/zGgmGaSMC', '0SABhUonoQVYV5KsgY3LVHYdxvdubVXe8Qq2qiLsgGjZS05IYDIFYEPyRDjh', 1, '2018-10-30 10:04:57', '2018-12-04 13:32:00'),
(8, 2, 'อารยา', 'arya@gmail.com', NULL, '$2y$10$zO1WaHyvFjSj2kF5BAMhZOdWxv05CXujyf3aYgEkYBLg844jLri5S', 'SuYniQ8KW0Q8U5zxvVMGfTe80u2z1AbVfLdW3HKk2e6WvsX0xX4PR6Efar3u', 0, '2018-11-18 07:18:51', '2018-11-18 07:18:51'),
(9, 2, '๊User Test', 'usertest@gmail.com', NULL, '$2y$10$bIXRr4C2M5rktPyEJjAiBeXLvsXBn.EvPe2tp.XiPmXrMvQpyRB/C', '7Rlc2YTFcwTonRaN7zd7A3Fx1tiezBX4v1gBvBfD8pR2CxHIOc1WErke7obi', 0, '2018-11-18 09:08:31', '2018-11-18 09:08:31'),
(10, 2, 'teach', 'teach@gmail.com', NULL, '$2y$10$qABPsmO5gMZDfZtC7gjTtulkR0N1YpxwD9OqI3dOGNz7Vnw6zN9r2', '7tHAEcb97rVjvMdBclqWx1eNnThQXvME2hpQFMrx7DGLjiifA6Gb5gK0MIUI', 0, '2018-11-18 15:22:24', '2018-11-18 15:22:24'),
(11, 1, 'admin', 'myadmin@gmail.com', NULL, '$2y$10$krmf/QsW/pyT6FmwkCs1Qe4sE0TVvYYL8YMvZYw94h0ROwBeC28Cy', 'rGItWX2q85OKz61YPAHltjetvnwhTSdQ3YqVif1vavdOZNdfzQMx7YxUIogf', 1, '2018-12-04 13:04:14', '2018-12-04 13:04:14'),
(12, 2, 'อับดุลย์ลาเต๊ะ สาและ', 'abdul_latif@gmail.com', NULL, '$2y$10$xswqfyGgOPwtoLkR2/lWQeKIeHxVr1ptiPs2j6CA/9bkXrzpVke3m', 'S6ixPdJq4YWxilHWhPmsMZ43CcRi63iLsekblog3yXrejERAWcKVD4DGy4rj', 1, '2018-12-13 10:47:44', '2018-12-13 10:48:52'),
(13, 3, 'Sarita', 'zaa.rita1538@gmail.com', NULL, '$2y$10$1OIkbh716KHFeKoA.snXu.6lchQp4nA24BaLBo7642osagNV07c8.', 'SkG0RcB8dAuUlNOpb3GtrO3ySOtQQOGSBhtn7rGwg31G3BVSYumgzKSbxnuy', 0, '2018-12-13 11:14:56', '2018-12-13 11:14:56'),
(14, 3, 'khunta', 'sarita@gmail.com', NULL, '$2y$10$YNe9thhUf1nuzSge9Do0oemm2P36Kl10dpF9ncviE00zhx4ADg/2u', NULL, 0, '2018-12-13 17:13:38', '2018-12-13 17:13:38'),
(15, 3, 'ta', 'ta@gmail.com', NULL, '$2y$10$NH4LW0pmbeoMmXifPprgSuhuzHdv6pM3gRXmToq0NjfmqXIQHeom.', NULL, 0, '2018-12-13 17:17:48', '2018-12-13 17:17:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tb`
--
ALTER TABLE `admin_tb`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `answer_course`
--
ALTER TABLE `answer_course`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `choice_tb`
--
ALTER TABLE `choice_tb`
  ADD PRIMARY KEY (`choice_id`),
  ADD KEY `choice_question` (`choice_question`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examination_tb`
--
ALTER TABLE `examination_tb`
  ADD PRIMARY KEY (`examination_id`);

--
-- Indexes for table `expert_tb`
--
ALTER TABLE `expert_tb`
  ADD PRIMARY KEY (`expert_id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logemail`
--
ALTER TABLE `logemail`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`program_id`);

--
-- Indexes for table `question_course`
--
ALTER TABLE `question_course`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `question_tb`
--
ALTER TABLE `question_tb`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_tb`
--
ALTER TABLE `result_tb`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `review_course`
--
ALTER TABLE `review_course`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`skill_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studying_tb`
--
ALTER TABLE `studying_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tb`
--
ALTER TABLE `admin_tb`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answer_course`
--
ALTER TABLE `answer_course`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `choice_tb`
--
ALTER TABLE `choice_tb`
  MODIFY `choice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `examination_tb`
--
ALTER TABLE `examination_tb`
  MODIFY `examination_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expert_tb`
--
ALTER TABLE `expert_tb`
  MODIFY `expert_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `logemail`
--
ALTER TABLE `logemail`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `question_course`
--
ALTER TABLE `question_course`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_tb`
--
ALTER TABLE `question_tb`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `result_tb`
--
ALTER TABLE `result_tb`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `review_course`
--
ALTER TABLE `review_course`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `studying_tb`
--
ALTER TABLE `studying_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `choice_tb`
--
ALTER TABLE `choice_tb`
  ADD CONSTRAINT `choice_tb_ibfk_1` FOREIGN KEY (`choice_question`) REFERENCES `question_tb` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
