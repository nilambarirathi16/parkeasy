-- MySQL dump 10.11
--
-- Host: localhost    Database: parking
-- ------------------------------------------------------
-- Server version	5.0.51b-community-nt

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
-- Table structure for table `daily_collection`
--

DROP TABLE IF EXISTS `daily_collection`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `daily_collection` (
  `address` varchar(20) default NULL,
  `vehicle_type` int(11) default NULL,
  `total` int(11) default '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `daily_collection`
--

LOCK TABLES `daily_collection` WRITE;
/*!40000 ALTER TABLE `daily_collection` DISABLE KEYS */;
INSERT INTO `daily_collection` VALUES ('Dhankawadi',2,60),('Dhankawadi',4,20),('Dhankawadi',6,60),('Shivaji Nagar',2,0),('Shivaji Nagar',4,0),('Shivaji Nagar',6,0),('Pimpri',2,0),('Pimpri',4,40),('Pimpri',6,0);
/*!40000 ALTER TABLE `daily_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `fees` (
  `vehicle_no` varchar(15) NOT NULL default '',
  `vehicle_type` int(11) NOT NULL default '0',
  `entry_date` date default NULL,
  `entry_time` time NOT NULL default '00:00:00',
  `exit_date` date default NULL,
  `exit_time` time NOT NULL default '00:00:00',
  `total_amount` int(11) default NULL,
  `address` varchar(15) default NULL,
  PRIMARY KEY  (`vehicle_no`,`vehicle_type`,`entry_time`,`exit_time`),
  CONSTRAINT `fees_ibfk_1` FOREIGN KEY (`vehicle_no`) REFERENCES `vehicle` (`vehicle_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `fees`
--

LOCK TABLES `fees` WRITE;
/*!40000 ALTER TABLE `fees` DISABLE KEYS */;
/*!40000 ALTER TABLE `fees` ENABLE KEYS */;
UNLOCK TABLES;

/*!50003 SET @SAVE_SQL_MODE=@@SQL_MODE*/;

DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `updation` BEFORE UPDATE ON `fees` FOR EACH ROW begin
    if (new.vehicle_type=2) then
        set new.total_amount=(((datediff(new.exit_date,new.entry_date)*24)+(hour(new.exit_time)-hour(new.entry_time)))*10)+10;
    end if;
    if (new.vehicle_type=4 ) then
        set new.total_amount=(((datediff(new.exit_date,new.entry_date)*24)+(hour(new.exit_time)-hour(new.entry_time)))*10)+20;  
    end if;
    if (new.vehicle_type=6) then
        set new.total_amount=(((datediff(new.exit_date,new.entry_date)*24)+(hour(new.exit_time)-hour(new.entry_time)))*10)+30;
    end if;
    end */;;

DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@SAVE_SQL_MODE*/;

--
-- Table structure for table `loc`
--

DROP TABLE IF EXISTS `loc`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `loc` (
  `address` varchar(20) default NULL,
  `location` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `loc`
--

LOCK TABLES `loc` WRITE;
/*!40000 ALTER TABLE `loc` DISABLE KEYS */;
INSERT INTO `loc` VALUES ('Dhankawadi','Shriram nagar, Dhankawadi'),('Shivaji Nagar','Near COEP college, Shivaji Nagar'),('Pimpri','Kharalwadi, Pimpri');
/*!40000 ALTER TABLE `loc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slot`
--

DROP TABLE IF EXISTS `slot`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `slot` (
  `slot_id` varchar(5) NOT NULL default '',
  `address` varchar(15) NOT NULL default '',
  `vehicle_type` int(11) default NULL,
  `vehicle_no` varchar(15) default NULL,
  `available` varchar(12) default NULL,
  PRIMARY KEY  (`slot_id`,`address`),
  KEY `vehicle_no` (`vehicle_no`),
  CONSTRAINT `slot_ibfk_1` FOREIGN KEY (`vehicle_no`) REFERENCES `vehicle` (`vehicle_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `slot`
--

LOCK TABLES `slot` WRITE;
/*!40000 ALTER TABLE `slot` DISABLE KEYS */;
INSERT INTO `slot` VALUES ('PD_0','Dhankawadi',2,'null','available'),('PD_1','Dhankawadi',2,'null','available'),('PD_10','Dhankawadi',4,'null','available'),('PD_11','Dhankawadi',4,NULL,'available'),('PD_12','Dhankawadi',4,NULL,'available'),('PD_13','Dhankawadi',4,NULL,'available'),('PD_14','Dhankawadi',4,NULL,'available'),('PD_15','Dhankawadi',4,NULL,'available'),('PD_16','Dhankawadi',4,NULL,'available'),('PD_17','Dhankawadi',4,NULL,'available'),('PD_18','Dhankawadi',4,NULL,'available'),('PD_19','Dhankawadi',4,NULL,'available'),('PD_2','Dhankawadi',2,NULL,'available'),('PD_20','Dhankawadi',6,'null','available'),('PD_21','Dhankawadi',6,NULL,'available'),('PD_22','Dhankawadi',6,NULL,'available'),('PD_23','Dhankawadi',6,NULL,'available'),('PD_24','Dhankawadi',6,NULL,'available'),('PD_25','Dhankawadi',6,NULL,'available'),('PD_26','Dhankawadi',6,NULL,'available'),('PD_27','Dhankawadi',6,NULL,'available'),('PD_28','Dhankawadi',6,NULL,'available'),('PD_29','Dhankawadi',6,NULL,'available'),('PD_3','Dhankawadi',2,NULL,'available'),('PD_4','Dhankawadi',2,NULL,'available'),('PD_5','Dhankawadi',2,NULL,'available'),('PD_6','Dhankawadi',2,NULL,'available'),('PD_7','Dhankawadi',2,NULL,'available'),('PD_8','Dhankawadi',2,NULL,'available'),('PD_9','Dhankawadi',2,NULL,'available'),('PP_0','Pimpri',2,NULL,'available'),('PP_1','Pimpri',2,NULL,'available'),('PP_10','Pimpri',4,'null','available'),('PP_11','Pimpri',4,NULL,'available'),('PP_12','Pimpri',4,NULL,'available'),('PP_13','Pimpri',4,NULL,'available'),('PP_14','Pimpri',4,NULL,'available'),('PP_15','Pimpri',4,NULL,'available'),('PP_16','Pimpri',4,NULL,'available'),('PP_17','Pimpri',4,NULL,'available'),('PP_18','Pimpri',4,NULL,'available'),('PP_19','Pimpri',4,NULL,'available'),('PP_2','Pimpri',2,NULL,'available'),('PP_20','Pimpri',6,NULL,'available'),('PP_21','Pimpri',6,NULL,'available'),('PP_22','Pimpri',6,NULL,'available'),('PP_23','Pimpri',6,NULL,'available'),('PP_24','Pimpri',6,NULL,'available'),('PP_25','Pimpri',6,NULL,'available'),('PP_26','Pimpri',6,NULL,'available'),('PP_27','Pimpri',6,NULL,'available'),('PP_28','Pimpri',6,NULL,'available'),('PP_29','Pimpri',6,NULL,'available'),('PP_3','Pimpri',2,NULL,'available'),('PP_4','Pimpri',2,NULL,'available'),('PP_5','Pimpri',2,NULL,'available'),('PP_6','Pimpri',2,NULL,'available'),('PP_7','Pimpri',2,NULL,'available'),('PP_8','Pimpri',2,NULL,'available'),('PP_9','Pimpri',2,NULL,'available'),('PS_0','Shivaji Nagar',2,NULL,'available'),('PS_1','Shivaji Nagar',2,NULL,'available'),('PS_10','Shivaji Nagar',4,NULL,'available'),('PS_11','Shivaji Nagar',4,NULL,'available'),('PS_12','Shivaji Nagar',4,NULL,'available'),('PS_13','Shivaji Nagar',4,NULL,'available'),('PS_14','Shivaji Nagar',4,NULL,'available'),('PS_15','Shivaji Nagar',4,NULL,'available'),('PS_16','Shivaji Nagar',4,NULL,'available'),('PS_17','Shivaji Nagar',4,NULL,'available'),('PS_18','Shivaji Nagar',4,NULL,'available'),('PS_19','Shivaji Nagar',4,NULL,'available'),('PS_2','Shivaji Nagar',2,NULL,'available'),('PS_20','Shivaji Nagar',6,NULL,'available'),('PS_21','Shivaji Nagar',6,NULL,'available'),('PS_22','Shivaji Nagar',6,NULL,'available'),('PS_23','Shivaji Nagar',6,NULL,'available'),('PS_24','Shivaji Nagar',6,NULL,'available'),('PS_25','Shivaji Nagar',6,NULL,'available'),('PS_26','Shivaji Nagar',6,NULL,'available'),('PS_27','Shivaji Nagar',6,NULL,'available'),('PS_28','Shivaji Nagar',6,NULL,'available'),('PS_29','Shivaji Nagar',6,NULL,'available'),('PS_3','Shivaji Nagar',2,NULL,'available'),('PS_4','Shivaji Nagar',2,NULL,'available'),('PS_5','Shivaji Nagar',2,NULL,'available'),('PS_6','Shivaji Nagar',2,NULL,'available'),('PS_7','Shivaji Nagar',2,NULL,'available'),('PS_8','Shivaji Nagar',2,NULL,'available'),('PS_9','Shivaji Nagar',2,NULL,'available');
/*!40000 ALTER TABLE `slot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users` (
  `contact_no` bigint(20) NOT NULL,
  `email` varchar(50) default NULL,
  `u_password` varchar(12) default NULL,
  PRIMARY KEY  (`contact_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (7057100982,'komal@gmail.com','komal'),(9403622490,'nidhi@gmail.com','nilu'),(9405791156,'rutuja@gmail.com','rutuja'),(9423364747,'siddhi@gmail.com','siddhi'),(9822259934,'meena@gmail.com','meena');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vehicle` (
  `vehicle_no` varchar(15) NOT NULL,
  `vehicle_type` int(11) default NULL,
  `v_address` varchar(15) default NULL,
  `contact_no` bigint(20) default NULL,
  PRIMARY KEY  (`vehicle_no`),
  KEY `contact_no` (`contact_no`),
  CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`contact_no`) REFERENCES `users` (`contact_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES ('null',NULL,NULL,NULL);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-22 17:22:43
