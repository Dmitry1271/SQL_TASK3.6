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
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `idrewiev` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id of the rewiev',
  `appliance_idappliance` int(11) NOT NULL COMMENT 'id of the appliance where the review has been stayed',
  `user_iduser` int(11) NOT NULL COMMENT 'id of the user who has stayed review',
  `rating` int(11) DEFAULT NULL COMMENT 'rating which user can leave about appliance',
  `review_text` text COMMENT 'text of the review',
  PRIMARY KEY (`idrewiev`),
  KEY `fk_review_appliance1_idx` (`appliance_idappliance`),
  KEY `fk_review_user1_idx` (`user_iduser`),
  CONSTRAINT `fk_review_appliance1` FOREIGN KEY (`appliance_idappliance`) REFERENCES `appliance` (`idappliance`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_review_user1` FOREIGN KEY (`user_iduser`) REFERENCES `user` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='review that the user can leave about the appliance';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,5,4,'norm'),(2,1,6,2,'some bad'),(3,2,1,3,'неплохо но не очень'),(4,3,1,5,'Круто'),(5,4,5,5,'вссе супер советую'),(6,5,7,4,'some problem'),(7,5,1,2,'not good'),(8,8,2,4,'afewfaf'),(9,8,3,3,'dsf'),(10,8,4,4,'dsfas'),(11,10,1,5,'dsfafsd'),(12,12,3,1,'vwry bad'),(13,15,10,2,'adsgfasgr'),(14,16,8,3,'ads'),(15,16,2,4,'cvbndsh');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
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
