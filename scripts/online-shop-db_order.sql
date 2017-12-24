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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `appliance_idappliance` int(11) NOT NULL COMMENT 'id of the appliance',
  `user_iduser` int(11) NOT NULL COMMENT 'id of the user',
  `number_appliance` int(11) NOT NULL COMMENT 'number of appliances of the one type with the same properties, which user wanna buy',
  `date` date NOT NULL COMMENT 'date when the order was made',
  PRIMARY KEY (`appliance_idappliance`,`user_iduser`),
  KEY `fk_appliance_has_user1_user1_idx` (`user_iduser`),
  KEY `fk_appliance_has_user1_appliance1_idx` (`appliance_idappliance`),
  CONSTRAINT `fk_appliance_has_user1_appliance1` FOREIGN KEY (`appliance_idappliance`) REFERENCES `appliance` (`idappliance`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_appliance_has_user1_user1` FOREIGN KEY (`user_iduser`) REFERENCES `user` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='order is user and list appliances, which he bought';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,5,2,'2016-01-25'),(2,7,1,'2015-12-17'),(4,2,1,'2016-04-14'),(7,5,1,'2015-07-14'),(7,8,2,'2016-11-29'),(14,1,1,'2016-07-29'),(14,9,1,'2015-01-19'),(15,7,1,'2015-01-15'),(16,6,1,'2015-04-01'),(18,1,2,'2016-04-19'),(18,3,2,'2016-02-19');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-24 21:44:04
