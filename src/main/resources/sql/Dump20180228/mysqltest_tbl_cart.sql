-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: mysqltest
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `tbl_cart`
--

DROP TABLE IF EXISTS `tbl_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cart` (
  `c_no` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` varchar(50) NOT NULL,
  `p_no` int(11) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `p_size` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`c_no`),
  KEY `cart_product_fk` (`p_no`),
  CONSTRAINT `cart_product_fk` FOREIGN KEY (`p_no`) REFERENCES `product` (`p_no`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cart`
--

LOCK TABLES `tbl_cart` WRITE;
/*!40000 ALTER TABLE `tbl_cart` DISABLE KEYS */;
INSERT INTO `tbl_cart` VALUES (2,'testid1',940,2,NULL),(3,'test_01',930,1,'XS'),(4,'test_01',935,1,'XS'),(6,'test01',930,3,'S'),(7,'test01',930,1,'M'),(8,'test01',930,2,'L'),(9,'test01',930,5,'XL'),(12,'test01',930,1,'XS'),(13,'test02',930,1,'XS'),(14,'test01',934,3,'XS'),(27,'lsm90',931,1,'32'),(28,'lsm90',930,1,'M'),(29,'lsm90',998,1,'31'),(30,'lsm90',935,6,'28'),(38,'goldfinger10',944,1,'M'),(40,'goldfinger10',926,1,'L'),(41,'goldfinger10',934,1,'L'),(42,'goldfinger10',935,1,'31'),(43,'helloworld',925,1,'L'),(44,'helloworld',1001,1,'250'),(45,'helloworld',990,1,'M'),(46,'helloworld',926,1,'XS');
/*!40000 ALTER TABLE `tbl_cart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-28  5:03:52
