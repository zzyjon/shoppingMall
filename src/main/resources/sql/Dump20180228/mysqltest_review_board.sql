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
-- Table structure for table `review_board`
--

DROP TABLE IF EXISTS `review_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_board` (
  `r_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '후기번호',
  `p_no` int(11) NOT NULL COMMENT '상품코드',
  `m_id` varchar(45) DEFAULT NULL,
  `r_writer` varchar(45) NOT NULL,
  `r_title` varchar(200) DEFAULT NULL COMMENT '회원아이디',
  `r_content` varchar(500) DEFAULT NULL,
  `r_avg_score` int(1) DEFAULT '1' COMMENT '평점',
  `r_viewcount` int(11) DEFAULT '0',
  `r_img1` varchar(45) DEFAULT NULL,
  `r_write_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `r_modi_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`r_no`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_board`
--

LOCK TABLES `review_board` WRITE;
/*!40000 ALTER TABLE `review_board` DISABLE KEYS */;
INSERT INTO `review_board` VALUES (1,930,'test01','어드민','좋네용','싸게 잘 샀어용',5,12,NULL,'2018-02-17 00:34:47','2018-02-19 02:10:35'),(2,930,'lsm90','어드민','좋네용','싸게 잘 샀어용',5,4,NULL,'2018-02-17 00:38:43','2018-02-19 01:52:28'),(3,930,'test01','어드민','제목','내용',5,2,NULL,'2018-02-18 02:51:48','2018-02-19 01:56:28'),(4,940,'test01','어드민','싸게 잘샀다!','하나 더 사야지',4,0,NULL,'2018-02-18 02:55:57','2018-02-19 02:31:29'),(5,940,'test01','어드민','흠흠','',3,2,NULL,'2018-02-18 02:57:39','2018-02-19 23:14:47'),(6,940,'test01','어드민','내용이 왜 ','',2,1,NULL,'2018-02-18 02:58:03','2018-02-18 02:58:03'),(7,940,'test01','어드민','있다있어','어딘가에',3,0,NULL,'2018-02-18 03:31:45','2018-02-18 03:31:45'),(8,926,'test01','어드민','지우지마','지우지마라고',2,0,NULL,'2018-02-18 04:16:17','2018-02-18 04:16:17'),(9,930,'test01','어드민','배송이 느려요','상품은 괜찮은데 배송이 느려서 별3개 드려요',3,0,NULL,'2018-02-18 05:00:05','2018-02-18 05:00:05'),(10,929,'test01','어드민','핏감 장난아님','맨날 이것만 입고 다녀서 가랑이 터졌어요',4,1,NULL,'2018-02-18 05:04:22','2018-02-19 02:02:39'),(11,929,'test01','어드민','누가 입던거 보낸거같은뎅','주머니에서 천원짜리 나옴 --',2,0,NULL,'2018-02-18 05:07:22','2018-02-18 05:07:22'),(12,934,'test01','어드민','셔츠 색감 좋네요','세일 할 때 잘 산듯',4,0,NULL,'2018-02-18 05:09:37','2018-02-18 05:09:37'),(13,934,'test01','어드민','왜케 구겨졌어 ','반품할거야',2,2,NULL,'2018-02-18 05:14:57','2018-02-18 05:14:57'),(14,925,'test01','어드민','이럴 수가','옷 너무 좋다',4,4,NULL,'2018-02-18 18:10:28','2018-02-19 02:07:52'),(20,926,'lsm90','승명',NULL,NULL,0,3,'denimjacket3.jpg','2018-02-20 03:04:51',NULL),(21,926,'lsm90','승명','테스트','undefined',4,1,'denimjacket3.jpg','2018-02-20 03:09:13',NULL),(22,926,'lsm90','승명','테스트입니다','테스트예요',2,0,'denimjacket2.jpg','2018-02-20 03:11:33',NULL),(23,926,'lsm90','승명','테스트10','테스트10',2,0,'denimjacket2.jpg','2018-02-20 03:16:41','2018-02-20 03:16:41'),(24,926,'lsm90','승명','테','테테',5,5,'denimjacket2.jpg','2018-02-20 03:25:25','2018-02-20 03:25:25'),(25,926,'lsm90','승명','테스트','테스트1',3,17,'denimjacket3.jpg','2018-02-20 03:38:06','2018-02-20 03:38:06'),(26,933,'goldfinger10','골드핑거','바지바지 이쁘다','184/79 딱 맞음',5,10,NULL,'2018-02-25 00:34:14','2018-02-26 01:25:00');
/*!40000 ALTER TABLE `review_board` ENABLE KEYS */;
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
