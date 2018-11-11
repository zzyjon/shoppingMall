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
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `m_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '회원번호',
  `m_id` varchar(45) NOT NULL COMMENT '아이디(fk)',
  `m_pw` varchar(45) NOT NULL COMMENT '비밀번호',
  `m_gender` char(2) NOT NULL,
  `m_name` varchar(45) NOT NULL COMMENT '이름',
  `m_nick` varchar(45) NOT NULL COMMENT '별명',
  `m_birth` varchar(45) NOT NULL,
  `m_email` varchar(45) NOT NULL COMMENT '이메일',
  `m_phone` varchar(45) NOT NULL COMMENT '전화번호',
  `m_post` char(7) NOT NULL COMMENT '우편번호',
  `m_main_address` varchar(500) NOT NULL COMMENT '기본주소',
  `m_sub_address` varchar(500) NOT NULL COMMENT '나머지주소',
  `m_buy_sum` int(11) NOT NULL DEFAULT '0' COMMENT '구매총액',
  `m_buy_count` int(11) DEFAULT '0' COMMENT '구매횟수',
  `m_visit_count` int(11) DEFAULT '0' COMMENT '방문횟수',
  `m_point` int(11) NOT NULL DEFAULT '0' COMMENT '포인트',
  `m_reg_date` datetime NOT NULL COMMENT '회원가입날짜',
  `m_bann_date` datetime DEFAULT NULL COMMENT '차단날짜',
  `m_login_date` datetime DEFAULT NULL COMMENT '마지막로그인날짜',
  `m_status` char(1) NOT NULL DEFAULT 'N',
  `m_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`m_no`,`m_id`),
  UNIQUE KEY `m_no_UNIQUE` (`m_no`),
  UNIQUE KEY `m_id_UNIQUE` (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (13,'kekek','cb8482b1376efd19c12504a93c7b50a8bdab639d','W','빡구','빠박이','20100318','sngkgk4593@daum.net','01022223333','14320','어디어디저기저기','요기요기',0,0,0,0,'2018-02-12 17:23:13',NULL,NULL,'N',NULL),(15,'qwr1234','da39a3ee5e6b4b0d3255bfef95601890afd80709','W','가가','규규규','20100318','sngkgk4593@daum.net','01022223333','14320','어디어디저기저기','요기요기',0,0,0,0,'2018-02-12 22:44:44',NULL,NULL,'N',NULL),(16,'qwrq3333','8546444e4afd64c66651fb3c946bf58d5eef3b9b','W','가가','규규규','20100318','sngkgk4593@daum.net','01022223333','14320','어디어디저기저기','요기요기',0,0,0,0,'2018-02-13 09:30:11',NULL,NULL,'N',NULL),(17,'asfas2112','cb8482b1376efd19c12504a93c7b50a8bdab639d','M','가물치','가물가물2222','2018-02-23','sngkgk4591@naver.com','01025251234','130-862','서울시 동대문구 제기동 경동시장로 10가길 26-2','601번지',0,0,0,0,'2018-02-13 10:29:12',NULL,NULL,'N',NULL),(18,'ee33333','cb8482b1376efd19c12504a93c7b50a8bdab639d','M','밥먹','배배22222','2018-02-21','sngkgk4591@naver.com','01025254591','130-862','서울시 동대문구 제기동 경동시장로 10가길 26-2','601번지',0,0,0,0,'2018-02-13 12:30:25',NULL,NULL,'N',NULL),(19,'nhj4591','8546444e4afd64c66651fb3c946bf58d5eef3b9b','W','가가','규규규','20100318','sngkgk4593@daum.net','01022223333','14320','어디어디저기저기','요기요기',1000,1,0,0,'2018-02-13 09:48:13',NULL,NULL,'N',NULL),(20,'sngkgk4591','cb8482b1376efd19c12504a93c7b50a8bdab639d','M','개굴','파파파파파333','2018-02-22','sngkgk4591@naver.com','01022222222','123','123','123',20000001,0,0,1000,'2018-02-14 03:51:29',NULL,NULL,'N',NULL),(21,'nhj45912','cb8482b1376efd19c12504a93c7b50a8bdab639d','M','삼삼삼','qwrwqr2','2018-02-14','nhj930531@gmail.com','01029698888','130-862','제기동 601번지','33',0,0,0,0,'2018-02-14 03:54:01',NULL,NULL,'N',NULL),(22,'nhj459122','cb8482b1376efd19c12504a93c7b50a8bdab639d','M','바바바','자자자잦자자22','2018-02-22','nhj930531@gmail.com','01022222222','12312','222','222',1,0,0,0,'2018-02-14 03:56:37',NULL,NULL,'N',NULL),(24,'www214','cb8482b1376efd19c12504a93c7b50a8bdab639d','M','노형정','sss124125','2018-02-20','sngkgk4591@naver.com','01022020202','130-862','서울시 동대문구 제기동 경동시장로 10가길 26-2','601번지',0,0,0,0,'2018-02-21 12:58:51',NULL,NULL,'N',NULL),(25,'sngkgk459122','cb8482b1376efd19c12504a93c7b50a8bdab639d','M','감성돔','asfasf22','2018-02-22','sngkgk4591@naver.com','01011111111','18584','경기 화성시 장안면 3.1만세로322번길 8 (어은리)','정말',0,0,0,0,'2018-02-22 14:48:19',NULL,NULL,'N',NULL),(26,'yjseong722','cb8482b1376efd19c12504a93c7b50a8bdab639d','M','노형정','nhj2421','2018-02-21','sngkgk4591@naver.com','01025254951','130-862','서울시 동대문구 제기동 경동시장로 10가길 26-2','601번지',0,0,0,0,'2018-02-23 12:45:17',NULL,NULL,'N',NULL),(27,'goldfinger10','9ac20922b054316be23842a5bca7d69f29f69d77','M','골드핑거','골드핑거남자','1990-07-17','test10@gmail.com','01011223344','18584','경기 화성시 장안면 3.1만세로281번길 5-1 (어은리)','e4314',10000,2,0,1000,'2018-02-23 18:00:28',NULL,'2018-02-26 03:04:58','N',NULL),(28,'helloworld','9ac20922b054316be23842a5bca7d69f29f69d77','Y','김사나','오늘점심은냉면어때','2018-02-20','test10@hanmir.com','01022224444','13625','경기 성남시 분당구 구미로 50 (구미동, 무지개마을LG아파트)','B동 2001호',930000,7,11,93000,'2018-02-26 03:19:57',NULL,'2018-02-28 03:47:48','N',NULL);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
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
