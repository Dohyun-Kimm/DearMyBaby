-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: i8a206.p.ssafy.io    Database: dearmybaby
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

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
-- Table structure for table `place`
--

DROP TABLE IF EXISTS `place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place` (
  `place_id` bigint NOT NULL,
  `place_address` varchar(255) DEFAULT NULL,
  `place_latitude` varchar(255) DEFAULT NULL,
  `place_longitude` varchar(255) DEFAULT NULL,
  `place_name` varchar(255) DEFAULT NULL,
  `place_order` int NOT NULL,
  `day_id` bigint DEFAULT NULL,
  PRIMARY KEY (`place_id`),
  KEY `FKirili8t18rf9qwgn7lljxcq1f` (`day_id`),
  CONSTRAINT `FKirili8t18rf9qwgn7lljxcq1f` FOREIGN KEY (`day_id`) REFERENCES `day` (`day_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place`
--

LOCK TABLES `place` WRITE;
/*!40000 ALTER TABLE `place` DISABLE KEYS */;
INSERT INTO `place` VALUES (1523,NULL,'37.796901962032905','127.63972132401358','양평해장국',0,1518),(1539,NULL,'33.49141839664327','126.54332248814438','리바트키즈 제주점',0,1510),(1540,NULL,'33.541274383213','126.667135470078','깡촌흑돼지 함덕본점',1,1510),(1541,NULL,'33.2430314956821','126.567563246454','바다를본돼지 제주서귀포점',2,1510),(1542,NULL,'33.50563877194622','126.4726047828175','올레길 17코스(광령-제주원도심 올레)',0,1509),(1543,NULL,'33.5110253271905','126.529585101466','오현돼지불백',1,1509),(1544,NULL,'33.2476629471468','126.552461948657','율이네감귤체험농장',0,1508),(1545,NULL,'33.4812242739281','126.488224445142','바삭돈가스',1,1508),(1546,NULL,'33.25069565292533','126.4353817961507','제주감귤농협 중문지점',2,1508);
/*!40000 ALTER TABLE `place` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17 11:50:54
