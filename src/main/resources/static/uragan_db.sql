-- MySQL dump 10.13  Distrib 5.7.13, for Win64 (x86_64)
--
-- Host: localhost    Database: uragan_db
-- ------------------------------------------------------
-- Server version	5.7.13-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_team` varchar(45) NOT NULL,
  `second_team` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  `season_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `_idx` (`season_id`),
  CONSTRAINT `` FOREIGN KEY (`season_id`) REFERENCES `season` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (270,'Ураган','Титан','2017-09-11','8:42',4),(271,'Ураган','Сильна командна','2017-09-11','8:43',4),(272,'asdf','asdf','2017-09-11','9:42',4);
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `season`
--

DROP TABLE IF EXISTS `season`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `season` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `years` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `season`
--

LOCK TABLES `season` WRITE;
/*!40000 ALTER TABLE `season` DISABLE KEYS */;
INSERT INTO `season` VALUES (4,'2017-2018'),(5,'2018-2019'),(7,'2019-2020'),(8,'2020-2021');
/*!40000 ALTER TABLE `season` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `row` int(11) NOT NULL,
  `place` int(11) NOT NULL,
  `sector_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_seat` (`row`,`place`,`sector_id`),
  KEY `sector_id_idx` (`sector_id`),
  CONSTRAINT `sector_id` FOREIGN KEY (`sector_id`) REFERENCES `sector` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=609 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES (2,1,1,1),(489,1,1,16),(3,1,2,1),(490,1,2,16),(4,1,3,1),(491,1,3,16),(5,1,4,1),(492,1,4,16),(6,1,5,1),(493,1,5,16),(7,1,6,1),(494,1,6,16),(8,1,7,1),(495,1,7,16),(9,1,8,1),(496,1,8,16),(18,1,9,2),(585,1,9,15),(19,1,10,2),(586,1,10,15),(20,1,11,2),(587,1,11,15),(21,1,12,2),(588,1,12,15),(22,1,13,2),(589,1,13,15),(23,1,14,2),(590,1,14,15),(24,1,15,2),(591,1,15,15),(25,1,16,2),(592,1,16,15),(146,1,17,3),(465,1,17,11),(149,1,18,3),(466,1,18,11),(152,1,19,3),(467,1,19,11),(155,1,20,3),(468,1,20,11),(158,1,21,3),(469,1,21,11),(161,1,22,3),(470,1,22,11),(164,1,23,3),(471,1,23,11),(167,1,24,3),(472,1,24,11),(122,1,25,4),(561,1,25,14),(125,1,26,4),(562,1,26,14),(128,1,27,4),(563,1,27,14),(131,1,28,4),(564,1,28,14),(134,1,29,4),(565,1,29,14),(137,1,30,4),(566,1,30,14),(140,1,31,4),(567,1,31,14),(143,1,32,4),(568,1,32,14),(170,1,33,5),(537,1,33,13),(173,1,34,5),(538,1,34,13),(176,1,35,5),(539,1,35,13),(179,1,36,5),(540,1,36,13),(182,1,37,5),(541,1,37,13),(185,1,38,5),(542,1,38,13),(188,1,39,5),(543,1,39,13),(191,1,40,5),(544,1,40,13),(513,1,41,12),(514,1,42,12),(515,1,43,12),(516,1,44,12),(517,1,45,12),(518,1,46,12),(519,1,47,12),(520,1,48,12),(10,2,1,1),(285,2,1,6),(195,2,1,7),(345,2,1,8),(405,2,1,9),(435,2,1,10),(497,2,1,16),(11,2,2,1),(288,2,2,6),(198,2,2,7),(348,2,2,8),(408,2,2,9),(438,2,2,10),(498,2,2,16),(12,2,3,1),(291,2,3,6),(201,2,3,7),(351,2,3,8),(411,2,3,9),(441,2,3,10),(499,2,3,16),(13,2,4,1),(294,2,4,6),(204,2,4,7),(354,2,4,8),(414,2,4,9),(444,2,4,10),(500,2,4,16),(14,2,5,1),(297,2,5,6),(207,2,5,7),(357,2,5,8),(417,2,5,9),(447,2,5,10),(501,2,5,16),(15,2,6,1),(300,2,6,6),(210,2,6,7),(360,2,6,8),(420,2,6,9),(450,2,6,10),(502,2,6,16),(16,2,7,1),(303,2,7,6),(213,2,7,7),(363,2,7,8),(423,2,7,9),(453,2,7,10),(503,2,7,16),(17,2,8,1),(306,2,8,6),(216,2,8,7),(366,2,8,8),(426,2,8,9),(456,2,8,10),(504,2,8,16),(26,2,9,2),(309,2,9,6),(219,2,9,7),(369,2,9,8),(429,2,9,9),(459,2,9,10),(593,2,9,15),(27,2,10,2),(312,2,10,6),(222,2,10,7),(372,2,10,8),(432,2,10,9),(462,2,10,10),(594,2,10,15),(28,2,11,2),(315,2,11,6),(225,2,11,7),(375,2,11,8),(595,2,11,15),(29,2,12,2),(318,2,12,6),(228,2,12,7),(378,2,12,8),(596,2,12,15),(30,2,13,2),(321,2,13,6),(231,2,13,7),(381,2,13,8),(597,2,13,15),(31,2,14,2),(324,2,14,6),(234,2,14,7),(384,2,14,8),(598,2,14,15),(32,2,15,2),(327,2,15,6),(237,2,15,7),(387,2,15,8),(599,2,15,15),(33,2,16,2),(330,2,16,6),(240,2,16,7),(390,2,16,8),(600,2,16,15),(147,2,17,3),(333,2,17,6),(243,2,17,7),(393,2,17,8),(473,2,17,11),(150,2,18,3),(336,2,18,6),(246,2,18,7),(396,2,18,8),(474,2,18,11),(153,2,19,3),(339,2,19,6),(249,2,19,7),(399,2,19,8),(475,2,19,11),(156,2,20,3),(342,2,20,6),(252,2,20,7),(402,2,20,8),(476,2,20,11),(159,2,21,3),(255,2,21,7),(477,2,21,11),(162,2,22,3),(258,2,22,7),(478,2,22,11),(165,2,23,3),(261,2,23,7),(479,2,23,11),(168,2,24,3),(264,2,24,7),(480,2,24,11),(123,2,25,4),(267,2,25,7),(569,2,25,14),(126,2,26,4),(270,2,26,7),(570,2,26,14),(129,2,27,4),(273,2,27,7),(571,2,27,14),(132,2,28,4),(276,2,28,7),(572,2,28,14),(135,2,29,4),(279,2,29,7),(573,2,29,14),(138,2,30,4),(282,2,30,7),(574,2,30,14),(141,2,31,4),(575,2,31,14),(144,2,32,4),(576,2,32,14),(171,2,33,5),(545,2,33,13),(174,2,34,5),(546,2,34,13),(177,2,35,5),(547,2,35,13),(180,2,36,5),(548,2,36,13),(183,2,37,5),(549,2,37,13),(186,2,38,5),(550,2,38,13),(189,2,39,5),(551,2,39,13),(192,2,40,5),(552,2,40,13),(521,2,41,12),(522,2,42,12),(523,2,43,12),(524,2,44,12),(525,2,45,12),(526,2,46,12),(527,2,47,12),(528,2,48,12),(42,3,1,1),(286,3,1,6),(196,3,1,7),(346,3,1,8),(406,3,1,9),(436,3,1,10),(505,3,1,16),(43,3,2,1),(289,3,2,6),(199,3,2,7),(349,3,2,8),(409,3,2,9),(439,3,2,10),(506,3,2,16),(44,3,3,1),(292,3,3,6),(202,3,3,7),(352,3,3,8),(412,3,3,9),(442,3,3,10),(507,3,3,16),(45,3,4,1),(295,3,4,6),(205,3,4,7),(355,3,4,8),(415,3,4,9),(445,3,4,10),(508,3,4,16),(46,3,5,1),(298,3,5,6),(208,3,5,7),(358,3,5,8),(418,3,5,9),(448,3,5,10),(509,3,5,16),(47,3,6,1),(301,3,6,6),(211,3,6,7),(361,3,6,8),(421,3,6,9),(451,3,6,10),(510,3,6,16),(48,3,7,1),(304,3,7,6),(214,3,7,7),(364,3,7,8),(424,3,7,9),(454,3,7,10),(511,3,7,16),(49,3,8,1),(307,3,8,6),(217,3,8,7),(367,3,8,8),(427,3,8,9),(457,3,8,10),(512,3,8,16),(34,3,9,2),(310,3,9,6),(220,3,9,7),(370,3,9,8),(430,3,9,9),(460,3,9,10),(601,3,9,15),(35,3,10,2),(313,3,10,6),(223,3,10,7),(373,3,10,8),(433,3,10,9),(463,3,10,10),(602,3,10,15),(36,3,11,2),(316,3,11,6),(226,3,11,7),(376,3,11,8),(603,3,11,15),(37,3,12,2),(319,3,12,6),(229,3,12,7),(379,3,12,8),(604,3,12,15),(38,3,13,2),(322,3,13,6),(232,3,13,7),(382,3,13,8),(605,3,13,15),(39,3,14,2),(325,3,14,6),(235,3,14,7),(385,3,14,8),(606,3,14,15),(40,3,15,2),(328,3,15,6),(238,3,15,7),(388,3,15,8),(607,3,15,15),(41,3,16,2),(331,3,16,6),(241,3,16,7),(391,3,16,8),(608,3,16,15),(148,3,17,3),(334,3,17,6),(244,3,17,7),(394,3,17,8),(481,3,17,11),(151,3,18,3),(337,3,18,6),(247,3,18,7),(397,3,18,8),(482,3,18,11),(154,3,19,3),(340,3,19,6),(250,3,19,7),(400,3,19,8),(483,3,19,11),(157,3,20,3),(343,3,20,6),(253,3,20,7),(403,3,20,8),(484,3,20,11),(160,3,21,3),(256,3,21,7),(485,3,21,11),(163,3,22,3),(259,3,22,7),(486,3,22,11),(166,3,23,3),(262,3,23,7),(487,3,23,11),(169,3,24,3),(265,3,24,7),(488,3,24,11),(124,3,25,4),(268,3,25,7),(577,3,25,14),(127,3,26,4),(271,3,26,7),(578,3,26,14),(130,3,27,4),(274,3,27,7),(579,3,27,14),(133,3,28,4),(277,3,28,7),(580,3,28,14),(136,3,29,4),(280,3,29,7),(581,3,29,14),(139,3,30,4),(283,3,30,7),(582,3,30,14),(142,3,31,4),(583,3,31,14),(145,3,32,4),(584,3,32,14),(172,3,33,5),(553,3,33,13),(175,3,34,5),(554,3,34,13),(178,3,35,5),(555,3,35,13),(181,3,36,5),(556,3,36,13),(184,3,37,5),(557,3,37,13),(187,3,38,5),(558,3,38,13),(190,3,39,5),(559,3,39,13),(193,3,40,5),(560,3,40,13),(529,3,41,12),(530,3,42,12),(531,3,43,12),(532,3,44,12),(533,3,45,12),(534,3,46,12),(535,3,47,12),(536,3,48,12),(287,4,1,6),(197,4,1,7),(347,4,1,8),(407,4,1,9),(437,4,1,10),(290,4,2,6),(200,4,2,7),(350,4,2,8),(410,4,2,9),(440,4,2,10),(293,4,3,6),(203,4,3,7),(353,4,3,8),(413,4,3,9),(443,4,3,10),(296,4,4,6),(206,4,4,7),(356,4,4,8),(416,4,4,9),(446,4,4,10),(299,4,5,6),(209,4,5,7),(359,4,5,8),(419,4,5,9),(449,4,5,10),(302,4,6,6),(212,4,6,7),(362,4,6,8),(422,4,6,9),(452,4,6,10),(305,4,7,6),(215,4,7,7),(365,4,7,8),(425,4,7,9),(455,4,7,10),(308,4,8,6),(218,4,8,7),(368,4,8,8),(428,4,8,9),(458,4,8,10),(311,4,9,6),(221,4,9,7),(371,4,9,8),(431,4,9,9),(461,4,9,10),(314,4,10,6),(224,4,10,7),(374,4,10,8),(434,4,10,9),(464,4,10,10),(317,4,11,6),(227,4,11,7),(377,4,11,8),(320,4,12,6),(230,4,12,7),(380,4,12,8),(323,4,13,6),(233,4,13,7),(383,4,13,8),(326,4,14,6),(236,4,14,7),(386,4,14,8),(329,4,15,6),(239,4,15,7),(389,4,15,8),(332,4,16,6),(242,4,16,7),(392,4,16,8),(335,4,17,6),(245,4,17,7),(395,4,17,8),(338,4,18,6),(248,4,18,7),(398,4,18,8),(341,4,19,6),(251,4,19,7),(401,4,19,8),(344,4,20,6),(254,4,20,7),(404,4,20,8),(257,4,21,7),(260,4,22,7),(263,4,23,7),(266,4,24,7),(269,4,25,7),(272,4,26,7),(275,4,27,7),(278,4,28,7),(281,4,29,7),(284,4,30,7);
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sector`
--

DROP TABLE IF EXISTS `sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sector` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sector`
--

LOCK TABLES `sector` WRITE;
/*!40000 ALTER TABLE `sector` DISABLE KEYS */;
INSERT INTO `sector` VALUES (1,'A',100),(2,'B',200),(3,'VIP',150),(4,'F',50),(5,'G',30),(6,'C',300),(7,'D',300),(8,'E',300),(9,'O',10),(10,'P',10),(11,'K',10),(12,'H',100),(13,'I',1001),(14,'J',100),(15,'L',100),(16,'M',100);
/*!40000 ALTER TABLE `sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(45) NOT NULL,
  `seat_id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_subscr` (`seat_id`,`season_id`),
  KEY `season_id_subscr` (`season_id`),
  CONSTRAINT `season_id_subscr` FOREIGN KEY (`season_id`) REFERENCES `season` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `seat_id_subscr` FOREIGN KEY (`seat_id`) REFERENCES `seat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES (94,'SomeMan',2,7),(101,'dfsafs',3,7),(105,'afsdf',43,4),(106,'asdf',284,4),(107,'afasdf',493,4);
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT NULL,
  `seat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_ticket` (`game_id`,`seat_id`),
  KEY `seat_id` (`seat_id`),
  KEY `game_id` (`game_id`),
  CONSTRAINT `game_id` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `seat_id` FOREIGN KEY (`seat_id`) REFERENCES `seat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=390 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (381,270,240),(380,271,161),(378,271,231),(376,271,240),(389,271,242),(377,271,246),(379,271,252),(388,271,384),(387,271,391),(383,272,274),(382,272,402),(384,272,404),(386,272,454),(385,272,605);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(90) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'uragan','$2a$06$GBS6hdEfvhXnGGbuPdiaMebwaZ2NNqbfc0tAq9la6YvMAT9eXh9Om','USER');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-11 10:44:57
