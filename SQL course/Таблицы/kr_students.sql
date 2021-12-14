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
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id_student` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `id_diploma` int(11) NOT NULL,
  `id_faculty` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `birthday_year` int(11) NOT NULL,
  `scholarship_mark` char(1) NOT NULL,
  `scholarship` int(11) NOT NULL,
  `sex` char(1) NOT NULL,
  `entry_year` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `course` int(11) NOT NULL,
  PRIMARY KEY (`id_student`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,1,1,1,'Ведмедев Д.О.',2001,'+',1300,'м',2018,0,3),(2,1,2,1,'Артеменко Є.Д.',2000,'+',1300,'м',2018,0,3),(3,1,3,1,'Бабич В.А.',2001,'+',1300,'ж',2018,0,3),(4,1,4,1,'Бабкін В.В.',2001,'-',0,'м',2018,0,3),(5,1,5,1,'Бичков Д.Д.',2001,'+',1300,'м',2018,0,3),(6,1,6,1,'Білецька О.В.',2000,'+',1300,'ж',2018,0,3),(7,1,7,1,'Богданова А.А.',2000,'-',0,'ж',2018,0,3),(8,2,8,1,'Бойко Н.Г.',2000,'-',0,'м',2018,0,1),(9,2,9,1,'Бровко А.Р.',2003,'-',0,'м',2020,0,1),(10,2,10,1,'Єремічук Р.А.',2003,'-',0,'м',2020,0,1),(11,2,11,1,'Заборовський А.К.',2004,'-',0,'м',2020,1,1),(12,2,12,1,'Заржецька А.В.',2003,'-',0,'ж',2020,0,1),(13,2,13,1,'Каращук А.К.',2002,'-',0,'м',2020,0,1),(14,2,14,1,'Кісіленко О.Р.',2003,'-',0,'ж',2020,0,1),(15,3,15,1,'Клепачевський Д.В.',2000,'-',0,'м',2018,1,3),(16,3,16,2,'Клименко Б.Я.',2001,'-',0,'м',2018,0,3),(17,3,17,2,'Коберник А.А.',2000,'+',1300,'м',2018,0,3),(18,3,18,2,'Коляков Т.Е.',2000,'-',0,'м',2018,0,3),(19,3,19,2,'Марчук А.Т.',2000,'+',1300,'м',2018,0,3),(20,3,20,2,'Міщенко А.К.',1999,'+',1300,'м',2018,1,3),(21,3,21,2,'Нікітаєв Н.Н.',1999,'+',1300,'м',2018,0,3),(22,3,22,2,'Радченко М.В.',2001,'-',0,'м',2018,0,3),(23,4,23,2,'Ровенко О.Б.',2003,'-',0,'ж',2020,0,1),(24,4,24,2,'Савченко В.В.',2004,'-',0,'м',2020,0,1),(25,4,25,2,'Самойленко Д.Д.',2003,'+',1300,'ж',2020,0,1),(26,4,26,2,'Святненко Н.Н.',2003,'+',1300,'м',2020,0,1),(27,4,27,2,'Северин О.А.',2004,'+',1300,'м',2020,0,1),(28,4,28,2,'Халімончук Р.Н.',2004,'+',1300,'м',2020,0,1),(29,4,29,2,'Шапошнікова С.П.',2004,'+',1300,'ж',2020,0,1),(30,4,30,2,'Усачов Р.Р.',2003,'-',0,'м',2020,0,1);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
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
