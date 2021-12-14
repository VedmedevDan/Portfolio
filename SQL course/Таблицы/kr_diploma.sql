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
-- Table structure for table `diploma`
--

DROP TABLE IF EXISTS `diploma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diploma` (
  `id_diploma` int(11) NOT NULL,
  `topic` varchar(80) DEFAULT NULL,
  `id_teacher` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_diploma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diploma`
--

LOCK TABLES `diploma` WRITE;
/*!40000 ALTER TABLE `diploma` DISABLE KEYS */;
INSERT INTO `diploma` VALUES (1,'Потоковые языки программирования',2,2020),(2,'Анализ факторов экономических технологий',1,2021),(3,'Методы оптимизации запросов ',3,2021),(4,'Роль прикладного программирования',2,2020),(5,'Оценка эфективности прироста населения',1,2020),(6,'Исследование несобственных уравнений',4,2020),(7,'Структура потокового программирования',2,2020),(8,'Архитектура СУБД',3,2021),(9,'Графические базы данных',3,2021),(10,'Администрирование ООБД',3,2020),(11,'Виды языков программирования',2,2020),(12,'Методы масштабирования',3,2021),(13,'Экономическая федеральная областная проблема убытка',1,2021),(14,'Оценка интенсивности трафика',2,2021),(15,'БД в облачной среде',3,2021),(16,'Различные виды сходимости краевых задач',4,2020),(17,'Методы анализа эфективности анализа экономических рынков',1,2021),(18,'Проблемы взаимосвязанной рыночной экономики',1,2020),(19,'Диалект SQL реализованый в другой среде',3,2020),(20,'Роль логистики в управлении экономическими благами',1,2021),(21,'Мониторинговый алгоритм состояния',2,2020),(22,'OLAP технологии',3,2020),(23,'Адекватность и обьектиность оценки сущностей',2,2020),(24,'Исследование несобственных интегралов',4,2020),(25,'Предназначение адаптивного обучения',2,2021),(26,'Фрактальные сжатия изображений',4,2021),(27,'Внедрение инновационных технологий в экономику',1,2020),(28,'Характеристика биматричных уравнений',2,2020),(29,'Восстановление и оптимизации БД',3,2021),(30,'Банаховые пространства',4,2021);
/*!40000 ALTER TABLE `diploma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-15 11:55:36
