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
-- Table structure for table `appliance`
--

DROP TABLE IF EXISTS `appliance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appliance` (
  `idappliance` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id of the appliance',
  `price` double NOT NULL COMMENT 'price of an appliance',
  `number_available` int(11) DEFAULT NULL COMMENT 'number of appliances available for order and buying',
  `image` varchar(255) DEFAULT NULL COMMENT 'path to image of an appliance',
  `discount` double DEFAULT NULL COMMENT 'discount coefficient for appliance',
  PRIMARY KEY (`idappliance`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='contains appliances';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appliance`
--

LOCK TABLES `appliance` WRITE;
/*!40000 ALTER TABLE `appliance` DISABLE KEYS */;
INSERT INTO `appliance` VALUES (1,3500,5,'adsgaer',0),(2,2550,2,'fwe',0),(3,4000,1,'gfd',0.01),(4,5000,4,'erh',0.1),(5,2500,2,'hte',0),(6,1500,2,'vdfghe',0.1),(7,1200,6,'thdsfvg',0.05),(8,2000,3,'rsgfdgr',0.07),(9,5000,2,'rwf/wef',0),(10,4500,2,'rgsr/fa',0),(11,4000,3,'faesf',0.1),(12,2500,5,'afsgeg',0),(13,3500,6,'asrg',0.02),(14,4000,8,'awrgsa',0),(15,3700,7,'sgsargf',0),(16,3300,4,'asefasdg',0.1),(17,3150,2,'ragas',0),(18,4800,6,'dvsra',0.1);
/*!40000 ALTER TABLE `appliance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-24 21:44:02
