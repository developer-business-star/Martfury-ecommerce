-- MySQL dump 10.13  Distrib 8.4.4, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: martfury
-- ------------------------------------------------------
-- Server version	8.4.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'pZ3S1HrqvZheKCPO3AwGGp6tOTcW7J0i',1,'2025-06-28 20:17:01','2025-06-28 20:17:01','2025-06-28 20:17:01');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2030-06-29 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2025-06-28 20:17:07','2025-06-28 20:17:07',1,NULL,NULL,NULL,NULL),(2,'Top Slider Image 2','2030-06-29 00:00:00','not_set','NBDWRXTSVZ8N','promotion/2.jpg','/products',0,2,'published','2025-06-28 20:17:07','2025-06-28 20:17:07',1,NULL,NULL,NULL,NULL),(3,'Homepage middle 1','2030-06-29 00:00:00','not_set','IZ6WU8KUALYD','promotion/3.jpg','/products',0,3,'published','2025-06-28 20:17:07','2025-06-28 20:17:07',1,NULL,NULL,NULL,NULL),(4,'Homepage middle 2','2030-06-29 00:00:00','not_set','ILSFJVYFGCPZ','promotion/4.jpg','/products',0,4,'published','2025-06-28 20:17:07','2025-06-28 20:17:07',1,NULL,NULL,NULL,NULL),(5,'Homepage middle 3','2030-06-29 00:00:00','not_set','ZDOZUZZIU7FT','promotion/5.jpg','/products',0,5,'published','2025-06-28 20:17:07','2025-06-28 20:17:07',1,NULL,NULL,NULL,NULL),(6,'Homepage big 1','2030-06-29 00:00:00','not_set','Q9YDUIC9HSWS','promotion/6.jpg','/products',0,6,'published','2025-06-28 20:17:07','2025-06-28 20:17:07',1,NULL,NULL,NULL,NULL),(7,'Homepage bottom small','2030-06-29 00:00:00','not_set','U1TPS30CICZL','promotion/7.jpg','/products',0,7,'published','2025-06-28 20:17:07','2025-06-28 20:17:07',1,NULL,NULL,NULL,NULL),(8,'Product sidebar','2030-06-29 00:00:00','product-sidebar','R3PBCR7YDWCO','promotion/8.jpg','/products',0,8,'published','2025-06-28 20:17:07','2025-06-28 20:17:07',1,NULL,NULL,NULL,NULL),(9,'Homepage big 2','2030-06-29 00:00:00','not_set','IZ6WU8KUALYE','promotion/9.jpg','/products',0,9,'published','2025-06-28 20:17:07','2025-06-28 20:17:07',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actor_id` bigint unsigned NOT NULL,
  `actor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Odit repellat modi nam assumenda officia similique. Et maiores enim blanditiis aspernatur qui omnis cum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2025-06-28 20:17:03','2025-06-28 20:17:03'),(2,'Fashion',0,'Et est saepe porro aut nemo aliquid. Blanditiis molestiae quae labore nesciunt iure. Saepe ut vel quod ut. Dignissimos doloremque consequatur porro iste sit necessitatibus libero.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-06-28 20:17:03','2025-06-28 20:17:03'),(3,'Electronic',0,'Corporis aut deleniti at ipsum dolorem omnis. Quidem optio nulla est perferendis aut et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-06-28 20:17:03','2025-06-28 20:17:03'),(4,'Commercial',0,'Quam officia dignissimos repellendus voluptate itaque sit. Ullam repellat iusto optio dolore. Optio illum debitis nemo beatae et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-06-28 20:17:03','2025-06-28 20:17:03');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Dr. Santos Nicolas','dare.desmond@example.net','(248) 244-1262','7717 Dangelo Falls\nWest Fridabury, RI 90163-7939','Quam accusantium numquam quasi.','Est magnam et et maiores optio quae culpa. Totam consequatur est omnis omnis provident voluptatem. Molestias et nihil illo consequatur aperiam in. Vitae sed animi aliquid quaerat minima. Qui aut quidem eum quia nam. Dolor at odit omnis sit libero cupiditate. Perspiciatis illum molestias voluptates. Esse cumque consequatur ut odit. Dolor et nihil distinctio sit in adipisci deserunt.',NULL,'unread','2025-06-28 20:17:00','2025-06-28 20:17:00'),(2,'Cecil Flatley Jr.','brad.oconner@example.org','1-313-407-4526','25210 Bergnaum Springs Apt. 206\nFernville, TN 66382','Et et deleniti tempora recusandae natus.','Expedita in molestias doloribus repellendus quia. Voluptate ut eum fuga id itaque occaecati. Rem rerum eos voluptatibus sed veritatis ut. Dolores maxime deleniti vitae atque et iure modi adipisci. Id aut molestias at voluptates recusandae reprehenderit. Reiciendis est necessitatibus id excepturi. Voluptatem fuga tempore totam nostrum voluptate quod minima. Sit porro quibusdam rerum. Asperiores voluptatem at dolor quidem accusamus.',NULL,'unread','2025-06-28 20:17:00','2025-06-28 20:17:00'),(3,'Clementine Moore','misty10@example.net','+1-270-616-5790','66685 Erik Branch Apt. 615\nNew Alexischester, FL 63933','Est corrupti tenetur ut explicabo est voluptatem.','Molestiae suscipit et voluptas provident. Cum aut soluta quis et repellendus. Odio aut et esse quasi harum impedit neque. Minima architecto fuga adipisci consequatur voluptas ut. Minima est eos id ullam aut ut at. Ut praesentium delectus blanditiis aut porro. Quo eaque sed et id quod odio ad aut. Ad autem pariatur omnis velit aut expedita suscipit. Dignissimos harum perferendis inventore dolorum qui voluptatum. Id aliquid voluptatem vero officia est sunt modi.',NULL,'read','2025-06-28 20:17:00','2025-06-28 20:17:00'),(4,'Amelie Shields','oratke@example.org','+13312149721','79009 Alexane Green\nKaceyborough, NJ 94349-8312','Dicta repellendus odio ducimus iusto dignissimos.','Iure illo ut voluptates consequatur ut sed aperiam. Iste eos fuga placeat ut eligendi. Dignissimos iste consectetur dolorem. Et mollitia autem iste accusamus officiis cum. Numquam recusandae dolorem est non. Voluptate iste rerum ea unde ut vitae dolorem. Et dolor optio eum illo quia. Corrupti et beatae consequatur eos ex. Non omnis voluptas suscipit cumque quam est officia. Distinctio ut tenetur ut nulla ducimus quia. Iste enim eum illo ut.',NULL,'unread','2025-06-28 20:17:00','2025-06-28 20:17:00'),(5,'Leatha Kuhn','vstokes@example.com','(678) 482-2130','529 Smitham Villages Suite 865\nNew Kacie, NJ 53057-4955','Enim non ut incidunt assumenda perferendis.','Ut voluptatem dolorum beatae cum. Illo pariatur occaecati provident alias omnis. Voluptates quas odit quis doloribus animi sint. Fuga incidunt deleniti architecto hic nihil aut quos neque. Non laborum vitae inventore nesciunt sit. Mollitia qui culpa omnis exercitationem velit ducimus. Et temporibus aperiam doloremque ipsa. Fugiat sit aliquam nesciunt voluptates.',NULL,'read','2025-06-28 20:17:00','2025-06-28 20:17:00'),(6,'Pablo Tremblay','ykulas@example.com','913-585-6171','2907 Eichmann Club Suite 432\nLarsonhaven, WI 71096','Quo omnis similique quo quia omnis natus qui.','Sit necessitatibus et dolorem quia asperiores nostrum. Eum sit voluptatum repellendus est perspiciatis. Inventore voluptatem autem tempore illo deleniti. Voluptas aut eaque laborum est dolorem ut soluta. Possimus a quia recusandae eaque sit expedita mollitia. Nam quis neque quidem. Et autem dolores sit vitae iste autem repudiandae. Id et voluptatem asperiores reiciendis. Suscipit praesentium veritatis vel maxime et.',NULL,'read','2025-06-28 20:17:00','2025-06-28 20:17:00'),(7,'Reymundo Murphy','kemmer.yasmin@example.org','1-570-716-4366','361 Bertrand Via Suite 291\nHoytmouth, TX 17577-7599','Autem voluptatibus eligendi quasi.','Animi consectetur expedita sapiente alias qui nisi. Voluptatibus cum fugiat velit voluptatum sunt accusantium. Sit similique ut aperiam pariatur at autem. Consequatur dolorem dolorem aut aut. Repellat doloremque voluptas omnis occaecati. Assumenda rerum vero odio necessitatibus. Mollitia dolorum enim ut ullam praesentium. Magnam odit fugit qui odit. Non eum minus deserunt sed aperiam.',NULL,'read','2025-06-28 20:17:00','2025-06-28 20:17:00'),(8,'Sydney Herman','dcassin@example.org','270.225.9484','65536 Kertzmann Mill Suite 981\nMyrticeton, AR 87276','Nam vitae et facere placeat dolorum.','Libero rem repudiandae molestias tenetur facilis eos. Officiis iusto sequi et est voluptate ut. Omnis voluptas consequuntur voluptas autem quidem quasi. Quae ab ducimus nulla qui asperiores facere fugit. Nemo nisi voluptas voluptatem quia quibusdam. Qui non impedit ducimus.',NULL,'unread','2025-06-28 20:17:00','2025-06-28 20:17:00'),(9,'Yazmin Morar','lbreitenberg@example.com','302.884.6268','549 Laurel Passage\nNorth Sethville, IN 42997','Doloremque et consequatur amet odit quibusdam.','Porro suscipit dolor dolorum assumenda aut saepe recusandae. Ut minima non sit commodi. Qui asperiores recusandae esse sunt laboriosam ad. Sunt voluptatibus qui dolore ut esse nihil neque. Accusamus sed sapiente repellat alias accusantium corporis accusamus. Illo iste sit porro eligendi voluptatem. Inventore fuga qui maxime reiciendis. Sed aut delectus saepe debitis autem et.',NULL,'read','2025-06-28 20:17:00','2025-06-28 20:17:00'),(10,'Dr. Brisa Jerde II','yasmin.mueller@example.com','763-693-6272','6108 April Gateway Suite 495\nEstellafort, IA 16640','Maxime a provident ut et ipsa qui enim sed.','Laboriosam quas architecto velit quia hic saepe. Natus voluptatibus nesciunt eveniet aliquid sunt et. Odio consequuntur reprehenderit adipisci adipisci veniam ab. Molestiae aut repellat sit est fuga amet hic. Voluptas fuga fugiat voluptatum tempore. Ut distinctio est est aut vitae ut rem. Commodi harum iste doloremque distinctio possimus. Consequatur temporibus molestias provident perspiciatis assumenda. Ab voluptatem aut iusto sequi pariatur odit. Quam quam eum occaecati.',NULL,'unread','2025-06-28 20:17:00','2025-06-28 20:17:00');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_tokens`
--

DROP TABLE IF EXISTS `device_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_tokens_token_unique` (`token`),
  KEY `device_tokens_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `device_tokens_platform_is_active_index` (`platform`,`is_active`),
  KEY `device_tokens_is_active_index` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_tokens`
--

LOCK TABLES `device_tokens` WRITE;
/*!40000 ALTER TABLE `device_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.jpg','published',0,1,'2025-06-28 20:16:04','2025-06-28 20:16:04'),(2,'Hand crafted',NULL,NULL,'brands/2.jpg','published',1,1,'2025-06-28 20:16:04','2025-06-28 20:16:04'),(3,'Mestonix',NULL,NULL,'brands/3.jpg','published',2,1,'2025-06-28 20:16:04','2025-06-28 20:16:04'),(4,'Sunshine',NULL,NULL,'brands/4.jpg','published',3,1,'2025-06-28 20:16:04','2025-06-28 20:16:04'),(5,'Pure',NULL,NULL,'brands/5.jpg','published',4,1,'2025-06-28 20:16:04','2025-06-28 20:16:04'),(6,'Anfold',NULL,NULL,'brands/6.jpg','published',5,1,'2025-06-28 20:16:04','2025-06-28 20:16:04'),(7,'Automotive',NULL,NULL,'brands/7.jpg','published',6,1,'2025-06-28 20:16:04','2025-06-28 20:16:04');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2025-06-28 20:16:04','2025-06-28 20:16:04'),(2,'EUR','€',0,2,1,0,0.84,'2025-06-28 20:16:04','2025-06-28 20:16:04'),(3,'VND','₫',0,0,2,0,23203,'2025-06-28 20:16:04','2025-06-28 20:16:04'),(4,'NGN','₦',1,2,2,0,895.52,'2025-06-28 20:16:04','2025-06-28 20:16:04');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Marcel Hand','customer@botble.com','+16264159929','FJ','Illinois','East Gunner','20649 D\'Amore River',1,1,'2025-06-28 20:16:55','2025-06-28 20:16:55','39506-4242'),(2,'Marcel Hand','customer@botble.com','+19738946543','AM','Idaho','New Merritt','99321 Block Springs',1,0,'2025-06-28 20:16:55','2025-06-28 20:16:55','99569-9451'),(3,'Eusebio Brakus','vendor@botble.com','+13523006094','GP','District of Columbia','Thompsonstad','7509 Macejkovic Brook Suite 403',2,1,'2025-06-28 20:16:55','2025-06-28 20:16:55','34590-9064'),(4,'Eusebio Brakus','vendor@botble.com','+14582725803','MS','Connecticut','South Treva','31312 Donavon Keys',2,0,'2025-06-28 20:16:55','2025-06-28 20:16:55','36626'),(5,'Jerrell Rippin','aflatley@example.net','+15678730298','KI','Nevada','North Kale','3486 Nolan Neck',3,1,'2025-06-28 20:16:55','2025-06-28 20:16:55','22963-6089'),(6,'Hector Funk','uriel88@example.com','+13089616433','MN','Oregon','Port Owen','62084 Reinhold Extension',4,1,'2025-06-28 20:16:56','2025-06-28 20:16:56','45743'),(7,'Ms. Antonetta Robel','rey.corwin@example.net','+14244625551','GS','Oklahoma','Lilyanport','215 Alexandrea Springs Apt. 594',5,1,'2025-06-28 20:16:56','2025-06-28 20:16:56','79663'),(8,'Barton Daugherty','cweimann@example.com','+18542212869','TK','Connecticut','East Wilfrid','4225 Turcotte Springs',6,1,'2025-06-28 20:16:57','2025-06-28 20:16:57','80689-7842'),(9,'Mikel Mann','myron.hauck@example.org','+17142798108','MT','Ohio','West Susana','920 Otho Lake',7,1,'2025-06-28 20:16:57','2025-06-28 20:16:57','28660'),(10,'Karen Gibson DDS','hoyt.murphy@example.org','+15404334769','BN','Mississippi','South Mortimerfurt','73355 Boyle Field',8,1,'2025-06-28 20:16:58','2025-06-28 20:16:58','68528'),(11,'Faye O\'Conner','heathcote.dean@example.org','+14804400904','NI','Wyoming','Harrismouth','8387 Natalie Spring',9,1,'2025-06-28 20:16:58','2025-06-28 20:16:58','45722-6871'),(12,'Cristal West','pharber@example.org','+14808800082','DE','Ohio','Pasqualeport','668 Morissette Hills Apt. 712',10,1,'2025-06-28 20:16:59','2025-06-28 20:16:59','25760-8749');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `block_reason` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `stripe_account_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_account_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Marcel Hand','customer@botble.com','$2y$12$tD59V44FgRt1Xig07tYPJOaCSyHWwXv6bT5HOI.f/PGfZRNhpwyFy','customers/6.jpg','1988-06-19','+15756351087',NULL,'2025-06-28 20:16:55','2025-06-28 20:16:55','2025-06-29 03:16:55',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(2,'Eusebio Brakus','vendor@botble.com','$2y$12$6SjMxHza5kmu96K9eXu4jetAndNUVgZOyL3iQ9lEuXKbjcR.O.mUC','customers/9.jpg','1979-05-30','+15014287311',NULL,'2025-06-28 20:16:55','2025-06-28 20:17:13','2025-06-29 03:16:55',NULL,'activated',NULL,NULL,1,'2025-06-29 03:17:13',NULL,0),(3,'Jerrell Rippin','aflatley@example.net','$2y$12$G4y5BHP1q9.ucpGwIifPbOBXn5uc8SJcYGLXrp20YvZ/MmU0samum','customers/1.jpg','1985-06-25','+14586799909',NULL,'2025-06-28 20:16:55','2025-06-28 20:17:13','2025-06-29 03:16:55',NULL,'activated',NULL,NULL,1,'2025-06-29 03:17:13',NULL,0),(4,'Hector Funk','uriel88@example.com','$2y$12$tUIJ4p1FKiTkJDJALkKSD.SWhiDt9ewUimspFyvTbLCaRXKW0TFPC','customers/2.jpg','1981-06-03','+13319942827',NULL,'2025-06-28 20:16:56','2025-06-28 20:17:14','2025-06-29 03:16:56',NULL,'activated',NULL,NULL,1,'2025-06-29 03:17:13',NULL,0),(5,'Ms. Antonetta Robel','rey.corwin@example.net','$2y$12$Z2ngIJaALKS8VqhWyo0txujtQEfDUYJQhj0R2ypI2xNj9jViKH5qu','customers/3.jpg','1975-06-27','+19388500059',NULL,'2025-06-28 20:16:56','2025-06-28 20:17:14','2025-06-29 03:16:56',NULL,'activated',NULL,NULL,1,'2025-06-29 03:17:13',NULL,0),(6,'Barton Daugherty','cweimann@example.com','$2y$12$n/ocfRJHv5tey3JeGqq2CemxYtF.mf.qsv5I50MkLeZEznC6Sn8Vm','customers/4.jpg','1990-06-17','+18655876128',NULL,'2025-06-28 20:16:57','2025-06-28 20:17:14','2025-06-29 03:16:57',NULL,'activated',NULL,NULL,1,'2025-06-29 03:17:13',NULL,0),(7,'Mikel Mann','myron.hauck@example.org','$2y$12$JjrQ8/36sVb3F9LpxT4Yo.bMNXJAdd9BkrF8UNhgn1LKl7E5SEwgO','customers/5.jpg','2004-06-05','+17318745113',NULL,'2025-06-28 20:16:57','2025-06-28 20:17:15','2025-06-29 03:16:57',NULL,'activated',NULL,NULL,1,'2025-06-29 03:17:13',NULL,0),(8,'Karen Gibson DDS','hoyt.murphy@example.org','$2y$12$dkrNR6qK/suAAFKId6okbuXQiq/gLMgVtOrNsEs/FQ4GWhSPRjznW','customers/6.jpg','1987-06-18','+18306147057',NULL,'2025-06-28 20:16:58','2025-06-28 20:17:15','2025-06-29 03:16:58',NULL,'activated',NULL,NULL,1,'2025-06-29 03:17:13',NULL,0),(9,'Faye O\'Conner','heathcote.dean@example.org','$2y$12$13ywH/jMkpYU12khPpaVP.B3QjZCV2yagGdo/oyRjZcu.708ttLK.','customers/7.jpg','1996-06-26','+16504336241',NULL,'2025-06-28 20:16:58','2025-06-28 20:17:16','2025-06-29 03:16:58',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(10,'Cristal West','pharber@example.org','$2y$12$YJvmdHvngpc.ZMsgIaw3YuqMnSrRvuoCal5YEbfK9ix6ayC9Vf0Nq','customers/8.jpg','1981-06-12','+14242008813',NULL,'2025-06-28 20:16:59','2025-06-28 20:17:16','2025-06-29 03:16:59',NULL,'activated',NULL,NULL,0,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `can_use_with_flash_sale` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','NNMLRGBO36N5','2025-06-28 03:17:00',NULL,NULL,0,526,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-06-28 20:17:00','2025-06-28 20:17:00',NULL,NULL),(2,'Discount 2','LBTYOBWY3ICG','2025-06-28 03:17:00',NULL,NULL,0,612,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-06-28 20:17:00','2025-06-28 20:17:00',NULL,NULL),(3,'Discount 3','SDTGAC5NYM6E','2025-06-28 03:17:00',NULL,NULL,0,44,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-06-28 20:17:00','2025-06-28 20:17:00',NULL,NULL),(4,'Discount 4','UIYQPRP02BKO','2025-06-28 03:17:00','2025-07-03 03:17:00',NULL,0,94,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2025-06-28 20:17:00','2025-06-28 20:17:00',NULL,NULL),(5,'Discount 5','JF4EHWUNGGKQ','2025-06-28 03:17:00','2025-07-22 03:17:00',NULL,0,929,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2025-06-28 20:17:00','2025-06-28 20:17:00',NULL,NULL),(6,'Discount 6','39S7JZBVX9UB','2025-06-28 03:17:00','2025-07-28 03:17:00',NULL,0,824,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-06-28 20:17:00','2025-06-28 20:17:00',NULL,NULL),(7,'Discount 7','GOP2V7WJVR1G','2025-06-28 03:17:00',NULL,NULL,0,761,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2025-06-28 20:17:00','2025-06-28 20:17:00',NULL,NULL),(8,'Discount 8','JGQSTZXOBZCA','2025-06-28 03:17:00',NULL,NULL,0,870,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-06-28 20:17:00','2025-06-28 20:17:00',NULL,NULL),(9,'Discount 9','4YSB583L32VX','2025-06-28 03:17:00',NULL,NULL,0,661,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-06-28 20:17:00','2025-06-28 20:17:00',NULL,NULL),(10,'Discount 10','GHF8Y5UZDC8W','2025-06-28 03:17:00',NULL,NULL,0,654,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2025-06-28 20:17:00','2025-06-28 20:17:00',NULL,NULL);
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,180.9416,19,4),(1,2,911.6096,11,4),(1,3,135.414,15,4),(1,4,183.42528,14,3),(1,5,789.1714,10,1),(1,6,172.7037,15,3),(1,7,182.5102,10,2),(1,8,167.760684,17,4),(1,9,368.4876,6,5),(1,10,990.6034,9,1);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2025-07-29 00:00:00','published','2025-06-28 20:17:00','2025-06-28 20:17:00');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2025-06-28 20:17:11','2025-06-28 20:17:11'),(2,1,'2 Year',10,9999,0,'2025-06-28 20:17:11','2025-06-28 20:17:11'),(3,1,'3 Year',20,9999,0,'2025-06-28 20:17:11','2025-06-28 20:17:11'),(4,2,'4GB',0,9999,0,'2025-06-28 20:17:11','2025-06-28 20:17:11'),(5,2,'8GB',10,9999,0,'2025-06-28 20:17:11','2025-06-28 20:17:11'),(6,2,'16GB',20,9999,0,'2025-06-28 20:17:11','2025-06-28 20:17:11'),(7,3,'Core i5',0,9999,0,'2025-06-28 20:17:11','2025-06-28 20:17:11'),(8,3,'Core i7',10,9999,0,'2025-06-28 20:17:11','2025-06-28 20:17:11'),(9,3,'Core i9',20,9999,0,'2025-06-28 20:17:11','2025-06-28 20:17:11'),(10,4,'128GB',0,9999,0,'2025-06-28 20:17:11','2025-06-28 20:17:11'),(11,4,'256GB',10,9999,0,'2025-06-28 20:17:11','2025-06-28 20:17:11'),(12,4,'512GB',20,9999,0,'2025-06-28 20:17:11','2025-06-28 20:17:11');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-06-28 20:17:11','2025-06-28 20:17:11'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-06-28 20:17:11','2025-06-28 20:17:11'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-06-28 20:17:11','2025-06-28 20:17:11'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2025-06-28 20:17:11','2025-06-28 20:17:11');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double DEFAULT '0',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `downloaded_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2025-06-28 20:16:06','2025-06-28 20:16:06',0),(2,'Size','size','text',1,1,1,'published',1,'2025-06-28 20:16:06','2025-06-28 20:16:06',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2025-06-28 20:16:06','2025-06-28 20:16:06'),(2,1,'Blue','blue','#333333',NULL,0,2,'2025-06-28 20:16:06','2025-06-28 20:16:06'),(3,1,'Red','red','#DA323F',NULL,0,3,'2025-06-28 20:16:06','2025-06-28 20:16:06'),(4,1,'Black','black','#2F366C',NULL,0,4,'2025-06-28 20:16:06','2025-06-28 20:16:06'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2025-06-28 20:16:06','2025-06-28 20:16:06'),(6,2,'S','s',NULL,NULL,1,1,'2025-06-28 20:16:06','2025-06-28 20:16:06'),(7,2,'M','m',NULL,NULL,0,2,'2025-06-28 20:16:06','2025-06-28 20:16:06'),(8,2,'L','l',NULL,NULL,0,3,'2025-06-28 20:16:07','2025-06-28 20:16:07'),(9,2,'XL','xl',NULL,NULL,0,4,'2025-06-28 20:16:07','2025-06-28 20:16:07'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2025-06-28 20:16:07','2025-06-28 20:16:07');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06','icon-star',NULL),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2025-06-28 20:16:06','2025-06-28 20:16:06','icon-laundry',NULL),(3,'Consumer Electronic',2,NULL,'published',0,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,NULL),(4,'Home Audio & Theaters',3,NULL,'published',0,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,NULL),(5,'TV & Videos',3,NULL,'published',1,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,NULL),(6,'Camera, Photos & Videos',3,NULL,'published',2,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,NULL),(7,'Cellphones & Accessories',3,NULL,'published',3,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,NULL),(8,'Headphones',3,NULL,'published',4,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,NULL),(9,'Videos games',3,NULL,'published',5,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,NULL),(10,'Wireless Speakers',3,NULL,'published',6,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,NULL),(11,'Office Electronic',3,NULL,'published',7,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,NULL),(12,'Accessories & Parts',2,NULL,'published',1,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,NULL),(13,'Digital Cables',12,NULL,'published',0,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,NULL),(14,'Audio & Video Cables',12,NULL,'published',1,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,NULL),(15,'Batteries',12,NULL,'published',2,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,NULL),(16,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2025-06-28 20:16:06','2025-06-28 20:16:06','icon-shirt',NULL),(17,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2025-06-28 20:16:06','2025-06-28 20:16:06','icon-desktop',NULL),(18,'Computer & Technologies',17,NULL,'published',0,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,NULL),(19,'Computer & Tablets',18,NULL,'published',0,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,NULL),(20,'Laptop',18,NULL,'published',1,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,NULL),(21,'Monitors',18,NULL,'published',2,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,NULL),(22,'Computer Components',18,NULL,'published',3,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,NULL),(23,'Networking',17,NULL,'published',1,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,NULL),(24,'Drive & Storages',23,NULL,'published',0,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,NULL),(25,'Gaming Laptop',23,NULL,'published',1,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,NULL),(26,'Security & Protection',23,NULL,'published',2,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,NULL),(27,'Accessories',23,NULL,'published',3,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,NULL),(28,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2025-06-28 20:16:06','2025-06-28 20:16:06','icon-lampshade',NULL),(29,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2025-06-28 20:16:06','2025-06-28 20:16:06','icon-heart-pulse',NULL),(30,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2025-06-28 20:16:06','2025-06-28 20:16:06','icon-diamond2',NULL),(31,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2025-06-28 20:16:06','2025-06-28 20:16:06','icon-desktop',NULL),(32,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2025-06-28 20:16:06','2025-06-28 20:16:06','icon-smartphone',NULL),(33,'Babies & Moms',0,NULL,'published',9,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06','icon-baby-bottle',NULL),(34,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06','icon-baseball',NULL),(35,'Books & Office',0,NULL,'published',11,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06','icon-book2',NULL),(36,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06','icon-car-siren',NULL),(37,'Home Improvements',0,NULL,'published',13,NULL,0,'2025-06-28 20:16:06','2025-06-28 20:16:06','icon-wrench',NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,13),(1,15),(1,17),(1,27),(1,33),(1,40),(1,43),(1,53),(2,8),(2,16),(2,23),(2,33),(2,37),(2,42),(2,50),(2,51),(3,6),(3,20),(3,26),(3,47),(3,50),(4,12),(4,19),(4,30),(4,33),(4,49),(4,53),(4,54),(5,19),(5,25),(5,27),(5,36),(5,37),(6,1),(6,15),(6,23),(6,39),(6,42),(6,46),(7,12),(8,16),(8,20),(8,35),(8,48),(8,52),(9,3),(9,4),(9,17),(9,29),(9,52),(10,4),(10,10),(10,11),(10,19),(10,24),(10,36),(10,42),(11,4),(11,9),(11,13),(11,30),(11,44),(11,51),(12,20),(12,22),(12,48),(12,51),(13,10),(13,11),(13,21),(13,23),(13,28),(13,34),(13,45),(14,13),(14,15),(14,21),(14,29),(14,44),(15,3),(15,28),(15,48),(15,49),(16,3),(16,14),(16,23),(16,27),(16,35),(16,41),(16,43),(16,46),(16,51),(17,17),(17,26),(17,29),(18,5),(18,6),(18,9),(18,14),(18,22),(18,31),(18,41),(18,42),(19,2),(19,8),(19,37),(20,5),(20,8),(20,10),(20,22),(20,27),(20,40),(20,45),(20,49),(20,50),(21,6),(21,15),(21,16),(21,25),(21,32),(21,35),(21,37),(21,54),(22,9),(22,43),(22,50),(23,1),(23,11),(23,19),(23,36),(23,43),(24,1),(24,2),(24,16),(24,22),(24,32),(24,45),(24,47),(25,14),(25,21),(25,40),(26,6),(26,10),(26,21),(26,24),(26,28),(26,33),(26,52),(27,5),(27,13),(27,31),(27,39),(27,41),(28,8),(28,14),(28,18),(28,25),(28,30),(28,38),(29,36),(29,46),(29,54),(30,31),(30,47),(30,53),(31,7),(31,18),(31,20),(31,24),(31,35),(31,38),(31,54),(32,3),(32,34),(32,38),(32,44),(32,48),(33,1),(33,2),(33,11),(33,24),(33,26),(33,38),(33,39),(33,40),(33,49),(33,52),(34,5),(34,12),(34,18),(34,30),(34,31),(34,32),(34,47),(34,53),(35,4),(35,7),(35,12),(35,17),(35,34),(36,7),(36,18),(36,26),(36,28),(36,34),(36,41),(37,2),(37,7),(37,9),(37,25),(37,29),(37,32),(37,39),(37,44),(37,45),(37,46);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,3),(1,4),(1,5),(1,6),(1,7),(1,9),(1,10),(1,11),(1,13),(1,15),(1,16),(1,19),(1,20),(1,22),(1,25),(1,27),(1,31),(1,34),(1,38),(1,40),(1,42),(1,47),(1,49),(1,50),(1,52),(1,53),(1,54),(2,8),(2,12),(2,17),(2,24),(2,26),(2,28),(2,30),(2,33),(2,35),(2,37),(2,39),(2,43),(2,45),(2,46),(2,48),(2,51),(3,1),(3,2),(3,14),(3,18),(3,21),(3,23),(3,29),(3,32),(3,36),(3,41),(3,44);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2025-06-28 20:16:06','2025-06-28 20:16:06',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2025-06-28 20:16:06','2025-06-28 20:16:06',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2025-06-28 20:16:06','2025-06-28 20:16:06',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,14,0,0.00,'fixed',1),(1,29,0,0.00,'fixed',1),(1,35,0,0.00,'fixed',1),(1,37,0,0.00,'fixed',1),(1,48,0,0.00,'fixed',1),(1,49,0,0.00,'fixed',1),(2,24,0,0.00,'fixed',1),(2,32,0,0.00,'fixed',1),(2,33,0,0.00,'fixed',1),(2,34,0,0.00,'fixed',1),(2,41,0,0.00,'fixed',1),(2,46,0,0.00,'fixed',1),(3,5,0,0.00,'fixed',1),(3,16,0,0.00,'fixed',1),(3,19,0,0.00,'fixed',1),(3,33,0,0.00,'fixed',1),(3,34,0,0.00,'fixed',1),(3,42,0,0.00,'fixed',1),(3,48,0,0.00,'fixed',1),(4,5,0,0.00,'fixed',1),(4,12,0,0.00,'fixed',1),(4,28,0,0.00,'fixed',1),(4,45,0,0.00,'fixed',1),(4,46,0,0.00,'fixed',1),(5,3,0,0.00,'fixed',1),(5,14,0,0.00,'fixed',1),(5,16,0,0.00,'fixed',1),(5,24,0,0.00,'fixed',1),(5,34,0,0.00,'fixed',1),(5,43,0,0.00,'fixed',1),(5,46,0,0.00,'fixed',1),(6,10,0,0.00,'fixed',1),(6,17,0,0.00,'fixed',1),(6,18,0,0.00,'fixed',1),(6,27,0,0.00,'fixed',1),(6,42,0,0.00,'fixed',1),(6,48,0,0.00,'fixed',1),(7,4,0,0.00,'fixed',1),(7,18,0,0.00,'fixed',1),(7,20,0,0.00,'fixed',1),(7,41,0,0.00,'fixed',1),(7,46,0,0.00,'fixed',1),(7,48,0,0.00,'fixed',1),(8,12,0,0.00,'fixed',1),(8,16,0,0.00,'fixed',1),(8,35,0,0.00,'fixed',1),(8,41,0,0.00,'fixed',1),(8,43,0,0.00,'fixed',1),(8,49,0,0.00,'fixed',1),(9,6,0,0.00,'fixed',1),(9,17,0,0.00,'fixed',1),(9,22,0,0.00,'fixed',1),(9,23,0,0.00,'fixed',1),(9,24,0,0.00,'fixed',1),(9,33,0,0.00,'fixed',1),(9,42,0,0.00,'fixed',1),(10,6,0,0.00,'fixed',1),(10,8,0,0.00,'fixed',1),(10,19,0,0.00,'fixed',1),(10,27,0,0.00,'fixed',1),(10,40,0,0.00,'fixed',1),(10,44,0,0.00,'fixed',1),(11,2,0,0.00,'fixed',1),(11,13,0,0.00,'fixed',1),(11,22,0,0.00,'fixed',1),(11,25,0,0.00,'fixed',1),(11,26,0,0.00,'fixed',1),(11,27,0,0.00,'fixed',1),(11,48,0,0.00,'fixed',1),(12,7,0,0.00,'fixed',1),(12,10,0,0.00,'fixed',1),(12,14,0,0.00,'fixed',1),(12,22,0,0.00,'fixed',1),(12,25,0,0.00,'fixed',1),(12,32,0,0.00,'fixed',1),(12,38,0,0.00,'fixed',1),(13,4,0,0.00,'fixed',1),(13,11,0,0.00,'fixed',1),(13,14,0,0.00,'fixed',1),(13,35,0,0.00,'fixed',1),(13,46,0,0.00,'fixed',1),(13,50,0,0.00,'fixed',1),(14,6,0,0.00,'fixed',1),(14,20,0,0.00,'fixed',1),(14,23,0,0.00,'fixed',1),(14,29,0,0.00,'fixed',1),(14,31,0,0.00,'fixed',1),(14,32,0,0.00,'fixed',1),(15,8,0,0.00,'fixed',1),(15,9,0,0.00,'fixed',1),(15,14,0,0.00,'fixed',1),(15,24,0,0.00,'fixed',1),(15,42,0,0.00,'fixed',1),(15,50,0,0.00,'fixed',1),(15,53,0,0.00,'fixed',1),(16,4,0,0.00,'fixed',1),(16,9,0,0.00,'fixed',1),(16,17,0,0.00,'fixed',1),(16,25,0,0.00,'fixed',1),(16,33,0,0.00,'fixed',1),(16,37,0,0.00,'fixed',1),(16,51,0,0.00,'fixed',1),(17,2,0,0.00,'fixed',1),(17,12,0,0.00,'fixed',1),(17,15,0,0.00,'fixed',1),(17,23,0,0.00,'fixed',1),(17,41,0,0.00,'fixed',1),(17,49,0,0.00,'fixed',1),(17,52,0,0.00,'fixed',1),(18,10,0,0.00,'fixed',1),(18,34,0,0.00,'fixed',1),(18,36,0,0.00,'fixed',1),(18,43,0,0.00,'fixed',1),(18,46,0,0.00,'fixed',1),(18,48,0,0.00,'fixed',1),(19,3,0,0.00,'fixed',1),(19,20,0,0.00,'fixed',1),(19,26,0,0.00,'fixed',1),(19,41,0,0.00,'fixed',1),(19,46,0,0.00,'fixed',1),(20,4,0,0.00,'fixed',1),(20,8,0,0.00,'fixed',1),(20,28,0,0.00,'fixed',1),(20,30,0,0.00,'fixed',1),(20,41,0,0.00,'fixed',1),(20,47,0,0.00,'fixed',1),(20,49,0,0.00,'fixed',1),(21,1,0,0.00,'fixed',1),(21,18,0,0.00,'fixed',1),(21,30,0,0.00,'fixed',1),(21,32,0,0.00,'fixed',1),(21,39,0,0.00,'fixed',1),(21,40,0,0.00,'fixed',1),(21,50,0,0.00,'fixed',1),(22,14,0,0.00,'fixed',1),(22,25,0,0.00,'fixed',1),(22,27,0,0.00,'fixed',1),(22,30,0,0.00,'fixed',1),(22,34,0,0.00,'fixed',1),(22,41,0,0.00,'fixed',1),(22,44,0,0.00,'fixed',1),(23,1,0,0.00,'fixed',1),(23,13,0,0.00,'fixed',1),(23,20,0,0.00,'fixed',1),(23,41,0,0.00,'fixed',1),(23,46,0,0.00,'fixed',1),(24,6,0,0.00,'fixed',1),(24,11,0,0.00,'fixed',1),(24,19,0,0.00,'fixed',1),(24,28,0,0.00,'fixed',1),(24,31,0,0.00,'fixed',1),(24,51,0,0.00,'fixed',1),(25,1,0,0.00,'fixed',1),(25,2,0,0.00,'fixed',1),(25,6,0,0.00,'fixed',1),(25,16,0,0.00,'fixed',1),(25,38,0,0.00,'fixed',1),(25,48,0,0.00,'fixed',1),(25,54,0,0.00,'fixed',1),(26,3,0,0.00,'fixed',1),(26,5,0,0.00,'fixed',1),(26,18,0,0.00,'fixed',1),(26,20,0,0.00,'fixed',1),(26,29,0,0.00,'fixed',1),(26,48,0,0.00,'fixed',1),(26,49,0,0.00,'fixed',1),(27,3,0,0.00,'fixed',1),(27,5,0,0.00,'fixed',1),(27,8,0,0.00,'fixed',1),(27,18,0,0.00,'fixed',1),(27,32,0,0.00,'fixed',1),(27,42,0,0.00,'fixed',1),(27,47,0,0.00,'fixed',1),(28,10,0,0.00,'fixed',1),(28,22,0,0.00,'fixed',1),(28,24,0,0.00,'fixed',1),(28,27,0,0.00,'fixed',1),(28,43,0,0.00,'fixed',1),(28,45,0,0.00,'fixed',1),(29,8,0,0.00,'fixed',1),(29,11,0,0.00,'fixed',1),(29,23,0,0.00,'fixed',1),(29,27,0,0.00,'fixed',1),(29,33,0,0.00,'fixed',1),(29,43,0,0.00,'fixed',1),(29,47,0,0.00,'fixed',1),(30,5,0,0.00,'fixed',1),(30,10,0,0.00,'fixed',1),(30,18,0,0.00,'fixed',1),(30,19,0,0.00,'fixed',1),(30,29,0,0.00,'fixed',1),(30,47,0,0.00,'fixed',1),(30,54,0,0.00,'fixed',1),(31,10,0,0.00,'fixed',1),(31,12,0,0.00,'fixed',1),(31,19,0,0.00,'fixed',1),(31,26,0,0.00,'fixed',1),(31,51,0,0.00,'fixed',1),(31,54,0,0.00,'fixed',1),(32,4,0,0.00,'fixed',1),(32,5,0,0.00,'fixed',1),(32,20,0,0.00,'fixed',1),(32,28,0,0.00,'fixed',1),(32,34,0,0.00,'fixed',1),(32,37,0,0.00,'fixed',1),(32,46,0,0.00,'fixed',1),(33,6,0,0.00,'fixed',1),(33,11,0,0.00,'fixed',1),(33,19,0,0.00,'fixed',1),(33,23,0,0.00,'fixed',1),(33,29,0,0.00,'fixed',1),(33,45,0,0.00,'fixed',1),(33,54,0,0.00,'fixed',1),(34,1,0,0.00,'fixed',1),(34,4,0,0.00,'fixed',1),(34,5,0,0.00,'fixed',1),(34,21,0,0.00,'fixed',1),(34,38,0,0.00,'fixed',1),(34,40,0,0.00,'fixed',1),(35,4,0,0.00,'fixed',1),(35,38,0,0.00,'fixed',1),(35,42,0,0.00,'fixed',1),(35,44,0,0.00,'fixed',1),(35,48,0,0.00,'fixed',1),(35,50,0,0.00,'fixed',1),(36,4,0,0.00,'fixed',1),(36,26,0,0.00,'fixed',1),(36,32,0,0.00,'fixed',1),(36,34,0,0.00,'fixed',1),(36,44,0,0.00,'fixed',1),(36,51,0,0.00,'fixed',1),(36,52,0,0.00,'fixed',1),(37,1,0,0.00,'fixed',1),(37,15,0,0.00,'fixed',1),(37,29,0,0.00,'fixed',1),(37,32,0,0.00,'fixed',1),(37,41,0,0.00,'fixed',1),(37,46,0,0.00,'fixed',1),(37,47,0,0.00,'fixed',1),(38,25,0,0.00,'fixed',1),(38,27,0,0.00,'fixed',1),(38,32,0,0.00,'fixed',1),(38,34,0,0.00,'fixed',1),(38,40,0,0.00,'fixed',1),(38,44,0,0.00,'fixed',1),(39,2,0,0.00,'fixed',1),(39,9,0,0.00,'fixed',1),(39,23,0,0.00,'fixed',1),(39,32,0,0.00,'fixed',1),(39,36,0,0.00,'fixed',1),(39,40,0,0.00,'fixed',1),(39,43,0,0.00,'fixed',1),(40,6,0,0.00,'fixed',1),(40,17,0,0.00,'fixed',1),(40,22,0,0.00,'fixed',1),(40,32,0,0.00,'fixed',1),(40,35,0,0.00,'fixed',1),(40,43,0,0.00,'fixed',1),(40,54,0,0.00,'fixed',1),(41,1,0,0.00,'fixed',1),(41,3,0,0.00,'fixed',1),(41,5,0,0.00,'fixed',1),(41,23,0,0.00,'fixed',1),(41,24,0,0.00,'fixed',1),(41,37,0,0.00,'fixed',1),(41,50,0,0.00,'fixed',1),(42,1,0,0.00,'fixed',1),(42,10,0,0.00,'fixed',1),(42,36,0,0.00,'fixed',1),(42,40,0,0.00,'fixed',1),(42,49,0,0.00,'fixed',1),(42,52,0,0.00,'fixed',1),(43,10,0,0.00,'fixed',1),(43,11,0,0.00,'fixed',1),(43,14,0,0.00,'fixed',1),(43,27,0,0.00,'fixed',1),(43,40,0,0.00,'fixed',1),(43,46,0,0.00,'fixed',1),(43,51,0,0.00,'fixed',1),(44,4,0,0.00,'fixed',1),(44,23,0,0.00,'fixed',1),(44,30,0,0.00,'fixed',1),(44,47,0,0.00,'fixed',1),(44,48,0,0.00,'fixed',1),(44,54,0,0.00,'fixed',1),(45,5,0,0.00,'fixed',1),(45,20,0,0.00,'fixed',1),(45,21,0,0.00,'fixed',1),(45,24,0,0.00,'fixed',1),(45,32,0,0.00,'fixed',1),(45,44,0,0.00,'fixed',1),(45,51,0,0.00,'fixed',1),(46,2,0,0.00,'fixed',1),(46,12,0,0.00,'fixed',1),(46,14,0,0.00,'fixed',1),(46,15,0,0.00,'fixed',1),(46,23,0,0.00,'fixed',1),(46,50,0,0.00,'fixed',1),(46,52,0,0.00,'fixed',1),(47,7,0,0.00,'fixed',1),(47,34,0,0.00,'fixed',1),(47,41,0,0.00,'fixed',1),(47,42,0,0.00,'fixed',1),(47,43,0,0.00,'fixed',1),(47,46,0,0.00,'fixed',1),(47,49,0,0.00,'fixed',1),(48,10,0,0.00,'fixed',1),(48,19,0,0.00,'fixed',1),(48,27,0,0.00,'fixed',1),(48,34,0,0.00,'fixed',1),(48,43,0,0.00,'fixed',1),(48,44,0,0.00,'fixed',1),(48,54,0,0.00,'fixed',1),(49,3,0,0.00,'fixed',1),(49,13,0,0.00,'fixed',1),(49,20,0,0.00,'fixed',1),(49,28,0,0.00,'fixed',1),(49,37,0,0.00,'fixed',1),(49,41,0,0.00,'fixed',1),(49,47,0,0.00,'fixed',1),(50,2,0,0.00,'fixed',1),(50,6,0,0.00,'fixed',1),(50,16,0,0.00,'fixed',1),(50,22,0,0.00,'fixed',1),(50,25,0,0.00,'fixed',1),(50,36,0,0.00,'fixed',1),(50,40,0,0.00,'fixed',1),(51,8,0,0.00,'fixed',1),(51,10,0,0.00,'fixed',1),(51,19,0,0.00,'fixed',1),(51,34,0,0.00,'fixed',1),(51,35,0,0.00,'fixed',1),(51,39,0,0.00,'fixed',1),(51,42,0,0.00,'fixed',1),(52,6,0,0.00,'fixed',1),(52,11,0,0.00,'fixed',1),(52,14,0,0.00,'fixed',1),(52,34,0,0.00,'fixed',1),(52,37,0,0.00,'fixed',1),(52,46,0,0.00,'fixed',1),(52,48,0,0.00,'fixed',1),(53,5,0,0.00,'fixed',1),(53,14,0,0.00,'fixed',1),(53,16,0,0.00,'fixed',1),(53,19,0,0.00,'fixed',1),(53,24,0,0.00,'fixed',1),(53,27,0,0.00,'fixed',1),(54,2,0,0.00,'fixed',1),(54,11,0,0.00,'fixed',1),(54,14,0,0.00,'fixed',1),(54,16,0,0.00,'fixed',1),(54,22,0,0.00,'fixed',1),(54,34,0,0.00,'fixed',1),(54,51,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/4-1.jpg','{\"filename\":\"4-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"4-1\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(2,4,'ecommerce/digital-product-files/4-2.jpg','{\"filename\":\"4-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"4-2\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(3,8,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(4,8,'ecommerce/digital-product-files/8-2.jpg','{\"filename\":\"8-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"8-2\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(5,12,'ecommerce/digital-product-files/12-1.jpg','{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"12-1\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(6,12,'ecommerce/digital-product-files/12-2.jpg','{\"filename\":\"12-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"12-2\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(7,16,'ecommerce/digital-product-files/16-1.jpg','{\"filename\":\"16-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"16-1\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(8,16,'ecommerce/digital-product-files/16-2.jpg','{\"filename\":\"16-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"16-2\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(9,20,'ecommerce/digital-product-files/20-1.jpg','{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"20-1\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(10,20,'ecommerce/digital-product-files/20-2.jpg','{\"filename\":\"20-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"20-2\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(11,24,'ecommerce/digital-product-files/24-1.jpg','{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"24-1\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(12,24,'ecommerce/digital-product-files/24-2.jpg','{\"filename\":\"24-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"24-2\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(13,28,'ecommerce/digital-product-files/28-1.jpg','{\"filename\":\"28-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"28-1\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(14,28,'ecommerce/digital-product-files/28-2.jpg','{\"filename\":\"28-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"28-2\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(15,32,'ecommerce/digital-product-files/32-1.jpg','{\"filename\":\"32-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/32-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"32-1\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(16,32,'ecommerce/digital-product-files/32-2.jpg','{\"filename\":\"32-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/32-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"32-2\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(17,36,'ecommerce/digital-product-files/36-1.jpg','{\"filename\":\"36-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"36-1\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(18,36,'ecommerce/digital-product-files/36-2.jpg','{\"filename\":\"36-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"36-2\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(19,40,'ecommerce/digital-product-files/40-1.jpg','{\"filename\":\"40-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/40-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"40-1\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(20,40,'ecommerce/digital-product-files/40-2.jpg','{\"filename\":\"40-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/40-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"40-2\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(21,44,'ecommerce/digital-product-files/44-1.jpg','{\"filename\":\"44-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"44-1\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(22,44,'ecommerce/digital-product-files/44-2.jpg','{\"filename\":\"44-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"44-2\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(23,48,'ecommerce/digital-product-files/48-1.jpg','{\"filename\":\"48-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/48-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"48-1\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(24,48,'ecommerce/digital-product-files/48-2.jpg','{\"filename\":\"48-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/48-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"48-2\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(25,52,'ecommerce/digital-product-files/52-1.jpg','{\"filename\":\"52-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/52-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"52-1\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(26,52,'ecommerce/digital-product-files/52-2.jpg','{\"filename\":\"52-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/52-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"52-2\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(27,56,'ecommerce/digital-product-files/4-2.jpg','{\"filename\":\"4-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"4-2\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(28,57,'ecommerce/digital-product-files/4-3.jpg','{\"filename\":\"4-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"4-3\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(29,61,'ecommerce/digital-product-files/8-2.jpg','{\"filename\":\"8-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"8-2\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(30,62,'ecommerce/digital-product-files/8-3.jpg','{\"filename\":\"8-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"8-3\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(31,66,'ecommerce/digital-product-files/12-2.jpg','{\"filename\":\"12-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"12-2\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(32,67,'ecommerce/digital-product-files/12-3.jpg','{\"filename\":\"12-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"12-3\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(33,68,'ecommerce/digital-product-files/12-4.jpg','{\"filename\":\"12-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"12-4\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(34,69,'ecommerce/digital-product-files/12-1.jpg','{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"12-1\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(35,70,'ecommerce/digital-product-files/16-2.jpg','{\"filename\":\"16-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"16-2\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(36,71,'ecommerce/digital-product-files/16-3.jpg','{\"filename\":\"16-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"16-3\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(37,84,'ecommerce/digital-product-files/24-2.jpg','{\"filename\":\"24-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"24-2\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(38,85,'ecommerce/digital-product-files/24-3.jpg','{\"filename\":\"24-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"24-3\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(39,86,'ecommerce/digital-product-files/24-4.jpg','{\"filename\":\"24-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"24-4\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(40,89,'ecommerce/digital-product-files/28-2.jpg','{\"filename\":\"28-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:52\",\"name\":\"28-2\",\"extension\":\"jpg\"}','2025-06-28 20:16:52','2025-06-28 20:16:52'),(41,90,'ecommerce/digital-product-files/28-3.jpg','{\"filename\":\"28-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:53\",\"name\":\"28-3\",\"extension\":\"jpg\"}','2025-06-28 20:16:53','2025-06-28 20:16:53'),(42,91,'ecommerce/digital-product-files/28-4.jpg','{\"filename\":\"28-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:53\",\"name\":\"28-4\",\"extension\":\"jpg\"}','2025-06-28 20:16:53','2025-06-28 20:16:53'),(43,92,'ecommerce/digital-product-files/32-2.jpg','{\"filename\":\"32-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/32-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:53\",\"name\":\"32-2\",\"extension\":\"jpg\"}','2025-06-28 20:16:53','2025-06-28 20:16:53'),(44,95,'ecommerce/digital-product-files/36-2.jpg','{\"filename\":\"36-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:53\",\"name\":\"36-2\",\"extension\":\"jpg\"}','2025-06-28 20:16:53','2025-06-28 20:16:53'),(45,96,'ecommerce/digital-product-files/36-3.jpg','{\"filename\":\"36-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:53\",\"name\":\"36-3\",\"extension\":\"jpg\"}','2025-06-28 20:16:53','2025-06-28 20:16:53'),(46,107,'ecommerce/digital-product-files/44-2.jpg','{\"filename\":\"44-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:53\",\"name\":\"44-2\",\"extension\":\"jpg\"}','2025-06-28 20:16:53','2025-06-28 20:16:53'),(47,115,'ecommerce/digital-product-files/48-2.jpg','{\"filename\":\"48-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/48-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:53\",\"name\":\"48-2\",\"extension\":\"jpg\"}','2025-06-28 20:16:53','2025-06-28 20:16:53'),(48,116,'ecommerce/digital-product-files/48-3.jpg','{\"filename\":\"48-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/48-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-29 03:16:53\",\"name\":\"48-3\",\"extension\":\"jpg\"}','2025-06-28 20:16:53','2025-06-28 20:16:53');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,33),(1,54),(2,15),(2,18),(2,27),(2,39),(2,42),(3,3),(3,6),(3,9),(3,12),(3,21),(3,24),(3,30),(3,36),(3,45),(3,48),(3,51);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#d71e2d','published','2025-06-28 20:16:06','2025-06-28 20:16:06',NULL),(2,'New','#02856e','published','2025-06-28 20:16:06','2025-06-28 20:16:06',NULL),(3,'Sale','#fe9931','published','2025-06-28 20:16:06','2025-06-28 20:16:06',NULL);
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_license_codes`
--

DROP TABLE IF EXISTS `ec_product_license_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_license_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `license_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `assigned_order_product_id` bigint unsigned DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_license_codes_license_code_unique` (`license_code`),
  KEY `ec_product_license_codes_product_id_status_index` (`product_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_license_codes`
--

LOCK TABLES `ec_product_license_codes` WRITE;
/*!40000 ALTER TABLE `ec_product_license_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_license_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--



--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_specification_attribute` (
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute`
--

LOCK TABLES `ec_product_specification_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_specification_attribute` VALUES (1,6,'77.32 cm',0,0),(1,7,'38.43 cm',0,0),(1,8,'3840x2160',0,0),(2,1,'92.74 cm',0,0),(2,2,'52.68 cm',0,0),(2,3,'27.67 cm',0,0),(2,4,'39.95 cm',0,0),(2,5,'51.62 cm',0,0),(3,6,'83.44 cm',0,0),(3,7,'42.45 cm',0,0),(3,8,'1920x1080',0,0),(4,1,'28.58 cm',0,0),(4,2,'75.36 cm',0,0),(4,3,'42.67 cm',0,0),(4,4,'61.93 cm',0,0),(4,5,'74.75 cm',0,0),(5,6,'41.93 cm',0,0),(5,7,'18.84 cm',0,0),(5,8,'1920x1080',0,0),(6,1,'93.23 cm',0,0),(6,2,'22.73 cm',0,0),(6,3,'31.55 cm',0,0),(6,4,'88.59 cm',0,0),(6,5,'85.78 cm',0,0),(7,6,'96.94 cm',0,0),(7,7,'27.29 cm',0,0),(7,8,'2560x1440',0,0),(8,1,'62.64 cm',0,0),(8,2,'55.59 cm',0,0),(8,3,'56.88 cm',0,0),(8,4,'65.81 cm',0,0),(8,5,'21.45 cm',0,0),(9,1,'20.55 cm',0,0),(9,2,'61.36 cm',0,0),(9,3,'52.28 cm',0,0),(9,4,'12.54 cm',0,0),(9,5,'2.11 cm',0,0),(10,1,'51.64 cm',0,0),(10,2,'14.33 cm',0,0),(10,3,'8.08 cm',0,0),(10,4,'93.28 cm',0,0),(10,5,'64.91 cm',0,0),(11,1,'54.6 cm',0,0),(11,2,'12.74 cm',0,0),(11,3,'9.7 cm',0,0),(11,4,'17.72 cm',0,0),(11,5,'36.93 cm',0,0),(12,1,'80.7 cm',0,0),(12,2,'10.02 cm',0,0),(12,3,'24.11 cm',0,0),(12,4,'16.14 cm',0,0),(12,5,'22.71 cm',0,0),(13,6,'38.12 cm',0,0),(13,7,'60.54 cm',0,0),(13,8,'1920x1080',0,0),(14,6,'2.68 cm',0,0),(14,7,'88.05 cm',0,0),(14,8,'2560x1440',0,0),(15,1,'5.48 cm',0,0),(15,2,'11.72 cm',0,0),(15,3,'76.28 cm',0,0),(15,4,'75.32 cm',0,0),(15,5,'9.39 cm',0,0),(16,1,'64.37 cm',0,0),(16,2,'53.36 cm',0,0),(16,3,'20.77 cm',0,0),(16,4,'20.72 cm',0,0),(16,5,'20.92 cm',0,0),(17,6,'65.25 cm',0,0),(17,7,'99.35 cm',0,0),(17,8,'3840x2160',0,0),(18,1,'38.62 cm',0,0),(18,2,'58.72 cm',0,0),(18,3,'29.78 cm',0,0),(18,4,'65.91 cm',0,0),(18,5,'3.7 cm',0,0),(19,6,'14.36 cm',0,0),(19,7,'38.29 cm',0,0),(19,8,'3840x2160',0,0),(20,6,'81.45 cm',0,0),(20,7,'59.58 cm',0,0),(20,8,'3840x2160',0,0),(21,1,'20.85 cm',0,0),(21,2,'84.2 cm',0,0),(21,3,'55.38 cm',0,0),(21,4,'75.24 cm',0,0),(21,5,'10.85 cm',0,0),(22,1,'59.41 cm',0,0),(22,2,'48.55 cm',0,0),(22,3,'33.98 cm',0,0),(22,4,'86.3 cm',0,0),(22,5,'18.53 cm',0,0),(23,1,'3.79 cm',0,0),(23,2,'86.56 cm',0,0),(23,3,'30.55 cm',0,0),(23,4,'3.07 cm',0,0),(23,5,'22.86 cm',0,0),(24,6,'70.15 cm',0,0),(24,7,'99.94 cm',0,0),(24,8,'1920x1080',0,0),(25,1,'63.11 cm',0,0),(25,2,'36.64 cm',0,0),(25,3,'10.28 cm',0,0),(25,4,'32.73 cm',0,0),(25,5,'18.79 cm',0,0),(26,1,'19.65 cm',0,0),(26,2,'24.51 cm',0,0),(26,3,'20.82 cm',0,0),(26,4,'56.51 cm',0,0),(26,5,'11.28 cm',0,0),(27,6,'35.9 cm',0,0),(27,7,'68.02 cm',0,0),(27,8,'1920x1080',0,0),(28,6,'15.21 cm',0,0),(28,7,'23.23 cm',0,0),(28,8,'1920x1080',0,0),(29,6,'23.75 cm',0,0),(29,7,'4 cm',0,0),(29,8,'3840x2160',0,0),(30,1,'3.43 cm',0,0),(30,2,'34.95 cm',0,0),(30,3,'88.15 cm',0,0),(30,4,'47.3 cm',0,0),(30,5,'90.35 cm',0,0),(31,1,'65.53 cm',0,0),(31,2,'1.7 cm',0,0),(31,3,'51.72 cm',0,0),(31,4,'23.4 cm',0,0),(31,5,'59.25 cm',0,0),(32,1,'46.17 cm',0,0),(32,2,'4.7 cm',0,0),(32,3,'96.81 cm',0,0),(32,4,'38.88 cm',0,0),(32,5,'76.68 cm',0,0),(33,6,'19.68 cm',0,0),(33,7,'8.83 cm',0,0),(33,8,'3840x2160',0,0),(34,1,'50.44 cm',0,0),(34,2,'70.57 cm',0,0),(34,3,'95.47 cm',0,0),(34,4,'48.05 cm',0,0),(34,5,'93.9 cm',0,0),(35,6,'94.05 cm',0,0),(35,7,'24.94 cm',0,0),(35,8,'1920x1080',0,0),(36,1,'78.96 cm',0,0),(36,2,'10.76 cm',0,0),(36,3,'36.53 cm',0,0),(36,4,'72.89 cm',0,0),(36,5,'66.91 cm',0,0),(37,6,'91.29 cm',0,0),(37,7,'35.2 cm',0,0),(37,8,'2560x1440',0,0),(38,6,'36.29 cm',0,0),(38,7,'10.69 cm',0,0),(38,8,'2560x1440',0,0),(39,6,'6.38 cm',0,0),(39,7,'85.78 cm',0,0),(39,8,'1920x1080',0,0),(40,1,'42.5 cm',0,0),(40,2,'90.82 cm',0,0),(40,3,'65.78 cm',0,0),(40,4,'28.92 cm',0,0),(40,5,'48.25 cm',0,0),(41,6,'56.21 cm',0,0),(41,7,'89.31 cm',0,0),(41,8,'2560x1440',0,0),(42,6,'18.3 cm',0,0),(42,7,'5.98 cm',0,0),(42,8,'1920x1080',0,0),(43,1,'46.98 cm',0,0),(43,2,'32.38 cm',0,0),(43,3,'67.34 cm',0,0),(43,4,'2.46 cm',0,0),(43,5,'85.14 cm',0,0),(44,6,'79.65 cm',0,0),(44,7,'27.59 cm',0,0),(44,8,'1920x1080',0,0),(45,6,'83.85 cm',0,0),(45,7,'76.09 cm',0,0),(45,8,'1920x1080',0,0),(46,6,'15.04 cm',0,0),(46,7,'93.53 cm',0,0),(46,8,'1920x1080',0,0),(47,1,'74.69 cm',0,0),(47,2,'48.31 cm',0,0),(47,3,'14.26 cm',0,0),(47,4,'42.42 cm',0,0),(47,5,'27.98 cm',0,0),(48,6,'40.73 cm',0,0),(48,7,'54.15 cm',0,0),(48,8,'1920x1080',0,0),(49,1,'12.3 cm',0,0),(49,2,'91.96 cm',0,0),(49,3,'98.27 cm',0,0),(49,4,'76.74 cm',0,0),(49,5,'31.86 cm',0,0),(50,1,'15.54 cm',0,0),(50,2,'1.66 cm',0,0),(50,3,'49.49 cm',0,0),(50,4,'30.4 cm',0,0),(50,5,'22.34 cm',0,0),(51,1,'23.03 cm',0,0),(51,2,'37.25 cm',0,0),(51,3,'31.42 cm',0,0),(51,4,'63.86 cm',0,0),(51,5,'7.84 cm',0,0),(52,6,'35.09 cm',0,0),(52,7,'94.45 cm',0,0),(52,8,'2560x1440',0,0),(53,6,'56.18 cm',0,0),(53,7,'27.95 cm',0,0),(53,8,'2560x1440',0,0),(54,1,'9.07 cm',0,0),(54,2,'92.34 cm',0,0),(54,3,'70.73 cm',0,0),(54,4,'74.85 cm',0,0),(54,5,'34.79 cm',0,0);
/*!40000 ALTER TABLE `ec_product_specification_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2025-06-28 20:17:00','2025-06-28 20:17:00'),(2,'Mobile',NULL,'published','2025-06-28 20:17:00','2025-06-28 20:17:00'),(3,'Iphone',NULL,'published','2025-06-28 20:17:00','2025-06-28 20:17:00'),(4,'Printer',NULL,'published','2025-06-28 20:17:00','2025-06-28 20:17:00'),(5,'Office',NULL,'published','2025-06-28 20:17:00','2025-06-28 20:17:00'),(6,'IT',NULL,'published','2025-06-28 20:17:00','2025-06-28 20:17:00');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (15,1,8),(25,1,13),(33,1,17),(35,1,18),(39,1,20),(49,1,25),(73,1,37),(79,1,40),(89,1,45),(123,1,62),(125,1,63),(129,1,65),(1,2,1),(7,2,4),(9,2,5),(13,2,7),(43,2,22),(47,2,24),(57,2,29),(69,2,35),(71,2,36),(77,2,39),(93,2,47),(95,2,48),(115,2,58),(127,2,64),(3,3,2),(17,3,9),(23,3,12),(27,3,14),(37,3,19),(45,3,23),(51,3,26),(53,3,27),(65,3,33),(81,3,41),(83,3,42),(91,3,46),(101,3,51),(103,3,52),(111,3,56),(5,4,3),(11,4,6),(19,4,10),(29,4,15),(31,4,16),(59,4,30),(63,4,32),(85,4,43),(87,4,44),(99,4,50),(105,4,53),(113,4,57),(119,4,60),(121,4,61),(21,5,11),(41,5,21),(55,5,28),(61,5,31),(67,5,34),(75,5,38),(97,5,49),(107,5,54),(109,5,55),(117,5,59),(6,6,3),(10,6,5),(12,6,6),(28,6,14),(34,6,17),(54,6,27),(62,6,31),(90,6,45),(116,6,58),(120,6,60),(2,7,1),(8,7,4),(14,7,7),(20,7,10),(26,7,13),(30,7,15),(44,7,22),(56,7,28),(58,7,29),(60,7,30),(66,7,33),(78,7,39),(84,7,42),(104,7,52),(110,7,55),(124,7,62),(126,7,63),(128,7,64),(130,7,65),(16,8,8),(18,8,9),(32,8,16),(38,8,19),(40,8,20),(42,8,21),(46,8,23),(48,8,24),(52,8,26),(68,8,34),(74,8,37),(114,8,57),(4,9,2),(24,9,12),(36,9,18),(70,9,35),(80,9,40),(82,9,41),(86,9,43),(88,9,44),(96,9,48),(102,9,51),(108,9,54),(112,9,56),(122,9,61),(22,10,11),(50,10,25),(64,10,32),(72,10,36),(76,10,38),(92,10,46),(94,10,47),(98,10,49),(100,10,50),(106,10,53),(118,10,59);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),


--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_specification_attribute` (
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute`
--

LOCK TABLES `ec_product_specification_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_specification_attribute` VALUES (1,6,'77.32 cm',0,0),(1,7,'38.43 cm',0,0),(1,8,'3840x2160',0,0),(2,1,'92.74 cm',0,0),(2,2,'52.68 cm',0,0),(2,3,'27.67 cm',0,0),(2,4,'39.95 cm',0,0),(2,5,'51.62 cm',0,0),(3,6,'83.44 cm',0,0),(3,7,'42.45 cm',0,0),(3,8,'1920x1080',0,0),(4,1,'28.58 cm',0,0),(4,2,'75.36 cm',0,0),(4,3,'42.67 cm',0,0),(4,4,'61.93 cm',0,0),(4,5,'74.75 cm',0,0),(5,6,'41.93 cm',0,0),(5,7,'18.84 cm',0,0),(5,8,'1920x1080',0,0),(6,1,'93.23 cm',0,0),(6,2,'22.73 cm',0,0),(6,3,'31.55 cm',0,0),(6,4,'88.59 cm',0,0),(6,5,'85.78 cm',0,0),(7,6,'96.94 cm',0,0),(7,7,'27.29 cm',0,0),(7,8,'2560x1440',0,0),(8,1,'62.64 cm',0,0),(8,2,'55.59 cm',0,0),(8,3,'56.88 cm',0,0),(8,4,'65.81 cm',0,0),(8,5,'21.45 cm',0,0),(9,1,'20.55 cm',0,0),(9,2,'61.36 cm',0,0),(9,3,'52.28 cm',0,0),(9,4,'12.54 cm',0,0),(9,5,'2.11 cm',0,0),(10,1,'51.64 cm',0,0),(10,2,'14.33 cm',0,0),(10,3,'8.08 cm',0,0),(10,4,'93.28 cm',0,0),(10,5,'64.91 cm',0,0),(11,1,'54.6 cm',0,0),(11,2,'12.74 cm',0,0),(11,3,'9.7 cm',0,0),(11,4,'17.72 cm',0,0),(11,5,'36.93 cm',0,0),(12,1,'80.7 cm',0,0),(12,2,'10.02 cm',0,0),(12,3,'24.11 cm',0,0),(12,4,'16.14 cm',0,0),(12,5,'22.71 cm',0,0),(13,6,'38.12 cm',0,0),(13,7,'60.54 cm',0,0),(13,8,'1920x1080',0,0),(14,6,'2.68 cm',0,0),(14,7,'88.05 cm',0,0),(14,8,'2560x1440',0,0),(15,1,'5.48 cm',0,0),(15,2,'11.72 cm',0,0),(15,3,'76.28 cm',0,0),(15,4,'75.32 cm',0,0),(15,5,'9.39 cm',0,0),(16,1,'64.37 cm',0,0),(16,2,'53.36 cm',0,0),(16,3,'20.77 cm',0,0),(16,4,'20.72 cm',0,0),(16,5,'20.92 cm',0,0),(17,6,'65.25 cm',0,0),(17,7,'99.35 cm',0,0),(17,8,'3840x2160',0,0),(18,1,'38.62 cm',0,0),(18,2,'58.72 cm',0,0),(18,3,'29.78 cm',0,0),(18,4,'65.91 cm',0,0),(18,5,'3.7 cm',0,0),(19,6,'14.36 cm',0,0),(19,7,'38.29 cm',0,0),(19,8,'3840x2160',0,0),(20,6,'81.45 cm',0,0),(20,7,'59.58 cm',0,0),(20,8,'3840x2160',0,0),(21,1,'20.85 cm',0,0),(21,2,'84.2 cm',0,0),(21,3,'55.38 cm',0,0),(21,4,'75.24 cm',0,0),(21,5,'10.85 cm',0,0),(22,1,'59.41 cm',0,0),(22,2,'48.55 cm',0,0),(22,3,'33.98 cm',0,0),(22,4,'86.3 cm',0,0),(22,5,'18.53 cm',0,0),(23,1,'3.79 cm',0,0),(23,2,'86.56 cm',0,0),(23,3,'30.55 cm',0,0),(23,4,'3.07 cm',0,0),(23,5,'22.86 cm',0,0),(24,6,'70.15 cm',0,0),(24,7,'99.94 cm',0,0),(24,8,'1920x1080',0,0),(25,1,'63.11 cm',0,0),(25,2,'36.64 cm',0,0),(25,3,'10.28 cm',0,0),(25,4,'32.73 cm',0,0),(25,5,'18.79 cm',0,0),(26,1,'19.65 cm',0,0),(26,2,'24.51 cm',0,0),(26,3,'20.82 cm',0,0),(26,4,'56.51 cm',0,0),(26,5,'11.28 cm',0,0),(27,6,'35.9 cm',0,0),(27,7,'68.02 cm',0,0),(27,8,'1920x1080',0,0),(28,6,'15.21 cm',0,0),(28,7,'23.23 cm',0,0),(28,8,'1920x1080',0,0),(29,6,'23.75 cm',0,0),(29,7,'4 cm',0,0),(29,8,'3840x2160',0,0),(30,1,'3.43 cm',0,0),(30,2,'34.95 cm',0,0),(30,3,'88.15 cm',0,0),(30,4,'47.3 cm',0,0),(30,5,'90.35 cm',0,0),(31,1,'65.53 cm',0,0),(31,2,'1.7 cm',0,0),(31,3,'51.72 cm',0,0),(31,4,'23.4 cm',0,0),(31,5,'59.25 cm',0,0),(32,1,'46.17 cm',0,0),(32,2,'4.7 cm',0,0),(32,3,'96.81 cm',0,0),(32,4,'38.88 cm',0,0),(32,5,'76.68 cm',0,0),(33,6,'19.68 cm',0,0),(33,7,'8.83 cm',0,0),(33,8,'3840x2160',0,0),(34,1,'50.44 cm',0,0),(34,2,'70.57 cm',0,0),(34,3,'95.47 cm',0,0),(34,4,'48.05 cm',0,0),(34,5,'93.9 cm',0,0),(35,6,'94.05 cm',0,0),(35,7,'24.94 cm',0,0),(35,8,'1920x1080',0,0),(36,1,'78.96 cm',0,0),(36,2,'10.76 cm',0,0),(36,3,'36.53 cm',0,0),(36,4,'72.89 cm',0,0),(36,5,'66.91 cm',0,0),(37,6,'91.29 cm',0,0),(37,7,'35.2 cm',0,0),(37,8,'2560x1440',0,0),(38,6,'36.29 cm',0,0),(38,7,'10.69 cm',0,0),(38,8,'2560x1440',0,0),(39,6,'6.38 cm',0,0),(39,7,'85.78 cm',0,0),(39,8,'1920x1080',0,0),(40,1,'42.5 cm',0,0),(40,2,'90.82 cm',0,0),(40,3,'65.78 cm',0,0),(40,4,'28.92 cm',0,0),(40,5,'48.25 cm',0,0),(41,6,'56.21 cm',0,0),(41,7,'89.31 cm',0,0),(41,8,'2560x1440',0,0),(42,6,'18.3 cm',0,0),(42,7,'5.98 cm',0,0),(42,8,'1920x1080',0,0),(43,1,'46.98 cm',0,0),(43,2,'32.38 cm',0,0),(43,3,'67.34 cm',0,0),(43,4,'2.46 cm',0,0),(43,5,'85.14 cm',0,0),(44,6,'79.65 cm',0,0),(44,7,'27.59 cm',0,0),(44,8,'1920x1080',0,0),(45,6,'83.85 cm',0,0),(45,7,'76.09 cm',0,0),(45,8,'1920x1080',0,0),(46,6,'15.04 cm',0,0),(46,7,'93.53 cm',0,0),(46,8,'1920x1080',0,0),(47,1,'74.69 cm',0,0),(47,2,'48.31 cm',0,0),(47,3,'14.26 cm',0,0),(47,4,'42.42 cm',0,0),(47,5,'27.98 cm',0,0),(48,6,'40.73 cm',0,0),(48,7,'54.15 cm',0,0),(48,8,'1920x1080',0,0),(49,1,'12.3 cm',0,0),(49,2,'91.96 cm',0,0),(49,3,'98.27 cm',0,0),(49,4,'76.74 cm',0,0),(49,5,'31.86 cm',0,0),(50,1,'15.54 cm',0,0),(50,2,'1.66 cm',0,0),(50,3,'49.49 cm',0,0),(50,4,'30.4 cm',0,0),(50,5,'22.34 cm',0,0),(51,1,'23.03 cm',0,0),(51,2,'37.25 cm',0,0),(51,3,'31.42 cm',0,0),(51,4,'63.86 cm',0,0),(51,5,'7.84 cm',0,0),(52,6,'35.09 cm',0,0),(52,7,'94.45 cm',0,0),(52,8,'2560x1440',0,0),(53,6,'56.18 cm',0,0),(53,7,'27.95 cm',0,0),(53,8,'2560x1440',0,0),(54,1,'9.07 cm',0,0),(54,2,'92.34 cm',0,0),(54,3,'70.73 cm',0,0),(54,4,'74.85 cm',0,0),(54,5,'34.79 cm',0,0);
/*!40000 ALTER TABLE `ec_product_specification_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2025-06-28 20:17:00','2025-06-28 20:17:00'),(2,'Mobile',NULL,'published','2025-06-28 20:17:00','2025-06-28 20:17:00'),(3,'Iphone',NULL,'published','2025-06-28 20:17:00','2025-06-28 20:17:00'),(4,'Printer',NULL,'published','2025-06-28 20:17:00','2025-06-28 20:17:00'),(5,'Office',NULL,'published','2025-06-28 20:17:00','2025-06-28 20:17:00'),(6,'IT',NULL,'published','2025-06-28 20:17:00','2025-06-28 20:17:00');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (15,1,8),(25,1,13),(33,1,17),(35,1,18),(39,1,20),(49,1,25),(73,1,37),(79,1,40),(89,1,45),(123,1,62),(125,1,63),(129,1,65),(1,2,1),(7,2,4),(9,2,5),(13,2,7),(43,2,22),(47,2,24),(57,2,29),(69,2,35),(71,2,36),(77,2,39),(93,2,47),(95,2,48),(115,2,58),(127,2,64),(3,3,2),(17,3,9),(23,3,12),(27,3,14),(37,3,19),(45,3,23),(51,3,26),(53,3,27),(65,3,33),(81,3,41),(83,3,42),(91,3,46),(101,3,51),(103,3,52),(111,3,56),(5,4,3),(11,4,6),(19,4,10),(29,4,15),(31,4,16),(59,4,30),(63,4,32),(85,4,43),(87,4,44),(99,4,50),(105,4,53),(113,4,57),(119,4,60),(121,4,61),(21,5,11),(41,5,21),(55,5,28),(61,5,31),(67,5,34),(75,5,38),(97,5,49),(107,5,54),(109,5,55),(117,5,59),(6,6,3),(10,6,5),(12,6,6),(28,6,14),(34,6,17),(54,6,27),(62,6,31),(90,6,45),(116,6,58),(120,6,60),(2,7,1),(8,7,4),(14,7,7),(20,7,10),(26,7,13),(30,7,15),(44,7,22),(56,7,28),(58,7,29),(60,7,30),(66,7,33),(78,7,39),(84,7,42),(104,7,52),(110,7,55),(124,7,62),(126,7,63),(128,7,64),(130,7,65),(16,8,8),(18,8,9),(32,8,16),(38,8,19),(40,8,20),(42,8,21),(46,8,23),(48,8,24),(52,8,26),(68,8,34),(74,8,37),(114,8,57),(4,9,2),(24,9,12),(36,9,18),(70,9,35),(80,9,40),(82,9,41),(86,9,43),(88,9,44),(96,9,48),(102,9,51),(108,9,54),(112,9,56),(122,9,61),(22,10,11),(50,10,25),(64,10,32),(72,10,36),(76,10,38),(92,10,46),(94,10,47),(98,10,49),(100,10,50),(106,10,53),(118,10,59);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,55,2,1),(2,56,4,1),(3,57,4,0),(4,58,5,1),(5,59,5,0),(6,60,6,1),(7,61,8,1),(8,62,8,0),(9,63,9,1),(10,64,9,0),(11,65,10,1),(12,66,12,1),(13,67,12,0),(14,68,12,0),(15,69,12,0),(16,70,16,1),(17,71,16,0),(18,72,18,1),(19,73,18,0),(20,74,18,0),(21,75,18,0),(22,76,19,1),(23,77,19,0),(24,78,19,0),(25,79,22,1),(26,80,22,0),(27,81,22,0),(28,82,22,0),(29,83,23,1),(30,84,24,1),(31,85,24,0),(32,86,24,0),(33,87,25,1),(34,88,25,0),(35,89,28,1),(36,90,28,0),(37,91,28,0),(38,92,32,1),(39,93,33,1),(40,94,33,0),(41,95,36,1),(42,96,36,0),(43,97,37,1),(44,98,37,0),(45,99,39,1),(46,100,41,1),(47,101,41,0),(48,102,41,0),(49,103,41,0),(50,104,42,1),(51,105,43,1),(52,106,43,0),(53,107,44,1),(54,108,45,1),(55,109,45,0),(56,110,45,0),(57,111,46,1),(58,112,47,1),(59,113,47,0),(60,114,47,0),(61,115,48,1),(62,116,48,0),(63,117,50,1),(64,118,50,0),(65,119,50,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2025-06-29',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,2,0),(2,2,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,12,0),(2,12,0),(1,16,0),(2,16,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0),(1,24,0),(2,24,0),(1,25,0),(2,25,0),(1,28,0),(2,28,0),(1,32,0),(2,32,0),(1,33,0),(2,33,0),(1,36,0),(2,36,0),(1,37,0),(2,37,0),(1,39,0),(2,39,0),(1,41,0),(2,41,0),(1,42,0),(2,42,0),(1,43,0),(2,43,0),(1,44,0),(2,44,0),(1,45,0),(2,45,0),(1,46,0),(2,46,0),(1,47,0),(2,47,0),(1,48,0),(2,48,0),(1,50,0),(2,50,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `video_media` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double DEFAULT NULL,
  `wide` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `license_code_type` enum('auto_generate','pick_from_list') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto_generate',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT '0',
  `specification_table_id` bigint unsigned DEFAULT NULL,
  `ore_id` bigint unsigned DEFAULT NULL,st
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Smart Home Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1-1.jpg\",\"products\\/1-2.jpg\",\"products\\/1-3.jpg\",\"products\\/1-4.jpg\"]',NULL,'FM-188',0,14,0,1,'in_stock',0,6,0,0,1706.11,323.11,NULL,NULL,18,15,10,863,NULL,7453,'2025-06-28 20:16:48','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','0972077064424',NULL,0,'auto_generate',0,0,0,2,7,0),(2,'Headphone Ultra Bass','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\",\"products\\/2-4.jpg\"]',NULL,'PN-171-A1',0,15,0,1,'in_stock',0,2,0,0,1981.76,NULL,NULL,NULL,14,11,19,742,NULL,29833,'2025-06-28 20:16:48','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','5264013748846',NULL,0,'auto_generate',0,0,0,1,2,0),(3,'Boxed - Bluetooth Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3-1.jpg\",\"products\\/3-2.jpg\",\"products\\/3-3.jpg\",\"products\\/3-4.jpg\"]',NULL,'NZ-111',0,16,0,1,'in_stock',0,7,0,0,226.69,225.69,NULL,NULL,10,16,18,847,NULL,187686,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','6073118756200',NULL,0,'auto_generate',0,0,0,2,4,0),(4,'Camera Samsung SS-24 (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\",\"products\\/4-4.jpg\"]',NULL,'GU-132-A1',0,14,0,1,'in_stock',0,1,0,0,477.67,382.136,NULL,NULL,17,16,15,581,NULL,168017,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'digital','3597966660494',NULL,0,'auto_generate',0,0,0,1,1,0),(5,'Macbook Pro 2015','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\",\"products\\/5-4.jpg\"]',NULL,'I5-158-A1',0,20,0,1,'in_stock',1,3,0,0,1715.59,NULL,NULL,NULL,14,17,10,724,NULL,59130,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','8799611384815',NULL,0,'auto_generate',0,0,0,2,4,0),(6,'Apple Watch Serial 7','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6-1.jpg\",\"products\\/6-2.jpg\",\"products\\/6-3.jpg\",\"products\\/6-4.jpg\"]',NULL,'HB-159-A1',0,13,0,1,'in_stock',0,7,0,0,442.83,NULL,NULL,NULL,10,12,17,859,NULL,104008,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','1474475843926',NULL,0,'auto_generate',0,0,0,1,5,0),(7,'Macbook Pro 13 inch','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7-1.jpg\",\"products\\/7-2.jpg\",\"products\\/7-3.jpg\"]',NULL,'VG-109',0,16,0,1,'in_stock',1,3,0,0,1936.29,480.29,NULL,NULL,20,14,18,690,NULL,25315,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','2342556577215',NULL,0,'auto_generate',0,0,0,2,2,0),(8,'Apple Keyboard (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\",\"products\\/8-4.jpg\"]',NULL,'DP-100-A1',0,20,0,1,'in_stock',0,3,0,0,512.09,430.1556,NULL,NULL,19,10,16,573,NULL,172062,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'digital','3242398556852',NULL,0,'auto_generate',0,0,0,1,3,0),(9,'MacSafe 80W','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9-1.jpg\",\"products\\/9-2.jpg\",\"products\\/9-3.jpg\"]',NULL,'ZK-159-A1',0,17,0,1,'in_stock',0,1,0,0,801.06,NULL,NULL,NULL,20,16,15,677,NULL,87312,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','8312233273840',NULL,0,'auto_generate',0,0,0,1,1,0),(10,'Hand playstation','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10-1.jpg\",\"products\\/10-2.jpg\",\"products\\/10-3.jpg\",\"products\\/10-4.jpg\"]',NULL,'GJ-180-A1',0,18,0,1,'in_stock',0,7,0,0,1623.94,NULL,NULL,NULL,18,18,13,648,NULL,39874,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','5889438718498',NULL,0,'auto_generate',0,0,0,1,3,0),(11,'Apple Airpods Serial 3','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\",\"products\\/11-4.jpg\"]',NULL,'FZ-127',0,20,0,1,'in_stock',0,5,0,0,1378.97,1241.073,NULL,NULL,11,16,11,663,NULL,152004,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','3271812781969',NULL,0,'auto_generate',0,0,0,1,6,0),(12,'Cool Smart Watches (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\",\"products\\/12-4.jpg\"]',NULL,'HG-112-A1',0,16,0,1,'in_stock',1,7,0,0,1644.07,1479.663,NULL,NULL,18,16,10,872,NULL,164426,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'digital','5638407326956',NULL,0,'auto_generate',0,0,0,1,9,0),(13,'Black Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13-1.jpg\",\"products\\/13-2.jpg\",\"products\\/13-3.jpg\",\"products\\/13-4.jpg\"]',NULL,'NK-199',0,15,0,1,'in_stock',0,4,0,0,817.57,694.9345,NULL,NULL,15,13,19,869,NULL,151970,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','6404741338554',NULL,0,'auto_generate',0,0,0,2,1,0),(14,'Leather Watch In Black','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14-1.jpg\",\"products\\/14-2.jpg\",\"products\\/14-3.jpg\",\"products\\/14-4.jpg\"]',NULL,'GV-177',0,12,0,1,'in_stock',0,7,0,0,202.93,178.5784,NULL,NULL,20,13,13,700,NULL,145996,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','5565244196988',NULL,0,'auto_generate',0,0,0,2,6,0),(15,'Macbook Pro 2015 13 inch','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15-1.jpg\",\"products\\/15-2.jpg\",\"products\\/15-3.jpg\",\"products\\/15-4.jpg\"]',NULL,'QJ-149',0,18,0,1,'in_stock',0,4,0,0,1345.35,898.35,NULL,NULL,17,16,18,844,NULL,69006,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','6894641851190',NULL,0,'auto_generate',0,0,0,1,8,0),(16,'Historic Alarm Clock (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-3.jpg\",\"products\\/16-4.jpg\"]',NULL,'G7-173-A1',0,11,0,1,'in_stock',0,1,0,0,983.11,776.6569,NULL,NULL,15,19,16,673,NULL,179577,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'digital','1215706927417',NULL,0,'auto_generate',0,0,0,1,8,0),(17,'Black Glasses','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\",\"products\\/17-4.jpg\"]',NULL,'D0-118',0,15,0,1,'in_stock',0,1,0,0,1164.47,272.47,NULL,NULL,16,17,15,879,NULL,76492,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','8936399085200',NULL,0,'auto_generate',0,0,0,2,7,0),(18,'Phillips Mouse','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\",\"products\\/18-4.jpg\"]',NULL,'0M-150-A1',0,10,0,1,'in_stock',0,6,0,0,961.48,NULL,NULL,NULL,19,13,12,772,NULL,56484,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','7440147868089',NULL,0,'auto_generate',0,0,0,1,8,0),(19,'Gaming Keyboard','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\",\"products\\/19-4.jpg\"]',NULL,'RV-156-A1',0,18,0,1,'in_stock',0,3,0,0,955.24,NULL,NULL,NULL,14,12,14,825,NULL,35582,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','5432530778961',NULL,0,'auto_generate',0,0,0,2,3,0),(20,'Wireless Keyboard (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\",\"products\\/20-4.jpg\"]',NULL,'VI-135',0,12,0,1,'in_stock',0,4,0,0,776.55,574.647,NULL,NULL,16,13,20,591,NULL,141617,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'digital','3559344125414',NULL,0,'auto_generate',0,0,0,2,6,0),(21,'Black Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21-1.jpg\",\"products\\/21-2.jpg\",\"products\\/21-3.jpg\",\"products\\/21-4.jpg\"]',NULL,'RC-195',0,18,0,1,'in_stock',0,5,0,0,1019.47,233.47,NULL,NULL,12,18,12,830,NULL,187004,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','6594150983855',NULL,0,'auto_generate',0,0,0,1,8,0),(22,'Smart Home Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\",\"products\\/22-4.jpg\"]',NULL,'CI-163-A1',0,14,0,1,'in_stock',0,2,0,0,1088.61,NULL,NULL,NULL,14,17,13,815,NULL,78734,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','3611944469739',NULL,0,'auto_generate',0,0,0,1,3,0),(23,'Headphone Ultra Bass','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\",\"products\\/23-4.jpg\"]',NULL,'AO-119-A1',0,18,0,1,'in_stock',0,5,0,0,1494.23,NULL,NULL,NULL,20,20,16,580,NULL,14344,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','7235244555839',NULL,0,'auto_generate',0,0,0,1,7,0),(24,'Boxed - Bluetooth Headphone (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/24-1.jpg\",\"products\\/24-2.jpg\",\"products\\/24-3.jpg\",\"products\\/24-4.jpg\"]',NULL,'E6-164-A1',0,11,0,1,'in_stock',1,4,0,0,1270.42,927.4066,NULL,NULL,11,18,12,871,NULL,89804,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'digital','6999520414807',NULL,0,'auto_generate',0,0,0,2,8,0),(25,'Camera Samsung SS-24','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/25-1.jpg\",\"products\\/25-2.jpg\",\"products\\/25-3.jpg\",\"products\\/25-4.jpg\"]',NULL,'BX-139-A1',0,18,0,1,'in_stock',1,5,0,0,1641.42,NULL,NULL,NULL,10,18,12,602,NULL,60436,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','7733287696910',NULL,0,'auto_generate',0,0,0,1,5,0),(26,'Leather Watch In Black','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/26-1.jpg\",\"products\\/26-2.jpg\",\"products\\/26-3.jpg\",\"products\\/26-4.jpg\"]',NULL,'KE-190',0,14,0,1,'in_stock',0,3,0,0,907.48,698.7596,NULL,NULL,18,16,20,563,NULL,196069,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','1304464826442',NULL,0,'auto_generate',0,0,0,1,2,0),(27,'Apple iPhone 13 Plus','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/27-1.jpg\",\"products\\/27-2.jpg\",\"products\\/27-3.jpg\",\"products\\/27-4.jpg\"]',NULL,'NW-130',0,16,0,1,'in_stock',0,3,0,0,1546.76,1000.76,NULL,NULL,12,16,10,653,NULL,35134,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','9004101848944',NULL,0,'auto_generate',0,0,0,2,4,0),(28,'Macbook Pro 2015 (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/28-1.jpg\",\"products\\/28-2.jpg\",\"products\\/28-3.jpg\",\"products\\/28-4.jpg\"]',NULL,'AB-112-A1',0,20,0,1,'in_stock',0,5,0,0,490.05,392.04,NULL,NULL,13,13,17,585,NULL,3211,'2025-06-28 20:16:49','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'digital','8483224723597',NULL,0,'auto_generate',0,0,0,2,8,0),(29,'Apple Watch Serial 7','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/29-1.jpg\",\"products\\/29-2.jpg\",\"products\\/29-3.jpg\"]',NULL,'22-194',0,13,0,1,'in_stock',0,4,0,0,60.25,39.25,NULL,NULL,13,14,19,713,NULL,176035,'2025-06-28 20:16:49','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','0160249033457',NULL,0,'auto_generate',0,0,0,2,5,0),(30,'Macbook Pro 13 inch','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/30-1.jpg\",\"products\\/30-2.jpg\",\"products\\/30-3.jpg\",\"products\\/30-4.jpg\"]',NULL,'63-151',0,16,0,1,'in_stock',1,6,0,0,1708.95,132.95,NULL,NULL,11,20,12,738,NULL,94622,'2025-06-28 20:16:49','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','1490758038636',NULL,0,'auto_generate',0,0,0,1,4,0),(31,'Apple Keyboard','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/31-1.jpg\",\"products\\/31-2.jpg\",\"products\\/31-3.jpg\",\"products\\/31-4.jpg\"]',NULL,'IL-200',0,16,0,1,'in_stock',0,5,0,0,1980.81,1228.81,NULL,NULL,14,20,11,529,NULL,128913,'2025-06-28 20:16:49','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','7864168738334',NULL,0,'auto_generate',0,0,0,1,2,0),(32,'MacSafe 80W (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/32-1.jpg\",\"products\\/32-2.jpg\",\"products\\/32-3.jpg\",\"products\\/32-4.jpg\"]',NULL,'BP-139-A1',0,13,0,1,'in_stock',0,1,0,0,1777.17,1386.1926,NULL,NULL,14,15,20,728,NULL,160569,'2025-06-28 20:16:49','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'digital','6615002085364',NULL,0,'auto_generate',0,0,0,1,2,0),(33,'Hand playstation','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/33-1.jpg\",\"products\\/33-2.jpg\",\"products\\/33-3.jpg\",\"products\\/33-4.jpg\"]',NULL,'VI-118-A1',0,14,0,1,'in_stock',0,7,0,0,313.03,NULL,NULL,NULL,10,19,16,887,NULL,126014,'2025-06-28 20:16:49','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','7523995795063',NULL,0,'auto_generate',0,0,0,2,4,0),(34,'Apple Airpods Serial 3','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/34-1.jpg\",\"products\\/34-2.jpg\",\"products\\/34-3.jpg\",\"products\\/34-4.jpg\"]',NULL,'X3-150',0,14,0,1,'in_stock',1,6,0,0,1667.51,720.51,NULL,NULL,16,16,17,562,NULL,30045,'2025-06-28 20:16:50','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','6000501610597',NULL,0,'auto_generate',0,0,0,1,7,0),(35,'Cool Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/35-1.jpg\",\"products\\/35-2.jpg\",\"products\\/35-3.jpg\",\"products\\/35-4.jpg\"]',NULL,'ZO-113',0,11,0,1,'in_stock',0,5,0,0,211.37,62.37,NULL,NULL,15,17,19,568,NULL,49610,'2025-06-28 20:16:50','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','1339344678637',NULL,0,'auto_generate',0,0,0,2,6,0),(36,'Black Smart Watches (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/36-1.jpg\",\"products\\/36-2.jpg\",\"products\\/36-3.jpg\"]',NULL,'FB-106-A1',0,16,0,1,'in_stock',0,3,0,0,1365.05,1010.137,NULL,NULL,16,13,13,619,NULL,95901,'2025-06-28 20:16:50','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'digital','4864673164485',NULL,0,'auto_generate',0,0,0,1,7,0),(37,'Leather Watch In Black','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/37-1.jpg\",\"products\\/37-2.jpg\",\"products\\/37-3.jpg\"]',NULL,'WV-177-A1',0,18,0,1,'in_stock',0,1,0,0,1046.29,NULL,NULL,NULL,14,12,12,659,NULL,125962,'2025-06-28 20:16:50','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','7464833556050',NULL,0,'auto_generate',0,0,0,2,2,0),(38,'Macbook Pro 2015 13 inch','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/38-1.jpg\",\"products\\/38-2.jpg\",\"products\\/38-3.jpg\",\"products\\/38-4.jpg\"]',NULL,'P8-125',0,19,0,1,'in_stock',0,3,0,0,620.11,281.11,NULL,NULL,10,20,15,815,NULL,70262,'2025-06-28 20:16:50','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','6309022291125',NULL,0,'auto_generate',0,0,0,2,5,0),(39,'Sony WH-1000XM4 Wireless Headphones','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/39-1.jpg\",\"products\\/39-2.jpg\",\"products\\/39-3.jpg\",\"products\\/39-4.jpg\"]',NULL,'UC-151-A1',0,10,0,1,'in_stock',0,3,0,0,918.66,NULL,NULL,NULL,14,13,11,593,NULL,155891,'2025-06-28 20:16:50','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','0745347239897',NULL,0,'auto_generate',0,0,0,2,2,0),(40,'Samsung Galaxy S22 Ultra (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/40-1.jpg\",\"products\\/40-2.jpg\",\"products\\/40-3.jpg\",\"products\\/40-4.jpg\"]',NULL,'N2-128',0,19,0,1,'in_stock',0,7,0,0,1540.82,283.82,NULL,NULL,16,12,14,885,NULL,76800,'2025-06-28 20:16:50','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'digital','0177038284174',NULL,0,'auto_generate',0,0,0,1,9,0),(41,'Dell XPS 15 Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/41-1.jpg\",\"products\\/41-2.jpg\",\"products\\/41-3.jpg\",\"products\\/41-4.jpg\"]',NULL,'ZR-134-A1',0,14,0,1,'in_stock',1,1,0,0,109.36,NULL,NULL,NULL,14,13,19,507,NULL,54995,'2025-06-28 20:16:50','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','8278881544872',NULL,0,'auto_generate',0,0,0,2,8,0),(42,'iPad Pro 12.9-inch','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/42-1.jpg\",\"products\\/42-2.jpg\",\"products\\/42-3.jpg\"]',NULL,'UX-175-A1',0,12,0,1,'in_stock',0,1,0,0,464.24,NULL,NULL,NULL,18,18,13,554,NULL,104820,'2025-06-28 20:16:50','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','6329771357057',NULL,0,'auto_generate',0,0,0,2,3,0),(43,'Bose QuietComfort Earbuds','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/43-1.jpg\",\"products\\/43-2.jpg\",\"products\\/43-3.jpg\"]',NULL,'DX-196-A1',0,10,0,1,'in_stock',0,1,0,0,1052.8,NULL,NULL,NULL,11,15,14,626,NULL,100956,'2025-06-28 20:16:50','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','3169040662801',NULL,0,'auto_generate',0,0,0,1,5,0),(44,'LG OLED C1 Series TV (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/44-1.jpg\",\"products\\/44-2.jpg\",\"products\\/44-3.jpg\"]',NULL,'CK-140-A1',0,20,0,1,'in_stock',0,2,0,0,1381.7,1174.445,NULL,NULL,16,11,20,887,NULL,93735,'2025-06-28 20:16:50','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'digital','9284042273450',NULL,0,'auto_generate',0,0,0,2,8,0),(45,'Dyson V11 Vacuum Cleaner','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/45-1.jpg\",\"products\\/45-2.jpg\",\"products\\/45-3.jpg\",\"products\\/45-4.jpg\"]',NULL,'HH-186-A1',0,17,0,1,'in_stock',0,3,0,0,1866.28,NULL,NULL,NULL,15,18,10,812,NULL,38517,'2025-06-28 20:16:50','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','1336934764008',NULL,0,'auto_generate',0,0,0,2,6,0),(46,'Nintendo Switch OLED Model','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/46-1.jpg\",\"products\\/46-2.jpg\",\"products\\/46-3.jpg\",\"products\\/46-4.jpg\"]',NULL,'NR-132-A1',0,10,0,1,'in_stock',1,7,0,0,1423.84,NULL,NULL,NULL,13,19,13,768,NULL,162784,'2025-06-28 20:16:50','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','7845874220344',NULL,0,'auto_generate',0,0,0,2,9,0),(47,'Canon EOS R5 Camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/47-1.jpg\",\"products\\/47-2.jpg\",\"products\\/47-3.jpg\"]',NULL,'4S-169-A1',0,14,0,1,'in_stock',0,4,0,0,938.34,NULL,NULL,NULL,12,11,14,738,NULL,196178,'2025-06-28 20:16:50','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','7826223546407',NULL,0,'auto_generate',0,0,0,1,7,0),(48,'Fitbit Sense Smartwatch (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/48-1.jpg\",\"products\\/48-2.jpg\",\"products\\/48-3.jpg\",\"products\\/48-4.jpg\"]',NULL,'EN-119-A1',0,15,0,1,'in_stock',1,7,0,0,1521.52,1156.3552,NULL,NULL,18,19,16,698,NULL,161889,'2025-06-28 20:16:50','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'digital','3366501703213',NULL,0,'auto_generate',0,0,0,2,9,0),(49,'Sonos Beam Soundbar','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/49-1.jpg\",\"products\\/49-2.jpg\",\"products\\/49-3.jpg\",\"products\\/49-4.jpg\"]',NULL,'L5-176',0,15,0,1,'in_stock',1,1,0,0,1225.72,401.72,NULL,NULL,14,18,19,726,NULL,70434,'2025-06-28 20:16:50','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','0584604750719',NULL,0,'auto_generate',0,0,0,1,9,0),(50,'Logitech MX Master 3 Mouse','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/50-1.jpg\",\"products\\/50-2.jpg\",\"products\\/50-3.jpg\",\"products\\/50-4.jpg\"]',NULL,'SK-141-A1',0,15,0,1,'in_stock',0,1,0,0,845.77,NULL,NULL,NULL,13,15,13,848,NULL,116159,'2025-06-28 20:16:50','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','3935951869116',NULL,0,'auto_generate',0,0,0,1,9,0),(51,'Kindle Paperwhite E-reader','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/51-1.jpg\",\"products\\/51-2.jpg\",\"products\\/51-3.jpg\",\"products\\/51-4.jpg\"]',NULL,'8R-196',0,14,0,1,'in_stock',0,1,0,0,1250.96,160.96,NULL,NULL,11,19,18,652,NULL,77923,'2025-06-28 20:16:50','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','2374431914358',NULL,0,'auto_generate',0,0,0,1,8,0),(52,'GoPro HERO10 Black (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/52-1.jpg\",\"products\\/52-2.jpg\",\"products\\/52-3.jpg\"]',NULL,'UR-119',0,16,0,1,'in_stock',1,5,0,0,1989.02,664.02,NULL,NULL,20,20,20,808,NULL,127510,'2025-06-28 20:16:50','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'digital','0379726202389',NULL,0,'auto_generate',0,0,0,2,3,0),(53,'Anker PowerCore Power Bank','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/53-1.jpg\",\"products\\/53-2.jpg\",\"products\\/53-3.jpg\",\"products\\/53-4.jpg\"]',NULL,'XB-133',0,16,0,1,'in_stock',0,5,0,0,1464.87,1186.5447,NULL,NULL,11,19,13,782,NULL,195834,'2025-06-28 20:16:50','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','6128325139022',NULL,0,'auto_generate',0,0,0,2,4,0),(54,'Product 54','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/54-1.jpg\",\"products\\/54-2.jpg\",\"products\\/54-3.jpg\"]',NULL,'EL-100',0,15,0,1,'in_stock',1,7,0,0,995.05,452.05,NULL,NULL,11,20,13,877,NULL,19866,'2025-06-28 20:16:50','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','2521360177839',NULL,0,'auto_generate',0,0,0,1,3,0),(55,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2-2.jpg\"]',NULL,'PN-171-A1',0,15,0,1,'in_stock',0,2,1,0,1981.76,NULL,NULL,NULL,14,11,19,742,NULL,0,'2025-06-28 20:16:50','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','7165983198441',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(56,'Camera Samsung SS-24 (Digital)',NULL,NULL,'published','[\"products\\/4-2.jpg\"]',NULL,'GU-132-A1',0,14,0,1,'in_stock',0,1,1,0,477.67,382.136,NULL,NULL,17,16,15,581,NULL,0,'2025-06-28 20:16:50','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'digital','8192560786929',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(57,'Camera Samsung SS-24 (Digital)',NULL,NULL,'published','[\"products\\/4-3.jpg\"]',NULL,'GU-132-A1-A2',0,14,0,1,'in_stock',0,1,1,0,477.67,420.3496,NULL,NULL,17,16,15,581,NULL,0,'2025-06-28 20:16:50','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'digital','0889844434000',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(58,'Macbook Pro 2015',NULL,NULL,'published','[\"products\\/5-2.jpg\"]',NULL,'I5-158-A1',0,20,0,1,'in_stock',0,3,1,0,1715.59,NULL,NULL,NULL,14,17,10,724,NULL,0,'2025-06-28 20:16:50','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','3386009046964',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(59,'Macbook Pro 2015',NULL,NULL,'published','[\"products\\/5-3.jpg\"]',NULL,'I5-158-A1-A2',0,20,0,1,'in_stock',0,3,1,0,1715.59,NULL,NULL,NULL,14,17,10,724,NULL,0,'2025-06-28 20:16:50','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','0702350040155',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(60,'Apple Watch Serial 7',NULL,NULL,'published','[\"products\\/6-2.jpg\"]',NULL,'HB-159-A1',0,13,0,1,'in_stock',0,7,1,0,442.83,NULL,NULL,NULL,10,12,17,859,NULL,0,'2025-06-28 20:16:50','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','6890441733728',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(61,'Apple Keyboard (Digital)',NULL,NULL,'published','[\"products\\/8-2.jpg\"]',NULL,'DP-100-A1',0,20,0,1,'in_stock',0,3,1,0,512.09,430.1556,NULL,NULL,19,10,16,573,NULL,0,'2025-06-28 20:16:50','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'digital','2491886609728',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(62,'Apple Keyboard (Digital)',NULL,NULL,'published','[\"products\\/8-3.jpg\"]',NULL,'DP-100-A1-A2',0,20,0,1,'in_stock',0,3,1,0,512.09,358.463,NULL,NULL,19,10,16,573,NULL,0,'2025-06-28 20:16:50','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'digital','3181359000129',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(63,'MacSafe 80W',NULL,NULL,'published','[\"products\\/9-2.jpg\"]',NULL,'ZK-159-A1',0,17,0,1,'in_stock',0,1,1,0,801.06,NULL,NULL,NULL,20,16,15,677,NULL,0,'2025-06-28 20:16:50','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','5187797968944',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(64,'MacSafe 80W',NULL,NULL,'published','[\"products\\/9-3.jpg\"]',NULL,'ZK-159-A1-A2',0,17,0,1,'in_stock',0,1,1,0,801.06,NULL,NULL,NULL,20,16,15,677,NULL,0,'2025-06-28 20:16:50','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','6286309800235',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(65,'Hand playstation',NULL,NULL,'published','[\"products\\/10-2.jpg\"]',NULL,'GJ-180-A1',0,18,0,1,'in_stock',0,7,1,0,1623.94,NULL,NULL,NULL,18,18,13,648,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','9793807648735',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(66,'Cool Smart Watches (Digital)',NULL,NULL,'published','[\"products\\/12-2.jpg\"]',NULL,'HG-112-A1',0,16,0,1,'in_stock',0,7,1,0,1644.07,1479.663,NULL,NULL,18,16,10,872,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'digital','6338747630353',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(67,'Cool Smart Watches (Digital)',NULL,NULL,'published','[\"products\\/12-3.jpg\"]',NULL,'HG-112-A1-A2',0,16,0,1,'in_stock',0,7,1,0,1644.07,1463.2223,NULL,NULL,18,16,10,872,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'digital','1405270942989',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(68,'Cool Smart Watches (Digital)',NULL,NULL,'published','[\"products\\/12-4.jpg\"]',NULL,'HG-112-A1-A3',0,16,0,1,'in_stock',0,7,1,0,1644.07,1381.0188,NULL,NULL,18,16,10,872,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'digital','8908512829985',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(69,'Cool Smart Watches (Digital)',NULL,NULL,'published','[\"products\\/12-1.jpg\"]',NULL,'HG-112-A1-A4',0,16,0,1,'in_stock',0,7,1,0,1644.07,1216.6118,NULL,NULL,18,16,10,872,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'digital','1112029080181',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(70,'Historic Alarm Clock (Digital)',NULL,NULL,'published','[\"products\\/16-2.jpg\"]',NULL,'G7-173-A1',0,11,0,1,'in_stock',0,1,1,0,983.11,776.6569,NULL,NULL,15,19,16,673,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'digital','2060913147221',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(71,'Historic Alarm Clock (Digital)',NULL,NULL,'published','[\"products\\/16-3.jpg\"]',NULL,'G7-173-A1-A2',0,11,0,1,'in_stock',0,1,1,0,983.11,835.6435,NULL,NULL,15,19,16,673,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'digital','8831446431057',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(72,'Phillips Mouse',NULL,NULL,'published','[\"products\\/18-2.jpg\"]',NULL,'0M-150-A1',0,10,0,1,'in_stock',0,6,1,0,961.48,NULL,NULL,NULL,19,13,12,772,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','3601584938764',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(73,'Phillips Mouse',NULL,NULL,'published','[\"products\\/18-3.jpg\"]',NULL,'0M-150-A1-A2',0,10,0,1,'in_stock',0,6,1,0,961.48,NULL,NULL,NULL,19,13,12,772,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','8257733533943',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(74,'Phillips Mouse',NULL,NULL,'published','[\"products\\/18-4.jpg\"]',NULL,'0M-150-A1-A3',0,10,0,1,'in_stock',0,6,1,0,961.48,NULL,NULL,NULL,19,13,12,772,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','4556721450564',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(75,'Phillips Mouse',NULL,NULL,'published','[\"products\\/18-1.jpg\"]',NULL,'0M-150-A1-A4',0,10,0,1,'in_stock',0,6,1,0,961.48,NULL,NULL,NULL,19,13,12,772,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','6939490396222',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(76,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/19-2.jpg\"]',NULL,'RV-156-A1',0,18,0,1,'in_stock',0,3,1,0,955.24,NULL,NULL,NULL,14,12,14,825,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','4298484247370',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(77,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/19-3.jpg\"]',NULL,'RV-156-A1-A2',0,18,0,1,'in_stock',0,3,1,0,955.24,NULL,NULL,NULL,14,12,14,825,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','3517233604723',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(78,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/19-4.jpg\"]',NULL,'RV-156-A1-A3',0,18,0,1,'in_stock',0,3,1,0,955.24,NULL,NULL,NULL,14,12,14,825,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','1389301448162',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(79,'Smart Home Speaker',NULL,NULL,'published','[\"products\\/22-2.jpg\"]',NULL,'CI-163-A1',0,14,0,1,'in_stock',0,2,1,0,1088.61,NULL,NULL,NULL,14,17,13,815,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','9939433381886',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(80,'Smart Home Speaker',NULL,NULL,'published','[\"products\\/22-3.jpg\"]',NULL,'CI-163-A1-A2',0,14,0,1,'in_stock',0,2,1,0,1088.61,NULL,NULL,NULL,14,17,13,815,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','9251493431661',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(81,'Smart Home Speaker',NULL,NULL,'published','[\"products\\/22-4.jpg\"]',NULL,'CI-163-A1-A3',0,14,0,1,'in_stock',0,2,1,0,1088.61,NULL,NULL,NULL,14,17,13,815,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','9547360780520',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(82,'Smart Home Speaker',NULL,NULL,'published','[\"products\\/22-1.jpg\"]',NULL,'CI-163-A1-A4',0,14,0,1,'in_stock',0,2,1,0,1088.61,NULL,NULL,NULL,14,17,13,815,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','1114836519892',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(83,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/23-2.jpg\"]',NULL,'AO-119-A1',0,18,0,1,'in_stock',0,5,1,0,1494.23,NULL,NULL,NULL,20,20,16,580,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','9841038650475',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(84,'Boxed - Bluetooth Headphone (Digital)',NULL,NULL,'published','[\"products\\/24-2.jpg\"]',NULL,'E6-164-A1',0,11,0,1,'in_stock',0,4,1,0,1270.42,927.4066,NULL,NULL,11,18,12,871,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'digital','0653546716494',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(85,'Boxed - Bluetooth Headphone (Digital)',NULL,NULL,'published','[\"products\\/24-3.jpg\"]',NULL,'E6-164-A1-A2',0,11,0,1,'in_stock',0,4,1,0,1270.42,1003.6318,NULL,NULL,11,18,12,871,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'digital','9813319951304',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(86,'Boxed - Bluetooth Headphone (Digital)',NULL,NULL,'published','[\"products\\/24-4.jpg\"]',NULL,'E6-164-A1-A3',0,11,0,1,'in_stock',0,4,1,0,1270.42,1143.378,NULL,NULL,11,18,12,871,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'digital','0954130864776',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(87,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/25-2.jpg\"]',NULL,'BX-139-A1',0,18,0,1,'in_stock',0,5,1,0,1641.42,NULL,NULL,NULL,10,18,12,602,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','8543891384139',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(88,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/25-3.jpg\"]',NULL,'BX-139-A1-A2',0,18,0,1,'in_stock',0,5,1,0,1641.42,NULL,NULL,NULL,10,18,12,602,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:16',0,'Botble\\ACL\\Models\\User',NULL,'physical','5874839299707',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(89,'Macbook Pro 2015 (Digital)',NULL,NULL,'published','[\"products\\/28-2.jpg\"]',NULL,'AB-112-A1',0,20,0,1,'in_stock',0,5,1,0,490.05,392.04,NULL,NULL,13,13,17,585,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'digital','3793345911069',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(90,'Macbook Pro 2015 (Digital)',NULL,NULL,'published','[\"products\\/28-3.jpg\"]',NULL,'AB-112-A1-A2',0,20,0,1,'in_stock',0,5,1,0,490.05,411.642,NULL,NULL,13,13,17,585,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'digital','0138749669209',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(91,'Macbook Pro 2015 (Digital)',NULL,NULL,'published','[\"products\\/28-4.jpg\"]',NULL,'AB-112-A1-A3',0,20,0,1,'in_stock',0,5,1,0,490.05,401.841,NULL,NULL,13,13,17,585,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'digital','3937729037222',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(92,'MacSafe 80W (Digital)',NULL,NULL,'published','[\"products\\/32-2.jpg\"]',NULL,'BP-139-A1',0,13,0,1,'in_stock',0,1,1,0,1777.17,1386.1926,NULL,NULL,14,15,20,728,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'digital','2463914937233',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(93,'Hand playstation',NULL,NULL,'published','[\"products\\/33-2.jpg\"]',NULL,'VI-118-A1',0,14,0,1,'in_stock',0,7,1,0,313.03,NULL,NULL,NULL,10,19,16,887,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','9915622073763',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(94,'Hand playstation',NULL,NULL,'published','[\"products\\/33-3.jpg\"]',NULL,'VI-118-A1-A2',0,14,0,1,'in_stock',0,7,1,0,313.03,NULL,NULL,NULL,10,19,16,887,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','0435033307503',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(95,'Black Smart Watches (Digital)',NULL,NULL,'published','[\"products\\/36-2.jpg\"]',NULL,'FB-106-A1',0,16,0,1,'in_stock',0,3,1,0,1365.05,1010.137,NULL,NULL,16,13,13,619,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'digital','7836071797753',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(96,'Black Smart Watches (Digital)',NULL,NULL,'published','[\"products\\/36-3.jpg\"]',NULL,'FB-106-A1-A2',0,16,0,1,'in_stock',0,3,1,0,1365.05,996.4865,NULL,NULL,16,13,13,619,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'digital','3664138521294',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(97,'Leather Watch In Black',NULL,NULL,'published','[\"products\\/37-2.jpg\"]',NULL,'WV-177-A1',0,18,0,1,'in_stock',0,1,1,0,1046.29,NULL,NULL,NULL,14,12,12,659,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','8906704866459',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(98,'Leather Watch In Black',NULL,NULL,'published','[\"products\\/37-3.jpg\"]',NULL,'WV-177-A1-A2',0,18,0,1,'in_stock',0,1,1,0,1046.29,NULL,NULL,NULL,14,12,12,659,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','9222542784649',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(99,'Sony WH-1000XM4 Wireless Headphones',NULL,NULL,'published','[\"products\\/39-2.jpg\"]',NULL,'UC-151-A1',0,10,0,1,'in_stock',0,3,1,0,918.66,NULL,NULL,NULL,14,13,11,593,NULL,0,'2025-06-28 20:16:51','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','4672524724685',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(100,'Dell XPS 15 Laptop',NULL,NULL,'published','[\"products\\/41-2.jpg\"]',NULL,'ZR-134-A1',0,14,0,1,'in_stock',0,1,1,0,109.36,NULL,NULL,NULL,14,13,19,507,NULL,0,'2025-06-28 20:16:52','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','2331764322946',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(101,'Dell XPS 15 Laptop',NULL,NULL,'published','[\"products\\/41-3.jpg\"]',NULL,'ZR-134-A1-A2',0,14,0,1,'in_stock',0,1,1,0,109.36,NULL,NULL,NULL,14,13,19,507,NULL,0,'2025-06-28 20:16:52','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','8932870450178',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(102,'Dell XPS 15 Laptop',NULL,NULL,'published','[\"products\\/41-4.jpg\"]',NULL,'ZR-134-A1-A3',0,14,0,1,'in_stock',0,1,1,0,109.36,NULL,NULL,NULL,14,13,19,507,NULL,0,'2025-06-28 20:16:52','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','6429641730161',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(103,'Dell XPS 15 Laptop',NULL,NULL,'published','[\"products\\/41-1.jpg\"]',NULL,'ZR-134-A1-A4',0,14,0,1,'in_stock',0,1,1,0,109.36,NULL,NULL,NULL,14,13,19,507,NULL,0,'2025-06-28 20:16:52','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','2347269139309',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(104,'iPad Pro 12.9-inch',NULL,NULL,'published','[\"products\\/42-2.jpg\"]',NULL,'UX-175-A1',0,12,0,1,'in_stock',0,1,1,0,464.24,NULL,NULL,NULL,18,18,13,554,NULL,0,'2025-06-28 20:16:52','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','7983985822764',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(105,'Bose QuietComfort Earbuds',NULL,NULL,'published','[\"products\\/43-2.jpg\"]',NULL,'DX-196-A1',0,10,0,1,'in_stock',0,1,1,0,1052.8,NULL,NULL,NULL,11,15,14,626,NULL,0,'2025-06-28 20:16:52','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','6689729088465',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(106,'Bose QuietComfort Earbuds',NULL,NULL,'published','[\"products\\/43-3.jpg\"]',NULL,'DX-196-A1-A2',0,10,0,1,'in_stock',0,1,1,0,1052.8,NULL,NULL,NULL,11,15,14,626,NULL,0,'2025-06-28 20:16:52','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','6394771689293',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(107,'LG OLED C1 Series TV (Digital)',NULL,NULL,'published','[\"products\\/44-2.jpg\"]',NULL,'CK-140-A1',0,20,0,1,'in_stock',0,2,1,0,1381.7,1174.445,NULL,NULL,16,11,20,887,NULL,0,'2025-06-28 20:16:52','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'digital','8628933510391',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(108,'Dyson V11 Vacuum Cleaner',NULL,NULL,'published','[\"products\\/45-2.jpg\"]',NULL,'HH-186-A1',0,17,0,1,'in_stock',0,3,1,0,1866.28,NULL,NULL,NULL,15,18,10,812,NULL,0,'2025-06-28 20:16:52','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','0885356869040',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(109,'Dyson V11 Vacuum Cleaner',NULL,NULL,'published','[\"products\\/45-3.jpg\"]',NULL,'HH-186-A1-A2',0,17,0,1,'in_stock',0,3,1,0,1866.28,NULL,NULL,NULL,15,18,10,812,NULL,0,'2025-06-28 20:16:52','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','9882744998949',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(110,'Dyson V11 Vacuum Cleaner',NULL,NULL,'published','[\"products\\/45-4.jpg\"]',NULL,'HH-186-A1-A3',0,17,0,1,'in_stock',0,3,1,0,1866.28,NULL,NULL,NULL,15,18,10,812,NULL,0,'2025-06-28 20:16:52','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','1927947433182',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(111,'Nintendo Switch OLED Model',NULL,NULL,'published','[\"products\\/46-2.jpg\"]',NULL,'NR-132-A1',0,10,0,1,'in_stock',0,7,1,0,1423.84,NULL,NULL,NULL,13,19,13,768,NULL,0,'2025-06-28 20:16:52','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','2430841865182',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(112,'Canon EOS R5 Camera',NULL,NULL,'published','[\"products\\/47-2.jpg\"]',NULL,'4S-169-A1',0,14,0,1,'in_stock',0,4,1,0,938.34,NULL,NULL,NULL,12,11,14,738,NULL,0,'2025-06-28 20:16:52','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','2353137482118',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(113,'Canon EOS R5 Camera',NULL,NULL,'published','[\"products\\/47-3.jpg\"]',NULL,'4S-169-A1-A2',0,14,0,1,'in_stock',0,4,1,0,938.34,NULL,NULL,NULL,12,11,14,738,NULL,0,'2025-06-28 20:16:52','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','6823501953569',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(114,'Canon EOS R5 Camera',NULL,NULL,'published','[\"products\\/47-1.jpg\"]',NULL,'4S-169-A1-A3',0,14,0,1,'in_stock',0,4,1,0,938.34,NULL,NULL,NULL,12,11,14,738,NULL,0,'2025-06-28 20:16:52','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','9503741631485',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(115,'Fitbit Sense Smartwatch (Digital)',NULL,NULL,'published','[\"products\\/48-2.jpg\"]',NULL,'EN-119-A1',0,15,0,1,'in_stock',0,7,1,0,1521.52,1156.3552,NULL,NULL,18,19,16,698,NULL,0,'2025-06-28 20:16:52','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'digital','2304151701907',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(116,'Fitbit Sense Smartwatch (Digital)',NULL,NULL,'published','[\"products\\/48-3.jpg\"]',NULL,'EN-119-A1-A2',0,15,0,1,'in_stock',0,7,1,0,1521.52,1156.3552,NULL,NULL,18,19,16,698,NULL,0,'2025-06-28 20:16:52','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'digital','6214873477379',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(117,'Logitech MX Master 3 Mouse',NULL,NULL,'published','[\"products\\/50-2.jpg\"]',NULL,'SK-141-A1',0,15,0,1,'in_stock',0,1,1,0,845.77,NULL,NULL,NULL,13,15,13,848,NULL,0,'2025-06-28 20:16:52','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','7395795030473',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(118,'Logitech MX Master 3 Mouse',NULL,NULL,'published','[\"products\\/50-3.jpg\"]',NULL,'SK-141-A1-A2',0,15,0,1,'in_stock',0,1,1,0,845.77,NULL,NULL,NULL,13,15,13,848,NULL,0,'2025-06-28 20:16:52','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','9058928219869',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(119,'Logitech MX Master 3 Mouse',NULL,NULL,'published','[\"products\\/50-4.jpg\"]',NULL,'SK-141-A1-A3',0,15,0,1,'in_stock',0,1,1,0,845.77,NULL,NULL,NULL,13,15,13,848,NULL,0,'2025-06-28 20:16:52','2025-06-28 20:17:17',0,'Botble\\ACL\\Models\\User',NULL,'physical','8440422780364',NULL,0,'auto_generate',0,0,0,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,4,NULL,NULL,21,3,'Clean & perfect source code','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/36-1.jpg\"]'),(2,9,NULL,NULL,21,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/9-2.jpg\",\"products\\/37-3.jpg\",\"products\\/46-3.jpg\"]'),(3,2,NULL,NULL,12,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/15-1.jpg\"]'),(4,1,NULL,NULL,42,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/20-1.jpg\",\"products\\/53-3.jpg\"]'),(5,1,NULL,NULL,15,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/1-4.jpg\",\"products\\/2-4.jpg\",\"products\\/39-1.jpg\",\"products\\/45-4.jpg\"]'),(6,10,NULL,NULL,49,5,'Clean & perfect source code','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/24-1.jpg\",\"products\\/35-4.jpg\",\"products\\/44-1.jpg\"]'),(7,2,NULL,NULL,35,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/21-1.jpg\"]'),(8,5,NULL,NULL,52,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/22-3.jpg\"]'),(9,4,NULL,NULL,2,3,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/28-1.jpg\"]'),(10,6,NULL,NULL,10,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/7-1.jpg\",\"products\\/13-1.jpg\",\"products\\/13-2.jpg\",\"products\\/48-1.jpg\"]'),(11,2,NULL,NULL,19,3,'Good app, good backup service and support. Good documentation.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/8-3.jpg\",\"products\\/12-1.jpg\",\"products\\/18-4.jpg\"]'),(12,6,NULL,NULL,22,3,'Best ecommerce CMS online store!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/3-4.jpg\",\"products\\/17-5.jpg\",\"products\\/30-2.jpg\",\"products\\/43-1.jpg\"]'),(13,7,NULL,NULL,26,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/21-3.jpg\",\"products\\/38-1.jpg\",\"products\\/38-3.jpg\"]'),(14,6,NULL,NULL,54,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/8-1.jpg\",\"products\\/28-3.jpg\",\"products\\/33-4.jpg\",\"products\\/54-2.jpg\"]'),(15,10,NULL,NULL,25,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/17-1.jpg\",\"products\\/21-3.jpg\",\"products\\/44-2.jpg\",\"products\\/53-2.jpg\"]'),(16,6,NULL,NULL,2,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/46-2.jpg\",\"products\\/50-1.jpg\"]'),(17,9,NULL,NULL,50,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/7-3.jpg\",\"products\\/29-2.jpg\",\"products\\/37-1.jpg\",\"products\\/47-2.jpg\"]'),(18,3,NULL,NULL,13,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/7-1.jpg\",\"products\\/28-1.jpg\",\"products\\/44-2.jpg\"]'),(19,1,NULL,NULL,40,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/13-3.jpg\",\"products\\/32-3.jpg\",\"products\\/43-3.jpg\",\"products\\/46-3.jpg\"]'),(20,10,NULL,NULL,2,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/19-1.jpg\"]'),(21,10,NULL,NULL,24,5,'Best ecommerce CMS online store!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/17-4.jpg\",\"products\\/20-1.jpg\",\"products\\/40-3.jpg\",\"products\\/54-2.jpg\"]'),(22,4,NULL,NULL,42,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/19-4.jpg\",\"products\\/36-1.jpg\",\"products\\/43-1.jpg\"]'),(23,8,NULL,NULL,16,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/28-1.jpg\",\"products\\/35-4.jpg\",\"products\\/48-4.jpg\"]'),(24,4,NULL,NULL,22,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/27-2.jpg\",\"products\\/45-1.jpg\",\"products\\/46-4.jpg\"]'),(25,1,NULL,NULL,4,5,'Clean & perfect source code','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/10-4.jpg\",\"products\\/12-3.jpg\"]'),(26,10,NULL,NULL,7,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/14-2.jpg\"]'),(27,2,NULL,NULL,7,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/6-2.jpg\",\"products\\/12-4.jpg\",\"products\\/36-1.jpg\",\"products\\/37-1.jpg\"]'),(28,9,NULL,NULL,37,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/18-1.jpg\",\"products\\/25-3.jpg\",\"products\\/33-4.jpg\"]'),(29,8,NULL,NULL,30,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/36-3.jpg\"]'),(30,1,NULL,NULL,26,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-4.jpg\",\"products\\/11-4.jpg\",\"products\\/13-1.jpg\",\"products\\/43-3.jpg\"]'),(31,9,NULL,NULL,27,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-4.jpg\",\"products\\/18-2.jpg\",\"products\\/47-1.jpg\",\"products\\/52-3.jpg\"]'),(32,7,NULL,NULL,25,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/6-4.jpg\"]'),(33,1,NULL,NULL,23,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/10-3.jpg\",\"products\\/14-1.jpg\",\"products\\/22-3.jpg\",\"products\\/48-1.jpg\"]'),(34,2,NULL,NULL,14,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/7-1.jpg\",\"products\\/13-1.jpg\"]'),(35,4,NULL,NULL,38,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-2.jpg\",\"products\\/30-4.jpg\"]'),(36,8,NULL,NULL,45,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/8-4.jpg\",\"products\\/10-2.jpg\",\"products\\/14-3.jpg\",\"products\\/33-1.jpg\"]'),(37,7,NULL,NULL,1,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/29-1.jpg\",\"products\\/48-3.jpg\"]'),(38,10,NULL,NULL,3,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/40-4.jpg\"]'),(39,9,NULL,NULL,15,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/17-4.jpg\",\"products\\/41-2.jpg\",\"products\\/48-2.jpg\",\"products\\/54-1.jpg\"]'),(40,6,NULL,NULL,51,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/44-3.jpg\"]'),(41,6,NULL,NULL,31,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/17-3.jpg\"]'),(42,3,NULL,NULL,4,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/27-4.jpg\",\"products\\/39-2.jpg\",\"products\\/49-2.jpg\"]'),(43,3,NULL,NULL,54,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/15-4.jpg\",\"products\\/41-1.jpg\",\"products\\/49-3.jpg\"]'),(44,2,NULL,NULL,50,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/41-3.jpg\"]'),(45,2,NULL,NULL,24,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/30-3.jpg\"]'),(46,7,NULL,NULL,7,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/13-1.jpg\",\"products\\/26-1.jpg\",\"products\\/33-2.jpg\"]'),(47,5,NULL,NULL,29,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/5-3.jpg\",\"products\\/22-2.jpg\"]'),(48,3,NULL,NULL,31,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/12-3.jpg\",\"products\\/21-2.jpg\",\"products\\/31-2.jpg\",\"products\\/34-4.jpg\"]'),(49,10,NULL,NULL,8,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/26-4.jpg\",\"products\\/48-1.jpg\"]'),(50,1,NULL,NULL,24,1,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/7-3.jpg\",\"products\\/24-4.jpg\"]'),(51,5,NULL,NULL,24,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/18-4.jpg\",\"products\\/23-2.jpg\"]'),(52,8,NULL,NULL,19,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/35-4.jpg\"]'),(53,10,NULL,NULL,38,4,'Clean & perfect source code','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/28-4.jpg\",\"products\\/42-1.jpg\",\"products\\/51-3.jpg\"]'),(54,9,NULL,NULL,11,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/13-1.jpg\",\"products\\/38-3.jpg\"]'),(55,5,NULL,NULL,49,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/50-3.jpg\"]'),(56,4,NULL,NULL,8,1,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/39-3.jpg\",\"products\\/43-1.jpg\",\"products\\/50-2.jpg\"]'),(57,5,NULL,NULL,33,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/17-3.jpg\",\"products\\/42-2.jpg\",\"products\\/51-3.jpg\"]'),(59,7,NULL,NULL,52,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/12-4.jpg\",\"products\\/20-2.jpg\",\"products\\/20-4.jpg\",\"products\\/47-2.jpg\"]'),(61,3,NULL,NULL,30,3,'Clean & perfect source code','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/42-3.jpg\"]'),(62,5,NULL,NULL,27,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/7-2.jpg\",\"products\\/14-2.jpg\",\"products\\/20-4.jpg\",\"products\\/44-1.jpg\"]'),(63,3,NULL,NULL,39,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/7-1.jpg\",\"products\\/16-2.jpg\",\"products\\/18-3.jpg\",\"products\\/39-3.jpg\"]'),(65,1,NULL,NULL,19,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/22-3.jpg\"]'),(66,1,NULL,NULL,9,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/14-2.jpg\",\"products\\/18-2.jpg\",\"products\\/51-1.jpg\"]'),(68,7,NULL,NULL,24,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/8-1.jpg\",\"products\\/16-4.jpg\",\"products\\/35-4.jpg\",\"products\\/43-1.jpg\"]'),(69,4,NULL,NULL,30,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/13-3.jpg\",\"products\\/17-2.jpg\"]'),(70,1,NULL,NULL,52,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/21-2.jpg\",\"products\\/21-3.jpg\",\"products\\/53-2.jpg\"]'),(72,3,NULL,NULL,21,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/5-3.jpg\",\"products\\/16-2.jpg\",\"products\\/53-1.jpg\"]'),(73,2,NULL,NULL,20,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/2-4.jpg\",\"products\\/11-1.jpg\",\"products\\/14-3.jpg\",\"products\\/16-2.jpg\"]'),(74,7,NULL,NULL,14,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/39-2.jpg\"]'),(76,2,NULL,NULL,29,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/34-1.jpg\",\"products\\/47-3.jpg\",\"products\\/50-3.jpg\"]'),(78,10,NULL,NULL,21,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/1-4.jpg\",\"products\\/6-4.jpg\",\"products\\/20-4.jpg\",\"products\\/37-3.jpg\"]'),(79,10,NULL,NULL,35,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/7-2.jpg\",\"products\\/8-1.jpg\",\"products\\/25-1.jpg\",\"products\\/26-4.jpg\"]'),(81,4,NULL,NULL,9,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/8-1.jpg\",\"products\\/34-4.jpg\",\"products\\/50-4.jpg\"]'),(82,9,NULL,NULL,34,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/16-3.jpg\",\"products\\/31-3.jpg\",\"products\\/36-1.jpg\"]'),(83,2,NULL,NULL,38,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/1-3.jpg\",\"products\\/9-3.jpg\",\"products\\/21-1.jpg\",\"products\\/31-2.jpg\"]'),(84,1,NULL,NULL,11,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/27-2.jpg\",\"products\\/44-1.jpg\"]'),(85,9,NULL,NULL,13,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/9-2.jpg\"]'),(86,9,NULL,NULL,54,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/20-2.jpg\",\"products\\/20-4.jpg\",\"products\\/43-2.jpg\",\"products\\/44-1.jpg\"]'),(87,2,NULL,NULL,49,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-2.jpg\",\"products\\/9-2.jpg\"]'),(88,9,NULL,NULL,43,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/23-3.jpg\"]'),(89,4,NULL,NULL,23,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/27-3.jpg\",\"products\\/46-3.jpg\"]'),(90,9,NULL,NULL,6,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/6-2.jpg\",\"products\\/18-2.jpg\",\"products\\/51-4.jpg\"]'),(92,9,NULL,NULL,46,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/28-4.jpg\"]'),(93,1,NULL,NULL,43,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/13-2.jpg\",\"products\\/14-1.jpg\",\"products\\/35-3.jpg\",\"products\\/37-1.jpg\"]'),(95,6,NULL,NULL,5,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/18-2.jpg\",\"products\\/30-1.jpg\",\"products\\/36-2.jpg\",\"products\\/43-1.jpg\"]'),(96,3,NULL,NULL,38,3,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/11-3.jpg\",\"products\\/25-4.jpg\",\"products\\/31-3.jpg\",\"products\\/48-3.jpg\"]'),(97,6,NULL,NULL,52,3,'Clean & perfect source code','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/6-1.jpg\",\"products\\/28-2.jpg\"]'),(98,5,NULL,NULL,10,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/27-1.jpg\",\"products\\/42-3.jpg\",\"products\\/47-1.jpg\"]'),(100,3,NULL,NULL,17,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/16-1.jpg\",\"products\\/16-4.jpg\",\"products\\/17-1.jpg\",\"products\\/24-1.jpg\"]'),(101,9,NULL,NULL,30,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/25-3.jpg\",\"products\\/37-2.jpg\"]'),(102,7,NULL,NULL,29,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/30-2.jpg\"]'),(103,2,NULL,NULL,26,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/22-3.jpg\",\"products\\/40-2.jpg\",\"products\\/54-3.jpg\"]'),(104,5,NULL,NULL,15,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/11-3.jpg\",\"products\\/27-1.jpg\",\"products\\/41-4.jpg\",\"products\\/44-1.jpg\"]'),(105,8,NULL,NULL,1,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/7-2.jpg\",\"products\\/11-1.jpg\",\"products\\/17-1.jpg\",\"products\\/29-3.jpg\"]'),(107,7,NULL,NULL,48,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/11-4.jpg\",\"products\\/41-4.jpg\"]'),(108,9,NULL,NULL,12,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/14-1.jpg\",\"products\\/37-3.jpg\"]'),(109,7,NULL,NULL,17,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/36-3.jpg\",\"products\\/51-4.jpg\"]'),(110,7,NULL,NULL,33,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/19-1.jpg\",\"products\\/25-2.jpg\",\"products\\/28-4.jpg\"]'),(111,3,NULL,NULL,24,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/6-2.jpg\",\"products\\/22-3.jpg\",\"products\\/36-2.jpg\",\"products\\/40-2.jpg\"]'),(112,7,NULL,NULL,35,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-1.jpg\",\"products\\/27-4.jpg\",\"products\\/32-2.jpg\",\"products\\/41-4.jpg\"]'),(113,10,NULL,NULL,10,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/26-1.jpg\"]'),(117,3,NULL,NULL,7,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/1-2.jpg\"]'),(118,9,NULL,NULL,19,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/1-4.jpg\",\"products\\/2-1.jpg\",\"products\\/7-1.jpg\"]'),(121,3,NULL,NULL,46,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/27-2.jpg\",\"products\\/30-2.jpg\",\"products\\/33-1.jpg\",\"products\\/46-2.jpg\"]'),(122,5,NULL,NULL,14,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/21-1.jpg\",\"products\\/29-2.jpg\",\"products\\/31-4.jpg\",\"products\\/52-3.jpg\"]'),(123,6,NULL,NULL,43,1,'Good app, good backup service and support. Good documentation.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/12-3.jpg\",\"products\\/31-4.jpg\",\"products\\/35-4.jpg\"]'),(124,3,NULL,NULL,49,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/24-3.jpg\",\"products\\/30-4.jpg\",\"products\\/32-4.jpg\",\"products\\/33-4.jpg\"]'),(126,4,NULL,NULL,7,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/27-3.jpg\",\"products\\/53-4.jpg\"]'),(127,8,NULL,NULL,54,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/36-2.jpg\",\"products\\/46-1.jpg\",\"products\\/52-3.jpg\",\"products\\/53-1.jpg\"]'),(128,5,NULL,NULL,7,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/18-4.jpg\",\"products\\/33-2.jpg\",\"products\\/47-2.jpg\"]'),(129,6,NULL,NULL,20,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/12-2.jpg\",\"products\\/20-3.jpg\",\"products\\/21-2.jpg\",\"products\\/35-1.jpg\"]'),(131,10,NULL,NULL,44,2,'Good app, good backup service and support. Good documentation.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/46-4.jpg\"]'),(132,8,NULL,NULL,44,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/8-2.jpg\",\"products\\/13-4.jpg\",\"products\\/33-1.jpg\"]'),(133,2,NULL,NULL,10,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/29-3.jpg\",\"products\\/43-1.jpg\"]'),(134,1,NULL,NULL,17,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/44-1.jpg\"]'),(137,8,NULL,NULL,23,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/9-1.jpg\",\"products\\/9-2.jpg\",\"products\\/20-4.jpg\",\"products\\/49-2.jpg\"]'),(138,2,NULL,NULL,17,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/25-2.jpg\",\"products\\/36-3.jpg\",\"products\\/39-2.jpg\",\"products\\/45-2.jpg\"]'),(139,8,NULL,NULL,42,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/20-2.jpg\",\"products\\/42-3.jpg\"]'),(140,3,NULL,NULL,42,2,'Clean & perfect source code','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/7-1.jpg\",\"products\\/11-3.jpg\",\"products\\/47-3.jpg\"]'),(141,3,NULL,NULL,26,5,'Clean & perfect source code','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/2-4.jpg\"]'),(142,9,NULL,NULL,5,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/27-3.jpg\",\"products\\/44-2.jpg\",\"products\\/49-1.jpg\"]'),(145,10,NULL,NULL,54,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/17-1.jpg\"]'),(146,4,NULL,NULL,5,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/19-3.jpg\",\"products\\/24-2.jpg\",\"products\\/51-4.jpg\"]'),(148,4,NULL,NULL,29,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/17-4.jpg\"]'),(149,5,NULL,NULL,39,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/23-4.jpg\"]'),(150,5,NULL,NULL,4,2,'Best ecommerce CMS online store!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/13-4.jpg\",\"products\\/23-4.jpg\",\"products\\/49-4.jpg\",\"products\\/54-3.jpg\"]'),(153,2,NULL,NULL,25,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/26-2.jpg\",\"products\\/33-4.jpg\"]'),(155,9,NULL,NULL,40,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/17-3.jpg\",\"products\\/33-4.jpg\"]'),(156,4,NULL,NULL,53,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/19-1.jpg\",\"products\\/20-3.jpg\",\"products\\/40-1.jpg\",\"products\\/52-2.jpg\"]'),(158,9,NULL,NULL,10,5,'Best ecommerce CMS online store!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/43-3.jpg\"]'),(160,7,NULL,NULL,19,4,'Clean & perfect source code','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/18-4.jpg\",\"products\\/35-3.jpg\",\"products\\/48-3.jpg\"]'),(162,8,NULL,NULL,14,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/20-1.jpg\"]'),(163,4,NULL,NULL,40,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/26-3.jpg\",\"products\\/29-2.jpg\",\"products\\/41-4.jpg\"]'),(164,8,NULL,NULL,28,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/8-3.jpg\",\"products\\/9-2.jpg\",\"products\\/41-4.jpg\",\"products\\/45-1.jpg\"]'),(165,6,NULL,NULL,13,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/52-3.jpg\"]'),(166,4,NULL,NULL,54,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-3.jpg\",\"products\\/5-1.jpg\",\"products\\/8-3.jpg\",\"products\\/10-1.jpg\"]'),(167,2,NULL,NULL,16,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/3-4.jpg\",\"products\\/38-4.jpg\"]'),(168,10,NULL,NULL,5,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/11-1.jpg\"]'),(171,2,NULL,NULL,13,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/23-1.jpg\",\"products\\/25-3.jpg\"]'),(172,9,NULL,NULL,52,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/32-4.jpg\"]'),(173,9,NULL,NULL,41,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-3.jpg\",\"products\\/13-2.jpg\",\"products\\/30-2.jpg\"]'),(174,9,NULL,NULL,44,3,'Clean & perfect source code','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/6-3.jpg\",\"products\\/45-4.jpg\",\"products\\/46-2.jpg\"]'),(175,1,NULL,NULL,41,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/22-3.jpg\"]'),(177,8,NULL,NULL,6,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/45-2.jpg\"]'),(178,7,NULL,NULL,36,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/21-1.jpg\",\"products\\/22-1.jpg\",\"products\\/45-2.jpg\",\"products\\/47-2.jpg\"]'),(180,7,NULL,NULL,44,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/5-2.jpg\"]'),(182,3,NULL,NULL,15,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/25-2.jpg\",\"products\\/45-2.jpg\"]'),(183,8,NULL,NULL,24,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/12-2.jpg\",\"products\\/23-2.jpg\"]'),(186,8,NULL,NULL,35,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/1-1.jpg\",\"products\\/3-3.jpg\",\"products\\/27-2.jpg\",\"products\\/40-3.jpg\"]'),(187,9,NULL,NULL,42,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/34-3.jpg\",\"products\\/37-2.jpg\",\"products\\/50-3.jpg\"]'),(188,5,NULL,NULL,23,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/14-2.jpg\",\"products\\/36-2.jpg\",\"products\\/40-4.jpg\"]'),(189,10,NULL,NULL,46,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/6-1.jpg\",\"products\\/31-1.jpg\",\"products\\/39-1.jpg\"]'),(191,5,NULL,NULL,12,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/3-2.jpg\"]'),(192,5,NULL,NULL,43,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/9-3.jpg\",\"products\\/13-4.jpg\",\"products\\/38-2.jpg\",\"products\\/41-2.jpg\"]'),(193,1,NULL,NULL,37,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/11-3.jpg\",\"products\\/19-1.jpg\"]'),(196,2,NULL,NULL,47,2,'Best ecommerce CMS online store!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/1-1.jpg\",\"products\\/11-2.jpg\",\"products\\/30-2.jpg\",\"products\\/54-1.jpg\"]'),(198,2,NULL,NULL,39,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/39-1.jpg\",\"products\\/44-2.jpg\"]'),(199,8,NULL,NULL,10,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/6-3.jpg\",\"products\\/24-4.jpg\",\"products\\/28-4.jpg\",\"products\\/38-3.jpg\"]'),(200,4,NULL,NULL,46,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/20-1.jpg\"]'),(201,9,NULL,NULL,26,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/23-3.jpg\",\"products\\/30-4.jpg\"]'),(202,9,NULL,NULL,20,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/14-1.jpg\",\"products\\/16-3.jpg\"]'),(203,6,NULL,NULL,14,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/30-4.jpg\",\"products\\/32-2.jpg\",\"products\\/33-3.jpg\"]'),(204,7,NULL,NULL,10,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/10-2.jpg\",\"products\\/10-3.jpg\"]'),(205,4,NULL,NULL,18,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/2-3.jpg\",\"products\\/12-3.jpg\"]'),(206,5,NULL,NULL,32,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/12-3.jpg\",\"products\\/22-1.jpg\"]'),(208,7,NULL,NULL,27,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/27-2.jpg\"]'),(210,9,NULL,NULL,49,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/2-4.jpg\",\"products\\/30-3.jpg\"]'),(211,6,NULL,NULL,39,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/6-3.jpg\",\"products\\/14-1.jpg\",\"products\\/15-3.jpg\"]'),(212,1,NULL,NULL,30,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/5-4.jpg\",\"products\\/11-1.jpg\",\"products\\/51-4.jpg\",\"products\\/53-4.jpg\"]'),(213,10,NULL,NULL,18,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/12-4.jpg\",\"products\\/17-5.jpg\",\"products\\/28-2.jpg\",\"products\\/34-3.jpg\"]'),(214,6,NULL,NULL,42,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/1-3.jpg\",\"products\\/16-2.jpg\",\"products\\/17-5.jpg\",\"products\\/52-2.jpg\"]'),(215,8,NULL,NULL,26,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/1-2.jpg\",\"products\\/39-3.jpg\"]'),(217,8,NULL,NULL,32,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/19-3.jpg\",\"products\\/21-2.jpg\",\"products\\/23-2.jpg\",\"products\\/45-4.jpg\"]'),(218,1,NULL,NULL,10,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-4.jpg\",\"products\\/48-1.jpg\"]'),(220,6,NULL,NULL,15,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/19-2.jpg\",\"products\\/52-2.jpg\"]'),(221,2,NULL,NULL,11,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/39-4.jpg\",\"products\\/45-1.jpg\",\"products\\/49-3.jpg\"]'),(222,1,NULL,NULL,50,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/13-3.jpg\"]'),(223,6,NULL,NULL,1,3,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/30-1.jpg\"]'),(224,7,NULL,NULL,49,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/3-3.jpg\",\"products\\/24-4.jpg\"]'),(225,5,NULL,NULL,30,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/5-2.jpg\",\"products\\/32-3.jpg\",\"products\\/33-1.jpg\",\"products\\/42-1.jpg\"]'),(227,6,NULL,NULL,38,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/29-1.jpg\"]'),(230,7,NULL,NULL,32,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/6-1.jpg\",\"products\\/33-4.jpg\"]'),(233,8,NULL,NULL,9,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/17-4.jpg\",\"products\\/23-3.jpg\",\"products\\/39-4.jpg\",\"products\\/40-1.jpg\"]'),(234,10,NULL,NULL,13,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/20-3.jpg\"]'),(235,8,NULL,NULL,11,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-3.jpg\",\"products\\/15-2.jpg\",\"products\\/30-4.jpg\",\"products\\/45-3.jpg\"]'),(238,3,NULL,NULL,27,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/11-2.jpg\",\"products\\/35-1.jpg\",\"products\\/49-3.jpg\"]'),(239,5,NULL,NULL,16,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/17-5.jpg\",\"products\\/47-2.jpg\",\"products\\/50-1.jpg\"]'),(242,9,NULL,NULL,3,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/8-4.jpg\",\"products\\/10-4.jpg\",\"products\\/14-2.jpg\",\"products\\/15-3.jpg\"]'),(246,7,NULL,NULL,9,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/24-1.jpg\",\"products\\/31-3.jpg\"]'),(247,8,NULL,NULL,36,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/46-3.jpg\",\"products\\/48-2.jpg\"]'),(250,10,NULL,NULL,22,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/44-3.jpg\",\"products\\/47-1.jpg\"]'),(251,1,NULL,NULL,34,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/15-1.jpg\",\"products\\/25-3.jpg\"]'),(252,6,NULL,NULL,24,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/7-3.jpg\",\"products\\/18-3.jpg\",\"products\\/21-3.jpg\",\"products\\/35-3.jpg\"]'),(254,1,NULL,NULL,32,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/18-1.jpg\",\"products\\/24-2.jpg\",\"products\\/33-3.jpg\",\"products\\/39-4.jpg\"]'),(255,7,NULL,NULL,22,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/33-4.jpg\"]'),(257,8,NULL,NULL,2,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/13-1.jpg\",\"products\\/43-2.jpg\",\"products\\/51-2.jpg\"]'),(259,5,NULL,NULL,48,4,'Clean & perfect source code','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/32-4.jpg\"]'),(261,6,NULL,NULL,7,5,'Good app, good backup service and support. Good documentation.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/18-2.jpg\",\"products\\/25-3.jpg\",\"products\\/45-1.jpg\"]'),(262,10,NULL,NULL,11,4,'Clean & perfect source code','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/15-4.jpg\",\"products\\/26-3.jpg\",\"products\\/36-1.jpg\",\"products\\/49-4.jpg\"]'),(263,10,NULL,NULL,33,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/18-3.jpg\",\"products\\/28-3.jpg\"]'),(264,1,NULL,NULL,46,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/16-1.jpg\",\"products\\/16-3.jpg\"]'),(265,2,NULL,NULL,30,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/37-3.jpg\"]'),(267,9,NULL,NULL,33,3,'Clean & perfect source code','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/25-3.jpg\"]'),(268,3,NULL,NULL,43,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/9-3.jpg\",\"products\\/19-4.jpg\"]'),(269,8,NULL,NULL,41,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/13-3.jpg\",\"products\\/15-2.jpg\",\"products\\/16-2.jpg\",\"products\\/48-1.jpg\"]'),(270,8,NULL,NULL,50,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/5-3.jpg\",\"products\\/32-1.jpg\",\"products\\/47-3.jpg\"]'),(273,5,NULL,NULL,20,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/3-4.jpg\",\"products\\/9-2.jpg\",\"products\\/28-2.jpg\",\"products\\/40-4.jpg\"]'),(274,3,NULL,NULL,11,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/49-3.jpg\"]'),(276,2,NULL,NULL,27,5,'Good app, good backup service and support. Good documentation.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/25-3.jpg\",\"products\\/51-4.jpg\"]'),(277,8,NULL,NULL,21,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/10-1.jpg\",\"products\\/25-1.jpg\"]'),(278,2,NULL,NULL,45,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/26-2.jpg\"]'),(280,9,NULL,NULL,1,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-3.jpg\",\"products\\/8-1.jpg\",\"products\\/38-2.jpg\"]'),(281,1,NULL,NULL,16,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/3-2.jpg\",\"products\\/14-3.jpg\",\"products\\/16-3.jpg\",\"products\\/45-3.jpg\"]'),(282,5,NULL,NULL,21,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/31-3.jpg\"]'),(284,3,NULL,NULL,25,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/1-2.jpg\",\"products\\/8-4.jpg\",\"products\\/44-1.jpg\",\"products\\/44-3.jpg\"]'),(285,7,NULL,NULL,46,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/13-4.jpg\",\"products\\/14-2.jpg\",\"products\\/32-1.jpg\",\"products\\/39-1.jpg\"]'),(289,7,NULL,NULL,37,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/12-3.jpg\",\"products\\/12-4.jpg\",\"products\\/28-3.jpg\"]'),(291,2,NULL,NULL,52,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/54-3.jpg\"]'),(292,1,NULL,NULL,44,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/13-3.jpg\",\"products\\/24-2.jpg\",\"products\\/28-3.jpg\",\"products\\/44-3.jpg\"]'),(293,8,NULL,NULL,48,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/12-3.jpg\"]'),(296,8,NULL,NULL,51,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/7-2.jpg\",\"products\\/12-2.jpg\",\"products\\/24-4.jpg\"]'),(297,6,NULL,NULL,44,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/16-1.jpg\"]'),(298,6,NULL,NULL,34,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/17-1.jpg\",\"products\\/18-4.jpg\"]'),(300,3,NULL,NULL,40,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/20-3.jpg\",\"products\\/45-1.jpg\",\"products\\/46-1.jpg\"]'),(302,9,NULL,NULL,28,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/10-4.jpg\",\"products\\/12-4.jpg\",\"products\\/13-2.jpg\",\"products\\/36-1.jpg\"]'),(304,2,NULL,NULL,1,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/6-1.jpg\",\"products\\/29-1.jpg\",\"products\\/38-4.jpg\",\"products\\/44-3.jpg\"]'),(305,8,NULL,NULL,46,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/13-1.jpg\",\"products\\/40-4.jpg\",\"products\\/52-1.jpg\"]'),(306,3,NULL,NULL,9,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/29-1.jpg\",\"products\\/53-4.jpg\"]'),(307,4,NULL,NULL,17,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/5-1.jpg\",\"products\\/19-3.jpg\",\"products\\/28-3.jpg\"]'),(309,4,NULL,NULL,14,2,'Best ecommerce CMS online store!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/13-4.jpg\",\"products\\/14-1.jpg\",\"products\\/16-4.jpg\",\"products\\/30-2.jpg\"]'),(310,4,NULL,NULL,13,2,'Best ecommerce CMS online store!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/44-1.jpg\"]'),(311,8,NULL,NULL,37,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/37-1.jpg\",\"products\\/45-4.jpg\"]'),(314,1,NULL,NULL,22,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/10-2.jpg\",\"products\\/34-4.jpg\",\"products\\/39-4.jpg\",\"products\\/45-3.jpg\"]'),(315,4,NULL,NULL,44,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/8-4.jpg\",\"products\\/38-4.jpg\"]'),(316,5,NULL,NULL,40,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/32-4.jpg\",\"products\\/39-1.jpg\"]'),(318,3,NULL,NULL,12,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/51-4.jpg\"]'),(319,9,NULL,NULL,39,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/26-3.jpg\",\"products\\/35-1.jpg\",\"products\\/39-2.jpg\",\"products\\/52-1.jpg\"]'),(320,3,NULL,NULL,10,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/5-3.jpg\",\"products\\/34-2.jpg\",\"products\\/38-2.jpg\"]'),(321,4,NULL,NULL,51,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/34-1.jpg\",\"products\\/50-1.jpg\",\"products\\/51-1.jpg\",\"products\\/53-2.jpg\"]'),(323,7,NULL,NULL,11,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/9-3.jpg\",\"products\\/31-3.jpg\",\"products\\/51-3.jpg\"]'),(324,7,NULL,NULL,53,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/2-3.jpg\",\"products\\/20-1.jpg\",\"products\\/33-2.jpg\",\"products\\/52-2.jpg\"]'),(326,7,NULL,NULL,8,1,'Best ecommerce CMS online store!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/5-3.jpg\",\"products\\/25-2.jpg\",\"products\\/40-1.jpg\",\"products\\/54-2.jpg\"]'),(329,9,NULL,NULL,32,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/11-1.jpg\"]'),(330,3,NULL,NULL,44,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/13-4.jpg\",\"products\\/25-1.jpg\",\"products\\/27-3.jpg\",\"products\\/32-2.jpg\"]'),(331,1,NULL,NULL,21,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/11-3.jpg\",\"products\\/23-2.jpg\",\"products\\/41-2.jpg\",\"products\\/46-4.jpg\"]'),(332,6,NULL,NULL,30,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/53-3.jpg\"]'),(334,6,NULL,NULL,8,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-1.jpg\",\"products\\/8-1.jpg\",\"products\\/13-2.jpg\",\"products\\/17-4.jpg\"]'),(335,6,NULL,NULL,46,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/8-3.jpg\",\"products\\/18-1.jpg\",\"products\\/26-3.jpg\",\"products\\/54-3.jpg\"]'),(339,10,NULL,NULL,12,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/30-1.jpg\",\"products\\/39-2.jpg\"]'),(340,10,NULL,NULL,31,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/14-3.jpg\",\"products\\/41-3.jpg\",\"products\\/42-2.jpg\",\"products\\/53-2.jpg\"]'),(341,4,NULL,NULL,45,1,'Best ecommerce CMS online store!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/18-3.jpg\",\"products\\/28-2.jpg\",\"products\\/30-1.jpg\",\"products\\/32-1.jpg\"]'),(342,3,NULL,NULL,45,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/32-1.jpg\",\"products\\/38-2.jpg\",\"products\\/51-2.jpg\"]'),(345,6,NULL,NULL,25,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/40-2.jpg\"]'),(346,6,NULL,NULL,50,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/27-4.jpg\",\"products\\/32-4.jpg\"]'),(350,4,NULL,NULL,41,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/42-3.jpg\"]'),(352,1,NULL,NULL,7,3,'Good app, good backup service and support. Good documentation.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/26-4.jpg\",\"products\\/31-4.jpg\"]'),(353,9,NULL,NULL,38,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/8-3.jpg\",\"products\\/19-2.jpg\"]'),(355,7,NULL,NULL,30,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/18-3.jpg\",\"products\\/21-1.jpg\",\"products\\/32-4.jpg\",\"products\\/43-1.jpg\"]'),(361,1,NULL,NULL,18,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/2-3.jpg\"]'),(362,4,NULL,NULL,6,4,'Good app, good backup service and support. Good documentation.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/43-1.jpg\"]'),(364,6,NULL,NULL,32,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/8-2.jpg\",\"products\\/37-2.jpg\"]'),(367,10,NULL,NULL,50,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/2-3.jpg\",\"products\\/5-3.jpg\",\"products\\/28-1.jpg\",\"products\\/33-1.jpg\"]'),(369,3,NULL,NULL,41,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/2-3.jpg\",\"products\\/12-1.jpg\",\"products\\/35-3.jpg\"]'),(370,10,NULL,NULL,47,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/6-1.jpg\",\"products\\/31-2.jpg\",\"products\\/38-2.jpg\",\"products\\/46-1.jpg\"]'),(373,9,NULL,NULL,47,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/17-4.jpg\",\"products\\/24-3.jpg\"]'),(374,3,NULL,NULL,52,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/52-1.jpg\"]'),(377,9,NULL,NULL,53,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/32-4.jpg\",\"products\\/45-3.jpg\"]'),(378,6,NULL,NULL,18,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/3-2.jpg\",\"products\\/13-1.jpg\",\"products\\/37-3.jpg\",\"products\\/48-4.jpg\"]'),(379,7,NULL,NULL,23,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/23-4.jpg\",\"products\\/31-4.jpg\"]'),(386,5,NULL,NULL,51,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/1-1.jpg\",\"products\\/6-4.jpg\",\"products\\/16-1.jpg\",\"products\\/36-2.jpg\"]'),(387,9,NULL,NULL,23,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/2-2.jpg\",\"products\\/32-4.jpg\"]'),(391,5,NULL,NULL,9,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/3-1.jpg\"]'),(392,1,NULL,NULL,25,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/8-1.jpg\"]'),(393,8,NULL,NULL,38,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/26-1.jpg\"]'),(394,1,NULL,NULL,29,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/2-4.jpg\",\"products\\/20-2.jpg\"]'),(397,2,NULL,NULL,33,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/5-1.jpg\"]'),(398,7,NULL,NULL,50,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-4.jpg\",\"products\\/12-2.jpg\",\"products\\/31-1.jpg\",\"products\\/54-1.jpg\"]'),(400,8,NULL,NULL,8,3,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/16-2.jpg\",\"products\\/49-1.jpg\",\"products\\/54-1.jpg\"]'),(401,7,NULL,NULL,5,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/13-3.jpg\",\"products\\/23-2.jpg\"]'),(406,6,NULL,NULL,21,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/10-3.jpg\",\"products\\/17-5.jpg\"]'),(407,2,NULL,NULL,48,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/11-1.jpg\",\"products\\/13-4.jpg\",\"products\\/27-2.jpg\",\"products\\/28-4.jpg\"]'),(408,6,NULL,NULL,33,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/2-3.jpg\",\"products\\/34-2.jpg\"]'),(412,3,NULL,NULL,50,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/12-2.jpg\",\"products\\/12-4.jpg\",\"products\\/28-4.jpg\"]'),(413,5,NULL,NULL,50,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/1-1.jpg\",\"products\\/14-2.jpg\",\"products\\/21-1.jpg\",\"products\\/29-2.jpg\"]'),(414,7,NULL,NULL,43,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/3-1.jpg\",\"products\\/7-1.jpg\",\"products\\/25-4.jpg\",\"products\\/36-2.jpg\"]'),(419,1,NULL,NULL,39,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/23-4.jpg\"]'),(420,6,NULL,NULL,23,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/32-2.jpg\",\"products\\/35-4.jpg\",\"products\\/48-1.jpg\"]'),(421,2,NULL,NULL,51,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/18-4.jpg\",\"products\\/21-3.jpg\",\"products\\/26-3.jpg\"]'),(423,6,NULL,NULL,40,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/25-4.jpg\"]'),(424,1,NULL,NULL,8,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/24-3.jpg\",\"products\\/46-1.jpg\",\"products\\/47-2.jpg\",\"products\\/48-1.jpg\"]'),(429,1,NULL,NULL,3,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/20-1.jpg\",\"products\\/30-1.jpg\"]'),(431,8,NULL,NULL,52,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/10-4.jpg\"]'),(432,8,NULL,NULL,12,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/16-4.jpg\",\"products\\/41-2.jpg\"]'),(433,4,NULL,NULL,43,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/47-1.jpg\"]'),(434,4,NULL,NULL,19,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/1-1.jpg\",\"products\\/20-2.jpg\",\"products\\/46-2.jpg\",\"products\\/50-3.jpg\"]'),(436,1,NULL,NULL,38,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/22-4.jpg\"]'),(438,3,NULL,NULL,16,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/39-3.jpg\",\"products\\/44-2.jpg\",\"products\\/48-4.jpg\"]'),(439,2,NULL,NULL,21,1,'Best ecommerce CMS online store!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/1-4.jpg\",\"products\\/13-3.jpg\",\"products\\/18-2.jpg\"]'),(447,2,NULL,NULL,23,5,'Best ecommerce CMS online store!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/53-1.jpg\"]'),(448,8,NULL,NULL,4,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/21-3.jpg\",\"products\\/54-2.jpg\"]'),(449,7,NULL,NULL,12,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/16-3.jpg\"]'),(450,7,NULL,NULL,16,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/20-4.jpg\",\"products\\/25-4.jpg\"]'),(454,10,NULL,NULL,45,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/3-2.jpg\",\"products\\/8-4.jpg\",\"products\\/45-2.jpg\"]'),(455,3,NULL,NULL,32,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/44-1.jpg\"]'),(456,10,NULL,NULL,27,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/15-2.jpg\",\"products\\/26-2.jpg\",\"products\\/51-4.jpg\"]'),(457,7,NULL,NULL,40,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/24-4.jpg\",\"products\\/41-2.jpg\"]'),(458,6,NULL,NULL,45,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/1-3.jpg\"]'),(459,1,NULL,NULL,12,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/2-1.jpg\"]'),(460,1,NULL,NULL,53,4,'Clean & perfect source code','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/14-1.jpg\",\"products\\/26-1.jpg\",\"products\\/32-4.jpg\",\"products\\/51-3.jpg\"]'),(461,8,NULL,NULL,27,1,'Best ecommerce CMS online store!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/47-1.jpg\"]'),(463,3,NULL,NULL,8,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/2-2.jpg\",\"products\\/20-3.jpg\"]'),(465,7,NULL,NULL,28,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/21-2.jpg\"]'),(466,4,NULL,NULL,47,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/18-3.jpg\",\"products\\/18-4.jpg\",\"products\\/24-3.jpg\"]'),(470,2,NULL,NULL,36,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/2-2.jpg\",\"products\\/14-1.jpg\"]'),(472,3,NULL,NULL,14,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/17-5.jpg\",\"products\\/37-1.jpg\",\"products\\/42-1.jpg\"]'),(480,4,NULL,NULL,24,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/16-1.jpg\",\"products\\/32-2.jpg\",\"products\\/42-1.jpg\",\"products\\/45-3.jpg\"]'),(481,9,NULL,NULL,35,5,'Clean & perfect source code','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/26-4.jpg\",\"products\\/35-4.jpg\",\"products\\/42-1.jpg\",\"products\\/46-4.jpg\"]'),(482,3,NULL,NULL,36,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/13-4.jpg\"]'),(483,4,NULL,NULL,28,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/11-1.jpg\",\"products\\/48-3.jpg\"]'),(485,8,NULL,NULL,3,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/6-4.jpg\",\"products\\/12-1.jpg\",\"products\\/38-2.jpg\"]'),(489,2,NULL,NULL,37,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/37-3.jpg\"]'),(493,7,NULL,NULL,51,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/2-2.jpg\",\"products\\/9-3.jpg\",\"products\\/16-4.jpg\",\"products\\/36-1.jpg\"]'),(496,7,NULL,NULL,39,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/33-4.jpg\",\"products\\/37-2.jpg\",\"products\\/52-1.jpg\"]'),(500,1,NULL,NULL,54,1,'Good app, good backup service and support. Good documentation.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/6-3.jpg\"]'),(501,4,NULL,NULL,27,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/48-1.jpg\"]'),(503,7,NULL,NULL,4,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/7-1.jpg\"]'),(505,4,NULL,NULL,37,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/1-4.jpg\",\"products\\/14-3.jpg\",\"products\\/16-3.jpg\",\"products\\/51-1.jpg\"]'),(506,2,NULL,NULL,54,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/9-3.jpg\",\"products\\/27-3.jpg\",\"products\\/35-2.jpg\",\"products\\/39-4.jpg\"]'),(507,1,NULL,NULL,2,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/5-1.jpg\"]'),(512,2,NULL,NULL,40,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/20-3.jpg\",\"products\\/37-2.jpg\"]'),(516,3,NULL,NULL,19,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/42-2.jpg\",\"products\\/42-3.jpg\"]'),(517,2,NULL,NULL,43,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/13-2.jpg\",\"products\\/19-3.jpg\",\"products\\/31-1.jpg\"]'),(520,6,NULL,NULL,12,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-3.jpg\",\"products\\/22-1.jpg\"]'),(521,3,NULL,NULL,6,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/17-4.jpg\",\"products\\/20-4.jpg\",\"products\\/53-2.jpg\"]'),(525,2,NULL,NULL,32,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/19-4.jpg\",\"products\\/21-4.jpg\",\"products\\/38-1.jpg\"]'),(528,4,NULL,NULL,20,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/6-1.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/34-1.jpg\"]'),(529,3,NULL,NULL,34,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/18-2.jpg\"]'),(534,5,NULL,NULL,25,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/14-4.jpg\",\"products\\/45-3.jpg\",\"products\\/50-1.jpg\",\"products\\/51-1.jpg\"]'),(536,1,NULL,NULL,20,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/10-4.jpg\",\"products\\/21-1.jpg\",\"products\\/40-3.jpg\"]'),(551,9,NULL,NULL,7,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/28-2.jpg\",\"products\\/41-3.jpg\",\"products\\/47-1.jpg\"]'),(552,8,NULL,NULL,7,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/17-4.jpg\",\"products\\/22-1.jpg\"]'),(553,7,NULL,NULL,3,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/2-2.jpg\",\"products\\/12-3.jpg\",\"products\\/22-4.jpg\",\"products\\/30-1.jpg\"]'),(554,5,NULL,NULL,34,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-1.jpg\",\"products\\/5-3.jpg\",\"products\\/23-2.jpg\",\"products\\/37-3.jpg\"]'),(555,6,NULL,NULL,19,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/8-4.jpg\",\"products\\/37-3.jpg\",\"products\\/43-2.jpg\"]'),(562,8,NULL,NULL,25,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/16-1.jpg\",\"products\\/24-3.jpg\",\"products\\/31-4.jpg\",\"products\\/53-2.jpg\"]'),(565,5,NULL,NULL,6,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/2-3.jpg\",\"products\\/34-4.jpg\"]'),(569,5,NULL,NULL,1,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/24-1.jpg\",\"products\\/30-3.jpg\",\"products\\/45-4.jpg\"]'),(570,9,NULL,NULL,36,3,'Best ecommerce CMS online store!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/39-4.jpg\",\"products\\/44-2.jpg\",\"products\\/45-2.jpg\"]'),(573,5,NULL,NULL,37,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/16-2.jpg\",\"products\\/21-3.jpg\"]'),(574,8,NULL,NULL,53,1,'Good app, good backup service and support. Good documentation.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/28-1.jpg\",\"products\\/36-2.jpg\"]'),(576,1,NULL,NULL,47,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/13-1.jpg\",\"products\\/20-3.jpg\",\"products\\/29-1.jpg\"]'),(578,3,NULL,NULL,37,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/15-2.jpg\",\"products\\/51-2.jpg\"]'),(579,4,NULL,NULL,11,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/30-3.jpg\",\"products\\/38-4.jpg\",\"products\\/41-1.jpg\"]'),(582,7,NULL,NULL,31,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-2.jpg\",\"products\\/16-4.jpg\",\"products\\/38-2.jpg\",\"products\\/52-1.jpg\"]'),(589,7,NULL,NULL,38,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/28-3.jpg\",\"products\\/52-3.jpg\"]'),(590,10,NULL,NULL,23,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/13-1.jpg\",\"products\\/13-3.jpg\",\"products\\/22-2.jpg\"]'),(591,1,NULL,NULL,28,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/5-2.jpg\",\"products\\/14-1.jpg\",\"products\\/25-1.jpg\",\"products\\/48-2.jpg\"]'),(592,2,NULL,NULL,6,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/2-1.jpg\"]'),(593,5,NULL,NULL,28,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-3.jpg\"]'),(594,1,NULL,NULL,31,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/29-1.jpg\",\"products\\/51-4.jpg\"]'),(599,7,NULL,NULL,6,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/14-3.jpg\",\"products\\/16-3.jpg\",\"products\\/41-1.jpg\"]'),(605,7,NULL,NULL,34,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/17-1.jpg\",\"products\\/22-1.jpg\",\"products\\/22-4.jpg\"]'),(607,2,NULL,NULL,53,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/9-1.jpg\",\"products\\/37-3.jpg\",\"products\\/45-1.jpg\",\"products\\/48-1.jpg\"]'),(611,9,NULL,NULL,4,3,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-4.jpg\",\"products\\/18-4.jpg\",\"products\\/47-2.jpg\",\"products\\/50-2.jpg\"]'),(617,10,NULL,NULL,36,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/6-3.jpg\",\"products\\/40-3.jpg\",\"products\\/50-2.jpg\",\"products\\/53-2.jpg\"]'),(622,4,NULL,NULL,33,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/17-5.jpg\",\"products\\/26-4.jpg\",\"products\\/49-1.jpg\"]'),(624,6,NULL,NULL,6,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/19-1.jpg\",\"products\\/38-1.jpg\"]'),(626,10,NULL,NULL,37,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/15-4.jpg\",\"products\\/26-4.jpg\",\"products\\/29-1.jpg\",\"products\\/53-1.jpg\"]'),(631,1,NULL,NULL,14,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/2-2.jpg\",\"products\\/20-4.jpg\"]'),(634,4,NULL,NULL,36,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/25-3.jpg\",\"products\\/43-1.jpg\"]'),(635,3,NULL,NULL,1,2,'Good app, good backup service and support. Good documentation.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/6-2.jpg\",\"products\\/31-4.jpg\",\"products\\/40-2.jpg\",\"products\\/54-1.jpg\"]'),(636,8,NULL,NULL,40,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/39-4.jpg\",\"products\\/48-3.jpg\"]'),(638,10,NULL,NULL,40,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/14-4.jpg\",\"products\\/27-2.jpg\",\"products\\/34-3.jpg\",\"products\\/38-2.jpg\"]'),(645,9,NULL,NULL,31,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/44-3.jpg\",\"products\\/45-1.jpg\",\"products\\/53-2.jpg\"]'),(651,6,NULL,NULL,9,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/18-2.jpg\",\"products\\/40-1.jpg\"]'),(655,6,NULL,NULL,17,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/38-1.jpg\",\"products\\/41-2.jpg\"]'),(656,2,NULL,NULL,4,3,'Best ecommerce CMS online store!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/1-3.jpg\",\"products\\/8-4.jpg\",\"products\\/29-1.jpg\",\"products\\/50-1.jpg\"]'),(658,1,NULL,NULL,5,1,'Good app, good backup service and support. Good documentation.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/12-2.jpg\",\"products\\/36-1.jpg\",\"products\\/42-2.jpg\"]'),(663,8,NULL,NULL,22,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/24-1.jpg\",\"products\\/28-2.jpg\",\"products\\/51-4.jpg\"]'),(664,9,NULL,NULL,29,5,'Best ecommerce CMS online store!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/43-1.jpg\",\"products\\/44-3.jpg\"]'),(673,5,NULL,NULL,46,1,'Clean & perfect source code','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/5-1.jpg\",\"products\\/33-3.jpg\",\"products\\/53-4.jpg\"]'),(675,8,NULL,NULL,39,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-1.jpg\",\"products\\/40-2.jpg\"]'),(677,6,NULL,NULL,28,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-1.jpg\",\"products\\/33-2.jpg\"]'),(678,5,NULL,NULL,31,5,'Good app, good backup service and support. Good documentation.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/22-1.jpg\",\"products\\/35-1.jpg\",\"products\\/46-3.jpg\"]'),(679,7,NULL,NULL,41,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/5-3.jpg\",\"products\\/12-1.jpg\",\"products\\/19-3.jpg\",\"products\\/40-1.jpg\"]'),(680,10,NULL,NULL,51,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/16-2.jpg\",\"products\\/53-2.jpg\"]'),(681,10,NULL,NULL,15,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/12-1.jpg\",\"products\\/15-1.jpg\",\"products\\/37-3.jpg\"]'),(682,2,NULL,NULL,8,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/48-4.jpg\"]'),(683,5,NULL,NULL,42,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/14-1.jpg\",\"products\\/39-4.jpg\"]'),(695,4,NULL,NULL,32,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/8-1.jpg\",\"products\\/9-3.jpg\",\"products\\/23-3.jpg\",\"products\\/48-4.jpg\"]'),(697,2,NULL,NULL,34,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/22-4.jpg\"]'),(700,2,NULL,NULL,2,1,'Clean & perfect source code','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/46-4.jpg\"]'),(702,10,NULL,NULL,39,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/23-2.jpg\",\"products\\/33-2.jpg\",\"products\\/36-1.jpg\",\"products\\/45-1.jpg\"]'),(704,10,NULL,NULL,34,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/39-1.jpg\",\"products\\/42-1.jpg\"]'),(705,5,NULL,NULL,19,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/42-2.jpg\",\"products\\/43-1.jpg\"]'),(707,2,NULL,NULL,28,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/6-2.jpg\",\"products\\/43-3.jpg\",\"products\\/51-1.jpg\",\"products\\/52-2.jpg\"]'),(710,1,NULL,NULL,49,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/46-3.jpg\"]'),(711,4,NULL,NULL,31,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/14-3.jpg\",\"products\\/37-1.jpg\",\"products\\/50-1.jpg\"]'),(713,10,NULL,NULL,43,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/33-4.jpg\",\"products\\/48-2.jpg\"]'),(717,3,NULL,NULL,5,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/8-2.jpg\",\"products\\/17-5.jpg\",\"products\\/28-1.jpg\",\"products\\/30-1.jpg\"]'),(730,7,NULL,NULL,54,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/14-1.jpg\",\"products\\/19-4.jpg\",\"products\\/26-3.jpg\",\"products\\/35-2.jpg\"]'),(735,4,NULL,NULL,15,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/48-1.jpg\",\"products\\/49-3.jpg\",\"products\\/51-1.jpg\"]'),(737,2,NULL,NULL,15,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/8-1.jpg\",\"products\\/10-4.jpg\",\"products\\/39-4.jpg\"]'),(741,9,NULL,NULL,45,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/13-1.jpg\",\"products\\/32-2.jpg\",\"products\\/47-1.jpg\"]'),(746,6,NULL,NULL,35,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/3-1.jpg\",\"products\\/14-1.jpg\",\"products\\/46-3.jpg\"]'),(747,2,NULL,NULL,46,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/38-1.jpg\"]'),(754,4,NULL,NULL,48,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/34-1.jpg\",\"products\\/40-2.jpg\",\"products\\/40-4.jpg\",\"products\\/48-4.jpg\"]'),(757,10,NULL,NULL,41,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/22-1.jpg\"]'),(761,9,NULL,NULL,16,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/8-2.jpg\"]'),(773,6,NULL,NULL,29,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-1.jpg\"]'),(779,8,NULL,NULL,43,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/17-5.jpg\",\"products\\/38-4.jpg\"]'),(780,1,NULL,NULL,36,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/34-3.jpg\",\"products\\/47-1.jpg\"]'),(783,2,NULL,NULL,42,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/22-2.jpg\",\"products\\/27-1.jpg\",\"products\\/52-1.jpg\"]'),(798,3,NULL,NULL,20,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-1.jpg\",\"products\\/44-1.jpg\"]'),(801,6,NULL,NULL,41,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/11-4.jpg\"]'),(802,8,NULL,NULL,31,2,'Best ecommerce CMS online store!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/1-4.jpg\"]'),(804,5,NULL,NULL,11,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/8-1.jpg\",\"products\\/9-1.jpg\",\"products\\/49-1.jpg\",\"products\\/54-3.jpg\"]'),(818,10,NULL,NULL,16,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/12-3.jpg\",\"products\\/14-3.jpg\"]'),(820,10,NULL,NULL,28,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/46-3.jpg\"]'),(821,6,NULL,NULL,16,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/1-2.jpg\"]'),(823,5,NULL,NULL,47,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/13-2.jpg\",\"products\\/17-5.jpg\"]'),(832,3,NULL,NULL,29,3,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/54-2.jpg\"]'),(833,5,NULL,NULL,13,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/43-2.jpg\"]'),(837,5,NULL,NULL,38,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/6-4.jpg\",\"products\\/20-3.jpg\",\"products\\/27-1.jpg\",\"products\\/53-3.jpg\"]'),(847,9,NULL,NULL,25,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/3-3.jpg\",\"products\\/16-2.jpg\",\"products\\/51-4.jpg\",\"products\\/53-1.jpg\"]'),(849,2,NULL,NULL,5,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/9-1.jpg\",\"products\\/39-4.jpg\",\"products\\/54-3.jpg\"]'),(852,4,NULL,NULL,16,2,'Good app, good backup service and support. Good documentation.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/13-4.jpg\"]'),(853,10,NULL,NULL,4,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/11-1.jpg\"]'),(859,6,NULL,NULL,53,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/10-3.jpg\",\"products\\/16-4.jpg\",\"products\\/48-4.jpg\"]'),(863,2,NULL,NULL,18,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/2-2.jpg\",\"products\\/46-2.jpg\",\"products\\/50-4.jpg\"]'),(867,10,NULL,NULL,42,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/11-1.jpg\",\"products\\/13-4.jpg\",\"products\\/40-1.jpg\",\"products\\/46-3.jpg\"]'),(881,3,NULL,NULL,47,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/51-4.jpg\"]'),(885,8,NULL,NULL,13,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/44-2.jpg\",\"products\\/51-1.jpg\"]'),(886,3,NULL,NULL,51,5,'Best ecommerce CMS online store!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/30-4.jpg\"]'),(921,1,NULL,NULL,13,4,'Best ecommerce CMS online store!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-3.jpg\"]'),(922,1,NULL,NULL,45,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/19-2.jpg\",\"products\\/37-3.jpg\"]'),(934,7,NULL,NULL,42,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/16-4.jpg\",\"products\\/27-4.jpg\"]'),(938,6,NULL,NULL,36,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-3.jpg\",\"products\\/46-2.jpg\"]'),(946,1,NULL,NULL,27,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/31-2.jpg\",\"products\\/39-4.jpg\"]'),(947,10,NULL,NULL,53,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/9-3.jpg\",\"products\\/29-3.jpg\",\"products\\/48-3.jpg\",\"products\\/50-4.jpg\"]'),(949,5,NULL,NULL,45,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/16-1.jpg\"]'),(952,5,NULL,NULL,8,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/31-1.jpg\"]'),(956,7,NULL,NULL,20,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/4-2.jpg\",\"products\\/46-4.jpg\"]'),(959,9,NULL,NULL,2,3,'Best ecommerce CMS online store!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/20-1.jpg\",\"products\\/22-2.jpg\",\"products\\/27-1.jpg\"]'),(967,10,NULL,NULL,48,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/1-2.jpg\",\"products\\/39-1.jpg\"]'),(973,9,NULL,NULL,8,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/8-4.jpg\",\"products\\/20-3.jpg\",\"products\\/24-1.jpg\",\"products\\/31-3.jpg\"]'),(983,10,NULL,NULL,6,3,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/19-4.jpg\",\"products\\/40-2.jpg\"]'),(992,9,NULL,NULL,51,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-28 20:16:59','2025-06-28 20:16:59','[\"products\\/42-2.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shared_wishlists`
--

DROP TABLE IF EXISTS `ec_shared_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shared_wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_ids` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shared_wishlists`
--

LOCK TABLES `ec_shared_wishlists` WRITE;
/*!40000 ALTER TABLE `ec_shared_wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shared_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double DEFAULT '0',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `customer_delivered_confirmed_at` timestamp NULL DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2025-06-28 20:17:00','2025-06-28 20:17:00');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',1000.00,NULL,0.00,'2025-06-28 20:17:00','2025-06-28 20:17:00'),(2,'Flat Rate',1,'based_on_price',0.00,NULL,20.00,'2025-06-28 20:17:00','2025-06-28 20:17:00'),(3,'Local Pickup',1,'based_on_price',0.00,NULL,0.00,'2025-06-28 20:17:00','2025-06-28 20:17:00');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes`
--

DROP TABLE IF EXISTS `ec_specification_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_attributes_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes`
--

LOCK TABLES `ec_specification_attributes` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes` DISABLE KEYS */;
INSERT INTO `ec_specification_attributes` VALUES (1,1,'Height','text',NULL,NULL,'2025-06-28 20:17:09','2025-06-28 20:17:09',NULL,NULL),(2,1,'Width','text',NULL,NULL,'2025-06-28 20:17:09','2025-06-28 20:17:09',NULL,NULL),(3,1,'Weight','text',NULL,NULL,'2025-06-28 20:17:09','2025-06-28 20:17:09',NULL,NULL),(4,2,'Power','text',NULL,NULL,'2025-06-28 20:17:09','2025-06-28 20:17:09',NULL,NULL),(5,2,'Speed','text',NULL,NULL,'2025-06-28 20:17:09','2025-06-28 20:17:09',NULL,NULL),(6,3,'Battery Life','text',NULL,NULL,'2025-06-28 20:17:09','2025-06-28 20:17:09',NULL,NULL),(7,4,'Screen Size','text',NULL,NULL,'2025-06-28 20:17:09','2025-06-28 20:17:09',NULL,NULL),(8,4,'Resolution','select','[\"1920x1080\",\"2560x1440\",\"3840x2160\"]',NULL,'2025-06-28 20:17:09','2025-06-28 20:17:09',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes_translations`
--

DROP TABLE IF EXISTS `ec_specification_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_attributes_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes_translations`
--

LOCK TABLES `ec_specification_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups`
--

DROP TABLE IF EXISTS `ec_specification_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_groups_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups`
--

LOCK TABLES `ec_specification_groups` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups` DISABLE KEYS */;
INSERT INTO `ec_specification_groups` VALUES (1,'Dimensions',NULL,'2025-06-28 20:17:09','2025-06-28 20:17:09',NULL,NULL),(2,'Performance',NULL,'2025-06-28 20:17:09','2025-06-28 20:17:09',NULL,NULL),(3,'Battery',NULL,'2025-06-28 20:17:09','2025-06-28 20:17:09',NULL,NULL),(4,'Display',NULL,'2025-06-28 20:17:09','2025-06-28 20:17:09',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups_translations`
--

DROP TABLE IF EXISTS `ec_specification_groups_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_groups_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_groups_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_groups_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups_translations`
--

LOCK TABLES `ec_specification_groups_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_groups_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_table_group`
--

DROP TABLE IF EXISTS `ec_specification_table_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_table_group` (
  `table_id` bigint unsigned NOT NULL,
  `group_id` bigint unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`table_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_table_group`
--

LOCK TABLES `ec_specification_table_group` WRITE;
/*!40000 ALTER TABLE `ec_specification_table_group` DISABLE KEYS */;
INSERT INTO `ec_specification_table_group` VALUES (1,1,0),(1,2,0),(2,3,0),(2,4,0);
/*!40000 ALTER TABLE `ec_specification_table_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables`
--

DROP TABLE IF EXISTS `ec_specification_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_tables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_tables_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables`
--

LOCK TABLES `ec_specification_tables` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables` DISABLE KEYS */;
INSERT INTO `ec_specification_tables` VALUES (1,'General Specification',NULL,'2025-06-28 20:17:09','2025-06-28 20:17:09',NULL,NULL),(2,'Technical Specification',NULL,'2025-06-28 20:17:09','2025-06-28 20:17:09',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables_translations`
--

DROP TABLE IF EXISTS `ec_specification_tables_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_tables_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_tables_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_tables_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables_translations`
--

LOCK TABLES `ec_specification_tables_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_tables_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Martfury','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2025-06-28 20:17:10','2025-06-28 20:17:10',NULL);
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10,1,'published','2025-06-28 20:17:00','2025-06-28 20:17:00'),(2,'None',0,2,'published','2025-06-28 20:17:00','2025-06-28 20:17:00'),(3,'Import Tax',15,3,'published','2025-06-28 20:17:00','2025-06-28 20:17:00');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes_translations`
--

DROP TABLE IF EXISTS `ec_taxes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_taxes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_taxes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes_translations`
--

LOCK TABLES `ec_taxes_translations` WRITE;
/*!40000 ALTER TABLE `ec_taxes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_taxes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2025-06-28 20:17:07','2025-06-28 20:17:07',NULL),(2,'PAYMENT',1,'published','2025-06-28 20:17:07','2025-06-28 20:17:07',NULL),(3,'ORDER &amp; RETURNS',2,'published','2025-06-28 20:17:07','2025-06-28 20:17:07',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2025-06-28 20:17:07','2025-06-28 20:17:07'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2025-06-28 20:17:07','2025-06-28 20:17:07'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2025-06-28 20:17:07','2025-06-28 20:17:07'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2025-06-28 20:17:07','2025-06-28 20:17:07'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2025-06-28 20:17:07','2025-06-28 20:17:07'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2025-06-28 20:17:07','2025-06-28 20:17:07'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2025-06-28 20:17:07','2025-06-28 20:17:07'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2025-06-28 20:17:07','2025-06-28 20:17:07'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2025-06-28 20:17:07','2025-06-28 20:17:07'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2025-06-28 20:17:07','2025-06-28 20:17:07');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','eec1f05c0df6da6a7e66e3835049dbee',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','0af6e786946131a247d959587c2283ed',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','392ef098c95e8790fe706a0ef17be5f7',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','a0d62333917baf0fe5df369f6e74a63b',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','c459d0a36e4e5be5b4b05f11b2fa116d',3,'Botble\\Menu\\Models\\Menu'),(6,'en_US','e3ff4a0455fd323dc1864fbca493c7e4',4,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',1613,'brands/1.jpg','[]','2025-06-28 20:16:03','2025-06-28 20:16:03',NULL,'public'),(2,0,'2','2',1,'image/jpeg',1613,'brands/2.jpg','[]','2025-06-28 20:16:03','2025-06-28 20:16:03',NULL,'public'),(3,0,'3','3',1,'image/jpeg',1613,'brands/3.jpg','[]','2025-06-28 20:16:04','2025-06-28 20:16:04',NULL,'public'),(4,0,'4','4',1,'image/jpeg',1613,'brands/4.jpg','[]','2025-06-28 20:16:04','2025-06-28 20:16:04',NULL,'public'),(5,0,'5','5',1,'image/jpeg',1613,'brands/5.jpg','[]','2025-06-28 20:16:04','2025-06-28 20:16:04',NULL,'public'),(6,0,'6','6',1,'image/jpeg',1613,'brands/6.jpg','[]','2025-06-28 20:16:04','2025-06-28 20:16:04',NULL,'public'),(7,0,'7','7',1,'image/jpeg',1613,'brands/7.jpg','[]','2025-06-28 20:16:04','2025-06-28 20:16:04',NULL,'public'),(8,0,'1','1',2,'image/jpeg',9803,'product-categories/1.jpg','[]','2025-06-28 20:16:04','2025-06-28 20:16:04',NULL,'public'),(9,0,'2','2',2,'image/jpeg',9803,'product-categories/2.jpg','[]','2025-06-28 20:16:05','2025-06-28 20:16:05',NULL,'public'),(10,0,'3','3',2,'image/jpeg',9803,'product-categories/3.jpg','[]','2025-06-28 20:16:05','2025-06-28 20:16:05',NULL,'public'),(11,0,'4','4',2,'image/jpeg',9803,'product-categories/4.jpg','[]','2025-06-28 20:16:05','2025-06-28 20:16:05',NULL,'public'),(12,0,'5','5',2,'image/jpeg',9803,'product-categories/5.jpg','[]','2025-06-28 20:16:05','2025-06-28 20:16:05',NULL,'public'),(13,0,'6','6',2,'image/jpeg',9803,'product-categories/6.jpg','[]','2025-06-28 20:16:05','2025-06-28 20:16:05',NULL,'public'),(14,0,'7','7',2,'image/jpeg',9803,'product-categories/7.jpg','[]','2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,'public'),(15,0,'8','8',2,'image/jpeg',9803,'product-categories/8.jpg','[]','2025-06-28 20:16:06','2025-06-28 20:16:06',NULL,'public'),(16,0,'1-1','1-1',3,'image/jpeg',9803,'products/1-1.jpg','[]','2025-06-28 20:16:07','2025-06-28 20:16:07',NULL,'public'),(17,0,'1-2','1-2',3,'image/jpeg',9803,'products/1-2.jpg','[]','2025-06-28 20:16:07','2025-06-28 20:16:07',NULL,'public'),(18,0,'1-3','1-3',3,'image/jpeg',9803,'products/1-3.jpg','[]','2025-06-28 20:16:07','2025-06-28 20:16:07',NULL,'public'),(19,0,'1-4','1-4',3,'image/jpeg',9803,'products/1-4.jpg','[]','2025-06-28 20:16:07','2025-06-28 20:16:07',NULL,'public'),(20,0,'10-1','10-1',3,'image/jpeg',9803,'products/10-1.jpg','[]','2025-06-28 20:16:07','2025-06-28 20:16:07',NULL,'public'),(21,0,'10-2','10-2',3,'image/jpeg',9803,'products/10-2.jpg','[]','2025-06-28 20:16:07','2025-06-28 20:16:07',NULL,'public'),(22,0,'10-3','10-3',3,'image/jpeg',9803,'products/10-3.jpg','[]','2025-06-28 20:16:08','2025-06-28 20:16:08',NULL,'public'),(23,0,'10-4','10-4',3,'image/jpeg',9803,'products/10-4.jpg','[]','2025-06-28 20:16:08','2025-06-28 20:16:08',NULL,'public'),(24,0,'11-1','11-1',3,'image/jpeg',9803,'products/11-1.jpg','[]','2025-06-28 20:16:08','2025-06-28 20:16:08',NULL,'public'),(25,0,'11-2','11-2',3,'image/jpeg',9803,'products/11-2.jpg','[]','2025-06-28 20:16:08','2025-06-28 20:16:08',NULL,'public'),(26,0,'11-3','11-3',3,'image/jpeg',9803,'products/11-3.jpg','[]','2025-06-28 20:16:08','2025-06-28 20:16:08',NULL,'public'),(27,0,'11-4','11-4',3,'image/jpeg',9803,'products/11-4.jpg','[]','2025-06-28 20:16:08','2025-06-28 20:16:08',NULL,'public'),(28,0,'12-1','12-1',3,'image/jpeg',9803,'products/12-1.jpg','[]','2025-06-28 20:16:09','2025-06-28 20:16:09',NULL,'public'),(29,0,'12-2','12-2',3,'image/jpeg',9803,'products/12-2.jpg','[]','2025-06-28 20:16:09','2025-06-28 20:16:09',NULL,'public'),(30,0,'12-3','12-3',3,'image/jpeg',9803,'products/12-3.jpg','[]','2025-06-28 20:16:09','2025-06-28 20:16:09',NULL,'public'),(31,0,'12-4','12-4',3,'image/jpeg',9803,'products/12-4.jpg','[]','2025-06-28 20:16:09','2025-06-28 20:16:09',NULL,'public'),(32,0,'13-1','13-1',3,'image/jpeg',9803,'products/13-1.jpg','[]','2025-06-28 20:16:10','2025-06-28 20:16:10',NULL,'public'),(33,0,'13-2','13-2',3,'image/jpeg',9803,'products/13-2.jpg','[]','2025-06-28 20:16:10','2025-06-28 20:16:10',NULL,'public'),(34,0,'13-3','13-3',3,'image/jpeg',9803,'products/13-3.jpg','[]','2025-06-28 20:16:10','2025-06-28 20:16:10',NULL,'public'),(35,0,'13-4','13-4',3,'image/jpeg',9803,'products/13-4.jpg','[]','2025-06-28 20:16:10','2025-06-28 20:16:10',NULL,'public'),(36,0,'14-1','14-1',3,'image/jpeg',9803,'products/14-1.jpg','[]','2025-06-28 20:16:10','2025-06-28 20:16:10',NULL,'public'),(37,0,'14-2','14-2',3,'image/jpeg',9803,'products/14-2.jpg','[]','2025-06-28 20:16:11','2025-06-28 20:16:11',NULL,'public'),(38,0,'14-3','14-3',3,'image/jpeg',9803,'products/14-3.jpg','[]','2025-06-28 20:16:11','2025-06-28 20:16:11',NULL,'public'),(39,0,'14-4','14-4',3,'image/jpeg',9803,'products/14-4.jpg','[]','2025-06-28 20:16:11','2025-06-28 20:16:11',NULL,'public'),(40,0,'15-1','15-1',3,'image/jpeg',9803,'products/15-1.jpg','[]','2025-06-28 20:16:11','2025-06-28 20:16:11',NULL,'public'),(41,0,'15-2','15-2',3,'image/jpeg',9803,'products/15-2.jpg','[]','2025-06-28 20:16:11','2025-06-28 20:16:11',NULL,'public'),(42,0,'15-3','15-3',3,'image/jpeg',9803,'products/15-3.jpg','[]','2025-06-28 20:16:11','2025-06-28 20:16:11',NULL,'public'),(43,0,'15-4','15-4',3,'image/jpeg',9803,'products/15-4.jpg','[]','2025-06-28 20:16:12','2025-06-28 20:16:12',NULL,'public'),(44,0,'16-1','16-1',3,'image/jpeg',9803,'products/16-1.jpg','[]','2025-06-28 20:16:12','2025-06-28 20:16:12',NULL,'public'),(45,0,'16-2','16-2',3,'image/jpeg',9803,'products/16-2.jpg','[]','2025-06-28 20:16:12','2025-06-28 20:16:12',NULL,'public'),(46,0,'16-3','16-3',3,'image/jpeg',9803,'products/16-3.jpg','[]','2025-06-28 20:16:12','2025-06-28 20:16:12',NULL,'public'),(47,0,'16-4','16-4',3,'image/jpeg',9803,'products/16-4.jpg','[]','2025-06-28 20:16:12','2025-06-28 20:16:12',NULL,'public'),(48,0,'17-1','17-1',3,'image/jpeg',9803,'products/17-1.jpg','[]','2025-06-28 20:16:13','2025-06-28 20:16:13',NULL,'public'),(49,0,'17-2','17-2',3,'image/jpeg',9803,'products/17-2.jpg','[]','2025-06-28 20:16:13','2025-06-28 20:16:13',NULL,'public'),(50,0,'17-3','17-3',3,'image/jpeg',9803,'products/17-3.jpg','[]','2025-06-28 20:16:13','2025-06-28 20:16:13',NULL,'public'),(51,0,'17-4','17-4',3,'image/jpeg',9803,'products/17-4.jpg','[]','2025-06-28 20:16:13','2025-06-28 20:16:13',NULL,'public'),(52,0,'17-5','17-5',3,'image/jpeg',9803,'products/17-5.jpg','[]','2025-06-28 20:16:13','2025-06-28 20:16:13',NULL,'public'),(53,0,'18-1','18-1',3,'image/jpeg',9803,'products/18-1.jpg','[]','2025-06-28 20:16:13','2025-06-28 20:16:13',NULL,'public'),(54,0,'18-2','18-2',3,'image/jpeg',9803,'products/18-2.jpg','[]','2025-06-28 20:16:14','2025-06-28 20:16:14',NULL,'public'),(55,0,'18-3','18-3',3,'image/jpeg',9803,'products/18-3.jpg','[]','2025-06-28 20:16:14','2025-06-28 20:16:14',NULL,'public'),(56,0,'18-4','18-4',3,'image/jpeg',9803,'products/18-4.jpg','[]','2025-06-28 20:16:14','2025-06-28 20:16:14',NULL,'public'),(57,0,'19-1','19-1',3,'image/jpeg',9803,'products/19-1.jpg','[]','2025-06-28 20:16:14','2025-06-28 20:16:14',NULL,'public'),(58,0,'19-2','19-2',3,'image/jpeg',9803,'products/19-2.jpg','[]','2025-06-28 20:16:14','2025-06-28 20:16:14',NULL,'public'),(59,0,'19-3','19-3',3,'image/jpeg',9803,'products/19-3.jpg','[]','2025-06-28 20:16:14','2025-06-28 20:16:14',NULL,'public'),(60,0,'19-4','19-4',3,'image/jpeg',9803,'products/19-4.jpg','[]','2025-06-28 20:16:15','2025-06-28 20:16:15',NULL,'public'),(61,0,'2-1','2-1',3,'image/jpeg',9803,'products/2-1.jpg','[]','2025-06-28 20:16:15','2025-06-28 20:16:15',NULL,'public'),(62,0,'2-2','2-2',3,'image/jpeg',9803,'products/2-2.jpg','[]','2025-06-28 20:16:15','2025-06-28 20:16:15',NULL,'public'),(63,0,'2-3','2-3',3,'image/jpeg',9803,'products/2-3.jpg','[]','2025-06-28 20:16:15','2025-06-28 20:16:15',NULL,'public'),(64,0,'2-4','2-4',3,'image/jpeg',9803,'products/2-4.jpg','[]','2025-06-28 20:16:15','2025-06-28 20:16:15',NULL,'public'),(65,0,'20-1','20-1',3,'image/jpeg',9803,'products/20-1.jpg','[]','2025-06-28 20:16:15','2025-06-28 20:16:15',NULL,'public'),(66,0,'20-2','20-2',3,'image/jpeg',9803,'products/20-2.jpg','[]','2025-06-28 20:16:16','2025-06-28 20:16:16',NULL,'public'),(67,0,'20-3','20-3',3,'image/jpeg',9803,'products/20-3.jpg','[]','2025-06-28 20:16:16','2025-06-28 20:16:16',NULL,'public'),(68,0,'20-4','20-4',3,'image/jpeg',9803,'products/20-4.jpg','[]','2025-06-28 20:16:16','2025-06-28 20:16:16',NULL,'public'),(69,0,'21-1','21-1',3,'image/jpeg',9803,'products/21-1.jpg','[]','2025-06-28 20:16:16','2025-06-28 20:16:16',NULL,'public'),(70,0,'21-2','21-2',3,'image/jpeg',9803,'products/21-2.jpg','[]','2025-06-28 20:16:16','2025-06-28 20:16:16',NULL,'public'),(71,0,'21-3','21-3',3,'image/jpeg',9803,'products/21-3.jpg','[]','2025-06-28 20:16:16','2025-06-28 20:16:16',NULL,'public'),(72,0,'21-4','21-4',3,'image/jpeg',9803,'products/21-4.jpg','[]','2025-06-28 20:16:17','2025-06-28 20:16:17',NULL,'public'),(73,0,'22-1','22-1',3,'image/jpeg',9803,'products/22-1.jpg','[]','2025-06-28 20:16:17','2025-06-28 20:16:17',NULL,'public'),(74,0,'22-2','22-2',3,'image/jpeg',9803,'products/22-2.jpg','[]','2025-06-28 20:16:17','2025-06-28 20:16:17',NULL,'public'),(75,0,'22-3','22-3',3,'image/jpeg',9803,'products/22-3.jpg','[]','2025-06-28 20:16:17','2025-06-28 20:16:17',NULL,'public'),(76,0,'22-4','22-4',3,'image/jpeg',9803,'products/22-4.jpg','[]','2025-06-28 20:16:17','2025-06-28 20:16:17',NULL,'public'),(77,0,'23-1','23-1',3,'image/jpeg',9803,'products/23-1.jpg','[]','2025-06-28 20:16:18','2025-06-28 20:16:18',NULL,'public'),(78,0,'23-2','23-2',3,'image/jpeg',9803,'products/23-2.jpg','[]','2025-06-28 20:16:18','2025-06-28 20:16:18',NULL,'public'),(79,0,'23-3','23-3',3,'image/jpeg',9803,'products/23-3.jpg','[]','2025-06-28 20:16:19','2025-06-28 20:16:19',NULL,'public'),(80,0,'23-4','23-4',3,'image/jpeg',9803,'products/23-4.jpg','[]','2025-06-28 20:16:19','2025-06-28 20:16:19',NULL,'public'),(81,0,'24-1','24-1',3,'image/jpeg',9803,'products/24-1.jpg','[]','2025-06-28 20:16:20','2025-06-28 20:16:20',NULL,'public'),(82,0,'24-2','24-2',3,'image/jpeg',9803,'products/24-2.jpg','[]','2025-06-28 20:16:20','2025-06-28 20:16:20',NULL,'public'),(83,0,'24-3','24-3',3,'image/jpeg',9803,'products/24-3.jpg','[]','2025-06-28 20:16:20','2025-06-28 20:16:20',NULL,'public'),(84,0,'24-4','24-4',3,'image/jpeg',9803,'products/24-4.jpg','[]','2025-06-28 20:16:21','2025-06-28 20:16:21',NULL,'public'),(85,0,'25-1','25-1',3,'image/jpeg',9803,'products/25-1.jpg','[]','2025-06-28 20:16:21','2025-06-28 20:16:21',NULL,'public'),(86,0,'25-2','25-2',3,'image/jpeg',9803,'products/25-2.jpg','[]','2025-06-28 20:16:21','2025-06-28 20:16:21',NULL,'public'),(87,0,'25-3','25-3',3,'image/jpeg',9803,'products/25-3.jpg','[]','2025-06-28 20:16:22','2025-06-28 20:16:22',NULL,'public'),(88,0,'25-4','25-4',3,'image/jpeg',9803,'products/25-4.jpg','[]','2025-06-28 20:16:23','2025-06-28 20:16:23',NULL,'public'),(89,0,'26-1','26-1',3,'image/jpeg',9803,'products/26-1.jpg','[]','2025-06-28 20:16:23','2025-06-28 20:16:23',NULL,'public'),(90,0,'26-2','26-2',3,'image/jpeg',9803,'products/26-2.jpg','[]','2025-06-28 20:16:23','2025-06-28 20:16:23',NULL,'public'),(91,0,'26-3','26-3',3,'image/jpeg',9803,'products/26-3.jpg','[]','2025-06-28 20:16:24','2025-06-28 20:16:24',NULL,'public'),(92,0,'26-4','26-4',3,'image/jpeg',9803,'products/26-4.jpg','[]','2025-06-28 20:16:25','2025-06-28 20:16:25',NULL,'public'),(93,0,'27-1','27-1',3,'image/jpeg',9803,'products/27-1.jpg','[]','2025-06-28 20:16:25','2025-06-28 20:16:25',NULL,'public'),(94,0,'27-2','27-2',3,'image/jpeg',9803,'products/27-2.jpg','[]','2025-06-28 20:16:25','2025-06-28 20:16:25',NULL,'public'),(95,0,'27-3','27-3',3,'image/jpeg',9803,'products/27-3.jpg','[]','2025-06-28 20:16:26','2025-06-28 20:16:26',NULL,'public'),(96,0,'27-4','27-4',3,'image/jpeg',9803,'products/27-4.jpg','[]','2025-06-28 20:16:26','2025-06-28 20:16:26',NULL,'public'),(97,0,'28-1','28-1',3,'image/jpeg',9803,'products/28-1.jpg','[]','2025-06-28 20:16:27','2025-06-28 20:16:27',NULL,'public'),(98,0,'28-2','28-2',3,'image/jpeg',9803,'products/28-2.jpg','[]','2025-06-28 20:16:27','2025-06-28 20:16:27',NULL,'public'),(99,0,'28-3','28-3',3,'image/jpeg',9803,'products/28-3.jpg','[]','2025-06-28 20:16:27','2025-06-28 20:16:27',NULL,'public'),(100,0,'28-4','28-4',3,'image/jpeg',9803,'products/28-4.jpg','[]','2025-06-28 20:16:28','2025-06-28 20:16:28',NULL,'public'),(101,0,'29-1','29-1',3,'image/jpeg',9803,'products/29-1.jpg','[]','2025-06-28 20:16:28','2025-06-28 20:16:28',NULL,'public'),(102,0,'29-2','29-2',3,'image/jpeg',9803,'products/29-2.jpg','[]','2025-06-28 20:16:28','2025-06-28 20:16:28',NULL,'public'),(103,0,'29-3','29-3',3,'image/jpeg',9803,'products/29-3.jpg','[]','2025-06-28 20:16:29','2025-06-28 20:16:29',NULL,'public'),(104,0,'3-1','3-1',3,'image/jpeg',9803,'products/3-1.jpg','[]','2025-06-28 20:16:29','2025-06-28 20:16:29',NULL,'public'),(105,0,'3-2','3-2',3,'image/jpeg',9803,'products/3-2.jpg','[]','2025-06-28 20:16:29','2025-06-28 20:16:29',NULL,'public'),(106,0,'3-3','3-3',3,'image/jpeg',9803,'products/3-3.jpg','[]','2025-06-28 20:16:29','2025-06-28 20:16:29',NULL,'public'),(107,0,'3-4','3-4',3,'image/jpeg',9803,'products/3-4.jpg','[]','2025-06-28 20:16:29','2025-06-28 20:16:29',NULL,'public'),(108,0,'30-1','30-1',3,'image/jpeg',9803,'products/30-1.jpg','[]','2025-06-28 20:16:30','2025-06-28 20:16:30',NULL,'public'),(109,0,'30-2','30-2',3,'image/jpeg',9803,'products/30-2.jpg','[]','2025-06-28 20:16:30','2025-06-28 20:16:30',NULL,'public'),(110,0,'30-3','30-3',3,'image/jpeg',9803,'products/30-3.jpg','[]','2025-06-28 20:16:30','2025-06-28 20:16:30',NULL,'public'),(111,0,'30-4','30-4',3,'image/jpeg',9803,'products/30-4.jpg','[]','2025-06-28 20:16:30','2025-06-28 20:16:30',NULL,'public'),(112,0,'31-1','31-1',3,'image/jpeg',9803,'products/31-1.jpg','[]','2025-06-28 20:16:30','2025-06-28 20:16:30',NULL,'public'),(113,0,'31-2','31-2',3,'image/jpeg',9803,'products/31-2.jpg','[]','2025-06-28 20:16:30','2025-06-28 20:16:30',NULL,'public'),(114,0,'31-3','31-3',3,'image/jpeg',9803,'products/31-3.jpg','[]','2025-06-28 20:16:30','2025-06-28 20:16:30',NULL,'public'),(115,0,'31-4','31-4',3,'image/jpeg',9803,'products/31-4.jpg','[]','2025-06-28 20:16:31','2025-06-28 20:16:31',NULL,'public'),(116,0,'32-1','32-1',3,'image/jpeg',9803,'products/32-1.jpg','[]','2025-06-28 20:16:31','2025-06-28 20:16:31',NULL,'public'),(117,0,'32-2','32-2',3,'image/jpeg',9803,'products/32-2.jpg','[]','2025-06-28 20:16:31','2025-06-28 20:16:31',NULL,'public'),(118,0,'32-3','32-3',3,'image/jpeg',9803,'products/32-3.jpg','[]','2025-06-28 20:16:31','2025-06-28 20:16:31',NULL,'public'),(119,0,'32-4','32-4',3,'image/jpeg',9803,'products/32-4.jpg','[]','2025-06-28 20:16:31','2025-06-28 20:16:31',NULL,'public'),(120,0,'33-1','33-1',3,'image/jpeg',9803,'products/33-1.jpg','[]','2025-06-28 20:16:31','2025-06-28 20:16:31',NULL,'public'),(121,0,'33-2','33-2',3,'image/jpeg',9803,'products/33-2.jpg','[]','2025-06-28 20:16:32','2025-06-28 20:16:32',NULL,'public'),(122,0,'33-3','33-3',3,'image/jpeg',9803,'products/33-3.jpg','[]','2025-06-28 20:16:32','2025-06-28 20:16:32',NULL,'public'),(123,0,'33-4','33-4',3,'image/jpeg',9803,'products/33-4.jpg','[]','2025-06-28 20:16:32','2025-06-28 20:16:32',NULL,'public'),(124,0,'34-1','34-1',3,'image/jpeg',9803,'products/34-1.jpg','[]','2025-06-28 20:16:32','2025-06-28 20:16:32',NULL,'public'),(125,0,'34-2','34-2',3,'image/jpeg',9803,'products/34-2.jpg','[]','2025-06-28 20:16:32','2025-06-28 20:16:32',NULL,'public'),(126,0,'34-3','34-3',3,'image/jpeg',9803,'products/34-3.jpg','[]','2025-06-28 20:16:32','2025-06-28 20:16:32',NULL,'public'),(127,0,'34-4','34-4',3,'image/jpeg',9803,'products/34-4.jpg','[]','2025-06-28 20:16:33','2025-06-28 20:16:33',NULL,'public'),(128,0,'35-1','35-1',3,'image/jpeg',9803,'products/35-1.jpg','[]','2025-06-28 20:16:33','2025-06-28 20:16:33',NULL,'public'),(129,0,'35-2','35-2',3,'image/jpeg',9803,'products/35-2.jpg','[]','2025-06-28 20:16:33','2025-06-28 20:16:33',NULL,'public'),(130,0,'35-3','35-3',3,'image/jpeg',9803,'products/35-3.jpg','[]','2025-06-28 20:16:33','2025-06-28 20:16:33',NULL,'public'),(131,0,'35-4','35-4',3,'image/jpeg',9803,'products/35-4.jpg','[]','2025-06-28 20:16:33','2025-06-28 20:16:33',NULL,'public'),(132,0,'36-1','36-1',3,'image/jpeg',9803,'products/36-1.jpg','[]','2025-06-28 20:16:34','2025-06-28 20:16:34',NULL,'public'),(133,0,'36-2','36-2',3,'image/jpeg',9803,'products/36-2.jpg','[]','2025-06-28 20:16:34','2025-06-28 20:16:34',NULL,'public'),(134,0,'36-3','36-3',3,'image/jpeg',9803,'products/36-3.jpg','[]','2025-06-28 20:16:34','2025-06-28 20:16:34',NULL,'public'),(135,0,'37-1','37-1',3,'image/jpeg',9803,'products/37-1.jpg','[]','2025-06-28 20:16:34','2025-06-28 20:16:34',NULL,'public'),(136,0,'37-2','37-2',3,'image/jpeg',9803,'products/37-2.jpg','[]','2025-06-28 20:16:34','2025-06-28 20:16:34',NULL,'public'),(137,0,'37-3','37-3',3,'image/jpeg',9803,'products/37-3.jpg','[]','2025-06-28 20:16:34','2025-06-28 20:16:34',NULL,'public'),(138,0,'38-1','38-1',3,'image/jpeg',9803,'products/38-1.jpg','[]','2025-06-28 20:16:34','2025-06-28 20:16:34',NULL,'public'),(139,0,'38-2','38-2',3,'image/jpeg',9803,'products/38-2.jpg','[]','2025-06-28 20:16:35','2025-06-28 20:16:35',NULL,'public'),(140,0,'38-3','38-3',3,'image/jpeg',9803,'products/38-3.jpg','[]','2025-06-28 20:16:35','2025-06-28 20:16:35',NULL,'public'),(141,0,'38-4','38-4',3,'image/jpeg',9803,'products/38-4.jpg','[]','2025-06-28 20:16:35','2025-06-28 20:16:35',NULL,'public'),(142,0,'39-1','39-1',3,'image/jpeg',9803,'products/39-1.jpg','[]','2025-06-28 20:16:35','2025-06-28 20:16:35',NULL,'public'),(143,0,'39-2','39-2',3,'image/jpeg',9803,'products/39-2.jpg','[]','2025-06-28 20:16:35','2025-06-28 20:16:35',NULL,'public'),(144,0,'39-3','39-3',3,'image/jpeg',9803,'products/39-3.jpg','[]','2025-06-28 20:16:35','2025-06-28 20:16:35',NULL,'public'),(145,0,'39-4','39-4',3,'image/jpeg',9803,'products/39-4.jpg','[]','2025-06-28 20:16:36','2025-06-28 20:16:36',NULL,'public'),(146,0,'4-1','4-1',3,'image/jpeg',9803,'products/4-1.jpg','[]','2025-06-28 20:16:36','2025-06-28 20:16:36',NULL,'public'),(147,0,'4-2','4-2',3,'image/jpeg',9803,'products/4-2.jpg','[]','2025-06-28 20:16:36','2025-06-28 20:16:36',NULL,'public'),(148,0,'4-3','4-3',3,'image/jpeg',9803,'products/4-3.jpg','[]','2025-06-28 20:16:36','2025-06-28 20:16:36',NULL,'public'),(149,0,'4-4','4-4',3,'image/jpeg',9803,'products/4-4.jpg','[]','2025-06-28 20:16:36','2025-06-28 20:16:36',NULL,'public'),(150,0,'40-1','40-1',3,'image/jpeg',9803,'products/40-1.jpg','[]','2025-06-28 20:16:36','2025-06-28 20:16:36',NULL,'public'),(151,0,'40-2','40-2',3,'image/jpeg',9803,'products/40-2.jpg','[]','2025-06-28 20:16:36','2025-06-28 20:16:36',NULL,'public'),(152,0,'40-3','40-3',3,'image/jpeg',9803,'products/40-3.jpg','[]','2025-06-28 20:16:37','2025-06-28 20:16:37',NULL,'public'),(153,0,'40-4','40-4',3,'image/jpeg',9803,'products/40-4.jpg','[]','2025-06-28 20:16:37','2025-06-28 20:16:37',NULL,'public'),(154,0,'41-1','41-1',3,'image/jpeg',9803,'products/41-1.jpg','[]','2025-06-28 20:16:37','2025-06-28 20:16:37',NULL,'public'),(155,0,'41-2','41-2',3,'image/jpeg',9803,'products/41-2.jpg','[]','2025-06-28 20:16:37','2025-06-28 20:16:37',NULL,'public'),(156,0,'41-3','41-3',3,'image/jpeg',9803,'products/41-3.jpg','[]','2025-06-28 20:16:37','2025-06-28 20:16:37',NULL,'public'),(157,0,'41-4','41-4',3,'image/jpeg',9803,'products/41-4.jpg','[]','2025-06-28 20:16:37','2025-06-28 20:16:37',NULL,'public'),(158,0,'42-1','42-1',3,'image/jpeg',9803,'products/42-1.jpg','[]','2025-06-28 20:16:38','2025-06-28 20:16:38',NULL,'public'),(159,0,'42-2','42-2',3,'image/jpeg',9803,'products/42-2.jpg','[]','2025-06-28 20:16:38','2025-06-28 20:16:38',NULL,'public'),(160,0,'42-3','42-3',3,'image/jpeg',9803,'products/42-3.jpg','[]','2025-06-28 20:16:38','2025-06-28 20:16:38',NULL,'public'),(161,0,'43-1','43-1',3,'image/jpeg',9803,'products/43-1.jpg','[]','2025-06-28 20:16:38','2025-06-28 20:16:38',NULL,'public'),(162,0,'43-2','43-2',3,'image/jpeg',9803,'products/43-2.jpg','[]','2025-06-28 20:16:38','2025-06-28 20:16:38',NULL,'public'),(163,0,'43-3','43-3',3,'image/jpeg',9803,'products/43-3.jpg','[]','2025-06-28 20:16:38','2025-06-28 20:16:38',NULL,'public'),(164,0,'44-1','44-1',3,'image/jpeg',9803,'products/44-1.jpg','[]','2025-06-28 20:16:39','2025-06-28 20:16:39',NULL,'public'),(165,0,'44-2','44-2',3,'image/jpeg',9803,'products/44-2.jpg','[]','2025-06-28 20:16:39','2025-06-28 20:16:39',NULL,'public'),(166,0,'44-3','44-3',3,'image/jpeg',9803,'products/44-3.jpg','[]','2025-06-28 20:16:39','2025-06-28 20:16:39',NULL,'public'),(167,0,'45-1','45-1',3,'image/jpeg',9803,'products/45-1.jpg','[]','2025-06-28 20:16:39','2025-06-28 20:16:39',NULL,'public'),(168,0,'45-2','45-2',3,'image/jpeg',9803,'products/45-2.jpg','[]','2025-06-28 20:16:39','2025-06-28 20:16:39',NULL,'public'),(169,0,'45-3','45-3',3,'image/jpeg',9803,'products/45-3.jpg','[]','2025-06-28 20:16:40','2025-06-28 20:16:40',NULL,'public'),(170,0,'45-4','45-4',3,'image/jpeg',9803,'products/45-4.jpg','[]','2025-06-28 20:16:40','2025-06-28 20:16:40',NULL,'public'),(171,0,'46-1','46-1',3,'image/jpeg',9803,'products/46-1.jpg','[]','2025-06-28 20:16:40','2025-06-28 20:16:40',NULL,'public'),(172,0,'46-2','46-2',3,'image/jpeg',9803,'products/46-2.jpg','[]','2025-06-28 20:16:40','2025-06-28 20:16:40',NULL,'public'),(173,0,'46-3','46-3',3,'image/jpeg',9803,'products/46-3.jpg','[]','2025-06-28 20:16:40','2025-06-28 20:16:40',NULL,'public'),(174,0,'46-4','46-4',3,'image/jpeg',9803,'products/46-4.jpg','[]','2025-06-28 20:16:40','2025-06-28 20:16:40',NULL,'public'),(175,0,'47-1','47-1',3,'image/jpeg',9803,'products/47-1.jpg','[]','2025-06-28 20:16:41','2025-06-28 20:16:41',NULL,'public'),(176,0,'47-2','47-2',3,'image/jpeg',9803,'products/47-2.jpg','[]','2025-06-28 20:16:41','2025-06-28 20:16:41',NULL,'public'),(177,0,'47-3','47-3',3,'image/jpeg',9803,'products/47-3.jpg','[]','2025-06-28 20:16:41','2025-06-28 20:16:41',NULL,'public'),(178,0,'48-1','48-1',3,'image/jpeg',9803,'products/48-1.jpg','[]','2025-06-28 20:16:41','2025-06-28 20:16:41',NULL,'public'),(179,0,'48-2','48-2',3,'image/jpeg',9803,'products/48-2.jpg','[]','2025-06-28 20:16:41','2025-06-28 20:16:41',NULL,'public'),(180,0,'48-3','48-3',3,'image/jpeg',9803,'products/48-3.jpg','[]','2025-06-28 20:16:42','2025-06-28 20:16:42',NULL,'public'),(181,0,'48-4','48-4',3,'image/jpeg',9803,'products/48-4.jpg','[]','2025-06-28 20:16:42','2025-06-28 20:16:42',NULL,'public'),(182,0,'49-1','49-1',3,'image/jpeg',9803,'products/49-1.jpg','[]','2025-06-28 20:16:42','2025-06-28 20:16:42',NULL,'public'),(183,0,'49-2','49-2',3,'image/jpeg',9803,'products/49-2.jpg','[]','2025-06-28 20:16:42','2025-06-28 20:16:42',NULL,'public'),(184,0,'49-3','49-3',3,'image/jpeg',9803,'products/49-3.jpg','[]','2025-06-28 20:16:42','2025-06-28 20:16:42',NULL,'public'),(185,0,'49-4','49-4',3,'image/jpeg',9803,'products/49-4.jpg','[]','2025-06-28 20:16:42','2025-06-28 20:16:42',NULL,'public'),(186,0,'5-1','5-1',3,'image/jpeg',9803,'products/5-1.jpg','[]','2025-06-28 20:16:43','2025-06-28 20:16:43',NULL,'public'),(187,0,'5-2','5-2',3,'image/jpeg',9803,'products/5-2.jpg','[]','2025-06-28 20:16:43','2025-06-28 20:16:43',NULL,'public'),(188,0,'5-3','5-3',3,'image/jpeg',9803,'products/5-3.jpg','[]','2025-06-28 20:16:43','2025-06-28 20:16:43',NULL,'public'),(189,0,'5-4','5-4',3,'image/jpeg',9803,'products/5-4.jpg','[]','2025-06-28 20:16:43','2025-06-28 20:16:43',NULL,'public'),(190,0,'50-1','50-1',3,'image/jpeg',9803,'products/50-1.jpg','[]','2025-06-28 20:16:43','2025-06-28 20:16:43',NULL,'public'),(191,0,'50-2','50-2',3,'image/jpeg',9803,'products/50-2.jpg','[]','2025-06-28 20:16:43','2025-06-28 20:16:43',NULL,'public'),(192,0,'50-3','50-3',3,'image/jpeg',9803,'products/50-3.jpg','[]','2025-06-28 20:16:44','2025-06-28 20:16:44',NULL,'public'),(193,0,'50-4','50-4',3,'image/jpeg',9803,'products/50-4.jpg','[]','2025-06-28 20:16:44','2025-06-28 20:16:44',NULL,'public'),(194,0,'51-1','51-1',3,'image/jpeg',9803,'products/51-1.jpg','[]','2025-06-28 20:16:44','2025-06-28 20:16:44',NULL,'public'),(195,0,'51-2','51-2',3,'image/jpeg',9803,'products/51-2.jpg','[]','2025-06-28 20:16:44','2025-06-28 20:16:44',NULL,'public'),(196,0,'51-3','51-3',3,'image/jpeg',9803,'products/51-3.jpg','[]','2025-06-28 20:16:44','2025-06-28 20:16:44',NULL,'public'),(197,0,'51-4','51-4',3,'image/jpeg',9803,'products/51-4.jpg','[]','2025-06-28 20:16:44','2025-06-28 20:16:44',NULL,'public'),(198,0,'52-1','52-1',3,'image/jpeg',9803,'products/52-1.jpg','[]','2025-06-28 20:16:45','2025-06-28 20:16:45',NULL,'public'),(199,0,'52-2','52-2',3,'image/jpeg',9803,'products/52-2.jpg','[]','2025-06-28 20:16:45','2025-06-28 20:16:45',NULL,'public'),(200,0,'52-3','52-3',3,'image/jpeg',9803,'products/52-3.jpg','[]','2025-06-28 20:16:45','2025-06-28 20:16:45',NULL,'public'),(201,0,'53-1','53-1',3,'image/jpeg',9803,'products/53-1.jpg','[]','2025-06-28 20:16:45','2025-06-28 20:16:45',NULL,'public'),(202,0,'53-2','53-2',3,'image/jpeg',9803,'products/53-2.jpg','[]','2025-06-28 20:16:45','2025-06-28 20:16:45',NULL,'public'),(203,0,'53-3','53-3',3,'image/jpeg',9803,'products/53-3.jpg','[]','2025-06-28 20:16:45','2025-06-28 20:16:45',NULL,'public'),(204,0,'53-4','53-4',3,'image/jpeg',9803,'products/53-4.jpg','[]','2025-06-28 20:16:46','2025-06-28 20:16:46',NULL,'public'),(205,0,'54-1','54-1',3,'image/jpeg',9803,'products/54-1.jpg','[]','2025-06-28 20:16:46','2025-06-28 20:16:46',NULL,'public'),(206,0,'54-2','54-2',3,'image/jpeg',9803,'products/54-2.jpg','[]','2025-06-28 20:16:46','2025-06-28 20:16:46',NULL,'public'),(207,0,'54-3','54-3',3,'image/jpeg',9803,'products/54-3.jpg','[]','2025-06-28 20:16:46','2025-06-28 20:16:46',NULL,'public'),(208,0,'6-1','6-1',3,'image/jpeg',9803,'products/6-1.jpg','[]','2025-06-28 20:16:46','2025-06-28 20:16:46',NULL,'public'),(209,0,'6-2','6-2',3,'image/jpeg',9803,'products/6-2.jpg','[]','2025-06-28 20:16:46','2025-06-28 20:16:46',NULL,'public'),(210,0,'6-3','6-3',3,'image/jpeg',9803,'products/6-3.jpg','[]','2025-06-28 20:16:47','2025-06-28 20:16:47',NULL,'public'),(211,0,'6-4','6-4',3,'image/jpeg',9803,'products/6-4.jpg','[]','2025-06-28 20:16:47','2025-06-28 20:16:47',NULL,'public'),(212,0,'7-1','7-1',3,'image/jpeg',9803,'products/7-1.jpg','[]','2025-06-28 20:16:47','2025-06-28 20:16:47',NULL,'public'),(213,0,'7-2','7-2',3,'image/jpeg',9803,'products/7-2.jpg','[]','2025-06-28 20:16:47','2025-06-28 20:16:47',NULL,'public'),(214,0,'7-3','7-3',3,'image/jpeg',9803,'products/7-3.jpg','[]','2025-06-28 20:16:47','2025-06-28 20:16:47',NULL,'public'),(215,0,'8-1','8-1',3,'image/jpeg',9803,'products/8-1.jpg','[]','2025-06-28 20:16:47','2025-06-28 20:16:47',NULL,'public'),(216,0,'8-2','8-2',3,'image/jpeg',9803,'products/8-2.jpg','[]','2025-06-28 20:16:47','2025-06-28 20:16:47',NULL,'public'),(217,0,'8-3','8-3',3,'image/jpeg',9803,'products/8-3.jpg','[]','2025-06-28 20:16:48','2025-06-28 20:16:48',NULL,'public'),(218,0,'8-4','8-4',3,'image/jpeg',9803,'products/8-4.jpg','[]','2025-06-28 20:16:48','2025-06-28 20:16:48',NULL,'public'),(219,0,'9-1','9-1',3,'image/jpeg',9803,'products/9-1.jpg','[]','2025-06-28 20:16:48','2025-06-28 20:16:48',NULL,'public'),(220,0,'9-2','9-2',3,'image/jpeg',9803,'products/9-2.jpg','[]','2025-06-28 20:16:48','2025-06-28 20:16:48',NULL,'public'),(221,0,'9-3','9-3',3,'image/jpeg',9803,'products/9-3.jpg','[]','2025-06-28 20:16:48','2025-06-28 20:16:48',NULL,'public'),(222,0,'1','1',4,'image/jpeg',9803,'customers/1.jpg','[]','2025-06-28 20:16:53','2025-06-28 20:16:53',NULL,'public'),(223,0,'10','10',4,'image/jpeg',9803,'customers/10.jpg','[]','2025-06-28 20:16:53','2025-06-28 20:16:53',NULL,'public'),(224,0,'2','2',4,'image/jpeg',9803,'customers/2.jpg','[]','2025-06-28 20:16:53','2025-06-28 20:16:53',NULL,'public'),(225,0,'3','3',4,'image/jpeg',9803,'customers/3.jpg','[]','2025-06-28 20:16:53','2025-06-28 20:16:53',NULL,'public'),(226,0,'4','4',4,'image/jpeg',9803,'customers/4.jpg','[]','2025-06-28 20:16:53','2025-06-28 20:16:53',NULL,'public'),(227,0,'5','5',4,'image/jpeg',9803,'customers/5.jpg','[]','2025-06-28 20:16:53','2025-06-28 20:16:53',NULL,'public'),(228,0,'6','6',4,'image/jpeg',9803,'customers/6.jpg','[]','2025-06-28 20:16:53','2025-06-28 20:16:53',NULL,'public'),(229,0,'7','7',4,'image/jpeg',9803,'customers/7.jpg','[]','2025-06-28 20:16:54','2025-06-28 20:16:54',NULL,'public'),(230,0,'8','8',4,'image/jpeg',9803,'customers/8.jpg','[]','2025-06-28 20:16:54','2025-06-28 20:16:54',NULL,'public'),(231,0,'9','9',4,'image/jpeg',9803,'customers/9.jpg','[]','2025-06-28 20:16:54','2025-06-28 20:16:54',NULL,'public'),(232,0,'1','1',5,'image/jpeg',9803,'news/1.jpg','[]','2025-06-28 20:17:01','2025-06-28 20:17:01',NULL,'public'),(233,0,'10','10',5,'image/jpeg',9803,'news/10.jpg','[]','2025-06-28 20:17:01','2025-06-28 20:17:01',NULL,'public'),(234,0,'11','11',5,'image/jpeg',9803,'news/11.jpg','[]','2025-06-28 20:17:01','2025-06-28 20:17:01',NULL,'public'),(235,0,'2','2',5,'image/jpeg',9803,'news/2.jpg','[]','2025-06-28 20:17:01','2025-06-28 20:17:01',NULL,'public'),(236,0,'3','3',5,'image/jpeg',9803,'news/3.jpg','[]','2025-06-28 20:17:01','2025-06-28 20:17:01',NULL,'public'),(237,0,'4','4',5,'image/jpeg',9803,'news/4.jpg','[]','2025-06-28 20:17:02','2025-06-28 20:17:02',NULL,'public'),(238,0,'5','5',5,'image/jpeg',9803,'news/5.jpg','[]','2025-06-28 20:17:02','2025-06-28 20:17:02',NULL,'public'),(239,0,'6','6',5,'image/jpeg',9803,'news/6.jpg','[]','2025-06-28 20:17:02','2025-06-28 20:17:02',NULL,'public'),(240,0,'7','7',5,'image/jpeg',9803,'news/7.jpg','[]','2025-06-28 20:17:02','2025-06-28 20:17:02',NULL,'public'),(241,0,'8','8',5,'image/jpeg',9803,'news/8.jpg','[]','2025-06-28 20:17:02','2025-06-28 20:17:02',NULL,'public'),(242,0,'9','9',5,'image/jpeg',9803,'news/9.jpg','[]','2025-06-28 20:17:02','2025-06-28 20:17:02',NULL,'public'),(243,0,'1-lg','1-lg',6,'image/jpeg',8828,'sliders/1-lg.jpg','[]','2025-06-28 20:17:03','2025-06-28 20:17:03',NULL,'public'),(244,0,'1-md','1-md',6,'image/jpeg',8828,'sliders/1-md.jpg','[]','2025-06-28 20:17:04','2025-06-28 20:17:04',NULL,'public'),(245,0,'1-sm','1-sm',6,'image/jpeg',8828,'sliders/1-sm.jpg','[]','2025-06-28 20:17:04','2025-06-28 20:17:04',NULL,'public'),(246,0,'2-lg','2-lg',6,'image/jpeg',8828,'sliders/2-lg.jpg','[]','2025-06-28 20:17:04','2025-06-28 20:17:04',NULL,'public'),(247,0,'2-md','2-md',6,'image/jpeg',8828,'sliders/2-md.jpg','[]','2025-06-28 20:17:05','2025-06-28 20:17:05',NULL,'public'),(248,0,'2-sm','2-sm',6,'image/jpeg',8828,'sliders/2-sm.jpg','[]','2025-06-28 20:17:05','2025-06-28 20:17:05',NULL,'public'),(249,0,'3-lg','3-lg',6,'image/jpeg',8828,'sliders/3-lg.jpg','[]','2025-06-28 20:17:05','2025-06-28 20:17:05',NULL,'public'),(250,0,'3-md','3-md',6,'image/jpeg',8828,'sliders/3-md.jpg','[]','2025-06-28 20:17:05','2025-06-28 20:17:05',NULL,'public'),(251,0,'3-sm','3-sm',6,'image/jpeg',8828,'sliders/3-sm.jpg','[]','2025-06-28 20:17:06','2025-06-28 20:17:06',NULL,'public'),(252,0,'1','1',7,'image/jpeg',3613,'promotion/1.jpg','[]','2025-06-28 20:17:06','2025-06-28 20:17:06',NULL,'public'),(253,0,'2','2',7,'image/jpeg',3613,'promotion/2.jpg','[]','2025-06-28 20:17:06','2025-06-28 20:17:06',NULL,'public'),(254,0,'3','3',7,'image/jpeg',5391,'promotion/3.jpg','[]','2025-06-28 20:17:06','2025-06-28 20:17:06',NULL,'public'),(255,0,'4','4',7,'image/jpeg',5391,'promotion/4.jpg','[]','2025-06-28 20:17:07','2025-06-28 20:17:07',NULL,'public'),(256,0,'5','5',7,'image/jpeg',5391,'promotion/5.jpg','[]','2025-06-28 20:17:07','2025-06-28 20:17:07',NULL,'public'),(257,0,'6','6',7,'image/jpeg',5391,'promotion/6.jpg','[]','2025-06-28 20:17:07','2025-06-28 20:17:07',NULL,'public'),(258,0,'7','7',7,'image/jpeg',5391,'promotion/7.jpg','[]','2025-06-28 20:17:07','2025-06-28 20:17:07',NULL,'public'),(259,0,'8','8',7,'image/jpeg',5391,'promotion/8.jpg','[]','2025-06-28 20:17:07','2025-06-28 20:17:07',NULL,'public'),(260,0,'9','9',7,'image/jpeg',5391,'promotion/9.jpg','[]','2025-06-28 20:17:07','2025-06-28 20:17:07',NULL,'public'),(261,0,'cod','cod',8,'image/png',12121,'payments/cod.png','[]','2025-06-28 20:17:07','2025-06-28 20:17:07',NULL,'public'),(262,0,'bank-transfer','bank-transfer',8,'image/png',29089,'payments/bank-transfer.png','[]','2025-06-28 20:17:08','2025-06-28 20:17:08',NULL,'public'),(263,0,'stripe','stripe',8,'image/webp',7516,'payments/stripe.webp','[]','2025-06-28 20:17:08','2025-06-28 20:17:08',NULL,'public'),(264,0,'paypal','paypal',8,'image/png',3001,'payments/paypal.png','[]','2025-06-28 20:17:08','2025-06-28 20:17:08',NULL,'public'),(265,0,'mollie','mollie',8,'image/png',8968,'payments/mollie.png','[]','2025-06-28 20:17:08','2025-06-28 20:17:08',NULL,'public'),(266,0,'paystack','paystack',8,'image/png',31015,'payments/paystack.png','[]','2025-06-28 20:17:08','2025-06-28 20:17:08',NULL,'public'),(267,0,'razorpay','razorpay',8,'image/png',8489,'payments/razorpay.png','[]','2025-06-28 20:17:08','2025-06-28 20:17:08',NULL,'public'),(268,0,'sslcommerz','sslcommerz',8,'image/png',3482,'payments/sslcommerz.png','[]','2025-06-28 20:17:09','2025-06-28 20:17:09',NULL,'public'),(269,0,'app','app',9,'image/png',8667,'general/app.png','[]','2025-06-28 20:17:10','2025-06-28 20:17:10',NULL,'public'),(270,0,'coming-soon','coming-soon',9,'image/jpeg',22253,'general/coming-soon.jpg','[]','2025-06-28 20:17:10','2025-06-28 20:17:10',NULL,'public'),(271,0,'favicon','favicon',9,'image/png',5047,'general/favicon.png','[]','2025-06-28 20:17:10','2025-06-28 20:17:10',NULL,'public'),(272,0,'logo-dark','logo-dark',9,'image/png',1562,'general/logo-dark.png','[]','2025-06-28 20:17:10','2025-06-28 20:17:10',NULL,'public'),(273,0,'logo-light','logo-light',9,'image/png',1529,'general/logo-light.png','[]','2025-06-28 20:17:10','2025-06-28 20:17:10',NULL,'public'),(274,0,'logo','logo',9,'image/png',1441,'general/logo.png','[]','2025-06-28 20:17:10','2025-06-28 20:17:10',NULL,'public'),(275,0,'newsletter','newsletter',9,'image/jpeg',9778,'general/newsletter.jpg','[]','2025-06-28 20:17:10','2025-06-28 20:17:10',NULL,'public'),(276,0,'payment-method-1','payment-method-1',9,'image/jpeg',1128,'general/payment-method-1.jpg','[]','2025-06-28 20:17:11','2025-06-28 20:17:11',NULL,'public'),(277,0,'payment-method-2','payment-method-2',9,'image/jpeg',1184,'general/payment-method-2.jpg','[]','2025-06-28 20:17:11','2025-06-28 20:17:11',NULL,'public'),(278,0,'payment-method-3','payment-method-3',9,'image/jpeg',1109,'general/payment-method-3.jpg','[]','2025-06-28 20:17:11','2025-06-28 20:17:11',NULL,'public'),(279,0,'payment-method-4','payment-method-4',9,'image/jpeg',944,'general/payment-method-4.jpg','[]','2025-06-28 20:17:11','2025-06-28 20:17:11',NULL,'public'),(280,0,'payment-method-5','payment-method-5',9,'image/jpeg',964,'general/payment-method-5.jpg','[]','2025-06-28 20:17:11','2025-06-28 20:17:11',NULL,'public'),(281,0,'placeholder','placeholder',9,'image/png',12344,'general/placeholder.png','[]','2025-06-28 20:17:11','2025-06-28 20:17:11',NULL,'public'),(282,0,'1','1',10,'image/png',9022,'stores/1.png','[]','2025-06-28 20:17:11','2025-06-28 20:17:11',NULL,'public'),(283,0,'10','10',10,'image/png',4384,'stores/10.png','[]','2025-06-28 20:17:11','2025-06-28 20:17:11',NULL,'public'),(284,0,'11','11',10,'image/png',4706,'stores/11.png','[]','2025-06-28 20:17:11','2025-06-28 20:17:11',NULL,'public'),(285,0,'12','12',10,'image/png',5075,'stores/12.png','[]','2025-06-28 20:17:11','2025-06-28 20:17:11',NULL,'public'),(286,0,'13','13',10,'image/png',3700,'stores/13.png','[]','2025-06-28 20:17:11','2025-06-28 20:17:11',NULL,'public'),(287,0,'14','14',10,'image/png',4239,'stores/14.png','[]','2025-06-28 20:17:11','2025-06-28 20:17:11',NULL,'public'),(288,0,'15','15',10,'image/png',5304,'stores/15.png','[]','2025-06-28 20:17:12','2025-06-28 20:17:12',NULL,'public'),(289,0,'16','16',10,'image/png',4796,'stores/16.png','[]','2025-06-28 20:17:12','2025-06-28 20:17:12',NULL,'public'),(290,0,'17','17',10,'image/png',4919,'stores/17.png','[]','2025-06-28 20:17:12','2025-06-28 20:17:12',NULL,'public'),(291,0,'2','2',10,'image/png',8598,'stores/2.png','[]','2025-06-28 20:17:12','2025-06-28 20:17:12',NULL,'public'),(292,0,'3','3',10,'image/png',7888,'stores/3.png','[]','2025-06-28 20:17:12','2025-06-28 20:17:12',NULL,'public'),(293,0,'4','4',10,'image/png',8393,'stores/4.png','[]','2025-06-28 20:17:12','2025-06-28 20:17:12',NULL,'public'),(294,0,'5','5',10,'image/png',10159,'stores/5.png','[]','2025-06-28 20:17:12','2025-06-28 20:17:12',NULL,'public'),(295,0,'6','6',10,'image/png',10312,'stores/6.png','[]','2025-06-28 20:17:12','2025-06-28 20:17:12',NULL,'public'),(296,0,'7','7',10,'image/png',3764,'stores/7.png','[]','2025-06-28 20:17:12','2025-06-28 20:17:12',NULL,'public'),(297,0,'8','8',10,'image/png',4237,'stores/8.png','[]','2025-06-28 20:17:13','2025-06-28 20:17:13',NULL,'public'),(298,0,'9','9',10,'image/png',4096,'stores/9.png','[]','2025-06-28 20:17:13','2025-06-28 20:17:13',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands',NULL,'brands',0,'2025-06-28 20:16:03','2025-06-28 20:16:03',NULL),(2,0,'product-categories',NULL,'product-categories',0,'2025-06-28 20:16:04','2025-06-28 20:16:04',NULL),(3,0,'products',NULL,'products',0,'2025-06-28 20:16:07','2025-06-28 20:16:07',NULL),(4,0,'customers',NULL,'customers',0,'2025-06-28 20:16:53','2025-06-28 20:16:53',NULL),(5,0,'news',NULL,'news',0,'2025-06-28 20:17:01','2025-06-28 20:17:01',NULL),(6,0,'sliders',NULL,'sliders',0,'2025-06-28 20:17:03','2025-06-28 20:17:03',NULL),(7,0,'promotion',NULL,'promotion',0,'2025-06-28 20:17:06','2025-06-28 20:17:06',NULL),(8,0,'payments',NULL,'payments',0,'2025-06-28 20:17:07','2025-06-28 20:17:07',NULL),(9,0,'general',NULL,'general',0,'2025-06-28 20:17:10','2025-06-28 20:17:10',NULL),(10,0,'stores',NULL,'stores',0,'2025-06-28 20:17:11','2025-06-28 20:17:11',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2025-06-28 20:17:10','2025-06-28 20:17:10');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(2,1,0,NULL,NULL,'#',NULL,1,'Pages',NULL,'_self',1,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,1,'Terms Of Use',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,2,'Terms & Conditions',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,3,'Refund Policy',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,4,'Coming soon',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(8,1,0,NULL,NULL,'/products',NULL,2,'Products',NULL,'_self',1,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,1,'Products Of Category',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(11,1,8,NULL,NULL,'/products/beat-headphone',NULL,2,'Product Single',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(12,1,0,NULL,NULL,'/stores',NULL,3,'Stores',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(13,1,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Blog',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(14,1,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,5,'FAQs',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(15,1,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,6,'Contact',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(16,2,0,3,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Terms Of Use',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(17,2,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Terms & Conditions',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(18,2,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Refund Policy',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(19,2,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,3,'FAQs',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(20,2,0,NULL,NULL,'/nothing',NULL,4,'404 Page',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(21,3,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,0,'About us',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(22,3,0,10,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Affiliate',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(23,3,0,11,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Career',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(24,3,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Contact us',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(25,4,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Our blog',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(26,4,0,NULL,NULL,'/cart',NULL,1,'Cart',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(27,4,0,NULL,NULL,'/customer/overview',NULL,2,'My account',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10'),(28,4,0,NULL,NULL,'/products',NULL,3,'Shop',NULL,'_self',0,'2025-06-28 20:17:10','2025-06-28 20:17:10');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2025-06-28 20:17:10','2025-06-28 20:17:10'),(2,'Quick links','quick-links','published','2025-06-28 20:17:10','2025-06-28 20:17:10'),(3,'Company','company','published','2025-06-28 20:17:10','2025-06-28 20:17:10'),(4,'Business','business','published','2025-06-28 20:17:10','2025-06-28 20:17:10');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:48','2025-06-28 20:16:48'),(2,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(3,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(4,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(5,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(6,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(7,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(8,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(9,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(10,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(11,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(12,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(13,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(14,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',25,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',26,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',27,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',28,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',29,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',30,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',31,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',32,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',33,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:49','2025-06-28 20:16:49'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',34,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:50','2025-06-28 20:16:50'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',35,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:50','2025-06-28 20:16:50'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',36,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:50','2025-06-28 20:16:50'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',37,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:50','2025-06-28 20:16:50'),(38,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',38,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:50','2025-06-28 20:16:50'),(39,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',39,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:50','2025-06-28 20:16:50'),(40,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',40,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:50','2025-06-28 20:16:50'),(41,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',41,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:50','2025-06-28 20:16:50'),(42,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',42,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:50','2025-06-28 20:16:50'),(43,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',43,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:50','2025-06-28 20:16:50'),(44,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',44,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:50','2025-06-28 20:16:50'),(45,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',45,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:50','2025-06-28 20:16:50'),(46,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',46,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:50','2025-06-28 20:16:50'),(47,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',47,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:50','2025-06-28 20:16:50'),(48,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',48,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:50','2025-06-28 20:16:50'),(49,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',49,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:50','2025-06-28 20:16:50'),(50,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',50,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:50','2025-06-28 20:16:50'),(51,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',51,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:50','2025-06-28 20:16:50'),(52,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',52,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:50','2025-06-28 20:16:50'),(53,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',53,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:50','2025-06-28 20:16:50'),(54,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',54,'Botble\\Ecommerce\\Models\\Product','2025-06-28 20:16:50','2025-06-28 20:16:50'),(55,'tablet_image','[\"sliders\\/1-md.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-06-28 20:17:06','2025-06-28 20:17:06'),(56,'mobile_image','[\"sliders\\/1-sm.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-06-28 20:17:06','2025-06-28 20:17:06'),(57,'tablet_image','[\"sliders\\/2-md.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-06-28 20:17:06','2025-06-28 20:17:06'),(58,'mobile_image','[\"sliders\\/2-sm.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-06-28 20:17:06','2025-06-28 20:17:06'),(59,'tablet_image','[\"sliders\\/3-md.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-06-28 20:17:06','2025-06-28 20:17:06'),(60,'mobile_image','[\"sliders\\/3-sm.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-06-28 20:17:06','2025-06-28 20:17:06');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'2013_04_09_032329_create_base_tables',1),(3,'2013_04_09_062329_create_revisions_table',1),(4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_reset_tokens_table',1),(6,'2016_06_10_230148_create_acl_tables',1),(7,'2016_06_14_230857_create_menus_table',1),(8,'2016_06_28_221418_create_pages_table',1),(9,'2016_10_05_074239_create_setting_table',1),(10,'2016_11_28_032840_create_dashboard_widget_tables',1),(11,'2016_12_16_084601_create_widgets_table',1),(12,'2017_05_09_070343_create_media_tables',1),(13,'2017_11_03_070450_create_slug_table',1),(14,'2019_01_05_053554_create_jobs_table',1),(15,'2019_08_19_000000_create_failed_jobs_table',1),(16,'2019_12_14_000001_create_personal_access_tokens_table',1),(17,'2021_08_02_084121_fix_old_shortcode',1),(18,'2022_04_20_100851_add_index_to_media_table',1),(19,'2022_04_20_101046_add_index_to_menu_table',1),(20,'2022_07_10_034813_move_lang_folder_to_root',1),(21,'2022_08_04_051940_add_missing_column_expires_at',1),(22,'2022_09_01_000001_create_admin_notifications_tables',1),(23,'2022_10_14_024629_drop_column_is_featured',1),(24,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(25,'2022_12_02_093615_update_slug_index_columns',1),(26,'2023_01_30_024431_add_alt_to_media_table',1),(27,'2023_02_16_042611_drop_table_password_resets',1),(28,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(29,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(30,'2023_08_21_090810_make_page_content_nullable',1),(31,'2023_09_14_021936_update_index_for_slugs_table',1),(32,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(33,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(34,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(35,'2024_05_04_030654_improve_social_links',1),(36,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(37,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(38,'2024_07_12_100000_change_random_hash_for_media',1),(39,'2024_09_30_024515_create_sessions_table',1),(40,'2024_12_19_000001_create_device_tokens_table',1),(41,'2024_12_19_000002_create_push_notifications_table',1),(42,'2024_12_19_000003_create_push_notification_recipients_table',1),(43,'2020_11_18_150916_ads_create_ads_table',2),(44,'2021_12_02_035301_add_ads_translations_table',2),(45,'2023_04_17_062645_add_open_in_new_tab',2),(46,'2023_11_07_023805_add_tablet_mobile_image',2),(47,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(48,'2025_04_21_000000_add_tablet_mobile_image_to_ads_translations_table',2),(49,'2024_04_27_100730_improve_analytics_setting',3),(50,'2015_06_29_025744_create_audit_history',4),(51,'2023_11_14_033417_change_request_column_in_table_audit_histories',4),(52,'2025_05_05_000001_add_user_type_to_audit_histories_table',4),(53,'2015_06_18_033822_create_blog_table',5),(54,'2021_02_16_092633_remove_default_value_for_author_type',5),(55,'2021_12_03_030600_create_blog_translations',5),(56,'2022_04_19_113923_add_index_to_table_posts',5),(57,'2023_08_29_074620_make_column_author_id_nullable',5),(58,'2024_07_30_091615_fix_order_column_in_categories_table',5),(59,'2025_01_06_033807_add_default_value_for_categories_author_type',5),(60,'2016_06_17_091537_create_contacts_table',6),(61,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(62,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(63,'2024_03_25_000001_update_captcha_settings_for_contact',6),(64,'2024_04_19_063914_create_custom_fields_table',6),(65,'2020_03_05_041139_create_ecommerce_tables',7),(66,'2021_01_01_044147_ecommerce_create_flash_sale_table',7),(67,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',7),(68,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',7),(69,'2021_02_18_073505_update_table_ec_reviews',7),(70,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',7),(71,'2021_03_10_025153_change_column_tax_amount',7),(72,'2021_03_20_033103_add_column_availability_to_table_ec_products',7),(73,'2021_04_28_074008_ecommerce_create_product_label_table',7),(74,'2021_05_31_173037_ecommerce_create_ec_products_translations',7),(75,'2021_08_17_105016_remove_column_currency_id_in_some_tables',7),(76,'2021_08_30_142128_add_images_column_to_ec_reviews_table',7),(77,'2021_10_04_030050_add_column_created_by_to_table_ec_products',7),(78,'2021_10_05_122616_add_status_column_to_ec_customers_table',7),(79,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',7),(80,'2021_11_23_071403_correct_languages_for_product_variations',7),(81,'2021_11_28_031808_add_product_tags_translations',7),(82,'2021_12_01_031123_add_featured_image_to_ec_products',7),(83,'2022_01_01_033107_update_table_ec_shipments',7),(84,'2022_02_16_042457_improve_product_attribute_sets',7),(85,'2022_03_22_075758_correct_product_name',7),(86,'2022_04_19_113334_add_index_to_ec_products',7),(87,'2022_04_28_144405_remove_unused_table',7),(88,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',7),(89,'2022_05_18_143720_add_index_to_table_ec_product_categories',7),(90,'2022_06_16_095633_add_index_to_some_tables',7),(91,'2022_06_30_035148_create_order_referrals_table',7),(92,'2022_07_24_153815_add_completed_at_to_ec_orders_table',7),(93,'2022_08_14_032836_create_ec_order_returns_table',7),(94,'2022_08_14_033554_create_ec_order_return_items_table',7),(95,'2022_08_15_040324_add_billing_address',7),(96,'2022_08_30_091114_support_digital_products_table',7),(97,'2022_09_13_095744_create_options_table',7),(98,'2022_09_13_104347_create_option_value_table',7),(99,'2022_10_05_163518_alter_table_ec_order_product',7),(100,'2022_10_12_041517_create_invoices_table',7),(101,'2022_10_12_142226_update_orders_table',7),(102,'2022_10_13_024916_update_table_order_returns',7),(103,'2022_10_21_030830_update_columns_in_ec_shipments_table',7),(104,'2022_10_28_021046_update_columns_in_ec_shipments_table',7),(105,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',7),(106,'2022_11_19_041643_add_ec_tax_product_table',7),(107,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',7),(108,'2022_12_17_041532_fix_address_in_order_invoice',7),(109,'2022_12_26_070329_create_ec_product_views_table',7),(110,'2023_01_04_033051_fix_product_categories',7),(111,'2023_01_09_050400_add_ec_global_options_translations_table',7),(112,'2023_01_10_093754_add_missing_option_value_id',7),(113,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',7),(114,'2023_01_26_021854_add_ec_customer_used_coupons_table',7),(115,'2023_02_08_015900_update_options_column_in_ec_order_product_table',7),(116,'2023_02_27_095752_remove_duplicate_reviews',7),(117,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',7),(118,'2023_04_21_082427_create_ec_product_categorizables_table',7),(119,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',7),(120,'2023_05_17_025812_fix_invoice_issue',7),(121,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',7),(122,'2023_05_27_144611_fix_exchange_rate_setting',7),(123,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',7),(124,'2023_06_30_042512_create_ec_order_tax_information_table',7),(125,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',7),(126,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',7),(127,'2023_08_15_064505_create_ec_tax_rules_table',7),(128,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',7),(129,'2023_08_22_094114_drop_unique_for_barcode',7),(130,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',7),(131,'2023_09_07_094312_add_index_to_product_sku_and_translations',7),(132,'2023_09_19_024955_create_discount_product_categories_table',7),(133,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',7),(134,'2023_11_22_154643_add_unique_in_table_ec_products_variations',7),(135,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',7),(136,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',7),(137,'2023_12_25_040604_ec_create_review_replies_table',7),(138,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',7),(139,'2024_01_16_070706_fix_translation_tables',7),(140,'2024_01_23_075227_add_proof_file_to_ec_orders_table',7),(141,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',7),(142,'2024_03_27_062402_create_ec_customer_deletion_requests_table',7),(143,'2024_03_29_042242_migrate_old_captcha_settings',7),(144,'2024_03_29_093946_create_ec_order_return_histories_table',7),(145,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',7),(146,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',7),(147,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',7),(148,'2024_05_07_073153_improve_table_wishlist',7),(149,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',7),(150,'2024_05_15_021503_fix_invoice_path',7),(151,'2024_06_20_160724_create_ec_shared_wishlists_table',7),(152,'2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table',7),(153,'2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table',7),(154,'2024_07_14_071826_make_customer_email_nullable',7),(155,'2024_07_15_104916_add_video_media_column_to_ec_products_table',7),(156,'2024_07_26_052530_add_percentage_to_tax_rules_table',7),(157,'2024_08_14_123028_add_customer_delivered_confirmed_at_column_to_ec_shipments_table',7),(158,'2024_08_19_132849_create_specification_tables',7),(159,'2024_09_07_060744_add_author_column_to_specification_tables',7),(160,'2024_09_14_064023_add_can_use_with_flash_sale_column_to_ec_discounts_table',7),(161,'2024_09_25_073928_remove_wrong_product_slugs',7),(162,'2025_01_15_050230_migrate_old_theme_options',7),(163,'2025_01_17_082713_correct_column_barcode_and_cost_per_item_to_product_table',7),(164,'2025_01_24_044641_migrate_old_country_data',7),(165,'2025_01_28_233602_add_private_notes_into_ec_orders_table',7),(166,'2025_02_13_021247_add_tax_translations',7),(167,'2025_02_24_152621_add_text_color_to_product_labels_table',7),(168,'2025_04_12_000001_add_payment_fee_to_ec_orders_table',7),(169,'2025_04_12_000002_add_payment_fee_to_ec_invoices_table',7),(170,'2025_05_05_092036_make_user_id_and_tax_amount_nullable',7),(171,'2025_05_15_082342_drop_email_unique_index_in_ec_customers_table',7),(172,'2025_06_07_081731_add_translations_for_specification_groups_and_tables',7),(173,'2025_06_17_091813_increase_note_in_shipments_table',7),(174,'2025_06_24_000001_create_ec_product_license_codes_table',7),(175,'2025_06_24_080427_add_license_code_type_to_products_table',7),(176,'2018_07_09_221238_create_faq_table',8),(177,'2021_12_03_082134_create_faq_translations',8),(178,'2023_11_17_063408_add_description_column_to_faq_categories_table',8),(179,'2016_10_03_032336_create_languages_table',9),(180,'2023_09_14_022423_add_index_for_language_table',9),(181,'2021_10_25_021023_fix-priority-load-for-language-advanced',10),(182,'2021_12_03_075608_create_page_translations',10),(183,'2023_07_06_011444_create_slug_translations_table',10),(184,'2019_11_18_061011_create_country_table',11),(185,'2021_12_03_084118_create_location_translations',11),(186,'2021_12_03_094518_migrate_old_location_data',11),(187,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',11),(188,'2022_01_16_085908_improve_plugin_location',11),(189,'2022_08_04_052122_delete_location_backup_tables',11),(190,'2023_04_23_061847_increase_state_translations_abbreviation_column',11),(191,'2023_07_26_041451_add_more_columns_to_location_table',11),(192,'2023_07_27_041451_add_more_columns_to_location_translation_table',11),(193,'2023_08_15_073307_drop_unique_in_states_cities_translations',11),(194,'2023_10_21_065016_make_state_id_in_table_cities_nullable',11),(195,'2024_08_17_094600_add_image_into_countries',11),(196,'2025_01_08_093652_add_zip_code_to_cities',11),(197,'2021_07_06_030002_create_marketplace_table',12),(198,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',12),(199,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',12),(200,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',12),(201,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',12),(202,'2021_12_06_031304_update_table_mp_customer_revenues',12),(203,'2022_10_19_152916_add_columns_to_mp_stores_table',12),(204,'2022_10_20_062849_create_mp_category_sale_commissions_table',12),(205,'2022_11_02_071413_add_more_info_for_store',12),(206,'2022_11_02_080444_add_tax_info',12),(207,'2023_02_01_062030_add_store_translations',12),(208,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',12),(209,'2023_02_17_023648_fix_store_prefix',12),(210,'2024_04_03_062451_add_cover_image_to_table_mp_stores',12),(211,'2024_05_07_082630_create_mp_messages_table',12),(212,'2024_07_19_131849_add_documents_to_mp_stores_table',12),(213,'2024_08_18_083119_add_tax_id_column_to_mp_stores_table',12),(214,'2024_08_27_141244_add_block_reason_to_ec_customers_table',12),(215,'2024_09_17_125408_add_square_logo_to_stores_table',12),(216,'2017_10_24_154832_create_newsletter_table',13),(217,'2024_03_25_000001_update_captcha_settings_for_newsletter',13),(218,'2017_05_18_080441_create_payment_tables',14),(219,'2021_03_27_144913_add_customer_type_into_table_payments',14),(220,'2021_05_24_034720_make_column_currency_nullable',14),(221,'2021_08_09_161302_add_metadata_column_to_payments_table',14),(222,'2021_10_19_020859_update_metadata_field',14),(223,'2022_06_28_151901_activate_paypal_stripe_plugin',14),(224,'2022_07_07_153354_update_charge_id_in_table_payments',14),(225,'2024_07_04_083133_create_payment_logs_table',14),(226,'2025_04_12_000003_add_payment_fee_to_payments_table',14),(227,'2025_05_22_000001_add_payment_fee_type_to_settings_table',14),(228,'2017_07_11_140018_create_simple_slider_table',15),(229,'2025_04_08_040931_create_social_logins_table',16),(230,'2024_09_14_100108_add_stripe_connect_details_to_ec_customers_table',17),(231,'2016_10_07_193005_create_translations_table',18),(232,'2023_12_12_105220_drop_translations_table',18);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) unsigned DEFAULT '0.00',
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_messages`
--

DROP TABLE IF EXISTS `mp_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_messages`
--

LOCK TABLES `mp_messages` WRITE;
/*!40000 ALTER TABLE `mp_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_square` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `government_id_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','hoyt.lindgren@example.com','+16503557860','637 Fernando Springs Suite 297','VU','Illinois','Albashire',2,'stores/1.png',NULL,NULL,'Ullam eligendi quia consequatur nostrum. Facere aut quis vitae voluptate autem minima. Aut dolorem iusto necessitatibus in et a. Architecto voluptates inventore dolor. Dolorum dolorum magnam magnam at. Voluptas rerum ut et fugiat necessitatibus eveniet. Saepe quia quasi aut et non ipsam odit. Ut nulla praesentium suscipit ducimus nemo est expedita hic. Inventore est et dolores voluptatem dolores.','Founded in 2002, GoPro has grown into a global brand known for its action cameras and versatile accessories.','published',NULL,'2025-06-28 20:17:16','2025-06-28 20:17:16',NULL,NULL,NULL,NULL,NULL),(2,'Global Office','rodrick.nikolaus@example.org','+15867448375','7773 Howell Gardens','BJ','Oklahoma','Rohanbury',7,'stores/2.png',NULL,NULL,'Porro porro dolor asperiores qui quia quia. Sequi et sed ut dolorem quia et possimus sunt. Odio quo accusantium facilis hic. Et suscipit rerum ab veniam qui in. Excepturi suscipit assumenda explicabo earum. Aut voluptatum voluptas in nobis enim. Harum eos eaque explicabo earum minus saepe illum.','Global Office provides high-quality office supplies and equipment for businesses of all sizes.','published',NULL,'2025-06-28 20:17:16','2025-06-28 20:17:16',NULL,NULL,NULL,NULL,NULL),(3,'Young Shop','consuelo40@example.com','+17652176910','1875 Prohaska Terrace','LB','New Jersey','Danchester',4,'stores/3.png',NULL,NULL,'Officiis natus officia voluptas. Ducimus sed ut ducimus nostrum facere soluta sit. Tempore similique eos dolores est sunt commodi. Molestiae sit dolore aut magnam fuga ea. Dolorum minima quia sapiente dolorem quibusdam distinctio aut.','Young Shop specializes in trendy fashion and accessories for the youth market.','published',NULL,'2025-06-28 20:17:16','2025-06-28 20:17:16',NULL,NULL,NULL,NULL,NULL),(4,'Global Store','alexandrea.douglas@example.org','+15207015383','77725 Homenick Passage Suite 692','DJ','Florida','Lake Arlo',8,'stores/4.png',NULL,NULL,'Laborum nobis qui reiciendis et reiciendis eos. Sint doloremque ipsa maiores et enim aut harum. Atque unde sed facilis voluptates. Id culpa ut beatae ex molestias. Aliquid accusamus aut voluptatum quia sed quaerat dolorem laboriosam. Voluptatem est vel unde eos voluptatibus laborum rerum quasi.','Global Store offers a wide range of products from electronics to home goods at competitive prices.','published',NULL,'2025-06-28 20:17:16','2025-06-28 20:17:16',NULL,NULL,NULL,NULL,NULL),(5,'Robert\'s Store','hgrady@example.net','+16578877394','17430 Schinner Parks Suite 493','ME','Iowa','Zeldaport',5,'stores/5.png',NULL,NULL,'Eos quas aut et sapiente. Optio deserunt est fugiat eaque ducimus. Sed est in dolores qui illo consequuntur quia reiciendis. Amet aut qui eligendi corporis sint rerum. Expedita et officiis aliquid. Aspernatur laboriosam nostrum nisi recusandae. Eum error rerum quaerat iure non eos ipsum voluptas.','Robert\'s Store is your destination for premium quality clothing and accessories.','published',NULL,'2025-06-28 20:17:16','2025-06-28 20:17:16',NULL,NULL,NULL,NULL,NULL),(6,'Stouffer','larissa21@example.com','+15134170858','47775 Sawayn Stravenue','AM','Oklahoma','South Lessieborough',6,'stores/6.png',NULL,NULL,'Id est eaque at ducimus. Rerum maiores ut eos sint error. Impedit distinctio laboriosam voluptatem impedit ad enim. Dolores quo dicta voluptatem nesciunt est est. Repellendus ratione atque incidunt excepturi et fuga. Omnis quis vero maiores harum aut. Sint animi dolore et consequatur ipsum labore.','Stouffer brings you delicious, ready-to-eat meals that are perfect for busy lifestyles.','published',NULL,'2025-06-28 20:17:16','2025-06-28 20:17:16',NULL,NULL,NULL,NULL,NULL),(7,'StarKist','foster74@example.org','+18437555839','49562 Hoeger Ranch Apt. 234','MD','North Dakota','New Kaylie',6,'stores/7.png',NULL,NULL,'Pariatur laboriosam consequatur repellendus in quidem ea. Distinctio possimus odio totam culpa deleniti. Et id iure id repudiandae ad. Harum quas voluptas commodi molestiae ducimus. Ipsa repudiandae rerum omnis incidunt voluptas quis. Repudiandae doloremque fuga ut architecto voluptatum. Nulla voluptate quaerat rem quia voluptatem eaque odio iste.','StarKist is committed to providing sustainable seafood products of the highest quality.','published',NULL,'2025-06-28 20:17:16','2025-06-28 20:17:16',NULL,NULL,NULL,NULL,NULL),(8,'Old El Paso','voconnell@example.net','+16286157620','42348 Abernathy Ferry','KE','Colorado','East Elisha',5,'stores/8.png',NULL,NULL,'Placeat omnis fuga molestias officia rerum. Ipsa natus voluptate molestias culpa. Quibusdam consequatur distinctio quod. Sint ipsum et sapiente animi animi unde dolore. Cum numquam quae natus molestiae nesciunt. Quo maiores eius deleniti. Error voluptate cum beatae ex culpa officiis et. Reprehenderit veniam et doloribus est iste quia quis.','Old El Paso brings the flavors of Mexico to your table with authentic ingredients and recipes.','published',NULL,'2025-06-28 20:17:16','2025-06-28 20:17:16',NULL,NULL,NULL,NULL,NULL),(9,'Tyson','waelchi.jettie@example.com','+13379999957','27132 Vilma Wall Apt. 164','ST','Indiana','South Teagan',3,'stores/9.png',NULL,NULL,'Optio dolor nulla cum laborum placeat autem non. Explicabo aut et voluptatem ut vel a iure. Ab mollitia et aspernatur deserunt. Et qui cupiditate corrupti quibusdam. Et quos aut et maiores magnam. Dignissimos cupiditate perferendis sapiente quisquam tempora veritatis id. Vitae ea molestiae eveniet et.','Tyson offers a variety of protein products to help you create delicious meals for your family.','published',NULL,'2025-06-28 20:17:16','2025-06-28 20:17:16',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$YsVql9ncRK6EZNbNlLifb.saX.asfkRX40KAIyptGoOqi7oMeiW8K','{\"name\":\"Mr. Durward Block\",\"number\":\"+19372505402\",\"full_name\":\"Valerie Maggio\",\"description\":\"Lenora Altenwerth\"}','2025-06-28 20:17:13','2025-06-28 20:17:13','bank_transfer',NULL),(2,3,0.00,0.00,0.00,'$2y$12$UJsa91e.3T6h6I87O53fkeAf4AfugdYiIT73o/axBmgMZ2yHqqAkW','{\"name\":\"Stuart Barton\",\"number\":\"+17088794453\",\"full_name\":\"Jovan Kassulke\",\"description\":\"Ariel Ullrich\"}','2025-06-28 20:17:14','2025-06-28 20:17:14','bank_transfer',NULL),(3,4,0.00,0.00,0.00,'$2y$12$t6k9SgintPpKnjq76Yb7XOnmNjwVYCMPZGxCwIs4gLxVD0w5D6FMa','{\"name\":\"Prof. Easton DuBuque III\",\"number\":\"+14063753446\",\"full_name\":\"Bradly Powlowski\",\"description\":\"Giovanny Boyer\"}','2025-06-28 20:17:14','2025-06-28 20:17:14','bank_transfer',NULL),(4,5,0.00,0.00,0.00,'$2y$12$lW/D.vbJi1T54QejCGv9NeHWui8eYiBzhiF4J47ZoAYfGWx2VI6jK','{\"name\":\"Harry Terry\",\"number\":\"+14587677688\",\"full_name\":\"Addison Okuneva\",\"description\":\"Shana Schuster\"}','2025-06-28 20:17:14','2025-06-28 20:17:14','bank_transfer',NULL),(5,6,0.00,0.00,0.00,'$2y$12$vydSZHlQUJqTE8rCUcN.du5tZA.GP2Sz987rM.PxCEkpqQORUHbxu','{\"name\":\"Madalyn Kihn\",\"number\":\"+12173810596\",\"full_name\":\"Jayda Bayer\",\"description\":\"Mr. Bradly Hills\"}','2025-06-28 20:17:15','2025-06-28 20:17:15','bank_transfer',NULL),(6,7,0.00,0.00,0.00,'$2y$12$EmTpv9diKmo7FB4pEtnYsOppEYYf6fL8fiG4hUg.sfUeMNvH2pGqi','{\"name\":\"Price Wuckert\",\"number\":\"+16617671100\",\"full_name\":\"Mr. Kelvin Denesik PhD\",\"description\":\"Berta Leuschke\"}','2025-06-28 20:17:15','2025-06-28 20:17:15','bank_transfer',NULL),(7,8,0.00,0.00,0.00,'$2y$12$cb0Lub8b/8KacjzqA7KUjuumwZPq0D3SYbpP5Zabj2nyzUjRG7f8m','{\"name\":\"Althea McDermott\",\"number\":\"+12836587162\",\"full_name\":\"Brenda McKenzie\",\"description\":\"Guiseppe Koch\"}','2025-06-28 20:17:16','2025-06-28 20:17:16','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2025-06-28 20:17:06','2025-06-28 20:17:06'),(2,'About us','<p>Queen\'s absence, and were quite silent, and looked along the passage into the garden door. Poor Alice! It was the Hatter. \'I deny it!\' said the Mouse was bristling all over, and both creatures hid their faces in their mouths; and the game was in a VERY turn-up nose, much more like a frog; and both footmen, Alice noticed, had powdered hair that curled all over with diamonds, and walked a little house in it about four feet high. \'Whoever lives there,\' thought Alice, \'shall I NEVER get any older.</p><p>Alice went on, \'if you don\'t even know what to uglify is, you see, because some of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, in a minute or two, and the jury consider their verdict,\' the King said to the other, and making faces at him as he fumbled over the list, feeling very glad to find that the mouse doesn\'t get out.\" Only I don\'t believe it,\' said the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve kept her waiting!\' Alice felt so desperate that she was.</p><p>THEIR eyes bright and eager with many a strange tale, perhaps even with the lobsters, out to be trampled under its feet, \'I move that the pebbles were all locked; and when Alice had learnt several things of this sort in her own mind (as well as if it had lost something; and she went round the refreshments!\' But there seemed to Alice to herself, \'in my going out altogether, like a candle. I wonder if I fell off the mushroom, and crawled away in the middle, wondering how she was now about a.</p><p>Gryphon only answered \'Come on!\' and ran off, thinking while she was nine feet high. \'I wish I hadn\'t drunk quite so much!\' Alas! it was a dead silence. Alice noticed with some surprise that the hedgehog a blow with its eyelids, so he with his tea spoon at the end of the way--\' \'THAT generally takes some time,\' interrupted the Hatter: \'it\'s very rude.\' The Hatter looked at Alice. \'I\'M not a moment to be treated with respect. \'Cheshire Puss,\' she began, in rather a complaining tone, \'and they.</p>',1,NULL,'default',NULL,'published','2025-06-28 20:17:06','2025-06-28 20:17:06'),(3,'Terms Of Use','<p>Who ever saw in my time, but never ONE with such a wretched height to be.\' \'It is a long time with great curiosity. \'Soles and eels, of course,\' the Mock Turtle. \'She can\'t explain it,\' said Alice. \'Why, you don\'t explain it is all the children she knew that it made no mark; but he would not allow without knowing how old it was, and, as she could for sneezing. There was a child,\' said the cook. The King looked anxiously at the other queer noises, would change (she knew) to the seaside once in.</p><p>I think that very few things indeed were really impossible. There seemed to listen, the whole pack rose up into the sky all the rats and--oh dear!\' cried Alice in a great many more than three.\' \'Your hair wants cutting,\' said the Cat, \'if you don\'t like the three gardeners, oblong and flat, with their heads!\' and the m--\' But here, to Alice\'s side as she heard one of them.\' In another minute the whole thing, and longed to change the subject of conversation. \'Are you--are you fond--of--of.</p><p>However, she soon found herself lying on the ground as she spoke, but no result seemed to think to herself, in a trembling voice to its feet, ran round the table, but there were no arches left, and all dripping wet, cross, and uncomfortable. The first thing she heard a little recovered from the trees under which she had not got into a sort of thing that would happen: \'\"Miss Alice! Come here directly, and get in at the March Hare interrupted, yawning. \'I\'m getting tired of swimming about here.</p><p>Alice in a hurry that she was now the right distance--but then I wonder what you\'re talking about,\' said Alice. \'Why not?\' said the Caterpillar, just as I do,\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you finished the guinea-pigs!\' thought Alice. One of the ground--and I should think you might catch a bat, and that\'s very like having a game of croquet she was saying, and the baby--the fire-irons came first; then followed a shower of little animals and.</p>',1,NULL,'default',NULL,'published','2025-06-28 20:17:06','2025-06-28 20:17:06'),(4,'Terms &amp; Conditions','<p>Hatter asked triumphantly. Alice did not venture to say to itself, \'Oh dear! Oh dear! I\'d nearly forgotten to ask.\' \'It turned into a butterfly, I should think!\' (Dinah was the White Rabbit, jumping up in spite of all her knowledge of history, Alice had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the King. On this the whole thing, and she swam lazily about in the prisoner\'s handwriting?\' asked another of the.</p><p>It was high time to begin again, it was the Rabbit whispered in a shrill, loud voice, and see that queer little toss of her skirt, upsetting all the while, till at last she stretched her arms round it as you say pig, or fig?\' said the March Hare was said to Alice, flinging the baby joined):-- \'Wow! wow! wow!\' \'Here! you may stand down,\' continued the Hatter, \'I cut some more of it had a door leading right into a conversation. Alice replied, rather shyly, \'I--I hardly know, sir, just at first.</p><p>Though they were nowhere to be treated with respect. \'Cheshire Puss,\' she began, in a sorrowful tone, \'I\'m afraid I am, sir,\' said Alice; \'I must be a grin, and she felt that she was in managing her flamingo: she succeeded in bringing herself down to look about her any more if you\'d like it very much,\' said the Duchess: \'what a clear way you can;--but I must have been changed for any lesson-books!\' And so she went on, \'if you don\'t explain it as far down the chimney as she ran; but the.</p><p>Alice: \'I don\'t quite understand you,\' she said, \'and see whether it\'s marked \"poison\" or not\'; for she felt sure it would be quite absurd for her neck from being run over; and the choking of the month, and doesn\'t tell what o\'clock it is!\' \'Why should it?\' muttered the Hatter. \'He won\'t stand beating. Now, if you wouldn\'t mind,\' said Alice: \'I don\'t think they play at all fairly,\' Alice began, in a mournful tone, \'he won\'t do a thing before, but she ran across the garden, and I never was so.</p>',1,NULL,'default',NULL,'published','2025-06-28 20:17:06','2025-06-28 20:17:06'),(5,'Refund Policy','<p>Alice as it happens; and if the Mock Turtle. \'Hold your tongue!\' added the Dormouse. \'Don\'t talk nonsense,\' said Alice loudly. \'The idea of having nothing to do: once or twice, half hoping she might find another key on it, and finding it very hard indeed to make out at all comfortable, and it said nothing. \'This here young lady,\' said the March Hare went \'Sh! sh!\' and the White Rabbit as he shook his head mournfully. \'Not I!\' said the Dormouse: \'not in that case I can say.\' This was such a.</p><p>Christmas.\' And she kept fanning herself all the things between whiles.\' \'Then you keep moving round, I suppose?\' said Alice. \'Nothing WHATEVER?\' persisted the King. On this the White Rabbit blew three blasts on the English coast you find a pleasure in all directions, tumbling up against each other; however, they got their tails in their mouths. So they went on eagerly. \'That\'s enough about lessons,\' the Gryphon replied very solemnly. Alice was very hot, she kept tossing the baby joined).</p><p>There was a large mustard-mine near here. And the Gryphon as if a fish came to the jury, who instantly made a memorandum of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have done that, you know,\' said Alice very humbly: \'you had got its neck nicely straightened out, and was a very hopeful tone though), \'I won\'t have any rules in particular; at least, if there are, nobody attends to them--and you\'ve no idea what to beautify is, I suppose?\' said Alice. \'Did you speak?\' \'Not I!\'.</p><p>Queen said to the Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little of it?\' said the voice. \'Fetch me my gloves this moment!\' Then came a rumbling of little birds and animals that had a door leading right into it. \'That\'s very curious.\' \'It\'s all about for a few minutes to see if she had caught the baby was howling so much contradicted in her pocket, and pulled out a race-course, in a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\' to the beginning of the.</p>',1,NULL,'default',NULL,'published','2025-06-28 20:17:06','2025-06-28 20:17:06'),(6,'Blog','<p>---</p>',1,NULL,'blog-sidebar',NULL,'published','2025-06-28 20:17:06','2025-06-28 20:17:06'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,'default',NULL,'published','2025-06-28 20:17:06','2025-06-28 20:17:06'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>',1,NULL,'full-width',NULL,'published','2025-06-28 20:17:06','2025-06-28 20:17:06'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2025-06-28 20:17:06','2025-06-28 20:17:06'),(10,'Affiliate','<p>How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure those are not attending!\' said the White Rabbit. She was looking at it gloomily: then he dipped it into one of the conversation. Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I mean what I say--that\'s the same as the whole pack rose up into the teapot. \'At any rate I\'ll never go THERE again!\' said Alice angrily. \'It wasn\'t very civil of you to leave it behind?\' She.</p><p>Dodo. Then they all moved off, and Alice was very hot, she kept fanning herself all the party went back to the seaside once in a hoarse, feeble voice: \'I heard every word you fellows were saying.\' \'Tell us a story!\' said the Mock Turtle, and to wonder what they said. The executioner\'s argument was, that anything that looked like the wind, and the moment she quite forgot you didn\'t sign it,\' said the Caterpillar. \'Is that the mouse doesn\'t get out.\" Only I don\'t like the Queen?\' said the.</p><p>White Rabbit; \'in fact, there\'s nothing written on the hearth and grinning from ear to ear. \'Please would you like the right words,\' said poor Alice, \'it would be so easily offended!\' \'You\'ll get used to say to itself, half to itself, half to itself, half to itself, half to itself, \'Oh dear! Oh dear! I\'d nearly forgotten to ask.\' \'It turned into a graceful zigzag, and was beating her violently with its arms folded, quietly smoking a long argument with the bread-and-butter getting so thin--and.</p><p>CURTSEYING as you\'re falling through the wood. \'It\'s the thing at all. However, \'jury-men\' would have done just as she could. The next witness would be of very little way out of sight: \'but it sounds uncommon nonsense.\' Alice said very politely, \'if I had to kneel down on one knee. \'I\'m a poor man,\' the Hatter were having tea at it: a Dormouse was sitting on a summer day: The Knave shook his head sadly. \'Do I look like it?\' he said. \'Fifteenth,\' said the Hatter. \'Does YOUR watch tell you my.</p>',1,NULL,'default',NULL,'published','2025-06-28 20:17:06','2025-06-28 20:17:06'),(11,'Career','<p>I wonder what I eat\" is the reason of that?\' \'In my youth,\' Father William replied to his son, \'I feared it might belong to one of the jury asked. \'That I can\'t quite follow it as she could do to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, Alice could speak again. In a little irritated at the March Hare: she thought of herself, \'I don\'t know what it was: at first was moderate. But the insolence.</p><p>I do it again and again.\' \'You are old,\' said the Caterpillar; and it was the same when I was going to give the hedgehog a blow with its tongue hanging out of a tree. \'Did you say things are \"much of a candle is blown out, for she thought, and it said nothing. \'Perhaps it hasn\'t one,\' Alice ventured to taste it, and kept doubling itself up and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the March Hare. Alice sighed wearily. \'I think I must have been changed for Mabel! I\'ll try if I shall.</p><p>Hatter, it woke up again with a table set out under a tree in front of the way--\' \'THAT generally takes some time,\' interrupted the Hatter: \'let\'s all move one place on.\' He moved on as he spoke. \'UNimportant, of course, Alice could not remember ever having seen in her hands, and was surprised to see if she were looking over their slates; \'but it sounds uncommon nonsense.\' Alice said very politely, \'if I had it written down: but I grow up, I\'ll write one--but I\'m grown up now,\' she added.</p><p>Dormouse began in a game of play with a melancholy way, being quite unable to move. She soon got it out loud. \'Thinking again?\' the Duchess asked, with another dig of her hedgehog. The hedgehog was engaged in a low, weak voice. \'Now, I give you fair warning,\' shouted the Queen, and Alice thought this must be off, and Alice was silent. The Dormouse had closed its eyes were looking up into a cucumber-frame, or something of the same thing as a drawing of a tree in the sun. (IF you don\'t like.</p>',1,NULL,'default',NULL,'published','2025-06-28 20:17:06','2025-06-28 20:17:06'),(12,'Coming soon','<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"2026-06-29 03:17:06\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',NULL,'published','2025-06-28 20:17:06','2025-06-28 20:17:06');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(3,1),(2,2),(3,2),(1,3),(4,3),(1,4),(4,4),(2,5),(3,5),(1,6),(4,6),(1,7),(3,7),(1,8),(3,8),(2,9),(4,9),(2,10),(3,10),(1,11),(3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',2338,NULL,'2025-06-28 20:17:03','2025-06-28 20:17:03'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1083,NULL,'2025-06-28 20:17:03','2025-06-28 20:17:03'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',1697,NULL,'2025-06-28 20:17:03','2025-06-28 20:17:03'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',1340,NULL,'2025-06-28 20:17:03','2025-06-28 20:17:03'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',997,NULL,'2025-06-28 20:17:03','2025-06-28 20:17:03'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',2280,NULL,'2025-06-28 20:17:03','2025-06-28 20:17:03'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',1315,NULL,'2025-06-28 20:17:03','2025-06-28 20:17:03'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',280,NULL,'2025-06-28 20:17:03','2025-06-28 20:17:03'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',889,NULL,'2025-06-28 20:17:03','2025-06-28 20:17:03'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',1512,NULL,'2025-06-28 20:17:03','2025-06-28 20:17:03'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',156,NULL,'2025-06-28 20:17:03','2025-06-28 20:17:03');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notification_recipients`
--

DROP TABLE IF EXISTS `push_notification_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notification_recipients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `push_notification_id` bigint unsigned NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `clicked_at` timestamp NULL DEFAULT NULL,
  `fcm_response` json DEFAULT NULL,
  `error_message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pnr_notification_user_index` (`push_notification_id`,`user_type`,`user_id`),
  KEY `pnr_user_status_index` (`user_type`,`user_id`,`status`),
  KEY `pnr_user_read_index` (`user_type`,`user_id`,`read_at`),
  KEY `pnr_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notification_recipients`
--

LOCK TABLES `push_notification_recipients` WRITE;
/*!40000 ALTER TABLE `push_notification_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notification_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notifications`
--

DROP TABLE IF EXISTS `push_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `target_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_count` int NOT NULL DEFAULT '0',
  `failed_count` int NOT NULL DEFAULT '0',
  `delivered_count` int NOT NULL DEFAULT '0',
  `read_count` int NOT NULL DEFAULT '0',
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `push_notifications_type_created_at_index` (`type`,`created_at`),
  KEY `push_notifications_status_scheduled_at_index` (`status`,`scheduled_at`),
  KEY `push_notifications_created_by_index` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notifications`
--

LOCK TABLES `push_notifications` WRITE;
/*!40000 ALTER TABLE `push_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"translations.import\":true,\"translations.export\":true,\"property-translations.import\":true,\"property-translations.export\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.vendors.control\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"marketplace.messages.index\":true,\"marketplace.messages.edit\":true,\"marketplace.messages.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}','Admin users role',1,1,1,'2025-06-28 20:17:01','2025-06-28 20:17:01');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','dd2d45f2cf82337bf42e720d88096d60',NULL,'2025-06-28 20:17:11'),(2,'api_enabled','0',NULL,'2025-06-28 20:17:11'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"stripe-connect\",\"translation\"]',NULL,'2025-06-28 20:17:11'),(4,'analytics_dashboard_widgets','0','2025-06-28 20:15:57','2025-06-28 20:15:57'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2025-06-28 20:15:58','2025-06-28 20:15:58'),(6,'api_layer_api_key','',NULL,'2025-06-28 20:17:11'),(9,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2025-06-28 20:16:02','2025-06-28 20:16:02'),(10,'payment_cod_fee_type','fixed',NULL,'2025-06-28 20:17:11'),(11,'payment_bank_transfer_fee_type','fixed',NULL,'2025-06-28 20:17:11'),(12,'theme','martfury',NULL,'2025-06-28 20:17:11'),(13,'show_admin_bar','1',NULL,'2025-06-28 20:17:11'),(14,'language_hide_default','1',NULL,'2025-06-28 20:17:11'),(15,'language_switcher_display','dropdown',NULL,'2025-06-28 20:17:11'),(16,'language_display','all',NULL,'2025-06-28 20:17:11'),(17,'language_hide_languages','[]',NULL,'2025-06-28 20:17:11'),(18,'simple_slider_using_assets','0',NULL,NULL),(19,'admin_favicon','general/favicon.png',NULL,'2025-06-28 20:17:11'),(20,'admin_logo','general/logo-light.png',NULL,'2025-06-28 20:17:11'),(21,'payment_cod_status','1',NULL,'2025-06-28 20:17:11'),(22,'payment_bank_transfer_status','1',NULL,'2025-06-28 20:17:11'),(23,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2025-06-28 20:17:11'),(24,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2025-06-28 20:17:11'),(25,'payment_stripe_payment_type','stripe_checkout',NULL,'2025-06-28 20:17:11'),(26,'plugins_ecommerce_customer_new_order_status','0',NULL,'2025-06-28 20:17:11'),(27,'plugins_ecommerce_admin_new_order_status','0',NULL,'2025-06-28 20:17:11'),(28,'ecommerce_is_enabled_support_digital_products','1',NULL,'2025-06-28 20:17:11'),(29,'ecommerce_enable_license_codes_for_digital_products','1',NULL,'2025-06-28 20:17:11'),(30,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2025-06-28 20:17:11'),(31,'ecommerce_product_sku_format','SF-2443-%s%s%s%s',NULL,'2025-06-28 20:17:11'),(32,'ecommerce_store_order_prefix','SF',NULL,'2025-06-28 20:17:11'),(33,'ecommerce_enable_product_specification','1',NULL,'2025-06-28 20:17:11'),(34,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2025-06-28 20:17:11'),(35,'payment_cod_logo','payments/cod.png',NULL,'2025-06-28 20:17:11'),(36,'payment_bank_transfer_logo','payments/bank-transfer.png',NULL,'2025-06-28 20:17:11'),(37,'payment_stripe_logo','payments/stripe.webp',NULL,'2025-06-28 20:17:11'),(38,'payment_paypal_logo','payments/paypal.png',NULL,'2025-06-28 20:17:11'),(39,'payment_mollie_logo','payments/mollie.png',NULL,'2025-06-28 20:17:11'),(40,'payment_paystack_logo','payments/paystack.png',NULL,'2025-06-28 20:17:11'),(41,'payment_razorpay_logo','payments/razorpay.png',NULL,'2025-06-28 20:17:11'),(42,'payment_sslcommerz_logo','payments/sslcommerz.png',NULL,'2025-06-28 20:17:11'),(43,'permalink-botble-blog-models-post','blog',NULL,'2025-06-28 20:17:11'),(44,'permalink-botble-blog-models-category','blog',NULL,'2025-06-28 20:17:11'),(45,'ecommerce_store_name','Martfury',NULL,NULL),(46,'ecommerce_store_phone','1800979769',NULL,NULL),(47,'ecommerce_store_address','502 New Street',NULL,NULL),(48,'ecommerce_store_state','Brighton VIC',NULL,NULL),(49,'ecommerce_store_city','Brighton VIC',NULL,NULL),(50,'ecommerce_store_country','AU',NULL,NULL),(51,'theme-martfury-site_title','MartFury - Laravel Ecommerce system',NULL,NULL),(52,'theme-martfury-seo_description','MartFury is a clean & modern Laravel Ecommerce System for multipurpose online stores. With design clean and trendy, MartFury will make your online store look more impressive and attractive to viewers.',NULL,NULL),(53,'theme-martfury-copyright','© %Y MartFury. All Rights Reserved.',NULL,NULL),(54,'theme-martfury-favicon','general/favicon.png',NULL,NULL),(55,'theme-martfury-logo','general/logo.png',NULL,NULL),(56,'theme-martfury-welcome_message','Welcome to MartFury Online Shopping Store!',NULL,NULL),(57,'theme-martfury-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(58,'theme-martfury-hotline','1800 97 97 69',NULL,NULL),(59,'theme-martfury-email','contact@martfury.co',NULL,NULL),(60,'theme-martfury-newsletter_image','general/newsletter.jpg',NULL,NULL),(61,'theme-martfury-homepage_id','1',NULL,NULL),(62,'theme-martfury-blog_page_id','6',NULL,NULL),(63,'theme-martfury-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(64,'theme-martfury-cookie_consent_learn_more_url','/cookie-policy',NULL,NULL),(65,'theme-martfury-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(66,'theme-martfury-number_of_products_per_page','42',NULL,NULL),(67,'theme-martfury-product_feature_1_title','Shipping worldwide',NULL,NULL),(68,'theme-martfury-product_feature_1_icon','icon-network',NULL,NULL),(69,'theme-martfury-product_feature_2_title','Free 7-day return if eligible, so easy',NULL,NULL),(70,'theme-martfury-product_feature_2_icon','icon-3d-rotate',NULL,NULL),(71,'theme-martfury-product_feature_3_title','Supplier give bills for this product.',NULL,NULL),(72,'theme-martfury-product_feature_3_icon','icon-receipt',NULL,NULL),(73,'theme-martfury-product_feature_4_title','Pay online or when receiving goods',NULL,NULL),(74,'theme-martfury-product_feature_4_icon','icon-credit-card',NULL,NULL),(75,'theme-martfury-contact_info_box_1_title','Contact Directly',NULL,NULL),(76,'theme-martfury-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(77,'theme-martfury-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(78,'theme-martfury-contact_info_box_2_title','Headquarters',NULL,NULL),(79,'theme-martfury-contact_info_box_2_subtitle','17 Queen St, South bank, Melbourne 10560, Australia',NULL,NULL),(80,'theme-martfury-contact_info_box_2_details','',NULL,NULL),(81,'theme-martfury-contact_info_box_3_title','Work With Us',NULL,NULL),(82,'theme-martfury-contact_info_box_3_subtitle','Send your CV to our email:',NULL,NULL),(83,'theme-martfury-contact_info_box_3_details','career@martfury.com',NULL,NULL),(84,'theme-martfury-contact_info_box_4_title','Customer Service',NULL,NULL),(85,'theme-martfury-contact_info_box_4_subtitle','customercare@martfury.com',NULL,NULL),(86,'theme-martfury-contact_info_box_4_details','(800) 843-2446',NULL,NULL),(87,'theme-martfury-contact_info_box_5_title','Media Relations',NULL,NULL),(88,'theme-martfury-contact_info_box_5_subtitle','media@martfury.com',NULL,NULL),(89,'theme-martfury-contact_info_box_5_details','(801) 947-3564',NULL,NULL),(90,'theme-martfury-contact_info_box_6_title','Vendor Support',NULL,NULL),(91,'theme-martfury-contact_info_box_6_subtitle','vendorsupport@martfury.com',NULL,NULL),(92,'theme-martfury-contact_info_box_6_details','(801) 947-3100',NULL,NULL),(93,'theme-martfury-number_of_cross_sale_product','7',NULL,NULL),(94,'theme-martfury-logo_in_the_checkout_page','general/logo-dark.png',NULL,NULL),(95,'theme-martfury-logo_in_invoices','general/logo-dark.png',NULL,NULL),(96,'theme-martfury-logo_vendor_dashboard','general/logo-dark.png',NULL,NULL),(97,'theme-martfury-primary_font','Work Sans',NULL,NULL),(98,'theme-martfury-payment_methods','[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]',NULL,NULL),(99,'theme-martfury-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL),(100,'theme-martfury-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,NULL),(101,'theme-martfury-lazy_load_images','1',NULL,NULL),(102,'theme-martfury-lazy_load_placeholder_image','general/placeholder.png',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2025-06-28 20:17:06','2025-06-28 20:17:06'),(2,1,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2025-06-28 20:17:06','2025-06-28 20:17:06'),(3,1,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2025-06-28 20:17:06','2025-06-28 20:17:06');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2025-06-28 20:17:06','2025-06-28 20:17:06');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2025-06-28 20:16:04','2025-06-28 20:16:04'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2025-06-28 20:16:04','2025-06-28 20:16:04'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2025-06-28 20:16:04','2025-06-28 20:16:04'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2025-06-28 20:16:04','2025-06-28 20:16:04'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2025-06-28 20:16:04','2025-06-28 20:16:04'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2025-06-28 20:16:04','2025-06-28 20:16:04'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2025-06-28 20:16:04','2025-06-28 20:16:04'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(10,'consumer-electronic',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(11,'home-audio-theaters',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(12,'tv-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(13,'camera-photos-videos',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(14,'cellphones-accessories',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(15,'headphones',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(16,'videos-games',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(17,'wireless-speakers',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(18,'office-electronic',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(19,'accessories-parts',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(20,'digital-cables',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(21,'audio-video-cables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(22,'batteries',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(23,'clothing',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(24,'computers',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(25,'computer-technologies',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(26,'computer-tablets',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(27,'laptop',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(28,'monitors',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(29,'computer-components',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(30,'networking',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(31,'drive-storages',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(32,'gaming-laptop',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(33,'security-protection',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(34,'accessories',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(35,'home-kitchen',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(36,'health-beauty',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(37,'jewelry-watch',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(38,'technology-toys',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(39,'phones',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(40,'babies-moms',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(41,'sport-outdoor',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(42,'books-office',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(43,'cars-motorcycles',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(44,'home-improvements',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-28 20:16:06','2025-06-28 20:16:06'),(45,'smart-home-speaker',1,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:48','2025-06-28 20:16:48'),(46,'headphone-ultra-bass',2,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:16:49'),(47,'boxed-bluetooth-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:16:49'),(48,'camera-samsung-ss-24-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:17:17'),(49,'macbook-pro-2015',5,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:16:49'),(50,'apple-watch-serial-7',6,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:16:49'),(51,'macbook-pro-13-inch',7,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:16:49'),(52,'apple-keyboard-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:17:17'),(53,'macsafe-80w',9,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:16:49'),(54,'hand-playstation',10,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:16:49'),(55,'apple-airpods-serial-3',11,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:16:49'),(56,'cool-smart-watches-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:17:17'),(57,'black-smart-watches',13,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:16:49'),(58,'leather-watch-in-black',14,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:16:49'),(59,'macbook-pro-2015-13-inch',15,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:16:49'),(60,'historic-alarm-clock-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:17:17'),(61,'black-glasses',17,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:16:49'),(62,'phillips-mouse',18,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:16:49'),(63,'gaming-keyboard',19,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:16:49'),(64,'wireless-keyboard-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:17:17'),(65,'black-smart-watches',21,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:16:49'),(66,'smart-home-speaker',22,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:16:49'),(67,'headphone-ultra-bass',23,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:16:49'),(68,'boxed-bluetooth-headphone-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:17:17'),(69,'camera-samsung-ss-24',25,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:16:49'),(70,'leather-watch-in-black',26,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:16:49'),(71,'apple-iphone-13-plus',27,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:16:49'),(72,'macbook-pro-2015-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:17:17'),(73,'apple-watch-serial-7',29,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:16:49'),(74,'macbook-pro-13-inch',30,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:16:49'),(75,'apple-keyboard',31,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:16:49'),(76,'macsafe-80w-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:49','2025-06-28 20:17:17'),(77,'hand-playstation',33,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:50','2025-06-28 20:16:50'),(78,'apple-airpods-serial-3',34,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:50','2025-06-28 20:16:50'),(79,'cool-smart-watches',35,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:50','2025-06-28 20:16:50'),(80,'black-smart-watches-digital',36,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:50','2025-06-28 20:17:17'),(81,'leather-watch-in-black',37,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:50','2025-06-28 20:16:50'),(82,'macbook-pro-2015-13-inch',38,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:50','2025-06-28 20:16:50'),(83,'sony-wh-1000xm4-wireless-headphones',39,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:50','2025-06-28 20:16:50'),(84,'samsung-galaxy-s22-ultra-digital',40,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:50','2025-06-28 20:17:17'),(85,'dell-xps-15-laptop',41,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:50','2025-06-28 20:16:50'),(86,'ipad-pro-129-inch',42,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:50','2025-06-28 20:16:50'),(87,'bose-quietcomfort-earbuds',43,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:50','2025-06-28 20:16:50'),(88,'lg-oled-c1-series-tv-digital',44,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:50','2025-06-28 20:17:17'),(89,'dyson-v11-vacuum-cleaner',45,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:50','2025-06-28 20:16:50'),(90,'nintendo-switch-oled-model',46,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:50','2025-06-28 20:16:50'),(91,'canon-eos-r5-camera',47,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:50','2025-06-28 20:16:50'),(92,'fitbit-sense-smartwatch-digital',48,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:50','2025-06-28 20:17:17'),(93,'sonos-beam-soundbar',49,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:50','2025-06-28 20:16:50'),(94,'logitech-mx-master-3-mouse',50,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:50','2025-06-28 20:16:50'),(95,'kindle-paperwhite-e-reader',51,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:50','2025-06-28 20:16:50'),(96,'gopro-hero10-black-digital',52,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:50','2025-06-28 20:17:17'),(97,'anker-powercore-power-bank',53,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:50','2025-06-28 20:16:50'),(98,'product-54',54,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:16:50','2025-06-28 20:16:50'),(99,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-06-28 20:17:00','2025-06-28 20:17:00'),(100,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-06-28 20:17:00','2025-06-28 20:17:00'),(101,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-06-28 20:17:00','2025-06-28 20:17:00'),(102,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-06-28 20:17:00','2025-06-28 20:17:00'),(103,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-06-28 20:17:00','2025-06-28 20:17:00'),(104,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-06-28 20:17:00','2025-06-28 20:17:00'),(105,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2025-06-28 20:17:03','2025-06-28 20:17:09'),(106,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2025-06-28 20:17:03','2025-06-28 20:17:09'),(107,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2025-06-28 20:17:03','2025-06-28 20:17:09'),(108,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2025-06-28 20:17:03','2025-06-28 20:17:09'),(109,'general',1,'Botble\\Blog\\Models\\Tag','tag','2025-06-28 20:17:03','2025-06-28 20:17:03'),(110,'design',2,'Botble\\Blog\\Models\\Tag','tag','2025-06-28 20:17:03','2025-06-28 20:17:03'),(111,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2025-06-28 20:17:03','2025-06-28 20:17:03'),(112,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2025-06-28 20:17:03','2025-06-28 20:17:03'),(113,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2025-06-28 20:17:03','2025-06-28 20:17:03'),(114,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2025-06-28 20:17:03','2025-06-28 20:17:09'),(115,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2025-06-28 20:17:03','2025-06-28 20:17:09'),(116,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2025-06-28 20:17:03','2025-06-28 20:17:09'),(117,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2025-06-28 20:17:03','2025-06-28 20:17:09'),(118,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2025-06-28 20:17:03','2025-06-28 20:17:09'),(119,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2025-06-28 20:17:03','2025-06-28 20:17:09'),(120,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2025-06-28 20:17:03','2025-06-28 20:17:09'),(121,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2025-06-28 20:17:03','2025-06-28 20:17:09'),(122,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2025-06-28 20:17:03','2025-06-28 20:17:09'),(123,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2025-06-28 20:17:03','2025-06-28 20:17:09'),(124,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2025-06-28 20:17:03','2025-06-28 20:17:09'),(125,'home',1,'Botble\\Page\\Models\\Page','','2025-06-28 20:17:06','2025-06-28 20:17:06'),(126,'about-us',2,'Botble\\Page\\Models\\Page','','2025-06-28 20:17:06','2025-06-28 20:17:06'),(127,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2025-06-28 20:17:06','2025-06-28 20:17:06'),(128,'terms-conditions',4,'Botble\\Page\\Models\\Page','','2025-06-28 20:17:06','2025-06-28 20:17:06'),(129,'refund-policy',5,'Botble\\Page\\Models\\Page','','2025-06-28 20:17:06','2025-06-28 20:17:06'),(130,'blog',6,'Botble\\Page\\Models\\Page','','2025-06-28 20:17:06','2025-06-28 20:17:06'),(131,'faqs',7,'Botble\\Page\\Models\\Page','','2025-06-28 20:17:06','2025-06-28 20:17:06'),(132,'contact',8,'Botble\\Page\\Models\\Page','','2025-06-28 20:17:06','2025-06-28 20:17:06'),(133,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2025-06-28 20:17:06','2025-06-28 20:17:06'),(134,'affiliate',10,'Botble\\Page\\Models\\Page','','2025-06-28 20:17:06','2025-06-28 20:17:06'),(135,'career',11,'Botble\\Page\\Models\\Page','','2025-06-28 20:17:06','2025-06-28 20:17:06'),(136,'coming-soon',12,'Botble\\Page\\Models\\Page','','2025-06-28 20:17:06','2025-06-28 20:17:06'),(137,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2025-06-28 20:17:16','2025-06-28 20:17:16'),(138,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2025-06-28 20:17:16','2025-06-28 20:17:16'),(139,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2025-06-28 20:17:16','2025-06-28 20:17:16'),(140,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2025-06-28 20:17:16','2025-06-28 20:17:16'),(141,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2025-06-28 20:17:16','2025-06-28 20:17:16'),(142,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2025-06-28 20:17:16','2025-06-28 20:17:16'),(143,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2025-06-28 20:17:16','2025-06-28 20:17:16'),(144,'old-el-paso',8,'Botble\\Marketplace\\Models\\Store','stores','2025-06-28 20:17:16','2025-06-28 20:17:16'),(145,'tyson',9,'Botble\\Marketplace\\Models\\Store','stores','2025-06-28 20:17:16','2025-06-28 20:17:16'),(146,'headphone-ultra-bass',55,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(147,'camera-samsung-ss-24-digital',56,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(148,'camera-samsung-ss-24-digital',57,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(149,'macbook-pro-2015',58,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(150,'macbook-pro-2015',59,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(151,'apple-watch-serial-7',60,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(152,'apple-keyboard-digital',61,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(153,'apple-keyboard-digital',62,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(154,'macsafe-80w',63,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(155,'macsafe-80w',64,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(156,'hand-playstation',65,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(157,'cool-smart-watches-digital',66,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(158,'cool-smart-watches-digital',67,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(159,'cool-smart-watches-digital',68,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(160,'cool-smart-watches-digital',69,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(161,'historic-alarm-clock-digital',70,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(162,'historic-alarm-clock-digital',71,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(163,'phillips-mouse',72,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(164,'phillips-mouse',73,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(165,'phillips-mouse',74,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(166,'phillips-mouse',75,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(167,'gaming-keyboard',76,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(168,'gaming-keyboard',77,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(169,'gaming-keyboard',78,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(170,'smart-home-speaker',79,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(171,'smart-home-speaker',80,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(172,'smart-home-speaker',81,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(173,'smart-home-speaker',82,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(174,'headphone-ultra-bass',83,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(175,'boxed-bluetooth-headphone-digital',84,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(176,'boxed-bluetooth-headphone-digital',85,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(177,'boxed-bluetooth-headphone-digital',86,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:17','2025-06-28 20:17:17'),(178,'camera-samsung-ss-24',87,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(179,'camera-samsung-ss-24',88,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(180,'macbook-pro-2015-digital',89,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(181,'macbook-pro-2015-digital',90,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(182,'macbook-pro-2015-digital',91,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(183,'macsafe-80w-digital',92,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(184,'hand-playstation',93,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(185,'hand-playstation',94,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(186,'black-smart-watches-digital',95,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(187,'black-smart-watches-digital',96,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(188,'leather-watch-in-black',97,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(189,'leather-watch-in-black',98,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(190,'sony-wh-1000xm4-wireless-headphones',99,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(191,'dell-xps-15-laptop',100,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(192,'dell-xps-15-laptop',101,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(193,'dell-xps-15-laptop',102,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(194,'dell-xps-15-laptop',103,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(195,'ipad-pro-129-inch',104,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(196,'bose-quietcomfort-earbuds',105,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(197,'bose-quietcomfort-earbuds',106,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(198,'lg-oled-c1-series-tv-digital',107,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(199,'dyson-v11-vacuum-cleaner',108,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(200,'dyson-v11-vacuum-cleaner',109,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(201,'dyson-v11-vacuum-cleaner',110,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(202,'nintendo-switch-oled-model',111,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(203,'canon-eos-r5-camera',112,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(204,'canon-eos-r5-camera',113,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(205,'canon-eos-r5-camera',114,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(206,'fitbit-sense-smartwatch-digital',115,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(207,'fitbit-sense-smartwatch-digital',116,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(208,'logitech-mx-master-3-mouse',117,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(209,'logitech-mx-master-3-mouse',118,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18'),(210,'logitech-mx-master-3-mouse',119,'Botble\\Ecommerce\\Models\\Product','products','2025-06-28 20:17:18','2025-06-28 20:17:18');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_logins`
--

DROP TABLE IF EXISTS `social_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_logins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `refresh_token` text COLLATE utf8mb4_unicode_ci,
  `token_expires_at` timestamp NULL DEFAULT NULL,
  `provider_data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_logins_provider_provider_id_unique` (`provider`,`provider_id`),
  KEY `social_logins_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `social_logins_user_id_user_type_index` (`user_id`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_logins`
--

LOCK TABLES `social_logins` WRITE;
/*!40000 ALTER TABLE `social_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-06-28 20:17:03','2025-06-28 20:17:03'),(2,'Design',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-06-28 20:17:03','2025-06-28 20:17:03'),(3,'Fashion',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-06-28 20:17:03','2025-06-28 20:17:03'),(4,'Branding',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-06-28 20:17:03','2025-06-28 20:17:03'),(5,'Modern',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-06-28 20:17:03','2025-06-28 20:17:03');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'alvina.quigley@schulist.com',NULL,'$2y$12$4egkfwbuDGoZ4lRJZ1EcAe7FCbzwU5d2Et45DhnILt2DX5XVlXZz.',NULL,'2025-06-28 20:17:01','2025-06-28 20:17:01','Cyril','Armstrong','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','martfury',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2025-06-28 20:17:11','2025-06-28 20:17:11'),(2,'CustomMenuWidget','footer_sidebar','martfury',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2025-06-28 20:17:11','2025-06-28 20:17:11'),(3,'CustomMenuWidget','footer_sidebar','martfury',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2025-06-28 20:17:11','2025-06-28 20:17:11'),(4,'BlogSearchWidget','primary_sidebar','martfury',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2025-06-28 20:17:11','2025-06-28 20:17:11'),(5,'BlogCategoriesWidget','primary_sidebar','martfury',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2025-06-28 20:17:11','2025-06-28 20:17:11'),(6,'RecentPostsWidget','primary_sidebar','martfury',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2025-06-28 20:17:11','2025-06-28 20:17:11'),(7,'TagsWidget','primary_sidebar','martfury',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2025-06-28 20:17:11','2025-06-28 20:17:11'),(8,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2025-06-28 20:17:11','2025-06-28 20:17:11'),(9,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2025-06-28 20:17:11','2025-06-28 20:17:11'),(10,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2025-06-28 20:17:11','2025-06-28 20:17:11'),(11,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2025-06-28 20:17:11','2025-06-28 20:17:11'),(12,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2025-06-28 20:17:11','2025-06-28 20:17:11');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-29 10:17:20
