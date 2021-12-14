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
-- Temporary view structure for view `query6`
--

DROP TABLE IF EXISTS `query6`;
/*!50001 DROP VIEW IF EXISTS `query6`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query6` AS SELECT 
 1 AS `Преподаватель`,
 1 AS `Вид занятий`,
 1 AS `группа`,
 1 AS `семестр`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query7`
--

DROP TABLE IF EXISTS `query7`;
/*!50001 DROP VIEW IF EXISTS `query7`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query7` AS SELECT 
 1 AS `Студент`,
 1 AS `группа`,
 1 AS `Дисциплина`,
 1 AS `оценка`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query8`
--

DROP TABLE IF EXISTS `query8`;
/*!50001 DROP VIEW IF EXISTS `query8`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query8` AS SELECT 
 1 AS `Студент`,
 1 AS `группа`,
 1 AS `семестр`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `query6`
--

/*!50001 DROP VIEW IF EXISTS `query6`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query6` AS (select `teacher`.`name` AS `Преподаватель`,`kind_teach`.`kind_teach` AS `Вид занятий`,`group`.`group` AS `группа`,`plan`.`semester` AS `семестр` from (((`teacher` join `plan` on((`teacher`.`id_teacher` = `plan`.`id_teacher`))) join `kind_teach` on((`plan`.`id_kind_teach` = `kind_teach`.`id_kind_teach`))) join `group` on((`plan`.`id_group` = `group`.`id_group`))) where ((`group`.`group` = 'ДА-81') and (`kind_teach`.`kind_teach` = 'лекция') and (`plan`.`semester` = 6))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query7`
--

/*!50001 DROP VIEW IF EXISTS `query7`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query7` AS (select `students`.`name` AS `Студент`,`group`.`group` AS `группа`,`discipline`.`name_discipline` AS `Дисциплина`,`achievement`.`mark` AS `оценка` from ((((`students` join `achievement` on((`students`.`id_student` = `achievement`.`id_student`))) join `group` on((`students`.`id_group` = `group`.`id_group`))) join `plan` on((`achievement`.`id_plan` = `plan`.`id_plan`))) join `discipline` on((`plan`.`id_discipline` = `discipline`.`id_discipline`))) where ((`discipline`.`name_discipline` = 'БД') and (`achievement`.`mark` = 4))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query8`
--

/*!50001 DROP VIEW IF EXISTS `query8`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query8` AS (select `students`.`name` AS `Студент`,`group`.`group` AS `группа`,`plan`.`semester` AS `семестр` from (((`students` join `group` on((`students`.`id_group` = `group`.`id_group`))) join `achievement` on((`students`.`id_student` = `achievement`.`id_student`))) join `plan` on(((`group`.`id_group` = `plan`.`id_group`) and (`achievement`.`id_plan` = `plan`.`id_plan`)))) where ((`achievement`.`mark` between 4 and 5) and (`plan`.`semester` = 6) and (`group`.`group` = 'КА-85'))) */;
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

-- Dump completed on 2021-05-15 11:55:38
