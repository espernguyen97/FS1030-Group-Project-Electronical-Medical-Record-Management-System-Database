-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: emrsystem
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `medical_history`
--

DROP TABLE IF EXISTS `medical_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_history` (
  `Medical_H` int NOT NULL AUTO_INCREMENT,
  `PatientID` int NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Date` varchar(45) NOT NULL,
  `Fever` varchar(45) NOT NULL,
  `Cough` varchar(45) NOT NULL,
  `Shortness_Breathe` varchar(45) NOT NULL,
  `Conjunctivitis` varchar(45) NOT NULL,
  PRIMARY KEY (`Medical_H`),
  KEY `PatientId_idx` (`PatientID`),
  KEY `Usernamee_idx` (`Username`),
  CONSTRAINT `PatientId_MH` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`),
  CONSTRAINT `Username_MH` FOREIGN KEY (`Username`) REFERENCES `users` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_history`
--

LOCK TABLES `medical_history` WRITE;
/*!40000 ALTER TABLE `medical_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `medical_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `NoteID` int NOT NULL,
  `PatientID` int NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Date` datetime NOT NULL,
  `Note` varchar(2000) NOT NULL,
  PRIMARY KEY (`NoteID`),
  KEY `PatientID_idx` (`PatientID`),
  KEY `Username_Notes_idx` (`Username`),
  CONSTRAINT `PatientID_Notes` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`),
  CONSTRAINT `Username_Notes` FOREIGN KEY (`Username`) REFERENCES `users` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `PatientID` int NOT NULL AUTO_INCREMENT,
  `DOB` date NOT NULL,
  `OHIP` varchar(25) NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(45) NOT NULL,
  `Province` varchar(45) NOT NULL,
  `PostalCode` varchar(45) NOT NULL,
  `Phone_Number` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Age` varchar(45) NOT NULL,
  `Last_Edit` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PatientID`),
  UNIQUE KEY `PatientID_UNIQUE` (`PatientID`),
  UNIQUE KEY `OHIP_UNIQUE` (`OHIP`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'1985-02-02','123456789101','Bart','Samperson','123 Test St','Toronto','Ontario','K7L 9A9','1234567897','Test@test.com','20','2021-07-30 00:00:00'),(2,'1985-02-03','1234567891013','Adrian','Alexandra','124 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-07-30 00:00:00'),(3,'1985-02-04','1234567891015','Alann','Alison','125 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-07-30 00:00:00'),(4,'1985-02-05','1975308625624','Alexander','Amanda','126 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-07-22 00:00:00'),(5,'1985-02-06','2530864176581','Andrew','Amelia','127 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-07-23 00:00:00'),(6,'1985-02-07','3086419727538','Anthony','Amy','128 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-07-24 00:00:00'),(7,'1985-02-08','3641975278495','Austin','Andrea','129 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-07-25 00:00:00'),(8,'1985-02-09','4197530829452','Benjamin','Angela','130 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-07-26 00:00:00'),(9,'1985-02-10','4753086380409','Blake','Anna','131 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-07-27 00:00:00'),(10,'1985-02-11','5308641931366','Boris','Anne','132 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-07-28 00:00:00'),(11,'1985-02-12','5864197482323','Brandon','Audrey','133 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-07-29 00:00:00'),(12,'1985-02-13','6419753033280','Brian','Ava','134 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-07-30 00:00:00'),(13,'1985-02-14','6975308584237','Cameron','Bella','135 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-07-31 00:00:00'),(14,'1985-02-15','7530864135194','Carl','Bernadette','136 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-01 00:00:00'),(15,'1985-02-16','8086419686151','Abigail','Carol','137 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-02 00:00:00'),(16,'1985-02-17','8641975237108','Alexandra','Caroline','138 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-03 00:00:00'),(17,'1985-02-18','9197530788065','Alison','Carolyn','139 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-04 00:00:00'),(18,'1985-02-19','9753086339022','Amanda','Chloe','140 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-05 00:00:00'),(19,'1985-02-20','10308641889979','Amelia','Claire','141 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-06 00:00:00'),(20,'1985-02-21','10864197440936','Amy','Deirdre','142 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-07 00:00:00'),(21,'1985-02-22','11419752991893','Andrea','Diana','143 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-08 00:00:00'),(22,'1985-02-23','11975308542850','Angela','Diane','144 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-09 00:00:00'),(23,'1985-02-24','12530864093807','Anna','Donna','145 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-10 00:00:00'),(24,'1985-02-25','13086419644764','Anne','Dorothy','146 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-11 00:00:00'),(25,'1985-02-26','13641975195721','Audrey','Elizabeth','147 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-12 00:00:00'),(26,'1985-02-27','14197530746678','Blake','Ella','148 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-13 00:00:00'),(27,'1985-02-28','14753086297635','Boris','Emily','149 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-14 00:00:00'),(28,'1985-03-01','15308641848592','Brandon','Emma','150 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-15 00:00:00'),(29,'1985-03-02','15864197399549','Brian','Faith','151 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-16 00:00:00'),(30,'1985-03-03','16419752950506','Cameron','Felicity','152 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-17 00:00:00'),(31,'1985-03-04','16975308501463','Carl','Fiona','153 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-18 00:00:00'),(32,'1985-03-05','17530864052420','Abigail','Gabrielle','154 Test St','Toronto','Ontario','K7L 9A4','1234567897','Test@test.com','20','2021-08-19 00:00:00'),(33,'1985-03-06','18086419603377','Alexandra','Grace','155 Test St','Toronto','Ontario','K7L 9A4','1234567897','Test@test.com','20','2021-08-20 00:00:00'),(34,'1985-02-02','12345678910144','Adam','Abigail','123 Test St','Toronto','Ontario','K7L 9A9','1234567897','Test@test.com','20','2021-07-19 00:00:00');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revision_history`
--

DROP TABLE IF EXISTS `revision_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revision_history` (
  `RevisionID` int NOT NULL,
  `UserID` int NOT NULL,
  `PatientID` int NOT NULL,
  `Date` date DEFAULT NULL,
  `Revision` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`RevisionID`),
  KEY `PatientID_Revision_idx` (`PatientID`),
  KEY `UserId_Revision_idx` (`UserID`),
  CONSTRAINT `PatientID_Revision` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`),
  CONSTRAINT `UserId_Revision` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revision_history`
--

LOCK TABLES `revision_history` WRITE;
/*!40000 ALTER TABLE `revision_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `revision_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `TicketID` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `Date` datetime NOT NULL,
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`TicketID`),
  KEY `Username_idx` (`Username`),
  CONSTRAINT `Username_tickets` FOREIGN KEY (`Username`) REFERENCES `users` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,'testusername','Test@test.com','2021-07-31 00:00:00','MY fingers Hurt when I press the keyboard to hard!'),(2,'testusername','Test@test.com','2021-07-20 00:00:00','can you please unblock Netflix I cant live without my Oprah!!'),(3,'testusername','Test@test.com','2021-07-21 00:00:00','My computer is running so slow can you help with that?');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Password` varchar(500) NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Job_Position` varchar(45) NOT NULL,
  `Admin_Flag` tinyint(1) NOT NULL,
  `Last_Login` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `UserID_UNIQUE` (`UserID`),
  UNIQUE KEY `Username_UNIQUE` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'testusername','test@test.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','test','testerson','doctor',0,'2021-07-31 04:49:10'),(2,'Dave','dave@dave.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','dave','H','Admin',1,'2019-01-01 10:10:10'),(3,'Chris','Chris@Chris.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Chris','G','Admin',1,'2019-01-01 10:10:10'),(4,'Steven','Steven@Steven.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Steven','W','Admin',1,'2019-01-01 10:10:10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visits`
--

DROP TABLE IF EXISTS `visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visits` (
  `VisitID` int NOT NULL AUTO_INCREMENT,
  `PatientID` int NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Visit_Date` datetime NOT NULL,
  PRIMARY KEY (`VisitID`),
  KEY `PatientID_idx` (`PatientID`),
  KEY `Username_idx` (`Username`),
  CONSTRAINT `PatientID` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`),
  CONSTRAINT `Username` FOREIGN KEY (`Username`) REFERENCES `users` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visits`
--

LOCK TABLES `visits` WRITE;
/*!40000 ALTER TABLE `visits` DISABLE KEYS */;
/*!40000 ALTER TABLE `visits` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-31  0:50:38
