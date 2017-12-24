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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id of the user',
  `login` varchar(60) NOT NULL COMMENT 'login of the user',
  `password` varchar(100) NOT NULL COMMENT 'password of the user in encrypted form',
  `salt` char(32) NOT NULL COMMENT 'salt for encrypt the password',
  `email` varchar(80) NOT NULL COMMENT 'email of the user',
  `is_banned` tinyint(4) DEFAULT NULL COMMENT 'It contains information whether the user is banned',
  `is_admin` tinyint(4) NOT NULL COMMENT 'It contains information whether the user is an administrator',
  `phone_number` varchar(45) DEFAULT NULL COMMENT 'phone number of the user',
  `address` varchar(200) DEFAULT NULL COMMENT 'address of the user',
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `login_UNIQUE` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='user(admin or client)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'vhh','44dcf93bfc483009021ffbb50751e076','99d9f558c91e8adff5c3cc5312d263f0','fd@rg.cgh',0,0,'24536','sdrytdf'),(2,'qqq','44dcf93bfc483009021ffbb50751e076','99d9f558c91e8adff5c3cc5312d263f0','asd@f.h',0,0,'34653425','gsdfdsa'),(3,'sadg','44dcf93bfc483009021ffbb50751e076','99d9f558c91e8adff5c3cc5312d263f0','sadf@we.fsd',0,0,'65444','sdfgfds'),(4,'dima','769eb0abd436c800101eb7c58bdf77c8','1f05adeb21db71a4b27f794b793f07fd','dima@gmail.com',0,0,'123455','minsk, molodogvardeyskaya, flat 16'),(5,'anton','354940c9f5e146cce7cd5d5611e697a1','3d42d67bb9fc3bb2c5ec1563d8cc44eb','anton12@mail.ru',0,0,'375256692999','brest,molodogvardeyskaya 15/3, flat 4'),(6,'tytik','2d5e4435a40ce412ac2c90c83b3d185','769b6fc24b52fff00aad4016fc86e67d','timur@yandex.ru',0,0,'+375259394574','moskva'),(7,'pot12','6fe5b9bd6e5f8c19b471ad4103587cc5','3176511f0c07c6a86d0e46d584682669','pottop@example.com',0,0,'7227385','Belarus, Brest'),(8,'abaddon','49acad175b388f98dd4936b7ccc33740','518dfcf181e6c80b5f9b3ae8a1af269c','dimonDuk2@tut.by',0,0,'40521','Belarus, Kobrin, Tormasova 12'),(9,'diedder234','2c5896cdd163a8d377c7047b3fba67a4','567163d56c97bb223f7034edebb5f66a','miha98@gmail.com',0,0,'405298','brest,moskovskaya 344/5, flat 4'),(10,'keks','eeaa8e3815e0f5354db66388005f0061','fd58e2862b40a7db0f0adcde4c7d79f8','artist@gmail.com',0,0,'456721','Brest, Belarus');
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

-- Dump completed on 2017-12-24 21:44:03
