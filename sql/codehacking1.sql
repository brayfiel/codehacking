-- MySQL dump 10.13  Distrib 5.7.22, for Win64 (x86_64)
--
-- Host: localhost    Database: codehacking
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'PHP','2019-08-10 19:38:00','2019-08-10 19:38:00'),(2,'Laravel','2019-08-10 19:38:00','2019-08-10 19:38:00'),(3,'JavaScript','2019-08-10 19:38:00','2019-08-10 19:38:00'),(5,'Java - edited','2019-08-13 05:28:40','2019-08-13 17:43:12'),(8,'Bootstrap','2019-08-13 18:16:41','2019-08-13 18:16:41');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_replies`
--

DROP TABLE IF EXISTS `comment_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment_replies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` int(10) unsigned NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_replies_comment_id_index` (`comment_id`),
  CONSTRAINT `comment_replies_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_replies`
--

LOCK TABLES `comment_replies` WRITE;
/*!40000 ALTER TABLE `comment_replies` DISABLE KEYS */;
INSERT INTO `comment_replies` VALUES (1,1,1,'Barry Rayfield','barry.rayfield@gmail.com','Reply #1 again','2019-08-22 19:57:51','2019-08-24 02:55:06','156546800220190713_073519.jpg'),(2,4,1,'Barry Rayfield','barry.rayfield@gmail.com','reply #2','2019-08-22 19:59:16','2019-08-24 17:53:05','156546800220190713_073519.jpg'),(4,4,1,'Barry Rayfield','barry.rayfield@gmail.com','Reply Charlie','2019-08-24 17:47:09','2019-08-24 17:53:06','156546800220190713_073519.jpg'),(5,1,1,'Barry Rayfield','barry.rayfield@gmail.com','Reply Beta','2019-08-24 19:00:30','2019-08-25 01:31:28','156546800220190713_073519.jpg');
/*!40000 ALTER TABLE `comment_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_post_id_index` (`post_id`),
  CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,1,'Barry Rayfield','barry.rayfield@gmail.com','This is a test comment for post #1.','2019-08-19 20:25:07','2019-08-21 21:24:58','156546800220190713_073519.jpg'),(2,1,1,'Barry Rayfield','barry.rayfield@gmail.com','This is the second comment for post #1','2019-08-19 20:29:36','2019-08-24 19:10:13','156546800220190713_073519.jpg'),(4,1,1,'Barry Rayfield','barry.rayfield@gmail.com','Comment test #1 of 2019-08-20 for post 1','2019-08-20 18:54:29','2019-08-24 19:10:47','156546800220190713_073519.jpg'),(5,2,1,'Barry Rayfield','barry.rayfield@gmail.com','test comment for post 2 a.k.a roof 2','2019-08-21 04:29:32','2019-08-24 17:45:55','156546800220190713_073519.jpg'),(6,1,1,'Barry Rayfield','barry.rayfield@gmail.com','fourth comment','2019-08-22 20:01:17','2019-08-24 19:11:06','156546800220190713_073519.jpg'),(7,1,1,'Barry Rayfield','barry.rayfield@gmail.com','Comment baker','2019-08-24 17:45:35','2019-08-24 17:45:56','156546800220190713_073519.jpg');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2019_07_09_041605_create_roles_table',1),('2019_07_18_050725_add_photo_id_to_users',1),('2019_07_18_154702_create_photos_table',1),('2019_08_01_220052_create_posts_table',1),('2019_08_06_225206_create_categories_table',1),('2019_08_16_013917_create_comments_table',2),('2019_08_16_013957_create_comment_replies_table',2),('2019_08_19_163547_add_photo_column_to_comments',3),('2019_08_19_201331_add_photo_column_to_comments_replies',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,'156546800220190713_073519.jpg','2019-08-11 00:13:22','2019-08-11 00:13:22'),(3,'1565468284december11, 2004 004.jpg','2019-08-11 00:18:04','2019-08-11 00:18:04'),(4,'1565468324PICT0134.JPG','2019-08-11 00:18:44','2019-08-11 00:18:44'),(5,'1565469482P1000017.JPG','2019-08-11 00:38:02','2019-08-11 00:38:02'),(6,'1565469538P1000012.JPG','2019-08-11 00:38:58','2019-08-11 00:38:58'),(8,'1565550110IMG_0710.JPG','2019-08-11 23:01:50','2019-08-11 23:01:50'),(9,'1565550140IMG_0714.JPG','2019-08-11 23:02:20','2019-08-11 23:02:20'),(10,'1565550180IMG_0722.JPG','2019-08-11 23:03:00','2019-08-11 23:03:00'),(11,'1565550227IMG_0725.JPG','2019-08-11 23:03:47','2019-08-11 23:03:47'),(12,'1565891025december11, 2004 002.jpg','2019-08-15 21:43:45','2019-08-15 21:43:45'),(13,'1565891025december11, 2004 001.jpg','2019-08-15 21:43:45','2019-08-15 21:43:45'),(14,'1565891025december11, 2004 003.jpg','2019-08-15 21:43:45','2019-08-15 21:43:45'),(15,'1565891025december11, 2004 004.jpg','2019-08-15 21:43:45','2019-08-15 21:43:45'),(17,'1565891025december11, 2004 014.jpg','2019-08-15 21:43:45','2019-08-15 21:43:45');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `photo_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_index` (`user_id`),
  KEY `posts_category_id_index` (`category_id`),
  KEY `posts_photo_id_index` (`photo_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,2,8,'Roof 1','First roof pic','2019-08-11 23:00:42','2019-08-11 23:01:50'),(2,1,3,9,'Roof 2','Second roof pic','2019-08-11 23:02:20','2019-08-11 23:02:20'),(3,1,8,10,'Roof 3','Third roof pic','2019-08-11 23:03:00','2019-08-13 18:16:54'),(4,1,8,11,'Roof Four','Fourth roof pic','2019-08-11 23:03:47','2019-08-13 18:17:01');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrator','2019-08-10 19:38:00','2019-08-10 19:38:00'),(2,'Editor','2019-08-10 19:38:00','2019-08-10 19:38:00'),(3,'Author','2019-08-10 19:38:00','2019-08-10 19:38:00'),(4,'Subscriber','2019-08-10 19:38:00','2019-08-10 19:38:00');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_index` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,1,'Barry Rayfield','barry.rayfield@gmail.com','$2y$10$k7lHo1kIpG/0c8ybEQzE6e4b46pa7FOXYsS4UJzOMZuvqFS3IPfPq','gGczcbFEB9HFkHdcXwGRQBKr1k6b4HqrD5lRzxXTAZu7yYwhFO3Yw0XEyLOG','2019-08-10 23:46:02','2019-08-11 00:13:22','1'),(3,3,1,'Manny Rayfield','manny.rayfield@bsrresearch.com','$2y$10$CFa216JahhZTztGcJOBKq.8BumeQDpHdI4hMprwtrCsKob27ZjAjm','XB2R7Ss1qiSn7vZsj1p80HWkLbVo0kWkHxMQhZJtS0LM5dPgcYlpPz6AHmEW','2019-08-10 23:47:32','2019-08-11 00:18:04','3'),(4,4,1,'Mally Rayfield','mally.rayfield@gmail.com','$2y$10$68T1jEejEmIx3Eba.9fUY.woEN1u2nfJB.GR8xeyrr1kvvxey0FLO','pVPoVv6s6X3yLSE5rJRmBWu8KRNkjFYl35F4gPk7HoBGQtdPsNjHmdnzRDWe','2019-08-10 23:48:03','2019-08-11 00:18:44','4');
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

-- Dump completed on 2019-08-24 23:22:18
