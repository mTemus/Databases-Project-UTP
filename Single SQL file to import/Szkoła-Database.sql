-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: szkola
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dziennik_ocen`
--

DROP TABLE IF EXISTS `dziennik_ocen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dziennik_ocen` (
  `id_oceny` int(11) NOT NULL AUTO_INCREMENT,
  `ocena` int(11) NOT NULL,
  `id_ucznia` int(11) NOT NULL,
  `id_przedmiotu` int(11) NOT NULL,
  PRIMARY KEY (`id_oceny`),
  KEY `dzie_uczn_idx` (`id_ucznia`),
  KEY `dzie_prze_idx` (`id_przedmiotu`),
  CONSTRAINT `dzie_prze` FOREIGN KEY (`id_przedmiotu`) REFERENCES `przedmiot` (`id_przedmiotu`),
  CONSTRAINT `dzie_uczn` FOREIGN KEY (`id_ucznia`) REFERENCES `uczniowie` (`id_ucznia`)
) ENGINE=InnoDB AUTO_INCREMENT=598 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dziennik_ocen`
--

LOCK TABLES `dziennik_ocen` WRITE;
/*!40000 ALTER TABLE `dziennik_ocen` DISABLE KEYS */;
INSERT INTO `dziennik_ocen` VALUES (1,5,1,1),(2,4,1,1),(3,5,1,1),(4,4,2,1),(5,3,2,1),(6,5,2,1),(7,5,3,1),(8,4,3,1),(9,5,3,1),(10,4,4,1),(11,2,4,1),(12,4,4,1),(13,4,5,1),(14,3,5,1),(15,4,5,1),(16,5,7,1),(17,5,7,1),(18,4,7,1),(19,3,8,1),(20,5,8,1),(21,3,8,1),(22,4,9,1),(23,3,9,1),(24,3,9,1),(25,4,11,1),(26,4,11,1),(27,5,11,1),(28,5,12,1),(29,4,12,1),(30,3,12,1),(31,4,13,1),(32,3,13,1),(33,4,13,1),(34,3,14,1),(35,4,14,1),(36,2,14,1),(37,4,15,1),(38,3,15,1),(39,4,15,1),(40,6,16,1),(41,5,16,1),(42,4,16,1),(43,4,17,1),(44,5,17,1),(45,3,17,1),(46,3,19,1),(47,4,19,1),(48,1,19,1),(49,5,20,1),(50,2,20,1),(51,3,20,1),(52,2,21,1),(53,5,21,1),(54,3,21,1),(55,4,22,1),(56,3,22,1),(57,4,22,1),(58,4,23,1),(59,4,23,1),(60,3,23,1),(61,3,1,2),(62,3,1,2),(63,4,1,2),(64,2,2,2),(65,5,2,2),(66,5,2,2),(67,2,3,2),(68,4,3,2),(69,2,3,2),(70,5,4,2),(71,3,4,2),(72,3,4,2),(73,5,5,2),(74,3,5,2),(75,2,5,2),(76,3,7,2),(77,4,7,2),(78,3,7,2),(79,3,8,2),(80,4,8,2),(81,5,8,2),(82,4,17,2),(83,5,17,2),(84,3,17,2),(85,4,19,2),(86,5,19,2),(87,3,19,2),(88,4,20,2),(89,4,20,2),(90,5,20,2),(91,4,21,2),(92,3,21,2),(93,4,21,2),(94,4,22,2),(95,5,22,2),(96,5,22,2),(97,3,23,2),(98,3,23,2),(99,2,23,2),(100,4,1,3),(101,5,1,3),(102,3,1,3),(103,3,2,3),(104,4,2,3),(105,5,2,3),(106,3,3,3),(107,5,3,3),(108,4,3,3),(109,5,4,3),(110,5,4,3),(111,3,4,3),(112,6,5,3),(113,4,5,3),(114,3,5,3),(115,4,7,3),(116,3,7,3),(117,5,7,3),(118,4,8,3),(119,5,8,3),(120,4,8,3),(121,5,1,4),(122,4,1,4),(123,4,1,4),(124,5,2,4),(125,3,2,4),(126,4,2,4),(127,5,3,4),(128,4,3,4),(129,5,3,4),(130,4,4,4),(131,3,4,4),(132,3,4,4),(133,6,5,4),(134,4,5,4),(135,4,5,4),(136,3,7,4),(137,3,7,4),(138,4,7,4),(139,4,8,4),(140,4,8,4),(141,1,8,4),(142,5,9,4),(143,4,9,4),(144,3,9,4),(145,3,11,4),(146,4,11,4),(147,3,11,4),(148,4,12,4),(149,4,12,4),(150,4,12,4),(151,3,13,4),(152,4,13,4),(153,3,13,4),(154,1,14,4),(155,4,14,4),(156,1,14,4),(157,4,15,4),(158,4,15,4),(159,5,15,4),(160,1,16,4),(161,4,16,4),(162,4,16,4),(163,4,17,4),(164,4,17,4),(165,3,17,4),(166,2,19,4),(167,4,19,4),(168,5,19,4),(169,4,20,4),(170,5,20,4),(171,3,20,4),(172,3,21,4),(173,5,21,4),(174,4,21,4),(175,4,22,4),(176,3,22,4),(177,4,22,4),(178,5,23,4),(179,5,23,4),(180,3,23,4),(181,4,9,5),(182,5,9,5),(183,5,9,5),(184,4,11,5),(185,4,11,5),(186,5,11,5),(187,4,12,5),(188,4,12,5),(189,5,12,5),(190,4,13,5),(191,5,13,5),(192,4,13,5),(193,5,14,5),(194,4,14,5),(195,5,14,5),(196,3,15,5),(197,4,15,5),(198,5,15,5),(199,4,16,5),(200,5,16,5),(201,4,16,5),(202,3,17,5),(203,4,17,5),(204,4,17,5),(205,4,19,5),(206,3,19,5),(207,4,19,5),(208,3,20,5),(209,2,20,5),(210,4,20,5),(211,3,21,5),(212,4,21,5),(213,5,21,5),(214,5,22,5),(215,4,22,5),(216,4,22,5),(217,6,23,5),(218,3,23,5),(219,3,23,5),(220,4,1,6),(221,5,1,6),(222,4,1,6),(223,4,2,6),(224,4,2,6),(225,3,2,6),(226,4,3,6),(227,4,3,6),(228,4,3,6),(229,4,4,6),(230,3,4,6),(231,5,4,6),(232,5,5,6),(233,4,5,6),(234,3,5,6),(235,5,7,6),(236,4,7,6),(237,4,7,6),(238,3,8,6),(239,4,8,6),(240,5,8,6),(241,1,17,6),(242,1,17,6),(243,1,17,6),(244,3,19,6),(245,5,19,6),(246,3,19,6),(247,4,20,6),(248,4,20,6),(249,4,20,6),(250,3,21,6),(251,2,21,6),(252,3,21,6),(253,4,22,6),(254,3,22,6),(255,4,22,6),(256,3,23,6),(257,2,23,6),(258,4,23,6),(259,3,1,7),(260,5,1,7),(261,3,1,7),(262,4,2,7),(263,3,2,7),(264,5,2,7),(265,5,3,7),(266,4,3,7),(267,4,3,7),(268,6,4,7),(269,2,4,7),(270,4,4,7),(271,3,5,7),(272,5,5,7),(273,3,5,7),(274,4,7,7),(275,3,7,7),(276,5,7,7),(277,1,8,7),(278,2,8,7),(279,4,8,7),(280,3,9,7),(281,2,9,7),(282,5,9,7),(283,2,11,7),(284,5,11,7),(285,3,11,7),(286,4,12,7),(287,4,12,7),(288,2,12,7),(289,4,13,7),(290,5,13,7),(291,3,13,7),(292,3,14,7),(293,2,14,7),(294,3,14,7),(295,4,15,7),(296,6,15,7),(297,4,15,7),(298,3,16,7),(299,5,16,7),(300,4,16,7),(301,2,17,7),(302,3,17,7),(303,3,17,7),(304,5,19,7),(305,1,19,7),(306,3,19,7),(307,3,20,7),(308,5,20,7),(309,1,20,7),(310,5,21,7),(311,3,21,7),(312,3,21,7),(313,3,22,7),(314,4,22,7),(315,5,22,7),(316,2,23,7),(317,5,23,7),(318,3,23,7),(319,4,1,9),(320,5,1,9),(321,2,1,9),(322,4,2,9),(323,4,2,9),(324,5,2,9),(325,3,3,9),(326,4,3,9),(327,5,3,9),(328,4,4,9),(329,4,4,9),(330,3,4,9),(331,5,5,9),(332,3,5,9),(333,5,5,9),(334,2,7,9),(335,5,7,9),(336,3,7,9),(337,4,8,9),(338,2,8,9),(339,5,8,9),(340,3,9,9),(341,2,9,9),(342,5,9,9),(343,5,11,9),(344,4,11,9),(345,4,11,9),(346,3,12,9),(347,3,12,9),(348,5,12,9),(349,5,13,9),(350,4,13,9),(351,3,13,9),(352,4,14,9),(353,3,14,9),(354,3,14,9),(355,3,15,9),(356,4,15,9),(357,4,15,9),(358,2,16,9),(359,3,16,9),(360,5,16,9),(361,5,17,9),(362,4,17,9),(363,3,17,9),(364,5,19,9),(365,4,19,9),(366,5,19,9),(367,5,20,9),(368,4,20,9),(369,4,20,9),(370,4,21,9),(371,3,21,9),(372,2,21,9),(373,5,22,9),(374,3,22,9),(375,4,22,9),(376,5,23,9),(377,4,23,9),(378,6,23,9),(379,4,1,10),(380,5,1,10),(381,3,1,10),(382,4,2,10),(383,5,2,10),(384,4,2,10),(385,4,3,10),(386,5,3,10),(387,3,3,10),(388,6,4,10),(389,3,4,10),(390,4,4,10),(391,5,5,10),(392,5,5,10),(393,5,5,10),(394,5,7,10),(395,6,7,10),(396,3,7,10),(397,4,8,10),(398,2,8,10),(399,4,8,10),(400,5,17,10),(401,4,17,10),(402,2,17,10),(403,5,19,10),(404,4,19,10),(405,2,19,10),(406,6,20,10),(407,4,20,10),(408,5,20,10),(409,4,21,10),(410,4,21,10),(411,3,21,10),(412,4,22,10),(413,2,22,10),(414,2,22,10),(415,3,23,10),(416,2,23,10),(417,3,23,10),(418,5,9,11),(419,5,9,11),(420,5,9,11),(421,5,11,11),(422,5,11,11),(423,5,11,11),(424,5,12,11),(425,5,12,11),(426,5,12,11),(427,5,13,11),(428,5,13,11),(429,5,13,11),(430,5,14,11),(431,5,14,11),(432,5,14,11),(433,5,15,11),(434,5,15,11),(435,5,15,11),(436,5,16,11),(437,5,16,11),(438,5,16,11),(439,4,1,12),(440,3,1,12),(441,5,1,12),(442,4,2,12),(443,5,2,12),(444,4,2,12),(445,5,3,12),(446,2,3,12),(447,3,3,12),(448,4,4,12),(449,2,4,12),(450,5,4,12),(451,2,5,12),(452,5,5,12),(453,4,5,12),(454,3,7,12),(455,5,7,12),(456,4,7,12),(457,2,8,12),(458,5,8,12),(459,4,8,12),(460,5,17,12),(461,4,17,12),(462,6,17,12),(463,5,19,12),(464,3,19,12),(465,3,19,12),(466,4,20,12),(467,3,20,12),(468,3,20,12),(469,5,21,12),(470,4,21,12),(471,4,21,12),(472,4,22,12),(473,3,22,12),(474,3,22,12),(475,4,23,12),(476,5,23,12),(477,4,23,12),(478,5,1,13),(479,5,1,13),(480,4,1,13),(481,5,2,13),(482,4,2,13),(483,3,2,13),(484,4,3,13),(485,4,3,13),(486,4,3,13),(487,3,4,13),(488,3,4,13),(489,3,4,13),(490,2,5,13),(491,5,5,13),(492,4,5,13),(493,4,7,13),(494,3,7,13),(495,3,7,13),(496,4,8,13),(497,1,8,13),(498,3,8,13),(499,4,17,13),(500,5,17,13),(501,4,17,13),(502,4,19,13),(503,2,19,13),(504,4,19,13),(505,2,20,13),(506,3,20,13),(507,2,20,13),(508,4,21,13),(509,5,21,13),(510,5,21,13),(511,3,22,13),(512,5,22,13),(513,2,22,13),(514,1,23,13),(515,3,23,13),(516,1,23,13),(517,5,1,14),(518,4,1,14),(519,5,1,14),(520,3,2,14),(521,4,2,14),(522,5,2,14),(523,4,3,14),(524,4,3,14),(525,2,3,14),(526,5,4,14),(527,2,4,14),(528,4,4,14),(529,5,5,14),(530,4,5,14),(531,3,5,14),(532,2,7,14),(533,3,7,14),(534,1,7,14),(535,3,8,14),(536,5,8,14),(537,2,8,14),(538,3,1,15),(539,4,1,15),(540,1,1,15),(541,2,2,15),(542,4,2,15),(543,4,2,15),(544,4,3,15),(545,3,3,15),(546,3,3,15),(547,3,4,15),(548,3,4,15),(549,2,4,15),(550,1,5,15),(551,3,5,15),(552,4,5,15),(553,5,7,15),(554,1,7,15),(555,2,7,15),(556,3,8,15),(557,4,8,15),(558,2,8,15),(559,3,9,15),(560,4,9,15),(561,2,9,15),(562,4,11,15),(563,6,11,15),(564,1,11,15),(565,4,12,15),(566,4,12,15),(567,3,12,15),(568,2,13,15),(569,3,13,15),(570,3,13,15),(571,1,14,15),(572,4,14,15),(573,3,14,15),(574,6,15,15),(575,2,15,15),(576,4,15,15),(577,6,16,15),(578,5,16,15),(579,1,16,15),(580,6,17,15),(581,5,17,15),(582,4,17,15),(583,3,19,15),(584,2,19,15),(585,1,19,15),(586,5,20,15),(587,2,20,15),(588,3,20,15),(589,5,21,15),(590,5,21,15),(591,5,21,15),(592,1,22,15),(593,3,22,15),(594,2,22,15),(595,1,23,15),(596,4,23,15),(597,5,23,15);
/*!40000 ALTER TABLE `dziennik_ocen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kadra`
--

DROP TABLE IF EXISTS `kadra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kadra` (
  `id_kadry` int(11) NOT NULL AUTO_INCREMENT,
  `id_nauczyciela` int(11) NOT NULL,
  `id_przedmiotu` int(11) NOT NULL,
  PRIMARY KEY (`id_kadry`),
  UNIQUE KEY `id_kadry_UNIQUE` (`id_kadry`),
  KEY `kadr_nauc_idx` (`id_nauczyciela`),
  KEY `kadr_przedm_idx` (`id_przedmiotu`),
  CONSTRAINT `kadr_nauc` FOREIGN KEY (`id_nauczyciela`) REFERENCES `nauczyciele` (`id_nauczyciela`),
  CONSTRAINT `kadr_przed` FOREIGN KEY (`id_przedmiotu`) REFERENCES `przedmiot` (`id_przedmiotu`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kadra`
--

LOCK TABLES `kadra` WRITE;
/*!40000 ALTER TABLE `kadra` DISABLE KEYS */;
INSERT INTO `kadra` VALUES (1,1,2),(2,2,7),(3,3,8),(4,4,3),(5,5,1),(6,6,11),(7,7,15),(8,8,10),(9,9,9),(10,10,1),(11,11,14),(12,12,13),(13,13,4),(14,15,5),(15,16,7),(16,17,4),(17,18,6),(18,20,12);
/*!40000 ALTER TABLE `kadra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klasa`
--

DROP TABLE IF EXISTS `klasa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `klasa` (
  `id_klasy` int(11) NOT NULL AUTO_INCREMENT,
  `id_wychowawcy` int(11) NOT NULL,
  `rocznik` int(11) NOT NULL,
  PRIMARY KEY (`id_klasy`),
  KEY `klas_wych_idx` (`id_wychowawcy`),
  CONSTRAINT `klas_wych` FOREIGN KEY (`id_wychowawcy`) REFERENCES `wychowawca` (`id_wychowawcy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klasa`
--

LOCK TABLES `klasa` WRITE;
/*!40000 ALTER TABLE `klasa` DISABLE KEYS */;
INSERT INTO `klasa` VALUES (1,2,3),(2,3,1),(3,1,2);
/*!40000 ALTER TABLE `klasa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nauczyciele`
--

DROP TABLE IF EXISTS `nauczyciele`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nauczyciele` (
  `id_nauczyciela` int(11) NOT NULL AUTO_INCREMENT,
  `id_pracownika` int(11) NOT NULL,
  `chorobowe` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_nauczyciela`),
  UNIQUE KEY `id_nauczyciela_UNIQUE` (`id_nauczyciela`),
  KEY `nauc_prac_idx` (`id_pracownika`),
  CONSTRAINT `nauc_prac` FOREIGN KEY (`id_pracownika`) REFERENCES `pracownicy` (`id_pracownika`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nauczyciele`
--

LOCK TABLES `nauczyciele` WRITE;
/*!40000 ALTER TABLE `nauczyciele` DISABLE KEYS */;
INSERT INTO `nauczyciele` VALUES (1,2,1),(2,3,0),(3,4,1),(4,5,0),(5,6,0),(6,7,0),(7,8,0),(8,9,0),(9,10,0),(10,11,0),(11,12,0),(12,13,0),(13,14,0),(14,15,0),(15,16,0),(16,17,0),(17,18,0),(18,19,0),(19,20,0),(20,21,0);
/*!40000 ALTER TABLE `nauczyciele` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opłaty`
--

DROP TABLE IF EXISTS `opłaty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `opłaty` (
  `id_ucznia` int(11) NOT NULL,
  `typ_opłaty` varchar(45) NOT NULL,
  `wielkość_opłaty` int(11) NOT NULL,
  PRIMARY KEY (`id_ucznia`,`typ_opłaty`),
  KEY `opla_uczn_idx` (`id_ucznia`),
  CONSTRAINT `opla_uczn` FOREIGN KEY (`id_ucznia`) REFERENCES `uczniowie` (`id_ucznia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opłaty`
--

LOCK TABLES `opłaty` WRITE;
/*!40000 ALTER TABLE `opłaty` DISABLE KEYS */;
INSERT INTO `opłaty` VALUES (1,'Kino',30),(1,'rada_rodziców',50),(1,'Ubezpieczenie',20),(2,'Kino',30),(2,'rada_rodziców',50),(2,'Ubezpieczenie',20),(3,'Kino',30),(3,'rada_rodziców',50),(3,'Ubezpieczenie',20),(4,'Kino',30),(4,'rada_rodziców',50),(4,'Ubezpieczenie',20),(5,'Kino',30),(5,'rada_rodziców',50),(5,'Ubezpieczenie',20),(6,'Kino',30),(6,'rada_rodziców',50),(6,'Ubezpieczenie',20),(7,'Kino',30),(7,'rada_rodziców',50),(7,'Ubezpieczenie',20),(8,'Kino',30),(8,'rada_rodziców',50),(8,'Ubezpieczenie',20),(9,'rada_rodziców',50),(9,'Ubezpieczenie',20),(10,'Kino',30),(10,'rada_rodziców',50),(10,'Ubezpieczenie',20),(11,'Kino',30),(11,'rada_rodziców',50),(11,'Ubezpieczenie',20),(12,'rada_rodziców',50),(12,'Ubezpieczenie',20),(14,'Kino',30),(14,'rada_rodziców',50),(14,'Ubezpieczenie',20),(15,'Kino',30),(15,'rada_rodziców',50),(15,'Ubezpieczenie',20),(16,'Kino',30),(16,'rada_rodziców',50),(16,'Ubezpieczenie',20),(17,'rada_rodziców',50),(18,'rada_rodziców',50),(18,'Ubezpieczenie',20),(19,'rada_rodziców',50),(19,'Ubezpieczenie',20),(20,'Kino',30),(20,'rada_rodziców',50),(20,'Ubezpieczenie',20),(21,'Kino',30),(21,'rada_rodziców',50),(21,'Ubezpieczenie',20),(22,'rada_rodziców',50),(22,'Ubezpieczenie',20),(23,'rada_rodziców',50),(23,'Ubezpieczenie',20),(24,'rada_rodziców',50),(24,'Ubezpieczenie',20);
/*!40000 ALTER TABLE `opłaty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pracownicy`
--

DROP TABLE IF EXISTS `pracownicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pracownicy` (
  `id_pracownika` int(11) NOT NULL AUTO_INCREMENT,
  `id_przełożonego` int(11) DEFAULT NULL,
  `imię` varchar(45) NOT NULL,
  `nazwisko` varchar(45) NOT NULL,
  `stanowisko` varchar(45) NOT NULL,
  `pensja` int(11) NOT NULL,
  `etat` varchar(45) NOT NULL,
  PRIMARY KEY (`id_pracownika`),
  UNIQUE KEY `id_pracownika_UNIQUE` (`id_pracownika`),
  KEY `prac_prac_idx` (`id_przełożonego`),
  CONSTRAINT `prac_prac` FOREIGN KEY (`id_przełożonego`) REFERENCES `pracownicy` (`id_pracownika`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pracownicy`
--

LOCK TABLES `pracownicy` WRITE;
/*!40000 ALTER TABLE `pracownicy` DISABLE KEYS */;
INSERT INTO `pracownicy` VALUES (1,NULL,'Stefan','Brzęczydło','Dyrektor',5000,'pełen'),(2,1,'Marcin','Raczek','Nauczyciel',2700,'pełen'),(3,1,'Adrianna','Hałas','Nauczyciel',2700,'pełen'),(4,1,'Agata','Duda','Nauczyciel',2700,'pełen'),(5,1,'Marian','Kowal','Nauczyciel',2700,'pełen'),(6,1,'Matylda','Grzęda','Nauczyciel',2700,'pełen'),(7,1,'Igor','Pelikan','Nauczyciel',2700,'pełen'),(8,1,'Konrad','Brzęczydło','Nauczyciel',3500,'pełen'),(9,1,'Maria','Kwasigroch','Nauczyciel',2700,'pełen'),(10,1,'Mateusz','Przeszkoda','Nauczyciel',2700,'pełen'),(11,1,'Julian','Tuniewim','Nauczyciel',2700,'pełen'),(12,1,'Beata','Worek','Nauczyciel',2700,'pełen'),(13,1,'Apolonia','Kowalska','Nauczyciel',2700,'pełen'),(14,1,'Juliusz','Mogiła','Nauczyciel',2700,'pełen'),(15,1,'Krzysztof','Pieczarka','Nauczyciel',2700,'pełen'),(16,1,'Agata','Mysz','Nauczyciel',2700,'pełen'),(17,1,'Jurek','Owsianka','Nauczyciel',2700,'pełen'),(18,1,'John','Smith','Nauczyciel_z_zagranicy',2900,'pełen'),(19,1,'Włodzimierz','Tymianek','Nauczyciel',2700,'pełen'),(20,1,'Piotr','Luksja','Nauczyciel',2700,'pełen'),(21,1,'Izabela','Luksja','Nauczyciel',2700,'pełen'),(22,1,'Henryka','Awokado','Szef Kuchni',2300,'pełen'),(23,22,'Stefan','Daniel','Kucharz',2000,'pełen'),(24,22,'Judyta','Por','Kucharz',2000,'pełen'),(25,1,'Józef','Kamień','Woźny',1500,'pół'),(26,1,'Henryk','Kaszanka','Woźny',1500,'pół'),(27,1,'Stefania','Huk','Sprzątaczka',1300,'pół'),(28,1,'Helena','Cytrus','Sprzątaczka',1300,'pół'),(29,1,'Alan','Modejko','Sprzątacz',1300,'pół'),(30,1,'Ewa','Czajka','Szatniarka',1000,'pół'),(31,NULL,'Zdzisław','Gregorowicz','Ochroniarz',1600,'pół');
/*!40000 ALTER TABLE `pracownicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `przedmiot`
--

DROP TABLE IF EXISTS `przedmiot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `przedmiot` (
  `id_przedmiotu` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(45) NOT NULL,
  `godzin_tygodniowo` int(11) NOT NULL,
  PRIMARY KEY (`id_przedmiotu`),
  UNIQUE KEY `id_przedmiotu_UNIQUE` (`id_przedmiotu`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `przedmiot`
--

LOCK TABLES `przedmiot` WRITE;
/*!40000 ALTER TABLE `przedmiot` DISABLE KEYS */;
INSERT INTO `przedmiot` VALUES (1,'język_polski',12),(2,'język_angielski',4),(3,'język_niemiecki',2),(4,'matematyka',10),(5,'przyroda',2),(6,'technika',2),(7,'WF',3),(8,'godzina_wychowawcza',1),(9,'historia',2),(10,'geografia',2),(11,'plastyka',2),(12,'muzyka',2),(13,'WOS',4),(14,'WDŻ',2),(15,'informatyka',2);
/*!40000 ALTER TABLE `przedmiot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `przewodniczący`
--

DROP TABLE IF EXISTS `przewodniczący`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `przewodniczący` (
  `id_ucznia` int(11) NOT NULL,
  KEY `prze_uczn_idx` (`id_ucznia`),
  CONSTRAINT `prze_uczn` FOREIGN KEY (`id_ucznia`) REFERENCES `uczniowie` (`id_ucznia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `przewodniczący`
--

LOCK TABLES `przewodniczący` WRITE;
/*!40000 ALTER TABLE `przewodniczący` DISABLE KEYS */;
INSERT INTO `przewodniczący` VALUES (1),(12),(20);
/*!40000 ALTER TABLE `przewodniczący` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sala`
--

DROP TABLE IF EXISTS `sala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sala` (
  `id_sali` int(11) NOT NULL AUTO_INCREMENT,
  `nr_sali` int(11) NOT NULL,
  `ilość_miejsc` int(11) NOT NULL,
  `typ_sali` varchar(45) NOT NULL,
  PRIMARY KEY (`id_sali`),
  UNIQUE KEY `id_sali_UNIQUE` (`id_sali`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sala`
--

LOCK TABLES `sala` WRITE;
/*!40000 ALTER TABLE `sala` DISABLE KEYS */;
INSERT INTO `sala` VALUES (1,1,16,'Matematyczna'),(2,5,9,'Zwykła'),(3,6,10,'Zwykła'),(4,8,16,'Plastyczna'),(5,10,10,'Zwykła'),(6,11,10,'Biologiczna'),(7,12,16,'Matematyczna'),(8,13,10,'Biologiczna'),(9,15,10,'Geograficzna'),(10,16,16,'Plastyczna'),(11,18,13,'Językowa'),(12,19,9,'Zwykła'),(13,20,8,'Informatyczna'),(14,24,14,'Językowa'),(15,30,20,'Sala_sportowa');
/*!40000 ALTER TABLE `sala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skarbnik`
--

DROP TABLE IF EXISTS `skarbnik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `skarbnik` (
  `id_ucznia` int(11) NOT NULL,
  KEY `skar_uczn_idx` (`id_ucznia`),
  CONSTRAINT `skar_uczn` FOREIGN KEY (`id_ucznia`) REFERENCES `uczniowie` (`id_ucznia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skarbnik`
--

LOCK TABLES `skarbnik` WRITE;
/*!40000 ALTER TABLE `skarbnik` DISABLE KEYS */;
INSERT INTO `skarbnik` VALUES (5),(11),(17);
/*!40000 ALTER TABLE `skarbnik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uczniowie`
--

DROP TABLE IF EXISTS `uczniowie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `uczniowie` (
  `id_ucznia` int(11) NOT NULL AUTO_INCREMENT,
  `imię` varchar(45) NOT NULL,
  `nazwisko` varchar(45) NOT NULL,
  `data_urodzenia` date NOT NULL,
  `płeć` varchar(45) NOT NULL,
  `id_klasy` int(11) NOT NULL,
  `id_przewodniczącego` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ucznia`),
  UNIQUE KEY `id_ucznia_UNIQUE` (`id_ucznia`),
  KEY `uczn_klas_idx` (`id_klasy`),
  KEY `uczn_uczn_idx` (`id_przewodniczącego`),
  CONSTRAINT `uczn_klas` FOREIGN KEY (`id_klasy`) REFERENCES `klasa` (`id_klasy`),
  CONSTRAINT `uczn_uczn` FOREIGN KEY (`id_przewodniczącego`) REFERENCES `uczniowie` (`id_ucznia`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uczniowie`
--

LOCK TABLES `uczniowie` WRITE;
/*!40000 ALTER TABLE `uczniowie` DISABLE KEYS */;
INSERT INTO `uczniowie` VALUES (1,'Marcin','Wójcik','1997-02-11','Mężczyzna',3,NULL),(2,'Sebastian','Kemnitz','1997-02-22','Mężczyzna',3,1),(3,'Jakub','Melkowski','1997-07-31','Mężczyzna',3,1),(4,'Stanisław','Rubaj','1997-11-17','Mężczyzna',3,1),(5,'Łukasz','Szadowski','1997-03-13','Mężczyzna',3,1),(6,'Paulina','Kieruj','1997-04-01','Kobieta',3,1),(7,'Mateusz','Majewski','1997-08-10','Mężczyzna',3,1),(8,'Krystian','Bursztyński','1997-12-12','Mężczyzna',3,1),(9,'Mariusz','Sanitariusz','1999-05-11','Mężczyzna',1,12),(10,'Eryk','Daniel','1999-04-16','Mężczyzna',1,12),(11,'Zuzanna','Kopytko','1999-11-21','Kobieta',1,NULL),(12,'Paweł','Garlicki','1999-02-28','Mężczyzna',1,12),(13,'Piotr','Stróżewski','1999-07-19','Mężczyzna',1,12),(14,'Marika','Majeranek','1999-10-02','Kobieta',1,12),(15,'Brajan','Kowalski','1999-05-01','Mężczyzna',1,12),(16,'Joanna','Ibisz','1999-06-26','Kobieta',1,12),(17,'Martyna','Zabłodzka','1998-07-27','Kobieta',2,20),(18,'Kasia','Jurny','1998-01-01','Kobieta',2,20),(19,'Olgierd','Skurzyński','1998-12-05','Mężczyzna',2,20),(20,'Patryk','Nijaki','1998-11-24','Mężczyzna',2,NULL),(21,'Norbert','Gierczak','1998-01-01','Mężczyzna',2,20),(22,'Wojciech','Marudny','1998-03-30','Mężczyzna',2,20),(23,'Natalia','Baczyńska','1998-04-01','Kobieta',2,20),(24,'Hubert','Włóczynoga','1998-02-14','Mężczyzna',2,20);
/*!40000 ALTER TABLE `uczniowie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wychowawca`
--

DROP TABLE IF EXISTS `wychowawca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wychowawca` (
  `id_wychowawcy` int(11) NOT NULL AUTO_INCREMENT,
  `id_nauczyciela` int(11) NOT NULL,
  `dodatek_wychowawczy` int(11) DEFAULT NULL,
  `wychowane_klasy` int(11) NOT NULL,
  PRIMARY KEY (`id_wychowawcy`),
  UNIQUE KEY `id_wychowawcy_UNIQUE` (`id_wychowawcy`),
  KEY `wych_nauc_idx` (`id_nauczyciela`),
  CONSTRAINT `wych_nauc` FOREIGN KEY (`id_nauczyciela`) REFERENCES `nauczyciele` (`id_nauczyciela`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wychowawca`
--

LOCK TABLES `wychowawca` WRITE;
/*!40000 ALTER TABLE `wychowawca` DISABLE KEYS */;
INSERT INTO `wychowawca` VALUES (1,5,200,2),(2,13,400,4),(3,16,200,2);
/*!40000 ALTER TABLE `wychowawca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zajęcia`
--

DROP TABLE IF EXISTS `zajęcia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `zajęcia` (
  `id_zajęć` int(11) NOT NULL AUTO_INCREMENT,
  `id_przedmiotu` int(11) NOT NULL,
  `id_sali` int(11) NOT NULL,
  `id_klasy` int(11) NOT NULL,
  PRIMARY KEY (`id_zajęć`),
  UNIQUE KEY `id_zajęć_UNIQUE` (`id_zajęć`),
  KEY `zaje_prze_idx` (`id_przedmiotu`),
  KEY `zaje_sala_idx` (`id_sali`),
  KEY `zaje_klas_idx` (`id_klasy`),
  CONSTRAINT `zaje_klas` FOREIGN KEY (`id_klasy`) REFERENCES `klasa` (`id_klasy`),
  CONSTRAINT `zaje_prze` FOREIGN KEY (`id_przedmiotu`) REFERENCES `przedmiot` (`id_przedmiotu`),
  CONSTRAINT `zaje_sala` FOREIGN KEY (`id_sali`) REFERENCES `sala` (`id_sali`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zajęcia`
--

LOCK TABLES `zajęcia` WRITE;
/*!40000 ALTER TABLE `zajęcia` DISABLE KEYS */;
INSERT INTO `zajęcia` VALUES (1,1,2,2),(2,4,1,2),(3,5,6,2),(4,7,15,2),(5,8,12,2),(6,9,3,2),(7,11,4,2),(8,15,13,2),(9,1,2,3),(10,2,11,3),(11,4,14,3),(12,5,1,3),(13,6,7,3),(14,7,15,3),(15,8,12,3),(16,9,3,3),(17,10,9,3),(18,12,10,3),(19,13,5,3),(20,15,13,3),(21,1,2,1),(22,2,11,1),(23,3,4,1),(24,4,1,1),(25,6,6,1),(26,7,7,1),(27,8,12,1),(28,9,3,1),(29,10,9,1),(30,12,10,1),(31,13,5,1),(32,14,8,1),(33,15,13,1);
/*!40000 ALTER TABLE `zajęcia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zastępstwa`
--

DROP TABLE IF EXISTS `zastępstwa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `zastępstwa` (
  `id_zastępstwa` int(11) NOT NULL AUTO_INCREMENT,
  `id_nauczyciela` int(11) DEFAULT NULL,
  `id_przedmiotu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_zastępstwa`),
  UNIQUE KEY `id_zastępstwa_UNIQUE` (`id_zastępstwa`),
  KEY `zast_nauc_idx` (`id_nauczyciela`),
  KEY `zast_przed_idx` (`id_przedmiotu`),
  CONSTRAINT `zast_nauc` FOREIGN KEY (`id_nauczyciela`) REFERENCES `nauczyciele` (`id_nauczyciela`),
  CONSTRAINT `zast_przed` FOREIGN KEY (`id_przedmiotu`) REFERENCES `przedmiot` (`id_przedmiotu`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zastępstwa`
--

LOCK TABLES `zastępstwa` WRITE;
/*!40000 ALTER TABLE `zastępstwa` DISABLE KEYS */;
INSERT INTO `zastępstwa` VALUES (1,3,8),(2,1,2);
/*!40000 ALTER TABLE `zastępstwa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zwykły_uczeń`
--

DROP TABLE IF EXISTS `zwykły_uczeń`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `zwykły_uczeń` (
  `id_ucznia` int(11) NOT NULL,
  KEY `zwyk_uczn_idx` (`id_ucznia`),
  CONSTRAINT `zwyk_uczn` FOREIGN KEY (`id_ucznia`) REFERENCES `uczniowie` (`id_ucznia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zwykły_uczeń`
--

LOCK TABLES `zwykły_uczeń` WRITE;
/*!40000 ALTER TABLE `zwykły_uczeń` DISABLE KEYS */;
INSERT INTO `zwykły_uczeń` VALUES (2),(3),(4),(6),(7),(8),(9),(10),(13),(14),(15),(16),(18),(19),(21),(22),(23),(24);
/*!40000 ALTER TABLE `zwykły_uczeń` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-15 12:35:40
