-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: soloadventure
-- ------------------------------------------------------
-- Server version	8.0.21-0ubuntu0.20.04.4

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
-- Table structure for table `combat`
--

DROP TABLE IF EXISTS `combat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `combat` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ratio` int unsigned DEFAULT NULL,
  `random` int unsigned DEFAULT NULL,
  `enemy` int unsigned DEFAULT NULL,
  `hero` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat`
--

LOCK TABLES `combat` WRITE;
/*!40000 ALTER TABLE `combat` DISABLE KEYS */;
INSERT INTO `combat` VALUES (1,1,1,2,1),(2,1,2,2,1),(3,1,3,2,10),(4,1,4,2,10),(5,1,5,3,9),(6,1,6,4,8),(7,1,7,5,7),(8,1,8,6,6),(9,1,9,7,5),(10,1,10,8,2),(11,2,1,2,1),(12,2,2,2,10),(13,2,3,2,9),(14,2,4,3,9),(15,2,5,4,8),(16,2,6,5,8),(17,2,7,6,7),(18,2,8,7,6),(19,2,9,8,5),(20,2,10,9,2),(21,3,1,2,1),(22,3,2,2,10),(23,3,3,2,9),(24,3,4,3,9),(25,3,5,4,8),(26,3,6,5,8),(27,3,7,6,7),(28,3,8,7,6),(29,3,9,8,5),(30,3,10,9,2),(31,4,1,2,10),(32,4,2,2,9),(33,4,3,3,8),(34,4,4,4,8),(35,4,5,5,7),(36,4,6,6,7),(37,4,7,7,6),(38,4,8,8,5),(39,4,9,9,4),(40,4,10,10,2),(41,5,1,2,10),(42,5,2,2,9),(43,5,3,3,8),(44,5,4,4,8),(45,5,5,5,7),(46,5,6,6,7),(47,5,7,7,6),(48,5,8,8,5),(49,5,9,9,4),(50,5,10,10,2),(51,6,1,2,8),(52,6,2,3,8),(53,6,3,4,7),(54,6,4,5,7),(55,6,5,6,6),(56,6,6,7,6),(57,6,7,8,5),(58,6,8,9,4),(59,6,9,10,2),(60,6,10,11,2),(61,7,1,2,8),(62,7,2,3,8),(63,7,3,4,7),(64,7,4,5,7),(65,7,5,6,6),(66,7,6,7,6),(67,7,7,8,5),(68,7,8,9,4),(69,7,9,10,2),(70,7,10,11,2),(71,8,1,3,8),(72,8,2,4,7),(73,8,3,5,7),(74,8,4,6,6),(75,8,5,7,6),(76,8,6,8,5),(77,8,7,9,4),(78,8,8,10,3),(79,8,9,11,2),(80,8,10,12,2),(81,9,1,3,8),(82,9,2,4,7),(83,9,3,5,7),(84,9,4,6,6),(85,9,5,7,6),(86,9,6,8,5),(87,9,7,9,4),(88,9,8,10,3),(89,9,9,11,2),(90,9,10,12,2),(91,10,1,4,7),(92,10,2,5,7),(93,10,3,6,6),(94,10,4,7,6),(95,10,5,8,5),(96,10,6,9,4),(97,10,7,10,4),(98,10,8,11,3),(99,10,9,12,2),(100,10,10,13,2),(101,11,1,4,7),(102,11,2,5,7),(103,11,3,6,6),(104,11,4,7,6),(105,11,5,8,5),(106,11,6,9,4),(107,11,7,10,4),(108,11,8,11,3),(109,11,9,12,2),(110,11,10,13,2),(111,12,1,5,7),(112,12,2,6,6),(113,12,3,7,6),(114,12,4,8,5),(115,12,5,9,4),(116,12,6,10,4),(117,12,7,11,3),(118,12,8,12,2),(119,12,9,13,2),(120,12,10,14,2),(121,13,1,6,7),(122,13,2,7,6),(123,13,3,8,5),(124,13,4,9,5),(125,13,5,10,4),(126,13,6,11,4),(127,13,7,12,3),(128,13,8,13,2),(129,13,9,14,2),(130,13,10,16,2),(131,14,1,6,7),(132,14,2,7,6),(133,14,3,8,5),(134,14,4,9,5),(135,14,5,10,4),(136,14,6,11,4),(137,14,7,12,3),(138,14,8,13,2),(139,14,9,14,2),(140,14,10,16,2),(141,15,1,7,6),(142,15,2,8,5),(143,15,3,9,5),(144,15,4,10,4),(145,15,5,11,4),(146,15,6,12,4),(147,15,7,13,3),(148,15,8,14,2),(149,15,9,16,2),(150,15,10,18,2),(151,16,1,7,6),(152,16,2,8,5),(153,16,3,9,5),(154,16,4,10,4),(155,16,5,11,4),(156,16,6,12,4),(157,16,7,13,3),(158,16,8,14,2),(159,16,9,16,2),(160,16,10,18,2),(161,17,1,8,6),(162,17,2,9,5),(163,17,3,10,5),(164,17,4,11,4),(165,17,5,12,4),(166,17,6,13,3),(167,17,7,14,2),(168,17,8,16,2),(169,17,9,18,2),(170,17,10,20,2),(171,18,1,8,6),(172,18,2,9,5),(173,18,3,10,5),(174,18,4,11,4),(175,18,5,12,4),(176,18,6,13,3),(177,18,7,14,2),(178,18,8,16,2),(179,18,9,18,2),(180,18,10,20,2),(181,19,1,9,6),(182,19,2,10,5),(183,19,3,11,4),(184,19,4,12,4),(185,19,5,13,4),(186,19,6,14,3),(187,19,7,16,2),(188,19,8,18,2),(189,19,9,20,2),(190,19,10,1,2),(191,20,1,9,6),(192,20,2,10,5),(193,20,3,11,4),(194,20,4,12,4),(195,20,5,13,4),(196,20,6,14,3),(197,20,7,16,2),(198,20,8,18,2),(199,20,9,20,2),(200,20,10,1,2),(201,21,1,10,5),(202,21,2,11,5),(203,21,3,12,4),(204,21,4,13,4),(205,21,5,14,4),(206,21,6,16,3),(207,21,7,18,2),(208,21,8,20,2),(209,21,9,1,2),(210,21,10,1,2),(211,22,1,10,5),(212,22,2,11,5),(213,22,3,12,4),(214,22,4,13,4),(215,22,5,14,4),(216,22,6,16,3),(217,22,7,18,2),(218,22,8,20,2),(219,22,9,1,2),(220,22,10,1,2),(221,23,1,11,5),(222,23,2,12,4),(223,23,3,13,4),(224,23,4,14,4),(225,23,5,16,3),(226,23,6,18,3),(227,23,7,20,2),(228,23,8,1,2),(229,23,9,1,2),(230,23,10,1,2);
/*!40000 ALTER TABLE `combat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combat_numbers`
--

DROP TABLE IF EXISTS `combat_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `combat_numbers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `value` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat_numbers`
--

LOCK TABLES `combat_numbers` WRITE;
/*!40000 ALTER TABLE `combat_numbers` DISABLE KEYS */;
INSERT INTO `combat_numbers` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `combat_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combat_ratio`
--

DROP TABLE IF EXISTS `combat_ratio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `combat_ratio` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `value` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat_ratio`
--

LOCK TABLES `combat_ratio` WRITE;
/*!40000 ALTER TABLE `combat_ratio` DISABLE KEYS */;
INSERT INTO `combat_ratio` VALUES (1,-11),(2,-10),(3,-9),(4,-8),(5,-7),(6,-6),(7,-5),(8,-4),(9,-3),(10,-2),(11,-1),(12,0),(13,1),(14,2),(15,3),(16,4),(17,5),(18,6),(19,7),(20,8),(21,9),(22,10),(23,11);
/*!40000 ALTER TABLE `combat_ratio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combat_results`
--

DROP TABLE IF EXISTS `combat_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `combat_results` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `endurance` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat_results`
--

LOCK TABLES `combat_results` WRITE;
/*!40000 ALTER TABLE `combat_results` DISABLE KEYS */;
INSERT INTO `combat_results` VALUES (1,'D'),(2,'0'),(3,'1'),(4,'2'),(5,'3'),(6,'4'),(7,'5'),(8,'6'),(9,'7'),(10,'8'),(11,'9'),(12,'10'),(13,'11'),(14,'12'),(15,'13'),(16,'14'),(17,'15'),(18,'16'),(19,'17'),(20,'18');
/*!40000 ALTER TABLE `combat_results` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-02 14:58:03
