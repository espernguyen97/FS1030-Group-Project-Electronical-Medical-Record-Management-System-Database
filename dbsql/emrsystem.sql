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
  `Fever` varchar(45) DEFAULT NULL,
  `Allergies` varchar(255) DEFAULT NULL,
  `XrayURL` varchar(255) DEFAULT NULL,
  `Covid_Checked` varchar(45) NOT NULL,
  `LabResults` varchar(255) DEFAULT NULL,
  `Prescriptions` varchar(45) DEFAULT NULL,
  `BillStatus` varchar(45) DEFAULT NULL,
  `Immunizations` varchar(255) DEFAULT NULL,
  `Insurance_Provider` varchar(45) DEFAULT NULL,
  `InsuredStatus` varchar(45) DEFAULT NULL,
  `Smoker` varchar(45) DEFAULT NULL,
  `Chronic_Pain` varchar(45) DEFAULT NULL,
  `Past_Procedures` varchar(45) DEFAULT NULL,
  `Weight` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Medical_H`),
  KEY `PatientId_idx` (`PatientID`),
  KEY `Usernamee_idx` (`Username`),
  CONSTRAINT `PatientId_MH` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`) ON DELETE CASCADE,
  CONSTRAINT `Username_MH` FOREIGN KEY (`Username`) REFERENCES `users` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_history`
--

LOCK TABLES `medical_history` WRITE;
/*!40000 ALTER TABLE `medical_history` DISABLE KEYS */;
INSERT INTO `medical_history` VALUES (1,1,'Dave','2021-07-31 15:53:46','No','Pollen','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Lung_X-ray.jpg/220px-Lung_X-ray.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Gabapentin,Meloxicam,Sublocade','Paid','Diphtheria,Hepatitis A/B','Manulife','Insured','Yes','No','Appendectomy,CT Scan','125'),(2,2,'Chris','2021-07-31 15:53:36','No','Pollen','https://4rai.com/images/easyblog_articles/155/chest-xray.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Naltrexone,Xanax','Paid','Haemophilus,Hepatitis A/B','Sunlife Financial.','Insured','No','Yes','Cataract Surgery','167'),(3,3,'Steven','2021-07-31 15:53:26','No','Pollen','https://blog.universalmedicalinc.com/wp-content/uploads/sites/264/gallery/postimages/cache/photodune-2618118-hands-xray-l.JPG-nggid042182-ngg0dyn-0x0x100-00f0w010c010r110f110r010t010.JPG','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Viagra,Trazodone','Paid','Hepatitis,HPV','GreatWest Life.','Insured','Yes','No','Echocardiogram','242'),(4,4,'Dave','2021-07-31 15:53:16','No','Pollen','https://media.istockphoto.com/photos/human-thoracic-cavity-xray-film-picture-id1212285302?k=6&m=1212285302&s=612x612&w=0&h=E-BxYqpgfeW0IM4roPkF3Yd5PP71lP9AHMnJG7FnbRo=','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Probuphine,Lofexidine','Paid','Influenza,Measles','GMS Health Insurance','Insured','No','Yes','Heart Bypass Surgery.','146'),(5,5,'Chris','2021-08-02 23:52:53','No','Dander,Dust','https://healthitanalytics.com/images/site/article_headers/_normal/ThinkstockPhotos-658813850.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Otezla','Paid','Measles,Haemophilus','None','Not Insured','Yes','No','None','278'),(6,6,'Steven','2021-08-02 23:58:37','No','Dander','https://cdn-prod.medicalnewstoday.com/content/images/articles/219/219970/x-ray-skull-from-right-side.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','None','OutStanding','Measles','None','Not Insured','Yes','Yes','MRI,Hip Replacement Surgery','198'),(7,7,'Chris','2021-08-04 00:46:47','Yes','Pollen','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Lung_X-ray.jpg/220px-Lung_X-ray.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Gabapentin,Meloxicam,Sublocade','Paid','Diphtheria,Hepatitis A/B','Manulife','Insured','Yes','No','Appendectomy,CT Scan','125'),(8,8,'Dave','2021-08-04 01:50:28','Yes','Pollen','https://4rai.com/images/easyblog_articles/155/chest-xray.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Naltrexone,Xanax','Paid','Haemophilus,Hepatitis A/B','Sunlife Financial.','Insured','No','Yes','Cataract Surgery','167'),(9,9,'Dave','2021-08-04 01:51:34','Yes','Pollen','https://blog.universalmedicalinc.com/wp-content/uploads/sites/264/gallery/postimages/cache/photodune-2618118-hands-xray-l.JPG-nggid042182-ngg0dyn-0x0x100-00f0w010c010r110f110r010t010.JPG','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Viagra,Trazodone','Paid','Hepatitis,HPV','GreatWest Life.','Insured','Yes','No','Echocardiogram','242'),(10,10,'Dave','2021-07-31 15:53:46','No','Pollen','https://media.istockphoto.com/photos/human-thoracic-cavity-xray-film-picture-id1212285302?k=6&m=1212285302&s=612x612&w=0&h=E-BxYqpgfeW0IM4roPkF3Yd5PP71lP9AHMnJG7FnbRo=','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Probuphine,Lofexidine','Paid','Influenza,Measles','GMS Health Insurance','Insured','No','Yes','Heart Bypass Surgery.','146'),(11,11,'Chris','2021-07-31 15:53:36','No','Dander,Dust','https://healthitanalytics.com/images/site/article_headers/_normal/ThinkstockPhotos-658813850.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Otezla','Paid','Measles,Haemophilus','None','Not Insured','Yes','No','None','278'),(12,12,'Steven','2021-07-31 15:53:26','No','Dander','https://cdn-prod.medicalnewstoday.com/content/images/articles/219/219970/x-ray-skull-from-right-side.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','None','OutStanding','Measles','None','Not Insured','Yes','Yes','MRI,Hip Replacement Surgery','198'),(13,13,'Dave','2021-07-31 15:53:16','No','Pollen','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Lung_X-ray.jpg/220px-Lung_X-ray.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Gabapentin,Meloxicam,Sublocade','Paid','Diphtheria,Hepatitis A/B','Manulife','Insured','Yes','No','Appendectomy,CT Scan','125'),(14,14,'Chris','2021-08-02 23:52:53','No','Pollen','https://4rai.com/images/easyblog_articles/155/chest-xray.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Naltrexone,Xanax','Paid','Haemophilus,Hepatitis A/B','Sunlife Financial.','Insured','No','Yes','Cataract Surgery','167'),(15,15,'Steven','2021-08-02 23:58:37','No','Pollen','https://blog.universalmedicalinc.com/wp-content/uploads/sites/264/gallery/postimages/cache/photodune-2618118-hands-xray-l.JPG-nggid042182-ngg0dyn-0x0x100-00f0w010c010r110f110r010t010.JPG','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Viagra,Trazodone','Paid','Hepatitis,HPV','GreatWest Life.','Insured','Yes','No','Echocardiogram','242'),(16,16,'Chris','2021-08-04 00:46:47','Yes','Pollen','https://media.istockphoto.com/photos/human-thoracic-cavity-xray-film-picture-id1212285302?k=6&m=1212285302&s=612x612&w=0&h=E-BxYqpgfeW0IM4roPkF3Yd5PP71lP9AHMnJG7FnbRo=','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Probuphine,Lofexidine','Paid','Influenza,Measles','GMS Health Insurance','Insured','No','Yes','Heart Bypass Surgery.','146'),(17,17,'Dave','2021-08-04 01:50:28','Yes','Dander,Dust','https://healthitanalytics.com/images/site/article_headers/_normal/ThinkstockPhotos-658813850.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Otezla','Paid','Measles,Haemophilus','None','Not Insured','Yes','No','None','278'),(18,18,'Dave','2021-08-04 01:51:34','Yes','Dander','https://cdn-prod.medicalnewstoday.com/content/images/articles/219/219970/x-ray-skull-from-right-side.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','None','OutStanding','Measles','None','Not Insured','Yes','Yes','MRI,Hip Replacement Surgery','198'),(19,19,'Dave','2021-07-31 15:53:46','No','Pollen','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Lung_X-ray.jpg/220px-Lung_X-ray.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Gabapentin,Meloxicam,Sublocade','Paid','Diphtheria,Hepatitis A/B','Manulife','Insured','Yes','No','Appendectomy,CT Scan','125'),(20,20,'Chris','2021-07-31 15:53:36','No','Pollen','https://4rai.com/images/easyblog_articles/155/chest-xray.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Naltrexone,Xanax','Paid','Haemophilus,Hepatitis A/B','Sunlife Financial.','Insured','No','Yes','Cataract Surgery','167'),(21,21,'Steven','2021-07-31 15:53:26','No','Pollen','https://blog.universalmedicalinc.com/wp-content/uploads/sites/264/gallery/postimages/cache/photodune-2618118-hands-xray-l.JPG-nggid042182-ngg0dyn-0x0x100-00f0w010c010r110f110r010t010.JPG','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Viagra,Trazodone','Paid','Hepatitis,HPV','GreatWest Life.','Insured','Yes','No','Echocardiogram','242'),(22,22,'Dave','2021-07-31 15:53:16','No','Pollen','https://media.istockphoto.com/photos/human-thoracic-cavity-xray-film-picture-id1212285302?k=6&m=1212285302&s=612x612&w=0&h=E-BxYqpgfeW0IM4roPkF3Yd5PP71lP9AHMnJG7FnbRo=','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Probuphine,Lofexidine','Paid','Influenza,Measles','GMS Health Insurance','Insured','No','Yes','Heart Bypass Surgery.','146'),(23,23,'Chris','2021-08-02 23:52:53','No','Dander,Dust','https://healthitanalytics.com/images/site/article_headers/_normal/ThinkstockPhotos-658813850.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Otezla','Paid','Measles,Haemophilus','None','Not Insured','Yes','No','None','278'),(24,24,'Steven','2021-08-02 23:58:37','Yes','Dander','https://cdn-prod.medicalnewstoday.com/content/images/articles/219/219970/x-ray-skull-from-right-side.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','None','OutStanding','Measles','None','Not Insured','Yes','Yes','MRI,Hip Replacement Surgery','198'),(25,25,'Chris','2021-08-04 00:46:47','Yes','Pollen','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Lung_X-ray.jpg/220px-Lung_X-ray.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Gabapentin,Meloxicam,Sublocade','Paid','Diphtheria,Hepatitis A/B','Manulife','Insured','Yes','No','Appendectomy,CT Scan','125'),(26,26,'Dave','2021-08-04 01:50:28','Yes','Pollen','https://4rai.com/images/easyblog_articles/155/chest-xray.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Naltrexone,Xanax','Paid','Haemophilus,Hepatitis A/B','Sunlife Financial.','Insured','No','Yes','Cataract Surgery','167'),(27,27,'Dave','2021-08-04 01:51:34','No','Pollen','https://blog.universalmedicalinc.com/wp-content/uploads/sites/264/gallery/postimages/cache/photodune-2618118-hands-xray-l.JPG-nggid042182-ngg0dyn-0x0x100-00f0w010c010r110f110r010t010.JPG','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Viagra,Trazodone','Paid','Hepatitis,HPV','GreatWest Life.','Insured','Yes','No','Echocardiogram','242'),(28,28,'Dave','2021-07-31 15:53:46','No','Pollen','https://media.istockphoto.com/photos/human-thoracic-cavity-xray-film-picture-id1212285302?k=6&m=1212285302&s=612x612&w=0&h=E-BxYqpgfeW0IM4roPkF3Yd5PP71lP9AHMnJG7FnbRo=','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Probuphine,Lofexidine','Paid','Influenza,Measles','GMS Health Insurance','Insured','No','Yes','Heart Bypass Surgery.','146'),(29,29,'Chris','2021-07-31 15:53:36','No','Dander,Dust','https://healthitanalytics.com/images/site/article_headers/_normal/ThinkstockPhotos-658813850.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Otezla','Paid','Measles,Haemophilus','None','Not Insured','Yes','No','None','278'),(30,30,'Steven','2021-07-31 15:53:26','No','Dander','https://cdn-prod.medicalnewstoday.com/content/images/articles/219/219970/x-ray-skull-from-right-side.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','None','OutStanding','Measles','None','Not Insured','Yes','Yes','MRI,Hip Replacement Surgery','198'),(31,31,'Dave','2021-07-31 15:53:16','No','Pollen','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Lung_X-ray.jpg/220px-Lung_X-ray.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Gabapentin,Meloxicam,Sublocade','Paid','Diphtheria,Hepatitis A/B','Manulife','Insured','Yes','No','Appendectomy,CT Scan','125'),(32,32,'Chris','2021-08-02 23:52:53','No','Pollen','https://4rai.com/images/easyblog_articles/155/chest-xray.jpg','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Naltrexone,Xanax','Paid','Haemophilus,Hepatitis A/B','Sunlife Financial.','Insured','No','Yes','Cataract Surgery','167'),(33,33,'Steven','2021-08-02 23:58:37','Yes','Pollen','https://blog.universalmedicalinc.com/wp-content/uploads/sites/264/gallery/postimages/cache/photodune-2618118-hands-xray-l.JPG-nggid042182-ngg0dyn-0x0x100-00f0w010c010r110f110r010t010.JPG','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Viagra,Trazodone','Paid','Hepatitis,HPV','GreatWest Life.','Insured','Yes','No','Echocardiogram','242'),(34,34,'Chris','2021-08-04 00:46:47','Yes','Pollen','https://media.istockphoto.com/photos/human-thoracic-cavity-xray-film-picture-id1212285302?k=6&m=1212285302&s=612x612&w=0&h=E-BxYqpgfeW0IM4roPkF3Yd5PP71lP9AHMnJG7FnbRo=','Yes','https://i.ibb.co/SvW9py2/New-Project-6.png','Probuphine,Lofexidine','Paid','Influenza,Measles','GMS Health Insurance','Insured','No','Yes','Heart Bypass Surgery.','146'),(82,32,'Dave','2021-08-09 00:25:11','Yes','test','test','Yes','test','test','Paid','test','Manulife','Insured','Yes','Yes','test','123456'),(83,32,'Dave','2021-08-10 01:11:01','','','','','','','','','','','','','',''),(84,8,'Dave','2021-08-10 01:12:15','','','','Yes','','','OutStanding','','Manulife','','','','','');
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
  CONSTRAINT `PatientID_Notes` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`) ON DELETE CASCADE,
  CONSTRAINT `Username_Notes` FOREIGN KEY (`Username`) REFERENCES `users` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,1,'Dave','2021-08-02 00:51:11','Exhibits Symptoms of Back Pain'),(2,2,'Chris','2021-02-02 00:52:21','Exhibits Symptoms of Chronic Pain'),(3,3,'Dave','2021-05-02 00:51:11','Advised Patient to avoid Strenuous Activity'),(4,4,'Chris','2021-05-02 00:52:21','Advised Patient to Stay off leg'),(5,5,'Dave','2021-08-02 00:51:11','Assigned New Prescription'),(6,6,'Chris','2021-01-02 00:52:21','Topped Up Medications'),(7,7,'Dave','2021-08-02 00:51:11','Exhibits Symptoms of Psychosis'),(8,8,'Steven','2021-01-02 00:52:21','Exhibits Symptoms of Covid'),(9,9,'Dave','2021-08-02 00:51:11','Exhibits Symptoms of ChickenPox'),(10,10,'Steven','2021-08-02 00:52:21','Exhibits Symptoms of Back Pain'),(11,11,'Dave','2021-02-01 00:51:11','Exhibits Symptoms of Chronic Pain'),(12,12,'Steven','2021-02-02 00:52:21','Advised Patient to avoid Strenuous Activity'),(13,13,'Dave','2021-07-02 00:51:11','Advised Patient to Stay off leg'),(14,14,'Chris','2000-12-02 00:52:21','Assigned New Prescription'),(15,15,'Dave','2021-08-02 02:46:55','Topped Up Medications'),(16,16,'Chris','2021-08-02 04:27:52','Exhibits Symptoms of Psychosis'),(17,17,'Chris','2021-08-02 04:28:44','Exhibits Symptoms of Covid'),(18,18,'Dave','2021-08-02 22:02:58','Exhibits Symptoms of ChickenPox'),(19,19,'Chris','2021-08-02 00:51:11','Exhibits Symptoms of Back Pain'),(20,20,'Dave','2021-02-02 00:52:21','Exhibits Symptoms of Chronic Pain'),(21,21,'Steven','2021-05-02 00:51:11','Advised Patient to avoid Strenuous Activity'),(22,22,'Dave','2021-05-02 00:52:21','Advised Patient to Stay off leg'),(23,23,'Steven','2021-08-02 00:51:11','Assigned New Prescription'),(24,24,'Dave','2021-01-02 00:52:21','Topped Up Medications'),(25,25,'Steven','2021-08-02 00:51:11','Exhibits Symptoms of Psychosis'),(26,26,'Dave','2021-01-02 00:52:21','Exhibits Symptoms of Covid'),(27,27,'Chris','2021-08-02 00:51:11','Exhibits Symptoms of ChickenPox'),(28,28,'Dave','2021-08-02 00:52:21','Exhibits Symptoms of Back Pain'),(29,29,'Chris','2021-02-01 00:51:11','Exhibits Symptoms of Chronic Pain'),(30,30,'Chris','2021-02-02 00:52:21','Advised Patient to avoid Strenuous Activity'),(31,31,'Dave','2021-07-02 00:51:11','Advised Patient to Stay off leg'),(32,32,'Chris','2000-12-02 00:52:21','Assigned New Prescription'),(33,33,'Dave','2021-08-02 02:46:55','Topped Up Medications'),(34,34,'Steven','2021-08-02 04:27:52','Exhibits Symptoms of Psychosis'),(35,1,'Dave','2021-08-02 00:51:11','Exhibits Symptoms of Covid'),(36,2,'Steven','2021-02-02 00:52:21','Exhibits Symptoms of ChickenPox'),(37,3,'Dave','2021-05-02 00:51:11','Exhibits Symptoms of Back Pain'),(38,4,'Steven','2021-05-02 00:52:21','Exhibits Symptoms of Chronic Pain'),(39,5,'Dave','2021-08-02 00:51:11','Advised Patient to avoid Strenuous Activity'),(40,6,'Chris','2021-01-02 00:52:21','Advised Patient to Stay off leg'),(41,7,'Dave','2021-08-02 00:51:11','Assigned New Prescription'),(42,8,'Chris','2021-01-02 00:52:21','Topped Up Medications'),(43,9,'Chris','2021-08-02 00:51:11','Exhibits Symptoms of Psychosis'),(44,10,'Dave','2021-08-02 00:52:21','Exhibits Symptoms of Covid'),(45,11,'Chris','2021-02-01 00:51:11','Exhibits Symptoms of ChickenPox'),(46,12,'Dave','2021-02-02 00:52:21','Exhibits Symptoms of Back Pain'),(47,13,'Steven','2021-07-02 00:51:11','Exhibits Symptoms of Chronic Pain'),(48,14,'Dave','2000-12-02 00:52:21','Advised Patient to avoid Strenuous Activity'),(49,15,'Steven','2021-08-02 02:46:55','Advised Patient to Stay off leg'),(50,16,'Dave','2021-08-02 04:27:52','Assigned New Prescription'),(51,17,'Steven','2021-08-02 04:28:44','Topped Up Medications'),(52,18,'Dave','2021-08-02 22:02:58','Exhibits Symptoms of Psychosis'),(53,19,'Chris','2021-08-02 00:51:11','Exhibits Symptoms of Covid'),(54,20,'Dave','2021-02-02 00:52:21','Exhibits Symptoms of ChickenPox'),(55,21,'Chris','2021-05-02 00:51:11','Exhibits Symptoms of Back Pain'),(56,22,'Chris','2021-05-02 00:52:21','Exhibits Symptoms of Chronic Pain'),(57,23,'Dave','2021-08-02 00:51:11','Advised Patient to avoid Strenuous Activity'),(58,24,'Chris','2021-01-02 00:52:21','Advised Patient to Stay off leg'),(59,25,'Dave','2021-08-02 00:51:11','Assigned New Prescription'),(60,26,'Steven','2021-01-02 00:52:21','Topped Up Medications'),(61,27,'Dave','2021-08-02 00:51:11','Exhibits Symptoms of Psychosis'),(62,28,'Steven','2021-08-02 00:52:21','Exhibits Symptoms of Covid'),(63,29,'Dave','2021-02-01 00:51:11','Exhibits Symptoms of ChickenPox'),(64,30,'Steven','2021-02-02 00:52:21','Exhibits Symptoms of Back Pain'),(65,31,'Dave','2021-07-02 00:51:11','Exhibits Symptoms of Chronic Pain'),(66,32,'Chris','2000-12-02 00:52:21','Advised Patient to avoid Strenuous Activity'),(67,33,'Dave','2021-08-02 02:46:55','Advised Patient to Stay off leg'),(68,34,'Chris','2021-08-02 04:27:52','Assigned New Prescription'),(69,1,'Chris','2021-08-02 00:51:11','Topped Up Medications'),(70,2,'Dave','2021-02-02 00:52:21','Exhibits Symptoms of Psychosis'),(71,3,'Chris','2021-05-02 00:51:11','Exhibits Symptoms of Covid'),(72,4,'Dave','2021-05-02 00:52:21','Exhibits Symptoms of ChickenPox'),(73,5,'Steven','2021-08-02 00:51:11','Exhibits Symptoms of Back Pain'),(74,6,'Dave','2021-01-02 00:52:21','Exhibits Symptoms of Chronic Pain'),(75,82,'Chris','2021-08-04 02:51:37','Exhibits Symptoms of Chronic Pain');
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
  `PostalCode` varchar(10) NOT NULL,
  `Phone_Number` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Age` varchar(3) DEFAULT '',
  `Last_Edit` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PatientID`),
  UNIQUE KEY `PatientID_UNIQUE` (`PatientID`),
  UNIQUE KEY `OHIP_UNIQUE` (`OHIP`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'1985-01-31','123456789101','John','Carter','123 Test St','Toronto','Ontario','K7L 9A9','17093334444','Test@test.com','20','2021-08-03 22:44:00'),(2,'1985-02-03','1234567891013','Adrian','Phillips','124 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-08-03 22:44:00'),(3,'1985-02-04','1234567891015','Alann','Alison','125 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-08-03 18:55:57'),(4,'1985-02-05','1975308625624','Alexander','Jones','126 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-08-03 22:44:00'),(5,'1985-02-06','2530864176581','Andrew','Wilson','127 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-08-03 22:44:00'),(6,'1985-02-07','3086419727538','Anthony','Garcia','128 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-08-03 22:44:00'),(7,'1985-02-08','3641975278495','Austin','Jackson','129 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-08-03 22:44:00'),(8,'1985-02-14','4197530829452','Benjamin','Anderson','130 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-08-03 22:44:00'),(9,'1985-02-10','4753086380409','Blake','White','131 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-08-03 22:44:00'),(10,'1985-02-11','5308641931366','Boris','White','132 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-08-03 22:44:00'),(11,'1985-02-12','5864197482323','Brandon','Audrey','133 Test St','Toronto','Ontario','K7L 9A1','1234567897','Test@test.com','20','2021-07-29 00:00:00'),(12,'1985-02-13','6419753033280','Brian','Clark','134 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-03 22:44:00'),(13,'1985-02-14','6975308584237','Cameron','Bella','135 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-07-31 00:00:00'),(14,'1985-02-15','7530864135194','Carl','Perez','136 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-03 22:44:00'),(15,'1985-02-16','8086419686151','Abigail','Wright','137 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-03 22:44:00'),(16,'1985-02-17','8641975237108','Alexandra','Caroline','138 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-03 00:00:00'),(17,'1985-02-18','9197530788065','Alison','Green','139 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-03 22:44:00'),(18,'1985-02-19','9753086339022','Amanda','Chloe','140 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-05 00:00:00'),(19,'1985-02-20','10308641889979','Amelia','Adams','141 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-03 22:44:00'),(20,'1985-02-21','10864197440936','Amy','Deirdre','142 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-07 00:00:00'),(21,'1985-02-22','11419752991893','Andrea','Hall','143 Test St','Toronto','Ontario','K7L 9A2','1234567897','Test@test.com','20','2021-08-03 22:44:00'),(22,'1985-02-23','11975308542850','Angela','Hill','144 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-03 22:44:00'),(23,'1985-02-24','12530864093807','Anna','Donna','145 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-10 00:00:00'),(24,'1985-02-25','13086419644764','Anne','Dorothy','146 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-11 00:00:00'),(25,'1985-02-26','13641975195721','Audrey','Clark','147 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-03 22:44:00'),(26,'1985-02-27','14197530746678','Blake','Ella','148 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-13 00:00:00'),(27,'1985-02-28','14753086297635','Boris','Lopez','149 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-03 22:44:00'),(28,'1985-03-01','15308641848592','Brandon','Emma','150 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-15 00:00:00'),(29,'1985-03-02','15864197399549','Brian','Martin','151 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-03 22:44:00'),(30,'1985-03-03','16419752950506','Cameron','Taylor','152 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-03 22:44:00'),(31,'1985-03-04','16975308501463','Carl','Martinez','153 Test St','Toronto','Ontario','K7L 9A3','1234567897','Test@test.com','20','2021-08-03 22:44:00'),(32,'1985-03-05','17530864052420','Abigail','Miller','154 Test St','Toronto','Ontario','K7L 9A4','1234567897','Test@test.com','20','2021-08-10 16:49:14'),(33,'1985-03-06','18086419603377','Alexandra','Grace','155 Test St','Toronto','Ontario','K7L 9A4','1234567897','Test@test.com','20','2021-08-20 00:00:00'),(34,'1985-02-02','12345678910144','Adam','Carter','123 Test St','Toronto','Ontario','K7L 9A9','1234567897','Test@test.com','20','2021-08-03 22:44:00'),(37,'2021-08-10','asfasf1f12f12f12f12f1','test','Elizabeth','Lewis','Toronto','Alberta','T2G 3A7','1234567897','test@test.com','123','2021-08-03 22:44:00'),(38,'2021-08-10','152152521521152215','Doo','Patricia','Young','Toronto','Alberta','T2G 3A7','1234567897','test@test.com','152','2021-08-03 22:44:00'),(39,'1989-05-15','12234567891015','John','Carter','125 Test St','Toronto','Ontario','K7L 9A11','1234567897','Test@test.com','32','2021-08-03 18:55:57'),(40,'1990-05-18','19475308625624','Michael','Phillips','126 Test St','Toronto','Ontario','K7L 1A4','1234567897','Test@test.com','31','2021-07-22 00:00:00'),(41,'1991-05-21','25530864176581','William','Jones','127 Test St','Toronto','Ontario','K7L 1A5','1234567897','Test@test.com','30','2021-07-23 00:00:00'),(42,'1992-05-23','32376543183306','David','Miller','128 Test St','Toronto','Ontario','K7L 1A6','1234567897','Test@test.com','29','2021-07-24 00:00:00'),(43,'1993-05-26','39024691326089','Richard','Davis','129 Test St','Toronto','Ontario','K7L 1A7','1234567897','Test@test.com','28','2021-07-25 00:00:00'),(44,'1994-05-29','45672839468872','Joseph','Garcia','130 Test St','Toronto','Ontario','K7L 1A8','1234567897','Test@test.com','27','2021-08-02 03:38:14'),(45,'1995-06-01','52320987611655','Thomas','Rodriguez','131 Test St','Toronto','Ontario','K7L 1A9','1234567897','Test@test.com','26','2021-07-27 00:00:00'),(46,'1996-06-03','58969135754438','Charles','Wilson','132 Test St','Toronto','Ontario','K7L 1A1','1234567897','Test@test.com','25','2021-07-28 00:00:00'),(47,'1997-06-06','65617283897221','Christopher','Martinez','133 Test St','Toronto','Ontario','K7L 1A2','1234567897','Test@test.com','24','2021-07-29 00:00:00'),(48,'1998-06-09','72265432040004','Daniel','Anderson','134 Test St','Toronto','Ontario','K7L 1A3','1234567897','Test@test.com','23','2021-07-30 00:00:00'),(49,'1999-06-12','78913580182787','Matthew','Taylor','135 Test St','Toronto','Ontario','K7L 1A4','1234567897','Test@test.com','22','2021-07-31 00:00:00'),(50,'1951-01-31','85561728325570','Anthony','Thomas','136 Test St','Toronto','Ontario','K7L 1A5','1234567897','Test@test.com','70','2021-08-01 00:00:00'),(51,'1952-02-03','92209876468353','Mark','Hernandez','137 Test St','Toronto','Ontario','K7L 1A6','1234567897','Test@test.com','69','2021-08-03 18:57:26'),(52,'1953-02-05','98858024611136','Mary','Moore','138 Test St','Toronto','Ontario','K7L 1A7','1234567897','Test@test.com','68','2021-08-03 00:00:00'),(53,'1954-02-08','105506172753919','Patricia','Martin','139 Test St','Toronto','Ontario','K7L 1A8','1234567897','Test@test.com','67','2021-08-04 00:00:00'),(54,'1955-02-11','112154320896702','Jennifer','Jackson','140 Test St','Toronto','Ontario','K7L 1A9','1234567897','Test@test.com','66','2021-08-05 00:00:00'),(55,'1956-02-14','118802469039485','Mary','Thompson','141 Test St','Toronto','Ontario','K7L 1A1','1234567897','Test@test.com','65','2021-08-06 00:00:00'),(56,'1957-02-16','125450617182268','Patricia','White','142 Test St','Toronto','Ontario','K7L 1A2','1234567897','Test@test.com','64','2021-08-07 00:00:00'),(57,'1958-02-19','132098765325051','Jennifer','Lopez','143 Test St','Toronto','Ontario','K7L 1A3','1234567897','Test@test.com','63','2021-08-08 00:00:00'),(58,'1959-02-22','138746913467834','Linda','Lee','144 Test St','Toronto','Ontario','K7L 1A4','1234567897','Test@test.com','62','2021-08-09 00:00:00'),(59,'1960-02-25','145395061610617','Elizabeth','Gonzalez','145 Test St','Toronto','Ontario','K7L 1A5','1234567897','Test@test.com','61','2021-08-10 00:00:00'),(60,'1961-02-27','152043209753400','Barbara','Harris','146 Test St','Toronto','Ontario','K7L 1A6','1234567897','Test@test.com','60','2021-08-11 00:00:00'),(61,'1962-03-02','158691357896183','Susan','Clark','147 Test St','Toronto','Ontario','K7L 1A7','1234567897','Test@test.com','59','2021-08-12 00:00:00'),(62,'1963-03-05','165339506038966','Jessica','Lewis','148 Test St','Toronto','Ontario','K7L 1A8','1234567897','Test@test.com','58','2021-08-13 00:00:00'),(63,'1964-03-07','171987654181749','Sarah','Robinson','149 Test St','Toronto','Ontario','K7L 1A9','1234567897','Test@test.com','57','2021-08-14 00:00:00'),(64,'1965-03-10','178635802324532','Karen','Walker','150 Test St','Toronto','Ontario','K7L 1A1','1234567897','Test@test.com','56','2021-08-15 00:00:00'),(65,'1966-03-13','185283950467315','Nancy','Perez','151 Test St','Toronto','Ontario','K7L 1A2','1234567897','Test@test.com','55','2021-08-16 00:00:00'),(66,'1967-03-16','191932098610098','Lisa','Hall','152 Test St','Toronto','Ontario','K7L 1A3','1234567897','Test@test.com','54','2021-08-17 00:00:00'),(67,'1968-03-18','198580246752881','Betty','Young','153 Test St','Toronto','Ontario','K7L 1A4','1234567897','Test@test.com','53','2021-08-18 00:00:00'),(68,'1969-03-21','205228394895664','Margaret','Allen','154 Test St','Toronto','Ontario','K7L 1A5','1234567897','Test@test.com','52','2021-08-03 19:00:34'),(69,'1970-03-24','211876543038447','Sandra','Sanchez','155 Test St','Toronto','Ontario','K7L 1A6','1234567897','Test@test.com','51','2021-08-20 00:00:00'),(70,'1971-03-27','218524691181230','Ashley','Wright','156 Test St','Toronto','Ontario','K7L 1A7','1234567897','Test@test.com','50','2021-07-19 00:00:00'),(71,'1972-03-29','225172839324013','Kimberly','King','157 Test St','Toronto','Ontario','K7L 1A8','1234567897','test@test.com','49','2021-08-02 00:11:14'),(72,'1973-04-01','231820987466796','Emily','Scott','158 Test St','Toronto','Ontario','K7L 1A9','1234567897','test@test.com','48','2021-08-02 04:30:40'),(73,'1974-04-04','238469135609579','Donna','Green','159 Test St','Toronto','Ontario','K7L 1A1','1234567897','Test@test.com','47','2021-08-03 18:38:59'),(74,'1975-04-07','245117283752362','Michelle','Baker','160 Test St','Toronto','Ontario','K7L 1A2','1234567897','Test@test.com','46','2021-08-05 23:04:52'),(75,'1976-04-09','251765431895145','Dorothy','Adams','161 Test St','Toronto','Ontario','K7L 1A1','1234567897','Test@test.com','45','2021-08-03 18:55:57'),(76,'1977-04-12','258413580037928','Carol','Nelson','162 Test St','Toronto','Ontario','K7L 1A2','1234567897','Test@test.com','44','2021-07-22 00:00:00'),(77,'1978-04-15','265061728180711','Amanda','Hill','163 Test St','Toronto','Ontario','K7L 1A3','1234567897','Test@test.com','43','2021-07-23 00:00:00'),(78,'1979-04-18','271709876323494','Melissa','Ramirez','164 Test St','Toronto','Ontario','K7L 1A4','1234567897','Test@test.com','42','2021-07-24 00:00:00'),(79,'1980-04-20','278358024466277','Deborah','Campbell','165 Test St','Toronto','Ontario','K7L 1A5','1234567897','Test@test.com','41','2021-07-25 00:00:00'),(80,'1981-04-23','285006172609060','Stephanie','Mitchell','166 Test St','Toronto','Ontario','K7L 1A6','1234567897','Test@test.com','40','2021-08-02 03:38:14'),(81,'1982-04-26','291654320751843','Alexander','Roberts','167 Test St','Toronto','Ontario','K7L 1A7','1234567897','Test@test.com','39','2021-07-27 00:00:00'),(82,'1983-04-29','298302468894626','Raymond','Carter','168 Test St','Toronto','Ontario','K7L 1A8','1234567897','Test@test.com','38','2021-08-04 02:52:40'),(83,'1984-05-01','304950617037409','Patrick','Phillips','169 Test St','Toronto','Ontario','K7L 1A9','1234567897','Test@test.com','37','2021-07-29 00:00:00'),(84,'2021-08-04','as123123123123','Patrick','Carter','170 Test St','123 test ave','Alberta','T2G 3A7','1234567897','Test@test.com','37','2021-08-08 19:00:24');
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
INSERT INTO `revision_history` VALUES (1,1,'First_Name changed from Bart to Sample by test testerson','2021-07-31 19:20:52'),(1,1,'Last_Name changed from Samperson to Patient by test testerson','2021-07-31 19:20:52'),(1,1,'Phone_Number changed from 1234567897 to 17093334444 by test testerson','2021-07-31 19:20:52'),(1,8,'DOB changed from 1985-02-09T05:00:00.000Z to 1985-02-14 by test testerson','2021-08-01 23:38:25'),(2,1,'DOB changed from 1985-02-02T05:00:00.000Z to 1985-02-02 by dave H','2021-08-02 00:29:28'),(2,38,'DOB changed from 2021-08-10T04:00:00.000Z to 2021-08-10 by dave H','2021-08-02 00:30:57'),(2,38,'First_Name changed from test to Doo by dave H','2021-08-02 00:30:57'),(2,38,'Last_Name changed from 125521 to Wop by dave H','2021-08-02 00:30:57'),(2,1,'DOB changed from 1985-02-02T05:00:00.000Z to 1985-01-31 by dave H','2021-08-03 14:39:03'),(2,1,'PatientID changed from 1 to 1 by dave H','2021-08-03 14:39:03'),(2,2,'DOB changed from 1985-02-03T05:00:00.000Z to 1985-02-03 by dave H','2021-08-03 14:55:34'),(2,2,'PatientID changed from 2 to 2 by dave H','2021-08-03 14:55:34'),(2,3,'DOB changed from 1985-02-04T05:00:00.000Z to 1985-02-04 by dave H','2021-08-03 14:55:50'),(2,3,'PatientID changed from 3 to 3 by dave H','2021-08-03 14:55:50'),(2,15,'DOB changed from 1985-02-16T05:00:00.000Z to 1985-02-16 by dave H','2021-08-03 14:57:28'),(2,15,'PatientID changed from 15 to 15 by dave H','2021-08-03 14:57:28'),(2,32,'DOB changed from 1985-03-05T05:00:00.000Z to 1985-03-05 by dave H','2021-08-03 15:00:35'),(2,32,'PatientID changed from 32 to 32 by dave H','2021-08-03 15:00:35'),(1,82,'DOB changed from 1983-04-29T04:00:00.000Z to 1983-04-29 by test testerson','2021-08-03 22:52:44'),(1,82,'PatientID changed from 82 to 82 by test testerson','2021-08-03 22:52:44'),(2,74,'DOB changed from 1975-04-07T05:00:00.000Z to 1975-04-07 by dave H','2021-08-05 19:04:54'),(2,74,'PatientID changed from 74 to 74 by dave H','2021-08-05 19:04:54'),(2,32,'DOB changed from 1985-03-05T05:00:00.000Z to 1985-03-05 by Dave H','2021-08-10 12:49:17'),(2,32,'PatientID changed from 32 to 32 by Dave H','2021-08-10 12:49:17');
/*!40000 ALTER TABLE `revision_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `scheduleID` int NOT NULL AUTO_INCREMENT,
  `PatientID` int NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Date` varchar(45) NOT NULL,
  `Timeslot` varchar(45) NOT NULL,
  PRIMARY KEY (`scheduleID`),
  UNIQUE KEY `scheduleID_UNIQUE` (`scheduleID`),
  KEY `Username_schedule_idx` (`Username`),
  KEY `PatientID_schedule_idx` (`PatientID`),
  CONSTRAINT `PatientID_schedule` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,1,'Dave','2021-07-31','06:00'),(2,2,'Chris','2021-07-31','06:30'),(3,1,'Dave','2021-08-05','08:09'),(4,4,'Alexandra','2019-01-04','07:30'),(5,5,'Alison','2019-01-05','08:00'),(6,6,'Amanda','2019-01-06','08:30'),(7,7,'Amelia','2019-01-07','09:00'),(8,8,'Amy','2019-01-08','09:30'),(9,9,'Abigail','2019-01-09','10:00'),(10,10,'Alexandra','2019-01-10','10:30'),(11,11,'Alison','2019-01-11','11:00'),(12,12,'Amanda','2019-01-12','11:30'),(13,13,'Amelia','2019-01-13','12:00'),(14,14,'Amy','2019-01-14','12:30'),(15,1,'Alann','2019-01-15','13:00'),(16,2,'Alexander','2019-01-16','13:30'),(17,3,'Andrew','2019-01-17','14:00'),(18,4,'Brian','2019-01-18','14:30'),(19,5,'Cameron','2019-01-19','15:00'),(20,6,'Carl','2019-01-20','06:00'),(21,7,'Abigail','2019-01-21','06:30'),(22,1,'Alexandra','2019-01-22','07:00'),(23,2,'Alison','2019-01-23','07:30'),(24,3,'Amanda','2019-01-24','08:00'),(25,4,'Amelia','2019-01-25','08:30'),(26,5,'Amy','2019-01-26','09:00'),(27,6,'Abigail','2019-01-27','09:30'),(28,7,'Alexandra','2019-01-28','10:00'),(29,8,'Alison','2019-01-29','10:30'),(30,9,'Amanda','2019-01-30','11:00'),(31,10,'Amelia','2019-01-31','11:30'),(32,11,'Amy','2019-02-01','12:00'),(33,12,'Alann','2019-02-02','12:30'),(34,13,'Alexander','2019-02-03','13:00'),(35,14,'Andrew','2019-02-04','13:30'),(73,3,'Anthony','2021-08-04','19:35'),(74,74,'Boris','2021-08-18','22:07'),(75,32,'Boris','2021-08-23','22:21'),(76,32,'Austin','2021-08-02','04:15'),(77,32,'Boris','2021-08-20','13:14');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
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
  `Completed` varchar(50) DEFAULT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TicketID`),
  KEY `Username_idx` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,'testusername','Test@test.com','2021-08-10 00:00:00','MY fingers Hurt when I press the keyboard to hard!','Completed','I dunno how I can help with this - Dave'),(2,'testusername','Test@test.com','2021-08-10 00:00:00','can you please unblock Netflix I cant live without my Oprah!!','Completed','We will not unblock as per Company Policy'),(3,'testusername','Test@test.com','2021-08-10 00:00:00','My computer is running so slow can you help with that?','Under Review','Sent Tech over to Workstation to review Hardware and Software'),(19,'Alann','test@test.com','2021-08-10 00:00:00','User Id 63 will not let me Update the Medical Records','In Progress','Currently Looking into this Issue - Dave \n(This is not a real issue)'),(20,'Alexander','test@test.com','2021-08-10 00:00:00','I got a wierd error when I tried to login... ','In Progress','Reached out to Cargiver to see what the Error message is. - Dave');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'testusername','test@test.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','test','testerson','Admin',0,'2021-08-10 13:13:53'),(2,'Dave','dave@dave.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Dave','H','Admin',1,'2021-08-10 13:18:03'),(3,'Chris','Chris@Chris.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Chris','G','Admin',1,'2019-01-01 10:10:10'),(4,'Steven','Steven@Steven.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Steven','W','Admin',1,'2019-01-01 10:10:10'),(5,'John','1TestDoctor@TestDoctor.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','John','Bella','Doctor',0,'2011-04-08 02:13:10'),(6,'Adrian','2TestDoctor@TestDoctor.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Adrian','Perez','Nurse',0,'2008-09-08 07:34:10'),(7,'Alann','3TestDoctor@TestDoctor.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Alann','Wright','Nurse',0,'2006-02-09 12:55:10'),(8,'Alexander','4TestDoctor@TestDoctor.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Alexander','Caroline','Doctor',0,'2003-07-13 18:16:10'),(9,'Andrew','5TestDoctor@TestDoctor.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Andrew','Green','Doctor',0,'2000-12-13 23:37:10'),(10,'Anthony','6TestDoctor@TestDoctor.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Anthony','Chloe','Nurse',0,'1998-05-17 04:58:10'),(11,'Austin','7TestDoctor@TestDoctor.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Austin','Adams','Doctor',0,'1995-10-18 10:19:10'),(12,'Benjamin','8TestDoctor@TestDoctor.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Benjamin','Deirdre','Doctor',0,'1993-03-20 15:40:10'),(13,'Blake','9TestDoctor@TestDoctor.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Blake','Bella','Nurse',0,'1990-08-21 21:01:10'),(14,'Boris','11TestDoctor@TestDoctor.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Boris','Perez','Doctor',0,'1988-01-23 02:22:10'),(15,'Brandon','12TestDoctor@TestDoctor.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Brandon','Wright','Doctor',0,'1985-06-25 07:43:10'),(16,'Brian','13TestDoctor@TestDoctor.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Brian','Caroline','Nurse',0,'1982-11-26 13:04:10'),(17,'Cameron','15TestDoctor@TestDoctor.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Cameron','Green','Nurse',0,'1980-04-28 18:25:10'),(18,'Carl','14TestDoctor@TestDoctor.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Carl','Chloe','Doctor',0,'1977-09-29 23:46:10'),(19,'Abigail','16TestDoctor@TestDoctor.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Abigail','Adams','Doctor',0,'1975-03-03 05:07:10'),(20,'Alexandra','17TestDoctor@TestDoctor.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Alexandra','Deirdre','Doctor',0,'1972-08-03 10:28:10'),(21,'Alison','18TestDoctor@TestDoctor.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Alison','Hall','Nurse',0,'1970-01-04 15:49:10'),(22,'Amanda','19TestDoctor@TestDoctor.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Amanda','Hill','Nurse',0,'1967-06-07 21:10:10'),(23,'Amelia','20TestDoctor@TestDoctor.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Amelia','Donna','Doctor',0,'1964-11-08 02:31:10'),(24,'Amy','21TestDoctor@TestDoctor.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Amy','Dorothy','Doctor',0,'1962-04-11 07:52:10'),(25,'Nhi','Nhi@Nhi.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Nhi','Nguyen','Admin',1,'1964-11-08 02:31:12'),(26,'Mathivannan','Mathivannan@Mathivannan.com','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','Mathivannan','Mahalingam','Admin',1,'1964-11-08 02:31:11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-10 19:21:28
