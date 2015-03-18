-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: suitecrm
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.12.04.1

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_name_del` (`name`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_audit`
--

DROP TABLE IF EXISTS `accounts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_accounts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_audit`
--

LOCK TABLES `accounts_audit` WRITE;
/*!40000 ALTER TABLE `accounts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_bugs`
--

DROP TABLE IF EXISTS `accounts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_bug_acc` (`account_id`),
  KEY `idx_acc_bug_bug` (`bug_id`),
  KEY `idx_account_bug` (`account_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_bugs`
--

LOCK TABLES `accounts_bugs` WRITE;
/*!40000 ALTER TABLE `accounts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cases`
--

DROP TABLE IF EXISTS `accounts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_case_acc` (`account_id`),
  KEY `idx_acc_acc_case` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cases`
--

LOCK TABLES `accounts_cases` WRITE;
/*!40000 ALTER TABLE `accounts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_contacts`
--

DROP TABLE IF EXISTS `accounts_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_contact` (`account_id`,`contact_id`),
  KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_contacts`
--

LOCK TABLES `accounts_contacts` WRITE;
/*!40000 ALTER TABLE `accounts_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cstm`
--

DROP TABLE IF EXISTS `accounts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cstm`
--

LOCK TABLES `accounts_cstm` WRITE;
/*!40000 ALTER TABLE `accounts_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_opportunities`
--

DROP TABLE IF EXISTS `accounts_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_opportunities`
--

LOCK TABLES `accounts_opportunities` WRITE;
/*!40000 ALTER TABLE `accounts_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_actions`
--

DROP TABLE IF EXISTS `acl_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclaction_id_del` (`id`,`deleted`),
  KEY `idx_category_name` (`category`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_actions`
--

LOCK TABLES `acl_actions` WRITE;
/*!40000 ALTER TABLE `acl_actions` DISABLE KEYS */;
INSERT INTO `acl_actions` VALUES ('1049e5dc-9ee0-cb20-c116-55096688197d','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','AOD_IndexEvent','module',90,0),('1063407e-eae2-ea30-ba2d-550966f48806','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','AOP_Case_Updates','module',90,0),('10b9e547-999b-ddd4-dbdd-550966612fc1','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','AOR_Scheduled_Reports','module',90,0),('11526cc3-ad2f-9b4c-9877-550966adb6e1','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','ProjectTask','module',90,0),('120f0787-08ed-8cdc-e5bf-55096632cd8b','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','AOR_Scheduled_Reports','module',89,0),('1231e645-2f47-1fc4-9bfa-55096600e325','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','AOP_Case_Updates','module',90,0),('12fb574c-3b2b-c37c-0aaf-5509661250db','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','ProjectTask','module',90,0),('130f0dda-f783-521e-5431-5509669165ca','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','AOD_IndexEvent','module',90,0),('139b8af4-a4e7-0e5f-e017-5509660e8822','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','AOR_Scheduled_Reports','module',90,0),('1447cd7c-1610-284e-0254-550966107adf','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','AOP_Case_Updates','module',90,0),('145ab4d7-7b26-c599-e2cc-550966f9e2c9','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','ProjectTask','module',90,0),('1575028c-7937-3206-d720-5509663a3540','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','AOD_IndexEvent','module',90,0),('15b71503-387f-a77f-812e-550966066992','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','ProjectTask','module',90,0),('15f1c884-d8c9-9437-e882-550966bb7ff8','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','AOR_Scheduled_Reports','module',90,0),('169e2862-0798-206d-c536-5509662a6ef0','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','AOP_Case_Updates','module',90,0),('16a708ab-6d51-edef-c685-550966e29b74','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','AOW_Processed','module',90,0),('1727ccf9-6ee3-6861-08dc-5509660adbbf','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','ProjectTask','module',90,0),('1790451e-b24a-35f6-de6e-550966c613ea','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','AOD_IndexEvent','module',90,0),('18d89084-bfcc-a914-fd6b-5509661ae24b','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','AOP_Case_Updates','module',90,0),('18e5a198-78b0-e218-540d-550966c5e17f','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','Contacts','module',89,0),('192e53d8-6813-c129-08eb-550965becc3a','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','Leads','module',90,0),('1ace0c03-43f1-9dca-8027-5509665d2d99','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','AOP_Case_Updates','module',90,0),('1b9f6775-f730-0ab9-8b1a-5509666c49ef','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','Contacts','module',90,0),('1bbf6b64-819b-e445-2fe5-5509656480d7','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','Leads','module',90,0),('1cfbf286-88aa-9e84-cbf8-5509661d756e','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','Contacts','module',90,0),('1cffdcbd-142f-fd22-5e5c-5509654271b5','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','Leads','module',90,0),('1e5e5fca-5845-118c-eb75-55096507f076','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','Leads','module',90,0),('1ef2a3f6-3a02-d852-71ed-550966ccb286','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','Contacts','module',90,0),('1fc6308c-8996-24c5-46a6-550965f48e09','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','Leads','module',90,0),('1fda253f-ec93-d85a-e8b0-550966ad7496','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','SecurityGroups','module',89,0),('209d07ad-10d4-be4c-af05-550966d8d620','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','Calls','module',90,0),('209fdc6e-c945-1515-82df-550966af7c97','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','Contacts','module',90,0),('21bf5966-7cce-f62a-e8ad-550965236a5f','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','Leads','module',90,0),('22338f9f-3395-4952-11c1-55096676ce1f','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','SecurityGroups','module',90,0),('22413fa3-cd1a-eeda-a5f2-55096675949f','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','Emails','module',89,0),('228849e1-5c4f-80e8-e0fb-550966d62546','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','Contacts','module',90,0),('232a0203-f59b-0ad4-203f-550966b7a12d','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','Documents','module',90,0),('23d7ab83-02f0-252e-7c45-550965adb3d1','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','Leads','module',90,0),('2454d91f-4486-7b9f-3ab6-5509665ad720','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','SecurityGroups','module',90,0),('247b425c-37db-20aa-4c1b-550966b21691','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','Contacts','module',90,0),('25113eb2-f432-52d3-f6e2-5509661419bc','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','Calls_Reschedule','module',89,0),('252cb859-13cc-a36c-8f48-550966a04b4c','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','Emails','module',90,0),('25db0a27-1744-02dd-4bca-550966a3e9b0','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','AOS_Products','module',90,0),('265b5389-7b41-f3dd-9d42-55096650a726','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','Contacts','module',90,0),('26b0747e-79e1-1971-b330-550966d27a03','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','Emails','module',90,0),('27410de7-5317-5f41-e888-5509665bb4da','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','SecurityGroups','module',90,0),('28142e91-d121-000f-186c-55096607c593','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','Emails','module',90,0),('28b36c3a-57e6-4413-d318-550966e94cb4','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','Calls_Reschedule','module',90,0),('292f59a3-a2fb-5766-81e3-550966de8a3f','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','SecurityGroups','module',90,0),('296c5a74-5694-c7e2-b1cf-5509663345a8','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','Emails','module',90,0),('2a6bbb3c-07e9-84db-6313-550966204289','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','Calls_Reschedule','module',90,0),('2b4cc120-0eaa-253d-806d-5509660edd92','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','SecurityGroups','module',90,0),('2b72eaea-05cc-16cc-c750-550966df95db','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','Emails','module',90,0),('2be7f5b0-1c1b-871b-d4c9-55096661b5b5','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','Calls_Reschedule','module',90,0),('2cf0b41a-7948-ee34-2430-55096639cb4a','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','Emails','module',90,0),('2ddd4165-3477-fac2-deaf-550966f33549','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','Calls_Reschedule','module',90,0),('2e3bdc0b-312f-bfaa-7b65-550966a6c908','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','SecurityGroups','module',90,0),('2eba0a67-10b2-8a70-24f6-550966e6e780','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','AOW_Processed','module',90,0),('2f429112-33cc-ec24-1d15-5509668383ab','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','Emails','module',90,0),('302e3a5d-fd5f-de0a-b647-550966b70a0f','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','Calls_Reschedule','module',90,0),('308c3c89-ff1a-9d43-8ea5-55096609a897','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','SecurityGroups','module',90,0),('3218a990-43b7-93b5-95c5-55096610c8bb','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','Calls_Reschedule','module',90,0),('34383349-6e45-dab9-8810-550966a8e5d8','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','Calls_Reschedule','module',90,0),('35e2d1a5-6587-3918-750e-550966883f50','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','Campaigns','module',89,0),('393fcf42-3a77-c160-55b5-550966fa307b','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','Campaigns','module',90,0),('3ad38d23-13bc-89c0-f27f-550966aa24f9','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','Campaigns','module',90,0),('3b770cb1-c3e6-8577-9259-5509663a3afd','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','AOS_Products','module',90,0),('3c865c0e-b407-e2a9-da58-550966952e58','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','jjwg_Maps','module',89,0),('3c9d5a72-fe7f-a918-8295-5509661e9460','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','Campaigns','module',90,0),('3d95ba43-9e7d-4378-c5f2-5509669b297b','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','AOD_Index','module',89,0),('3e98412a-5c55-2f3a-6794-55096694bcd6','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','Campaigns','module',90,0),('3ff90d20-811f-54a0-14a3-55096634de53','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','Calls','module',90,0),('4057a93d-ed36-001a-2dc8-55096651f7a2','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','Campaigns','module',90,0),('406e7b7c-0d45-01c6-9e09-55096691b1c7','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','jjwg_Maps','module',90,0),('4123a225-03d8-77d0-f8a0-550966d618ab','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','AOD_Index','module',90,0),('420cf2df-189e-e951-73e8-550966c394f5','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','Campaigns','module',90,0),('42950d83-5738-7554-d12a-5509669a02e2','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','jjwg_Maps','module',90,0),('43144e6b-bfb4-4ecd-4b62-55096659fb17','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','AOD_Index','module',90,0),('43a3e37b-0639-7ba3-a974-550966771105','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','Campaigns','module',90,0),('43d000c9-94ff-73f2-e70c-550966bef9fa','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','Documents','module',90,0),('45060b5e-d19b-0633-b3cf-550966d84e0a','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','AOD_Index','module',90,0),('4527983f-bfc0-95c1-d5bb-550966d0a517','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','jjwg_Maps','module',90,0),('471c6b4d-d29a-8e66-07c8-550966b07027','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','AOD_Index','module',90,0),('47cd134f-152d-82f9-1536-550966325565','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','jjwg_Maps','module',90,0),('49557d61-702e-4638-32ef-5509664c3e43','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','AOD_Index','module',90,0),('49d05307-3900-7926-e13d-5509660af1eb','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','Accounts','module',89,0),('49fea089-6e5d-9fc9-fb41-5509666895ac','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','jjwg_Maps','module',90,0),('4aecd45c-e6a4-c391-4d54-550966229ab9','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','Meetings','module',89,0),('4bcda37d-9788-034e-799b-55096689c65d','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','jjwg_Maps','module',90,0),('4bcfb5ed-1210-fcd0-8184-550966d6a2b4','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','AOD_Index','module',90,0),('4cc82ced-2a88-3284-e6bb-55096677b687','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','Accounts','module',90,0),('4da9e177-8441-20b8-b81d-5509662e3f8e','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','Meetings','module',90,0),('4dc0444e-e316-4ef1-512c-5509660275da','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','jjwg_Maps','module',90,0),('4e91ceba-c05c-8250-cdf1-550966132f0f','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','AOD_Index','module',90,0),('4ec42072-4e86-06eb-0e61-5509669252fd','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','Accounts','module',90,0),('4ed73352-b6de-6b7c-8362-5509665240f0','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','AOS_Contracts','module',89,0),('502e9daf-711d-5fdc-398d-550966c458af','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','Meetings','module',90,0),('50d5574b-5215-2b1e-ced1-5509666cfe75','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','Accounts','module',90,0),('517f4892-d657-a75b-7992-5509650113b5','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','Cases','module',89,0),('51977c6e-98db-617e-e9a3-5509667175d2','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','AOS_Contracts','module',90,0),('52129eda-1bbd-0aea-910f-5509661342f0','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','Meetings','module',90,0),('530d526c-ad13-33a8-3f38-5509667a6c05','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','Accounts','module',90,0),('53236b21-f60b-69dd-83f8-550966841262','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','AOS_Contracts','module',90,0),('5436d80e-2fbe-232b-d237-55096635bd4e','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','Meetings','module',90,0),('54c3fd4b-d47f-e18c-0373-550966bac59c','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','Accounts','module',90,0),('54cc7be1-a521-a602-f828-5509662112da','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','AOS_Contracts','module',90,0),('552a035e-f87a-5934-8250-550965a5db85','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','Cases','module',90,0),('560a4641-e7c6-96d6-03b8-550966b1fdf1','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','Meetings','module',90,0),('565db7de-d542-6c48-f15c-5509661b0de4','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','Accounts','module',90,0),('568d602b-14d9-50ef-510c-550966bfeb4d','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','AOS_Contracts','module',90,0),('5734b21e-ae67-9120-dcfa-550966dded88','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','AOS_Quotes','module',89,0),('580e1e98-eb14-207b-431f-5509667c3f48','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','Meetings','module',90,0),('5813d32e-c6af-c736-093a-5509652d7368','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','Cases','module',90,0),('58378dad-cfff-f61d-bda8-550966091bdf','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','AM_ProjectTemplates','module',89,0),('58400a72-e785-dec6-87f6-550966a2526c','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','Calls','module',90,0),('5847a9ce-ea23-b839-ec76-550966e91180','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','AOS_Contracts','module',90,0),('58771081-4489-fc86-730e-55096649dad5','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','Accounts','module',90,0),('59c0670b-1eb9-0af6-ee33-5509666b7c3c','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','Meetings','module',90,0),('5a2f5fad-5dd4-5041-b881-550966de9b1c','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','AOS_Contracts','module',90,0),('5a3309f8-fe59-0aeb-a7cc-55096573e83b','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','Cases','module',90,0),('5a4f1c62-cc94-93e1-17e0-550966793ec0','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','AOS_Quotes','module',90,0),('5bdd20b9-1865-83af-b088-5509660c751e','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','AOS_Quotes','module',90,0),('5c448f95-59b8-475e-90f1-5509650b37be','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','Cases','module',90,0),('5c74036d-3844-116b-1063-5509666d2d47','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','AOS_Contracts','module',90,0),('5c979333-ecae-02a3-8c50-550966eb6f7f','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','AM_ProjectTemplates','module',90,0),('5d50399a-6189-40ab-0d4c-550966a8d175','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','AOS_Quotes','module',90,0),('5d8c010e-bbf0-4cad-5bcd-5509667e1cdb','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','Calls','module',90,0),('5e818a75-870b-fed9-9ae3-550965773b0e','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','Cases','module',90,0),('5ed276b6-c0b8-01f1-6cb0-55096617bc90','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','AOS_Quotes','module',90,0),('5f17a289-19c7-b805-57cb-550966fd04f7','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','AM_ProjectTemplates','module',90,0),('5fb196d9-1e9f-46c0-645b-5509662f0a76','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','ProspectLists','module',89,0),('6084ce71-7fa3-41db-f1bb-5509652caec5','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','Cases','module',90,0),('60badc6e-5a70-d5f8-89a5-55096631a21f','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','AOS_Quotes','module',90,0),('61092e59-c820-d9b8-7604-5509660ebdb8','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','AM_ProjectTemplates','module',90,0),('626f14f2-24c8-ba11-d9c6-5509665997aa','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','AOS_Quotes','module',90,0),('62814034-9524-d41f-cfab-550965f0d58a','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','Cases','module',90,0),('6308aa44-99ff-2427-6f14-550966be1467','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','AM_ProjectTemplates','module',90,0),('63474ecc-dc7d-12c1-d544-5509664015cd','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','ProspectLists','module',90,0),('63e3f75d-df1c-8c27-9198-55096684c946','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','AOS_Quotes','module',90,0),('64dbb049-e762-3989-ed1e-5509664787a0','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','ProspectLists','module',90,0),('6565fe87-d7a1-7bd4-ff06-550966f7fadd','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','AM_ProjectTemplates','module',90,0),('67057914-21bf-fc15-e467-550966b53b0c','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','ProspectLists','module',90,0),('67d7056b-2cc4-cdda-22d4-55096664059a','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','AM_ProjectTemplates','module',90,0),('67e30fa7-ecf6-7bbb-df50-550966a1b939','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','AOR_Scheduled_Reports','module',90,0),('687f9f36-5a8a-98df-b22d-550966bce951','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','jjwg_Markers','module',89,0),('68da0f01-1940-dcb4-38bd-55096653a216','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','ProspectLists','module',90,0),('68f803b3-9ad5-0f2a-2438-55096698f6a6','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','AOD_IndexEvent','module',89,0),('696404ff-b900-4c5f-6e0b-55096618ff66','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','Documents','module',90,0),('6a2304ff-bd34-ff96-f9fa-550966a2f92b','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','AOS_Products','module',90,0),('6b27d602-184c-2516-ed14-5509669ffb14','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','ProspectLists','module',90,0),('6b4760fe-e927-973f-f88a-5509665d4c99','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','AM_ProjectTemplates','module',90,0),('6d5b7e8d-04f4-d958-47d6-550966c47d8e','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','ProspectLists','module',90,0),('6d698f42-487b-b1b4-876f-550966b1d258','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','jjwg_Markers','module',90,0),('6f0a951e-b6d5-207f-458c-550966f658b5','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','jjwg_Markers','module',90,0),('6f820fc0-62f8-991f-54e8-550966826d4d','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','ProspectLists','module',90,0),('7118f1b0-fbe0-41be-461b-55096639ddb2','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','jjwg_Markers','module',90,0),('734f96cb-f806-3605-6046-5509665e65c9','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','jjwg_Markers','module',90,0),('74e485b3-154d-b5ee-9a85-550966c4e836','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','jjwg_Markers','module',90,0),('7697d24e-dd00-d34e-9821-5509660a2170','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','jjwg_Markers','module',90,0),('76a23404-8b5e-1dcd-90b5-550966c77ba4','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','FP_events','module',89,0),('776ea572-3a86-e643-5743-550966a547a0','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','Tasks','module',89,0),('7819f723-0341-4bd3-01e0-550966733027','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','jjwg_Markers','module',90,0),('7a05cb63-fd23-bea3-8a31-5509662fb373','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','Tasks','module',90,0),('7aa3b832-6b07-bb96-5a9b-550966e367e0','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','AOS_Invoices','module',89,0),('7ab564a1-9234-1631-dee5-5509661aaa88','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','Opportunities','module',89,0),('7ac4e305-83c8-d836-6c95-5509662f40fc','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','FP_events','module',90,0),('7b6a1687-6527-baf6-3c51-5509660975fe','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','Tasks','module',90,0),('7cfb6073-4432-b320-55b4-5509660ed7f5','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','FP_events','module',90,0),('7d09414e-a5e5-3494-63ea-550966ad6e03','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','Tasks','module',90,0),('7d710b3d-fbd4-29a4-c089-5509661ca428','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','AOS_Invoices','module',90,0),('7d813b90-9d3f-6fe4-c4dc-5509660cef2e','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','Opportunities','module',90,0),('7e23c2f4-5bb4-a8d7-3c52-5509665f0b88','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','Tasks','module',90,0),('7ecd14e2-ed6a-a7a8-f847-550966000418','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','Opportunities','module',90,0),('7eedc8f2-fd4a-7f93-651c-550966816f1c','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','AOS_Invoices','module',90,0),('7f226780-29de-bd0b-0e58-550966920c5c','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','FP_events','module',90,0),('7ff8e661-9959-4ca2-8c49-55096618def4','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','AOS_Invoices','module',90,0),('8025ce49-b1aa-3491-8c0a-550966dd48f8','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','AOR_Reports','module',89,0),('8035577e-3dc2-070d-39d1-550966d06f24','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','Opportunities','module',90,0),('80568454-a06d-9a76-27f3-5509662c0439','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','Tasks','module',90,0),('810140a8-b816-d239-637e-550965ee29d7','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','Bugs','module',89,0),('8118a67e-ca3f-3842-553e-55096656acb9','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','AOS_Invoices','module',90,0),('81419160-25ae-bf0f-897b-55096654a28b','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','FP_events','module',90,0),('816203e8-1a58-0318-707c-550966a626af','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','Calls','module',90,0),('8172b8e2-83a1-0d0a-16bb-550966333380','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','Opportunities','module',90,0),('8193b403-533b-ccfa-792f-55096616b10c','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','EAPM','module',89,0),('819d0174-5cac-1f17-6c34-550966d2489a','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','Documents','module',90,0),('81fdf977-fadc-27b4-6b7e-550966c2e30f','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','Tasks','module',90,0),('828cbe8c-c99c-dc29-63d6-5509662ff470','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','AOS_Invoices','module',90,0),('830f0917-17d9-3fb2-00c3-550966c58243','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','AOS_Products','module',90,0),('8332261f-b47a-1fab-ce20-55096624eb7e','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','Opportunities','module',90,0),('83458804-2767-6820-238b-550966489f8d','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','AOR_Reports','module',90,0),('839e2eaa-93d8-e36b-3ec5-550965689ca2','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','Bugs','module',90,0),('83aa157e-a88a-3818-f41d-5509666a3c77','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','FP_events','module',90,0),('83cea788-b3c3-62a8-3cc8-55096691e417','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','AOS_Invoices','module',90,0),('83ddd3b6-2457-064d-d0b9-550966f27671','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','Tasks','module',90,0),('846db648-34d3-d11c-afe7-5509660545a2','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','EAPM','module',90,0),('84eaea57-ddce-d469-7fe8-5509669dc43b','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','AOR_Reports','module',90,0),('84fd1202-fe0a-e246-e3e1-550965dae2e6','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','Bugs','module',90,0),('853dda8d-6aaf-51e7-4516-5509663818de','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','FP_events','module',90,0),('854aa41f-09f8-a9bf-a891-55096653357c','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','AOS_Invoices','module',90,0),('8568d417-548e-945d-1f35-550966d842fb','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','Opportunities','module',90,0),('85c81f9e-15d7-402f-eca2-550966e12291','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','EAPM','module',90,0),('863687b7-4232-cb8e-3f3b-550965a620bc','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','Bugs','module',90,0),('86f4ca6e-b9f4-dc23-1d61-550966f7411e','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','EAPM','module',90,0),('874792bb-3abd-8932-dc9a-5509667d6ba0','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','FP_events','module',90,0),('87524ce5-c36e-ca2f-313c-55096693191e','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','Opportunities','module',90,0),('8761068e-fb20-5694-f84b-550966919134','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','AOR_Reports','module',90,0),('87905fa8-dca7-81b5-23c4-550965a663e2','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','Bugs','module',90,0),('88b78057-a57e-7ccd-3303-5509668482b6','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','EAPM','module',90,0),('8994daeb-2434-2c7c-a618-550966d5a8cf','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','AOR_Reports','module',90,0),('8a0461b3-e7e9-a65c-4880-5509654889b3','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','Bugs','module',90,0),('8a8d04e5-54c0-4ecb-8e15-55096628aa8d','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','AOR_Scheduled_Reports','module',90,0),('8aacf954-f6e7-ef34-f785-550966b21394','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','EAPM','module',90,0),('8ab1d331-9b15-9e0a-141d-550966fad072','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','Prospects','module',89,0),('8b861fa0-6abe-a053-4fa5-55096562a530','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','Bugs','module',90,0),('8ba7e78e-f583-1be5-0492-550966d22cbf','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','AOR_Reports','module',90,0),('8ced7ec1-b885-910d-f2be-5509659a7336','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','Bugs','module',90,0),('8da5e3a7-e6d4-9436-7a6c-55096648fe6d','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','Prospects','module',90,0),('8da9de25-46d0-dc9d-5440-55096606e33c','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','EAPM','module',90,0),('8e064381-a64e-5a83-ee50-5509667482a3','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','AOR_Reports','module',90,0),('8f88ed11-5990-e4f2-e8f3-550966580cd9','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','Prospects','module',90,0),('8ff78eaa-63ff-a98d-a9aa-550966366792','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','AOR_Reports','module',90,0),('907f3dad-9b79-ee59-5a14-5509662dd098','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','EAPM','module',90,0),('9194d7dd-c089-7f7d-7624-55096672aa75','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','Prospects','module',90,0),('9251d57f-be9e-cba8-474b-55096611bb15','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','AM_TaskTemplates','module',89,0),('926be911-123e-83c6-8e24-550966f889fe','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','jjwg_Areas','module',89,0),('93a1fe60-638c-0e85-1871-550966fddfdd','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','Prospects','module',90,0),('956090ca-a738-8b29-ec38-550966cc6397','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','jjwg_Areas','module',90,0),('95bad19a-bd36-a174-3d96-550966ca703b','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','Prospects','module',90,0),('95eaf21d-26c1-1cc4-6584-550966956596','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','AM_TaskTemplates','module',90,0),('96c22a8f-b40f-77a5-df65-550966a7013f','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','jjwg_Areas','module',90,0),('976ba54f-152b-68a9-3e50-550966d9d0e4','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','Prospects','module',90,0),('97ca9f23-9fb8-efe4-cd59-550966cb4453','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','AM_TaskTemplates','module',90,0),('983d44a6-2751-a4f2-91e1-550966e12813','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','jjwg_Areas','module',90,0),('9957d562-2d9b-6e32-0e2b-55096635349c','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','Prospects','module',90,0),('99996f76-dc8b-cf94-cdd6-550966fd0441','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','AM_TaskTemplates','module',90,0),('99b5e3f6-c212-1170-2c9d-55096607c992','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','jjwg_Areas','module',90,0),('9b470a59-fc79-41ef-53a8-5509664ade46','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','AOD_IndexEvent','module',90,0),('9b95302e-bb75-ba59-81b4-5509665cf088','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','jjwg_Areas','module',90,0),('9be93fae-a716-8fcc-9604-5509669a4377','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','AM_TaskTemplates','module',90,0),('9d4dea5f-daf7-b65a-7531-5509663753fb','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','jjwg_Areas','module',90,0),('9e497ab5-6c54-43e9-0f32-550966be28a3','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','AM_TaskTemplates','module',90,0),('9e840ff2-7bef-d80e-4363-55096650de7f','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','Documents','module',90,0),('9eb22eec-936f-4320-25b9-5509666e8160','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','jjwg_Areas','module',90,0),('9f18d7a2-b225-a0e6-c105-550966e92896','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','AOS_PDF_Templates','module',89,0),('a0b6a664-1400-ced5-976c-550966398908','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','AM_TaskTemplates','module',90,0),('a1dcab4a-f0d5-cd38-b01b-550966c8f4ec','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','AOS_PDF_Templates','module',90,0),('a1e00693-0209-f2d1-744c-550966e8da1f','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','Calls','module',90,0),('a2465211-509b-9520-17b5-550966cc5511','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','AM_TaskTemplates','module',90,0),('a2466bfe-0c17-9b3e-f8b6-5509669a6593','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','EmailTemplates','module',89,0),('a31b0db5-8ef8-4612-89df-55096615b33c','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','ProjectTask','module',89,0),('a367c8ed-5ac5-f47b-5a20-55096628209e','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','AOS_PDF_Templates','module',90,0),('a4f14cfe-25d4-9907-e829-55096633acb5','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','AOS_PDF_Templates','module',90,0),('a5790eff-1fd2-1d4a-acf8-55096678717d','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','AOS_Products','module',90,0),('a58ee91b-97fe-1c8b-78d8-550966fed924','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','EmailTemplates','module',90,0),('a594852f-b1fa-0b5b-ff5e-550966d8f152','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','FP_Event_Locations','module',89,0),('a6c44add-95fe-228a-56e2-550966adbe90','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','EmailTemplates','module',90,0),('a6f3182f-f7f8-e9b5-8e56-5509669f4bfd','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','AOS_PDF_Templates','module',90,0),('a800b42b-c4b6-afdc-e36f-5509653d5928','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','Users','module',89,0),('a81f9574-4ba2-5f77-ea12-550966a01135','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','EmailTemplates','module',90,0),('a8ccd86e-018d-f23d-ebd5-55096650666f','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','FP_Event_Locations','module',90,0),('a8fa0a37-94b1-5a11-69e1-5509661fcdf2','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','AOS_PDF_Templates','module',90,0),('a939c1cd-cca0-a484-0b96-550966bae478','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','EmailTemplates','module',90,0),('aa83a305-6ac2-ca57-93d2-5509665339a8','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','AOS_PDF_Templates','module',90,0),('aa9f4fa4-7378-70f8-13f6-550966295875','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','EmailTemplates','module',90,0),('aab28241-8147-8b23-2a01-550965eaf38f','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','Users','module',90,0),('aaf9c974-1382-c5b4-b576-550966ac34b2','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','FP_Event_Locations','module',90,0),('ac0f25cb-c4c7-1864-fb46-550966754329','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','EmailTemplates','module',90,0),('ac19ccdf-2c92-e9ea-af9d-550966c4b93e','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','EmailMarketing','module',89,0),('ac88cedf-4f35-63a3-9054-5509666467e2','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','AOS_PDF_Templates','module',90,0),('ac90a1ed-3811-dbbf-61de-55096598eeb0','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','Users','module',90,0),('ac974618-1f21-3674-ff9f-550966b9c809','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','FP_Event_Locations','module',90,0),('ad851067-2372-1734-3d7a-5509664b555f','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','EmailTemplates','module',90,0),('ae372813-5896-37a1-7097-55096600ed07','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','FP_Event_Locations','module',90,0),('aeeedc64-14be-70a6-9964-5509655c48be','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','Users','module',90,0),('af393f62-611d-3ca3-2669-5509661ba839','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','EmailMarketing','module',90,0),('b0851204-1e87-1c86-65d1-5509665aa4de','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','FP_Event_Locations','module',90,0),('b1227279-261d-46f1-3a88-5509665e4c3c','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','EmailMarketing','module',90,0),('b148c056-550f-6bf7-61a2-55096581eb60','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','Users','module',90,0),('b2731e10-aa15-b123-5e1d-550966bdd56b','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','EmailMarketing','module',90,0),('b2b47bf4-c387-2ecc-de13-55096636562c','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','FP_Event_Locations','module',90,0),('b31fbc29-8551-c1bb-8c16-55096530f72c','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','Users','module',90,0),('b4136e85-a4d9-b490-8644-550966a29fee','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','EmailMarketing','module',90,0),('b5063326-9fec-20c5-0931-5509669f4d8d','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','FP_Event_Locations','module',90,0),('b5177dda-00b7-174e-3df0-55096554521c','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','Users','module',90,0),('b5da037a-b9a7-3d91-e8a9-55096612ed3b','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','EmailMarketing','module',90,0),('b668384a-ab06-fc33-1242-550965b7a8af','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','Users','module',90,0),('b6e407ac-5858-f5ab-c2a1-550966cf6083','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','AOR_Scheduled_Reports','module',90,0),('b7211f01-ab19-e6f9-63ca-550966544e4d','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','EmailMarketing','module',90,0),('b7a16c96-8fc1-3a2a-2350-5509669f2edd','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','jjwg_Address_Cache','module',89,0),('b8b71a7d-ae4a-dc1b-b606-550966df12ad','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','EmailMarketing','module',90,0),('baaa6071-225f-b4a3-d6e3-55096693bad7','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','jjwg_Address_Cache','module',90,0),('bc640b7d-e0d2-344e-fce8-55096623958a','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','Calls','module',90,0),('bc9eef1a-1d62-7fb8-316d-55096698ff14','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','jjwg_Address_Cache','module',90,0),('bf900cd9-a20a-7e7c-5dbc-5509662c0dcd','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','AOD_IndexEvent','module',90,0),('bfaedd7c-1915-422f-992e-550966d393bc','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','jjwg_Address_Cache','module',90,0),('c22fba86-b9df-1d9c-a624-5509669c7a24','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','jjwg_Address_Cache','module',90,0),('c42b949e-a9e8-58e0-55c4-550966addbd2','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','jjwg_Address_Cache','module',90,0),('c50d27fd-f987-ae2c-484d-55096689e162','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','AM_ProjectHolidays','module',89,0),('c59cd48a-c664-c102-94c8-55096641ff4e','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','AOS_Product_Categories','module',89,0),('c5ed0e58-2ef1-4fb6-2a60-55096653e734','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','jjwg_Address_Cache','module',90,0),('c6160303-5fc7-a88a-9394-550966fb196e','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','AOP_Case_Updates','module',89,0),('c620de2a-bd3c-b26c-de18-550966c0e06a','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','Notes','module',89,0),('c66006f5-9715-158e-f579-55096682f965','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','AOS_Products','module',90,0),('c7fc9355-20df-008c-68bf-550966982225','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','AOW_WorkFlow','module',89,0),('c84b60f5-1cc3-89a7-93a8-55096692e39a','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','jjwg_Address_Cache','module',90,0),('c9648960-6c8c-fee6-03bd-55096681f6b2','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','AM_ProjectHolidays','module',90,0),('c97d76f6-4fd0-55ca-baf6-550966e78a09','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','AOS_Product_Categories','module',90,0),('ca1180db-bcd0-fff0-f20c-5509669a80e6','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','Notes','module',90,0),('cb214d22-c32a-9c93-882a-5509667d2c77','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','AM_ProjectHolidays','module',90,0),('cb45161e-40f9-c2a8-bd3b-550966ca798a','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','AOW_WorkFlow','module',90,0),('cb72e905-e215-ed96-8732-5509662dffd2','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','AOS_Product_Categories','module',90,0),('cc75302c-be50-59c3-41a2-5509662d5e4e','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','Notes','module',90,0),('ccecb807-5a22-3820-4c78-550966caef2a','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','AOW_WorkFlow','module',90,0),('cd2b792a-9624-776f-bf73-55096670107d','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','AM_ProjectHolidays','module',90,0),('ce03ab32-b269-12fb-29eb-550966a47ed0','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','AOS_Product_Categories','module',90,0),('ce5b3681-5214-f828-233f-5509668c97ca','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','Notes','module',90,0),('ce8dffaa-0cb8-1a31-00aa-55096636ec53','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','AOW_WorkFlow','module',90,0),('cf1c16b7-4a32-b73c-2771-550966ad798f','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','AM_ProjectHolidays','module',90,0),('d044513a-98c5-910b-82ce-550966e71a1c','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','AOW_WorkFlow','module',90,0),('d0467e2a-cf75-2edd-d572-55096686b17b','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','AOS_Product_Categories','module',90,0),('d086d51d-6e46-17c1-a2f0-55096612c619','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','Notes','module',90,0),('d211ee67-1c4a-ff0f-4d5d-55096674e731','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','AM_ProjectHolidays','module',90,0),('d22c5b5d-3f26-0f64-b21d-5509660f7081','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','AOW_WorkFlow','module',90,0),('d2344753-beef-ad94-2bf7-5509667509b7','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','AOS_Product_Categories','module',90,0),('d2e54fca-2634-7d7e-d26b-550966e71ed7','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','Notes','module',90,0),('d3c4a93e-cc8a-ea1f-6881-550966fcb67a','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','AOS_Product_Categories','module',90,0),('d3f3fc7b-0593-4e82-920e-5509669c7e21','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','AM_ProjectHolidays','module',90,0),('d414bf8b-aedf-d75d-a3dd-550966ea0409','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','AOW_WorkFlow','module',90,0),('d4abf391-7dff-fec8-f240-5509668ee093','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','Notes','module',90,0),('d59062b0-0648-f613-50cb-5509661ca164','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','AOS_Product_Categories','module',90,0),('d5c40edc-007d-2020-46bd-550966c86b76','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','AOW_WorkFlow','module',90,0),('d654bfbf-84d2-41fe-9ece-550966b047a0','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','AM_ProjectHolidays','module',90,0),('d6b90772-8e52-29e2-1448-5509664f8a1a','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','ProjectTask','module',90,0),('d6dab7bb-0b7c-a453-6330-5509661442f4','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','Notes','module',90,0),('d727f9e4-53b4-8551-8607-55096543d2ae','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','Project','module',89,0),('d786e747-4a6e-169f-937e-550966fa6498','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','AOP_Case_Events','module',89,0),('da381d17-0649-8dc9-a474-55096601c868','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','AOP_Case_Events','module',90,0),('da997e1e-1ac6-5d47-9fc8-55096547405c','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','Project','module',90,0),('dbe6244d-3ced-a073-3434-550966a7b195','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','AOP_Case_Events','module',90,0),('dc4fbbd0-c098-69f2-9eff-550965deee5b','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','Project','module',90,0),('dde8070b-3e75-2b5d-092a-550966009eba','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','AOP_Case_Events','module',90,0),('de9e17db-fa0e-af15-cb38-550965f16b9a','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','Project','module',90,0),('dfe9d6d8-ae7d-3163-4352-5509650d25a7','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','Project','module',90,0),('e03c03e1-6cd9-a744-9d81-55096693ef40','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','AOP_Case_Events','module',90,0),('e1a6335e-d325-7ab3-9063-5509657269be','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','Project','module',90,0),('e242e7ba-b936-2e65-3b92-550966a96917','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','AOP_Case_Events','module',90,0),('e35e061e-77d5-f56e-9965-55096648532b','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','AOD_IndexEvent','module',90,0),('e386c126-eb00-247c-232b-5509654041f2','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','Project','module',90,0),('e47f091c-092e-7b90-1442-550966ede477','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','AOR_Scheduled_Reports','module',90,0),('e488d277-f531-bd16-273f-550966c3d774','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','export','AOP_Case_Events','module',90,0),('e58ddd7e-b1fe-15d1-37f9-550965578daf','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','Project','module',90,0),('e6c93442-f40e-2dea-b5fa-55096678e007','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','massupdate','AOP_Case_Events','module',90,0),('e9864132-e56c-c39e-3712-550965386c3d','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','Leads','module',89,0),('ea8c40b9-74b4-9759-d7cd-550966e4a6e6','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','AOW_Processed','module',89,0),('ebdf0844-ea76-9cf7-667e-550966bd73ff','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','AOP_Case_Updates','module',90,0),('ed69adb2-fcd9-5e78-fd4a-55096638244f','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','AOW_Processed','module',90,0),('ee7643fe-d252-c439-6ec9-5509663cb095','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','Documents','module',89,0),('eef98f0d-762d-e486-518f-55096693a601','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','AOW_Processed','module',90,0),('f0772c48-2c4a-016a-6165-550966bacff6','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','edit','AOW_Processed','module',90,0),('f0dd011b-c501-9ea8-2b26-5509661566ed','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','AOS_Products','module',89,0),('f15a06a4-a332-721c-abfe-550966e39440','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','access','Calls','module',89,0),('f19e602a-c015-e893-b906-5509666ce11f','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','Documents','module',90,0),('f2450439-7a6f-ed9d-39fb-550966186e3d','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','delete','AOW_Processed','module',90,0),('f3555a59-862e-9b31-df68-5509660fc272','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','view','AOS_Products','module',90,0),('f3dedc45-274c-6906-0d28-5509661d2293','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','Documents','module',90,0),('f409913f-aa35-4c44-125c-550966554e68','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','import','AOW_Processed','module',90,0),('f4cc075d-62ea-5767-50a8-550966f3bb03','2015-03-18 11:48:13','2015-03-18 11:48:13','1','','list','ProjectTask','module',90,0);
/*!40000 ALTER TABLE `acl_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles`
--

DROP TABLE IF EXISTS `acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles`
--

LOCK TABLES `acl_roles` WRITE;
/*!40000 ALTER TABLE `acl_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_actions`
--

DROP TABLE IF EXISTS `acl_roles_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acl_role_id` (`role_id`),
  KEY `idx_acl_action_id` (`action_id`),
  KEY `idx_aclrole_action` (`role_id`,`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_actions`
--

LOCK TABLES `acl_roles_actions` WRITE;
/*!40000 ALTER TABLE `acl_roles_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_users`
--

DROP TABLE IF EXISTS `acl_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id` (`role_id`),
  KEY `idx_acluser_id` (`user_id`),
  KEY `idx_aclrole_user` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_users`
--

LOCK TABLES `acl_roles_users` WRITE;
/*!40000 ALTER TABLE `acl_roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL,
  KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_book`
--

LOCK TABLES `address_book` WRITE;
/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projectholidays`
--

DROP TABLE IF EXISTS `am_projectholidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projectholidays` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `holiday_date` date DEFAULT NULL,
  `resourse_users` varchar(100) DEFAULT 'Contacts',
  `resource_id` varchar(36) DEFAULT NULL,
  `resource_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projectholidays`
--

LOCK TABLES `am_projectholidays` WRITE;
/*!40000 ALTER TABLE `am_projectholidays` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projectholidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projectholidays_audit`
--

DROP TABLE IF EXISTS `am_projectholidays_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projectholidays_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_am_projectholidays_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projectholidays_audit`
--

LOCK TABLES `am_projectholidays_audit` WRITE;
/*!40000 ALTER TABLE `am_projectholidays_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projectholidays_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projectholidays_project_c`
--

DROP TABLE IF EXISTS `am_projectholidays_project_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projectholidays_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projectholidays_projectproject_ida` varchar(36) DEFAULT NULL,
  `am_projectholidays_projectam_projectholidays_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projectholidays_project_ida1` (`am_projectholidays_projectproject_ida`),
  KEY `am_projectholidays_project_alt` (`am_projectholidays_projectam_projectholidays_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projectholidays_project_c`
--

LOCK TABLES `am_projectholidays_project_c` WRITE;
/*!40000 ALTER TABLE `am_projectholidays_project_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projectholidays_project_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates`
--

DROP TABLE IF EXISTS `am_projecttemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates`
--

LOCK TABLES `am_projecttemplates` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_audit`
--

DROP TABLE IF EXISTS `am_projecttemplates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_am_projecttemplates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_audit`
--

LOCK TABLES `am_projecttemplates_audit` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_project_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_project_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_project_1_c`
--

LOCK TABLES `am_projecttemplates_project_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_project_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_project_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates`
--

DROP TABLE IF EXISTS `am_tasktemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` varchar(255) DEFAULT NULL,
  `predecessors` int(255) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT '0',
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int(255) DEFAULT NULL,
  `order_number` int(255) DEFAULT NULL,
  `estimated_effort` int(255) DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates`
--

LOCK TABLES `am_tasktemplates` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates_am_projecttemplates_c`
--

DROP TABLE IF EXISTS `am_tasktemplates_am_projecttemplates_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates_am_projecttemplates_c`
--

LOCK TABLES `am_tasktemplates_am_projecttemplates_c` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates_am_projecttemplates_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates_am_projecttemplates_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates_audit`
--

DROP TABLE IF EXISTS `am_tasktemplates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_tasktemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_am_tasktemplates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates_audit`
--

LOCK TABLES `am_tasktemplates_audit` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_index`
--

DROP TABLE IF EXISTS `aod_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_index` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `last_optimised` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_index`
--

LOCK TABLES `aod_index` WRITE;
/*!40000 ALTER TABLE `aod_index` DISABLE KEYS */;
INSERT INTO `aod_index` VALUES ('1','Index','2015-03-18 11:52:20','2015-03-18 11:52:20','1','1',NULL,0,NULL,NULL,'modules/AOD_Index/Index/Index');
/*!40000 ALTER TABLE `aod_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_index_audit`
--

DROP TABLE IF EXISTS `aod_index_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_index_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aod_index_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_index_audit`
--

LOCK TABLES `aod_index_audit` WRITE;
/*!40000 ALTER TABLE `aod_index_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_index_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_indexevent`
--

DROP TABLE IF EXISTS `aod_indexevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_indexevent` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT '0',
  `record_id` char(36) DEFAULT NULL,
  `record_module` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_record_module` (`record_module`),
  KEY `idx_record_id` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_indexevent`
--

LOCK TABLES `aod_indexevent` WRITE;
/*!40000 ALTER TABLE `aod_indexevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_indexevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_indexevent_audit`
--

DROP TABLE IF EXISTS `aod_indexevent_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_indexevent_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aod_indexevent_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_indexevent_audit`
--

LOCK TABLES `aod_indexevent_audit` WRITE;
/*!40000 ALTER TABLE `aod_indexevent_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_indexevent_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events`
--

DROP TABLE IF EXISTS `aop_case_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events`
--

LOCK TABLES `aop_case_events` WRITE;
/*!40000 ALTER TABLE `aop_case_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events_audit`
--

DROP TABLE IF EXISTS `aop_case_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events_audit`
--

LOCK TABLES `aop_case_events_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates`
--

DROP TABLE IF EXISTS `aop_case_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates`
--

LOCK TABLES `aop_case_updates` WRITE;
/*!40000 ALTER TABLE `aop_case_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates_audit`
--

DROP TABLE IF EXISTS `aop_case_updates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_updates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates_audit`
--

LOCK TABLES `aop_case_updates_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_updates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_charts`
--

DROP TABLE IF EXISTS `aor_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int(11) DEFAULT NULL,
  `y_field` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_charts`
--

LOCK TABLES `aor_charts` WRITE;
/*!40000 ALTER TABLE `aor_charts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_charts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_conditions`
--

DROP TABLE IF EXISTS `aor_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_conditions_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_conditions`
--

LOCK TABLES `aor_conditions` WRITE;
/*!40000 ALTER TABLE `aor_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_fields`
--

DROP TABLE IF EXISTS `aor_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_fields_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_fields`
--

LOCK TABLES `aor_fields` WRITE;
/*!40000 ALTER TABLE `aor_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports`
--

DROP TABLE IF EXISTS `aor_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports`
--

LOCK TABLES `aor_reports` WRITE;
/*!40000 ALTER TABLE `aor_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports_audit`
--

DROP TABLE IF EXISTS `aor_reports_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aor_reports_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports_audit`
--

LOCK TABLES `aor_reports_audit` WRITE;
/*!40000 ALTER TABLE `aor_reports_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_scheduled_reports`
--

DROP TABLE IF EXISTS `aor_scheduled_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext,
  `aor_report_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_scheduled_reports`
--

LOCK TABLES `aor_scheduled_reports` WRITE;
/*!40000 ALTER TABLE `aor_scheduled_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_scheduled_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts`
--

DROP TABLE IF EXISTS `aos_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts`
--

LOCK TABLES `aos_contracts` WRITE;
/*!40000 ALTER TABLE `aos_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_audit`
--

DROP TABLE IF EXISTS `aos_contracts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_contracts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_audit`
--

LOCK TABLES `aos_contracts_audit` WRITE;
/*!40000 ALTER TABLE `aos_contracts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_documents`
--

DROP TABLE IF EXISTS `aos_contracts_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_documents`
--

LOCK TABLES `aos_contracts_documents` WRITE;
/*!40000 ALTER TABLE `aos_contracts_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices`
--

DROP TABLE IF EXISTS `aos_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices`
--

LOCK TABLES `aos_invoices` WRITE;
/*!40000 ALTER TABLE `aos_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices_audit`
--

DROP TABLE IF EXISTS `aos_invoices_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_invoices_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices_audit`
--

LOCK TABLES `aos_invoices_audit` WRITE;
/*!40000 ALTER TABLE `aos_invoices_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups`
--

DROP TABLE IF EXISTS `aos_line_item_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups`
--

LOCK TABLES `aos_line_item_groups` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups_audit`
--

DROP TABLE IF EXISTS `aos_line_item_groups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_line_item_groups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups_audit`
--

LOCK TABLES `aos_line_item_groups_audit` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates`
--

DROP TABLE IF EXISTS `aos_pdf_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` text,
  `pdffooter` text,
  `margin_left` int(255) DEFAULT '15',
  `margin_right` int(255) DEFAULT '15',
  `margin_top` int(255) DEFAULT '16',
  `margin_bottom` int(255) DEFAULT '16',
  `margin_header` int(255) DEFAULT '9',
  `margin_footer` int(255) DEFAULT '9',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates`
--

LOCK TABLES `aos_pdf_templates` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates_audit`
--

DROP TABLE IF EXISTS `aos_pdf_templates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_pdf_templates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates_audit`
--

LOCK TABLES `aos_pdf_templates_audit` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories`
--

DROP TABLE IF EXISTS `aos_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '0',
  `parent_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories`
--

LOCK TABLES `aos_product_categories` WRITE;
/*!40000 ALTER TABLE `aos_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories_audit`
--

DROP TABLE IF EXISTS `aos_product_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_product_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories_audit`
--

LOCK TABLES `aos_product_categories_audit` WRITE;
/*!40000 ALTER TABLE `aos_product_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products`
--

DROP TABLE IF EXISTS `aos_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products`
--

LOCK TABLES `aos_products` WRITE;
/*!40000 ALTER TABLE `aos_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_audit`
--

DROP TABLE IF EXISTS `aos_products_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_audit`
--

LOCK TABLES `aos_products_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes`
--

DROP TABLE IF EXISTS `aos_products_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes`
--

LOCK TABLES `aos_products_quotes` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes_audit`
--

DROP TABLE IF EXISTS `aos_products_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes_audit`
--

LOCK TABLES `aos_products_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes`
--

DROP TABLE IF EXISTS `aos_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) NOT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes`
--

LOCK TABLES `aos_quotes` WRITE;
/*!40000 ALTER TABLE `aos_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--

DROP TABLE IF EXISTS `aos_quotes_aos_invoices_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_aos_invoices_c`
--

LOCK TABLES `aos_quotes_aos_invoices_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_audit`
--

DROP TABLE IF EXISTS `aos_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_audit`
--

LOCK TABLES `aos_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_os_contracts_c`
--

DROP TABLE IF EXISTS `aos_quotes_os_contracts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_os_contracts_c`
--

LOCK TABLES `aos_quotes_os_contracts_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_project_c`
--

DROP TABLE IF EXISTS `aos_quotes_project_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_project_c`
--

LOCK TABLES `aos_quotes_project_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_project_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_project_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_actions`
--

DROP TABLE IF EXISTS `aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext,
  PRIMARY KEY (`id`),
  KEY `aow_action_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_actions`
--

LOCK TABLES `aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_conditions`
--

DROP TABLE IF EXISTS `aow_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_conditions`
--

LOCK TABLES `aow_conditions` WRITE;
/*!40000 ALTER TABLE `aow_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed`
--

DROP TABLE IF EXISTS `aow_processed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending',
  PRIMARY KEY (`id`),
  KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  KEY `aow_processed_index_status` (`status`),
  KEY `aow_processed_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed`
--

LOCK TABLES `aow_processed` WRITE;
/*!40000 ALTER TABLE `aow_processed` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed_aow_actions`
--

DROP TABLE IF EXISTS `aow_processed_aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed_aow_actions`
--

LOCK TABLES `aow_processed_aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_processed_aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed_aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow`
--

DROP TABLE IF EXISTS `aow_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Create',
  `multiple_runs` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `aow_workflow_index_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow`
--

LOCK TABLES `aow_workflow` WRITE;
/*!40000 ALTER TABLE `aow_workflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow_audit`
--

DROP TABLE IF EXISTS `aow_workflow_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aow_workflow_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow_audit`
--

LOCK TABLES `aow_workflow_audit` WRITE;
/*!40000 ALTER TABLE `aow_workflow_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bugsnumk` (`bug_number`),
  KEY `bug_number` (`bug_number`),
  KEY `idx_bug_name` (`name`),
  KEY `idx_bugs_assigned_user` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs`
--

LOCK TABLES `bugs` WRITE;
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs_audit`
--

DROP TABLE IF EXISTS `bugs_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bugs_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs_audit`
--

LOCK TABLES `bugs_audit` WRITE;
/*!40000 ALTER TABLE `bugs_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls`
--

DROP TABLE IF EXISTS `calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_call_name` (`name`),
  KEY `idx_status` (`status`),
  KEY `idx_calls_date_start` (`date_start`),
  KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls`
--

LOCK TABLES `calls` WRITE;
/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_contacts`
--

DROP TABLE IF EXISTS `calls_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_call_call` (`call_id`),
  KEY `idx_con_call_con` (`contact_id`),
  KEY `idx_call_contact` (`call_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_contacts`
--

LOCK TABLES `calls_contacts` WRITE;
/*!40000 ALTER TABLE `calls_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_leads`
--

DROP TABLE IF EXISTS `calls_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_call_call` (`call_id`),
  KEY `idx_lead_call_lead` (`lead_id`),
  KEY `idx_call_lead` (`call_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_leads`
--

LOCK TABLES `calls_leads` WRITE;
/*!40000 ALTER TABLE `calls_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule`
--

DROP TABLE IF EXISTS `calls_reschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule`
--

LOCK TABLES `calls_reschedule` WRITE;
/*!40000 ALTER TABLE `calls_reschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule_audit`
--

DROP TABLE IF EXISTS `calls_reschedule_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_calls_reschedule_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule_audit`
--

LOCK TABLES `calls_reschedule_audit` WRITE;
/*!40000 ALTER TABLE `calls_reschedule_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_users`
--

DROP TABLE IF EXISTS `calls_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_call_call` (`call_id`),
  KEY `idx_usr_call_usr` (`user_id`),
  KEY `idx_call_users` (`call_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_users`
--

LOCK TABLES `calls_users` WRITE;
/*!40000 ALTER TABLE `calls_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_camp_tracker` (`target_tracker_key`),
  KEY `idx_camp_campaign_id` (`campaign_id`),
  KEY `idx_camp_more_info` (`more_information`),
  KEY `idx_target_id` (`target_id`),
  KEY `idx_target_id_deleted` (`target_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_log`
--

LOCK TABLES `campaign_log` WRITE;
/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_trkrs`
--

DROP TABLE IF EXISTS `campaign_trkrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(30) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `campaign_tracker_key_idx` (`tracker_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_trkrs`
--

LOCK TABLES `campaign_trkrs` WRITE;
/*!40000 ALTER TABLE `campaign_trkrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_trkrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_count` int(11) DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `camp_auto_tracker_key` (`tracker_key`),
  KEY `idx_campaign_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_audit`
--

DROP TABLE IF EXISTS `campaigns_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_campaigns_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_audit`
--

LOCK TABLES `campaigns_audit` WRITE;
/*!40000 ALTER TABLE `campaigns_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `casesnumk` (`case_number`),
  KEY `case_number` (`case_number`),
  KEY `idx_case_name` (`name`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_audit`
--

DROP TABLE IF EXISTS `cases_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_cases_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_audit`
--

LOCK TABLES `cases_audit` WRITE;
/*!40000 ALTER TABLE `cases_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_bugs`
--

DROP TABLE IF EXISTS `cases_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_cas_bug_cas` (`case_id`),
  KEY `idx_cas_bug_bug` (`bug_id`),
  KEY `idx_case_bug` (`case_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_bugs`
--

LOCK TABLES `cases_bugs` WRITE;
/*!40000 ALTER TABLE `cases_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_cstm`
--

DROP TABLE IF EXISTS `cases_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_cstm`
--

LOCK TABLES `cases_cstm` WRITE;
/*!40000 ALTER TABLE `cases_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text,
  KEY `idx_config_cat` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('notify','fromaddress','do_not_reply@example.com'),('notify','fromname','SuiteCRM'),('notify','send_by_default','1'),('notify','on','1'),('notify','send_from_assigning_user','0'),('info','sugar_version','6.5.20'),('MySettings','tab','YTozMzp7aTowO3M6NDoiSG9tZSI7aToxO3M6ODoiQWNjb3VudHMiO2k6MjtzOjg6IkNvbnRhY3RzIjtpOjM7czoxMzoiT3Bwb3J0dW5pdGllcyI7aTo0O3M6NToiTGVhZHMiO2k6NTtzOjEwOiJBT1NfUXVvdGVzIjtpOjY7czo4OiJDYWxlbmRhciI7aTo3O3M6OToiRG9jdW1lbnRzIjtpOjg7czo2OiJFbWFpbHMiO2k6OTtzOjk6IkNhbXBhaWducyI7aToxMDtzOjU6IkNhbGxzIjtpOjExO3M6ODoiTWVldGluZ3MiO2k6MTI7czo1OiJUYXNrcyI7aToxMztzOjU6Ik5vdGVzIjtpOjE0O3M6MTI6IkFPU19JbnZvaWNlcyI7aToxNTtzOjEzOiJBT1NfQ29udHJhY3RzIjtpOjE2O3M6NToiQ2FzZXMiO2k6MTc7czo5OiJQcm9zcGVjdHMiO2k6MTg7czoxMzoiUHJvc3BlY3RMaXN0cyI7aToxOTtzOjc6IlByb2plY3QiO2k6MjA7czoxOToiQU1fUHJvamVjdFRlbXBsYXRlcyI7aToyMTtzOjE2OiJBTV9UYXNrVGVtcGxhdGVzIjtpOjIyO3M6OToiRlBfZXZlbnRzIjtpOjIzO3M6MTg6IkZQX0V2ZW50X0xvY2F0aW9ucyI7aToyNDtzOjEyOiJBT1NfUHJvZHVjdHMiO2k6MjU7czoyMjoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllcyI7aToyNjtzOjE3OiJBT1NfUERGX1RlbXBsYXRlcyI7aToyNztzOjk6Impqd2dfTWFwcyI7aToyODtzOjEyOiJqandnX01hcmtlcnMiO2k6Mjk7czoxMDoiamp3Z19BcmVhcyI7aTozMDtzOjE4OiJqandnX0FkZHJlc3NfQ2FjaGUiO2k6MzE7czoxMToiQU9SX1JlcG9ydHMiO2k6MzI7czoxMjoiQU9XX1dvcmtGbG93Ijt9'),('portal','on','0'),('tracker','Tracker','1'),('system','skypeout_on','1'),('sugarfeed','enabled','1'),('sugarfeed','module_UserFeed','1'),('sugarfeed','module_Cases','1'),('sugarfeed','module_Contacts','1'),('sugarfeed','module_Leads','1'),('sugarfeed','module_Opportunities','1'),('Update','CheckUpdates','manual'),('system','name','SuiteCRM'),('system','adminwizard','1');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  `portal_user_type` varchar(100) DEFAULT 'Single',
  PRIMARY KEY (`id`),
  KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  KEY `idx_reports_to_id` (`reports_to_id`),
  KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  KEY `idx_cont_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_audit`
--

DROP TABLE IF EXISTS `contacts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_contacts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_audit`
--

LOCK TABLES `contacts_audit` WRITE;
/*!40000 ALTER TABLE `contacts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_bugs`
--

DROP TABLE IF EXISTS `contacts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_bug_con` (`contact_id`),
  KEY `idx_con_bug_bug` (`bug_id`),
  KEY `idx_contact_bug` (`contact_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_bugs`
--

LOCK TABLES `contacts_bugs` WRITE;
/*!40000 ALTER TABLE `contacts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cases`
--

DROP TABLE IF EXISTS `contacts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_case_con` (`contact_id`),
  KEY `idx_con_case_case` (`case_id`),
  KEY `idx_contacts_cases` (`contact_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cases`
--

LOCK TABLES `contacts_cases` WRITE;
/*!40000 ALTER TABLE `contacts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cstm`
--

DROP TABLE IF EXISTS `contacts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cstm`
--

LOCK TABLES `contacts_cstm` WRITE;
/*!40000 ALTER TABLE `contacts_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_users`
--

DROP TABLE IF EXISTS `contacts_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_users_con` (`contact_id`),
  KEY `idx_con_users_user` (`user_id`),
  KEY `idx_contacts_users` (`contact_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_users`
--

LOCK TABLES `contacts_users` WRITE;
/*!40000 ALTER TABLE `contacts_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_remove_documents`
--

DROP TABLE IF EXISTS `cron_remove_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  KEY `idx_cron_remove_document_stamp` (`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_remove_documents`
--

LOCK TABLES `cron_remove_documents` WRITE;
/*!40000 ALTER TABLE `cron_remove_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron_remove_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_currency_name` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_beanid_set_num` (`bean_id`,`set_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_revisions`
--

DROP TABLE IF EXISTS `document_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentrevision_mimetype` (`file_mime_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_revisions`
--

LOCK TABLES `document_revisions` WRITE;
/*!40000 ALTER TABLE `document_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_doc_cat` (`category_id`,`subcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_accounts`
--

DROP TABLE IF EXISTS `documents_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  KEY `documents_accounts_document_id` (`document_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_accounts`
--

LOCK TABLES `documents_accounts` WRITE;
/*!40000 ALTER TABLE `documents_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_bugs`
--

DROP TABLE IF EXISTS `documents_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  KEY `documents_bugs_document_id` (`document_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_bugs`
--

LOCK TABLES `documents_bugs` WRITE;
/*!40000 ALTER TABLE `documents_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_cases`
--

DROP TABLE IF EXISTS `documents_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_cases_case_id` (`case_id`,`document_id`),
  KEY `documents_cases_document_id` (`document_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_cases`
--

LOCK TABLES `documents_cases` WRITE;
/*!40000 ALTER TABLE `documents_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_contacts`
--

DROP TABLE IF EXISTS `documents_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  KEY `documents_contacts_document_id` (`document_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_contacts`
--

LOCK TABLES `documents_contacts` WRITE;
/*!40000 ALTER TABLE `documents_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_opportunities`
--

DROP TABLE IF EXISTS `documents_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_opportunities`
--

LOCK TABLES `documents_opportunities` WRITE;
/*!40000 ALTER TABLE `documents_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eapm`
--

DROP TABLE IF EXISTS `eapm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eapm`
--

LOCK TABLES `eapm` WRITE;
/*!40000 ALTER TABLE `eapm` DISABLE KEYS */;
/*!40000 ALTER TABLE `eapm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addr_bean_rel`
--

DROP TABLE IF EXISTS `email_addr_bean_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_email_address_id` (`email_address_id`),
  KEY `idx_bean_id` (`bean_id`,`bean_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addr_bean_rel`
--

LOCK TABLES `email_addr_bean_rel` WRITE;
/*!40000 ALTER TABLE `email_addr_bean_rel` DISABLE KEYS */;
INSERT INTO `email_addr_bean_rel` VALUES ('60580edb-322b-a3be-1771-5509677c0008','6068f4f8-2f80-777e-2402-55096755502d','1','Users',1,0,'2015-03-18 11:52:55','2015-03-18 11:52:55',0);
/*!40000 ALTER TABLE `email_addr_bean_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses`
--

DROP TABLE IF EXISTS `email_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses`
--

LOCK TABLES `email_addresses` WRITE;
/*!40000 ALTER TABLE `email_addresses` DISABLE KEYS */;
INSERT INTO `email_addresses` VALUES ('6068f4f8-2f80-777e-2402-55096755502d','example@org.com','EXAMPLE@ORG.COM',0,0,'2015-03-18 11:52:55','2015-03-18 11:52:55',0);
/*!40000 ALTER TABLE `email_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_cache`
--

DROP TABLE IF EXISTS `email_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) unsigned DEFAULT NULL,
  `imap_uid` int(10) unsigned DEFAULT NULL,
  `msgno` int(10) unsigned DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL,
  KEY `idx_ie_id` (`ie_id`),
  KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  KEY `idx_mail_subj` (`subject`),
  KEY `idx_mail_to` (`toaddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_cache`
--

LOCK TABLES `email_cache` WRITE;
/*!40000 ALTER TABLE `email_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing`
--

DROP TABLE IF EXISTS `email_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emmkt_name` (`name`),
  KEY `idx_emmkit_del` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing`
--

LOCK TABLES `email_marketing` WRITE;
/*!40000 ALTER TABLE `email_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing_prospect_lists`
--

DROP TABLE IF EXISTS `email_marketing_prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing_prospect_lists`
--

LOCK TABLES `email_marketing_prospect_lists` WRITE;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `body_html` text,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_template_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES ('54d30800-d41f-216a-8fe5-5509661dfd74','2015-03-18 11:48:13','2015-03-18 11:48:13','1','1','off','Contact Case Update','Template to send to a contact when their case is updated.','$acase_name update [CASE:$acase_case_number]','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description','<p>Hi $contact_first_name $contact_last_name,</p>\n					    <p> </p>\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>',0,NULL,NULL,NULL),('5d41fe08-d4ed-9405-062f-55096635c4b6','2013-05-24 14:31:45','2015-03-18 11:48:13','1','1','off','Event Invite Template','Default event invite template.','You have been invited to $fp_events_name','Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n','\n<p>Dear $contact_name,</p>\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\n<p>$fp_events_description</p>\n<p>If you would like to accept this invititation please click accept.</p>\n<p> $fp_events_link or $fp_events_link_declined</p>\n<p>Yours Sincerely,</p>\n',0,NULL,NULL,'email'),('98ed0226-946b-457f-f753-55096696e11c','2015-03-18 11:48:13','2015-03-18 11:48:13','1','1','off','User Case Update','Email template to send to a Sugar user when their case is updated.','$acase_name (# $acase_case_number) update','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description\n                        You may review this Case at:\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;','<p>Hi $user_first_name $user_last_name,</p>\n					   <p> </p>\n					   <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					   <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\n					   <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\n					   <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>\n					   ',0,NULL,NULL,NULL),('a9f912b1-7699-1445-1eab-550966eeacc4','2015-03-18 11:48:13','2015-03-18 11:48:13','1','1','off','System-generated password email','This template is used when the System Administrator sends a new password to a user.','New account information','\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,NULL),('ada00900-f559-15e9-7f13-550966c50b7a','2015-03-18 11:48:13','2015-03-18 11:48:13','1','1','off','Forgot Password email','This template is used to send a user a link to click to reset the user\'s account password.','Reset your account password','\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid','<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,NULL),('ec10d56a-6dc7-1833-c6a3-5509661c8f62','2015-03-18 11:48:13','2015-03-18 11:48:13','1','1','off','Case Closure','Template for informing a contact that their case has been closed.','$acase_name [CASE:$acase_case_number] closed','Hi $contact_first_name $contact_last_name,\n\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\n					   Status:				$acase_status\n					   Reference:			$acase_case_number\n					   Resolution:			$acase_resolution','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Resolution</td><td>$acase_resolution</td></tr></tbody></table>',0,NULL,NULL,NULL),('ef0f7037-7945-1ce2-cdc4-55096647a18c','2015-03-18 11:48:13','2015-03-18 11:48:13','1','1','off','Joomla Account Creation','Template used when informing a contact that they\'ve been given an account on the joomla portal.','Support Portal Account Created','Hi $contact_name,\n					   An account has been created for you at $portal_address.\n					   You may login using this email address and the password $joomla_pass','<p>Hi $contact_name,</p>\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\n					    <p>You may login using this email address and the password $joomla_pass</p>',0,NULL,NULL,NULL),('f25d339f-e48a-356a-486f-55096662d79b','2015-03-18 11:48:13','2015-03-18 11:48:13','1','1','off','Case Creation','Template to send to a contact when a case is received from them.','$acase_name [CASE:$acase_case_number]','Hi $contact_first_name $contact_last_name,\n\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\n					   Status:		$acase_status\n					   Reference:	$acase_case_number\n					   Description:	$acase_description','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Description</td><td>$acase_description</td></tr></tbody></table>',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailman`
--

DROP TABLE IF EXISTS `emailman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  KEY `idx_eman_campaign_id` (`campaign_id`),
  KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailman`
--

LOCK TABLES `emailman` WRITE;
/*!40000 ALTER TABLE `emailman` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_name` (`name`),
  KEY `idx_message_id` (`message_id`),
  KEY `idx_email_parent_id` (`parent_id`),
  KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_beans`
--

DROP TABLE IF EXISTS `emails_beans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emails_beans_bean_id` (`bean_id`),
  KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_beans`
--

LOCK TABLES `emails_beans` WRITE;
/*!40000 ALTER TABLE `emails_beans` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_beans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_email_addr_rel`
--

DROP TABLE IF EXISTS `emails_email_addr_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  KEY `idx_eearl_address_id` (`email_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_email_addr_rel`
--

LOCK TABLES `emails_email_addr_rel` WRITE;
/*!40000 ALTER TABLE `emails_email_addr_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_email_addr_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_text`
--

DROP TABLE IF EXISTS `emails_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`email_id`),
  KEY `emails_textfromaddr` (`from_addr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_text`
--

LOCK TABLES `emails_text` WRITE;
/*!40000 ALTER TABLE `emails_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields_meta_data`
--

DROP TABLE IF EXISTS `fields_meta_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint(6) DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text,
  PRIMARY KEY (`id`),
  KEY `idx_meta_id_del` (`id`,`deleted`),
  KEY `idx_meta_cm_del` (`custom_module`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields_meta_data`
--

LOCK TABLES `fields_meta_data` WRITE;
/*!40000 ALTER TABLE `fields_meta_data` DISABLE KEYS */;
INSERT INTO `fields_meta_data` VALUES ('Accountsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Accounts','varchar',255,0,NULL,'2015-03-18 11:48:13',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Accounts','varchar',255,0,NULL,'2015-03-18 11:48:13',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Accounts','float',10,0,'0.00000000','2015-03-18 11:48:13',0,0,0,0,1,'true','8','','',''),('Accountsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Accounts','float',11,0,'0.00000000','2015-03-18 11:48:13',0,0,0,0,1,'true','8','','',''),('Casesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Cases','varchar',255,0,NULL,'2015-03-18 11:48:13',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Cases','varchar',255,0,NULL,'2015-03-18 11:48:13',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Cases','float',10,0,'0.00000000','2015-03-18 11:48:13',0,0,0,0,1,'true','8','','',''),('Casesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Cases','float',11,0,'0.00000000','2015-03-18 11:48:13',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Contacts','varchar',255,0,NULL,'2015-03-18 11:48:13',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Contacts','varchar',255,0,NULL,'2015-03-18 11:48:13',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Contacts','float',10,0,'0.00000000','2015-03-18 11:48:13',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Contacts','float',11,0,'0.00000000','2015-03-18 11:48:13',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Leads','varchar',255,0,NULL,'2015-03-18 11:48:13',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Leads','varchar',255,0,NULL,'2015-03-18 11:48:13',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Leads','float',10,0,'0.00000000','2015-03-18 11:48:13',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Leads','float',11,0,'0.00000000','2015-03-18 11:48:13',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Meetings','varchar',255,0,NULL,'2015-03-18 11:48:13',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Meetings','varchar',255,0,NULL,'2015-03-18 11:48:13',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Meetings','float',10,0,'0.00000000','2015-03-18 11:48:13',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Meetings','float',11,0,'0.00000000','2015-03-18 11:48:13',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Opportunities','varchar',255,0,NULL,'2015-03-18 11:48:13',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Opportunities','varchar',255,0,NULL,'2015-03-18 11:48:13',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Opportunities','float',10,0,'0.00000000','2015-03-18 11:48:13',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Opportunities','float',11,0,'0.00000000','2015-03-18 11:48:13',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Project','varchar',255,0,NULL,'2015-03-18 11:48:13',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Project','varchar',255,0,NULL,'2015-03-18 11:48:13',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Project','float',10,0,'0.00000000','2015-03-18 11:48:13',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Project','float',11,0,'0.00000000','2015-03-18 11:48:13',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Prospects','varchar',255,0,NULL,'2015-03-18 11:48:13',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Prospects','varchar',255,0,NULL,'2015-03-18 11:48:13',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Prospects','float',10,0,'0.00000000','2015-03-18 11:48:13',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Prospects','float',11,0,'0.00000000','2015-03-18 11:48:13',0,0,0,0,1,'true','8','','','');
/*!40000 ALTER TABLE `fields_meta_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_folder` (`parent_folder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders`
--

LOCK TABLES `folders` WRITE;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_rel`
--

DROP TABLE IF EXISTS `folders_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_rel`
--

LOCK TABLES `folders_rel` WRITE;
/*!40000 ALTER TABLE `folders_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_subscriptions`
--

DROP TABLE IF EXISTS `folders_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_subscriptions`
--

LOCK TABLES `folders_subscriptions` WRITE;
/*!40000 ALTER TABLE `folders_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations`
--

DROP TABLE IF EXISTS `fp_event_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations`
--

LOCK TABLES `fp_event_locations` WRITE;
/*!40000 ALTER TABLE `fp_event_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_audit`
--

DROP TABLE IF EXISTS `fp_event_locations_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_event_locations_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_audit`
--

LOCK TABLES `fp_event_locations_audit` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--

DROP TABLE IF EXISTS `fp_event_locations_fp_events_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_fp_events_1_c`
--

LOCK TABLES `fp_event_locations_fp_events_1_c` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events`
--

DROP TABLE IF EXISTS `fp_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events`
--

LOCK TABLES `fp_events` WRITE;
/*!40000 ALTER TABLE `fp_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_audit`
--

DROP TABLE IF EXISTS `fp_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_audit`
--

LOCK TABLES `fp_events_audit` WRITE;
/*!40000 ALTER TABLE `fp_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_contacts_c`
--

DROP TABLE IF EXISTS `fp_events_contacts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_contacts_c`
--

LOCK TABLES `fp_events_contacts_c` WRITE;
/*!40000 ALTER TABLE `fp_events_contacts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_contacts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_delegates_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_delegates_1_c`
--

LOCK TABLES `fp_events_fp_event_delegates_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_locations_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_locations_1_c`
--

LOCK TABLES `fp_events_fp_event_locations_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_leads_1_c`
--

DROP TABLE IF EXISTS `fp_events_leads_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_leads_1_c`
--

LOCK TABLES `fp_events_leads_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_leads_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_leads_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_prospects_1_c`
--

DROP TABLE IF EXISTS `fp_events_prospects_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_prospects_1_c`
--

LOCK TABLES `fp_events_prospects_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_maps`
--

DROP TABLE IF EXISTS `import_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_maps`
--

LOCK TABLES `import_maps` WRITE;
/*!40000 ALTER TABLE `import_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email`
--

DROP TABLE IF EXISTS `inbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email`
--

LOCK TABLES `inbound_email` WRITE;
/*!40000 ALTER TABLE `inbound_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_autoreply`
--

DROP TABLE IF EXISTS `inbound_email_autoreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ie_autoreplied_to` (`autoreplied_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_autoreply`
--

LOCK TABLES `inbound_email_autoreply` WRITE;
/*!40000 ALTER TABLE `inbound_email_autoreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_autoreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_cache_ts`
--

DROP TABLE IF EXISTS `inbound_email_cache_ts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_cache_ts`
--

LOCK TABLES `inbound_email_cache_ts` WRITE;
/*!40000 ALTER TABLE `inbound_email_cache_ts` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_cache_ts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache`
--

DROP TABLE IF EXISTS `jjwg_address_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(26,8) DEFAULT NULL,
  `lng` float(26,8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache`
--

LOCK TABLES `jjwg_address_cache` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache_audit`
--

DROP TABLE IF EXISTS `jjwg_address_cache_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_address_cache_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache_audit`
--

LOCK TABLES `jjwg_address_cache_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas`
--

DROP TABLE IF EXISTS `jjwg_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas`
--

LOCK TABLES `jjwg_areas` WRITE;
/*!40000 ALTER TABLE `jjwg_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas_audit`
--

DROP TABLE IF EXISTS `jjwg_areas_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_areas_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas_audit`
--

LOCK TABLES `jjwg_areas_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_areas_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps`
--

DROP TABLE IF EXISTS `jjwg_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(26,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps`
--

LOCK TABLES `jjwg_maps` WRITE;
/*!40000 ALTER TABLE `jjwg_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_audit`
--

DROP TABLE IF EXISTS `jjwg_maps_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_maps_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_audit`
--

LOCK TABLES `jjwg_maps_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_areas_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_areas_c`
--

LOCK TABLES `jjwg_maps_jjwg_areas_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_markers_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_markers_c`
--

LOCK TABLES `jjwg_maps_jjwg_markers_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers`
--

DROP TABLE IF EXISTS `jjwg_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(26,8) DEFAULT '0.00000000',
  `jjwg_maps_lng` float(26,8) DEFAULT '0.00000000',
  `marker_image` varchar(100) DEFAULT 'company',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers`
--

LOCK TABLES `jjwg_markers` WRITE;
/*!40000 ALTER TABLE `jjwg_markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers_audit`
--

DROP TABLE IF EXISTS `jjwg_markers_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_markers_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers_audit`
--

LOCK TABLES `jjwg_markers_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_markers_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_queue`
--

DROP TABLE IF EXISTS `job_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  KEY `idx_status_entered` (`status`,`date_entered`),
  KEY `idx_status_modified` (`status`,`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_queue`
--

LOCK TABLES `job_queue` WRITE;
/*!40000 ALTER TABLE `job_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  KEY `idx_lead_assigned` (`assigned_user_id`),
  KEY `idx_lead_contact` (`contact_id`),
  KEY `idx_reports_to` (`reports_to_id`),
  KEY `idx_lead_phone_work` (`phone_work`),
  KEY `idx_leads_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_audit`
--

DROP TABLE IF EXISTS `leads_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_leads_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_audit`
--

LOCK TABLES `leads_audit` WRITE;
/*!40000 ALTER TABLE `leads_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_cstm`
--

DROP TABLE IF EXISTS `leads_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_cstm`
--

LOCK TABLES `leads_cstm` WRITE;
/*!40000 ALTER TABLE `leads_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linked_documents`
--

DROP TABLE IF EXISTS `linked_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linked_documents`
--

LOCK TABLES `linked_documents` WRITE;
/*!40000 ALTER TABLE `linked_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `linked_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mtg_name` (`name`),
  KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  KEY `idx_meet_date_start` (`date_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings`
--

LOCK TABLES `meetings` WRITE;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_contacts`
--

DROP TABLE IF EXISTS `meetings_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_mtg_mtg` (`meeting_id`),
  KEY `idx_con_mtg_con` (`contact_id`),
  KEY `idx_meeting_contact` (`meeting_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_contacts`
--

LOCK TABLES `meetings_contacts` WRITE;
/*!40000 ALTER TABLE `meetings_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_cstm`
--

DROP TABLE IF EXISTS `meetings_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_cstm`
--

LOCK TABLES `meetings_cstm` WRITE;
/*!40000 ALTER TABLE `meetings_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_leads`
--

DROP TABLE IF EXISTS `meetings_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_meeting_meeting` (`meeting_id`),
  KEY `idx_lead_meeting_lead` (`lead_id`),
  KEY `idx_meeting_lead` (`meeting_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_leads`
--

LOCK TABLES `meetings_leads` WRITE;
/*!40000 ALTER TABLE `meetings_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_users`
--

DROP TABLE IF EXISTS `meetings_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_mtg_mtg` (`meeting_id`),
  KEY `idx_usr_mtg_usr` (`user_id`),
  KEY `idx_meeting_users` (`meeting_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_users`
--

LOCK TABLES `meetings_users` WRITE;
/*!40000 ALTER TABLE `meetings_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_note_name` (`name`),
  KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  KEY `idx_note_contact` (`contact_id`),
  KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_consumer`
--

DROP TABLE IF EXISTS `oauth_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ckey` (`c_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_consumer`
--

LOCK TABLES `oauth_consumer` WRITE;
/*!40000 ALTER TABLE `oauth_consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_nonce`
--

DROP TABLE IF EXISTS `oauth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`conskey`,`nonce`),
  KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_nonce`
--

LOCK TABLES `oauth_nonce` WRITE;
/*!40000 ALTER TABLE `oauth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_tokens`
--

DROP TABLE IF EXISTS `oauth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`,`deleted`),
  KEY `oauth_state_ts` (`tstate`,`token_ts`),
  KEY `constoken_key` (`consumer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_tokens`
--

LOCK TABLES `oauth_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities`
--

DROP TABLE IF EXISTS `opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opp_name` (`name`),
  KEY `idx_opp_assigned` (`assigned_user_id`),
  KEY `idx_opp_id_deleted` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities`
--

LOCK TABLES `opportunities` WRITE;
/*!40000 ALTER TABLE `opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_audit`
--

DROP TABLE IF EXISTS `opportunities_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_opportunities_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_audit`
--

LOCK TABLES `opportunities_audit` WRITE;
/*!40000 ALTER TABLE `opportunities_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_contacts`
--

DROP TABLE IF EXISTS `opportunities_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_opp_con` (`contact_id`),
  KEY `idx_con_opp_opp` (`opportunity_id`),
  KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_contacts`
--

LOCK TABLES `opportunities_contacts` WRITE;
/*!40000 ALTER TABLE `opportunities_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_cstm`
--

DROP TABLE IF EXISTS `opportunities_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_cstm`
--

LOCK TABLES `opportunities_cstm` WRITE;
/*!40000 ALTER TABLE `opportunities_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email`
--

DROP TABLE IF EXISTS `outbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` int(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `oe_user_id_idx` (`id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email`
--

LOCK TABLES `outbound_email` WRITE;
/*!40000 ALTER TABLE `outbound_email` DISABLE KEYS */;
INSERT INTO `outbound_email` VALUES ('43f39a7c-4627-efc1-9686-550966c24969','system','system','1','SMTP','other','',25,'','',1,0);
/*!40000 ALTER TABLE `outbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_contacts_1_c`
--

DROP TABLE IF EXISTS `project_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_contacts_1_c`
--

LOCK TABLES `project_contacts_1_c` WRITE;
/*!40000 ALTER TABLE `project_contacts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_contacts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_cstm`
--

DROP TABLE IF EXISTS `project_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_cstm`
--

LOCK TABLES `project_cstm` WRITE;
/*!40000 ALTER TABLE `project_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task`
--

DROP TABLE IF EXISTS `project_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `relationship_type` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int(11) DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task`
--

LOCK TABLES `project_task` WRITE;
/*!40000 ALTER TABLE `project_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task_audit`
--

DROP TABLE IF EXISTS `project_task_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_project_task_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task_audit`
--

LOCK TABLES `project_task_audit` WRITE;
/*!40000 ALTER TABLE `project_task_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_users_1_c`
--

DROP TABLE IF EXISTS `project_users_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_users_1_c`
--

LOCK TABLES `project_users_1_c` WRITE;
/*!40000 ALTER TABLE `project_users_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_users_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_accounts`
--

DROP TABLE IF EXISTS `projects_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_acct_proj` (`project_id`),
  KEY `idx_proj_acct_acct` (`account_id`),
  KEY `projects_accounts_alt` (`project_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_accounts`
--

LOCK TABLES `projects_accounts` WRITE;
/*!40000 ALTER TABLE `projects_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_bugs`
--

DROP TABLE IF EXISTS `projects_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_bug_proj` (`project_id`),
  KEY `idx_proj_bug_bug` (`bug_id`),
  KEY `projects_bugs_alt` (`project_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_bugs`
--

LOCK TABLES `projects_bugs` WRITE;
/*!40000 ALTER TABLE `projects_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_cases`
--

DROP TABLE IF EXISTS `projects_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_case_proj` (`project_id`),
  KEY `idx_proj_case_case` (`case_id`),
  KEY `projects_cases_alt` (`project_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_cases`
--

LOCK TABLES `projects_cases` WRITE;
/*!40000 ALTER TABLE `projects_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_contacts`
--

DROP TABLE IF EXISTS `projects_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_con_proj` (`project_id`),
  KEY `idx_proj_con_con` (`contact_id`),
  KEY `projects_contacts_alt` (`project_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_contacts`
--

LOCK TABLES `projects_contacts` WRITE;
/*!40000 ALTER TABLE `projects_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_opportunities`
--

DROP TABLE IF EXISTS `projects_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_opp_proj` (`project_id`),
  KEY `idx_proj_opp_opp` (`opportunity_id`),
  KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_opportunities`
--

LOCK TABLES `projects_opportunities` WRITE;
/*!40000 ALTER TABLE `projects_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_products`
--

DROP TABLE IF EXISTS `projects_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_prod_project` (`project_id`),
  KEY `idx_proj_prod_product` (`product_id`),
  KEY `projects_products_alt` (`project_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_products`
--

LOCK TABLES `projects_products` WRITE;
/*!40000 ALTER TABLE `projects_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_list_campaigns`
--

DROP TABLE IF EXISTS `prospect_list_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_pro_id` (`prospect_list_id`),
  KEY `idx_cam_id` (`campaign_id`),
  KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_list_campaigns`
--

LOCK TABLES `prospect_list_campaigns` WRITE;
/*!40000 ALTER TABLE `prospect_list_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_list_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists`
--

DROP TABLE IF EXISTS `prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_prospect_list_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists`
--

LOCK TABLES `prospect_lists` WRITE;
/*!40000 ALTER TABLE `prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists_prospects`
--

DROP TABLE IF EXISTS `prospect_lists_prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_plp_pro_id` (`prospect_list_id`),
  KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists_prospects`
--

LOCK TABLES `prospect_lists_prospects` WRITE;
/*!40000 ALTER TABLE `prospect_lists_prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists_prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects`
--

DROP TABLE IF EXISTS `prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_auto_tracker_key` (`tracker_key`),
  KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  KEY `idx_prospects_id_del` (`id`,`deleted`),
  KEY `idx_prospects_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects`
--

LOCK TABLES `prospects` WRITE;
/*!40000 ALTER TABLE `prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects_cstm`
--

DROP TABLE IF EXISTS `prospects_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects_cstm`
--

LOCK TABLES `prospects_cstm` WRITE;
/*!40000 ALTER TABLE `prospects_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_rel_name` (`relationship_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationships`
--

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
INSERT INTO `relationships` VALUES ('10798f09-f60f-0934-2220-5509669dff4e','aos_product_categories_modified_user','Users','users','id','AOS_Product_Categories','aos_product_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('10cf80cc-7f10-fa36-7bb3-55096691246d','aos_product_categories_created_by','Users','users','id','AOS_Product_Categories','aos_product_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1175f384-2f5b-481c-7b09-550966f7963d','aos_product_categories_assigned_user','Users','users','id','AOS_Product_Categories','aos_product_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('11beef6f-ebce-7048-d7d9-55096638f62e','sub_product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Product_Categories','aos_product_categories','parent_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('12c50d36-c528-efdb-5561-55096675d2dc','securitygroups_acl_roles','SecurityGroups','securitygroups','id','ACLRoles','acl_roles','id','securitygroups_acl_roles','securitygroup_id','role_id','many-to-many',NULL,NULL,0,0),('16194a40-f41a-41a8-3c8b-5509665a1a8f','aos_products_modified_user','Users','users','id','AOS_Products','aos_products','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('16879daf-3c6b-8db8-2eb7-55096645c55d','aos_products_created_by','Users','users','id','AOS_Products','aos_products','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('16a6011b-47af-379d-ef2f-550966af627a','securitygroups_users','SecurityGroups','securitygroups','id','Users','users','id','securitygroups_users','securitygroup_id','user_id','many-to-many',NULL,NULL,0,0),('16bb62db-e4cb-9e2f-5ec4-5509661dfa5e','aos_products_assigned_user','Users','users','id','AOS_Products','aos_products','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('17071add-e7f7-7de2-e346-550966113bf0','product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Products','aos_products','aos_product_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1a690130-e2c8-476d-4bb5-550966ce78e3','fp_events_prospects_1','FP_events','fp_events','id','Prospects','prospects','id','fp_events_prospects_1_c','fp_events_prospects_1fp_events_ida','fp_events_prospects_1prospects_idb','many-to-many',NULL,NULL,0,0),('1aa37fa4-087a-03ef-2345-55096669b2f2','aos_products_quotes_modified_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1ae1fefa-54ed-4a28-2f40-55096644f542','aos_products_quotes_created_by','Users','users','id','AOS_Products_Quotes','aos_products_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1b054c2a-a7cf-c63a-565b-550966090cb7','aos_products_quotes_assigned_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1b2ecb10-76cf-e1b8-804d-550966351857','aos_product_quotes_aos_products','AOS_Products','aos_products','id','AOS_Products_Quotes','aos_products_quotes','product_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1d9709b6-acaa-17eb-53a8-55096617c9f6','aos_quotes_aos_contracts','AOS_Quotes','aos_quotes','id','AOS_Contracts','aos_contracts','id','aos_quotes_os_contracts_c','aos_quotese81e_quotes_ida','aos_quotes4dc0ntracts_idb','many-to-many',NULL,NULL,0,0),('1fc12fdb-0381-282f-1bd5-550966161d07','aos_line_item_groups_modified_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2010f127-4651-6565-adf0-550966c2f36c','aos_line_item_groups_created_by','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('20390a77-d435-eb64-91cf-5509660ff90c','jjwg_maps_jjwg_areas','jjwg_Maps','jjwg_maps','id','jjwg_Areas','jjwg_areas','id','jjwg_maps_jjwg_areas_c','jjwg_maps_5304wg_maps_ida','jjwg_maps_41f2g_areas_idb','many-to-many',NULL,NULL,0,0),('205d70ce-0e48-d1b6-5bed-550966ab455b','aos_line_item_groups_assigned_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('20b0f90b-4842-32ad-89e3-5509660a1a61','groups_aos_product_quotes','AOS_Line_Item_Groups','aos_line_item_groups','id','AOS_Products_Quotes','aos_products_quotes','group_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('237005e5-2c35-4623-2932-55096627139c','fp_events_leads_1','FP_events','fp_events','id','Leads','leads','id','fp_events_leads_1_c','fp_events_leads_1fp_events_ida','fp_events_leads_1leads_idb','many-to-many',NULL,NULL,0,0),('25cec14b-6a6e-549d-d454-5509667b2c79','aos_quotes_modified_user','Users','users','id','AOS_Quotes','aos_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('262a4950-77b7-2d74-2915-55096627f873','aos_quotes_created_by','Users','users','id','AOS_Quotes','aos_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('264f4a7d-b2d9-9399-a8d7-5509660cb633','aos_quotes_assigned_user','Users','users','id','AOS_Quotes','aos_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('26c0bd5a-d98c-4246-084e-5509660d2491','aos_quotes_aos_product_quotes','AOS_Quotes','aos_quotes','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2706ebf3-f431-437c-ed77-550966b86af0','aos_quotes_aos_line_item_groups','AOS_Quotes','aos_quotes','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('27e96a41-6f6b-fea6-8772-55096625d48c','leads_modified_user','Users','users','id','Leads','leads','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2873e3b4-a38e-d811-b4d3-550966fc71f1','leads_created_by','Users','users','id','Leads','leads','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('28bf4125-0f17-9646-614d-55096606c713','leads_assigned_user','Users','users','id','Leads','leads','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('28e6ae98-eff3-5f50-1c90-5509667cbc07','leads_email_addresses','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Leads',0,0),('2917bba0-d06a-fbbe-e980-55096699dd13','leads_email_addresses_primary','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('29425a9e-f911-ff06-cb58-550966067ad3','lead_direct_reports','Leads','leads','id','Leads','leads','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('29600888-2ac7-6e9c-f79e-550966ff5504','aos_quotes_project','AOS_Quotes','aos_quotes','id','Project','project','id','aos_quotes_project_c','aos_quotes1112_quotes_ida','aos_quotes7207project_idb','many-to-many',NULL,NULL,0,0),('29a2e2e8-db92-460f-4994-550966587a0d','lead_tasks','Leads','leads','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('29ab6a69-b59c-cf83-32af-5509667d8bde','aow_actions_modified_user','Users','users','id','AOW_Actions','aow_actions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('29dfde46-e5cc-196d-dcea-5509662654c2','lead_notes','Leads','leads','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('2a00f900-1f19-3b04-f058-5509660e0e30','aow_actions_created_by','Users','users','id','AOW_Actions','aow_actions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2a08d9e7-6b29-6e0c-0f32-5509660fe08c','lead_meetings','Leads','leads','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('2a665644-3fbb-560a-a26c-550966c8be05','lead_calls','Leads','leads','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('2ab5ed15-35e4-d9fe-10de-5509663338e9','lead_emails','Leads','leads','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('2ae1db16-60f1-cb2c-4f4c-5509664df64a','lead_campaign_log','Leads','leads','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Leads',0,0),('2c1c072e-3b22-5ca4-c25b-550966595dd6','project_users_1','Project','project','id','Users','users','id','project_users_1_c','project_users_1project_ida','project_users_1users_idb','many-to-many',NULL,NULL,0,0),('2dced1dd-9fb4-197b-2420-5509664da5b0','aow_workflow_modified_user','Users','users','id','AOW_WorkFlow','aow_workflow','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2e387664-6255-66db-c0a4-55096628e218','aow_workflow_created_by','Users','users','id','AOW_WorkFlow','aow_workflow','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2e8b0d51-e1f3-55ff-eb77-550966220664','am_projectholidays_project','Project','project','id','AM_ProjectHolidays','am_projectholidays','id','am_projectholidays_project_c','am_projectholidays_projectproject_ida','am_projectholidays_projectam_projectholidays_idb','many-to-many',NULL,NULL,0,0),('2e8f9fc2-5a7d-5fc6-e161-55096679ff28','aow_workflow_assigned_user','Users','users','id','AOW_WorkFlow','aow_workflow','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2eb8ecd0-d8fe-8e8c-d816-550966e5444e','aow_workflow_aow_conditions','AOW_WorkFlow','aow_workflow','id','AOW_Conditions','aow_conditions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2ee15451-aae3-0333-31b2-550966eb82d2','aow_workflow_aow_actions','AOW_WorkFlow','aow_workflow','id','AOW_Actions','aow_actions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2f16cad7-388e-fa1e-647e-55096611cf0e','aow_workflow_aow_processed','AOW_WorkFlow','aow_workflow','id','AOW_Processed','aow_processed','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('308285d6-58e5-c945-24b0-550966c57192','cases_modified_user','Users','users','id','Cases','cases','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('30bf075d-bcce-5637-d228-550966aa477f','fp_events_fp_event_locations_1','FP_events','fp_events','id','FP_Event_Locations','fp_event_locations','id','fp_events_fp_event_locations_1_c','fp_events_fp_event_locations_1fp_events_ida','fp_events_fp_event_locations_1fp_event_locations_idb','many-to-many',NULL,NULL,0,0),('30cbecad-385c-1a11-e59d-550966378004','cases_created_by','Users','users','id','Cases','cases','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('30f2759c-ba05-99ad-bd58-550966647a3e','cases_assigned_user','Users','users','id','Cases','cases','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3113b5bd-63a8-bf80-3ff3-5509666d9dc3','case_calls','Cases','cases','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('316c243e-bcb3-11d3-c3bd-5509666b84ad','case_tasks','Cases','cases','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('31a93c4e-0c6b-491b-806e-5509666f33d7','case_notes','Cases','cases','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('31d11057-76d0-c96b-2fcc-550966ba94ba','case_meetings','Cases','cases','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('31dfc920-deb2-3c14-fc9a-55096692b596','aow_processed_modified_user','Users','users','id','AOW_Processed','aow_processed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('31f1ded6-1941-bbc3-5683-550966e7c869','case_emails','Cases','cases','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('321d67c7-4acc-8f3f-33b3-5509669cc4c2','cases_created_contact','Contacts','contacts','id','Cases','cases','contact_created_by_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('32400fcd-04da-50fc-5b98-5509668d28a6','aos_contracts_documents','AOS_Contracts','aos_contracts','id','Documents','documents','id','aos_contracts_documents','aos_contracts_id','documents_id','many-to-many',NULL,NULL,0,0),('3240fb91-4982-52c7-7dab-550966f8b505','aow_processed_created_by','Users','users','id','AOW_Processed','aow_processed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('32aa0685-4f63-8780-1909-550966eafb32','aos_quotes_aos_invoices','AOS_Quotes','aos_quotes','id','AOS_Invoices','aos_invoices','id','aos_quotes_aos_invoices_c','aos_quotes77d9_quotes_ida','aos_quotes6b83nvoices_idb','many-to-many',NULL,NULL,0,0),('345867b6-f7dc-a35d-452d-550966177f6b','aow_conditions_modified_user','Users','users','id','AOW_Conditions','aow_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('34c015fe-45b3-340b-ca36-55096696dc56','aow_conditions_created_by','Users','users','id','AOW_Conditions','aow_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3724e5de-942b-6cc7-665c-5509665f92df','bugs_modified_user','Users','users','id','Bugs','bugs','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('373b0f94-d471-c85d-4f7a-550966dc459d','am_projecttemplates_project_1','AM_ProjectTemplates','am_projecttemplates','id','Project','project','id','am_projecttemplates_project_1_c','am_projecttemplates_project_1am_projecttemplates_ida','am_projecttemplates_project_1project_idb','many-to-many',NULL,NULL,0,0),('377238b6-e98d-3b9c-5fa1-5509665ffdc2','bugs_created_by','Users','users','id','Bugs','bugs','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('379a4ec7-6830-d9ec-e094-550966e36c71','bugs_assigned_user','Users','users','id','Bugs','bugs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('37c30002-2c69-9a9f-fd86-550966091705','bug_tasks','Bugs','bugs','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('3801db79-b80a-9b53-dd3a-55096626cf64','bug_meetings','Bugs','bugs','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('38791dc6-16e8-54da-d976-550966667eba','am_projecttemplates_modified_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3879965c-df22-e94d-76a8-550966b6425e','bug_calls','Bugs','bugs','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('38a7780b-37c1-431e-b0b4-5509667fd444','bug_emails','Bugs','bugs','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('38d1c1d9-f7e1-61d7-236d-5509661ee28a','bug_notes','Bugs','bugs','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('38d2e142-d768-7b1f-9fce-5509663eea84','am_projecttemplates_created_by','Users','users','id','AM_ProjectTemplates','am_projecttemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('38e6f9f2-ee0b-5584-65c8-55096655bb31','bugs_release','Releases','releases','id','Bugs','bugs','found_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3918596b-58aa-f39e-c42a-550966481e93','am_projecttemplates_assigned_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3932c0eb-d497-4e68-e471-5509665a95c7','bugs_fixed_in_release','Releases','releases','id','Bugs','bugs','fixed_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3b270e8a-9f09-a2d0-f2a4-550966c4ffa3','user_direct_reports','Users','users','id','Users','users','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3b79a2c0-14d9-ba80-9980-5509667afcb6','users_email_addresses','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Users',0,0),('3becdc41-404e-2a4c-9359-55096653ba20','users_email_addresses_primary','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('3d586c51-c404-4398-1912-55096666ced1','campaignlog_contact','CampaignLog','campaign_log','related_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3d5bd680-e4fe-68f8-521a-550966c4b59e','am_tasktemplates_modified_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3da16681-f581-fa6c-2845-5509665f14e4','campaignlog_lead','CampaignLog','campaign_log','related_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3db488b2-bce3-c18a-8c1a-550966c67fb4','am_tasktemplates_created_by','Users','users','id','AM_TaskTemplates','am_tasktemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3dd3e419-03e8-267b-d0dd-550966c32e42','campaignlog_created_opportunities','CampaignLog','campaign_log','related_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3e0850bc-0d08-ddbe-e550-5509662ac523','am_tasktemplates_assigned_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3e3ac9fc-dd04-1218-11aa-5509663e78d8','campaignlog_targeted_users','CampaignLog','campaign_log','target_id','Users','users','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3e7825cb-a655-24a7-bb46-550966388e6a','campaignlog_sent_emails','CampaignLog','campaign_log','related_id','Emails','emails','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('406c58d0-9ba0-a432-62e6-55096602941d','projects_notes','Project','project','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('40bea2ae-0625-eca8-7910-550966ab4e44','projects_tasks','Project','project','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('41092edb-c36f-7059-9ccd-5509661258f3','projects_meetings','Project','project','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('4135d336-9378-c0a1-a370-550966598fa9','projects_calls','Project','project','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('41606eba-295b-fb6a-eef2-550966e45962','projects_emails','Project','project','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('418e5959-4301-2698-4a1e-55096655e16c','projects_project_tasks','Project','project','id','ProjectTask','project_task','project_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('41f2ee0b-4158-96a6-8108-55096630b5b2','projects_assigned_user','Users','users','id','Project','project','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('421e32af-7ebd-fc74-96e2-55096677cea1','projects_modified_user','Users','users','id','Project','project','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4251acb7-5143-634e-bda7-55096696c869','projects_created_by','Users','users','id','Project','project','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('42622e54-dfa6-b515-4ff1-5509661bca5e','am_projectholidays_modified_user','Users','users','id','AM_ProjectHolidays','am_projectholidays','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('42d5e3e9-0f7b-fadf-7bd0-5509661d1963','am_projectholidays_created_by','Users','users','id','AM_ProjectHolidays','am_projectholidays','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('43355cbd-98aa-42aa-2d45-550966312f1f','am_projectholidays_assigned_user','Users','users','id','AM_ProjectHolidays','am_projectholidays','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('44837629-aec9-084f-67ff-550966d28e88','project_tasks_notes','ProjectTask','project_task','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('44ef1139-4732-9d06-ee70-550966071a71','project_tasks_tasks','ProjectTask','project_task','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('453787e5-18bd-1cf1-1e34-550966a047d2','project_tasks_meetings','ProjectTask','project_task','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('45764bb2-27f2-09ef-2d78-5509663edf28','project_tasks_calls','ProjectTask','project_task','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('45f7b62c-75fe-71c9-a6ac-550966606120','project_tasks_emails','ProjectTask','project_task','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('46309329-3039-1ca6-77c6-550966a84ebd','project_tasks_assigned_user','Users','users','id','ProjectTask','project_task','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('466e7d33-e71d-8555-35c3-5509666332f6','project_tasks_modified_user','Users','users','id','ProjectTask','project_task','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('46b62ea2-7bbf-49cf-398b-5509669657fe','project_tasks_created_by','Users','users','id','ProjectTask','project_task','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4798c26b-b845-74ed-6631-5509662743ac','jjwg_maps_modified_user','Users','users','id','jjwg_Maps','jjwg_maps','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('47e278e8-58c1-2adb-4aa0-550966f86c20','jjwg_maps_created_by','Users','users','id','jjwg_Maps','jjwg_maps','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('480b4059-72ed-132f-4f99-5509666c0eab','jjwg_maps_assigned_user','Users','users','id','jjwg_Maps','jjwg_maps','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4a7fd30d-bf5e-09a7-0faf-550966386d94','campaigns_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4adc0053-e121-bd3b-0d41-550966b59e51','aos_invoices_modified_user','Users','users','id','AOS_Invoices','aos_invoices','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4add8a71-5fe9-3dba-b182-550966e97f72','campaigns_created_by','Users','users','id','Campaigns','campaigns','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4b1971c8-2ef0-605d-ff5c-5509666f440b','campaigns_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4b5877c9-bb01-b918-6180-5509661ae428','campaign_accounts','Campaigns','campaigns','id','Accounts','accounts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4b962c40-6a1f-aaa3-a8af-550966a6ff64','campaign_contacts','Campaigns','campaigns','id','Contacts','contacts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4bcfaa6c-9a23-887b-4a57-55096617467e','campaign_leads','Campaigns','campaigns','id','Leads','leads','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4c107e7e-5c27-8964-7906-550966b9e57b','campaign_prospects','Campaigns','campaigns','id','Prospects','prospects','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4c3eae3f-5515-0969-054e-550966b274dc','campaign_opportunities','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4c4f9be8-e6b4-e65b-0f5d-550966adf36c','jjwg_markers_modified_user','Users','users','id','jjwg_Markers','jjwg_markers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4c684202-17ff-48fd-596e-550966899b7e','campaign_email_marketing','Campaigns','campaigns','id','EmailMarketing','email_marketing','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4caf32a7-e32f-f95c-e7cf-5509669c017e','campaign_emailman','Campaigns','campaigns','id','EmailMan','emailman','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4cbc2a60-acd0-ec75-c17b-550966da9be9','jjwg_markers_created_by','Users','users','id','jjwg_Markers','jjwg_markers','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4cdc3305-f0c8-ef2c-9f88-550966886ac8','campaign_campaignlog','Campaigns','campaigns','id','CampaignLog','campaign_log','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4cef26a5-2e95-9f92-18fc-550966fd7c7f','jjwg_markers_assigned_user','Users','users','id','jjwg_Markers','jjwg_markers','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4d1157c8-42ea-4160-cb35-5509665386e4','campaign_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4d49eb62-11b2-7f53-af0f-5509663826af','campaign_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5034b6bf-47fa-b7fa-6948-550966d0542e','prospectlists_assigned_user','Users','users','id','prospectlists','prospect_lists','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('51306b05-fb80-a9b7-afac-550966c08613','jjwg_areas_modified_user','Users','users','id','jjwg_Areas','jjwg_areas','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5170236b-0f89-448b-8b0d-55096633d568','jjwg_areas_created_by','Users','users','id','jjwg_Areas','jjwg_areas','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('51bc2453-7543-2253-67d7-5509667db4e2','jjwg_areas_assigned_user','Users','users','id','jjwg_Areas','jjwg_areas','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('51bd0838-bc94-3244-4678-5509666c3459','aos_invoices_created_by','Users','users','id','AOS_Invoices','aos_invoices','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('54c1d83a-cc83-43f5-83c7-550966f8e644','prospects_modified_user','Users','users','id','Prospects','prospects','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('552364c6-c261-2581-022b-550966fd05cb','prospects_created_by','Users','users','id','Prospects','prospects','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5583fb0c-4977-d848-a633-5509660fa6ea','prospects_assigned_user','Users','users','id','Prospects','prospects','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('55ad49ed-5b81-b9e3-7e52-550966cfc88f','prospects_email_addresses','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Prospects',0,0),('55d0bac0-3ad5-86b0-2d27-550966c13ede','prospects_email_addresses_primary','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('5607aca5-fc77-aea6-b800-5509668a7fb0','prospect_tasks','Prospects','prospects','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('56357a24-4aa8-2b68-470a-550966ebc4e0','prospect_notes','Prospects','prospects','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('5635c9be-05a3-34bb-a3a3-5509668f87c0','jjwg_address_cache_modified_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('568f996a-6067-2b13-3543-550966d9e612','prospect_meetings','Prospects','prospects','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('569a0a06-f57c-6376-a934-550966d83933','aos_invoices_assigned_user','Users','users','id','AOS_Invoices','aos_invoices','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('56b50b6f-a66e-6bbd-1556-5509666d52c1','jjwg_address_cache_created_by','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('56bedcdb-d173-27ae-dda8-5509662949c6','prospect_calls','Prospects','prospects','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('56eb614b-fe92-1e0d-c7a0-550966d5f26f','prospect_emails','Prospects','prospects','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('56f3ab18-afd6-c85a-d13e-5509662facd0','jjwg_address_cache_assigned_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5715adf0-6a7e-429d-682f-550966365cf5','prospect_campaign_log','Prospects','prospects','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Prospects',0,0),('5891db7d-7cb9-e9bd-62fc-5509664fc9c7','email_template_email_marketings','EmailTemplates','email_templates','id','EmailMarketing','email_marketing','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('59e5b6d4-a8c7-281e-2366-5509668b429d','campaign_campaigntrakers','Campaigns','campaigns','id','CampaignTrackers','campaign_trkrs','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5ad10263-8cd9-c20b-3d77-55096605de7e','aos_invoices_aos_product_quotes','AOS_Invoices','aos_invoices','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5ae0db02-1e21-f061-5aba-550966d471c1','calls_reschedule_modified_user','Users','users','id','Calls_Reschedule','calls_reschedule','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5b39236b-118b-76e1-7e30-550966e2d26e','calls_reschedule_created_by','Users','users','id','Calls_Reschedule','calls_reschedule','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5b8f2e8d-e34c-ea9e-1c79-55096621d12c','calls_reschedule_assigned_user','Users','users','id','Calls_Reschedule','calls_reschedule','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5e9b07ed-fb3d-d38c-2dc1-55096692569e','aos_invoices_aos_line_item_groups','AOS_Invoices','aos_invoices','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5ea6d8b1-c49e-b269-a35b-550966a8fcc9','schedulers_created_by_rel','Users','users','id','Schedulers','schedulers','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('5f0505ad-6911-9293-0260-5509664f28c6','schedulers_modified_user_id_rel','Users','users','id','Schedulers','schedulers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5f4cb3eb-1e80-0345-a6e6-550966b22c64','schedulers_jobs_rel','Schedulers','schedulers','id','SchedulersJobs','job_queue','scheduler_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('618378ea-9113-b9d4-252c-550966cf66b3','securitygroups_modified_user','Users','users','id','SecurityGroups','securitygroups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('61fbea1a-524e-708f-ba22-5509662059a5','securitygroups_created_by','Users','users','id','SecurityGroups','securitygroups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('62142d17-c126-708d-ed55-550966f221ef','schedulersjobs_assigned_user','Users','users','id','SchedulersJobs','schedulersjobs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('625465af-7cc0-8134-c26c-550966976515','securitygroups_assigned_user','Users','users','id','SecurityGroups','securitygroups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('68a56a64-c125-74a8-490a-550966b656cd','contacts_modified_user','Users','users','id','Contacts','contacts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('69023591-3d7c-ab53-343a-550966f621da','contacts_created_by','Users','users','id','Contacts','contacts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('69226f77-3943-f55c-0af2-5509664bcf01','contacts_assigned_user','Users','users','id','Contacts','contacts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('695941c6-5c9e-0a64-52b2-5509662338f1','contacts_email_addresses','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Contacts',0,0),('6985d51a-b9a1-daf9-4749-5509667ae2f5','contacts_email_addresses_primary','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('69b12666-5644-db0c-0a84-550966cf336c','contact_direct_reports','Contacts','contacts','id','Contacts','contacts','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('69f1e131-835e-6c0b-9770-550966f85d65','contact_leads','Contacts','contacts','id','Leads','leads','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6a363454-e81c-e23d-d36c-5509668865dd','contact_notes','Contacts','contacts','id','Notes','notes','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6a697d2b-b42c-be97-2a89-550966c34017','contact_tasks','Contacts','contacts','id','Tasks','tasks','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6a927adb-7a00-8304-f7a2-550966b03a28','contact_tasks_parent','Contacts','contacts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('6af3619e-6314-8147-6d62-550966d81271','contact_notes_parent','Contacts','contacts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('6b26f10d-6493-4062-396c-550966cc01ee','contact_campaign_log','Contacts','contacts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Contacts',0,0),('6b54723d-3250-a95e-4d1b-5509662c64b6','contact_aos_quotes','Contacts','contacts','id','AOS_Quotes','aos_quotes','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6b8baab0-a830-e4c3-3dc2-55096682ff8f','contact_aos_invoices','Contacts','contacts','id','AOS_Invoices','aos_invoices','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6c0a2e96-ebf1-ca92-312e-5509667c3718','contact_aos_contracts','Contacts','contacts','id','AOS_Contracts','aos_contracts','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6c345a9c-7e14-6c59-379f-550966b5512b','contacts_aop_case_updates','Contacts','contacts','id','AOP_Case_Updates','aop_case_updates','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('720f39ea-a951-1ab5-ae86-550966490a89','accounts_modified_user','Users','users','id','Accounts','accounts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('725f2a3a-1b98-03e5-beb2-550966916f6b','accounts_created_by','Users','users','id','Accounts','accounts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('72bc0155-d4d7-9be2-9c60-550966d5b73a','accounts_assigned_user','Users','users','id','Accounts','accounts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('72f00e1d-d339-7da0-84e5-5509669b9f70','fp_event_locations_fp_events_1','FP_Event_Locations','fp_event_locations','id','FP_events','fp_events','id','fp_event_locations_fp_events_1_c','fp_event_locations_fp_events_1fp_event_locations_ida','fp_event_locations_fp_events_1fp_events_idb','many-to-many',NULL,NULL,0,0),('7311d177-78bc-c33d-83ad-55096615fbd1','accounts_email_addresses','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Accounts',0,0),('7352c4e4-3d81-e0b0-3048-550966558274','accounts_email_addresses_primary','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('73a9e2af-f772-c4d3-cd77-55096652774c','member_accounts','Accounts','accounts','id','Accounts','accounts','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('740d6b19-5e74-5fb7-01dc-550966f4d928','account_cases','Accounts','accounts','id','Cases','cases','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7447fe0e-0e78-c49f-dc29-550966366e39','account_tasks','Accounts','accounts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('7474a29d-ad71-fc22-1731-550966abe9a1','account_notes','Accounts','accounts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('74d73732-4bbc-286f-3d19-5509661e288a','account_meetings','Accounts','accounts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('75126931-eba8-0477-b478-550966e823d5','account_calls','Accounts','accounts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('7542bb1a-40f7-567c-cd8e-55096600bf4f','account_emails','Accounts','accounts','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('756c0ee6-883c-7bcd-394d-550966130902','account_leads','Accounts','accounts','id','Leads','leads','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('75a7d69c-9b11-4082-a59f-55096640dd81','account_campaign_log','Accounts','accounts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Accounts',0,0),('7619ab2d-bac0-f16e-b165-550966f2d6a8','account_aos_quotes','Accounts','accounts','id','AOS_Quotes','aos_quotes','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7650864b-11e2-e215-be51-55096632aca5','account_aos_invoices','Accounts','accounts','id','AOS_Invoices','aos_invoices','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('76cbac2f-274a-140f-e6ba-550966911f56','account_aos_contracts','Accounts','accounts','id','AOS_Contracts','aos_contracts','contract_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7a6b910b-4d1a-b9a4-91f5-5509662613f1','opportunities_modified_user','Users','users','id','Opportunities','opportunities','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7ac2055e-7ecd-60b6-818e-5509668ec0fb','opportunities_created_by','Users','users','id','Opportunities','opportunities','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7af05a7e-d0ea-df37-d2c4-550966a38437','opportunities_assigned_user','Users','users','id','Opportunities','opportunities','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7b2d5c71-3649-d00e-6a75-55096609e260','opportunity_calls','Opportunities','opportunities','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('7ba74e87-b92b-321d-9845-5509660c601a','opportunity_meetings','Opportunities','opportunities','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('7bd1b00d-f7d6-5687-feb0-55096627fdbf','opportunity_tasks','Opportunities','opportunities','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('7c006f12-18ef-4286-b72e-5509668bc70a','opportunity_notes','Opportunities','opportunities','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('7c2d9c95-8cca-55f3-0198-550966ed9a11','opportunity_emails','Opportunities','opportunities','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('7c48d285-508a-fae8-0a0f-550966055911','opportunity_leads','Opportunities','opportunities','id','Leads','leads','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7c928aa3-3831-1443-1b88-550966d70391','opportunity_currencies','Opportunities','opportunities','currency_id','Currencies','currencies','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7cc14cfc-c0c7-8ca9-b43a-5509668722cc','opportunities_campaign','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7cf7e726-9a50-4b86-0c21-5509669b8d57','opportunity_aos_quotes','Opportunities','opportunities','id','AOS_Quotes','aos_quotes','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7d257300-4a1c-cc74-4791-550966264b19','opportunity_aos_contracts','Opportunities','opportunities','id','AOS_Contracts','aos_contracts','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7eefe40f-a697-f53d-a30c-550966c156ea','emailtemplates_assigned_user','Users','users','id','EmailTemplates','email_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('81dc8663-e863-6656-0ba6-5509668c552e','notes_assigned_user','Users','users','id','Notes','notes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8254d7ff-b540-2b21-62d4-550966067c7c','notes_modified_user','Users','users','id','Notes','notes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('829abac1-e4c2-ae3b-a36a-5509661e2d4a','notes_created_by','Users','users','id','Notes','notes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('86f04e5a-9e73-2fc6-635c-550966f65ff5','calls_modified_user','Users','users','id','Calls','calls','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('87687d38-28b2-9d4b-079b-55096645aaa0','calls_created_by','Users','users','id','Calls','calls','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('87a6e30a-c704-4415-5bc8-55096607684e','calls_assigned_user','Users','users','id','Calls','calls','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('87e26458-117d-b799-dfad-5509667c5b6b','calls_notes','Calls','calls','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Calls',0,0),('87fc431a-3404-9833-44be-550966d493ee','calls_reschedule','Calls','calls','id','Calls_Reschedule','calls_reschedule','call_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8a3182e6-b959-3d8f-e061-55096670da3a','emails_assigned_user','Users','users','id','Emails','emails','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8a8f2a73-9bbb-4101-3cb1-5509664189b6','emails_modified_user','Users','users','id','Emails','emails','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8ab9e7be-ac5e-59be-c3a4-5509667b1fbb','emails_created_by','Users','users','id','Emails','emails','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8af89059-bfaf-2b0c-d4e2-550966173dfb','emails_notes_rel','Emails','emails','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8b466ef3-4349-5b6f-8ace-550966b7f36d','emails_contacts_rel','Emails','emails','id','Contacts','contacts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Contacts',0,0),('8b7ca067-bd2e-4ae5-b5ff-550966f3a8a7','emails_accounts_rel','Emails','emails','id','Accounts','accounts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Accounts',0,0),('8ba9de2a-8ff6-add6-c321-550966e1726c','emails_leads_rel','Emails','emails','id','Leads','leads','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Leads',0,0),('8be3ab05-dab7-5dd6-16f9-550966b5b170','emails_meetings_rel','Emails','emails','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('90781e89-eac1-a019-b6cd-5509660753ec','meetings_modified_user','Users','users','id','Meetings','meetings','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('90c02b0b-0c2b-6e15-6e90-550966d7e0b5','meetings_created_by','Users','users','id','Meetings','meetings','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('90fe1aef-2602-805a-bc9e-5509666a2caa','meetings_assigned_user','Users','users','id','Meetings','meetings','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9127e46b-e52a-ce4f-c1ef-5509665a97d9','meetings_notes','Meetings','meetings','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('955011cd-9445-2f1f-bfad-550966d79961','tasks_modified_user','Users','users','id','Tasks','tasks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('95b164ad-3eb9-a3fa-231c-55096610d3d5','tasks_created_by','Users','users','id','Tasks','tasks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9602b2d0-c915-6d69-8c2d-5509667b94b0','tasks_assigned_user','Users','users','id','Tasks','tasks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('963b335e-aaaf-4908-1623-550966421384','tasks_notes','Tasks','tasks','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a41e601e-aaa3-2cbe-b742-550966f9ae15','documents_modified_user','Users','users','id','Documents','documents','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a4711f3f-27c3-4192-ade9-5509667b9ec9','documents_created_by','Users','users','id','Documents','documents','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a4c5f085-5261-bbad-df3b-5509667ba627','documents_assigned_user','Users','users','id','Documents','documents','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a4f16037-96a3-fe34-5995-550966157de7','document_revisions','Documents','documents','id','DocumentRevisions','document_revisions','document_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a5e683eb-5b6f-b6b7-2ac2-550966798182','revisions_created_by','Users','users','id','DocumentRevisions','document_revisions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a90d6011-7639-8dd4-6b40-55096679de5b','inbound_email_created_by','Users','users','id','InboundEmail','inbound_email','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('a965ec4c-84b1-da94-a907-55096689250d','inbound_email_modified_user_id','Users','users','id','InboundEmail','inbound_email','modified_user_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('aad971f5-d4d7-dc39-1b08-55096652fbc2','saved_search_assigned_user','Users','users','id','SavedSearch','saved_search','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ae5f0e4d-3b1d-2eb0-386a-5509660acd6f','aos_pdf_templates_modified_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b0b00cad-d0a5-39ac-41f5-5509661e0215','jjwg_maps_jjwg_markers','jjwg_Maps','jjwg_maps','id','jjwg_Markers','jjwg_markers','id','jjwg_maps_jjwg_markers_c','jjwg_maps_b229wg_maps_ida','jjwg_maps_2e31markers_idb','many-to-many',NULL,NULL,0,0),('b4370fa1-1c12-cd1b-2b29-5509665b0a71','sugarfeed_modified_user','Users','users','id','SugarFeed','sugarfeed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b4925ad0-ea76-6556-757d-550966f80514','sugarfeed_created_by','Users','users','id','SugarFeed','sugarfeed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b4c8cc20-95c5-c54c-1503-55096612c3fa','sugarfeed_assigned_user','Users','users','id','SugarFeed','sugarfeed','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b8bb0333-12f7-a48f-7b21-55096680aed4','aos_pdf_templates_created_by','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b8c23058-35af-380a-662a-55096658b66c','eapm_modified_user','Users','users','id','EAPM','eapm','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b8ffcc40-dcc7-f38e-22ce-55096648832e','eapm_created_by','Users','users','id','EAPM','eapm','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b9237649-b166-fe15-8d10-550966e7656d','eapm_assigned_user','Users','users','id','EAPM','eapm','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bca856e1-6a33-0c0e-e6a3-5509668060d1','oauthkeys_modified_user','Users','users','id','OAuthKeys','oauthkeys','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bcde9186-cea1-4e4a-d12c-550966f86262','oauthkeys_created_by','Users','users','id','OAuthKeys','oauthkeys','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bd3a858c-7b21-8f36-f87c-550966866ff2','oauthkeys_assigned_user','Users','users','id','OAuthKeys','oauthkeys','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('be93bae3-d9af-f15a-7487-550966a2ae4c','consumer_tokens','OAuthKeys','oauth_consumer','id','OAuthTokens','oauth_tokens','consumer',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('beea5664-eaf9-85ee-63fc-550966bdda95','oauthtokens_assigned_user','Users','users','id','OAuthTokens','oauth_tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bf0f0cc5-137c-37df-267a-550966485a34','aos_pdf_templates_assigned_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c5c054e1-1618-ad33-b116-55096693a8a2','fp_events_modified_user','Users','users','id','FP_events','fp_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c6518021-795a-d858-e7f7-550966c84420','fp_events_created_by','Users','users','id','FP_events','fp_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c700b5f4-b1ca-fe12-3f04-550966a21f7a','fp_events_assigned_user','Users','users','id','FP_events','fp_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cad4e260-938f-fa53-adf0-550966eb2603','fp_event_locations_modified_user','Users','users','id','FP_Event_Locations','fp_event_locations','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cb23c2f5-cfab-c181-8662-55096638592e','fp_event_locations_created_by','Users','users','id','FP_Event_Locations','fp_event_locations','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cb4d97b7-3a58-bae2-86f2-5509666ca712','fp_event_locations_assigned_user','Users','users','id','FP_Event_Locations','fp_event_locations','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cb8b5d0b-74ee-4466-295d-5509665b6e60','optimistic_locking',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('cbbdbb26-9735-7744-c011-55096651ce85','unified_search',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('cfb51cea-8846-de58-a26f-550966d652eb','aod_indexevent_modified_user','Users','users','id','AOD_IndexEvent','aod_indexevent','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cfeddff1-dd69-c7f4-050d-5509663636f8','aod_indexevent_created_by','Users','users','id','AOD_IndexEvent','aod_indexevent','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d00d9dee-a42d-10ef-ea8f-550966b056a2','aod_indexevent_assigned_user','Users','users','id','AOD_IndexEvent','aod_indexevent','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d3d9383d-e73c-7b98-8737-550966d5227a','aod_index_modified_user','Users','users','id','AOD_Index','aod_index','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d4403184-8048-8b6c-64fc-5509662a95a8','aod_index_created_by','Users','users','id','AOD_Index','aod_index','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d489aca2-8c00-c121-4e93-5509662866df','aod_index_assigned_user','Users','users','id','AOD_Index','aod_index','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d7f9afd1-efd4-0bec-f2a3-550966de778a','aop_case_events_modified_user','Users','users','id','AOP_Case_Events','aop_case_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d8443d03-4a52-314a-44b6-5509668dfd2c','aop_case_events_created_by','Users','users','id','AOP_Case_Events','aop_case_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d8699234-a7c7-348b-a5b7-5509665d4b59','aop_case_events_assigned_user','Users','users','id','AOP_Case_Events','aop_case_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d8b429a2-659d-4f0e-852d-55096686289c','cases_aop_case_events','Cases','cases','id','AOP_Case_Events','aop_case_events','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dc440b39-b964-9b52-93a1-550966a2b0a3','aop_case_updates_modified_user','Users','users','id','AOP_Case_Updates','aop_case_updates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dcae0857-7a19-5692-9adf-550966048f4e','aop_case_updates_created_by','Users','users','id','AOP_Case_Updates','aop_case_updates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dce20bef-b698-7beb-b345-550966f25814','aop_case_updates_assigned_user','Users','users','id','AOP_Case_Updates','aop_case_updates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dd0a60b4-2c5c-f961-3c6c-55096686781f','cases_aop_case_updates','Cases','cases','id','AOP_Case_Updates','aop_case_updates','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dd56b350-7728-649c-4073-55096623c508','aop_case_updates_notes','AOP_Case_Updates','aop_case_updates','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOP_Case_Updates',0,0),('e1b8f166-2e05-4575-eb95-550966e2f698','aor_reports_modified_user','Users','users','id','AOR_Reports','aor_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e221e023-367d-3dc0-d992-5509668551a0','aor_reports_created_by','Users','users','id','AOR_Reports','aor_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e27879d5-bf8c-2c69-1a93-55096693113d','aor_reports_assigned_user','Users','users','id','AOR_Reports','aor_reports','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e2af946b-c4c4-15bf-9917-55096653c3f9','aor_reports_aor_fields','AOR_Reports','aor_reports','id','AOR_Fields','aor_fields','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e3283fc1-7b9d-32d4-1787-5509660b082c','aor_reports_aor_conditions','AOR_Reports','aor_reports','id','AOR_Conditions','aor_conditions','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e35cf814-2fbf-8936-d29c-550966c754c3','aor_scheduled_reports_aor_reports','AOR_Reports','aor_reports','id','AOR_Scheduled_Reports','aor_scheduled_reports','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e4514db4-ba37-655a-0726-5509666e6e36','accounts_bugs','Accounts','accounts','id','Bugs','bugs','id','accounts_bugs','account_id','bug_id','many-to-many',NULL,NULL,0,0),('e4d73fa5-fcb4-e14a-12d5-550966e617a5','accounts_contacts','Accounts','accounts','id','Contacts','contacts','id','accounts_contacts','account_id','contact_id','many-to-many',NULL,NULL,0,0),('e5323097-76b5-0c6d-67c1-550966216c81','accounts_opportunities','Accounts','accounts','id','Opportunities','opportunities','id','accounts_opportunities','account_id','opportunity_id','many-to-many',NULL,NULL,0,0),('e55ec14e-b562-1bbe-7eeb-550966e84dad','calls_contacts','Calls','calls','id','Contacts','contacts','id','calls_contacts','call_id','contact_id','many-to-many',NULL,NULL,0,0),('e58c621a-a4d5-2cb8-17eb-550966365531','calls_users','Calls','calls','id','Users','users','id','calls_users','call_id','user_id','many-to-many',NULL,NULL,0,0),('e5ba977f-8bac-b8b0-11b7-550966399cf1','calls_leads','Calls','calls','id','Leads','leads','id','calls_leads','call_id','lead_id','many-to-many',NULL,NULL,0,0),('e60001ab-14b3-610c-7c0d-550966539af0','fp_events_contacts','FP_events','fp_events','id','Contacts','contacts','id','fp_events_contacts_c','fp_events_contactsfp_events_ida','fp_events_contactscontacts_idb','many-to-many',NULL,NULL,0,0),('e61aa8f9-c9e5-6fb1-b46f-550966f0fccd','cases_bugs','Cases','cases','id','Bugs','bugs','id','cases_bugs','case_id','bug_id','many-to-many',NULL,NULL,0,0),('e64115b0-4218-721c-bfdd-550966949c54','contacts_bugs','Contacts','contacts','id','Bugs','bugs','id','contacts_bugs','contact_id','bug_id','many-to-many',NULL,NULL,0,0),('e67cfaf5-d51c-1f5d-a462-5509667ce464','contacts_cases','Contacts','contacts','id','Cases','cases','id','contacts_cases','contact_id','case_id','many-to-many',NULL,NULL,0,0),('e68bf068-4ee7-a1ae-8235-550966b8e6a9','aor_fields_modified_user','Users','users','id','AOR_Fields','aor_fields','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e6c7aa5d-2f2b-b7c7-0135-55096696cbda','aor_fields_created_by','Users','users','id','AOR_Fields','aor_fields','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e6c7f556-7035-25b6-5547-550966493f66','contacts_users','Contacts','contacts','id','Users','users','id','contacts_users','contact_id','user_id','many-to-many',NULL,NULL,0,0),('e7230083-ca45-c388-9142-550966317edf','emails_bugs_rel','Emails','emails','id','Bugs','bugs','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Bugs',0,0),('e75d15b0-9335-3baf-1207-550966bacfc1','emails_cases_rel','Emails','emails','id','Cases','cases','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Cases',0,0),('e7b7d2d8-5274-9aa9-27df-55096601b3aa','emails_opportunities_rel','Emails','emails','id','Opportunities','opportunities','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Opportunities',0,0),('e8019e64-0ac4-8f92-4cb9-55096670574c','emails_tasks_rel','Emails','emails','id','Tasks','tasks','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Tasks',0,0),('e83ceb7d-218d-95d6-a9e9-55096653b887','emails_users_rel','Emails','emails','id','Users','users','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Users',0,0),('e879b0e9-6353-da18-dbf9-550966a3272e','emails_project_task_rel','Emails','emails','id','ProjectTask','project_task','id','emails_beans','email_id','bean_id','many-to-many','bean_module','ProjectTask',0,0),('e89fd12e-d7ff-3431-8485-550966076947','aor_charts_modified_user','Users','users','id','AOR_Charts','aor_charts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e8b98cfb-82fa-47cc-74cd-550966e0ade8','emails_projects_rel','Emails','emails','id','Project','project','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Project',0,0),('e8ed3e0e-ca69-ff23-7d0d-550966a37c41','aor_charts_created_by','Users','users','id','AOR_Charts','aor_charts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e9056baf-1d20-0ffd-aec6-550966e88deb','emails_prospects_rel','Emails','emails','id','Prospects','prospects','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Prospects',0,0),('e9196e70-6359-cc69-ae4a-550966af7f16','aor_charts_aor_reports','AOR_Reports','aor_reports','id','AOR_Charts','aor_charts','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e9329a74-2250-a2ce-e35a-550966c6aa18','meetings_contacts','Meetings','meetings','id','Contacts','contacts','id','meetings_contacts','meeting_id','contact_id','many-to-many',NULL,NULL,0,0),('e9518625-6ab9-cc97-ae9a-5509661a0822','meetings_users','Meetings','meetings','id','Users','users','id','meetings_users','meeting_id','user_id','many-to-many',NULL,NULL,0,0),('e9885d26-c7d1-4d12-9a0a-5509661d2d8d','meetings_leads','Meetings','meetings','id','Leads','leads','id','meetings_leads','meeting_id','lead_id','many-to-many',NULL,NULL,0,0),('e9ab853b-f7a1-4018-e2e1-5509662c7cb2','opportunities_contacts','Opportunities','opportunities','id','Contacts','contacts','id','opportunities_contacts','opportunity_id','contact_id','many-to-many',NULL,NULL,0,0),('e9ecabd3-0bfc-1d0d-7bc4-55096664e5df','prospect_list_campaigns','ProspectLists','prospect_lists','id','Campaigns','campaigns','id','prospect_list_campaigns','prospect_list_id','campaign_id','many-to-many',NULL,NULL,0,0),('ea241ddb-e632-c710-5624-550966b879bf','prospect_list_contacts','ProspectLists','prospect_lists','id','Contacts','contacts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Contacts',0,0),('ea5806ba-5c38-dd48-e3b1-550966f386f3','prospect_list_prospects','ProspectLists','prospect_lists','id','Prospects','prospects','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Prospects',0,0),('eac6758a-d24e-6778-403f-55096670970e','prospect_list_leads','ProspectLists','prospect_lists','id','Leads','leads','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Leads',0,0),('eb098af7-21e7-75b1-42f5-550966bcdb37','prospect_list_users','ProspectLists','prospect_lists','id','Users','users','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Users',0,0),('eb3271d9-e58c-64e4-cdd7-550966b6e4ce','prospect_list_accounts','ProspectLists','prospect_lists','id','Accounts','accounts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Accounts',0,0),('eb5f2fae-b5e8-102c-97ca-550966150f92','roles_users','Roles','roles','id','Users','users','id','roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('eb909dce-d5b7-1069-7a73-55096615d84a','projects_bugs','Project','project','id','Bugs','bugs','id','projects_bugs','project_id','bug_id','many-to-many',NULL,NULL,0,0),('eb9c01ed-aad9-9438-225e-550966c78287','aor_conditions_modified_user','Users','users','id','AOR_Conditions','aor_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ebed6851-38e2-e367-c050-550966adb70d','aor_conditions_created_by','Users','users','id','AOR_Conditions','aor_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ebf6ad46-291a-ecfa-9bef-5509666fb478','projects_cases','Project','project','id','Cases','cases','id','projects_cases','project_id','case_id','many-to-many',NULL,NULL,0,0),('ec26674e-8830-9e53-2ccd-55096624cbb0','projects_accounts','Project','project','id','Accounts','accounts','id','projects_accounts','project_id','account_id','many-to-many',NULL,NULL,0,0),('ec50ebf3-21e1-a7ef-d6a5-5509668dcc07','projects_contacts','Project','project','id','Contacts','contacts','id','projects_contacts','project_id','contact_id','many-to-many',NULL,NULL,0,0),('ec823d30-b7eb-71c5-b21f-550966b063aa','projects_opportunities','Project','project','id','Opportunities','opportunities','id','projects_opportunities','project_id','opportunity_id','many-to-many',NULL,NULL,0,0),('ecdada8d-acab-0a38-fb1b-550966ea780a','acl_roles_actions','ACLRoles','acl_roles','id','ACLActions','acl_actions','id','acl_roles_actions','role_id','action_id','many-to-many',NULL,NULL,0,0),('ed12dcff-db20-4e5c-8574-55096679d53c','acl_roles_users','ACLRoles','acl_roles','id','Users','users','id','acl_roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('ed489953-2063-3104-7935-5509664a8832','email_marketing_prospect_lists','EmailMarketing','email_marketing','id','ProspectLists','prospect_lists','id','email_marketing_prospect_lists','email_marketing_id','prospect_list_id','many-to-many',NULL,NULL,0,0),('ed751981-7260-eb91-85dd-5509660b8c91','leads_documents','Leads','leads','id','Documents','documents','id','linked_documents','parent_id','document_id','many-to-many','parent_type','Leads',0,0),('ee49d3c6-54ec-89d6-74e8-5509663ea3df','documents_accounts','Documents','documents','id','Accounts','accounts','id','documents_accounts','document_id','account_id','many-to-many',NULL,NULL,0,0),('eeb6416f-2035-11f4-20b2-550966f61bf3','documents_contacts','Documents','documents','id','Contacts','contacts','id','documents_contacts','document_id','contact_id','many-to-many',NULL,NULL,0,0),('eee3bfa5-e847-6115-c679-550966a3dba7','aor_scheduled_reports_modified_user','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ef09d3b7-e9ac-6d70-7abd-5509667d2aa9','documents_opportunities','Documents','documents','id','Opportunities','opportunities','id','documents_opportunities','document_id','opportunity_id','many-to-many',NULL,NULL,0,0),('ef1da55f-40f2-dc4c-a21d-55096692c236','aor_scheduled_reports_created_by','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ef4252fc-3d2a-5cee-e4f3-550966d2064c','documents_cases','Documents','documents','id','Cases','cases','id','documents_cases','document_id','case_id','many-to-many',NULL,NULL,0,0),('ef6f90bd-eb93-4168-5a57-550966360d14','documents_bugs','Documents','documents','id','Bugs','bugs','id','documents_bugs','document_id','bug_id','many-to-many',NULL,NULL,0,0),('efca27cf-53c7-3192-86e1-55096623dcf7','project_contacts_1','Project','project','id','Contacts','contacts','id','project_contacts_1_c','project_contacts_1project_ida','project_contacts_1contacts_idb','many-to-many',NULL,NULL,0,0),('f01a3ba3-4b7b-feae-0c50-550966a60997','securitygroups_accounts','SecurityGroups','securitygroups','id','Accounts','accounts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Accounts',0,0),('f04afede-03cb-2212-76bd-5509669d033d','securitygroups_bugs','SecurityGroups','securitygroups','id','Bugs','bugs','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Bugs',0,0),('f080181c-2006-08be-fa3e-55096660ef49','securitygroups_calls','SecurityGroups','securitygroups','id','Calls','calls','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Calls',0,0),('f0d17a6b-44ae-29ab-f3b2-55096630c7c4','securitygroups_campaigns','SecurityGroups','securitygroups','id','Campaigns','campaigns','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Campaigns',0,0),('f1111296-e1a1-629e-7220-550966217972','securitygroups_cases','SecurityGroups','securitygroups','id','Cases','cases','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Cases',0,0),('f1491856-ee35-864e-8c07-550966c31a9e','securitygroups_contacts','SecurityGroups','securitygroups','id','Contacts','contacts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Contacts',0,0),('f1744f98-13e7-d3a1-9ebb-5509665f99ed','securitygroups_documents','SecurityGroups','securitygroups','id','Documents','documents','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Documents',0,0),('f1bc428d-effc-6445-08ac-5509664da177','securitygroups_emails','SecurityGroups','securitygroups','id','Emails','emails','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Emails',0,0),('f1ea3d13-315e-0ad6-d6e1-550966bfcb86','securitygroups_emailtemplates','SecurityGroups','securitygroups','id','EmailTemplates','email_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailTemplates',0,0),('f21b4bba-7b8a-cf3e-426a-550966369206','securitygroups_leads','SecurityGroups','securitygroups','id','Leads','leads','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Leads',0,0),('f24ea396-3361-b3ba-baa8-55096640a5d9','securitygroups_meetings','SecurityGroups','securitygroups','id','Meetings','meetings','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Meetings',0,0),('f2984cf1-3e8a-39ee-1801-550966af86a6','securitygroups_notes','SecurityGroups','securitygroups','id','Notes','notes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Notes',0,0),('f2c61cdb-2653-68d9-7863-550966bb528f','securitygroups_opportunities','SecurityGroups','securitygroups','id','Opportunities','opportunities','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Opportunities',0,0),('f2ff7d68-0307-c652-fc96-550966fa61e6','securitygroups_project','SecurityGroups','securitygroups','id','Project','project','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Project',0,0),('f30e7519-e80d-5a55-4815-550966666770','aos_contracts_modified_user','Users','users','id','AOS_Contracts','aos_contracts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f3317e9e-e06c-a381-0990-55096672e756','securitygroups_project_task','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),('f35399bb-2f8f-0d8a-187e-5509665239a3','aos_contracts_created_by','Users','users','id','AOS_Contracts','aos_contracts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f359bc7b-f86b-34e3-b0cf-5509661654c3','securitygroups_prospect_lists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),('f3959e5f-3f83-f323-5e65-550966df2895','aos_contracts_assigned_user','Users','users','id','AOS_Contracts','aos_contracts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f3a47bb7-7d98-b080-42c0-550966edc018','securitygroups_prospects','SecurityGroups','securitygroups','id','Prospects','prospects','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Prospects',0,0),('f3c4d285-4779-68e4-5ec4-550966d7c31a','aos_contracts_aos_products_quotes','AOS_Contracts','aos_contracts','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f3ddb393-d652-cfc9-b3ce-550966a35996','securitygroups_tasks','SecurityGroups','securitygroups','id','Tasks','tasks','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Tasks',0,0),('f3fbe3d9-185d-9318-fc76-5509667adc95','aos_contracts_aos_line_item_groups','AOS_Contracts','aos_contracts','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f40db39d-bf8b-4219-f801-5509661b5c61','aow_processed_aow_actions','AOW_Processed','aow_processed','id','AOW_Actions','aow_actions','id','aow_processed_aow_actions','aow_processed_id','aow_action_id','many-to-many',NULL,NULL,0,0),('fb20039f-8f8b-6b51-37b1-550966465b47','am_tasktemplates_am_projecttemplates','AM_ProjectTemplates','am_projecttemplates','id','AM_TaskTemplates','am_tasktemplates','id','am_tasktemplates_am_projecttemplates_c','am_tasktemplates_am_projecttemplatesam_projecttemplates_ida','am_tasktemplates_am_projecttemplatesam_tasktemplates_idb','many-to-many',NULL,NULL,0,0);
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `releases`
--

DROP TABLE IF EXISTS `releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_releases` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `releases`
--

LOCK TABLES `releases` WRITE;
/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_role_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_modules`
--

DROP TABLE IF EXISTS `roles_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_modules`
--

LOCK TABLES `roles_modules` WRITE;
/*!40000 ALTER TABLE `roles_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ru_role_id` (`role_id`),
  KEY `idx_ru_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_search`
--

DROP TABLE IF EXISTS `saved_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `idx_desc` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_search`
--

LOCK TABLES `saved_search` WRITE;
/*!40000 ALTER TABLE `saved_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedulers`
--

DROP TABLE IF EXISTS `schedulers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_schedule` (`date_time_start`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedulers`
--

LOCK TABLES `schedulers` WRITE;
/*!40000 ALTER TABLE `schedulers` DISABLE KEYS */;
INSERT INTO `schedulers` VALUES ('3c6e22ff-2c5c-198d-0eb6-550966529e65',0,'2015-03-18 11:48:13','2015-03-18 11:48:13','1','1','Prune Tracker Tables','function::trimTracker','2005-01-01 11:30:01','2020-12-31 23:59:59','0::2::1::*::*',NULL,NULL,NULL,'Active',1),('4e73bfa8-2587-431e-defa-5509666f9152',0,'2015-03-18 11:48:13','2015-03-18 11:48:13','1','1','AOP Check Inbound Mailboxes','function::pollMonitoredInboxesAOP','2005-01-01 11:15:00','2020-12-31 00:00:00','*/1::*::*::*::*',NULL,NULL,NULL,'Active',0),('562a6524-61e5-b68b-3a03-550966053504',0,'2015-03-18 11:48:13','2015-03-18 11:48:13','1','1','Check Inbound Mailboxes','function::pollMonitoredInboxes','2005-01-01 17:00:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Inactive',0),('57525b6c-3e0c-5919-fa0b-5509665f3ebc',0,'2015-03-18 11:48:13','2015-03-18 11:48:13','1','1','Perform Lucene Index','function::aodIndexUnindexed','2005-01-01 11:15:00',NULL,'0::0::*::*::*',NULL,NULL,NULL,'Active',1),('58151559-eb22-92ca-c01c-5509669858e8',0,'2015-03-18 11:48:13','2015-03-18 11:48:13','1','1','Run Nightly Process Bounced Campaign Emails','function::pollMonitoredInboxesForBouncedCampaignEmails','2005-01-01 16:15:01','2020-12-31 23:59:59','0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('595fbfe7-d829-5597-2014-550966addd18',0,'2015-03-18 11:48:13','2015-03-18 11:48:13','1','1','Optimise AOD Index','function::aodOptimiseIndex','2005-01-01 11:15:00',NULL,'0::*/3::*::*::*',NULL,NULL,NULL,'Active',1),('5a74cda4-9e05-017c-92e2-5509660920bf',0,'2015-03-18 11:48:13','2015-03-18 11:48:13','1','1','Run Nightly Mass Email Campaigns','function::runMassEmailCampaign','2005-01-01 10:30:01','2020-12-31 23:59:59','0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('5d91b5b8-7b67-558d-d9bf-5509661a5b1d',0,'2015-03-18 11:48:13','2015-03-18 11:48:13','1','1','Prune Database on 1st of Month','function::pruneDatabase','2005-01-01 07:30:01','2020-12-31 23:59:59','0::4::1::*::*',NULL,NULL,NULL,'Inactive',0),('5fa7d235-95c4-aa54-8835-550966c78b7b',0,'2015-03-18 11:48:13','2015-03-18 11:48:13','1','1','Run Email Reminder Notifications','function::sendEmailReminders','2008-01-01 15:00:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Active',0),('60805358-717e-65be-7a6e-55096604a0e8',0,'2015-03-18 11:48:13','2015-03-18 11:48:13','1','1','Run Scheduled Reports','function::aorRunScheduledReports','2005-01-01 11:15:00',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',1),('627df0f9-4390-e2a3-56f8-550966a5e8d4',0,'2015-03-18 11:48:13','2015-03-18 11:48:13','1','1','Clean Jobs Queue','function::cleanJobQueue','2012-01-01 19:00:01','2030-12-31 23:59:59','0::5::*::*::*',NULL,NULL,NULL,'Active',0),('64aa1f85-5b40-1c28-54cb-5509660e0ca9',0,'2015-03-18 11:48:13','2015-03-18 11:48:13','1','1','Removal of documents from filesystem','function::removeDocumentsFromFS','2012-01-01 10:30:01','2030-12-31 23:59:59','0::3::1::*::*',NULL,NULL,NULL,'Active',0),('670c3101-5ed3-d3bb-29fa-5509661afe7c',0,'2015-03-18 11:48:13','2015-03-18 11:48:13','1','1','Prune SugarFeed Tables','function::trimSugarFeeds','2005-01-01 12:45:01','2020-12-31 23:59:59','0::2::1::*::*',NULL,NULL,NULL,'Active',1),('e5ce453f-edb3-7457-96ab-5509662e0342',0,'2015-03-18 11:48:13','2015-03-18 11:48:13','1','1','Run AOW WorkFlow','function::processAOW_Workflow','2005-01-01 15:15:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Active',0);
/*!40000 ALTER TABLE `schedulers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups`
--

DROP TABLE IF EXISTS `securitygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups`
--

LOCK TABLES `securitygroups` WRITE;
/*!40000 ALTER TABLE `securitygroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_acl_roles`
--

DROP TABLE IF EXISTS `securitygroups_acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_acl_roles`
--

LOCK TABLES `securitygroups_acl_roles` WRITE;
/*!40000 ALTER TABLE `securitygroups_acl_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_audit`
--

DROP TABLE IF EXISTS `securitygroups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_audit`
--

LOCK TABLES `securitygroups_audit` WRITE;
/*!40000 ALTER TABLE `securitygroups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_default`
--

DROP TABLE IF EXISTS `securitygroups_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_default`
--

LOCK TABLES `securitygroups_default` WRITE;
/*!40000 ALTER TABLE `securitygroups_default` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_default` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_records`
--

DROP TABLE IF EXISTS `securitygroups_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_records`
--

LOCK TABLES `securitygroups_records` WRITE;
/*!40000 ALTER TABLE `securitygroups_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_users`
--

DROP TABLE IF EXISTS `securitygroups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `securitygroups_users_idxa` (`securitygroup_id`),
  KEY `securitygroups_users_idxb` (`user_id`),
  KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_users`
--

LOCK TABLES `securitygroups_users` WRITE;
/*!40000 ALTER TABLE `securitygroups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugarfeed`
--

DROP TABLE IF EXISTS `sugarfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sgrfeed_date` (`date_entered`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugarfeed`
--

LOCK TABLES `sugarfeed` WRITE;
/*!40000 ALTER TABLE `sugarfeed` DISABLE KEYS */;
/*!40000 ALTER TABLE `sugarfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tsk_name` (`name`),
  KEY `idx_task_con_del` (`contact_id`,`deleted`),
  KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_task_assigned` (`assigned_user_id`),
  KEY `idx_task_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker`
--

DROP TABLE IF EXISTS `tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_tracker_iid` (`item_id`),
  KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  KEY `idx_tracker_monitor_id` (`monitor_id`),
  KEY `idx_tracker_date_modified` (`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker`
--

LOCK TABLES `tracker` WRITE;
/*!40000 ALTER TABLE `tracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_history`
--

DROP TABLE IF EXISTS `upgrade_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_history`
--

LOCK TABLES `upgrade_history` WRITE;
/*!40000 ALTER TABLE `upgrade_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `upgrade_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_userprefnamecat` (`assigned_user_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES ('114d92c8-68d9-3aa0-be49-550967420403','Home2_SUGARFEED',0,'2015-03-18 11:52:59','2015-03-18 11:52:59','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('36b3dc22-83d7-c4dd-187a-550966b49740','global',0,'2015-03-18 11:48:13','2015-03-18 11:52:55','1','YToyNzp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjM2OTRiZTRiLTBhZWMtNWY5ZS01MWYzLTU1MDk2NmI0YjljZSI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVIiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6ODoidGltZXpvbmUiO3M6MzoiVVRDIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO2k6LTE7czoyOiJ1dCI7czoxOiIxIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NToiZGF0ZWYiO3M6NToibS9kL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czozOiJBbGwiO30='),('60d63447-672d-09d3-a495-550967ccdee6','ETag',0,'2015-03-18 11:52:55','2015-03-18 11:52:55','1','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9'),('83d50d47-98e0-aef3-c773-550967de366e','Home2_CALL',0,'2015-03-18 11:52:59','2015-03-18 11:52:59','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('98780327-f809-9856-b5f2-5509677281ce','Home2_MEETING',0,'2015-03-18 11:52:59','2015-03-18 11:52:59','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('aa59026a-f2fd-6405-a792-5509675dd96b','Home2_OPPORTUNITY',0,'2015-03-18 11:52:59','2015-03-18 11:52:59','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('baf9ba69-f978-5426-79df-5509672ba49b','Home',0,'2015-03-18 11:52:59','2015-03-18 11:52:59','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjc6e3M6MzY6ImVjYjhhMzFiLTE4ZmMtMDY5My00NzY2LTU1MDk2Nzg3MzFhYiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxMzoiaUZyYW1lRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9pRnJhbWVEYXNobGV0L2lGcmFtZURhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6Mzp7czoxMDoidGl0bGVMYWJlbCI7czoxNzoiRGlzY292ZXIgU3VpdGVDUk0iO3M6MzoidXJsIjtzOjIzOiJodHRwOi8vd3d3LnN1aXRlY3JtLmNvbSI7czo2OiJoZWlnaHQiO2k6MzE1O319czozNjoiZWNiYjc4YzEtOTRmZS1hMDVjLWQwOTctNTUwOTY3MzFlOTA2IjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjE2OiJTdWdhckZlZWREYXNobGV0IjtzOjY6Im1vZHVsZSI7czo5OiJTdWdhckZlZWQiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjE7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjcxOiJjdXN0b20vbW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImYwODBmM2I4LTA2YTItNzhkZC00N2I3LTU1MDk2N2UyODllNSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImYzZTdiYWVkLTVkOWMtN2MxZS0xZmYzLTU1MDk2N2Q0MzNmMSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjMwNTQwNDFmLWUyNDQtNjg0Ny0wMTk0LTU1MDk2NzI0ZDYwMyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNjhhZTAwODQtMzI3Ni1hMzc2LWFmM2MtNTUwOTY3NjM1NjEwIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiOTRkMjAxYmYtMDAxNS1iYjQ1LTcxZWQtNTUwOTY3NjBiYzUxIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjY6e2k6MDtzOjM2OiJlY2I4YTMxYi0xOGZjLTA2OTMtNDc2Ni01NTA5Njc4NzMxYWIiO2k6MTtzOjM2OiJmMDgwZjNiOC0wNmEyLTc4ZGQtNDdiNy01NTA5NjdlMjg5ZTUiO2k6MjtzOjM2OiJmM2U3YmFlZC01ZDljLTdjMWUtMWZmMy01NTA5NjdkNDMzZjEiO2k6MztzOjM2OiIzMDU0MDQxZi1lMjQ0LTY4NDctMDE5NC01NTA5NjcyNGQ2MDMiO2k6NDtzOjM2OiI2OGFlMDA4NC0zMjc2LWEzNzYtYWYzYy01NTA5Njc2MzU2MTAiO2k6NTtzOjM2OiI5NGQyMDFiZi0wMDE1LWJiNDUtNzFlZC01NTA5Njc2MGJjNTEiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6ImVjYmI3OGMxLTk0ZmUtYTA1Yy1kMDk3LTU1MDk2NzMxZTkwNiI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('bead08c7-cc33-0433-db7f-550967bd3f1a','Home2_ACCOUNT',0,'2015-03-18 11:52:59','2015-03-18 11:52:59','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d3590bc3-fcd6-da19-b009-550967450f35','Home2_LEAD',0,'2015-03-18 11:52:59','2015-03-18 11:52:59','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','admin','$6$k.Cz8Vp.$C/.p2IhdhEbUADQUt3RzSG0RdWONOjLbGaJ9KvxbDwBOFDAjuf33cCF/gvC.Jtlwr5/glx9yKEWKcgMn629Gw.',0,NULL,NULL,1,NULL,'Administrator',1,0,1,NULL,'2015-03-18 11:48:13','2015-03-18 11:52:55','1','','Administrator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_feeds`
--

DROP TABLE IF EXISTS `users_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_ud_user_id` (`user_id`,`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_feeds`
--

LOCK TABLES `users_feeds` WRITE;
/*!40000 ALTER TABLE `users_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_last_import`
--

DROP TABLE IF EXISTS `users_last_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_last_import`
--

LOCK TABLES `users_last_import` WRITE;
/*!40000 ALTER TABLE `users_last_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_last_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_password_link`
--

DROP TABLE IF EXISTS `users_password_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_password_link`
--

LOCK TABLES `users_password_link` WRITE;
/*!40000 ALTER TABLE `users_password_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_password_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_signatures`
--

DROP TABLE IF EXISTS `users_signatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text,
  PRIMARY KEY (`id`),
  KEY `idx_usersig_uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_signatures`
--

LOCK TABLES `users_signatures` WRITE;
/*!40000 ALTER TABLE `users_signatures` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_signatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vcals`
--

DROP TABLE IF EXISTS `vcals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `idx_vcal` (`type`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vcals`
--

LOCK TABLES `vcals` WRITE;
/*!40000 ALTER TABLE `vcals` DISABLE KEYS */;
/*!40000 ALTER TABLE `vcals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_version` varchar(255) DEFAULT NULL,
  `db_version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_version` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES ('3895ea9a-d9ca-0117-9161-5509666aa77c',0,'2015-03-18 11:48:36','2015-03-18 11:48:36','1','1','Rebuild Extensions','4.0.0','4.0.0'),('4a870e8a-9c5e-3bcc-08b5-5509667065b3',0,'2015-03-18 11:48:36','2015-03-18 11:48:36','1','1','Rebuild Relationships','4.0.0','4.0.0'),('899f8619-f5fb-3b44-97a5-550966f575aa',0,'2015-03-18 11:48:13','2015-03-18 11:48:13','1','1','Chart Data Cache','3.5.1','3.5.1'),('8cd1082c-82b7-637b-a60d-55096645f0ef',0,'2015-03-18 11:48:13','2015-03-18 11:48:13','1','1','htaccess','3.5.1','3.5.1');
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-18 11:56:55
