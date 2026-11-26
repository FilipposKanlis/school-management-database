DROP SCHEMA IF EXISTS school;
CREATE SCHEMA school;
USE school;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: school
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `absences_students_detailed`
--

DROP TABLE IF EXISTS `absences_students_detailed`;
/*!50001 DROP VIEW IF EXISTS `absences_students_detailed`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `absences_students_detailed` AS SELECT 
 1 AS `stdName`,
 1 AS `parName`,
 1 AS `className`,
 1 AS `absType`,
 1 AS `Hours`,
 1 AS `Date`,
 1 AS `courseName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `absences_students_summary`
--

DROP TABLE IF EXISTS `absences_students_summary`;
/*!50001 DROP VIEW IF EXISTS `absences_students_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `absences_students_summary` AS SELECT 
 1 AS `stdName`,
 1 AS `parName`,
 1 AS `className`,
 1 AS `absType`,
 1 AS `Hours`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `classID` int NOT NULL AUTO_INCREMENT,
  `className` varchar(3) NOT NULL,
  `classLevel` int NOT NULL,
  PRIMARY KEY (`classID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'Α1',1),(2,'Α2',1),(3,'Α3',1),(4,'Β1',2),(5,'Β2',2),(6,'Β3',2),(7,'Γ1',3),(8,'Γ2',3),(9,'Γ3',3);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `courseID` int NOT NULL AUTO_INCREMENT,
  `courseName` varchar(45) NOT NULL,
  PRIMARY KEY (`courseID`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Θρησκευτικά A'),(2,'Αρχαία Ελληνική Γλώσσα A'),(3,'Αρχαία Ελληνική Γραμματεία από μετάφραση A'),(4,'Νεοελληνική Γλώσσα A'),(5,'Νεοελληνική Γραμματεία A'),(6,'Ιστορία A'),(7,'Μαθηματικά A'),(8,'Φυσική A'),(9,'Γεωγραφία A'),(10,'Βιολογία A'),(11,'Αγγλικά A'),(12,'Β\' Ξένη Γλώσσα A'),(13,'Οικιακή Οικονομία A'),(14,'Φυσική Αγωγή A'),(15,'Μουσική A'),(16,'Καλλιτεχνικά A'),(17,'Πληροφορική A'),(18,'Τεχνολογία  A'),(20,'Θρησκευτικά B'),(21,'Αρχαία Ελληνική Γλώσσα B'),(22,'Αρχαία Ελληνική Γραμματεία από μετάφραση B'),(23,'Νεοελληνική Γλώσσα B'),(24,'Νεοελληνική Γραμματεία B'),(25,'Ιστορία B'),(26,'Μαθηματικά B'),(27,'Γεωγραφία B'),(28,'Φυσική B'),(29,'Χημεία B'),(30,'Βιολογία B'),(31,'Αγγλικά B'),(32,'Β\' Ξένη Γλώσσα B'),(33,'Φυσική Αγωγή B'),(34,'Μουσική B'),(35,'Καλλιτεχνικά B'),(36,'Πληροφορική B'),(37,'Τεχνολογία B'),(39,'Θρησκευτικά Γ'),(40,'Αρχαία Ελληνική Γλώσσα Γ'),(41,'Αρχαία Ελληνική Γραμματεία από μετάφραση Γ'),(42,'Νεοελληνική Γλώσσα Γ'),(43,'Νεοελληνική Γραμματεία Γ'),(44,'Ιστορία Γ'),(45,'Μαθηματικά Γ'),(46,'Βιολογία Γ'),(47,'Φυσική Γ'),(48,'Χημεία Γ'),(49,'Αγγλικά Γ'),(50,'Β\' Ξένη Γλώσσα Γ'),(51,'Κοινωνική και Πολιτική Αγωγή Γ'),(52,'Πληροφορική Γ'),(53,'Τεχνολογία Γ'),(54,'Μουσική Γ'),(55,'Καλλιτεχνικά Γ'),(56,'Φυσική Αγωγή Γ');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `grades_students_period`
--

DROP TABLE IF EXISTS `grades_students_period`;
/*!50001 DROP VIEW IF EXISTS `grades_students_period`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `grades_students_period` AS SELECT 
 1 AS `stdName`,
 1 AS `courseName`,
 1 AS `gradePeriod`,
 1 AS `gradeVal`,
 1 AS `in_year`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `grades_students_period_average`
--

DROP TABLE IF EXISTS `grades_students_period_average`;
/*!50001 DROP VIEW IF EXISTS `grades_students_period_average`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `grades_students_period_average` AS SELECT 
 1 AS `stdName`,
 1 AS `gradePeriod`,
 1 AS `AverageVal`,
 1 AS `year`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `has_grades_in`
--

DROP TABLE IF EXISTS `has_grades_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `has_grades_in` (
  `gradeID` int NOT NULL AUTO_INCREMENT,
  `studentID` int NOT NULL,
  `courseID` int NOT NULL,
  `gradeVal` float NOT NULL,
  `gradePeriod` enum('1o tetramino','2o tetramino','general') NOT NULL,
  `in_year` year NOT NULL,
  PRIMARY KEY (`gradeID`,`studentID`,`courseID`),
  KEY `fk_student_has_course_course1_idx` (`courseID`),
  KEY `fk_student_has_course_student1_idx` (`studentID`),
  CONSTRAINT `fk_student_has_course_course1` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`),
  CONSTRAINT `fk_student_has_course_student1` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_grades_in`
--

LOCK TABLES `has_grades_in` WRITE;
/*!40000 ALTER TABLE `has_grades_in` DISABLE KEYS */;
INSERT INTO `has_grades_in` VALUES (1,2,1,16,'1o tetramino',2023),(2,2,2,15,'1o tetramino',2023),(3,2,3,18,'1o tetramino',2023),(4,2,4,12,'1o tetramino',2023),(5,2,5,14,'1o tetramino',2023),(6,2,6,19,'1o tetramino',2023),(7,2,7,20,'1o tetramino',2023),(8,2,8,11,'1o tetramino',2023),(9,2,9,14,'1o tetramino',2023),(10,2,10,15,'1o tetramino',2023),(11,2,11,18,'1o tetramino',2023),(12,2,12,17,'1o tetramino',2023),(13,2,13,17,'1o tetramino',2023),(14,2,14,17,'1o tetramino',2023),(15,2,15,16,'1o tetramino',2023),(16,2,16,14,'1o tetramino',2023),(17,2,17,15,'1o tetramino',2023),(18,2,18,17,'1o tetramino',2023),(19,122,1,11,'1o tetramino',2023),(20,122,2,12,'1o tetramino',2023),(21,122,3,15,'1o tetramino',2023),(22,122,4,14,'1o tetramino',2023),(23,122,5,13,'1o tetramino',2023),(24,122,6,18,'1o tetramino',2023),(25,122,7,11,'1o tetramino',2023),(26,122,8,16,'1o tetramino',2023),(27,122,9,14,'1o tetramino',2023),(28,122,10,15,'1o tetramino',2023),(29,122,11,12,'1o tetramino',2023),(30,122,12,15,'1o tetramino',2023),(31,122,13,14,'1o tetramino',2023),(32,122,14,17,'1o tetramino',2023),(33,122,15,12,'1o tetramino',2023),(34,122,16,15,'1o tetramino',2023),(35,122,17,13,'1o tetramino',2023),(36,122,18,17,'1o tetramino',2023),(37,62,1,14,'1o tetramino',2023),(38,62,2,11,'1o tetramino',2023),(39,62,3,15,'1o tetramino',2023),(40,62,4,18,'1o tetramino',2023),(41,62,5,19,'1o tetramino',2023),(42,62,6,20,'1o tetramino',2023),(43,62,7,14,'1o tetramino',2023),(44,62,8,11,'1o tetramino',2023),(45,62,9,6,'1o tetramino',2023),(46,62,10,9,'1o tetramino',2023),(47,62,11,14,'1o tetramino',2023),(48,62,12,15,'1o tetramino',2023),(49,62,13,18,'1o tetramino',2023),(50,62,14,16,'1o tetramino',2023),(51,62,15,17,'1o tetramino',2023),(52,62,16,1,'1o tetramino',2023),(53,62,17,18,'1o tetramino',2023),(54,62,18,19,'1o tetramino',2023),(55,6,1,20,'1o tetramino',2023),(56,6,2,18,'1o tetramino',2023),(57,6,3,17,'1o tetramino',2023),(58,6,4,15,'1o tetramino',2023),(59,6,5,19,'1o tetramino',2023),(60,6,6,17.6,'1o tetramino',2023),(61,6,7,15,'1o tetramino',2023),(62,6,8,16,'1o tetramino',2023),(63,6,9,13,'1o tetramino',2023),(64,6,10,14,'1o tetramino',2023),(65,6,11,15.5,'1o tetramino',2023),(66,6,12,17,'1o tetramino',2023),(67,6,13,19,'1o tetramino',2023),(68,6,14,18,'1o tetramino',2023),(69,6,15,19,'1o tetramino',2023),(70,6,16,11,'1o tetramino',2023),(71,6,17,18,'1o tetramino',2023),(72,6,18,14,'1o tetramino',2023);
/*!40000 ALTER TABLE `has_grades_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_scores_in_test`
--

DROP TABLE IF EXISTS `has_scores_in_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `has_scores_in_test` (
  `testID` int NOT NULL AUTO_INCREMENT,
  `studentID` int NOT NULL,
  `courseID` int NOT NULL,
  `testType` enum('proforika','diagwnisma','test') NOT NULL,
  `score` float NOT NULL,
  `testDate` date NOT NULL,
  PRIMARY KEY (`testID`,`studentID`,`courseID`),
  KEY `fk_student_has_course_course2_idx` (`courseID`),
  KEY `fk_student_has_course_student2_idx` (`studentID`),
  CONSTRAINT `fk_student_has_course_course2` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`),
  CONSTRAINT `fk_student_has_course_student2` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_scores_in_test`
--

LOCK TABLES `has_scores_in_test` WRITE;
/*!40000 ALTER TABLE `has_scores_in_test` DISABLE KEYS */;
INSERT INTO `has_scores_in_test` VALUES (1,2,1,'proforika',14,'2023-10-01'),(2,2,1,'diagwnisma',15,'2023-12-05'),(3,2,2,'diagwnisma',16,'2023-11-06'),(4,2,2,'test',15,'2023-11-25'),(5,2,7,'diagwnisma',20,'2023-11-01'),(6,2,7,'test',20,'2023-10-20'),(7,2,9,'proforika',18,'2023-10-13'),(8,2,9,'diagwnisma',7.5,'2023-12-14'),(9,122,5,'diagwnisma',17,'2023-12-10'),(10,122,1,'diagwnisma',16.5,'2023-12-08'),(11,2,6,'proforika',14.7,'2023-11-14'),(12,2,6,'diagwnisma',10,'2023-11-07'),(13,2,6,'test',12,'2023-11-06'),(14,62,8,'diagwnisma',7,'2023-11-03'),(15,62,8,'test',1,'2023-10-20'),(16,62,14,'diagwnisma',18,'2023-10-22'),(17,62,4,'diagwnisma',0,'2023-10-21'),(18,62,15,'diagwnisma',20,'2023-10-06'),(19,6,10,'proforika',19.5,'2023-11-20'),(20,6,10,'diagwnisma',17,'2023-12-01'),(21,6,9,'diagwnisma',13,'2023-12-02');
/*!40000 ALTER TABLE `has_scores_in_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_in_class`
--

DROP TABLE IF EXISTS `is_in_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `is_in_class` (
  `studentID` int NOT NULL,
  `classID` int NOT NULL,
  `in_year` year NOT NULL,
  PRIMARY KEY (`studentID`,`classID`,`in_year`),
  KEY `fk_student_has_class_class1_idx` (`classID`),
  KEY `fk_student_has_class_student1_idx` (`studentID`),
  CONSTRAINT `fk_student_has_class_class1` FOREIGN KEY (`classID`) REFERENCES `class` (`classID`),
  CONSTRAINT `fk_student_has_class_student1` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_in_class`
--

LOCK TABLES `is_in_class` WRITE;
/*!40000 ALTER TABLE `is_in_class` DISABLE KEYS */;
INSERT INTO `is_in_class` VALUES (2,1,2023),(23,1,2023),(23,1,2024),(47,1,2023),(49,1,2023),(58,1,2023),(62,1,2023),(73,1,2023),(79,1,2023),(81,1,2023),(102,1,2023),(105,1,2023),(113,1,2023),(123,1,2023),(136,1,2023),(145,1,2023),(153,1,2023),(10,2,2023),(22,2,2023),(34,2,2023),(50,2,2023),(51,2,2023),(54,2,2023),(65,2,2023),(70,2,2023),(92,2,2023),(97,2,2023),(109,2,2023),(120,2,2023),(130,2,2023),(131,2,2023),(134,2,2023),(135,2,2023),(148,2,2023),(6,3,2023),(9,3,2023),(16,3,2023),(21,3,2023),(31,3,2023),(32,3,2023),(35,3,2023),(39,3,2023),(41,3,2023),(61,3,2023),(68,3,2023),(86,3,2023),(95,3,2023),(106,3,2023),(117,3,2023),(122,3,2023),(149,3,2023),(3,4,2023),(7,4,2023),(17,4,2023),(24,4,2023),(42,4,2023),(43,4,2023),(53,4,2023),(59,4,2023),(60,4,2023),(75,4,2023),(77,4,2023),(94,4,2023),(107,4,2023),(128,4,2023),(137,4,2023),(147,4,2023),(150,4,2023),(1,5,2023),(14,5,2023),(18,5,2023),(30,5,2023),(40,5,2023),(84,5,2023),(89,5,2023),(98,5,2023),(100,5,2023),(104,5,2023),(110,5,2023),(118,5,2023),(129,5,2023),(132,5,2023),(133,5,2023),(139,5,2023),(141,5,2023),(44,6,2023),(48,6,2023),(57,6,2023),(63,6,2023),(66,6,2023),(69,6,2023),(76,6,2023),(78,6,2023),(83,6,2023),(87,6,2023),(88,6,2023),(90,6,2023),(93,6,2023),(115,6,2023),(124,6,2023),(143,6,2023),(151,6,2023),(4,7,2023),(5,7,2023),(11,7,2023),(13,7,2023),(28,7,2023),(29,7,2023),(36,7,2023),(37,7,2023),(56,7,2023),(80,7,2023),(91,7,2023),(101,7,2023),(103,7,2023),(119,7,2023),(121,7,2023),(142,7,2023),(152,7,2023),(8,8,2023),(15,8,2023),(26,8,2023),(33,8,2023),(38,8,2023),(46,8,2023),(52,8,2023),(67,8,2023),(85,8,2023),(96,8,2023),(99,8,2023),(111,8,2023),(112,8,2023),(114,8,2023),(116,8,2023),(125,8,2023),(126,8,2023),(12,9,2023),(19,9,2023),(25,9,2023),(27,9,2023),(45,9,2023),(55,9,2023),(64,9,2023),(71,9,2023),(72,9,2023),(74,9,2023),(82,9,2023),(108,9,2023),(127,9,2023),(138,9,2023),(140,9,2023),(144,9,2023),(146,9,2023);
/*!40000 ALTER TABLE `is_in_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_teached_in_from`
--

DROP TABLE IF EXISTS `is_teached_in_from`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `is_teached_in_from` (
  `classID` int NOT NULL,
  `courseID` int NOT NULL,
  `teacherID` int NOT NULL,
  `in_year` year NOT NULL,
  PRIMARY KEY (`classID`,`courseID`,`teacherID`,`in_year`),
  KEY `fk_class_has_course_course1_idx` (`courseID`),
  KEY `fk_class_has_course_class1_idx` (`classID`),
  KEY `fk_class_has_course_teacher_idx` (`teacherID`),
  CONSTRAINT `fk_class_has_course_class1` FOREIGN KEY (`classID`) REFERENCES `class` (`classID`),
  CONSTRAINT `fk_class_has_course_course1` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`),
  CONSTRAINT `fk_class_has_course_teacher` FOREIGN KEY (`teacherID`) REFERENCES `teacher` (`teacherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_teached_in_from`
--

LOCK TABLES `is_teached_in_from` WRITE;
/*!40000 ALTER TABLE `is_teached_in_from` DISABLE KEYS */;
INSERT INTO `is_teached_in_from` VALUES (1,1,6,2023),(2,1,6,2023),(3,1,6,2023),(1,2,2,2023),(2,2,2,2023),(3,2,2,2023),(1,3,2,2023),(2,3,2,2023),(3,3,2,2023),(1,4,11,2023),(2,4,11,2023),(3,4,11,2023),(1,5,2,2023),(2,5,2,2023),(3,5,2,2023),(1,6,11,2023),(2,6,11,2023),(3,6,11,2023),(1,7,8,2023),(2,7,8,2023),(3,7,8,2023),(1,8,4,2023),(2,8,4,2023),(3,8,4,2023),(1,9,1,2023),(2,9,1,2023),(3,9,1,2023),(1,10,1,2023),(2,10,1,2023),(3,10,1,2023),(1,11,7,2023),(2,11,7,2023),(3,11,7,2023),(1,12,14,2023),(2,12,14,2023),(3,12,14,2023),(7,13,8,2023),(8,13,8,2023),(9,13,8,2023),(1,14,3,2023),(2,14,3,2023),(3,14,3,2023),(1,15,13,2023),(2,15,13,2023),(3,15,13,2023),(1,16,13,2023),(2,16,13,2023),(3,16,13,2023),(1,17,10,2023),(2,17,10,2023),(3,17,10,2023),(1,18,10,2023),(2,18,10,2023),(3,18,10,2023),(4,20,6,2023),(5,20,6,2023),(6,20,6,2023),(4,21,5,2023),(5,21,5,2023),(6,21,5,2023),(4,22,5,2023),(5,22,5,2023),(6,22,5,2023),(4,23,2,2023),(5,23,2,2023),(6,23,2,2023),(4,24,5,2023),(5,24,5,2023),(6,24,5,2023),(4,25,11,2023),(5,25,11,2023),(6,25,11,2023),(4,26,1,2023),(5,26,1,2023),(6,26,1,2023),(4,27,12,2023),(5,27,12,2023),(6,27,12,2023),(4,28,4,2023),(5,28,4,2023),(6,28,4,2023),(4,29,4,2023),(5,29,4,2023),(6,29,4,2023),(4,30,12,2023),(5,30,12,2023),(6,30,12,2023),(4,31,7,2023),(5,31,7,2023),(6,31,7,2023),(4,32,14,2023),(5,32,14,2023),(6,32,14,2023),(4,33,3,2023),(5,33,3,2023),(6,33,3,2023),(4,34,13,2023),(5,34,13,2023),(6,34,13,2023),(4,35,13,2023),(5,35,13,2023),(6,35,13,2023),(4,36,10,2023),(5,36,10,2023),(6,36,10,2023),(4,37,10,2023),(5,37,10,2023),(6,37,10,2023),(7,39,6,2023),(8,39,6,2023),(9,39,6,2023),(7,40,9,2023),(8,40,9,2023),(9,40,9,2023),(7,41,9,2023),(8,41,9,2023),(9,41,9,2023),(7,42,9,2023),(8,42,9,2023),(9,42,9,2023),(7,43,5,2023),(8,43,5,2023),(9,43,5,2023),(7,44,9,2023),(8,44,9,2023),(9,44,9,2023),(7,45,12,2023),(8,45,12,2023),(9,45,12,2023),(7,46,8,2023),(8,46,8,2023),(9,46,8,2023),(7,47,4,2023),(8,47,4,2023),(9,47,4,2023),(7,48,4,2023),(8,48,4,2023),(9,48,4,2023),(7,49,7,2023),(8,49,7,2023),(9,49,7,2023),(7,50,14,2023),(8,50,14,2023),(9,50,14,2023),(7,52,10,2023),(8,52,10,2023),(9,52,10,2023),(7,53,10,2023),(8,53,10,2023),(9,53,10,2023),(7,54,13,2023),(8,54,13,2023),(9,54,13,2023),(7,55,13,2023),(8,55,13,2023),(9,55,13,2023),(7,56,3,2023),(8,56,3,2023),(9,56,3,2023);
/*!40000 ALTER TABLE `is_teached_in_from` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent` (
  `parentID` int NOT NULL AUTO_INCREMENT,
  `parName` varchar(45) NOT NULL,
  `parPhone` varchar(45) NOT NULL,
  `parEmail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`parentID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent`
--

LOCK TABLES `parent` WRITE;
/*!40000 ALTER TABLE `parent` DISABLE KEYS */;
INSERT INTO `parent` VALUES (1,'Παπαδόπουλος Αλέξανδρος','2101234567','alex.papadopoulos@example.com'),(2,'Γεωργίου Σοφία','2102345678','sophia.georgiou@example.com'),(3,'Καρας Νίκος','2103456789','nikos.karas@example.com'),(4,'Βλάχου Ελένη','2104567890','eleni.vlachou@example.com'),(5,'Κατσαρός Δημήτρης','2105678901','dimitris.katsaros@example.com'),(6,'Παππά Ζωή','2106789012','zoe.pappa@example.com'),(7,'Αντωνόπουλος Ανδρέας','2107890123','andreas.antonopoulos@example.com'),(8,'Κουλούρη Μαρία','2108901234','maria.koulouri@example.com'),(9,'Δημητρίου Θάνος','2109012345','thanos.dimitriou@example.com'),(10,'Χρονόπουλου Κατερίνα','2100123456','katerina.chronopoulou@example.com'),(11,'Νικολαΐδης Βασίλειος','2101234567','panos.nikolaidis@example.com'),(12,'Ζερβού Άννα','2102345678','anna.zervou@example.com'),(13,'Παπανδρέου Γιάννης','2103456789','yiannis.papandreou@example.com'),(14,'Καραμανλή Δέσποινα','2104567890','despina.karamanli@example.com'),(15,'Οικονόμου Κυριάκος','2105678901','kostas.oikonomou@example.com'),(16,'Μανώλη Όλγα','2106789012','olga.manoli@example.com'),(17,'Πετράκης Σταύρος','2107890123','stavros.petrakis@example.com'),(18,'Βασιλόπουλου Χριστίνα','2108901234','christina.vasilopoulou@example.com'),(19,'Μιχαλόπουλος Σπύρος','2109012345','spyros.michalopoulos@example.com'),(20,'Τσακαλίδη Ηλέκτρα','2100123456','elektra.tsakalidi@example.com');
/*!40000 ALTER TABLE `parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participates_in`
--

DROP TABLE IF EXISTS `participates_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participates_in` (
  `studentID` int NOT NULL,
  `projectID` int NOT NULL,
  PRIMARY KEY (`studentID`,`projectID`),
  KEY `fk_student_has_project_project1_idx` (`projectID`),
  KEY `fk_student_has_project_student1_idx` (`studentID`),
  CONSTRAINT `fk_student_has_project_project1` FOREIGN KEY (`projectID`) REFERENCES `project` (`projectID`),
  CONSTRAINT `fk_student_has_project_student1` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participates_in`
--

LOCK TABLES `participates_in` WRITE;
/*!40000 ALTER TABLE `participates_in` DISABLE KEYS */;
INSERT INTO `participates_in` VALUES (7,1),(8,1),(9,1),(10,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(11,6),(12,6),(13,6),(14,6),(15,6),(16,6),(17,6),(18,6),(19,6),(26,13),(27,13),(28,13),(29,13),(30,13),(31,16),(32,16),(33,16),(34,16),(35,16),(36,19),(37,19),(38,19),(39,19),(40,20),(41,20),(42,20),(43,20),(44,20);
/*!40000 ALTER TABLE `participates_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `projectID` int NOT NULL AUTO_INCREMENT,
  `prjName` varchar(45) NOT NULL,
  PRIMARY KEY (`projectID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'Χορωδία'),(2,'Παραδοσιακοί χοροί'),(3,'Εκπαιδευτικό πρόγραμμα Τεχνολογίας'),(4,'Εκδηλώσεις Τέχνης'),(5,'Εκπαιδευτικό πρόγραμμα Επιστήμης'),(6,'Ανακύκλωση και Περιβάλλον'),(7,'Μαθητικό Δημοσιογραφικό Εργαστήρι'),(8,'Σπορ και Φυσική Δραστηριότητα'),(9,'Μουσικό Σχολικό Σύνολο'),(10,'Διατροφή και Υγεία'),(11,'Καλλιτεχνική Ανάπτυξη'),(12,'Εκδρομές και Περιηγήσεις'),(13,'Σχολικό Θέατρο'),(14,'Γλωσσικές Δραστηριότητες'),(15,'Ιστορικές Εκδηλώσεις'),(16,'Αθλητικές Δραστηριότητες'),(17,'Εκπαιδευτικό Πρόγραμμα Μαθηματικών'),(18,'Καλλιτεχνικό Εργαστήριο'),(19,'Δημιουργική Γραφή'),(20,'Προγραμματισμός και Ρομποτική');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `studentID` int NOT NULL AUTO_INCREMENT,
  `stdName` varchar(45) NOT NULL,
  `stdBirthDate` date NOT NULL,
  `stdAddress` varchar(45) NOT NULL,
  `parentID` int DEFAULT NULL,
  PRIMARY KEY (`studentID`),
  KEY `fk_student_parent_idx` (`parentID`),
  CONSTRAINT `fk_student_parent` FOREIGN KEY (`parentID`) REFERENCES `parent` (`parentID`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Παπαδόπουλος Αλέξανδρος','2010-05-15','Τσιμισκή 12, Θεσσαλονίκη',NULL),(2,'Γεωργίου Ολυμπία','2011-12-28','Βηλαρά 25, Θεσσαλονίκη',2),(3,'Καρας Νίκος','2010-08-10','Εγνατία 8, Θεσσαλονίκη',NULL),(4,'Βλάχου Γεωργία','2009-03-17','Παραλία 33, Θεσσαλονίκη',4),(5,'Κατσαρός Δημήτρης','2009-09-22','Ναυαρίνου 16, Θεσσαλονίκη',NULL),(6,'Παππά Ζωή','2011-11-05','Στρατηγού Καλλάρη 21, Θεσσαλονίκη',NULL),(7,'Αντωνόπουλος Βασίλειος','2010-07-03','Μητροπόλεως 9, Θεσσαλονίκη',7),(8,'Κουλούρη Μαρία','2009-02-20','Αγίας Σοφίας 14, Θεσσαλονίκη',NULL),(9,'Χρονόπουλου Γεωργία','2011-04-25','Παλαμά 5, Θεσσαλονίκη',10),(10,'Νικολαΐδης Πάνος','2011-10-18','Καρόλου Δημητρίου 22, Θεσσαλονίκη',11),(11,'Ζερβού Χριστίνα','2009-08-07','Κασσάνδρου 11, Θεσσαλονίκη',12),(12,'Παπανδρέου Βασίλειος','2009-01-30','Κομνηνών 7, Θεσσαλονίκη',13),(13,'Καραμανλή Δέσποινα','2009-07-15','Κολοκοτρώνη 18, Θεσσαλονίκη',14),(14,'Οικονόμου Κώστας','2010-03-08','Κατσιγιάννη 3, Θεσσαλονίκη',15),(15,'Μανώλη Όλγα','2009-11-11','Αγίου Δημητρίου 29, Θεσσαλονίκη',16),(16,'Πετράκης Σπύρος','2011-05-03','Σοφοκλέους 17, Θεσσαλονίκη',17),(17,'Βασιλόπουλου Χριστίνα','2010-09-28','Τρικούπη 24, Θεσσαλονίκη',NULL),(18,'Μιχαλόπουλος Αθανάσιος','2010-06-22','Νικηφόρου Φωκά 15, Θεσσαλονίκη',19),(19,'Τσακαλίδη Χριστίνα','2009-12-14','Προξένου Κορομηλά 8, Θεσσαλονίκη',20),(20,'Καραγιάννης Αλέξης','2011-10-25','Εθνικής Αμύνης 37, Θεσσαλονίκη',NULL),(21,'Σταματοπούλου Ελένη','2011-04-18','Αριστοτέλους 16, Θεσσαλονίκη',NULL),(22,'Παπαδοπούλου Μαρία','2011-02-12','Φραγκομιχάλα 11, Θεσσαλονίκη',NULL),(23,'Βασιλόπουλος Κυριάκος','2011-08-27','Περδίκα 9, Θεσσαλονίκη',NULL),(24,'Καραμπέτσου Ειρήνη','2010-12-30','Κορυτσάς 18, Θεσσαλονίκη',NULL),(25,'Μπούταρης Αλέξανδρος','2009-06-03','Κολωνού 14, Θεσσαλονίκη',NULL),(26,'Κοντογεώργη Κατερίνα','2009-01-22','Κατσιμίδη 7, Θεσσαλονίκη',NULL),(27,'Πετρίδης Στέλιος','2009-09-15','Παυσανίου 31, Θεσσαλονίκη',NULL),(28,'Καρακατσάνη Ελισάβετ','2009-03-28','Κυριάκου Ματζούρα 8, Θεσσαλονίκη',NULL),(29,'Αθανασιάδης Παναγιώτης','2009-10-20','Κύπρου 4, Θεσσαλονίκη',NULL),(30,'Παναγιώτου Ευαγγελία','2010-05-13','Λευκώνα 17, Θεσσαλονίκη',NULL),(31,'Στεφανίδης Κώστας','2011-11-06','Πέτρου Δρίκου 23, Θεσσαλονίκη',NULL),(32,'Σταυρίδου Ελισάβετ','2011-05-29','Λένορμαν 12, Θεσσαλονίκη',NULL),(33,'Μανωλίδης Αριστείδης','2009-01-02','Καπετάν Λαμπρίδη 9, Θεσσαλονίκη',NULL),(34,'Παπαγεωργίου Μαρία','2011-06-25','Αναγνωστάρη 14, Θεσσαλονίκη',NULL),(35,'Σωτηρίου Παναγιώτης','2011-02-18','Αγαμέμνονος 20, Θεσσαλονίκη',NULL),(36,'Βασιλείου Ελένη','2009-07-11','Κλεομένους 25, Θεσσαλονίκη',NULL),(37,'Δημητρακόπουλος Κωνσταντίνος','2009-12-24','Εμμανουήλ Παππά 8, Θεσσαλονίκη',NULL),(38,'Κωνσταντινίδου Αγγελική','2009-08-17','Καραολή Δημητρίου 31, Θεσσαλονίκη',NULL),(39,'Παπανικολάου Αριστοτέλης','2011-07-15','Τσιμισκή 12, Θεσσαλονίκη',NULL),(40,'Μιχαηλίδη Ευαγγελία','2010-03-28','Βηλαρά 25, Θεσσαλονίκη',NULL),(41,'Παππάς Σπύρος','2011-11-06','Εγνατία 8, Θεσσαλονίκη',6),(42,'Καραγιάννη Καλλιόπη','2010-05-03','Παραλία 33, Θεσσαλονίκη',NULL),(43,'Κοντός Αναστάσιος','2010-09-22','Ναυαρίνου 16, Θεσσαλονίκη',NULL),(44,'Παπαδοπούλου Μαρίνα','2010-01-18','Στρατηγού Καλλάρη 21, Θεσσαλονίκη',NULL),(45,'Παναγιώτου Γεώργιος','2009-08-05','Μητροπόλεως 9, Θεσσαλονίκη',NULL),(46,'Μανωλάκη Αικατερίνη','2009-04-12','Αγίας Σοφίας 14, Θεσσαλονίκη',NULL),(47,'Αθανασίου Παναγιώτης','2011-10-01','Καρόλου Δημητρίου 22, Θεσσαλονίκη',NULL),(48,'Παπανδρέου Γεώργιος','2010-05-24','Κομνηνών 7, Θεσσαλονίκη',13),(49,'Καραμανλή Κατερίνα','2011-09-09','Κολοκοτρώνη 18, Θεσσαλονίκη',14),(50,'Οικονόμου Νικόλαος','2011-02-02','Κατσιγιάννη 3, Θεσσαλονίκη',15),(51,'Μανώλη Ολυμπία','2011-10-30','Αγίου Δημητρίου 29, Θεσσαλονίκη',16),(52,'Μιχαλόπουλος Σταματης','2009-07-02','Νικηφόρου Φωκά 15, Θεσσαλονίκη',19),(53,'Κατσαμπής Ευάγγελος','2010-08-21','Τσιμισκή 12, Θεσσαλονίκη',NULL),(54,'Παναγιώτου Κατερίνα','2011-04-15','Βηλαρά 25, Θεσσαλονίκη',NULL),(55,'Παπαδόπουλος Δημήτριος','2009-12-03','Εγνατία 8, Θεσσαλονίκη',NULL),(56,'Βασιλοπούλου Ελένη','2009-03-27','Παραλία 33, Θεσσαλονίκη',18),(57,'Παπαντωνίου Χρήστος','2010-10-10','Ναυαρίνου 16, Θεσσαλονίκη',NULL),(58,'Κοντογεώργη Μαρία','2011-06-02','Στρατηγού Καλλάρη 21, Θεσσαλονίκη',NULL),(59,'Αργυροπούλου Σοφία','2010-11-15','Μητροπόλεως 9, Θεσσαλονίκη',NULL),(60,'Καραμπέτσος Αναστάσιος','2010-07-08','Αγίας Σοφίας 14, Θεσσαλονίκη',NULL),(61,'Παπαϊωάννου Κατερίνα','2011-03-28','Παλαμά 5, Θεσσαλονίκη',NULL),(62,'Δημητρίου Παναγιώτης','2011-12-14','Καρόλου Δημητρίου 22, Θεσσαλονίκη',NULL),(63,'Χατζηδημητρίου Άννα','2010-02-07','Κασσάνδρου 11, Θεσσαλονίκη',NULL),(64,'Παπαδόπουλος Γιάννης','2009-09-30','Κομνηνών 7, Θεσσαλονίκη',NULL),(65,'Κυριακίδη Δέσποινα','2011-01-05','Κολοκοτρώνη 18, Θεσσαλονίκη',NULL),(66,'Στεφανίδης Γεώργιος','2010-05-23','Κολοκοτρώνη 18, Θεσσαλονίκη',NULL),(67,'Μανωλίδης Όλγα','2009-11-11','Αγίου Δημητρίου 29, Θεσσαλονίκη',NULL),(68,'Στεφανίδης Σταύρος','2011-04-15','Σοφοκλέους 17, Θεσσαλονίκη',NULL),(69,'Χριστοπούλου Χριστίνα','2010-10-30','Τρικούπη 24, Θεσσαλονίκη',NULL),(70,'Μιχαλόπουλος Αντώνιος','2011-07-02','Νικηφόρου Φωκά 15, Θεσσαλονίκη',19),(71,'Μπακαλάκου Ηλέκτρα','2009-02-25','Προξένου Κορομηλά 8, Θεσσαλονίκη',NULL),(72,'Παπαδοπούλου Ευαγγέλια','2009-09-17','Τσιμισκή 12, Θεσσαλονίκη',1),(73,'Καραμπέτσος Σπύρος','2011-05-03','Βηλαρά 25, Θεσσαλονίκη',NULL),(74,'Παπαϊωάννου Αθανάσιος','2009-12-10','Εγνατία 8, Θεσσαλονίκη',NULL),(75,'Βασιλόπουλου Κατερίνα','2010-07-25','Παραλία 33, Θεσσαλονίκη',18),(76,'Παπανικολάου Δημήτριος','2010-02-18','Ναυαρίνου 16, Θεσσαλονίκη',NULL),(77,'Κατσαμπή Μαρία','2010-11-05','Στρατηγού Καλλάρη 21, Θεσσαλονίκη',NULL),(78,'Παπαϊωάννου Γεώργιος','2010-08-30','Μητροπόλεως 9, Θεσσαλονίκη',NULL),(79,'Αθανασίου Αικατερίνη','2011-03-15','Αγίας Σοφίας 14, Θεσσαλονίκη',NULL),(80,'Καραγιάννη Κατερίνα','2009-01-20','Παλαμά 5, Θεσσαλονίκη',NULL),(81,'Δημητρακόπουλος Παναγιώτης','2011-11-18','Καρόλου Δημητρίου 22, Θεσσαλονίκη',NULL),(82,'Χριστοφορίδης Άννα','2009-09-07','Κασσάνδρου 11, Θεσσαλονίκη',NULL),(83,'Παπαναστασίου Γιάννης','2010-02-24','Κομνηνών 7, Θεσσαλονίκη',NULL),(84,'Κυριακίδου Δέσποινα','2010-10-09','Κολοκοτρώνη 18, Θεσσαλονίκη',NULL),(85,'Κωνσταντοπούλου Όλγα','2009-11-20','Αγίου Δημητρίου 29, Θεσσαλονίκη',NULL),(86,'Σταυρίδης Σταύρος','2011-06-12','Σοφοκλέους 17, Θεσσαλονίκη',NULL),(87,'Παπαδοπούλου Χριστίνα','2010-11-05','Τρικούπη 24, Θεσσαλονίκη',NULL),(88,'Παπαδόπουλος Σπύρος','2010-08-02','Νικηφόρου Φωκά 15, Θεσσαλονίκη',19),(89,'Μπακαλάκη Ηλέκτρα','2010-03-12','Προξένου Κορομηλά 8, Θεσσαλονίκη',NULL),(90,'Παπαδοπούλου Ευγενία','2010-03-15','Τσιμισκή 12, Θεσσαλονίκη',1),(91,'Καραμπέτσος Βασίλειος','2009-08-21','Βηλαρά 25, Θεσσαλονίκη',NULL),(92,'Παπαϊωάννου Αθανάσιος','2011-02-10','Εγνατία 8, Θεσσαλονίκη',NULL),(93,'Παπανικολάου Αντώνιος','2010-12-18','Ναυαρίνου 16, Θεσσαλονίκη',NULL),(94,'Κοντογεώργη Μαρία','2010-11-05','Στρατηγού Καλλάρη 21, Θεσσαλονίκη',NULL),(95,'Παπαναστασίου Χρήστος','2011-10-28','Πλατεία Αριστοτέλους 30, Θεσσαλονίκη',NULL),(96,'Μαρίνη Ελένη','2009-11-12','Λεωφ. Νίκης 15, Θεσσαλονίκη',NULL),(97,'Μαραγκός Αθανάσιος','2011-09-18','Περδίκα 9, Θεσσαλονίκη',NULL),(98,'Παναγιωτόπουλος Αλέξανδρος','2010-02-24','Κασσάνδρου 11, Θεσσαλονίκη',NULL),(99,'Κοντογεώργη Αγγελική','2009-07-15','Πλατεία Αριστοτέλους 30, Θεσσαλονίκη',NULL),(100,'Κοτσιάνης Γρηγόριος','2010-05-18','Παύλου Μελά 14, Θεσσαλονίκη',NULL),(101,'Δημητρίου Ελευθέριος','2009-09-21','Αγίου Δημητρίου 8, Θεσσαλονίκη',9),(102,'Κατσίρα Ελένη','2011-01-10','Βασιλίσσης Όλγας 23, Θεσσαλονίκη',NULL),(103,'Γιαννακούλια Αικατερίνη','2009-12-05','Εγνατία 17, Θεσσαλονίκη',NULL),(104,'Κοτσιάνη Θεοδώρα','2010-11-18','Περδίκα 9, Θεσσαλονίκη',NULL),(105,'Αθανασίου Ανδρέας','2011-07-25','Ναυαρίνου 32, Θεσσαλονίκη',NULL),(106,'Παπαϊωάννου Κλεάνθη','2011-03-08','Μητροπόλεως 12, Θεσσαλονίκη',NULL),(107,'Καραγιάννη Ιφιγένεια','2010-08-15','Βαλαωρίτου 19, Θεσσαλονίκη',NULL),(108,'Παπαδοπούλου Πηνελόπη','2009-06-30','Κομνηνών 7, Θεσσαλονίκη',NULL),(109,'Μιχαλόπουλος Κωνσταντίνος','2011-04-12','Κασσάνδρου 15, Θεσσαλονίκη',NULL),(110,'Παναγιώτου Μαρία','2010-09-23','Παραλία 8, Θεσσαλονίκη',NULL),(111,'Κυριακίδης Δημήτρης','2009-11-17','Κατσιγιάννη 3, Θεσσαλονίκη',NULL),(112,'Κοτσιάνης Ιωάννης','2009-07-19','Παύλου Μελά 14, Θεσσαλονίκη',NULL),(113,'Κατσίρα Γεωργία','2011-01-10','Βασιλίσσης Όλγας 23, Θεσσαλονίκη',NULL),(114,'Κοτσιάνη Βασιλική','2009-01-28','Περδίκα 9, Θεσσαλονίκη',NULL),(115,'Παπανικολάου Χαράλαμπος','2010-06-23','Βαλαωρίτου 19, Θεσσαλονίκη',NULL),(116,'Μιχαηλίδη Σταυρούλα','2009-02-15','Αγίου Νικολάου 14, Θεσσαλονίκη',NULL),(117,'Σταματάκης Αντώνης','2011-08-30','Κορυτσάς 22, Θεσσαλονίκη',NULL),(118,'Κούρκουλη Σοφία','2010-12-08','Παλαιολόγου 15, Θεσσαλονίκη',NULL),(119,'Κολοκοτρώνης Χαράλαμπος','2009-10-24','Πεύκα 7, Θεσσαλονίκη',NULL),(120,'Παπαδοπούλου Ελευθερία','2011-03-15','Τσιμισκή 12, Θεσσαλονίκη',1),(121,'Καραμπέτσος Σταύρος','2009-08-21','Βηλαρά 25, Θεσσαλονίκη',NULL),(122,'Παπανικολάου Αθανάσιος','2011-12-18','Ναυαρίνου 16, Θεσσαλονίκη',NULL),(123,'Κοντογεώργη Μαργαρίτα','2011-11-05','Στρατηγού Καλλάρη 21, Θεσσαλονίκη',NULL),(124,'Παπαναστασίου Κώστας','2010-10-28','Πλατεία Αριστοτέλους 30, Θεσσαλονίκη',NULL),(125,'Μαρίνη Ελισσάβετ','2009-01-12','Περδίκα 11, Θεσσαλονίκη',NULL),(126,'Μαραγκός Αντώνιος','2009-01-01','Περδίκα 9, Θεσσαλονίκη',NULL),(127,'Παναγιωτόπουλος Ανανίας','2009-02-24','Κασσάνδρου 11, Θεσσαλονίκη',NULL),(128,'Κοντογεώργη Χριστίνα','2010-07-15','Πλατεία Αριστοτέλους 30, Θεσσαλονίκη',NULL),(129,'Κοτσιάνης Κωνσταντίνος','2010-06-29','Παύλου Μελά 14, Θεσσαλονίκη',NULL),(130,'Κοτσιάνη Μαρία','2011-11-18','Περδίκα 9, Θεσσαλονίκη',NULL),(131,'Παπαδοπούλου Παναγιώτα','2011-06-30','Κομνηνών 7, Θεσσαλονίκη',NULL),(132,'Μιχαλόπουλος Μάριος','2010-04-12','Αγίου Δημητρίου 29, Θεσσαλονίκη',NULL),(133,'Παναγιώτου Μαρκέλα','2010-01-23','Παραλία 8, Θεσσαλονίκη',NULL),(134,'Κυριακίδης Κοσμάς','2011-11-17','Κατσιγιάννη 3, Θεσσαλονίκη',NULL),(135,'Κοτσιάνης Χρήστος','2011-05-01','Παύλου Μελά 14, Θεσσαλονίκη',NULL),(136,'Κατσίρα Μαρία','2011-01-10','Βασιλίσσης Όλγας 23, Θεσσαλονίκη',NULL),(137,'Κοτσιάνη Αθανασία','2010-08-18','Περδίκα 9, Θεσσαλονίκη',NULL),(138,'Παπανικολάου Φίλιππος','2009-06-23','Βαλαωρίτου 19, Θεσσαλονίκη',NULL),(139,'Μιχαηλίδη Νικολέττα','2010-11-15','Αγίου Νικολάου 14, Θεσσαλονίκη',NULL),(140,'Σταματάκης Αριστείδης','2009-08-30','Κορυτσάς 22, Θεσσαλονίκη',NULL),(141,'Κούρκουλη Αμαλία','2010-01-08','Παλαιολόγου 15, Θεσσαλονίκη',NULL),(142,'Κολοκοτρώνης Νεκτάριος','2009-10-24','Πεύκα 7, Θεσσαλονίκη',NULL),(143,'Παπασταμάτης Κωνσταντίνος','2010-06-12','Αριστοτέλους 9, Θεσσαλονίκη',NULL),(144,'Παπαδοπούλου Αικατερίνη','2009-09-25','Παλαιολόγου 22, Θεσσαλονίκη',NULL),(145,'Κατσίφη Παναγιώτα','2011-04-30','Κορυτσάς 14, Θεσσαλονίκη',NULL),(146,'Παπαϊωάννου Σταύρος','2009-11-18','Βαλαωρίτου 7, Θεσσαλονίκη',NULL),(147,'Κοντογεώργη Αγγελική','2010-08-02','Λεωφ. Νίκης 16, Θεσσαλονίκη',NULL),(148,'Μαρκάκη Αναστασία','2011-03-15','Κολοκοτρώνη 12, Θεσσαλονίκη',NULL),(149,'Παπαϊωάννου Μιχαήλ','2011-09-28','Πεύκα 5, Θεσσαλονίκη',NULL),(150,'Κορυφαίος Κωνσταντίνος','2010-05-14','Βασιλίσσης Όλγας 33, Θεσσαλονίκη',NULL),(151,'Σαμαρτζής Νικόλαος','2010-11-30','Κασσάνδρου 18, Θεσσαλονίκη',NULL),(152,'Γερμανού Μαρία','2009-06-25','Μητροπόλεως 11, Θεσσαλονίκη',NULL),(153,'Βαλιάκης Μιλτιάδης','2011-05-01','Ανδρέου Δημητρίου 12, Θεσσαλονίκη',NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `students_in_classes_per_year`
--

DROP TABLE IF EXISTS `students_in_classes_per_year`;
/*!50001 DROP VIEW IF EXISTS `students_in_classes_per_year`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `students_in_classes_per_year` AS SELECT 
 1 AS `stdName`,
 1 AS `className`,
 1 AS `in_year`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `students_in_projects`
--

DROP TABLE IF EXISTS `students_in_projects`;
/*!50001 DROP VIEW IF EXISTS `students_in_projects`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `students_in_projects` AS SELECT 
 1 AS `stdName`,
 1 AS `className`,
 1 AS `prjName`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `teacherID` int NOT NULL AUTO_INCREMENT,
  `teachName` varchar(45) NOT NULL,
  `teachEmail` varchar(45) DEFAULT NULL,
  `teachPhone` varchar(45) NOT NULL,
  PRIMARY KEY (`teacherID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'Παπανικολάου Αριστοτέλης','aristotelis.papanikolaou@example.com','2101112233'),(2,'Μιχαηλίδη Ευαγγελία','evaggelia.michailidi@example.com','2102223344'),(3,'Παππάς Σπύρος','spyros.pappas@example.com','2103334455'),(4,'Καραγιάννη Καλλιόπη','kalliopi.karagianni@example.com','2104445566'),(5,'Κοντός Αναστάσιος','anastasios.kontos@example.com','2105556677'),(6,'Παπαδοπούλου Μαρίνα','marina.papadopoulou@example.com','2106667788'),(7,'Παναγιώτου Γεώργιος','georgios.panagiotou@example.com','2107778899'),(8,'Μανωλάκη Αικατερίνη','aikaterini.manolaki@example.com','2108889900'),(9,'Στεφανίδης Χρήστος','christos.stefanidis@example.com','2109990011'),(10,'Σταματοπούλου Ελισάβετ','elisavet.stamatopoulou@example.com','2100101122'),(11,'Αθανασίου Παναγιώτης','panagiotis.athanasiou@example.com','2101212233'),(12,'Λαμπρίδου Ευτυχία','eftychia.lampridou@example.com','2102323344'),(13,'Χατζηγεωργίου Αλέξης','alexis.chatzigeorgiou@example.com','2103434455'),(14,'Σαράντη Ελένη','eleni.saranti@example.com','2104545566');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `teacher_classes_courses`
--

DROP TABLE IF EXISTS `teacher_classes_courses`;
/*!50001 DROP VIEW IF EXISTS `teacher_classes_courses`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `teacher_classes_courses` AS SELECT 
 1 AS `teachName`,
 1 AS `courseName`,
 1 AS `className`,
 1 AS `in_year`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `was_absence_in_course`
--

DROP TABLE IF EXISTS `was_absence_in_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `was_absence_in_course` (
  `absenceID` int NOT NULL AUTO_INCREMENT,
  `studentID` int NOT NULL,
  `courseID` int NOT NULL,
  `absType` enum('adikaiologiti','dikaiologimeni') NOT NULL,
  `absHours` int NOT NULL,
  `absDate` date NOT NULL,
  PRIMARY KEY (`absenceID`,`studentID`,`courseID`),
  KEY `fk_student_has_course_course3_idx` (`courseID`),
  KEY `fk_student_has_course_student3_idx` (`studentID`),
  CONSTRAINT `fk_student_has_course_course3` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`),
  CONSTRAINT `fk_student_has_course_student3` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `was_absence_in_course`
--

LOCK TABLES `was_absence_in_course` WRITE;
/*!40000 ALTER TABLE `was_absence_in_course` DISABLE KEYS */;
INSERT INTO `was_absence_in_course` VALUES (1,2,1,'dikaiologimeni',1,'2023-10-21'),(2,2,2,'adikaiologiti',1,'2023-10-21'),(3,2,3,'adikaiologiti',1,'2023-10-21'),(4,2,4,'adikaiologiti',1,'2023-10-21'),(5,2,5,'adikaiologiti',1,'2023-10-21'),(6,2,2,'dikaiologimeni',1,'2023-10-22'),(7,2,3,'dikaiologimeni',1,'2023-10-22'),(8,2,4,'dikaiologimeni',1,'2023-10-22'),(9,2,5,'adikaiologiti',1,'2023-10-22'),(10,2,6,'adikaiologiti',1,'2023-10-22'),(11,2,7,'adikaiologiti',1,'2023-10-23'),(12,2,3,'adikaiologiti',1,'2023-10-23'),(13,2,8,'adikaiologiti',1,'2023-10-23'),(14,2,9,'dikaiologimeni',1,'2023-10-23'),(15,10,1,'adikaiologiti',1,'2023-10-21'),(16,10,2,'adikaiologiti',1,'2023-10-21'),(17,10,3,'dikaiologimeni',1,'2023-10-21'),(18,10,4,'dikaiologimeni',1,'2023-10-21'),(19,10,5,'dikaiologimeni',1,'2023-10-21'),(20,10,2,'adikaiologiti',1,'2023-10-22'),(21,10,3,'adikaiologiti',1,'2023-10-22'),(22,10,4,'dikaiologimeni',1,'2023-10-22'),(23,10,5,'adikaiologiti',1,'2023-10-22'),(24,10,6,'dikaiologimeni',1,'2023-10-22'),(25,10,7,'dikaiologimeni',1,'2023-10-23'),(26,10,3,'dikaiologimeni',1,'2023-10-23'),(27,10,8,'adikaiologiti',1,'2023-10-23'),(28,10,9,'adikaiologiti',1,'2023-10-23');
/*!40000 ALTER TABLE `was_absence_in_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `absences_students_detailed`
--

/*!50001 DROP VIEW IF EXISTS `absences_students_detailed`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `absences_students_detailed` AS select `student`.`stdName` AS `stdName`,`parent`.`parName` AS `parName`,`class`.`className` AS `className`,`was_absence_in_course`.`absType` AS `absType`,`was_absence_in_course`.`absHours` AS `Hours`,`was_absence_in_course`.`absDate` AS `Date`,`course`.`courseName` AS `courseName` from (((((`was_absence_in_course` join `student` on((`was_absence_in_course`.`studentID` = `student`.`studentID`))) join `is_in_class` on((`was_absence_in_course`.`studentID` = `is_in_class`.`studentID`))) join `class` on((`is_in_class`.`classID` = `class`.`classID`))) join `parent` on((`parent`.`parentID` = `student`.`parentID`))) join `course` on((`course`.`courseID` = `was_absence_in_course`.`courseID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `absences_students_summary`
--

/*!50001 DROP VIEW IF EXISTS `absences_students_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `absences_students_summary` AS select `student`.`stdName` AS `stdName`,`parent`.`parName` AS `parName`,`class`.`className` AS `className`,`was_absence_in_course`.`absType` AS `absType`,sum(`was_absence_in_course`.`absHours`) AS `Hours` from ((((`was_absence_in_course` join `student` on((`was_absence_in_course`.`studentID` = `student`.`studentID`))) join `is_in_class` on((`was_absence_in_course`.`studentID` = `is_in_class`.`studentID`))) join `class` on((`is_in_class`.`classID` = `class`.`classID`))) join `parent` on((`parent`.`parentID` = `student`.`parentID`))) group by `student`.`stdName`,`was_absence_in_course`.`absType` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `grades_students_period`
--

/*!50001 DROP VIEW IF EXISTS `grades_students_period`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `grades_students_period` AS select `student`.`stdName` AS `stdName`,`course`.`courseName` AS `courseName`,`has_grades_in`.`gradePeriod` AS `gradePeriod`,`has_grades_in`.`gradeVal` AS `gradeVal`,`has_grades_in`.`in_year` AS `in_year` from ((`has_grades_in` join `student` on((`has_grades_in`.`studentID` = `student`.`studentID`))) join `course` on((`course`.`courseID` = `has_grades_in`.`courseID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `grades_students_period_average`
--

/*!50001 DROP VIEW IF EXISTS `grades_students_period_average`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `grades_students_period_average` AS select `student`.`stdName` AS `stdName`,`has_grades_in`.`gradePeriod` AS `gradePeriod`,cast(avg(`has_grades_in`.`gradeVal`) as decimal(10,1)) AS `AverageVal`,`has_grades_in`.`in_year` AS `year` from (`has_grades_in` join `student` on((`has_grades_in`.`studentID` = `student`.`studentID`))) group by `student`.`stdName`,`has_grades_in`.`gradePeriod`,`has_grades_in`.`in_year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `students_in_classes_per_year`
--

/*!50001 DROP VIEW IF EXISTS `students_in_classes_per_year`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `students_in_classes_per_year` AS select `student`.`stdName` AS `stdName`,`class`.`className` AS `className`,`is_in_class`.`in_year` AS `in_year` from ((`student` join `is_in_class` on((`student`.`studentID` = `is_in_class`.`studentID`))) join `class` on((`class`.`classID` = `is_in_class`.`classID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `students_in_projects`
--

/*!50001 DROP VIEW IF EXISTS `students_in_projects`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `students_in_projects` AS select `student`.`stdName` AS `stdName`,`class`.`className` AS `className`,`project`.`prjName` AS `prjName` from ((((`student` join `participates_in` on((`student`.`studentID` = `participates_in`.`studentID`))) join `project` on((`project`.`projectID` = `participates_in`.`projectID`))) join `is_in_class` on((`is_in_class`.`studentID` = `student`.`studentID`))) join `class` on((`class`.`classID` = `is_in_class`.`classID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `teacher_classes_courses`
--

/*!50001 DROP VIEW IF EXISTS `teacher_classes_courses`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `teacher_classes_courses` AS select `teacher`.`teachName` AS `teachName`,`course`.`courseName` AS `courseName`,`class`.`className` AS `className`,`is_teached_in_from`.`in_year` AS `in_year` from (((`is_teached_in_from` join `teacher` on((`is_teached_in_from`.`teacherID` = `teacher`.`teacherID`))) join `class` on((`class`.`classID` = `is_teached_in_from`.`classID`))) join `course` on((`course`.`courseID` = `is_teached_in_from`.`courseID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-20 21:06:10
