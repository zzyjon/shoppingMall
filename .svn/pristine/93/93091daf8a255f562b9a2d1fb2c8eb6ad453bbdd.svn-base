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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `o_code` varchar(30) NOT NULL COMMENT '주문번호',
  `c_code` varchar(20) DEFAULT NULL,
  `m_id` varchar(20) NOT NULL COMMENT '회원아이디(FK)',
  `o_name` varchar(45) DEFAULT NULL COMMENT '주문자명',
  `o_phone` varchar(45) DEFAULT NULL COMMENT '주문자전화번호',
  `o_purchase_method` char(1) DEFAULT NULL COMMENT '결제방법',
  `o_depositor` varchar(45) DEFAULT NULL COMMENT '입금자 이름',
  `o_receive_name` varchar(45) DEFAULT NULL COMMENT '받는사람 이름',
  `o_receive_phone` varchar(45) DEFAULT NULL COMMENT '받는사람전화번호',
  `o_receive_post` char(7) DEFAULT NULL COMMENT '받는사람 우편번호',
  `o_receive_main_address` varchar(500) DEFAULT NULL COMMENT '받는사람 기본주소',
  `o_receive_sub_address` varchar(500) DEFAULT NULL COMMENT '받는사람 상세주소',
  `o_requirements` varchar(500) DEFAULT NULL COMMENT '요구사항(남길메세지)',
  `o_count` int(11) DEFAULT NULL COMMENT '주문수량',
  `o_product_amount` int(11) DEFAULT NULL COMMENT '주문상품금앰',
  `o_coupon_save_amount` int(11) DEFAULT NULL COMMENT '쿠폰할인금액',
  `o_shipping_fee` int(11) DEFAULT NULL COMMENT '배송비',
  `o_use_point` int(11) DEFAULT NULL COMMENT '사용포인트',
  `o_date` datetime DEFAULT NULL COMMENT '주문날짜',
  `o_status` char(1) DEFAULT NULL COMMENT '주문상태(0,주문접수 1준비중,2배송접수,3배송중,4배송완료,5수령완료)',
  `o_delivery_finish` datetime DEFAULT NULL,
  PRIMARY KEY (`o_code`),
  KEY `m_id_idx` (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('20180219161729631',NULL,'lsm90',NULL,NULL,'0',NULL,'이승명','01026194956','01451','서울 도봉구 노해로 134 (쌍문동, 쌍문동상가)','1001호','빨리 보내주세요',15,1305000,0,0,0,'2018-02-19 16:16:52','1',NULL),('20180219162218435',NULL,'lsm90',NULL,NULL,'0',NULL,'이승명','01047453998','06097','서울 강남구 봉은사로 403 (삼성동, 하모니 빌딩)','201호','널값',8,538000,0,0,0,'2018-02-19 16:21:15','0',NULL),('20180219162913515',NULL,'lsm90',NULL,NULL,'0',NULL,'이승명 ','01055889999','05400','서울 강동구 강동대로 143 (성내동, 삼성파크타워)','2001호','빨랑 갖다주세요',4,164000,0,0,0,'2018-02-19 16:28:28','0',NULL),('20180219164504400',NULL,'lsm90',NULL,NULL,'1',NULL,'이승명','01066667777','02037','서울 중랑구 공릉로 4 (묵동)','101호','고오오오오져스',1,47000,0,0,0,'2018-02-19 16:43:59','0',NULL),('20180226001226328',NULL,'goldfinger10',NULL,NULL,'0',NULL,'골드핑거','01011223344','18584','경기 화성시 장안면 3.1만세로281번길 5-1 (어은리)','e4314','',6,314000,0,0,0,'2018-02-26 00:12:26','0',NULL),('20180226030545851',NULL,'goldfinger10',NULL,NULL,'1',NULL,'골드핑거','01011223344','18584','경기 화성시 장안면 3.1만세로281번길 5-1 (어은리)','e4314','',2,85000,0,0,0,'2018-02-26 03:05:45','0',NULL),('20180226030621430',NULL,'goldfinger10',NULL,NULL,'0',NULL,'골드핑거','01011223344','18584','경기 화성시 장안면 3.1만세로281번길 5-1 (어은리)','e4314','',2,295000,0,0,0,'2018-02-26 03:06:21','0',NULL),('20180226030646507',NULL,'goldfinger10',NULL,NULL,'0',NULL,'골드핑거','01011223344','18584','경기 화성시 장안면 3.1만세로281번길 5-1 (어은리)','e4314','',1,87000,0,0,0,'2018-02-26 03:06:46','0',NULL),('20180226030730509',NULL,'goldfinger10',NULL,NULL,'0',NULL,'골드핑거','01011223344','18584','경기 화성시 장안면 3.1만세로281번길 5-1 (어은리)','e4314','',3,177000,0,0,0,'2018-02-26 03:07:30','0',NULL),('20180226030818228',NULL,'goldfinger10',NULL,NULL,'0',NULL,'골드핑거','01011223344','18584','경기 화성시 장안면 3.1만세로281번길 5-1 (어은리)','e4314','',3,127000,0,0,0,'2018-02-26 03:08:18','0',NULL),('20180226030841134',NULL,'goldfinger10',NULL,NULL,'1',NULL,'골드핑거','01011223344','18584','경기 화성시 장안면 3.1만세로281번길 5-1 (어은리)','e4314','',4,187000,0,0,0,'2018-02-26 03:08:41','0',NULL),('20180226032332577',NULL,'helloworld',NULL,NULL,'0',NULL,'김사나','01022224444','13625','경기 성남시 분당구 구미로 50 (구미동, 무지개마을LG아파트)','B동 2001호','',2,115000,0,0,0,'2018-02-26 03:23:32','0',NULL),('20180227014321208',NULL,'helloworld',NULL,NULL,'0',NULL,'김사나','01022224444','13625','경기 성남시 분당구 구미로 50 (구미동, 무지개마을LG아파트)','B동 2001호','',4,415000,0,0,0,'2018-02-27 01:43:21','1',NULL),('20180228014900409',NULL,'helloworld',NULL,NULL,'0',NULL,'김사나','01022224444','13625','경기 성남시 분당구 구미로 50 (구미동, 무지개마을LG아파트)','B동 2001호','',1,70000,0,0,0,'2018-02-28 01:49:00','0',NULL),('20180228014900580',NULL,'helloworld',NULL,NULL,'0',NULL,'김사나','01022224444','13625','경기 성남시 분당구 구미로 50 (구미동, 무지개마을LG아파트)','B동 2001호','',1,70000,0,0,0,'2018-02-28 01:49:00','0',NULL),('20180228023432259',NULL,'helloworld',NULL,NULL,'0',NULL,'김사나','01022224444','13625','경기 성남시 분당구 구미로 50 (구미동, 무지개마을LG아파트)','B동 2001호','',1,35000,0,0,0,'2018-02-28 02:34:32','0',NULL),('20180228023432349',NULL,'helloworld',NULL,NULL,'0',NULL,'김사나','01022224444','13625','경기 성남시 분당구 구미로 50 (구미동, 무지개마을LG아파트)','B동 2001호','',1,35000,0,0,0,'2018-02-28 02:34:32','0',NULL),('20180228024015225',NULL,'helloworld',NULL,NULL,'0',NULL,'김사나','01022224444','13625','경기 성남시 분당구 구미로 50 (구미동, 무지개마을LG아파트)','B동 2001호','',2,70000,0,0,0,'2018-02-28 02:40:15','0',NULL),('20180228024015369',NULL,'helloworld',NULL,NULL,'0',NULL,'김사나','01022224444','13625','경기 성남시 분당구 구미로 50 (구미동, 무지개마을LG아파트)','B동 2001호','',2,70000,0,0,0,'2018-02-28 02:40:15','0',NULL),('20180228024102480',NULL,'helloworld',NULL,NULL,'0',NULL,'김사나','01022224444','13625','경기 성남시 분당구 구미로 50 (구미동, 무지개마을LG아파트)','B동 2001호','',4,415000,0,0,0,'2018-02-28 02:41:02','0',NULL),('20180228024102973',NULL,'helloworld',NULL,NULL,'0',NULL,'김사나','01022224444','13625','경기 성남시 분당구 구미로 50 (구미동, 무지개마을LG아파트)','B동 2001호','',4,415000,0,0,0,'2018-02-28 02:41:02','0',NULL),('20180228031302659',NULL,'helloworld',NULL,NULL,'0',NULL,'김사나','01022224444','13625','경기 성남시 분당구 구미로 50 (구미동, 무지개마을LG아파트)','B동 2001호','',1,45000,0,0,0,'2018-02-28 03:13:02','0',NULL),('20180228031302775',NULL,'helloworld',NULL,NULL,'0',NULL,'김사나','01022224444','13625','경기 성남시 분당구 구미로 50 (구미동, 무지개마을LG아파트)','B동 2001호','',1,45000,0,0,0,'2018-02-28 03:13:02','0',NULL),('20180228031504213',NULL,'helloworld',NULL,NULL,'0',NULL,'김사나','01022224444','13625','경기 성남시 분당구 구미로 50 (구미동, 무지개마을LG아파트)','B동 2001호','',1,45000,0,0,0,'2018-02-28 03:15:04','0',NULL),('20180228031504333',NULL,'helloworld',NULL,NULL,'0',NULL,'김사나','01022224444','13625','경기 성남시 분당구 구미로 50 (구미동, 무지개마을LG아파트)','B동 2001호','',1,45000,0,0,0,'2018-02-28 03:15:04','0',NULL),('20180228031718689',NULL,'helloworld',NULL,NULL,'0',NULL,'김사나','01022224444','13625','경기 성남시 분당구 구미로 50 (구미동, 무지개마을LG아파트)','B동 2001호','',1,250000,0,0,0,'2018-02-28 03:17:18','0',NULL),('20180228031718908',NULL,'helloworld',NULL,NULL,'0',NULL,'김사나','01022224444','13625','경기 성남시 분당구 구미로 50 (구미동, 무지개마을LG아파트)','B동 2001호','',1,250000,0,0,0,'2018-02-28 03:17:18','0',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
