-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: davesportfolio
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
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `blogID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(45) DEFAULT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `VideoID` varchar(45) DEFAULT NULL,
  `CreationDate` date NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `imageLink` varchar(255) NOT NULL,
  PRIMARY KEY (`blogID`),
  UNIQUE KEY `blogID_UNIQUE` (`blogID`),
  KEY `Username_idx` (`username`),
  CONSTRAINT `Username` FOREIGN KEY (`username`) REFERENCES `users` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'Can\'t Sleep Clowns Will Eat me.','Funny','Have you ever ended up on a huge coding bender where you are just hooked to get that one last thing done then next thing you know its 4am? Can\'t sleep, the clowns will eat me!','U3yuFlvRyqM','2020-01-01','Ddh','https://westvancouverschools.ca/wp-content/uploads/2019/02/sleep-week-banner.jpg'),(3,'Killer Blue Solo!!','Music','Wow thats all I have to say after seeing this man kill it on stage! check out this video of Christone \'Kingfish\' Ingram do a mashup of Hey Joe/Redbone/Old Town Road with tremendous soul!!!','c5pFylDs9ys','2020-01-03','Ddh','https://i.ibb.co/2nRdzRB/blogbanner.png'),(5,'Playing With Time','Technology','I\'m a sucker for awesome video effects like this I was entraced by this video I miss making Aftereffects videos I really should get back into it!','gooWdc6kb80','2020-01-04','Ddh','http://static1.squarespace.com/static/560b343ae4b03420b41a8760/t/5f19b8cee4c29f1a68cf6414/1595521246383/Mind+Blown+Banner.png?format=1500w'),(6,'Dangit QA tester stop breaking my stuff!','Funny','This video summizes if i were to watch a QA tester working through my stuff I cannot be the only one!','981Pl9-pCLQ','2020-01-05','Ddh','https://strongqa.com/uploads/post/header_image/6/base_qa-day.jpg'),(7,'Now thats What I call a Metal 90\'s Club Mix','Music','Get your dancing shoes on were going back to the 90\'s in this awesome video. ','A_Yqjlq-MAE','2020-01-06','Ddh','https://i.ibb.co/2nRdzRB/blogbanner.png'),(8,'My Thought On Git','Technology','I personally love Git I have used it over the last couple of years over multiple accounts when doing development either web-based or game development I can think of one specific instance where it saved my behind or I would have had to restart one of my Mods in Unreal engine that had over 8 months of time put into it! Because I got into the mindset of doing git backups after every time I closed the engine I was able to grab the old datafile that I had broken (PSA: DO NOT CTRL+Z while doing database structs in Unreal engine or in general lol) So my takeaway is that it\'s a great tool and will always be used by me and I will preach its uses to those who don\'t use it or a similar repo system. Redundancy of backups is not a bad thing in my opinion and Git does all of that and more. I do hope to be able to utilize it in a  more team-based setting in the future as well as I normally tend to use it as a solo practice at the moment','SWYqp7iY_Tc','2020-01-07','Ddh','https://camo.githubusercontent.com/f1c0fc76d120f760664938edd8e1818f9d407b03f8ce7d306e12094d8853b6a0/687474703a2f2f692e696d6775722e636f6d2f6337476d414a662e706e67');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submissions`
--

DROP TABLE IF EXISTS `submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submissions` (
  `SubmissionID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `DiscordH` varchar(45) DEFAULT NULL,
  `Email` varchar(100) NOT NULL,
  `Message` varchar(45) NOT NULL,
  `CreationDate` date NOT NULL,
  PRIMARY KEY (`SubmissionID`),
  UNIQUE KEY `SubmissionID_UNIQUE` (`SubmissionID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submissions`
--

LOCK TABLES `submissions` WRITE;
/*!40000 ALTER TABLE `submissions` DISABLE KEYS */;
INSERT INTO `submissions` VALUES (1,'Test','TestDiscord#123','Test@test.com','Testing is testing is testing','1985-02-02'),(2,'Test','TestDiscord#123','Test@test.com','Testing is testing is testing','1985-02-02'),(3,'Test','TestDiscord#123','Test@test.com','Testing is testing is testing','1985-02-02'),(4,'test test','+15555555555','test@test.com','asdasdasd','2021-07-24');
/*!40000 ALTER TABLE `submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `CreationDate` datetime NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `userID_UNIQUE` (`userID`),
  UNIQUE KEY `CreationDate_UNIQUE` (`CreationDate`),
  UNIQUE KEY `Username_UNIQUE` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ddh','$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK','test@test.com','Dave','2020-01-01 10:10:10');
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

-- Dump completed on 2021-08-01 20:54:10
