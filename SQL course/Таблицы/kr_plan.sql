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
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan` (
  `id_plan` int(11) NOT NULL,
  `id_discipline` int(11) NOT NULL,
  `id_kind_teach` int(11) NOT NULL,
  `id_teacher` int(11) NOT NULL,
  `id_teacher_degree` int(11) NOT NULL,
  `id_teacher_rank` int(11) NOT NULL,
  `id_occupation` int(11) NOT NULL,
  `id_dissertation` int(11) NOT NULL,
  `id_faculty` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `id_topic_science` int(11) NOT NULL,
  `id_report` int(11) NOT NULL,
  `notes` varchar(30) DEFAULT NULL,
  `semester` int(11) NOT NULL,
  `lectern` varchar(15) NOT NULL,
  PRIMARY KEY (`id_plan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` VALUES (1,1,1,3,1,1,2,1,3,1,2,2,NULL,6,'ММСА'),(2,2,1,4,1,1,3,3,1,4,2,1,NULL,2,'САПР'),(3,3,2,1,1,1,4,4,1,2,4,1,NULL,2,'ММСА'),(4,4,1,2,2,2,5,2,2,4,3,2,NULL,2,'САПР'),(5,1,1,3,1,1,2,1,3,2,2,2,NULL,2,'ММСА'),(6,3,2,1,1,1,4,4,1,3,4,1,NULL,6,'САПР'),(7,4,4,2,2,2,5,2,2,4,3,2,NULL,2,'САПР'),(8,2,3,4,1,1,3,3,1,1,1,1,NULL,6,'ММСА'),(9,1,1,3,1,1,2,1,3,2,2,2,NULL,6,'ММСА'),(10,1,1,3,1,1,2,1,3,3,2,2,NULL,6,'САПР'),(11,2,3,4,1,1,3,3,1,2,1,1,NULL,6,'ММСА'),(12,3,3,1,1,1,4,4,1,1,4,1,NULL,6,'ММСА'),(13,2,4,4,1,1,3,3,1,4,1,1,NULL,2,'САПР'),(14,4,1,2,2,2,2,1,3,2,2,2,NULL,2,'ММСА'),(15,4,1,2,2,2,2,1,3,1,2,2,NULL,6,'ММСА'),(16,3,4,1,1,1,4,4,2,1,4,1,NULL,6,'ММСА'),(17,2,3,4,1,1,3,3,1,4,1,1,NULL,2,'САПР'),(18,3,2,1,1,1,4,4,2,3,4,1,NULL,6,'САПР'),(19,4,4,2,2,2,2,1,3,2,2,2,NULL,6,'САПР'),(20,2,3,4,1,1,3,3,1,2,1,1,NULL,2,'ММСА');
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
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
