-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: Homemed
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `diseases`
--

DROP TABLE IF EXISTS `diseases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diseases` (
  `D_Name` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diseases`
--

LOCK TABLES `diseases` WRITE;
/*!40000 ALTER TABLE `diseases` DISABLE KEYS */;
INSERT INTO `diseases` VALUES ('Fever'),('Cough'),('Body Pain'),('Snezzing'),('Headache'),('Vomiting');
/*!40000 ALTER TABLE `diseases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fever_m`
--

DROP TABLE IF EXISTS `fever_m`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fever_m` (
  `D_S` char(20) DEFAULT NULL,
  `Medicine` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fever_m`
--

LOCK TABLES `fever_m` WRITE;
/*!40000 ALTER TABLE `fever_m` DISABLE KEYS */;
INSERT INTO `fever_m` VALUES ('low','Crocin 150mg Twice a day'),('Normal','Crocin 150mg Twice a day for two days'),('High','Crocin 500mg Twice a day for two days');
/*!40000 ALTER TABLE `fever_m` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `high`
--

DROP TABLE IF EXISTS `high`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `high` (
  `D_Name` char(20) DEFAULT NULL,
  `Medicine` char(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `high`
--

LOCK TABLES `high` WRITE;
/*!40000 ALTER TABLE `high` DISABLE KEYS */;
INSERT INTO `high` VALUES ('Fever','Crocin 150mg Twice a day for four days'),('Cough','VicksAction 250mg Twice a day for four days'),('Body Pain','Stopache 250mg Twice a day for four days'),('Snezzing','D-Cold 250mg Twice a day for four days'),('Headache','Stopache 250mg Twice a day for four days'),('Vomiting','Vomistop 250mg Twice a day for four days');
/*!40000 ALTER TABLE `high` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `low`
--

DROP TABLE IF EXISTS `low`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `low` (
  `D_Name` char(20) DEFAULT NULL,
  `Medicine` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `low`
--

LOCK TABLES `low` WRITE;
/*!40000 ALTER TABLE `low` DISABLE KEYS */;
INSERT INTO `low` VALUES ('Fever','Crocin 150mg Twice a day'),('Cough','Vicks Action 250mg Twice a day'),('Body Pain','Stopache 250mg Twice a day'),('Snezzing','D-Cold 250mg Twice a day'),('Headache','Stopache 250mg Twice a day'),('Vomiting','Vomistop 10mg Twice a day');
/*!40000 ALTER TABLE `low` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `normal`
--

DROP TABLE IF EXISTS `normal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `normal` (
  `D_Name` char(20) DEFAULT NULL,
  `Medicine` char(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `normal`
--

LOCK TABLES `normal` WRITE;
/*!40000 ALTER TABLE `normal` DISABLE KEYS */;
INSERT INTO `normal` VALUES ('Fever','Crocin 150mg Twice a day for two days'),('Cough','VicksAction 250mg Twice a day for two days'),('Body Pain','Stopache 250mg Twice a day for two days'),('Snezzing','D-Cold 250mg Twice a day for two days'),('Headache','Stopache 250mg Twice a day for two days'),('Vomiting','Vomistop 250mg Twice a day for two days');
/*!40000 ALTER TABLE `normal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-21 15:20:05
