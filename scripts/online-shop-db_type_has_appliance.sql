-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: online-shop-db
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `type_has_appliance`
--

DROP TABLE IF EXISTS `type_has_appliance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_has_appliance` (
  `type_idtype` int(11) NOT NULL,
  `appliance_idappliance` int(11) NOT NULL,
  PRIMARY KEY (`type_idtype`,`appliance_idappliance`),
  KEY `fk_type_has_appliance_appliance1_idx` (`appliance_idappliance`),
  KEY `fk_type_has_appliance_type1_idx` (`type_idtype`),
  CONSTRAINT `fk_type_has_appliance_appliance1` FOREIGN KEY (`appliance_idappliance`) REFERENCES `appliance` (`idappliance`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_type_has_appliance_type1` FOREIGN KEY (`type_idtype`) REFERENCES `type` (`idtype`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_has_appliance`
--

LOCK TABLES `type_has_appliance` WRITE;
/*!40000 ALTER TABLE `type_has_appliance` DISABLE KEYS */;
INSERT INTO `type_has_appliance` VALUES (1,1),(2,1),(1,2),(2,2),(1,3),(2,3),(1,4),(2,4),(3,5),(4,5),(3,6),(4,6),(3,7),(4,7),(3,8),(4,8),(5,9),(6,9),(5,10),(6,10),(5,11),(6,11),(7,12),(8,12),(7,13),(8,13),(7,14),(8,14),(9,15),(10,15),(9,16),(10,16),(9,17),(10,17),(9,18),(10,18);
/*!40000 ALTER TABLE `type_has_appliance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-24 21:44:01
