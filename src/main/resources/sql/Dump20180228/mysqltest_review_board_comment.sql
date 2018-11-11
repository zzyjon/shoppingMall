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
-- Table structure for table `review_board_comment`
--

DROP TABLE IF EXISTS `review_board_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_board_comment` (
  `rbc_no` int(11) NOT NULL AUTO_INCREMENT,
  `r_no` int(11) NOT NULL,
  `rbc_content` text,
  `rbc_writer` varchar(45) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`rbc_no`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_board_comment`
--

LOCK TABLES `review_board_comment` WRITE;
/*!40000 ALTER TABLE `review_board_comment` DISABLE KEYS */;
INSERT INTO `review_board_comment` VALUES (1,1,'무플방지','아헭','2018-02-21 16:56:03'),(2,1,'무플방지','test99','2018-02-21 17:06:27'),(3,2,'무플방지','겸댕','2018-02-21 18:57:17'),(4,2,'무플방지','겸댕','2018-02-21 18:57:21'),(8,2,'샤샤샤샷','test01','2018-02-21 19:20:11'),(9,3,'무플방지','겸댕','2018-02-21 19:22:08'),(11,4,'송송송','test01','2018-02-21 19:42:12'),(12,3,'넹넹넹','test01','2018-02-21 19:49:22'),(13,3,'이게 좋냐고','test01','2018-02-21 19:49:59'),(15,24,'니 반쪽이 되고 싶다','lsm90','2018-02-21 21:36:53'),(16,24,'언제나 너의 옆에 서 있을게 ','lsm90','2018-02-21 21:51:43'),(17,25,'반가워요','lsm90','2018-02-21 22:53:31'),(18,14,'좋아좋아','lsm90','2018-02-22 00:35:57'),(20,25,'잘 어울리네요^^','goldfinger10','2018-02-24 23:52:45'),(22,25,'좋은 하루~','goldfinger10','2018-02-25 03:23:32'),(24,26,'이뻐옹','helloworld','2018-02-27 03:03:16');
/*!40000 ALTER TABLE `review_board_comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-28  5:03:53
