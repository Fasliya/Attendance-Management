-- MySQL dump 10.16  Distrib 10.2.25-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: u717897046_geniu
-- ------------------------------------------------------
-- Server version	10.2.25-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addition`
--

DROP TABLE IF EXISTS `addition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addition` (
  `addi_id` int(14) NOT NULL AUTO_INCREMENT,
  `salary_id` int(14) NOT NULL,
  `basic` varchar(128) DEFAULT NULL,
  `medical` varchar(64) DEFAULT NULL,
  `house_rent` varchar(64) DEFAULT NULL,
  `conveyance` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`addi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addition`
--

/*!40000 ALTER TABLE `addition` DISABLE KEYS */;
/*!40000 ALTER TABLE `addition` ENABLE KEYS */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(64) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `country` varchar(128) DEFAULT NULL,
  `address` varchar(512) DEFAULT NULL,
  `type` enum('Present','Permanent') DEFAULT 'Present',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;

--
-- Table structure for table `assign_leave`
--

DROP TABLE IF EXISTS `assign_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assign_leave` (
  `id` int(14) NOT NULL,
  `app_id` varchar(11) NOT NULL,
  `emp_id` varchar(64) DEFAULT NULL,
  `type_id` int(14) NOT NULL,
  `day` varchar(256) DEFAULT NULL,
  `hour` varchar(255) NOT NULL,
  `total_day` varchar(64) DEFAULT NULL,
  `dateyear` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assign_leave`
--

/*!40000 ALTER TABLE `assign_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `assign_leave` ENABLE KEYS */;

--
-- Table structure for table `attend`
--

DROP TABLE IF EXISTS `attend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attend` (
  `attendID` int(10) NOT NULL AUTO_INCREMENT,
  `mID` int(10) NOT NULL,
  `cID` int(10) NOT NULL,
  PRIMARY KEY (`attendID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attend`
--

/*!40000 ALTER TABLE `attend` DISABLE KEYS */;
INSERT INTO `attend` VALUES (8,67,1),(3,58,1);
/*!40000 ALTER TABLE `attend` ENABLE KEYS */;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance` (
  `aID` int(20) NOT NULL AUTO_INCREMENT,
  `mID` int(20) NOT NULL,
  `cID` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`aID`)
) ENGINE=MyISAM AUTO_INCREMENT=505 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (500,58,1,'2019-09-30','Absent'),(499,67,1,'2019-09-30','Absent'),(498,0,0,'0000-00-00','$status'),(495,67,1,'2019-09-18','Absent'),(502,58,1,'2019-09-11','Present'),(494,58,1,'2019-09-18','Absent'),(501,67,1,'2019-09-11','Present'),(473,67,1,'2019-09-25','Present'),(472,58,1,'2019-09-25','Absent');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;

--
-- Table structure for table `attendance_deleted`
--

DROP TABLE IF EXISTS `attendance_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance_deleted` (
  `aID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`aID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_deleted`
--

/*!40000 ALTER TABLE `attendance_deleted` DISABLE KEYS */;
INSERT INTO `attendance_deleted` VALUES ('484','58','1','2019-09-29','Absent'),('485','67','1','2019-09-29','Present'),('490','58','1','2019-09-01','Present'),('491','67','1','2019-09-01','Present'),('492','58','1','2019-09-02','Absent'),('493','67','1','2019-09-02','Present');
/*!40000 ALTER TABLE `attendance_deleted` ENABLE KEYS */;

--
-- Table structure for table `bank_info`
--

DROP TABLE IF EXISTS `bank_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_info` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `em_id` varchar(64) DEFAULT NULL,
  `holder_name` varchar(256) DEFAULT NULL,
  `bank_name` varchar(256) DEFAULT NULL,
  `branch_name` varchar(256) DEFAULT NULL,
  `account_number` varchar(256) DEFAULT NULL,
  `account_type` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_info`
--

/*!40000 ALTER TABLE `bank_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_info` ENABLE KEYS */;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `cID` int(10) NOT NULL AUTO_INCREMENT,
  `course` varchar(100) NOT NULL,
  `hall` varchar(20) NOT NULL DEFAULT 'Hall0',
  `subject` varchar(20) NOT NULL,
  PRIMARY KEY (`cID`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'CIMA','G3','CIMA-Weekday Batch-1'),(47,'IBSL','G3','IBSL-Batch 1-weekday'),(45,'CMA','G2','CMA-Batch 1-weekdays'),(46,'CMA','G6','CMA-Batch 2- weekend'),(48,'IBSL','G2','Batch 2- weekend'),(49,'AAT ','G5','AAT-Batch 1-weekdays'),(50,'AAT ','G5','AAT-Batch 2- weekend'),(51,'General Spoken English','G3','Batch 1-weekdays'),(52,'General Spoken English','G4','Batch 2- weekend'),(53,'English for Professionals','G3','Batch 1-weekdays');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL AUTO_INCREMENT,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (41,41,'A','a@gmail.com','Great!		','approved','2019-09-11'),(60,62,'Genius','admin@admin.com','<p>Register soon to grab offers!</p>','approved','2019-09-30'),(61,65,'Genius','admin@admin.com','<p>Congratulations E.K.G.Perera</p>','approved','2019-09-30'),(62,41,'Test','test@gmail.com','<p>Wonderful!</p>','approved','2019-09-30'),(63,42,'Aruni Premarathne','huh@huj.com','<p>Lucky to be with colleagues like you!</p>','approved','2019-09-30'),(64,65,'Aruni Premarathne','huh@huj.com','<p>Congratulations son!</p>','approved','2019-09-30');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `course_id` int(100) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `course_hall` varchar(100) NOT NULL,
  `course_details` varchar(255) NOT NULL DEFAULT 'No Details',
  `course_image` varchar(100) NOT NULL DEFAULT 'course.jpg',
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'CIMA','C1000','G1','CBA Certificate level <br> 10% Discount for 1st Seven Registrations <br> Part Time : Saturdays <br> Full Time: Tuesdays, Wednesdays & Thursdays','course.jpg'),(42,'CMA','C9211','G2','Foundation Stage <br> weekend classes(Saturday & Sunday)   <br>Duration 6 months  Medium English         ','course.jpg'),(57,'IBSL','C2496','G4','CBF Stage<br />\r\nWeekend class Duration 6 months<br />\r\nMedium Sinhala &  English','course.jpg'),(59,'AAT ','C7182','G4','Foundation Stage & Intermediate Stage<br />\r\nWeekdays & Weekend classes<br />\r\nDuration 4 months<br />\r\nMedium Sinhala & English','course.jpg'),(62,'General Spoken English','C1432','G4','IEMS English Courses(SL)<br />\r\nOctober exams-Batch 1<br />\r\nDecember exams-Batch 2','course.jpg'),(63,'English for Professionals','C1172','G8','Business English<br />\r\nIELTS<br />\r\nOctomber exams-Batch 1<br />\r\nDecember exams-Batch 2','course.jpg'),(65,'Cambridge English','C3321','G4','KET & PET <br />\r\nExams on Octomber','course.jpg'),(66,'Chartered Accounts','C0517','G8','Foundation Stage<br />\r\nWeekdays & Weekend classes','course.jpg'),(67,'IBSL','C4651','G5','CBF Stage<br />\r\nBanking exams<br />\r\nDuration 6th months','course.jpg'),(68,'CIMA','C4521','G3','CBA certificate level<br />\r\nAvailable part time full time<br />\r\nDuration 4 months','course.jpg');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;

--
-- Table structure for table `deduction`
--

DROP TABLE IF EXISTS `deduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deduction` (
  `de_id` int(14) NOT NULL AUTO_INCREMENT,
  `salary_id` int(14) NOT NULL,
  `provident_fund` varchar(64) DEFAULT NULL,
  `bima` varchar(64) DEFAULT NULL,
  `tax` varchar(64) DEFAULT NULL,
  `others` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`de_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deduction`
--

/*!40000 ALTER TABLE `deduction` DISABLE KEYS */;
/*!40000 ALTER TABLE `deduction` ENABLE KEYS */;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dep_name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (2,'Administration'),(3,'Finance, HR, & Admininstration'),(5,'Information Technology'),(6,'Support'),(9,'Lecturer Panel');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;

--
-- Table structure for table `designation`
--

DROP TABLE IF EXISTS `designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `designation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `des_name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designation`
--

/*!40000 ALTER TABLE `designation` DISABLE KEYS */;
INSERT INTO `designation` VALUES (3,'Chief Executive Officer (CEO)'),(6,'Finance & Admin Officer'),(12,'Office Assistant'),(13,'IT Analyst'),(14,'Lecturer');
/*!40000 ALTER TABLE `designation` ENABLE KEYS */;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(128) DEFAULT NULL,
  `edu_type` varchar(256) DEFAULT NULL,
  `institute` varchar(256) DEFAULT NULL,
  `result` varchar(64) DEFAULT NULL,
  `year` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

/*!40000 ALTER TABLE `education` DISABLE KEYS */;
/*!40000 ALTER TABLE `education` ENABLE KEYS */;

--
-- Table structure for table `emp_experience`
--

DROP TABLE IF EXISTS `emp_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_experience` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(256) DEFAULT NULL,
  `exp_company` varchar(128) DEFAULT NULL,
  `exp_com_position` varchar(128) DEFAULT NULL,
  `exp_com_address` varchar(128) DEFAULT NULL,
  `exp_workduration` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_experience`
--

/*!40000 ALTER TABLE `emp_experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_experience` ENABLE KEYS */;

--
-- Table structure for table `emp_leave`
--

DROP TABLE IF EXISTS `emp_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_leave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `em_id` varchar(64) DEFAULT NULL,
  `typeid` int(14) NOT NULL,
  `leave_type` varchar(64) DEFAULT NULL,
  `start_date` varchar(64) DEFAULT NULL,
  `end_date` varchar(64) DEFAULT NULL,
  `leave_duration` varchar(128) DEFAULT NULL,
  `apply_date` varchar(64) DEFAULT NULL,
  `reason` varchar(1024) DEFAULT NULL,
  `leave_status` enum('Approve','Not Approve','Rejected') NOT NULL DEFAULT 'Not Approve',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_leave`
--

/*!40000 ALTER TABLE `emp_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_leave` ENABLE KEYS */;

--
-- Table structure for table `emp_salary`
--

DROP TABLE IF EXISTS `emp_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_salary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(64) DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  `total` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_salary`
--

/*!40000 ALTER TABLE `emp_salary` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_salary` ENABLE KEYS */;

--
-- Table structure for table `emp_training`
--

DROP TABLE IF EXISTS `emp_training`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_training` (
  `id` int(11) NOT NULL,
  `trainig_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_training`
--

/*!40000 ALTER TABLE `emp_training` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_training` ENABLE KEYS */;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `em_id` varchar(64) DEFAULT NULL,
  `em_code` varchar(64) DEFAULT NULL,
  `des_id` int(11) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  `em_email` varchar(64) DEFAULT NULL,
  `em_password` varchar(512) NOT NULL,
  `em_role` enum('ADMIN','EMPLOYEE','SUPER ADMIN') NOT NULL DEFAULT 'EMPLOYEE',
  `em_address` varchar(512) DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'ACTIVE',
  `em_gender` enum('Male','Female') NOT NULL DEFAULT 'Male',
  `em_phone` varchar(64) DEFAULT NULL,
  `em_birthday` varchar(128) DEFAULT NULL,
  `em_blood_group` enum('O+','O-','A+','A-','B+','B-','AB+','OB+') DEFAULT NULL,
  `em_joining_date` varchar(128) DEFAULT NULL,
  `em_contact_end` varchar(128) DEFAULT NULL,
  `em_image` varchar(128) DEFAULT NULL,
  `em_nid` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (10,'Soy1332','99',3,0,'Genius','Admin','nawjeshbd@gmail.com','996a3778768a2c3ea7c5b586fdfc92051dfdd39c','SUPER ADMIN',NULL,'ACTIVE','Female','01723177901','2017-12-26','B+','2018-01-06','2018-01-06','Soy1332.jpg','132154566556'),(11,'The1912','100',6,5,'Ulidu','Theerake','ulidutheerake@gmail.com','f12b7950b49146b7eea0e1b03a3ad28a05e08664','SUPER ADMIN',NULL,'INACTIVE','Male','656541256879','2019-09-10','A+','2019-09-16','2019-09-01','The1912.jpg','1876897689'),(36,'Doe1753','123456',12,2,'Jhon','Doe','admin@gmail.com','cd5ea73cd58f827fa78eef7197b8ee606c99b2e6','ADMIN',NULL,'ACTIVE','Male','admin123456','2019-02-13','O+','2019-02-15','2019-02-22','Doe1753.jpg','01253568955555'),(37,'Doe1754','123444',12,2,'Jhon','Doe','employee@gmail.com','cd5ea73cd58f827fa78eef7197b8ee606c99b2e6','EMPLOYEE',NULL,'ACTIVE','Male','abc123456','2019-02-13','O+','2019-02-15','2019-02-22','Doe1753.jpg','01253568955555'),(38,'gbh1527','100',9,9,'rftbt','gbhaw','wwgwgws@jkj.com','21c0d5b5c44fff0b2cf5858b8f032a7ba18f9b89','EMPLOYEE',NULL,'INACTIVE','Male','6525954448','2019-09-09','O+','2019-09-09','2019-09-30','gbh1527.jpg','5594545454'),(39,'Dam1607','100',2,2,'Nalika','Damayanthi','pavanpabs@gmail.com','74dcb19e3cbd8dd731733f4ad91b120c5c275afc','EMPLOYEE',NULL,'INACTIVE','Female','+94718196610','2019-09-30','O+','2019-09-02','2019-09-18',NULL,'978411614v'),(40,'Dam1645','100',2,2,'Nalika','Damayanthi','hg@un.com','74dcb19e3cbd8dd731733f4ad91b120c5c275afc','EMPLOYEE',NULL,'INACTIVE','Female','+94718196610','2019-09-09','O+','2019-09-09','2019-09-26',NULL,'978411614v'),(41,'Dam1337','100',2,2,'Nalika','Damayanthi','fazy.hfb@gmail.com','b1556f612e4cb2265fe8fcb2844f8ec1d02c531c','ADMIN',NULL,'INACTIVE','Male','0718196610','2019-09-10','O-','2019-09-03','2019-09-26',NULL,'978411614v'),(42,'Dam1561','100',2,2,'Nalika','Damayanthi','fazy.hfb@gmaihul.com','74dcb19e3cbd8dd731733f4ad91b120c5c275afc','EMPLOYEE',NULL,'INACTIVE','Female','+94718196610','2019-09-17','O+','2019-09-10','2019-09-12',NULL,'978411614v'),(43,'Dam1075','100',2,2,'Nalika','Damayanthi','nalika@gmail.com','b1556f612e4cb2265fe8fcb2844f8ec1d02c531c','EMPLOYEE',NULL,'INACTIVE','Female','0718196610','1990-09-06','O+','2019-09-23','2019-09-30',NULL,'978411614v'),(44,'Dam1194','100',2,2,'Nalika','Damayanthi','nalikafvr@gmail.com','b1556f612e4cb2265fe8fcb2844f8ec1d02c531c','EMPLOYEE',NULL,'INACTIVE','Female','0718196610','1990-09-06','O+','2000-05-04','2019-09-10',NULL,'978411614v'),(45,'Dam1101','100',2,2,'Nalika','Damayanthi','nalikad@gmail.com','b1556f612e4cb2265fe8fcb2844f8ec1d02c531c','EMPLOYEE',NULL,'INACTIVE','Female','0718196610','1990-09-06','O+','2000-05-04','2019-09-10','Dam1101.jpg','978411614v');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;

--
-- Table structure for table `employee_file`
--

DROP TABLE IF EXISTS `employee_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_file` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `em_id` varchar(64) DEFAULT NULL,
  `file_title` varchar(512) DEFAULT NULL,
  `file_url` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_file`
--

/*!40000 ALTER TABLE `employee_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_file` ENABLE KEYS */;

--
-- Table structure for table `enroll`
--

DROP TABLE IF EXISTS `enroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enroll` (
  `enroll_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(4) DEFAULT NULL,
  `course_id` int(4) DEFAULT NULL,
  `enrolled_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`enroll_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enroll`
--

/*!40000 ALTER TABLE `enroll` DISABLE KEYS */;
INSERT INTO `enroll` VALUES (14,19,1,'2019-09-24 22:12:29'),(15,67,1,'2019-09-29 12:38:43');
/*!40000 ALTER TABLE `enroll` ENABLE KEYS */;

--
-- Table structure for table `expense_category`
--

DROP TABLE IF EXISTS `expense_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_category` (
  `expense_category_id` int(121) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`expense_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_category`
--

/*!40000 ALTER TABLE `expense_category` DISABLE KEYS */;
INSERT INTO `expense_category` VALUES (2,'1','Electricity Bill'),(4,'1','Stationary'),(5,'1','Gross Taxes and Contributions'),(6,'1','Postal Services'),(7,'1','Newspaper Ads'),(8,'1','Bank Charges'),(9,'1','Cleaning and Maintenance'),(10,'1','Seminars Catering'),(11,'1','Posters and Handbills'),(12,'1','Capital Maintenance'),(13,'1','Insurance'),(14,'1','Software Maintenance'),(15,'1','Telephone Bill');
/*!40000 ALTER TABLE `expense_category` ENABLE KEYS */;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expenses` (
  `expenses_id` int(121) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `upload_receipt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`expenses_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (5,'1','2019-09-26','September Electricity Bill',2000,'2',''),(6,'1','2019-09-29','Stamps for Promotion Letters',1500,'6','');
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;

--
-- Table structure for table `field_visit`
--

DROP TABLE IF EXISTS `field_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_visit` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(256) NOT NULL,
  `emp_id` varchar(64) DEFAULT NULL,
  `field_location` varchar(512) NOT NULL,
  `start_date` varchar(64) DEFAULT NULL,
  `approx_end_date` varchar(28) NOT NULL,
  `total_days` varchar(64) DEFAULT NULL,
  `notes` varchar(500) NOT NULL,
  `actual_return_date` varchar(28) NOT NULL,
  `status` enum('Approved','Not Approve','Rejected') NOT NULL DEFAULT 'Not Approve',
  `attendance_updated` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_visit`
--

/*!40000 ALTER TABLE `field_visit` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_visit` ENABLE KEYS */;

--
-- Table structure for table `forum_topic`
--

DROP TABLE IF EXISTS `forum_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_topic` (
  `forum_topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `forum_topic_name` text NOT NULL,
  `forum_topic_created_by` varchar(255) NOT NULL,
  `forum_topic_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `forum_topic_body` text NOT NULL,
  `forum_topic_views` int(11) NOT NULL DEFAULT 0,
  `forum_topic_replies` int(11) NOT NULL DEFAULT 0,
  `forum_topic_semester` varchar(255) NOT NULL DEFAULT '0',
  `forum_topic_image` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`forum_topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_topic`
--

/*!40000 ALTER TABLE `forum_topic` DISABLE KEYS */;
INSERT INTO `forum_topic` VALUES (22,'CIMA 2019 Syllabus KEY POINTS','admin@admin.com','2019-09-02 13:51:32','  Visit https://www.practicetestsacademy.com/blog/80-cima/150-new-cima-2019-syllabus',0,0,'CIMA',''),(23,'CMA -Examination Structure','admin@admin.com','2019-09-02 14:01:54','Structure of the paper,past papers and syllabuses are available on https://www.cma-srilanka.org/examination-structure.html',0,0,'CMA',''),(24,'Is AAT equivalent to a degree? ','admin@admin.com','2019-09-02 14:12:23','AAT Level 4 qualifies you as an Accounting Technician, and is equivalent to a higher diploma, or the first year of degree.AAT level 3 is equivalent to 2 A Levels. AAT level 4 is equivalent to a Professional Diploma Level.',0,0,'AAT',''),(40,'CIMA Exams','admin@admin.com','2019-09-30 10:19:48','<p>You can study and register for five certificate exams at your own pace.There are 12 professional qualification exams in four years.</p>',0,0,'CIMA',''),(42,'CIMA Cert','huh@huj.com','2019-09-30 10:46:08','<p>Helps students with little or no accounting experience unleah their true business potential</p>',0,0,'CIMA',''),(43,'What does AAT do','alex@gmail.com','2019-09-30 10:51:08','<p>Administrative Appeals Tribunal(AAT) is an Australian Tribunal that conducts indpendent merits review of administrative decisions made under Commonwealth laws of Australian Government</p>',0,0,'AAT',''),(44,'Is CMA a good career?','alex@gmail.com','2019-09-30 10:53:27','<p>Why CMA is a good Course?</p>',0,0,'CMA',''),(45,'AAT Sri Lanka Syllabus,Past papers with answers','huh@huj.com','2019-09-30 11:08:47','<p><span style=\"text-decoration: underline;\"><a href=\"https://www.jobsqueen.com/education/668-aat-sri-lanka-sample-papers-syllabus-examination-papers-downloads-2011-www-aatsl-lk-associations-of-accounting-technicians-of-sri-lanka.html\">https://www.jobsqueen.com/education/668-aat-sri-lanka-sample-papers-syllabus-examination-papers-downloads-2011-www-aatsl-lk-associations-of-accounting-technicians-of-sri-lanka.html</a></span></p>',0,0,'',''),(46,'CMA Course','huh@huj.com','2019-09-30 11:12:20','<p><span style=\"color: #222222; font-family: arial, sans-serif; font-size: 16px;\">The Certified Management Accountant credential is an advanced professional certification specifically designed to measure the accounting and financial management skills that drive business performance.</span></p>',0,0,'CMA','');
/*!40000 ALTER TABLE `forum_topic` ENABLE KEYS */;

--
-- Table structure for table `forum_topic_reply`
--

DROP TABLE IF EXISTS `forum_topic_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_topic_reply` (
  `forum_topic_reply_id` int(11) NOT NULL AUTO_INCREMENT,
  `forum_topic_reply_topic_id` int(11) NOT NULL,
  `forum_topic_reply_created_by` varchar(255) NOT NULL,
  `forum_topic_reply_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `forum_topic_reply_body` text NOT NULL,
  `forum_topic_reply_image` varchar(255) NOT NULL,
  PRIMARY KEY (`forum_topic_reply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_topic_reply`
--

/*!40000 ALTER TABLE `forum_topic_reply` DISABLE KEYS */;
INSERT INTO `forum_topic_reply` VALUES (19,22,'admin@admin.com','2019-09-02 15:13:39','Great!',''),(20,31,'admin@admin.com','2019-09-21 18:24:41','<p>asda</p>','wp2842418-soothing-wallpaper-8925247653.jpg'),(21,23,'admin@admin.com','2019-09-24 08:15:34','<p>comment success</p>',''),(22,31,'admin@admin.com','2019-09-24 08:25:12','<p>hat</p>','l4-7032454236.pdf'),(23,22,'admin@admin.com','2019-09-25 03:09:08','<p>posting comments</p>',''),(24,22,'admin@admin.com','2019-09-25 07:48:20','<p>Great!</p>',''),(25,36,'admin@admin.com','2019-09-28 02:40:03','<p>what is new</p>',''),(26,38,'admin@admin.com','2019-09-30 01:57:41','<p>what to discuss</p>',''),(27,40,'huh@huj.com','2019-09-30 10:22:58','<p>CIMA certificate qualification is equivalent to an NQF level 6 with the SAQA ID:24406</p>',''),(28,40,'alex@gmail.com','2019-09-30 10:26:35','<p>What is SAQA ID?How to get a SAQA Certificate?</p>',''),(29,40,'alex@gmail.com','2019-09-30 10:31:17','<p>The South African Qualifications Authority is responsible for the further development and implementation of the National Qualifications Framework(NQF)</p>',''),(30,44,'huh@huj.com','2019-09-30 10:56:47','<p>CMA is a good course and exam choice to take if you are looking to work a career in accounting.Earning CMA is not a simple process</p>',''),(31,45,'huh@huj.com','2019-09-30 11:13:54','<p>Refer this link and go through the past papers prior the exam</p>',''),(32,47,'admin@admin.com','2019-09-30 15:09:30','<p>comment to thread1</p>','seminar-acknowledgment-report1-9751825635.jpg');
/*!40000 ALTER TABLE `forum_topic_reply` ENABLE KEYS */;

--
-- Table structure for table `holiday`
--

DROP TABLE IF EXISTS `holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holiday` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `holiday_name` varchar(256) DEFAULT NULL,
  `from_date` varchar(64) DEFAULT NULL,
  `to_date` varchar(64) DEFAULT NULL,
  `number_of_days` varchar(64) DEFAULT NULL,
  `year` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holiday`
--

/*!40000 ALTER TABLE `holiday` DISABLE KEYS */;
INSERT INTO `holiday` VALUES (1,'Aids Day','2017-12-21','2017-12-29','2','2017'),(3,'Language Day','2018-02-21','2018-02-21','1','02-2018'),(4,'independent day','2018-03-26','','1','03-2018');
/*!40000 ALTER TABLE `holiday` ENABLE KEYS */;

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `income` (
  `income_id` int(121) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`income_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income`
--

/*!40000 ALTER TABLE `income` DISABLE KEYS */;
INSERT INTO `income` VALUES (5,'September Intake Revenue','2019-09-25',162000,'3','1'),(6,'Aptitude Test Fee Revenue','2019-09-25',12000,'8','1'),(7,'Donation from Charity Company at Seminar held on 12th September 2019','2019-09-25',50000,'7','1');
/*!40000 ALTER TABLE `income` ENABLE KEYS */;

--
-- Table structure for table `income_category`
--

DROP TABLE IF EXISTS `income_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `income_category` (
  `income_category_id` int(121) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`income_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income_category`
--

/*!40000 ALTER TABLE `income_category` DISABLE KEYS */;
INSERT INTO `income_category` VALUES (3,'1','Course Fee'),(6,'1','Repeat Examination Fee'),(7,'1','Donation'),(8,'1','Exam Fee');
/*!40000 ALTER TABLE `income_category` ENABLE KEYS */;

--
-- Table structure for table `leave_types`
--

DROP TABLE IF EXISTS `leave_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leave_types` (
  `type_id` int(14) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `leave_day` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_types`
--

/*!40000 ALTER TABLE `leave_types` DISABLE KEYS */;
INSERT INTO `leave_types` VALUES (1,'Casual Leave','21',1),(2,'Sick Leave','15',1),(3,'Maternity Leave','90',1),(4,'Paternal Leave','7',1),(5,'Earned leave','',1),(7,'Public Holiday','',1),(8,'Optional Leave','',1),(9,'Leave without Pay','',1);
/*!40000 ALTER TABLE `leave_types` ENABLE KEYS */;

--
-- Table structure for table `logistic_asset`
--

DROP TABLE IF EXISTS `logistic_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logistic_asset` (
  `log_id` int(14) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `qty` varchar(64) DEFAULT NULL,
  `entry_date` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistic_asset`
--

/*!40000 ALTER TABLE `logistic_asset` DISABLE KEYS */;
INSERT INTO `logistic_asset` VALUES (1,'Lubricant','30','12/25/17');
/*!40000 ALTER TABLE `logistic_asset` ENABLE KEYS */;

--
-- Table structure for table `logistic_assign`
--

DROP TABLE IF EXISTS `logistic_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logistic_assign` (
  `ass_id` int(14) NOT NULL AUTO_INCREMENT,
  `asset_id` int(14) NOT NULL,
  `assign_id` varchar(64) DEFAULT NULL,
  `project_id` int(14) NOT NULL,
  `task_id` int(14) NOT NULL,
  `log_qty` varchar(64) DEFAULT NULL,
  `start_date` varchar(64) DEFAULT NULL,
  `end_date` varchar(64) DEFAULT NULL,
  `back_date` varchar(64) DEFAULT NULL,
  `back_qty` varchar(64) DEFAULT NULL,
  `remarks` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`ass_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistic_assign`
--

/*!40000 ALTER TABLE `logistic_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `logistic_assign` ENABLE KEYS */;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `mID` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(20) NOT NULL,
  `fName` varchar(200) NOT NULL,
  `lName` varchar(200) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `nic` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `joined` timestamp NOT NULL DEFAULT current_timestamp(),
  `emgphone` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `coursename` varchar(100) NOT NULL,
  `subjects` varchar(255) DEFAULT NULL,
  `password` varchar(100) NOT NULL DEFAULT 'admin',
  `resume` text DEFAULT NULL,
  `image` varchar(255) DEFAULT 'user.jpg',
  PRIMARY KEY (`mID`),
  UNIQUE KEY `role_2` (`role`,`email`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (19,'Admin','Genius','Admin','Genius Admin','a','20','','admin@admin.com','071','male','2019-08-08 05:10:25','11','dd','d','No','admin','\"\"','user.jpg'),(58,'Student','Sam','De Silva','Sam de silva','Lake Round','1997-05-29','976508976V','samanthi@gmail.com','0716032918','female','2019-09-04 10:22:49','0371234567','CIMA','CMA','|||','','','samanthi@gmail.comphoto_2019-08-28_22-44-11.jpg'),(67,'Student','Alex','Collie','Alex Collie','America','1991-08-13','','alex@gmail.com','914563421v','male','2019-09-02 10:22:49','0378965432','IT','ISE','MAD|FA||','admin','','alex@gmail.comx1080-QE6.jpg'),(98,'Student','Jim','Sturgess','Jim Sturgess','Germany','1994-11-22','945675432V','jim@gmail.com','0767897654','male','2019-09-01 10:22:49','0776785432','IT','Software Engineering','OOP|DSA||','admin','','jim@gmail.comHD-Jim-Sturgess-Wallpapers-04.jpg'),(69,'Student','Sally','Andreas','Sally Andreas','Ibbagamuwa','1995-10-25','96785425V','sally@gmail.com','0984568922','female','2019-08-29 08:12:05','0324567898','Business','Charted','AAT|||','admin','','sally@gmail.comchrissy-costanza.jpg'),(70,'Teacher','Ronny','Peterson','Ronny Peterson','England','1985-07-05','856786543v','ronny@gmail.com','0768905432','male','2019-08-01 10:22:49','0371234567','Business','Charted','AAT|||','111111','','ronny@gmail.com323092.jpg'),(71,'Teacher','Bens','Barnes','Ben Barnes','Maharagama, Sri Lanka','1995-10-22','956784532V','ben@gmail.com','0768974532','male','2019-09-08 10:22:49','0374563427','Business','Charted','AAT|Accounting||','admin','','ben@gmail.comwp2842418-soothing-wallpaper.jpg'),(113,'Student','Rose','Manny','Rose Manny','Kurunegala','1998-10-27','986787672V','rose@gmail.com','0716756542','female','0000-00-00 00:00:00','0327876565','Management','ISE','MAD|||','admin',NULL,'rose@gmail.comtumblr_lhplxczY7m1qbl1i3o1_500.png'),(109,'Teacher','Aruni','Premarathne','Aruni Premarathne','Padeniya, Kurunegala','1996-06-12','965485775V','huh@huj.com','0768877987','female','2019-08-08 10:22:49','0372250055','CIMA','CIMA','Accounting|||','admin','','huh@huj.comeve1.jpg'),(99,'Student','Saman','De silva','Saman De silva','Samn,Kurunegala','1998-01-14','222222222v','saman@gmail.com','0712342342','male','2018-09-08 10:22:49','','CIMA','cima 1','Cima1|||','admin','','user.jpg'),(104,'Student','Samanthi','De Silva','Samanthi de silva','Kurunegala','2007-02-03','976789065V','sam@gmail.com','6786856789','female','2019-09-10 10:22:49','','MAD','IT','MAD|||','abc','','user.jpg'),(110,'Student','Jasmine','Richards','Warnakulasooriya Patabandige Jasmine Richards','niohvchkbk','2019-10-08','192356487V','JSon@gmail.com','0778965232','male','2019-09-18 10:22:49','0777119911','CIMA','CIMA  Name','1|2|3|4','admin',NULL,'JSon@gmail.com18-cutr-stylish-girl-profile-picture.jpg'),(112,'Teacher','Vikasitha','Rathnasekara','Vikasitha Rathnasekara','Kurunegala','1995-04-11','956485775V','vikasilanka@gmail.com','0712352636','male','2019-09-28 00:00:00','0372250302','CIMA','CIMA','CMA|||','admin','','vikasilanka@gmail.comIMG_20190803_103921.jpg'),(117,'Student','Anne','Bexo','','','','','annebexo@gmail.com','','male','2019-09-30 10:10:21','','','','|||','123',NULL,'user.jpg'),(115,'Student','Pavan','','','','','','pavanpabs1@gmail.com','','male','2019-09-29 13:07:57','','','','|||','',NULL,'user.jpg'),(116,'Student','Anji','Molly','Anji Molly','England','1992-09-29','928381093V','anji@gmail.com','0776786576','female','0000-00-00 00:00:00','0717898767','Language','Japanese','JF|JP||','1234asdf',NULL,'anji@gmail.comkisspng-zoe-williams-the-guardian-columnist-united-kingdom-tasteless-5adf4ccd792888.7682238015245836294963.jpg');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

--
-- Table structure for table `moodle_posts`
--

DROP TABLE IF EXISTS `moodle_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moodle_posts` (
  `post_id` int(3) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` varchar(800) NOT NULL DEFAULT 'No Content',
  `post_tags` varchar(300) NOT NULL,
  `post_comment_count` varchar(255) NOT NULL DEFAULT '0',
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `puserID` int(200) NOT NULL DEFAULT 1,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moodle_posts`
--

/*!40000 ALTER TABLE `moodle_posts` DISABLE KEYS */;
INSERT INTO `moodle_posts` VALUES (93,'Wallpaper','admin','2019-09-24','93form-wizard-2.jpg','<p>Set as your wallpaper</p>','1','0','publish',1),(94,'Welcome to Moodle','admin','2019-09-27','94eve2.jpg','No Content','4','0','draft',1);
/*!40000 ALTER TABLE `moodle_posts` ENABLE KEYS */;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner` (
  `id` int(11) NOT NULL,
  `owner_name` varchar(64) NOT NULL,
  `owner_position` varchar(64) DEFAULT NULL,
  `note` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;

--
-- Table structure for table `password_reset`
--

DROP TABLE IF EXISTS `password_reset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset` (
  `userID` int(200) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `token` varchar(200) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset`
--

/*!40000 ALTER TABLE `password_reset` DISABLE KEYS */;
INSERT INTO `password_reset` VALUES (1,'ulidutheerake@gmail.com','a04b06e74bb0be6e3497672f2f85c61942cb7408c24a5add01a7150327d2963934ca764463a01d0a825d7b3fe55d415d2e5d'),(2,'ulidutheerake@gmail.com','e17d4e3dad6754597a847a76fc889d2daa90a2aff8dc3740eed9eee3970d1dc0ad17ee8b4b360e161c984712e0bc0e772c4d'),(3,'ulidutheerake@gmail.com','1b426e5b7cfbc75af2768172bd6ebc8451189d8895aef2dd94f9173ff3f741ca8d184c8de21d12f599f0d310540e2a0b38ea'),(4,'ulidutheerake@gmail.com','fa5ecd7cb4746a3ed1b674bee14257f7862bfc2cb0cbb12211fd23d73b3212df3d203eefee0d395353702d8218a45ce974c0'),(5,'ulidutheerake@gmail.com','8ae2b402f2ad3265396d8a697ee1723bf72857cc86552a6c5246f08fb700edba52de7e9e0981bbcd43b126e0a8e23dfa5c25'),(6,'ulidutheerake@gmail.com','60c742cf285dad2c246889346713d8d21b8007c96bbdd29a8e74efd5af385333670ad6e25dd8400ad102197471e06d78165b'),(7,'ulidutheerake@gmail.com','b3d2352a539b2d5b0542d4a3d2563416c50807c26498d2f601a6db5962e77b344a9195bfe9c09bc026f68cd8e86443cf0cc6'),(8,'ulidutheerake@gmail.com','b3cc7ea94c9b5aa5d0c5bb2422c59316eed703bd5b20219c9f6aa903be1499309fe178492bbdc1c437c816d9dec8090706ab'),(9,'ulidutheerake@gmail.com','38bf6c8c4eb0a8e06bfa2dbe01b18595f54e0f91d0de3c25f822dd7a5730e66d9d8b280ea8a055064d11bd8d8cc105ab9bbb'),(10,'ulidutheerake@gmail.com','60c3f6026f570580c8a35c75d3996f8707c7591969b37bb368023af16435031461f75d2c2f846d1e73833716d72740be36b2'),(11,'ulidutheerake@gmail.com','6de04aec98c2cb37e9c4806ac79db98615fedf24bb50eaf82ebe7f4120d5b133a5413a71329c189d8e6ed34fd7d393ea87bb'),(12,'ulidutheerake@gmail.com','ea7efc60b7aba5a23c612947dee0d53f16295bb95b48eee56f1d4e86b33e9cee67f3509a994c26aaf5d576223d6120c21919'),(13,'ulidutheerake@gmail.com','c5eda7e553d2e2870f9c0fa1d48109edf38dddd7394b8da9a388c3fe0e244e548b6c24489ecd04b385e24721675bd9f094d5'),(14,'ulidutheerake@gmail.com','d0d9d50fa38f305df5c771bbd18da6123bc12fef0bad02a6579b3b82aa8b2dbfca00495217b4eadd3b6e49d6bbe6628e1a56'),(15,'ulidutheerake@gmail.com','37a112822a3ee1d90d94c24a76d11840ddd00345116014bdd65a5ac4dbb9e56eff4a9ba7fd5f89fd9a9a9ae3653a410ebf1d'),(16,'ulidutheerake@gmail.com','945b847fe5efc47f7c91a979db569c2cea1eac20d65073f69e01cafde612b21f3555406c7236da25c5b308bcd191f2d8f45a'),(17,'ulidutheerake@gmail.com','f9cd1019033f5d3d5c0027df3a1d6f392adb6c87208e22ec0e6e3aed7911e4c811cdead37c1384cd1990ab3b03e38fcb12dc'),(18,'ulidutheerake@gmail.com','253be4a72bb869ba13cf5f02b1d504abc90a914bb26e0fce87cf48b9836f95fa8f2e3b51f67b7b683a3f53571cc3144e8a93'),(19,'ulidutheerake@gmail.com','4a0d42a2ab1ec1a93cc6cbe0f53d65816ed6f7256aedae70d8ac88b41b5ba66c73052fd99ef40a3b2483d34f18ee837631e5'),(20,'ulidutheerake@gmail.com','9462e44a65d6ffc8d83e1b04951c5b7968b48db04d2ff3b9c166dd6e39963c8ba3a9523beb703dd5b22c71ea5c7c842da5be'),(21,'ulidutheerake@gmail.com','632be3ee895016e25b276a2612f4889b06daa2015c2a4bd9eb5ebf7c8043db2a159cf08218a759aae3623db35bf0f738c227'),(22,'ulidutheerake@gmail.com','881209a4911e3e742d59e9878352ef5fe41f6e52e2cf958c0e57164025cdf0d419805bbe70e7e54023991e0e9c6831485f8d'),(23,'ulidutheerake@gmail.com','ab9c8110541ab0b116cfb360519b440aaf67dbc420dcb9b2469edb9d7b629f5e7c8790fecbd01afad6f6a8575358113fd0d4'),(24,'ulidutheerake@gmail.com','6fff0b3b48e9fd230c546b1cc30bcaa37158cd59789b108387932c2e01a8e6e3dd95af5e7c1ebbf6a1de91bc230ff98c8f82'),(25,'ulidutheerake@gmail.com','de977679a0f68590d1ad50a70781be477d370df18380a51933e0db88f1c605f83cf7e6fb4d71d06ad687f22403be59b99a73'),(26,'ulidutheerake@gmail.com','59463549ef3b81d3b907eb2e23dcc357bb78110fc11a0e262624acc6b5e57b73f21c6c35355529b77aedcdb6b2336f2c5065'),(27,'ulidutheerake@gmail.com','87777ab0f157bb1dbc83d41260144643b0a3793471ccafb5dce1da3091a5efd1a7d21a992250b6d6f578826ded48514cd59b'),(28,'ulidutheerake@gmail.com','441cd5866ae44552d096cab545774f33e4432d0e4b2df1ee22ebf823f71af90bc5ab1f625254585c556ffdfe5c28c54ae1e9'),(29,'ulidutheerake@gmail.com','17e1f1dd76b7f568f18aae2d66731529d812ff54c3e837959c0ae6878ed05ebedd6a7ca7694bd3953c88d3a409c076d5acd3'),(30,'ulidutheerake@gmail.com','7586d56597c01843f29d7f11b26f23bc9c5a23c2e885c1510de61b53329db143051103d81d6af8502046b21b91fca84f9718'),(31,'ulidutheerake@gmail.com','d677080973a23c87436fe97fac6829eac97a445b215bf1954c524d97c5f13066102f16569e31221546bd80106b7e01d96f2f'),(32,'ulidutheerake@gmail.com','6c67d447494a23940edd44b679931a52d6e5a3171d2dc05b00085e631b0b86d95be3fd8445c979c98ed5b9b947f2ba4d2c30'),(33,'ulidutheerake@gmail.com','10d4e3541aa3fb084a548d501da955e5581abbf570fd57fc7f63db7a947c56ffc666c3952595fd7ff7eb43f6ef01ddd3067a'),(34,'ulidutheerake@gmail.com','ffc5d822850c9da41bc3c9368f8d27ed265d24c5194dd83662d7af3d72f6f5d71f6aea7befe2e2865986a9db0411857ff7b7'),(35,'ulidutheerake@gmail.com','7c859578a2d02c32ec2e6dbc6bced6bd126f8575e6ca1bef4c0ca0c757515d44a5e72d0d228e40c9bfb2dbecee2648066fb6'),(36,'ulidutheerake@gmail.com','fe5775766886f4f9e0de0e8c8deab9edafc804d487d1764f8c8aeafbc8ea9385f779f05534384ac4d0fde20cbf12d56e8fbd');
/*!40000 ALTER TABLE `password_reset` ENABLE KEYS */;

--
-- Table structure for table `pay_salary`
--

DROP TABLE IF EXISTS `pay_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_salary` (
  `pay_id` int(14) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(64) DEFAULT NULL,
  `type_id` int(14) NOT NULL,
  `month` varchar(64) DEFAULT NULL,
  `year` varchar(64) DEFAULT NULL,
  `paid_date` varchar(64) DEFAULT NULL,
  `total_days` varchar(64) DEFAULT NULL,
  `basic` varchar(64) DEFAULT NULL,
  `medical` varchar(64) DEFAULT NULL,
  `house_rent` varchar(64) DEFAULT NULL,
  `bonus` varchar(64) DEFAULT NULL,
  `bima` varchar(64) DEFAULT NULL,
  `tax` varchar(64) DEFAULT NULL,
  `provident_fund` varchar(64) DEFAULT NULL,
  `loan` varchar(64) DEFAULT NULL,
  `total_pay` varchar(128) DEFAULT NULL,
  `addition` int(128) NOT NULL,
  `diduction` int(128) NOT NULL,
  `status` enum('Paid','Process') DEFAULT 'Process',
  `paid_type` enum('Hand Cash','Bank') NOT NULL DEFAULT 'Bank',
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_salary`
--

/*!40000 ALTER TABLE `pay_salary` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_salary` ENABLE KEYS */;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `id` int(122) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(250) DEFAULT NULL,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,'Employee','{\"users\":{\"own_create\":\"1\",\"own_read\":\"1\",\"own_update\":\"1\",\"own_delete\":\"1\",\"all_read\":\"1\",\"all_update\":\"1\",\"all_delete\":\"1\"},\"Expenses\":{\"own_create\":\"1\",\"own_read\":\"1\",\"own_update\":\"1\",\"own_delete\":\"1\",\"all_read\":\"1\",\"all_update\":\"1\",\"all_delete\":\"1\"},\"Income\":{\"own_create\":\"1\",\"own_read\":\"1\",\"own_update\":\"1\",\"own_delete\":\"1\",\"all_read\":\"1\",\"all_update\":\"1\",\"all_delete\":\"1\"},\"0\":{\"own_create\":\"1\",\"own_read\":\"1\",\"own_update\":\"1\",\"own_delete\":\"1\",\"all_read\":\"1\",\"all_update\":\"1\",\"all_delete\":\"1\"}}'),(2,'admin','{\"users\":{\"own_create\":\"1\",\"own_read\":\"1\",\"own_update\":\"1\",\"own_delete\":\"1\",\"all_create\":\"1\",\"all_read\":\"1\",\"all_update\":\"1\",\"all_delete\":\"1\"},\"Expenses\":\"Expenses\",\"Income\":\"Income\",\"Expense Category\":\"Expense Category\",\"Income Category\":\"Income Category\"}');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` varchar(800) NOT NULL DEFAULT 'No Content',
  `post_tags` varchar(300) NOT NULL,
  `post_comment_count` varchar(255) NOT NULL DEFAULT '0',
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `puserID` int(200) NOT NULL DEFAULT 1,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (41,'GENIUS-AWURUDU','admin','2019-09-02','0awurudu.jpg|1awuu.jpg|2awuu2.jpg','Bakmaha Genius 19 th Annual Sinhala Hindu Bak Festival was held on Friday, 19th April 2019 at the Pavilion,  Saruketha,Lake round, Kurunegala organized by the Genius Student Collective.\r\n\r\n','','10','publish',1),(42,'BECOME A BUSINESS LEADER! Registrations are open NOW','admin','2019-09-02','0proo.jpg','Special discounts for early Registrations','','2','publish',1),(44,'Trip to Unawatuna','admin','2019-09-30','0trip.jpg','<p>Genius Annual Trip to Unawatuna on 28th August</p>','','0','publish',1),(63,'Future Leaders','Genius','2019-09-30','0index.jpg','<p>Join Genius to become a future leader!</p>','','0','publish',1),(64,'New Enrollments','Genius','2019-09-30','0reister.jpg','<p>Start your career as a CIMA Cert.BA Graduate.Register before10th of October and grab 25% off from CIMA Registration.</p>\r\n<p>Registrations are open now!</p>','','0','publish',1),(65,'Proud Moments of Genius','Genius','2019-09-30','0winner.jpg','<p>Genius is all about the quality..Not the quantity..</p>\r\n<p>We create leaders..we have a clear pathway..</p>\r\n<p>Consecutive Prize winners at AAT Exams.</p>\r\n<p>100% pass rate..Who is next?Be ready!</p>','#proudGenius','2','publish',1),(66,'CIMA Open Day','Genius','2019-09-30','0openday1.jpg|1openday2.jpg|2openday3.jpg|3openday4.jpg','<p>CIMA Open Day was held on 8th Sunday,September 2019 at Genius Academic Institute successfully.</p>','#openday #cima','0','publish',1),(67,'Proud Winners of AAT @Genius','Genius','2019-09-30','0winner2.jpg','<p>Proud Genius AAT winners completed all the levels of AAT in Sinhala and English Medium.</p>\r\n<p>Enroll soon..Be the next winner!</p>','#aat #winners #proudMoments','0','publish',1),(68,'Carrer Guidance Programme','Genius','2019-09-30','0guest.jpg','<p>Carrer guidance programme with Mr.Dhanuka Sirinama</p>','','0','publish',1);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary` (
  `salaryID` int(200) NOT NULL AUTO_INCREMENT,
  `empID` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basicSalary` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addOT` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addBonus` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dedEPF` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dedOther` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalSalary` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`salaryID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (4,'The1912','18000','2019-09',' 1000','1000','2500','2500','15000');
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;

--
-- Table structure for table `salary_type`
--

DROP TABLE IF EXISTS `salary_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary_type` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `salary_type` varchar(256) DEFAULT NULL,
  `create_date` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_type`
--

/*!40000 ALTER TABLE `salary_type` DISABLE KEYS */;
INSERT INTO `salary_type` VALUES (1,'Hourly','2017-11-22'),(2,'Monthly','2017-12-30'),(3,'Daily','2017-12-29'),(4,'Hourly','2018-03-31');
/*!40000 ALTER TABLE `salary_type` ENABLE KEYS */;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting` (
  `id` int(122) unsigned NOT NULL AUTO_INCREMENT,
  `keys` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (1,'website','Genius - Finance Management'),(2,'logo','logo_1566888641.png'),(3,'favicon','android-chrome-192x192_1566886620.png'),(4,'SMTP_EMAIL',''),(5,'HOST',''),(6,'PORT',''),(7,'SMTP_SECURE',''),(8,'SMTP_PASSWORD','gunathilake333'),(9,'mail_setting','php_mailer'),(10,'company_name','Company Name'),(11,'crud_list','users,Expenses,Income,Expense Category,Income Category,User'),(12,'EMAIL',''),(13,'UserModules','yes'),(14,'register_allowed','0'),(15,'email_invitation','1'),(16,'admin_approval','0'),(17,'user_type','[\"user\"]');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitelogo` varchar(128) DEFAULT NULL,
  `sitetitle` varchar(256) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `copyright` varchar(128) DEFAULT NULL,
  `contact` varchar(128) DEFAULT NULL,
  `currency` varchar(128) DEFAULT NULL,
  `symbol` varchar(64) DEFAULT NULL,
  `system_email` varchar(128) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `address2` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'emp.png','Genius - Employee Management','Genius - Employee Management','','','BDT','Rs.','contact@dri-int.org','','');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

--
-- Table structure for table `social_media`
--

DROP TABLE IF EXISTS `social_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_media` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(64) DEFAULT NULL,
  `facebook` varchar(256) DEFAULT NULL,
  `twitter` varchar(256) DEFAULT NULL,
  `google_plus` varchar(512) DEFAULT NULL,
  `skype_id` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media`
--

/*!40000 ALTER TABLE `social_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media` ENABLE KEYS */;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templates` (
  `id` int(121) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `template_name` varchar(255) DEFAULT NULL,
  `html` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (1,'forgot_pass','forgot_password','Forgot password','<html xmlns=\"http://www.w3.org/1999/xhtml\"><head>\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n  <style type=\"text/css\" rel=\"stylesheet\" media=\"all\">\r\n    /* Base ------------------------------ */\r\n    *:not(br):not(tr):not(html) {\r\n      font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif;\r\n      -webkit-box-sizing: border-box;\r\n      box-sizing: border-box;\r\n    }\r\n    body {\r\n      \r\n    }\r\n    a {\r\n      color: #3869D4;\r\n    }\r\n\r\n\r\n    /* Masthead ----------------------- */\r\n    .email-masthead {\r\n      padding: 25px 0;\r\n      text-align: center;\r\n    }\r\n    .email-masthead_logo {\r\n      max-width: 400px;\r\n      border: 0;\r\n    }\r\n    .email-footer {\r\n      width: 570px;\r\n      margin: 0 auto;\r\n      padding: 0;\r\n      text-align: center;\r\n    }\r\n    .email-footer p {\r\n      color: #AEAEAE;\r\n    }\r\n  \r\n    .content-cell {\r\n      padding: 35px;\r\n    }\r\n    .align-right {\r\n      text-align: right;\r\n    }\r\n\r\n    /* Type ------------------------------ */\r\n    h1 {\r\n      margin-top: 0;\r\n      color: #2F3133;\r\n      font-size: 19px;\r\n      font-weight: bold;\r\n      text-align: left;\r\n    }\r\n    h2 {\r\n      margin-top: 0;\r\n      color: #2F3133;\r\n      font-size: 16px;\r\n      font-weight: bold;\r\n      text-align: left;\r\n    }\r\n    h3 {\r\n      margin-top: 0;\r\n      color: #2F3133;\r\n      font-size: 14px;\r\n      font-weight: bold;\r\n      text-align: left;\r\n    }\r\n    p {\r\n      margin-top: 0;\r\n      color: #74787E;\r\n      font-size: 16px;\r\n      line-height: 1.5em;\r\n      text-align: left;\r\n    }\r\n    p.sub {\r\n      font-size: 12px;\r\n    }\r\n    p.center {\r\n      text-align: center;\r\n    }\r\n\r\n    /* Buttons ------------------------------ */\r\n    .button {\r\n      display: inline-block;\r\n      width: 200px;\r\n      background-color: #3869D4;\r\n      border-radius: 3px;\r\n      color: #ffffff;\r\n      font-size: 15px;\r\n      line-height: 45px;\r\n      text-align: center;\r\n      text-decoration: none;\r\n      -webkit-text-size-adjust: none;\r\n      mso-hide: all;\r\n    }\r\n    .button--green {\r\n      background-color: #22BC66;\r\n    }\r\n    .button--red {\r\n      background-color: #dc4d2f;\r\n    }\r\n    .button--blue {\r\n      background-color: #3869D4;\r\n    }\r\n  </style>\r\n</head>\r\n<body style=\"width: 100% !important;\r\n      height: 100%;\r\n      margin: 0;\r\n      line-height: 1.4;\r\n      background-color: #F2F4F6;\r\n      color: #74787E;\r\n      -webkit-text-size-adjust: none;\">\r\n  <table class=\"email-wrapper\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"\r\n    width: 100%;\r\n    margin: 0;\r\n    padding: 0;\">\r\n    <tbody><tr>\r\n      <td align=\"center\">\r\n        <table class=\"email-content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100%;\r\n      margin: 0;\r\n      padding: 0;\">\r\n          <!-- Logo -->\r\n\r\n          <tbody>\r\n          <!-- Email Body -->\r\n          <tr>\r\n            <td class=\"email-body\" width=\"100%\" style=\"width: 100%;\r\n    margin: 0;\r\n    padding: 0;\r\n    border-top: 1px solid #edeef2;\r\n    border-bottom: 1px solid #edeef2;\r\n    background-color: #edeef2;\">\r\n              <table class=\"email-body_inner\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" style=\" width: 570px;\r\n    margin:  14px auto;\r\n    background: #fff;\r\n    padding: 0;\r\n    border: 1px outset rgba(136, 131, 131, 0.26);\r\n    box-shadow: 0px 6px 38px rgb(0, 0, 0);\r\n       \">\r\n                <!-- Body content -->\r\n                <thead style=\"background: #3869d4;\"><tr><th><div align=\"center\" style=\"padding: 15px; color: #000;\"><a href=\"{var_action_url}\" class=\"email-masthead_name\" style=\"font-size: 16px;\r\n      font-weight: bold;\r\n      color: #bbbfc3;\r\n      text-decoration: none;\r\n      text-shadow: 0 1px 0 white;\">{var_sender_name}</a></div></th></tr>\r\n                </thead>\r\n                <tbody><tr>\r\n                  <td class=\"content-cell\" style=\"padding: 35px;\">\r\n                    <h1>Hi {var_user_name},</h1>\r\n                    <p>You recently requested to reset your password for your {var_website_name} account. Click the button below to reset it.</p>\r\n                    <!-- Action -->\r\n                    <table class=\"body-action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"\r\n      width: 100%;\r\n      margin: 30px auto;\r\n      padding: 0;\r\n      text-align: center;\">\r\n                      <tbody><tr>\r\n                        <td align=\"center\">\r\n                          <div>\r\n                            <!--[if mso]><v:roundrect xmlns:v=\"urn:schemas-microsoft-com:vml\" xmlns:w=\"urn:schemas-microsoft-com:office:word\" href=\"{{var_action_url}}\" style=\"height:45px;v-text-anchor:middle;width:200px;\" arcsize=\"7%\" stroke=\"f\" fill=\"t\">\r\n                              <v:fill type=\"tile\" color=\"#dc4d2f\" />\r\n                              <w:anchorlock/>\r\n                              <center style=\"color:#ffffff;font-family:sans-serif;font-size:15px;\">Reset your password</center>\r\n                            </v:roundrect><![endif]-->\r\n                            <a href=\"{var_varification_link}\" class=\"button button--red\" style=\"background-color: #dc4d2f;display: inline-block;\r\n      width: 200px;\r\n      background-color: #3869D4;\r\n      border-radius: 3px;\r\n      color: #ffffff;\r\n      font-size: 15px;\r\n      line-height: 45px;\r\n      text-align: center;\r\n      text-decoration: none;\r\n      -webkit-text-size-adjust: none;\r\n      mso-hide: all;\">Reset your password</a>\r\n                          </div>\r\n                        </td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                    <p>If you did not request a password reset, please ignore this email or reply to let us know.</p>\r\n                    <p>Thanks,<br>{var_sender_name} and the {var_website_name} Team</p>\r\n                   <!-- Sub copy -->\r\n                    <table class=\"body-sub\" style=\"margin-top: 25px;\r\n      padding-top: 25px;\r\n      border-top: 1px solid #EDEFF2;\">\r\n                      <tbody><tr>\r\n                        <td> \r\n                          <p class=\"sub\" style=\"font-size:12px;\">If you are having trouble clicking the password reset button, copy and paste the URL below into your web browser.</p>\r\n                          <p class=\"sub\"  style=\"font-size:12px;\"><a href=\"{var_varification_link}\">{var_varification_link}</a></p>\r\n                        </td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n  </tbody></table>\r\n\r\n\r\n</body></html>'),(3,'users','invitation','Invitation','<p>Hello <strong>{var_user_email}</strong></p>\r\n\r\n<p>Click below link to register&nbsp;<br />\r\n{var_inviation_link}</p>\r\n\r\n<p>Thanks&nbsp;</p>\r\n');
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `users_id` int(121) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `var_key` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `is_deleted` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`users_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'1','','active','0','admin','$2y$10$kxlHVUZV4pfcxoe.zyLXG.bYB4VFzzvnNuJfGJSiXo7NcJaLJR4fm','admin@admin.com','demo_pic.png','admin'),(2,'1',NULL,'active','0','ulidu','$2y$10$4bV.u9vWfCOr7Zgq.98iU.3Sr4DRMO3jGUFdU9v7s2Iddu6ELFizm','ulidutheerake@gmail.com','user.png','user');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

--
-- Dumping routines for database 'u717897046_geniu'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-30 15:51:11
