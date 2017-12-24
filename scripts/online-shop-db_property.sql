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
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property` (
  `idproperty` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id of the appliance property',
  `appliance_idappliance` int(11) NOT NULL COMMENT 'id of the appliance',
  `language_property` char(2) NOT NULL COMMENT 'language of the property',
  `name` varchar(45) NOT NULL COMMENT 'name of the property (power, width, height, color, etc.) on need language',
  `value` varchar(60) NOT NULL COMMENT 'value of the property on need language',
  PRIMARY KEY (`idproperty`),
  KEY `fk_property_appliance1_idx` (`appliance_idappliance`),
  KEY `fk_property_language1_idx` (`language_property`),
  CONSTRAINT `fk_property_appliance1` FOREIGN KEY (`appliance_idappliance`) REFERENCES `appliance` (`idappliance`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_property_language1` FOREIGN KEY (`language_property`) REFERENCES `language` (`lang`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='contains all properties of everythig appliances';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,1,'en','power','6000'),(2,2,'en','power','5500'),(3,3,'en','power','4500'),(4,4,'en','power','4000'),(5,1,'ru','мощность','6000'),(6,2,'ru','мощность','5500'),(7,3,'ru','мощность','4500'),(8,4,'ru','мощность','4000'),(9,1,'en','color','green'),(10,2,'en','color','grey'),(11,3,'en','color','blue'),(12,4,'en','color','white'),(13,1,'ru','цвет','зеленый'),(14,2,'ru','цвет','серый'),(15,3,'ru','цвет','голубой'),(16,4,'ru','цвет','белый'),(17,5,'en','height','40'),(18,5,'en','width','30'),(19,5,'en','power','3000'),(20,5,'ru','высота','40'),(21,5,'ru','ширина','30'),(22,5,'ru','мощность','3000'),(23,6,'en','height','50'),(24,6,'en','width','40'),(25,6,'en','power','2500'),(26,6,'ru','высота','50'),(27,6,'ru','ширина','40'),(28,6,'ru','мощность','2500'),(29,7,'en','height','40'),(30,7,'en','width','40'),(31,7,'en','power','3500'),(32,7,'ru','высота','40'),(33,7,'ru','ширина','40'),(34,7,'ru','мощность','3500'),(35,8,'en','height','30'),(36,8,'en','width','50'),(37,8,'en','power','3200'),(38,8,'ru','высота','30'),(39,8,'ru','ширина','50'),(40,8,'ru','момощность','3200'),(41,9,'en','diagonal','100'),(42,9,'en','quality','medium'),(43,9,'ru','диагональ','100'),(44,9,'ru','качество','среднее'),(45,10,'en','diagonal','120'),(46,10,'en','quality','medium'),(47,10,'ru','диагональ','среднее'),(48,10,'ru','качество','120'),(49,11,'en','diagonal','100'),(50,11,'en','quality','high'),(51,11,'ru','диагональ','100'),(52,11,'ru','качество','высокое'),(53,12,'en','capacity','5'),(54,12,'en','max rotational velocity','600'),(55,12,'ru','вместимость','5'),(56,12,'ru','максимальная скорость вращения','600'),(57,13,'en','capacity','6'),(58,13,'en','max rotational velocity','700'),(59,13,'ru','вместимость','6'),(60,13,'ru','максимальная скорость вращения','700'),(61,14,'en','capacity','6'),(62,14,'en','max rotational velocity','1000'),(63,14,'ru','вместимость','6'),(64,14,'ru','максимальная скорость вращения','1000'),(65,15,'en','power','4000'),(66,15,'en','color','blue'),(67,15,'en','bag volume','2'),(68,15,'ru','мощность','4000'),(69,15,'ru','цвет','синий'),(70,15,'ru','объем мешка','2'),(71,16,'en','power','3500'),(72,16,'en','color','red'),(73,16,'en','bag volume','2'),(74,16,'ru','мощность','3500'),(75,16,'ru','цвет','красный'),(76,16,'ru','объем мешка','2'),(77,17,'en','power','3500'),(78,17,'en','color','grey'),(79,17,'en','bag volume','2'),(80,17,'ru','мощность','3500'),(81,17,'ru','цвет','серый'),(82,17,'ru','объем мешка','2'),(83,18,'en','power','4500'),(84,18,'en','color','blue'),(85,18,'en','bag volume','3'),(86,18,'ru','мощность','4500'),(87,18,'ru','цвет','синий'),(88,18,'ru','объем мешка','3');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-24 21:44:03
