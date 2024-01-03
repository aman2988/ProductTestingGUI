-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: logs
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `records`
--

DROP TABLE IF EXISTS `records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `records` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Host` varchar(200) NOT NULL,
  `ProductName` varchar(200) NOT NULL,
  `PN` varchar(200) NOT NULL,
  `SN` varchar(200) NOT NULL,
  `FullLog` longtext NOT NULL,
  `TotalTime` int NOT NULL,
  `DateTime` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `records`
--

LOCK TABLES `records` WRITE;
/*!40000 ALTER TABLE `records` DISABLE KEYS */;
INSERT INTO `records` VALUES (1,'LAPTOP-59SITNS6','Product1','50001','','29-12-2023 14:43:34;50001;This is test-Test Name 1-log;NOK, 29-12-2023 14:43:38;50001;This is test-Test Name 2-log;NOK, 29-12-2023 14:43:42;50001;This is test-Test Name 3-log;OK, 29-12-2023 14:43:46;50001;This is test-Test Name 4-log;NOK, 29-12-2023 14:43:50;50001;This is test-Test Name 5-log;NOK',20,'2023-12-29 14:43:59'),(2,'LAPTOP-59SITNS6','Product1','50001','','29-12-2023 14:51:31;50001;This is test-Test Name 1-log;NOK, 29-12-2023 14:51:35;50001;This is test-Test Name 2-log;NOK, 29-12-2023 14:51:39;50001;This is test-Test Name 3-log;NOK, 29-12-2023 14:51:44;50001;This is test-Test Name 4-log;OK, 29-12-2023 14:51:48;50001;This is test-Test Name 5-log;NOK',20,'2023-12-29 14:52:43'),(3,'LAPTOP-59SITNS6','Product1','50001','','29-12-2023 14:51:31;50001;This is test-Test Name 1-log;NOK, 29-12-2023 14:51:35;50001;This is test-Test Name 2-log;NOK, 29-12-2023 14:51:39;50001;This is test-Test Name 3-log;NOK, 29-12-2023 14:51:44;50001;This is test-Test Name 4-log;OK, 29-12-2023 14:51:48;50001;This is test-Test Name 5-log;NOK, 29-12-2023 14:52:46;50001;This is test-Test Name 1-log;NOK, 29-12-2023 14:52:51;50001;This is test-Test Name 2-log;NOK, 29-12-2023 14:52:55;50001;This is test-Test Name 3-log;OK, 29-12-2023 14:52:59;50001;This is test-Test Name 4-log;OK, 29-12-2023 14:53:03;50001;This is test-Test Name 5-log;NOK',19,'2023-12-29 14:53:03'),(4,'LAPTOP-59SITNS6','Product1','50001','','29-12-2023 14:57:20;50001;This is test-Test Name 1-log;NOK, 29-12-2023 14:57:24;50001;This is test-Test Name 2-log;OK, 29-12-2023 14:57:28;50001;This is test-Test Name 3-log;OK, 29-12-2023 14:57:32;50001;This is test-Test Name 4-log;OK, 29-12-2023 14:57:36;50001;This is test-Test Name 5-log;OK',20,'2023-12-29 14:57:37'),(5,'LAPTOP-59SITNS6','Product1','50001','','29-12-2023 14:57:20;50001;This is test-Test Name 1-log;NOK, 29-12-2023 14:57:24;50001;This is test-Test Name 2-log;OK, 29-12-2023 14:57:28;50001;This is test-Test Name 3-log;OK, 29-12-2023 14:57:32;50001;This is test-Test Name 4-log;OK, 29-12-2023 14:57:36;50001;This is test-Test Name 5-log;OK, 29-12-2023 14:58:49;50001;This is test-Test Name 1-log;OK, 29-12-2023 14:58:53;50001;This is test-Test Name 2-log;NOK, 29-12-2023 14:58:57;50001;This is test-Test Name 3-log;NOK, 29-12-2023 14:59:01;50001;This is test-Test Name 4-log;OK, 29-12-2023 14:59:05;50001;This is test-Test Name 5-log;NOK',20,'2023-12-29 14:59:06'),(6,'LAPTOP-59SITNS6','Product1','50001','','29-12-2023 15:00:24;50001;This is test-Test Name 1-log;NOK, 29-12-2023 15:00:28;50001;This is test-Test Name 2-log;OK, 29-12-2023 15:00:33;50001;This is test-Test Name 3-log;OK, 29-12-2023 15:00:37;50001;This is test-Test Name 4-log;NOK, 29-12-2023 15:00:41;50001;This is test-Test Name 5-log;OK',20,'2023-12-29 15:00:41'),(7,'LAPTOP-59SITNS6','Product1','50001','','29-12-2023 15:00:24;50001;This is test-Test Name 1-log;NOK, 29-12-2023 15:00:28;50001;This is test-Test Name 2-log;OK, 29-12-2023 15:00:33;50001;This is test-Test Name 3-log;OK, 29-12-2023 15:00:37;50001;This is test-Test Name 4-log;NOK, 29-12-2023 15:00:41;50001;This is test-Test Name 5-log;OK, 29-12-2023 15:01:01;50001;This is test-Test Name 1-log;NOK, 29-12-2023 15:01:05;50001;This is test-Test Name 2-log;OK, 29-12-2023 15:01:09;50001;This is test-Test Name 3-log;NOK, 29-12-2023 15:01:13;50001;This is test-Test Name 4-log;NOK, 29-12-2023 15:01:17;50001;This is test-Test Name 5-log;OK',20,'2023-12-29 15:01:17'),(8,'LAPTOP-59SITNS6','Product1','50001','','29-12-2023 15:00:24;50001;This is test-Test Name 1-log;NOK, 29-12-2023 15:00:28;50001;This is test-Test Name 2-log;OK, 29-12-2023 15:00:33;50001;This is test-Test Name 3-log;OK, 29-12-2023 15:00:37;50001;This is test-Test Name 4-log;NOK, 29-12-2023 15:00:41;50001;This is test-Test Name 5-log;OK, 29-12-2023 15:01:01;50001;This is test-Test Name 1-log;NOK, 29-12-2023 15:01:05;50001;This is test-Test Name 2-log;OK, 29-12-2023 15:01:09;50001;This is test-Test Name 3-log;NOK, 29-12-2023 15:01:13;50001;This is test-Test Name 4-log;NOK, 29-12-2023 15:01:17;50001;This is test-Test Name 5-log;OK, 29-12-2023 15:04:32;50001;This is test-Test Name 1-log;OK, 29-12-2023 15:04:36;50001;This is test-Test Name 2-log;NOK, 29-12-2023 15:04:40;50001;This is test-Test Name 3-log;NOK, 29-12-2023 15:04:44;50001;This is test-Test Name 4-log;OK, 29-12-2023 15:04:48;50001;This is test-Test Name 5-log;NOK',19,'2023-12-29 15:04:49'),(9,'LAPTOP-59SITNS6','Product1','50001','','29-12-2023 15:18:51;50001;This is test-Test Name 1-log;NOK, 29-12-2023 15:18:55;50001;This is test-Test Name 2-log;NOK',8,'2023-12-29 15:18:57'),(10,'LAPTOP-59SITNS6','Product2','50002','','30-12-2023 14:48:44;50002;This is test-Test Name 1-log;OK, 30-12-2023 14:48:48;50002;This is test-Test Name 2-log;NOK, 30-12-2023 14:48:52;50002;This is test-Test Name 3-log;OK, 30-12-2023 14:48:56;50002;This is test-Test Name 4-log;OK',16,'2023-12-30 14:48:57'),(11,'LAPTOP-59SITNS6','Product1','50001','','02-01-2024 15:32:08;50001;This is test-Test Name 1-log;OK, 02-01-2024 15:32:12;50001;This is test-Test Name 2-log;OK, 02-01-2024 15:32:16;50001;This is test-Test Name 3-log;OK, 02-01-2024 15:32:21;50001;This is test-Test Name 4-log;OK, 02-01-2024 15:32:25;50001;This is test-Test Name 5-log;NOK',20,'2024-01-02 15:32:25'),(12,'LAPTOP-59SITNS6','Product1','50001','','03-01-2024 13:38:53;50001;This is test-Test Name 1-log;OK, 03-01-2024 13:38:57;50001;This is test-Test Name 2-log;NOK, 03-01-2024 13:39:01;50001;This is test-Test Name 3-log;OK, 03-01-2024 13:39:05;50001;This is test-Test Name 4-log;OK, 03-01-2024 13:39:09;50001;This is test-Test Name 5-log;OK',20,'2024-01-03 13:39:10'),(13,'LAPTOP-59SITNS6','Product1','50001','','03-01-2024 13:45:48;50001;This is test-Test Name 1-log;NOK, 03-01-2024 13:45:52;50001;This is test-Test Name 2-log;OK, 03-01-2024 13:45:56;50001;This is test-Test Name 3-log;NOK, 03-01-2024 13:46:00;50001;This is test-Test Name 4-log;NOK, 03-01-2024 13:46:04;50001;This is test-Test Name 5-log;NOK',20,'2024-01-03 13:46:04'),(14,'LAPTOP-59SITNS6','Product1','50001','','03-01-2024 13:46:55;50001;This is test-Test Name 1-log;OK, 03-01-2024 13:46:59;50001;This is test-Test Name 2-log;OK, 03-01-2024 13:47:03;50001;This is test-Test Name 3-log;OK, 03-01-2024 13:47:07;50001;This is test-Test Name 4-log;OK, 03-01-2024 13:47:11;50001;This is test-Test Name 5-log;OK',20,'2024-01-03 13:47:11'),(15,'LAPTOP-59SITNS6','Product1','50001','','03-01-2024 13:48:14;50001;This is test-Test Name 1-log;NOK',5,'2024-01-03 13:48:16'),(16,'LAPTOP-59SITNS6','Product1','50001','','03-01-2024 15:26:03;50001;This is test-Test Name 1-log;NOK, 03-01-2024 15:26:07;50001;This is test-Test Name 2-log;OK, 03-01-2024 15:26:12;50001;This is test-Test Name 3-log;OK, 03-01-2024 15:26:16;50001;This is test-Test Name 4-log;OK, 03-01-2024 15:26:37;50001;This is test-Test Name 5-log;OK',37,'2024-01-03 15:26:37'),(17,'LAPTOP-59SITNS6','Product1','50001','','03-01-2024 15:30:58;50001;This is test-Test Name 1-log;OK, 03-01-2024 15:31:02;50001;This is test-Test Name 2-log;OK, 03-01-2024 15:31:06;50001;This is test-Test Name 3-log;OK, 03-01-2024 15:31:10;50001;This is test-Test Name 4-log;NOK, 03-01-2024 15:31:14;50001;This is test-Test Name 5-log;OK',40,'2024-01-03 15:31:15'),(18,'LAPTOP-59SITNS6','Product1','50001','','03-01-2024 15:44:56;50001;This is test-Test Name 1-log;NOK, 03-01-2024 15:45:00;50001;This is test-Test Name 2-log;NOK, 03-01-2024 15:45:04;50001;This is test-Test Name 3-log;OK, 03-01-2024 15:45:08;50001;This is test-Test Name 4-log;OK, 03-01-2024 15:45:12;50001;This is test-Test Name 5-log;OK',20,'2024-01-03 15:45:13'),(19,'LAPTOP-59SITNS6','Product1','50001','','03-01-2024 15:45:25;50001;This is test-Test Name 1-log;NOK, 03-01-2024 15:45:29;50001;This is test-Test Name 2-log;OK',8,'2024-01-03 15:45:29'),(20,'LAPTOP-59SITNS6','Product1','50001','','03-01-2024 15:45:40;50001;This is test-Test Name 1-log;OK, 03-01-2024 15:45:44;50001;This is test-Test Name 2-log;OK, 03-01-2024 15:45:48;50001;This is test-Test Name 3-log;OK, 03-01-2024 15:45:52;50001;This is test-Test Name 4-log;NOK, 03-01-2024 15:45:56;50001;This is test-Test Name 5-log;OK',20,'2024-01-03 15:45:56'),(21,'LAPTOP-59SITNS6','Product1','50001','','03-01-2024 15:47:40;50001;This is test-Test Name 1-log;OK, 03-01-2024 15:47:44;50001;This is test-Test Name 2-log;NOK, 03-01-2024 15:47:48;50001;This is test-Test Name 3-log;NOK, 03-01-2024 15:47:52;50001;This is test-Test Name 4-log;OK, 03-01-2024 15:47:56;50001;This is test-Test Name 5-log;OK',20,'2024-01-03 15:47:56');
/*!40000 ALTER TABLE `records` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-03 20:39:24
