-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: kr
-- ------------------------------------------------------
-- Server version	5.5.23

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
-- Table structure for table `achievement`
--

DROP TABLE IF EXISTS `achievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `achievement` (
  `id_achieve` int(11) NOT NULL,
  `id_plan` int(11) NOT NULL,
  `id_discipline` int(11) NOT NULL,
  `id_kind_teach` int(11) NOT NULL,
  `id_teacher` int(11) NOT NULL,
  `id_teacher_degree` int(11) NOT NULL,
  `id_teacher_rank` int(11) NOT NULL,
  `id_occupation` int(11) NOT NULL,
  `id_dissertation` int(11) NOT NULL,
  `id_faculty` int(11) NOT NULL,
  `id_report` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `id_diploma` int(11) NOT NULL,
  `id_topic_science` int(11) NOT NULL,
  `mark` int(11) NOT NULL,
  PRIMARY KEY (`id_achieve`),
  UNIQUE KEY `idTeacher_UNIQUE` (`id_achieve`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievement`
--

LOCK TABLES `achievement` WRITE;
/*!40000 ALTER TABLE `achievement` DISABLE KEYS */;
INSERT INTO `achievement` VALUES (1,1,1,1,3,1,1,2,1,3,2,1,1,1,2,5),(2,1,1,1,3,1,1,2,1,3,2,1,2,2,2,3),(3,1,1,1,3,1,1,2,1,3,2,1,3,3,2,4),(4,1,1,1,3,1,1,2,1,3,2,1,4,4,2,5),(5,1,1,1,3,1,1,2,1,3,2,1,5,5,2,5),(6,1,1,1,3,1,1,2,1,3,2,1,6,6,2,4),(7,1,1,1,3,1,1,2,1,3,2,1,7,7,2,4),(8,5,1,1,3,1,1,2,1,3,2,2,8,8,2,5),(9,5,1,1,3,1,1,2,1,3,2,2,9,9,2,3),(10,5,1,1,3,1,1,2,1,3,2,2,10,10,2,4),(11,5,1,1,3,1,1,2,1,3,2,2,11,11,2,3),(12,5,1,1,3,1,1,2,1,3,2,2,12,12,2,4),(13,5,1,1,3,1,1,2,1,3,2,2,13,13,2,5),(14,5,1,1,3,1,1,2,1,3,2,2,14,14,2,3),(15,2,2,1,4,1,1,3,3,1,1,4,23,15,1,4),(16,2,2,1,4,1,1,3,3,1,1,4,24,16,1,4),(17,2,2,1,4,1,1,3,3,1,1,4,25,17,1,5),(18,2,2,1,4,1,1,3,3,1,1,4,26,18,1,4),(19,2,2,1,4,1,1,3,3,1,1,4,27,19,1,5),(20,2,2,1,4,1,1,3,3,1,1,4,28,20,1,5),(21,2,2,1,4,1,1,3,3,1,1,4,29,21,1,4),(22,8,2,1,4,1,1,3,3,1,1,1,1,22,1,4),(23,8,2,1,4,1,1,3,3,1,1,1,2,23,1,4),(24,8,2,1,4,1,1,3,3,1,1,1,3,24,1,4),(25,8,2,1,4,1,1,3,3,1,1,1,4,25,1,4),(26,8,2,1,4,1,1,3,3,1,1,1,5,26,1,5),(27,8,2,1,4,1,1,3,3,1,1,1,6,27,1,4),(28,8,2,1,4,1,1,3,3,1,1,1,7,28,1,5),(29,3,3,1,1,1,1,4,4,1,1,2,8,29,4,4),(30,3,3,1,1,1,1,4,4,1,1,2,9,30,4,4),(31,3,3,1,1,1,1,4,4,1,1,2,10,1,4,4),(32,3,3,1,1,1,1,4,4,1,1,2,11,2,4,4),(33,3,3,1,1,1,1,4,4,1,1,2,12,3,4,5),(34,3,3,1,1,1,1,4,4,1,1,2,13,4,4,5),(35,3,3,1,1,1,1,4,4,1,1,2,14,5,4,3),(36,6,3,1,1,1,1,4,4,1,1,3,15,6,4,4),(37,6,3,1,1,1,1,4,4,1,1,3,16,7,4,5),(38,6,3,1,1,1,1,4,4,1,1,3,17,8,4,5),(39,6,3,1,1,1,1,4,4,1,1,3,18,9,4,5),(40,6,3,1,1,1,1,4,4,1,1,3,19,10,4,4),(41,6,3,1,1,1,1,4,4,1,1,3,20,11,4,5),(42,6,3,1,1,1,1,4,4,1,1,3,21,12,4,4),(43,6,3,1,1,1,1,4,4,1,1,3,22,13,4,5),(44,14,4,1,2,2,2,5,2,2,2,2,8,14,3,3),(45,14,4,1,2,2,2,5,2,2,2,2,9,15,3,3),(46,14,4,1,2,2,2,5,2,2,2,2,10,16,3,3),(47,14,4,1,2,2,2,5,2,2,2,2,11,17,3,4),(48,14,4,1,2,2,2,5,2,2,2,2,12,18,3,3),(49,14,4,1,2,2,2,5,2,2,2,2,13,19,3,3),(50,14,4,1,2,2,2,5,2,2,2,2,14,20,3,3),(51,7,4,1,2,2,2,5,2,2,2,4,23,21,3,5),(52,7,4,1,2,2,2,5,2,2,2,4,24,22,3,4),(53,7,4,1,2,2,2,5,2,2,2,4,25,23,3,5),(54,7,4,1,2,2,2,5,2,2,2,4,26,24,3,4),(55,7,4,1,2,2,2,5,2,2,2,4,27,25,3,4),(56,7,4,1,2,2,2,5,2,2,2,4,28,26,3,3),(57,7,4,1,2,2,2,5,2,2,2,4,29,27,3,3),(58,7,4,1,2,2,2,5,2,2,2,4,30,28,3,3);
/*!40000 ALTER TABLE `achievement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-15 11:55:37
