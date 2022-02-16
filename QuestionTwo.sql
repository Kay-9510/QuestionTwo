-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: BankPartnerships
-- ------------------------------------------------------
-- Server version	8.0.11

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
-- Table structure for table `b_transactions`
--

DROP TABLE IF EXISTS `b_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_ref` varchar(35) NOT NULL,
  `account` varchar(25) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `transaction_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `b_transactions_id_uindex` (`id`),
  UNIQUE KEY `b_transactions_transaction_ref_uindex` (`transaction_ref`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_transactions`
--

LOCK TABLES `b_transactions` WRITE;
/*!40000 ALTER TABLE `b_transactions` DISABLE KEYS */;
INSERT INTO `b_transactions` VALUES (1,'NBC-Y-100001','YACC123456789',5000.00,'2022-02-16 13:29:12'),(2,'NBC-Y-100002','YACC123456790',20100.00,'2022-02-16 13:29:12'),(3,'NBC-Y-100005','YACC123456793',5000.00,'2022-02-16 13:29:12'),(4,'NBC-Y-100006','YACC123456794',5010.00,'2022-02-16 13:29:12'),(5,'NBC-Y-100007','YACC123456795',7500.00,'2022-02-16 13:29:12'),(6,'NBC-Y-100008','YACC123456796',17000.00,'2022-02-16 13:29:12'),(7,'NBC-Y-100009','YACC123456797',45000.00,'2022-02-16 13:29:12'),(8,'NBC-X-000001','XACC123456789',7000.00,'2022-02-16 13:29:12'),(9,'NBC-X-000002','XACC123456790',100100.00,'2022-02-16 13:29:12'),(10,'NBC-X-000003','XACC123456791',100.00,'2022-02-16 13:29:12'),(11,'NBC-X-000006','XACC123456794',5000.00,'2022-02-16 13:29:12'),(12,'NBC-X-000007','XACC123456795',7500.00,'2022-02-16 13:29:12'),(13,'NBC-X-000010','XACC123456798',3000.00,'2022-02-16 13:29:12'),(14,'WRONG-100009','YACC623456797',46000.00,'2022-02-16 13:29:12'),(15,'WRONG-100239','YACC632456797',26000.00,'2022-02-16 13:29:12');
/*!40000 ALTER TABLE `b_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campany_x`
--

DROP TABLE IF EXISTS `campany_x`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campany_x` (
  `﻿transaction_ref` text,
  `account` text,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campany_x`
--

LOCK TABLES `campany_x` WRITE;
/*!40000 ALTER TABLE `campany_x` DISABLE KEYS */;
INSERT INTO `campany_x` VALUES ('NBC-X-000001','XACC123456789',7000),('NBC-X-000002','XACC123456790',100100),('NBC-X-000003','XACC123456791',100),('NBC-X-000004','XACC123456792',3000),('NBC-X-000005','XACC123456793',1000),('NBC-X-000006','XACC123456794',5000),('NBC-X-000007','XACC123456795',7500),('NBC-X-000008','XACC123456796',12000),('NBC-X-000009','XACC123456797',55000),('NBC-X-000010','XACC123456798',3000),('WRONG-000210','WRONG123456798',3010),('WRONG-000211','WRONG123457798',7010);
/*!40000 ALTER TABLE `campany_x` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution_y`
--

DROP TABLE IF EXISTS `institution_y`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_y` (
  `transaction_ref` text,
  `account` text,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_y`
--

LOCK TABLES `institution_y` WRITE;
/*!40000 ALTER TABLE `institution_y` DISABLE KEYS */;
INSERT INTO `institution_y` VALUES ('NBC-Y-100001','YACC123456789',5000),('NBC-Y-100002','YACC123456790',20100),('NBC-Y-100003','YACC123456791',6100),('NBC-Y-100004','YACC123456792',4000),('NBC-Y-100005','YACC123456793',5000),('NBC-Y-100006','YACC123456794',5010),('NBC-Y-100007','YACC123456795',7500),('NBC-Y-100008','YACC123456796',17000),('NBC-Y-100009','YACC123456797',45000),('NBC-Y-100010','YACC123456798',3000);
/*!40000 ALTER TABLE `institution_y` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partner_transactions`
--

DROP TABLE IF EXISTS `partner_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partner_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_refx` varchar(35) NOT NULL,
  `accountx` varchar(25) NOT NULL,
  `amountx` decimal(10,2) NOT NULL,
  `transaction_refy` varchar(35) NOT NULL,
  `accounty` varchar(25) NOT NULL,
  `amounty` decimal(10,2) NOT NULL,
  `transaction_refb` varchar(35) NOT NULL,
  `accountb` varchar(25) NOT NULL,
  `amountb` decimal(10,2) NOT NULL,
  `transaction_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `institution` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `partner_transactions_id_uindex` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner_transactions`
--

LOCK TABLES `partner_transactions` WRITE;
/*!40000 ALTER TABLE `partner_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `partner_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners_transaction`
--

DROP TABLE IF EXISTS `partners_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partners_transaction` (
  `y_transaction` int(11) NOT NULL,
  `x_transcation` varchar(45) DEFAULT NULL,
  `institution` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`y_transaction`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners_transaction`
--

LOCK TABLES `partners_transaction` WRITE;
/*!40000 ALTER TABLE `partners_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `partners_transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-16  9:04:51
