-- MySQL dump 10.13  Distrib 5.6.35, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: lara_market
-- ------------------------------------------------------
-- Server version	5.6.35-1+deb.sury.org~trusty+0.1

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
-- Current Database: `lara_market`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `lara_market` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lara_market`;

--
-- Table structure for table `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,0,1,'Index','fa-bar-chart','/',NULL,NULL),(2,0,2,'Admin','fa-tasks','',NULL,NULL),(3,2,3,'Users','fa-users','auth/users',NULL,NULL),(4,2,4,'Roles','fa-user','auth/roles',NULL,NULL),(5,2,5,'Permission','fa-ban','auth/permissions',NULL,NULL),(6,2,6,'Menu','fa-bars','auth/menu',NULL,NULL),(7,2,7,'Operation log','fa-history','auth/logs',NULL,NULL),(8,0,8,'Application','fa-bars',NULL,'2018-09-03 00:20:06','2018-09-03 00:23:29'),(9,8,9,'Units','fa-bars','units','2018-09-03 00:20:27','2018-09-03 00:23:40'),(10,8,10,'Products','fa-bars','products','2018-09-03 00:21:10','2018-09-03 00:23:29'),(11,8,11,'Bazars','fa-bars','bazars','2018-09-03 00:22:38','2018-09-03 00:23:29'),(12,8,12,'Users','fa-bars','auth/users','2018-09-03 00:23:09','2018-09-03 00:23:29'),(13,8,13,'Entries','fa-bars','entries','2018-09-03 00:23:25','2018-09-03 00:23:29'),(14,0,14,'My Bazar','fa-bars',NULL,'2018-09-03 00:37:24','2018-09-03 00:37:51'),(15,14,15,'Entries','fa-bars','entries','2018-09-03 00:37:43','2018-09-03 00:37:51');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_operation_log`
--

DROP TABLE IF EXISTS `admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=408 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_operation_log`
--

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` VALUES (1,2,'admin','GET','127.0.0.1','[]','2018-06-09 06:15:08','2018-06-09 06:15:08'),(2,2,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-09 06:15:21','2018-06-09 06:15:21'),(3,1,'admin','GET','127.0.0.1','[]','2018-06-20 09:08:51','2018-06-20 09:08:51'),(4,1,'admin/entries','GET','127.0.0.1','[]','2018-06-20 09:09:03','2018-06-20 09:09:03'),(5,1,'admin/entries','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-20 09:10:24','2018-06-20 09:10:24'),(6,1,'admin/entries','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-20 09:10:29','2018-06-20 09:10:29'),(7,1,'admin/products','GET','127.0.0.1','[]','2018-06-20 09:10:51','2018-06-20 09:10:51'),(8,1,'admin/bazars','GET','127.0.0.1','[]','2018-06-20 09:10:55','2018-06-20 09:10:55'),(9,1,'admin/bazars','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-20 09:10:58','2018-06-20 09:10:58'),(10,1,'admin/bazars/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-20 09:10:59','2018-06-20 09:10:59'),(11,1,'admin/bazars','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-20 09:11:04','2018-06-20 09:11:04'),(12,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-20 09:11:07','2018-06-20 09:11:07'),(13,1,'admin','GET','127.0.0.1','[]','2018-06-20 09:12:33','2018-06-20 09:12:33'),(14,1,'admin/bazars','GET','127.0.0.1','[]','2018-06-20 09:12:35','2018-06-20 09:12:35'),(15,1,'admin/units','GET','127.0.0.1','[]','2018-06-20 09:13:09','2018-06-20 09:13:09'),(16,1,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-20 09:17:31','2018-06-20 09:17:31'),(17,1,'admin','GET','127.0.0.1','[]','2018-06-20 09:19:19','2018-06-20 09:19:19'),(18,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-20 09:19:21','2018-06-20 09:19:21'),(19,1,'admin','GET','127.0.0.1','[]','2018-06-21 00:04:18','2018-06-21 00:04:18'),(20,1,'admin/bazars','GET','127.0.0.1','[]','2018-06-21 00:04:25','2018-06-21 00:04:25'),(21,1,'admin/bazars','GET','127.0.0.1','[]','2018-06-21 00:04:25','2018-06-21 00:04:25'),(22,1,'admin/bazars/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-21 00:04:28','2018-06-21 00:04:28'),(23,1,'admin/bazars','POST','127.0.0.1','{\"name\":null,\"description\":null,\"latitude\":null,\"longitude\":null,\"active\":\"on\",\"_token\":\"n4ZruAeI5LLEFBX6AaRZUGkaSBDIsv1qG1LnTRbA\",\"_previous_\":\"http:\\/\\/market.local\\/admin\\/bazars\"}','2018-06-21 00:05:01','2018-06-21 00:05:01'),(24,1,'admin/bazars/create','GET','127.0.0.1','[]','2018-06-21 00:05:01','2018-06-21 00:05:01'),(25,1,'admin/bazars/create','GET','127.0.0.1','[]','2018-06-21 00:10:15','2018-06-21 00:10:15'),(26,1,'admin/bazars/create','GET','127.0.0.1','[]','2018-06-21 00:44:06','2018-06-21 00:44:06'),(27,1,'admin/bazars/create','GET','127.0.0.1','[]','2018-06-21 00:49:16','2018-06-21 00:49:16'),(28,1,'admin/bazars/create','GET','127.0.0.1','[]','2018-06-21 00:49:37','2018-06-21 00:49:37'),(29,1,'admin/bazars/create','GET','127.0.0.1','[]','2018-06-21 00:51:04','2018-06-21 00:51:04'),(30,1,'admin/bazars/create','GET','127.0.0.1','[]','2018-06-21 00:51:23','2018-06-21 00:51:23'),(31,1,'admin/bazars/create','GET','127.0.0.1','[]','2018-06-21 00:51:38','2018-06-21 00:51:38'),(32,1,'admin/bazars/create','GET','127.0.0.1','[]','2018-06-21 00:52:32','2018-06-21 00:52:32'),(33,1,'admin/bazars/create','GET','127.0.0.1','[]','2018-06-21 00:53:38','2018-06-21 00:53:38'),(34,1,'admin/bazars/create','GET','127.0.0.1','[]','2018-06-21 00:59:36','2018-06-21 00:59:36'),(35,1,'admin/bazars/create','GET','127.0.0.1','[]','2018-06-21 01:00:26','2018-06-21 01:00:26'),(36,1,'admin/bazars/create','GET','127.0.0.1','[]','2018-06-21 01:00:32','2018-06-21 01:00:32'),(37,1,'admin/bazars/create','GET','127.0.0.1','[]','2018-06-21 01:07:19','2018-06-21 01:07:19'),(38,1,'admin/bazars/create','GET','127.0.0.1','[]','2018-06-21 01:07:24','2018-06-21 01:07:24'),(39,1,'admin/bazars/create','GET','127.0.0.1','[]','2018-06-21 01:07:39','2018-06-21 01:07:39'),(40,1,'admin/bazars/create','GET','127.0.0.1','[]','2018-06-21 01:07:57','2018-06-21 01:07:57'),(41,1,'admin/bazars/create','GET','127.0.0.1','[]','2018-06-21 01:08:17','2018-06-21 01:08:17'),(42,1,'admin/bazars','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-21 01:08:25','2018-06-21 01:08:25'),(43,1,'admin/bazars','GET','127.0.0.1','[]','2018-06-21 01:08:27','2018-06-21 01:08:27'),(44,1,'admin/bazars/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-21 01:08:47','2018-06-21 01:08:47'),(45,1,'admin/bazars','POST','127.0.0.1','{\"name\":\"Mirpur 6 kacha bazar\",\"description\":null,\"latitude\":\"23.7787325\",\"longitude\":\"90.3799474\",\"active\":\"on\",\"_token\":\"n4ZruAeI5LLEFBX6AaRZUGkaSBDIsv1qG1LnTRbA\",\"_previous_\":\"http:\\/\\/market.local\\/admin\\/bazars\"}','2018-06-21 01:09:05','2018-06-21 01:09:05'),(46,1,'admin/bazars','GET','127.0.0.1','[]','2018-06-21 01:09:05','2018-06-21 01:09:05'),(47,1,'admin/bazars/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-21 01:09:07','2018-06-21 01:09:07'),(48,1,'admin/bazars/1/edit','GET','127.0.0.1','[]','2018-06-21 01:09:21','2018-06-21 01:09:21'),(49,1,'admin/bazars/1/edit','GET','127.0.0.1','[]','2018-06-21 01:10:57','2018-06-21 01:10:57'),(50,1,'admin/bazars/1/edit','GET','127.0.0.1','[]','2018-06-21 01:12:35','2018-06-21 01:12:35'),(51,1,'admin/bazars/1/edit','GET','127.0.0.1','[]','2018-06-21 01:12:36','2018-06-21 01:12:36'),(52,1,'admin/bazars/1/edit','GET','127.0.0.1','[]','2018-06-21 01:12:37','2018-06-21 01:12:37'),(53,1,'admin/bazars/1/edit','GET','127.0.0.1','[]','2018-06-21 01:12:37','2018-06-21 01:12:37'),(54,1,'admin/bazars/1/edit','GET','127.0.0.1','[]','2018-06-21 01:12:38','2018-06-21 01:12:38'),(55,1,'admin/bazars/1/edit','GET','127.0.0.1','[]','2018-06-21 01:12:38','2018-06-21 01:12:38'),(56,1,'admin/bazars/1/edit','GET','127.0.0.1','[]','2018-06-21 01:12:38','2018-06-21 01:12:38'),(57,1,'admin/bazars/1/edit','GET','127.0.0.1','[]','2018-06-21 01:12:39','2018-06-21 01:12:39'),(58,1,'admin/bazars/1/edit','GET','127.0.0.1','[]','2018-06-21 01:13:41','2018-06-21 01:13:41'),(59,1,'admin/bazars/1/edit','GET','127.0.0.1','[]','2018-06-21 01:13:42','2018-06-21 01:13:42'),(60,1,'admin/bazars/1/edit','GET','127.0.0.1','[]','2018-06-21 01:13:42','2018-06-21 01:13:42'),(61,1,'admin/bazars/1/edit','GET','127.0.0.1','[]','2018-06-21 01:13:42','2018-06-21 01:13:42'),(62,1,'admin/bazars/1/edit','GET','127.0.0.1','[]','2018-06-21 01:13:43','2018-06-21 01:13:43'),(63,1,'admin/bazars/1/edit','GET','127.0.0.1','[]','2018-06-21 01:13:43','2018-06-21 01:13:43'),(64,1,'admin/bazars/1/edit','GET','127.0.0.1','[]','2018-06-21 01:16:02','2018-06-21 01:16:02'),(65,1,'admin/bazars/1/edit','GET','127.0.0.1','[]','2018-06-21 01:16:20','2018-06-21 01:16:20'),(66,1,'admin/bazars/1/edit','GET','127.0.0.1','[]','2018-06-21 01:16:47','2018-06-21 01:16:47'),(67,1,'admin/bazars/1/edit','GET','127.0.0.1','[]','2018-06-21 01:17:03','2018-06-21 01:17:03'),(68,1,'admin/bazars/1/edit','GET','127.0.0.1','[]','2018-06-21 01:18:09','2018-06-21 01:18:09'),(69,1,'admin/bazars/1','PUT','127.0.0.1','{\"name\":\"Mirpur 6 kacha bazar\",\"description\":null,\"latitude\":\"23.77873250\",\"longitude\":\"90.37994740\",\"active\":\"on\",\"_token\":\"n4ZruAeI5LLEFBX6AaRZUGkaSBDIsv1qG1LnTRbA\",\"_method\":\"PUT\"}','2018-06-21 01:18:34','2018-06-21 01:18:34'),(70,1,'admin/bazars','GET','127.0.0.1','[]','2018-06-21 01:18:34','2018-06-21 01:18:34'),(71,1,'admin/bazars/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-21 01:18:57','2018-06-21 01:18:57'),(72,1,'admin','GET','127.0.0.1','[]','2018-06-25 00:41:37','2018-06-25 00:41:37'),(73,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 00:41:41','2018-06-25 00:41:41'),(74,1,'admin/auth/users/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 00:41:45','2018-06-25 00:41:45'),(75,1,'admin/auth/users/2/edit','GET','127.0.0.1','[]','2018-06-25 01:05:27','2018-06-25 01:05:27'),(76,1,'admin/auth/users/2','PUT','127.0.0.1','{\"latitude\":null,\"longitude\":null,\"username\":\"arif04cuet@gmail.com\",\"name\":\"Arif Hossain\",\"password\":\"$2y$10$8.eINJU4siy0K9J3wLN7BuGG0QCq0QrGVCOKQDzwmEwnO2FtnAlRa\",\"password_confirmation\":\"$2y$10$8.eINJU4siy0K9J3wLN7BuGG0QCq0QrGVCOKQDzwmEwnO2FtnAlRa\",\"roles\":[\"2\",null],\"permissions\":[\"2\",null],\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\",\"_method\":\"PUT\"}','2018-06-25 01:05:44','2018-06-25 01:05:44'),(77,1,'admin/auth/users','GET','127.0.0.1','[]','2018-06-25 01:05:44','2018-06-25 01:05:44'),(78,1,'admin/auth/users/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 01:05:49','2018-06-25 01:05:49'),(79,1,'admin/auth/users/2/edit','GET','127.0.0.1','[]','2018-06-25 01:06:25','2018-06-25 01:06:25'),(80,1,'admin/auth/users/2/edit','GET','127.0.0.1','[]','2018-06-25 01:06:36','2018-06-25 01:06:36'),(81,1,'admin/auth/users/4/edit','GET','127.0.0.1','[]','2018-06-25 01:10:58','2018-06-25 01:10:58'),(82,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 01:32:11','2018-06-25 01:32:11'),(83,1,'admin/auth/users/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 01:32:20','2018-06-25 01:32:20'),(84,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 01:32:32','2018-06-25 01:32:32'),(85,1,'admin/auth/users/10/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 01:32:35','2018-06-25 01:32:35'),(86,1,'admin/auth/users','GET','127.0.0.1','[]','2018-06-25 01:35:03','2018-06-25 01:35:03'),(87,1,'admin/auth/users','GET','127.0.0.1','[]','2018-06-25 01:35:03','2018-06-25 01:35:03'),(88,1,'admin/auth/users','GET','127.0.0.1','[]','2018-06-25 01:35:03','2018-06-25 01:35:03'),(89,1,'admin/auth/users','GET','127.0.0.1','[]','2018-06-25 01:35:04','2018-06-25 01:35:04'),(90,1,'admin/auth/users/10','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 01:35:27','2018-06-25 01:35:27'),(91,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 01:35:28','2018-06-25 01:35:28'),(92,1,'admin/auth/users/10','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 01:35:32','2018-06-25 01:35:32'),(93,1,'admin/auth/users/10','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 01:35:34','2018-06-25 01:35:34'),(94,1,'admin/auth/users/10','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 01:35:35','2018-06-25 01:35:35'),(95,1,'admin/auth/users/10','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 01:35:35','2018-06-25 01:35:35'),(96,1,'admin/auth/users/10','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 01:35:36','2018-06-25 01:35:36'),(97,1,'admin/auth/users/10','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 01:35:36','2018-06-25 01:35:36'),(98,1,'admin/auth/users/10','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 01:35:36','2018-06-25 01:35:36'),(99,1,'admin/auth/users/10','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 01:35:36','2018-06-25 01:35:36'),(100,1,'admin/auth/users/10','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 01:35:40','2018-06-25 01:35:40'),(101,1,'admin/auth/users','GET','127.0.0.1','[]','2018-06-25 01:35:42','2018-06-25 01:35:42'),(102,1,'admin/auth/users/9','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 01:35:45','2018-06-25 01:35:45'),(103,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 01:35:45','2018-06-25 01:35:45'),(104,1,'admin/auth/users/9','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 01:35:50','2018-06-25 01:35:50'),(105,1,'admin/auth/users/9','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 01:35:51','2018-06-25 01:35:51'),(106,1,'admin/auth/users/9','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 01:35:51','2018-06-25 01:35:51'),(107,1,'admin/auth/users/9','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 01:35:51','2018-06-25 01:35:51'),(108,1,'admin/auth/users/9','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 01:35:52','2018-06-25 01:35:52'),(109,1,'admin/auth/users','GET','127.0.0.1','[]','2018-06-25 01:35:52','2018-06-25 01:35:52'),(110,1,'admin/auth/users/8','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 01:35:58','2018-06-25 01:35:58'),(111,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 01:35:58','2018-06-25 01:35:58'),(112,1,'admin/auth/users/8','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 02:29:18','2018-06-25 02:29:18'),(113,1,'admin/auth/users','GET','127.0.0.1','[]','2018-06-25 02:29:21','2018-06-25 02:29:21'),(114,1,'admin/auth/users/7','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 02:29:24','2018-06-25 02:29:24'),(115,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 02:29:24','2018-06-25 02:29:24'),(116,1,'admin/auth/users/7','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 02:29:49','2018-06-25 02:29:49'),(117,1,'admin/auth/users/7','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 02:29:55','2018-06-25 02:29:55'),(118,1,'admin/auth/users','GET','127.0.0.1','[]','2018-06-25 02:30:02','2018-06-25 02:30:02'),(119,1,'admin/auth/users/6','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 02:30:08','2018-06-25 02:30:08'),(120,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 02:30:09','2018-06-25 02:30:09'),(121,1,'admin/auth/users','GET','127.0.0.1','[]','2018-06-25 02:30:35','2018-06-25 02:30:35'),(122,1,'admin/auth/users/3','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 02:30:48','2018-06-25 02:30:48'),(123,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 02:30:50','2018-06-25 02:30:50'),(124,1,'admin/auth/users','GET','127.0.0.1','[]','2018-06-25 02:30:56','2018-06-25 02:30:56'),(125,1,'admin/auth/users/2','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 02:31:05','2018-06-25 02:31:05'),(126,1,'admin/auth/users/2','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 02:31:07','2018-06-25 02:31:07'),(127,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 02:31:07','2018-06-25 02:31:07'),(128,1,'admin/auth/users','GET','127.0.0.1','[]','2018-06-25 02:31:21','2018-06-25 02:31:21'),(129,1,'admin/auth/users','GET','127.0.0.1','[]','2018-06-25 02:31:21','2018-06-25 02:31:21'),(130,1,'admin/auth/users','GET','127.0.0.1','[]','2018-06-25 02:31:26','2018-06-25 02:31:26'),(131,1,'admin/auth/users/5','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 02:31:45','2018-06-25 02:31:45'),(132,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 02:31:48','2018-06-25 02:31:48'),(133,1,'admin/auth/users/4/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 02:31:52','2018-06-25 02:31:52'),(134,1,'admin/auth/users/4/edit','GET','127.0.0.1','[]','2018-06-25 02:32:09','2018-06-25 02:32:09'),(135,1,'admin','GET','127.0.0.1','[]','2018-06-25 02:50:03','2018-06-25 02:50:03'),(136,1,'admin','GET','127.0.0.1','[]','2018-06-25 02:50:22','2018-06-25 02:50:22'),(137,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 02:50:27','2018-06-25 02:50:27'),(138,1,'admin/auth/users/4/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 02:50:32','2018-06-25 02:50:32'),(139,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 02:51:27','2018-06-25 02:51:27'),(140,1,'admin/auth/users/4','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\"}','2018-06-25 02:51:31','2018-06-25 02:51:31'),(141,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 02:51:31','2018-06-25 02:51:31'),(142,1,'admin','GET','127.0.0.1','[]','2018-06-25 02:51:37','2018-06-25 02:51:37'),(143,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 02:52:39','2018-06-25 02:52:39'),(144,1,'admin/auth/users/5/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 02:52:53','2018-06-25 02:52:53'),(145,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 02:53:35','2018-06-25 02:53:35'),(146,1,'admin','GET','127.0.0.1','[]','2018-06-25 02:55:02','2018-06-25 02:55:02'),(147,1,'admin/bazars','GET','127.0.0.1','[]','2018-06-25 02:55:09','2018-06-25 02:55:09'),(148,1,'admin/bazars/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 02:55:13','2018-06-25 02:55:13'),(149,1,'admin/bazars/1','PUT','127.0.0.1','{\"name\":\"Mirpur 6 kacha bazar\",\"description\":null,\"latitude\":\"23.8110474\",\"longitude\":\"90.3641711\",\"active\":\"on\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/market.local\\/admin\\/bazars\"}','2018-06-25 02:55:39','2018-06-25 02:55:39'),(150,1,'admin/bazars','GET','127.0.0.1','[]','2018-06-25 02:55:39','2018-06-25 02:55:39'),(151,1,'admin/bazars/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 02:55:45','2018-06-25 02:55:45'),(152,1,'admin/bazars/1/edit','GET','127.0.0.1','[]','2018-06-25 02:56:10','2018-06-25 02:56:10'),(153,1,'admin/bazars','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 02:56:18','2018-06-25 02:56:18'),(154,1,'admin/bazars/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 02:56:21','2018-06-25 02:56:21'),(155,1,'admin/bazars','POST','127.0.0.1','{\"name\":\"Kawran Bazar Kacha Bazar\",\"description\":null,\"latitude\":null,\"longitude\":null,\"active\":\"on\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\",\"_previous_\":\"http:\\/\\/market.local\\/admin\\/bazars\"}','2018-06-25 02:57:10','2018-06-25 02:57:10'),(156,1,'admin/bazars','GET','127.0.0.1','[]','2018-06-25 02:57:10','2018-06-25 02:57:10'),(157,1,'admin/bazars/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 02:57:13','2018-06-25 02:57:13'),(158,1,'admin/bazars','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 02:57:20','2018-06-25 02:57:20'),(159,1,'admin/bazars/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 02:57:23','2018-06-25 02:57:23'),(160,1,'admin/bazars','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 02:57:26','2018-06-25 02:57:26'),(161,1,'admin/bazars/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 02:57:28','2018-06-25 02:57:28'),(162,1,'admin/bazars/2','PUT','127.0.0.1','{\"name\":\"Kawran Bazar Kacha Bazar\",\"description\":null,\"latitude\":null,\"longitude\":null,\"active\":\"on\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/market.local\\/admin\\/bazars\"}','2018-06-25 02:57:45','2018-06-25 02:57:45'),(163,1,'admin/bazars','GET','127.0.0.1','[]','2018-06-25 02:57:45','2018-06-25 02:57:45'),(164,1,'admin/bazars/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 02:57:48','2018-06-25 02:57:48'),(165,1,'admin/bazars/2/edit','GET','127.0.0.1','[]','2018-06-25 03:01:15','2018-06-25 03:01:15'),(166,1,'admin/bazars/2','PUT','127.0.0.1','{\"name\":\"Kawran Bazar Kacha Bazar\",\"description\":null,\"latitude\":\"23.7527879\",\"longitude\":\"90.3926104\",\"active\":\"on\",\"_token\":\"E7GFQmeRwGie7GBv7YTUKWy8Sga910et1YHCPaer\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/market.local\\/admin\\/bazars\\/1\\/edit\"}','2018-06-25 03:01:32','2018-06-25 03:01:32'),(167,1,'admin/bazars/1/edit','GET','127.0.0.1','[]','2018-06-25 03:01:32','2018-06-25 03:01:32'),(168,1,'admin/bazars','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 03:01:36','2018-06-25 03:01:36'),(169,1,'admin/bazars/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 03:01:38','2018-06-25 03:01:38'),(170,1,'admin','GET','127.0.0.1','[]','2018-06-25 03:16:02','2018-06-25 03:16:02'),(171,1,'admin','GET','127.0.0.1','[]','2018-06-25 03:16:04','2018-06-25 03:16:04'),(172,1,'admin','GET','127.0.0.1','[]','2018-06-25 03:16:39','2018-06-25 03:16:39'),(173,1,'admin','GET','127.0.0.1','[]','2018-06-25 03:16:51','2018-06-25 03:16:51'),(174,1,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 03:16:55','2018-06-25 03:16:55'),(175,1,'admin','GET','127.0.0.1','[]','2018-06-25 03:57:34','2018-06-25 03:57:34'),(176,1,'admin/entries','GET','127.0.0.1','[]','2018-06-25 03:57:38','2018-06-25 03:57:38'),(177,1,'admin/entries/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 03:57:41','2018-06-25 03:57:41'),(178,1,'admin/entries/create','GET','127.0.0.1','[]','2018-06-25 03:58:17','2018-06-25 03:58:17'),(179,1,'admin/entries/create','GET','127.0.0.1','[]','2018-06-25 04:08:36','2018-06-25 04:08:36'),(180,1,'admin/entries/create','GET','127.0.0.1','[]','2018-06-25 04:08:50','2018-06-25 04:08:50'),(181,1,'admin/entries','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-06-25 04:09:12','2018-06-25 04:09:12'),(182,5,'admin','GET','127.0.0.1','[]','2018-07-30 08:06:18','2018-07-30 08:06:18'),(183,5,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-30 08:06:30','2018-07-30 08:06:30'),(184,5,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-30 08:06:36','2018-07-30 08:06:36'),(185,5,'admin/auth/logout','GET','127.0.0.1','[]','2018-07-30 08:06:43','2018-07-30 08:06:43'),(186,5,'admin/auth/login','GET','127.0.0.1','[]','2018-07-30 08:06:55','2018-07-30 08:06:55'),(187,5,'admin/auth/logout','GET','127.0.0.1','[]','2018-07-30 08:07:53','2018-07-30 08:07:53'),(188,5,'admin/auth/setting','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-07-30 08:08:12','2018-07-30 08:08:12'),(189,5,'admin','GET','127.0.0.1','[]','2018-09-02 23:50:12','2018-09-02 23:50:12'),(190,5,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-02 23:50:20','2018-09-02 23:50:20'),(191,5,'admin/auth/logout','GET','127.0.0.1','[]','2018-09-03 00:05:09','2018-09-03 00:05:09'),(192,5,'admin/auth/logout','GET','127.0.0.1','[]','2018-09-03 00:07:26','2018-09-03 00:07:26'),(193,5,'admin','GET','127.0.0.1','[]','2018-09-03 00:07:33','2018-09-03 00:07:33'),(194,5,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:07:37','2018-09-03 00:07:37'),(195,1,'admin','GET','127.0.0.1','[]','2018-09-03 00:08:34','2018-09-03 00:08:34'),(196,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:08:40','2018-09-03 00:08:40'),(197,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:08:43','2018-09-03 00:08:43'),(198,1,'admin/auth/roles/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:08:47','2018-09-03 00:08:47'),(199,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:09:08','2018-09-03 00:09:08'),(200,1,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:10:14','2018-09-03 00:10:14'),(201,5,'admin','GET','127.0.0.1','[]','2018-09-03 00:10:22','2018-09-03 00:10:22'),(202,5,'admin/auth/setting','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:10:27','2018-09-03 00:10:27'),(203,5,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:10:33','2018-09-03 00:10:33'),(204,1,'admin','GET','127.0.0.1','[]','2018-09-03 00:10:38','2018-09-03 00:10:38'),(205,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:10:43','2018-09-03 00:10:43'),(206,1,'admin/auth/roles/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:10:47','2018-09-03 00:10:47'),(207,1,'admin/auth/roles/2','PUT','127.0.0.1','{\"slug\":\"consumer\",\"name\":\"Consumer\",\"permissions\":[\"2\",\"3\",\"4\",null],\"_token\":\"TAfslWcPP8Pru27Kki8Io5lt1zfoSgO8np8W92Xa\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/market.local\\/admin\\/auth\\/roles\"}','2018-09-03 00:10:54','2018-09-03 00:10:54'),(208,1,'admin/auth/roles','GET','127.0.0.1','[]','2018-09-03 00:10:54','2018-09-03 00:10:54'),(209,1,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:11:00','2018-09-03 00:11:00'),(210,5,'admin','GET','127.0.0.1','[]','2018-09-03 00:11:07','2018-09-03 00:11:07'),(211,5,'admin/auth/setting','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:11:12','2018-09-03 00:11:12'),(212,5,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:11:22','2018-09-03 00:11:22'),(213,1,'admin','GET','127.0.0.1','[]','2018-09-03 00:11:27','2018-09-03 00:11:27'),(214,1,'admin/auth/setting','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:11:31','2018-09-03 00:11:31'),(215,1,'admin/auth/setting','PUT','127.0.0.1','{\"name\":\"Administrator\",\"password\":\"admin123\",\"password_confirmation\":\"admin123\",\"_token\":\"JHwca0yPSVx1WvMJrxstm7LQctenos9DZXLgb4KL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/market.local\\/admin\"}','2018-09-03 00:11:44','2018-09-03 00:11:44'),(216,1,'admin/auth/setting','GET','127.0.0.1','[]','2018-09-03 00:11:44','2018-09-03 00:11:44'),(217,1,'admin/auth/setting','PUT','127.0.0.1','{\"name\":\"Administrator\",\"password\":\"$2y$10$0ztpidiMiw6DbslOYi55uuo0WOdmD42YyQZJj.aHxEiQDqIaZ0He2\",\"password_confirmation\":\"$2y$10$0ztpidiMiw6DbslOYi55uuo0WOdmD42YyQZJj.aHxEiQDqIaZ0He2\",\"_token\":\"JHwca0yPSVx1WvMJrxstm7LQctenos9DZXLgb4KL\",\"_method\":\"PUT\"}','2018-09-03 00:12:00','2018-09-03 00:12:00'),(218,1,'admin/auth/setting','GET','127.0.0.1','[]','2018-09-03 00:12:02','2018-09-03 00:12:02'),(219,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:12:31','2018-09-03 00:12:31'),(220,1,'admin/bazars','GET','127.0.0.1','[]','2018-09-03 00:13:18','2018-09-03 00:13:18'),(221,1,'admin/bazars','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:13:22','2018-09-03 00:13:22'),(222,1,'admin/bazars/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:13:24','2018-09-03 00:13:24'),(223,1,'admin/auth/setting','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:13:50','2018-09-03 00:13:50'),(224,1,'admin/auth/users','GET','127.0.0.1','[]','2018-09-03 00:14:02','2018-09-03 00:14:02'),(225,1,'admin/auth/users/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:14:05','2018-09-03 00:14:05'),(226,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:14:20','2018-09-03 00:14:20'),(227,1,'admin/auth/users/5/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:14:23','2018-09-03 00:14:23'),(228,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:14:37','2018-09-03 00:14:37'),(229,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:19:07','2018-09-03 00:19:07'),(230,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"Application\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"JHwca0yPSVx1WvMJrxstm7LQctenos9DZXLgb4KL\"}','2018-09-03 00:20:06','2018-09-03 00:20:06'),(231,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-09-03 00:20:06','2018-09-03 00:20:06'),(232,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"8\",\"title\":\"Unit\",\"icon\":\"fa-bars\",\"uri\":\"units\",\"roles\":[\"1\",null],\"_token\":\"JHwca0yPSVx1WvMJrxstm7LQctenos9DZXLgb4KL\"}','2018-09-03 00:20:27','2018-09-03 00:20:27'),(233,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-09-03 00:20:27','2018-09-03 00:20:27'),(234,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"8\",\"title\":\"Products\",\"icon\":\"fa-bars\",\"uri\":\"products\",\"roles\":[\"1\",null],\"_token\":\"JHwca0yPSVx1WvMJrxstm7LQctenos9DZXLgb4KL\"}','2018-09-03 00:21:10','2018-09-03 00:21:10'),(235,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-09-03 00:21:10','2018-09-03 00:21:10'),(236,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"8\",\"title\":\"Bazars\",\"icon\":\"fa-bars\",\"uri\":\"bazars\",\"roles\":[\"1\",null],\"_token\":\"JHwca0yPSVx1WvMJrxstm7LQctenos9DZXLgb4KL\"}','2018-09-03 00:22:38','2018-09-03 00:22:38'),(237,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-09-03 00:22:38','2018-09-03 00:22:38'),(238,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"8\",\"title\":\"Users\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/users\",\"roles\":[\"1\",null],\"_token\":\"JHwca0yPSVx1WvMJrxstm7LQctenos9DZXLgb4KL\"}','2018-09-03 00:23:09','2018-09-03 00:23:09'),(239,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-09-03 00:23:09','2018-09-03 00:23:09'),(240,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"8\",\"title\":\"Entries\",\"icon\":\"fa-bars\",\"uri\":\"entries\",\"roles\":[\"1\",null],\"_token\":\"JHwca0yPSVx1WvMJrxstm7LQctenos9DZXLgb4KL\"}','2018-09-03 00:23:25','2018-09-03 00:23:25'),(241,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-09-03 00:23:25','2018-09-03 00:23:25'),(242,1,'admin/auth/menu','POST','127.0.0.1','{\"_token\":\"JHwca0yPSVx1WvMJrxstm7LQctenos9DZXLgb4KL\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":13}]}]\"}','2018-09-03 00:23:29','2018-09-03 00:23:29'),(243,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:23:29','2018-09-03 00:23:29'),(244,1,'admin/auth/menu/9/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:23:33','2018-09-03 00:23:33'),(245,1,'admin/auth/menu/9','PUT','127.0.0.1','{\"parent_id\":\"8\",\"title\":\"Units\",\"icon\":\"fa-bars\",\"uri\":\"units\",\"roles\":[\"1\",null],\"_token\":\"JHwca0yPSVx1WvMJrxstm7LQctenos9DZXLgb4KL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/market.local\\/admin\\/auth\\/menu\"}','2018-09-03 00:23:40','2018-09-03 00:23:40'),(246,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-09-03 00:23:40','2018-09-03 00:23:40'),(247,1,'admin/auth/menu','POST','127.0.0.1','{\"_token\":\"JHwca0yPSVx1WvMJrxstm7LQctenos9DZXLgb4KL\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":13}]}]\"}','2018-09-03 00:23:43','2018-09-03 00:23:43'),(248,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:23:43','2018-09-03 00:23:43'),(249,1,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:23:49','2018-09-03 00:23:49'),(250,1,'admin','GET','127.0.0.1','[]','2018-09-03 00:23:56','2018-09-03 00:23:56'),(251,1,'admin/units','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:23:59','2018-09-03 00:23:59'),(252,1,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:24:01','2018-09-03 00:24:01'),(253,1,'admin/bazars','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:24:05','2018-09-03 00:24:05'),(254,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:24:08','2018-09-03 00:24:08'),(255,1,'admin/entries','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:24:10','2018-09-03 00:24:10'),(256,1,'admin/entries','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:24:22','2018-09-03 00:24:22'),(257,1,'admin/units','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:24:29','2018-09-03 00:24:29'),(258,1,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:24:34','2018-09-03 00:24:34'),(259,1,'admin/bazars','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:24:36','2018-09-03 00:24:36'),(260,1,'admin/bazars/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:24:40','2018-09-03 00:24:40'),(261,1,'admin/bazars','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:25:22','2018-09-03 00:25:22'),(262,1,'admin/bazars/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:25:24','2018-09-03 00:25:24'),(263,1,'admin/bazars','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:26:22','2018-09-03 00:26:22'),(264,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:26:29','2018-09-03 00:26:29'),(265,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:27:06','2018-09-03 00:27:06'),(266,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:27:07','2018-09-03 00:27:07'),(267,1,'admin/auth/setting','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:27:54','2018-09-03 00:27:54'),(268,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:27:58','2018-09-03 00:27:58'),(269,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:28:08','2018-09-03 00:28:08'),(270,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:28:15','2018-09-03 00:28:15'),(271,1,'admin/auth/permissions/5/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:28:32','2018-09-03 00:28:32'),(272,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:28:48','2018-09-03 00:28:48'),(273,1,'admin/entries','GET','127.0.0.1','[]','2018-09-03 00:28:56','2018-09-03 00:28:56'),(274,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:29:18','2018-09-03 00:29:18'),(275,1,'admin/auth/permissions','POST','127.0.0.1','{\"slug\":\"entries\",\"name\":\"Bazat Entry Management\",\"http_method\":[null],\"http_path\":\"entries*\",\"_token\":\"qcNWYV1EdjiZHMn90216rMDjm7K8sCScCh4ZYdG2\",\"_previous_\":\"http:\\/\\/market.local\\/admin\\/auth\\/permissions\"}','2018-09-03 00:29:53','2018-09-03 00:29:53'),(276,1,'admin/auth/permissions','GET','127.0.0.1','[]','2018-09-03 00:29:53','2018-09-03 00:29:53'),(277,1,'admin/auth/permissions/6/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:30:04','2018-09-03 00:30:04'),(278,1,'admin/auth/permissions/6','PUT','127.0.0.1','{\"slug\":\"entries\",\"name\":\"Bazat Entry Management\",\"http_method\":[null],\"http_path\":\"\\/entries*\",\"_token\":\"qcNWYV1EdjiZHMn90216rMDjm7K8sCScCh4ZYdG2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/market.local\\/admin\\/auth\\/permissions\"}','2018-09-03 00:30:09','2018-09-03 00:30:09'),(279,1,'admin/auth/permissions','GET','127.0.0.1','[]','2018-09-03 00:30:09','2018-09-03 00:30:09'),(280,1,'admin/auth/permissions/6/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:32:10','2018-09-03 00:32:10'),(281,1,'admin/auth/permissions/6','PUT','127.0.0.1','{\"slug\":\"consumer\",\"name\":\"Consumer\",\"http_method\":[null],\"http_path\":\"\\/entries*\\r\\n\\/auth\\/login\\r\\n\\/auth\\/logout\\r\\n\\/auth\\/setting\",\"_token\":\"qcNWYV1EdjiZHMn90216rMDjm7K8sCScCh4ZYdG2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/market.local\\/admin\\/auth\\/permissions\"}','2018-09-03 00:32:57','2018-09-03 00:32:57'),(282,1,'admin/auth/permissions','GET','127.0.0.1','[]','2018-09-03 00:32:57','2018-09-03 00:32:57'),(283,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:33:08','2018-09-03 00:33:08'),(284,1,'admin/auth/roles/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:33:11','2018-09-03 00:33:11'),(285,1,'admin/auth/roles/2','PUT','127.0.0.1','{\"slug\":\"consumer\",\"name\":\"Consumer\",\"permissions\":[\"6\",null],\"_token\":\"qcNWYV1EdjiZHMn90216rMDjm7K8sCScCh4ZYdG2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/market.local\\/admin\\/auth\\/roles\"}','2018-09-03 00:33:25','2018-09-03 00:33:25'),(286,1,'admin/auth/roles','GET','127.0.0.1','[]','2018-09-03 00:33:26','2018-09-03 00:33:26'),(287,1,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:34:06','2018-09-03 00:34:06'),(288,5,'admin','GET','127.0.0.1','[]','2018-09-03 00:34:14','2018-09-03 00:34:14'),(289,5,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:34:19','2018-09-03 00:34:19'),(290,5,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:35:59','2018-09-03 00:35:59'),(291,1,'admin','GET','127.0.0.1','[]','2018-09-03 00:36:04','2018-09-03 00:36:04'),(292,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:36:28','2018-09-03 00:36:28'),(293,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"My Bazar\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[\"1\",\"2\",null],\"_token\":\"TC6qo5woX3oPcZk0chIqVtwsx02lAvpGjtMjm8pB\"}','2018-09-03 00:37:24','2018-09-03 00:37:24'),(294,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-09-03 00:37:24','2018-09-03 00:37:24'),(295,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"14\",\"title\":\"Entries\",\"icon\":\"fa-bars\",\"uri\":\"entries\",\"roles\":[\"1\",\"2\",null],\"_token\":\"TC6qo5woX3oPcZk0chIqVtwsx02lAvpGjtMjm8pB\"}','2018-09-03 00:37:43','2018-09-03 00:37:43'),(296,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-09-03 00:37:44','2018-09-03 00:37:44'),(297,1,'admin/auth/menu','POST','127.0.0.1','{\"_token\":\"TC6qo5woX3oPcZk0chIqVtwsx02lAvpGjtMjm8pB\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":13}]},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":15}]}]\"}','2018-09-03 00:37:51','2018-09-03 00:37:51'),(298,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:37:51','2018-09-03 00:37:51'),(299,1,'admin/auth/menu','POST','127.0.0.1','{\"_token\":\"TC6qo5woX3oPcZk0chIqVtwsx02lAvpGjtMjm8pB\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":13}]},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":15}]}]\"}','2018-09-03 00:38:01','2018-09-03 00:38:01'),(300,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:38:01','2018-09-03 00:38:01'),(301,1,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:38:05','2018-09-03 00:38:05'),(302,5,'admin','GET','127.0.0.1','[]','2018-09-03 00:38:12','2018-09-03 00:38:12'),(303,5,'admin/entries','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:38:15','2018-09-03 00:38:15'),(304,5,'admin/entries/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:38:18','2018-09-03 00:38:18'),(305,1,'admin/entries/create','GET','127.0.0.1','[]','2018-09-03 00:39:00','2018-09-03 00:39:00'),(306,1,'admin/units','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:39:08','2018-09-03 00:39:08'),(307,1,'admin/units/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:39:10','2018-09-03 00:39:10'),(308,1,'admin/units','POST','127.0.0.1','{\"name\":\"Kg\",\"_token\":\"UxHgpNxpBPjnj82Hba9X96yOYb5iB6KLbCE5M0j9\",\"_previous_\":\"http:\\/\\/market.local\\/admin\\/units\"}','2018-09-03 00:39:16','2018-09-03 00:39:16'),(309,1,'admin/units','GET','127.0.0.1','[]','2018-09-03 00:39:16','2018-09-03 00:39:16'),(310,1,'admin/units/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:39:18','2018-09-03 00:39:18'),(311,1,'admin/units','POST','127.0.0.1','{\"name\":\"gm\",\"_token\":\"UxHgpNxpBPjnj82Hba9X96yOYb5iB6KLbCE5M0j9\",\"_previous_\":\"http:\\/\\/market.local\\/admin\\/units\"}','2018-09-03 00:39:30','2018-09-03 00:39:30'),(312,1,'admin/units','GET','127.0.0.1','[]','2018-09-03 00:39:30','2018-09-03 00:39:30'),(313,1,'admin/units/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:39:31','2018-09-03 00:39:31'),(314,1,'admin/units','POST','127.0.0.1','{\"name\":\"Ti\",\"_token\":\"UxHgpNxpBPjnj82Hba9X96yOYb5iB6KLbCE5M0j9\",\"_previous_\":\"http:\\/\\/market.local\\/admin\\/units\"}','2018-09-03 00:40:21','2018-09-03 00:40:21'),(315,1,'admin/units','GET','127.0.0.1','[]','2018-09-03 00:40:21','2018-09-03 00:40:21'),(316,1,'admin/units','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:40:33','2018-09-03 00:40:33'),(317,1,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:40:43','2018-09-03 00:40:43'),(318,1,'admin/bazars','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:40:46','2018-09-03 00:40:46'),(319,1,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:40:48','2018-09-03 00:40:48'),(320,1,'admin/products','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"Rice\",\"unit_id\":\"1\",\"default_price\":null,\"active\":\"on\",\"_token\":\"UxHgpNxpBPjnj82Hba9X96yOYb5iB6KLbCE5M0j9\"}','2018-09-03 00:41:26','2018-09-03 00:41:26'),(321,1,'admin/products','GET','127.0.0.1','[]','2018-09-03 00:41:26','2018-09-03 00:41:26'),(322,1,'admin/products','POST','127.0.0.1','{\"parent_id\":\"1\",\"title\":\"Minicate\",\"unit_id\":\"1\",\"default_price\":\"64\",\"active\":\"on\",\"_token\":\"UxHgpNxpBPjnj82Hba9X96yOYb5iB6KLbCE5M0j9\"}','2018-09-03 00:41:47','2018-09-03 00:41:47'),(323,1,'admin/products','GET','127.0.0.1','[]','2018-09-03 00:41:47','2018-09-03 00:41:47'),(324,1,'admin/products','POST','127.0.0.1','{\"parent_id\":\"1\",\"title\":\"Najirshail\",\"unit_id\":\"1\",\"default_price\":\"60\",\"active\":\"on\",\"_token\":\"UxHgpNxpBPjnj82Hba9X96yOYb5iB6KLbCE5M0j9\"}','2018-09-03 00:42:12','2018-09-03 00:42:12'),(325,1,'admin/products','GET','127.0.0.1','[]','2018-09-03 00:42:12','2018-09-03 00:42:12'),(326,1,'admin/products','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"Fish\",\"unit_id\":\"1\",\"default_price\":\"0\",\"active\":\"on\",\"_token\":\"UxHgpNxpBPjnj82Hba9X96yOYb5iB6KLbCE5M0j9\"}','2018-09-03 00:42:28','2018-09-03 00:42:28'),(327,1,'admin/products','GET','127.0.0.1','[]','2018-09-03 00:42:28','2018-09-03 00:42:28'),(328,1,'admin/products','POST','127.0.0.1','{\"parent_id\":\"4\",\"title\":\"Ilish\",\"unit_id\":\"1\",\"default_price\":\"800\",\"active\":\"on\",\"_token\":\"UxHgpNxpBPjnj82Hba9X96yOYb5iB6KLbCE5M0j9\"}','2018-09-03 00:44:54','2018-09-03 00:44:54'),(329,1,'admin/products','GET','127.0.0.1','[]','2018-09-03 00:44:54','2018-09-03 00:44:54'),(330,1,'admin/products','POST','127.0.0.1','{\"parent_id\":\"4\",\"title\":\"Roi\",\"unit_id\":\"1\",\"default_price\":\"300\",\"active\":\"on\",\"_token\":\"UxHgpNxpBPjnj82Hba9X96yOYb5iB6KLbCE5M0j9\"}','2018-09-03 00:47:17','2018-09-03 00:47:17'),(331,1,'admin/products','GET','127.0.0.1','[]','2018-09-03 00:47:17','2018-09-03 00:47:17'),(332,1,'admin/products','POST','127.0.0.1','{\"_token\":\"UxHgpNxpBPjnj82Hba9X96yOYb5iB6KLbCE5M0j9\",\"_order\":\"[{\\\"id\\\":1,\\\"children\\\":[{\\\"id\\\":2},{\\\"id\\\":3}]},{\\\"id\\\":4,\\\"children\\\":[{\\\"id\\\":5},{\\\"id\\\":6}]}]\"}','2018-09-03 00:47:23','2018-09-03 00:47:23'),(333,1,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:47:23','2018-09-03 00:47:23'),(334,5,'admin/entries/create','GET','127.0.0.1','[]','2018-09-03 00:47:52','2018-09-03 00:47:52'),(335,5,'admin/entries','POST','127.0.0.1','{\"entry_date\":\"2018-09-03\",\"user_id\":\"5\",\"items\":{\"new_1\":{\"product_id\":\"2\",\"unit_price\":\"64\",\"amount\":\"4\",\"bazar_id\":\"1\",\"total\":\"64\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"product_id\":\"5\",\"unit_price\":\"800\",\"amount\":\"5\",\"bazar_id\":\"1\",\"total\":\"4000\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"HU6lDPpDK3q72OteikQJZ5SdgaYF6owaDqcpjxs2\"}','2018-09-03 00:54:50','2018-09-03 00:54:50'),(336,5,'admin/entries','GET','127.0.0.1','[]','2018-09-03 00:54:50','2018-09-03 00:54:50'),(337,5,'admin/entries','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:55:00','2018-09-03 00:55:00'),(338,5,'admin/entries','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 00:55:12','2018-09-03 00:55:12'),(339,5,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 01:01:24','2018-09-03 01:01:24'),(340,5,'admin/entries','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 01:06:52','2018-09-03 01:06:52'),(341,5,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 01:06:55','2018-09-03 01:06:55'),(342,5,'admin/auth/setting','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 01:07:01','2018-09-03 01:07:01'),(343,5,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 01:07:06','2018-09-03 01:07:06'),(344,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 01:08:10','2018-09-03 01:08:10'),(345,1,'admin/auth/roles/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 01:08:13','2018-09-03 01:08:13'),(346,1,'admin/auth/roles/2','PUT','127.0.0.1','{\"slug\":\"consumer\",\"name\":\"Consumer\",\"permissions\":[\"2\",\"6\",null],\"_token\":\"UxHgpNxpBPjnj82Hba9X96yOYb5iB6KLbCE5M0j9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/market.local\\/admin\\/auth\\/roles\"}','2018-09-03 01:08:19','2018-09-03 01:08:19'),(347,1,'admin/auth/roles','GET','127.0.0.1','[]','2018-09-03 01:08:19','2018-09-03 01:08:19'),(348,5,'admin','GET','127.0.0.1','[]','2018-09-03 01:12:45','2018-09-03 01:12:45'),(349,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:02:12','2018-09-03 03:02:12'),(350,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:14:06','2018-09-03 03:14:06'),(351,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:14:36','2018-09-03 03:14:36'),(352,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:17:17','2018-09-03 03:17:17'),(353,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:17:20','2018-09-03 03:17:20'),(354,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:17:20','2018-09-03 03:17:20'),(355,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:17:20','2018-09-03 03:17:20'),(356,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:17:20','2018-09-03 03:17:20'),(357,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:17:30','2018-09-03 03:17:30'),(358,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:17:36','2018-09-03 03:17:36'),(359,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:17:36','2018-09-03 03:17:36'),(360,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:17:36','2018-09-03 03:17:36'),(361,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:17:37','2018-09-03 03:17:37'),(362,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:17:37','2018-09-03 03:17:37'),(363,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:18:14','2018-09-03 03:18:14'),(364,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:18:21','2018-09-03 03:18:21'),(365,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:18:34','2018-09-03 03:18:34'),(366,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:18:58','2018-09-03 03:18:58'),(367,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:22:45','2018-09-03 03:22:45'),(368,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:22:45','2018-09-03 03:22:45'),(369,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:22:46','2018-09-03 03:22:46'),(370,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:22:46','2018-09-03 03:22:46'),(371,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:22:46','2018-09-03 03:22:46'),(372,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:22:46','2018-09-03 03:22:46'),(373,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:23:02','2018-09-03 03:23:02'),(374,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:23:15','2018-09-03 03:23:15'),(375,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:25:53','2018-09-03 03:25:53'),(376,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:26:48','2018-09-03 03:26:48'),(377,5,'admin/entries','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 03:28:00','2018-09-03 03:28:00'),(378,5,'admin/entries','GET','127.0.0.1','[]','2018-09-03 03:30:52','2018-09-03 03:30:52'),(379,5,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 03:30:54','2018-09-03 03:30:54'),(380,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:32:26','2018-09-03 03:32:26'),(381,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:34:49','2018-09-03 03:34:49'),(382,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:37:26','2018-09-03 03:37:26'),(383,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:43:19','2018-09-03 03:43:19'),(384,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:43:34','2018-09-03 03:43:34'),(385,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:43:59','2018-09-03 03:43:59'),(386,5,'admin','GET','127.0.0.1','[]','2018-09-03 03:44:12','2018-09-03 03:44:12'),(387,5,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 03:58:31','2018-09-03 03:58:31'),(388,5,'admin','GET','127.0.0.1','[]','2018-09-03 04:28:38','2018-09-03 04:28:38'),(389,5,'admin','GET','127.0.0.1','[]','2018-09-03 04:28:57','2018-09-03 04:28:57'),(390,5,'admin','GET','127.0.0.1','[]','2018-09-03 04:29:35','2018-09-03 04:29:35'),(391,5,'admin','GET','127.0.0.1','[]','2018-09-03 04:30:04','2018-09-03 04:30:04'),(392,5,'admin','GET','127.0.0.1','[]','2018-09-03 04:30:16','2018-09-03 04:30:16'),(393,5,'admin','GET','127.0.0.1','[]','2018-09-03 04:32:03','2018-09-03 04:32:03'),(394,5,'admin','GET','127.0.0.1','[]','2018-09-03 04:42:36','2018-09-03 04:42:36'),(395,5,'admin','GET','127.0.0.1','[]','2018-09-03 04:43:11','2018-09-03 04:43:11'),(396,5,'admin','GET','127.0.0.1','[]','2018-09-03 04:43:54','2018-09-03 04:43:54'),(397,5,'admin','GET','127.0.0.1','[]','2018-09-03 04:57:15','2018-09-03 04:57:15'),(398,5,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 04:57:20','2018-09-03 04:57:20'),(399,1,'admin','GET','127.0.0.1','[]','2018-09-03 04:57:26','2018-09-03 04:57:26'),(400,1,'admin/entries','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 04:57:29','2018-09-03 04:57:29'),(401,1,'admin/entries/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 04:57:36','2018-09-03 04:57:36'),(402,1,'admin/entries/create','GET','127.0.0.1','[]','2018-09-03 04:58:34','2018-09-03 04:58:34'),(403,1,'admin/entries','POST','127.0.0.1','{\"entry_date\":\"2018-09-03\",\"user_id\":\"1\",\"items\":{\"new_1\":{\"product_id\":\"5\",\"unit_price\":\"800\",\"amount\":\"5\",\"bazar_id\":\"1\",\"total\":\"4000\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"nJ1S1AVDEW9lb2pSEGsjdKhEsTPwRr4uUnYG0hdc\"}','2018-09-03 04:59:04','2018-09-03 04:59:04'),(404,1,'admin/entries','GET','127.0.0.1','[]','2018-09-03 04:59:04','2018-09-03 04:59:04'),(405,1,'admin/entries','GET','127.0.0.1','[]','2018-09-03 04:59:50','2018-09-03 04:59:50'),(406,1,'admin/entries','GET','127.0.0.1','[]','2018-09-03 05:01:38','2018-09-03 05:01:38'),(407,1,'admin/entries','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-09-03 05:07:40','2018-09-03 05:07:40');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL),(6,'Consumer','consumer','','/entries*\r\n/auth/login\r\n/auth/logout\r\n/auth/setting','2018-09-03 00:29:53','2018-09-03 00:32:57');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_menu`
--

DROP TABLE IF EXISTS `admin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL),(1,8,NULL,NULL),(1,9,NULL,NULL),(1,10,NULL,NULL),(1,11,NULL,NULL),(1,12,NULL,NULL),(1,13,NULL,NULL),(1,14,NULL,NULL),(2,14,NULL,NULL),(1,15,NULL,NULL),(2,15,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_permissions`
--

DROP TABLE IF EXISTS `admin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL),(2,6,NULL,NULL),(2,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_users`
--

DROP TABLE IF EXISTS `admin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL),(2,5,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2018-06-09 06:12:47','2018-06-09 06:12:47'),(2,'Consumer','consumer','2018-06-09 06:13:55','2018-06-09 06:13:55');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_permissions`
--

DROP TABLE IF EXISTS `admin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`),
  UNIQUE KEY `admin_users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$0ztpidiMiw6DbslOYi55uuo0WOdmD42YyQZJj.aHxEiQDqIaZ0He2','Administrator',NULL,'BYuk76O8a4ne5VqgXzDlVlcMyB94E7boNz0SA2NUFldEOQv5943q6oOA7nIK','2018-06-09 06:12:47','2018-09-03 00:11:44',NULL,NULL,NULL),(5,'arif04cuet@gmail.com','$2y$10$z5kcq9weF8mNAs1XixTMee6jnlSJkfJ8hI32bgmjaEua9ZGthEcjO','Arif Hossain',NULL,'dzqKuAEMeW8xeoCO0Ruj5vFLTVfadpOdDSGOxjbvcC7ij7xT8fgRh9YFByQN','2018-06-25 02:52:34','2018-06-25 02:52:34','arif04cuet@gmail.com',23.81190960,90.36718500);
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bazars`
--

DROP TABLE IF EXISTS `bazars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bazars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bazars`
--

LOCK TABLES `bazars` WRITE;
/*!40000 ALTER TABLE `bazars` DISABLE KEYS */;
INSERT INTO `bazars` VALUES (1,'Mirpur 6 kacha bazar',NULL,23.81104740,90.36417110,'2018-06-21 01:09:05','2018-06-25 02:55:39',1),(2,'Kawran Bazar Kacha Bazar',NULL,23.75278790,90.39261040,'2018-06-25 02:57:10','2018-06-25 03:01:32',1);
/*!40000 ALTER TABLE `bazars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_date` date NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entries`
--

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;
INSERT INTO `entries` VALUES (1,'2018-09-03',5,'2018-09-03 00:54:50','2018-09-03 00:54:50'),(2,'2018-09-03',1,'2018-09-03 04:59:04','2018-09-03 04:59:04');
/*!40000 ALTER TABLE `entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entry_items`
--

DROP TABLE IF EXISTS `entry_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entry_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unit_price` double(8,2) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `bazar_id` int(10) unsigned NOT NULL,
  `entry_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_items_product_id_foreign` (`product_id`),
  KEY `entry_items_bazar_id_foreign` (`bazar_id`),
  KEY `entry_items_entry_id_foreign` (`entry_id`),
  CONSTRAINT `entry_items_bazar_id_foreign` FOREIGN KEY (`bazar_id`) REFERENCES `bazars` (`id`),
  CONSTRAINT `entry_items_entry_id_foreign` FOREIGN KEY (`entry_id`) REFERENCES `entries` (`id`),
  CONSTRAINT `entry_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entry_items`
--

LOCK TABLES `entry_items` WRITE;
/*!40000 ALTER TABLE `entry_items` DISABLE KEYS */;
INSERT INTO `entry_items` VALUES (1,64.00,4.00,64.00,2,1,1,'2018-09-03 00:54:50','2018-09-03 00:54:50'),(2,800.00,5.00,4000.00,5,1,1,'2018-09-03 00:54:50','2018-09-03 00:54:50'),(3,800.00,5.00,4000.00,5,1,2,'2018-09-03 04:59:04','2018-09-03 04:59:04');
/*!40000 ALTER TABLE `entry_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_04_173148_create_admin_tables',1),(4,'2018_06_01_153306_create_bazars_table',1),(5,'2018_06_01_164721_create_products_table',1),(6,'2018_06_02_085907_add_default_price_to_product_table',1),(7,'2018_06_02_090914_add_active_to_bazar_table',1),(8,'2018_06_02_091954_create_entries_table',1),(9,'2018_06_02_145451_create_entry_items_table',1),(10,'2018_06_02_150809_make_description_nullable_bazars_table',1),(11,'2018_06_05_083257_create_units_table',1),(12,'2018_06_05_083404_add_unit_to_products_table',1),(13,'2018_06_09_112538_add_email_to_admin_users_table',1),(14,'2018_06_21_050612_add_latlong_field_to_users_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `default_price` double(8,2) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `unit_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_unit_id_foreign` (`unit_id`),
  CONSTRAINT `products_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,0,1,'Rice','2018-09-03 00:41:26','2018-09-03 00:47:23',NULL,1,1),(2,1,2,'Minicate','2018-09-03 00:41:47','2018-09-03 00:47:23',64.00,1,1),(3,1,3,'Najirshail','2018-09-03 00:42:12','2018-09-03 00:47:23',60.00,1,1),(4,0,4,'Fish','2018-09-03 00:42:28','2018-09-03 00:47:23',0.00,1,1),(5,4,5,'Ilish','2018-09-03 00:44:54','2018-09-03 00:47:23',800.00,1,1),(6,4,6,'Roi','2018-09-03 00:47:17','2018-09-03 00:47:23',300.00,1,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `units` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (1,'Kg','2018-09-03 00:39:16','2018-09-03 00:39:16'),(2,'gm','2018-09-03 00:39:30','2018-09-03 00:39:30'),(3,'Ti','2018-09-03 00:40:21','2018-09-03 00:40:21');
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-03 18:07:49
