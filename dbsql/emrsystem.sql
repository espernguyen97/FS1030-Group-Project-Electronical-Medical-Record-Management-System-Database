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
  `Allergies` varchar(255) NOT NULL,
  `XrayURL` varchar(255) DEFAULT NULL,
  `Covid_Checked` varchar(45) NOT NULL,
  `LabResults` varchar(255) DEFAULT NULL,
  `Prescriptions` varchar(45) DEFAULT NULL,
  `BillStatus` varchar(45) DEFAULT NULL,
  `Imunizations` varchar(255) DEFAULT NULL,
  `Insurance_Provider` varchar(45) DEFAULT NULL,
  `InsuredStatus` varchar(45) DEFAULT NULL,
  `Smoker` varchar(45) DEFAULT NULL,
  `Chronic_Pain` varchar(45) DEFAULT NULL,
  `Past_Procedures` varchar(45) DEFAULT NULL,
  `Weight` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Medical_H`),
  KEY `PatientId_idx` (`PatientID`),
  KEY `Usernamee_idx` (`Username`),
  CONSTRAINT `PatientId_MH` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`),
  CONSTRAINT `Username_MH` FOREIGN KEY (`Username`) REFERENCES `users` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_history`
--

LOCK TABLES `medical_history` WRITE;
/*!40000 ALTER TABLE `medical_history` DISABLE KEYS */;
INSERT INTO `medical_history` VALUES (1,2,'Dave','2021-07-31 15:53:46','No','Pollen','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Lung_X-ray.jpg/220px-Lung_X-ray.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Gabapentin,Meloxicam,Sublocade','Paid','Diphtheria,Hepatitis A/B','Manulife','Insured','Yes','No','Appendectomy,CT Scan','125'),(2,3,'Chris','2021-07-31 15:53:36','No','Pollen','https://4rai.com/images/easyblog_articles/155/chest-xray.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Naltrexone,Xanax','Paid','Haemophilus,Hepatitis A/B','Sunlife Financial.','Insured','No','Yes','Cataract Surgery ','167'),(3,11,'Steven','2021-07-31 15:53:26','No','Pollen','https://blog.universalmedicalinc.com/wp-content/uploads/sites/264/gallery/postimages/cache/photodune-2618118-hands-xray-l.JPG-nggid042182-ngg0dyn-0x0x100-00f0w010c010r110f110r010t010.JPG','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Viagra,Trazodone','Paid','Hepatitis,HPV','GreatWest Life.','Insured','Yes','No','Echocardiogram','242'),(4,4,'Dave','2021-07-31 15:53:16','No','Pollen','https://media.istockphoto.com/photos/human-thoracic-cavity-xray-film-picture-id1212285302?k=6&m=1212285302&s=612x612&w=0&h=E-BxYqpgfeW0IM4roPkF3Yd5PP71lP9AHMnJG7FnbRo=','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Probuphine,Lofexidine','Paid','Influenza,Measles','GMS Health Insurance','Insured','No','Yes','Heart Bypass Surgery.','146'),(5,2,'Chris','2021-08-02 23:52:53','No','Dander,Dust','https://healthitanalytics.com/images/site/article_headers/_normal/ThinkstockPhotos-658813850.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Otezla','Paid','Measles,Haemophilus ','None','Not Insured','Yes','No','None','278'),(7,4,'Steven','2021-08-02 23:58:37','No','Dander','https://cdn-prod.medicalnewstoday.com/content/images/articles/219/219970/x-ray-skull-from-right-side.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','None','OutStanding','Measles','None','Not Insured','Yes','Yes','MRI,Hip Replacement Surgery','198');
/*!40000 ALTER TABLE `medical_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `NoteID` int NOT NULL AUTO_INCREMENT,
  `PatientID` int NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Date` datetime NOT NULL,
  `Note` varchar(2000) NOT NULL,
  PRIMARY KEY (`NoteID`),
  UNIQUE KEY `NoteID_UNIQUE` (`NoteID`),
  KEY `PatientID_idx` (`PatientID`),
  KEY `Username_Notes_idx` (`Username`),
  CONSTRAINT `PatientID_Notes` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`),
  CONSTRAINT `Username_Notes` FOREIGN KEY (`Username`) REFERENCES `users` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,1,'Dave','2021-08-02 00:51:11','asdasdasdasd'),(2,2,'Chris','2021-02-02 00:52:21','asfasf'),(3,3,'Dave','2021-05-02 00:51:11','asdasdasdasd'),(4,4,'Chris','2021-05-02 00:52:21','asfasf'),(5,5,'Dave','2021-08-02 00:51:11','asdasdasdasd'),(6,5,'Chris','2021-01-02 00:52:21','asfasf'),(7,6,'Dave','2021-08-02 00:51:11','asdasdasdasd'),(8,2,'Steven','2021-01-02 00:52:21','asfasf'),(9,11,'Dave','2021-08-02 00:51:11','asdasdasdasd'),(10,2,'Steven','2021-08-02 00:52:21','asfasf'),(11,23,'Dave','2021-02-01 00:51:11','asdasdasdasd'),(12,2,'Steven','2021-02-02 00:52:21','asfasf'),(13,21,'Dave','2021-07-02 00:51:11','asdasdasdasd'),(14,2,'Chris','2000-12-02 00:52:21','asfasf'),(15,1,'Dave','2021-08-02 02:46:55','23232321312 '),(16,2,'Chris','2021-08-02 04:27:52','astastastastat'),(18,21,'Chris','2021-08-02 04:28:44','12112'),(19,1,'Steven','2021-08-02 22:02:58','aatwtwa');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'1985-01-31','123456789101','Sample','Patient','123 Test St','Toronto','Ontario','K7L 9A9','17093334444','Test@test.com','20','2021-08-03 18:38:59'),(2,'1985-02-03','1234567891013','Adrian','Alexandra','124 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-08-03 18:55:33'),(3,'1985-02-04','1234567891015','Alann','Alison','125 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-08-03 18:55:57'),(4,'1985-02-05','1975308625624','Alexander','Amanda','126 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-07-22 00:00:00'),(5,'1985-02-06','2530864176581','Andrew','Amelia','127 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-07-23 00:00:00'),(6,'1985-02-07','3086419727538','Anthony','Amy','128 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-07-24 00:00:00'),(7,'1985-02-08','3641975278495','Austin','Andrea','129 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-07-25 00:00:00'),(8,'1985-02-14','4197530829452','Benjamin','Angela','130 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-08-02 03:38:14'),(9,'1985-02-10','4753086380409','Blake','Anna','131 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-07-27 00:00:00'),(10,'1985-02-11','5308641931366','Boris','Anne','132 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-07-28 00:00:00'),(11,'1985-02-12','5864197482323','Brandon','Audrey','133 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-07-29 00:00:00'),(12,'1985-02-13','6419753033280','Brian','Ava','134 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-07-30 00:00:00'),(13,'1985-02-14','6975308584237','Cameron','Bella','135 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-07-31 00:00:00'),(14,'1985-02-15','7530864135194','Carl','Bernadette','136 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-01 00:00:00'),(15,'1985-02-16','8086419686151','Abigail','Carol','137 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-03 18:57:26'),(16,'1985-02-17','8641975237108','Alexandra','Caroline','138 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-03 00:00:00'),(17,'1985-02-18','9197530788065','Alison','Carolyn','139 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-04 00:00:00'),(18,'1985-02-19','9753086339022','Amanda','Chloe','140 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-05 00:00:00'),(19,'1985-02-20','10308641889979','Amelia','Claire','141 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-06 00:00:00'),(20,'1985-02-21','10864197440936','Amy','Deirdre','142 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-07 00:00:00'),(21,'1985-02-22','11419752991893','Andrea','Diana','143 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-08 00:00:00'),(22,'1985-02-23','11975308542850','Angela','Diane','144 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-09 00:00:00'),(23,'1985-02-24','12530864093807','Anna','Donna','145 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-10 00:00:00'),(24,'1985-02-25','13086419644764','Anne','Dorothy','146 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-11 00:00:00'),(25,'1985-02-26','13641975195721','Audrey','Elizabeth','147 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-12 00:00:00'),(26,'1985-02-27','14197530746678','Blake','Ella','148 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-13 00:00:00'),(27,'1985-02-28','14753086297635','Boris','Emily','149 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-14 00:00:00'),(28,'1985-03-01','15308641848592','Brandon','Emma','150 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-15 00:00:00'),(29,'1985-03-02','15864197399549','Brian','Faith','151 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-16 00:00:00'),(30,'1985-03-03','16419752950506','Cameron','Felicity','152 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-17 00:00:00'),(31,'1985-03-04','16975308501463','Carl','Fiona','153 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-18 00:00:00'),(32,'1985-03-05','17530864052420','Abigail','Gabrielle','154 Test St','Toronto','Ontario','K7L 9A4','1234567897','Test@test.com','20','2021-08-03 19:00:34'),(33,'1985-03-06','18086419603377','Alexandra','Grace','155 Test St','Toronto','Ontario','K7L 9A4','1234567897','Test@test.com','20','2021-08-20 00:00:00'),(34,'1985-02-02','12345678910144','Adam','Abigail','123 Test St','Toronto','Ontario','K7L 9A9','1234567897','Test@test.com','20','2021-07-19 00:00:00'),(37,'2021-08-10','asfasf1f12f12f12f12f1','test','test','test','123 test ave','Alberta','T2G 3A7','+15555555555','test@test.com','123','2021-08-02 00:11:14'),(38,'2021-08-10','152152521521152215','Doo','Wop','test','123 test ave','Alberta','T2G 3A7','+15555555555','test@test.com','152','2021-08-02 04:30:40');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revision_history`
--

DROP TABLE IF EXISTS `revision_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revision_history` (
  `UserID` int NOT NULL,
  `PatientID` int NOT NULL,
  `Revision` varchar(1000) NOT NULL,
  `Date` datetime DEFAULT CURRENT_TIMESTAMP,
  KEY `PatientID_Revision_idx` (`PatientID`),
  KEY `UserId_Revision_idx` (`UserID`),
  CONSTRAINT `PatientID_Revision` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`) ON DELETE CASCADE,
  CONSTRAINT `UserId_Revision` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revision_history`
--

LOCK TABLES `revision_history` WRITE;
/*!40000 ALTER TABLE `revision_history` DISABLE KEYS */;
INSERT INTO `revision_history` VALUES (1,1,'First_Name changed from Bart to Sample by test testerson','2021-07-31 19:20:52'),(1,1,'Last_Name changed from Samperson to Patient by test testerson','2021-07-31 19:20:52'),(1,1,'Phone_Number changed from 1234567897 to 17093334444 by test testerson','2021-07-31 19:20:52'),(1,8,'DOB changed from 1985-02-09T05:00:00.000Z to 1985-02-14 by test testerson','2021-08-01 23:38:25'),(2,1,'DOB changed from 1985-02-02T05:00:00.000Z to 1985-02-02 by dave H','2021-08-02 00:29:28'),(2,38,'DOB changed from 2021-08-10T04:00:00.000Z to 2021-08-10 by dave H','2021-08-02 00:30:57'),(2,38,'First_Name changed from test to Doo by dave H','2021-08-02 00:30:57'),(2,38,'Last_Name changed from 125521 to Wop by dave H','2021-08-02 00:30:57'),(2,1,'DOB changed from 1985-02-02T05:00:00.000Z to 1985-01-31 by dave H','2021-08-03 14:39:03'),(2,1,'PatientID changed from 1 to 1 by dave H','2021-08-03 14:39:03'),(2,2,'DOB changed from 1985-02-03T05:00:00.000Z to 1985-02-03 by dave H','2021-08-03 14:55:34'),(2,2,'PatientID changed from 2 to 2 by dave H','2021-08-03 14:55:34'),(2,3,'DOB changed from 1985-02-04T05:00:00.000Z to 1985-02-04 by dave H','2021-08-03 14:55:50'),(2,3,'PatientID changed from 3 to 3 by dave H','2021-08-03 14:55:50'),(2,15,'DOB changed from 1985-02-16T05:00:00.000Z to 1985-02-16 by dave H','2021-08-03 14:57:28'),(2,15,'PatientID changed from 15 to 15 by dave H','2021-08-03 14:57:28'),(2,32,'DOB changed from 1985-03-05T05:00:00.000Z to 1985-03-05 by dave H','2021-08-03 15:00:35'),(2,32,'PatientID changed from 32 to 32 by dave H','2021-08-03 15:00:35');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `UserID_UNIQUE` (`UserID`),
  UNIQUE KEY `Username_UNIQUE` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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

-- Dump completed on 2021-08-03 19:56:25
