-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: aplicacioncm
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accountants`
--
CREATE DATABASE IF NOT EXISTS AplicacionCM;

USE AplicacionCM;

DROP TABLE IF EXISTS `accountants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accountants` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accountants_tenant_id_foreign` (`tenant_id`),
  KEY `accountants_user_id_foreign` (`user_id`),
  CONSTRAINT `accountants_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `accountants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountants`
--

LOCK TABLES `accountants` WRITE;
/*!40000 ALTER TABLE `accountants` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_tenant_id_foreign` (`tenant_id`),
  KEY `accounts_name_index` (`name`),
  CONSTRAINT `accounts_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int DEFAULT NULL,
  `owner_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addresses_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `addresses_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_testimonials`
--

DROP TABLE IF EXISTS `admin_testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_testimonials`
--

LOCK TABLES `admin_testimonials` WRITE;
/*!40000 ALTER TABLE `admin_testimonials` DISABLE KEYS */;
INSERT INTO `admin_testimonials` VALUES (1,'Jasse Lynn','Founder of Sassaht','Eeque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,\n                                            adipisci velit, sed quia non numquam eius modi tempora incidunt contact\n                                            me.','2025-08-13 03:21:45','2025-08-13 03:21:45'),(2,'Thomas James','CEO of Sassaht','Reasonable porro quisquam est, qui dolorem ipsum quia dolor sit amet,\n                                            consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt\n                                            looks.','2025-08-13 03:21:45','2025-08-13 03:21:45'),(3,'Ceathy White','Founder of Sassaht','On the other hand, we denounce with righteous indignation and dislike men who\n                                            are so beguiled and demoralized by the charms of pleasure of the momen\n                                            words.','2025-08-13 03:21:45','2025-08-13 03:21:45');
/*!40000 ALTER TABLE `admin_testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advanced_payments`
--

DROP TABLE IF EXISTS `advanced_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advanced_payments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` bigint unsigned NOT NULL,
  `receipt_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `advanced_payments_tenant_id_foreign` (`tenant_id`),
  KEY `advanced_payments_patient_id_foreign` (`patient_id`),
  KEY `advanced_payments_amount_index` (`amount`),
  CONSTRAINT `advanced_payments_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `users` (`id`),
  CONSTRAINT `advanced_payments_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advanced_payments`
--

LOCK TABLES `advanced_payments` WRITE;
/*!40000 ALTER TABLE `advanced_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `advanced_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ambulance_calls`
--

DROP TABLE IF EXISTS `ambulance_calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ambulance_calls` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int unsigned NOT NULL,
  `ambulance_id` int unsigned NOT NULL,
  `driver_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `amount` double(8,2) NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ambulance_calls_tenant_id_foreign` (`tenant_id`),
  KEY `ambulance_calls_patient_id_foreign` (`patient_id`),
  KEY `ambulance_calls_ambulance_id_foreign` (`ambulance_id`),
  KEY `ambulance_calls_date_index` (`date`),
  CONSTRAINT `ambulance_calls_ambulance_id_foreign` FOREIGN KEY (`ambulance_id`) REFERENCES `ambulances` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ambulance_calls_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ambulance_calls_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ambulance_calls`
--

LOCK TABLES `ambulance_calls` WRITE;
/*!40000 ALTER TABLE `ambulance_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `ambulance_calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ambulances`
--

DROP TABLE IF EXISTS `ambulances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ambulances` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `vehicle_number` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_model` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_made` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_license` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `is_available` tinyint(1) NOT NULL DEFAULT '1',
  `vehicle_type` int NOT NULL DEFAULT '1',
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ambulances_tenant_id_foreign` (`tenant_id`),
  KEY `ambulances_vehicle_number_index` (`vehicle_number`),
  CONSTRAINT `ambulances_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ambulances`
--

LOCK TABLES `ambulances` WRITE;
/*!40000 ALTER TABLE `ambulances` DISABLE KEYS */;
/*!40000 ALTER TABLE `ambulances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_transactions`
--

DROP TABLE IF EXISTS `appointment_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `appointment_id` bigint unsigned NOT NULL,
  `transaction_type` int NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `appointment_transactions_tenant_id_foreign` (`tenant_id`),
  KEY `appointment_transactions_appointment_id_foreign` (`appointment_id`),
  CONSTRAINT `appointment_transactions_appointment_id_foreign` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `appointment_transactions_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_transactions`
--

LOCK TABLES `appointment_transactions` WRITE;
/*!40000 ALTER TABLE `appointment_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int unsigned NOT NULL,
  `doctor_id` bigint unsigned NOT NULL,
  `department_id` bigint unsigned NOT NULL,
  `opd_date` datetime NOT NULL,
  `problem` text COLLATE utf8mb4_unicode_ci,
  `is_completed` tinyint(1) NOT NULL DEFAULT '0',
  `payment_status` tinyint(1) NOT NULL DEFAULT '0',
  `payment_type` int DEFAULT NULL,
  `custom_field` longtext COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `appointments_tenant_id_foreign` (`tenant_id`),
  KEY `appointments_doctor_id_foreign` (`doctor_id`),
  KEY `appointments_opd_date_index` (`opd_date`),
  KEY `appointments_patient_id_foreign` (`patient_id`),
  KEY `appointments_department_id_foreign` (`department_id`),
  CONSTRAINT `appointments_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `doctor_departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `appointments_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `appointments_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `appointments_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bed_assigns`
--

DROP TABLE IF EXISTS `bed_assigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bed_assigns` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `bed_id` int unsigned NOT NULL,
  `ipd_patient_department_id` int unsigned DEFAULT NULL,
  `patient_id` int unsigned NOT NULL,
  `case_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assign_date` datetime NOT NULL,
  `discharge_date` datetime DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bed_assigns_tenant_id_foreign` (`tenant_id`),
  KEY `bed_assigns_bed_id_foreign` (`bed_id`),
  KEY `bed_assigns_patient_id_foreign` (`patient_id`),
  KEY `bed_assigns_created_at_assign_date_index` (`created_at`,`assign_date`),
  KEY `bed_assigns_ipd_patient_department_id_foreign` (`ipd_patient_department_id`),
  CONSTRAINT `bed_assigns_bed_id_foreign` FOREIGN KEY (`bed_id`) REFERENCES `beds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bed_assigns_ipd_patient_department_id_foreign` FOREIGN KEY (`ipd_patient_department_id`) REFERENCES `ipd_patient_departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bed_assigns_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bed_assigns_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bed_assigns`
--

LOCK TABLES `bed_assigns` WRITE;
/*!40000 ALTER TABLE `bed_assigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `bed_assigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bed_types`
--

DROP TABLE IF EXISTS `bed_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bed_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bed_types_tenant_id_foreign` (`tenant_id`),
  KEY `bed_types_title_index` (`title`),
  CONSTRAINT `bed_types_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bed_types`
--

LOCK TABLES `bed_types` WRITE;
/*!40000 ALTER TABLE `bed_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `bed_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beds`
--

DROP TABLE IF EXISTS `beds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beds` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `bed_type` int unsigned NOT NULL,
  `bed_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `charge` double NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT '1',
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `beds_tenant_id_foreign` (`tenant_id`),
  KEY `beds_bed_type_foreign` (`bed_type`),
  KEY `beds_is_available_index` (`is_available`),
  CONSTRAINT `beds_bed_type_foreign` FOREIGN KEY (`bed_type`) REFERENCES `bed_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `beds_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beds`
--

LOCK TABLES `beds` WRITE;
/*!40000 ALTER TABLE `beds` DISABLE KEYS */;
/*!40000 ALTER TABLE `beds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_items`
--

DROP TABLE IF EXISTS `bill_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_id` int unsigned NOT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(16,2) NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bill_items_bill_id_foreign` (`bill_id`),
  CONSTRAINT `bill_items_bill_id_foreign` FOREIGN KEY (`bill_id`) REFERENCES `bills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_items`
--

LOCK TABLES `bill_items` WRITE;
/*!40000 ALTER TABLE `bill_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_transactions`
--

DROP TABLE IF EXISTS `bill_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` int NOT NULL COMMENT '1 = Stripe, 2 = Manual',
  `amount` decimal(16,2) NOT NULL,
  `bill_id` int unsigned NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_manual_payment` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bill_transactions_bill_id_foreign` (`bill_id`),
  KEY `bill_transactions_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `bill_transactions_bill_id_foreign` FOREIGN KEY (`bill_id`) REFERENCES `bills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bill_transactions_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_transactions`
--

LOCK TABLES `bill_transactions` WRITE;
/*!40000 ALTER TABLE `bill_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bills` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `bill_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_id` int unsigned NOT NULL,
  `bill_date` datetime NOT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `patient_admission_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bills_tenant_id_foreign` (`tenant_id`),
  KEY `bills_patient_id_foreign` (`patient_id`),
  KEY `bills_bill_date_index` (`bill_date`),
  CONSTRAINT `bills_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bills_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `birth_reports`
--

DROP TABLE IF EXISTS `birth_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `birth_reports` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int unsigned NOT NULL,
  `case_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_id` bigint unsigned NOT NULL,
  `date` datetime NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `birth_reports_tenant_id_foreign` (`tenant_id`),
  KEY `birth_reports_patient_id_foreign` (`patient_id`),
  KEY `birth_reports_doctor_id_foreign` (`doctor_id`),
  KEY `birth_reports_date_index` (`date`),
  CONSTRAINT `birth_reports_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `birth_reports_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `birth_reports_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birth_reports`
--

LOCK TABLES `birth_reports` WRITE;
/*!40000 ALTER TABLE `birth_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `birth_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood_banks`
--

DROP TABLE IF EXISTS `blood_banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood_banks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `blood_group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remained_bags` bigint NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blood_banks_tenant_id_foreign` (`tenant_id`),
  KEY `blood_banks_remained_bags_index` (`remained_bags`),
  CONSTRAINT `blood_banks_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_banks`
--

LOCK TABLES `blood_banks` WRITE;
/*!40000 ALTER TABLE `blood_banks` DISABLE KEYS */;
/*!40000 ALTER TABLE `blood_banks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood_donations`
--

DROP TABLE IF EXISTS `blood_donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood_donations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `blood_donor_id` int unsigned NOT NULL,
  `bags` int NOT NULL DEFAULT '1',
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blood_donations_tenant_id_foreign` (`tenant_id`),
  KEY `blood_donations_blood_donor_id_foreign` (`blood_donor_id`),
  CONSTRAINT `blood_donations_blood_donor_id_foreign` FOREIGN KEY (`blood_donor_id`) REFERENCES `blood_donors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `blood_donations_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_donations`
--

LOCK TABLES `blood_donations` WRITE;
/*!40000 ALTER TABLE `blood_donations` DISABLE KEYS */;
/*!40000 ALTER TABLE `blood_donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood_donors`
--

DROP TABLE IF EXISTS `blood_donors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood_donors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `gender` int NOT NULL,
  `blood_group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_donate_date` datetime NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blood_donors_tenant_id_foreign` (`tenant_id`),
  KEY `blood_donors_created_at_last_donate_date_index` (`created_at`,`last_donate_date`),
  CONSTRAINT `blood_donors_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_donors`
--

LOCK TABLES `blood_donors` WRITE;
/*!40000 ALTER TABLE `blood_donors` DISABLE KEYS */;
/*!40000 ALTER TABLE `blood_donors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood_issues`
--

DROP TABLE IF EXISTS `blood_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood_issues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `issue_date` datetime NOT NULL,
  `doctor_id` bigint unsigned NOT NULL,
  `donor_id` int unsigned NOT NULL,
  `patient_id` int unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blood_issues_tenant_id_foreign` (`tenant_id`),
  KEY `blood_issues_doctor_id_foreign` (`doctor_id`),
  KEY `blood_issues_donor_id_foreign` (`donor_id`),
  KEY `blood_issues_patient_id_foreign` (`patient_id`),
  CONSTRAINT `blood_issues_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `blood_issues_donor_id_foreign` FOREIGN KEY (`donor_id`) REFERENCES `blood_donors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `blood_issues_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `blood_issues_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_issues`
--

LOCK TABLES `blood_issues` WRITE;
/*!40000 ALTER TABLE `blood_issues` DISABLE KEYS */;
/*!40000 ALTER TABLE `blood_issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `brands_tenant_id_foreign` (`tenant_id`),
  KEY `brands_name_index` (`name`),
  CONSTRAINT `brands_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `call_logs`
--

DROP TABLE IF EXISTS `call_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `call_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `follow_up_date` date DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `call_type` int NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `call_logs_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `call_logs_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_logs`
--

LOCK TABLES `call_logs` WRITE;
/*!40000 ALTER TABLE `call_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `call_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `case_handlers`
--

DROP TABLE IF EXISTS `case_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `case_handlers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `case_handlers_tenant_id_foreign` (`tenant_id`),
  KEY `case_handlers_user_id_foreign` (`user_id`),
  CONSTRAINT `case_handlers_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `case_handlers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case_handlers`
--

LOCK TABLES `case_handlers` WRITE;
/*!40000 ALTER TABLE `case_handlers` DISABLE KEYS */;
/*!40000 ALTER TABLE `case_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_tenant_id_foreign` (`tenant_id`),
  KEY `categories_name_index` (`name`),
  CONSTRAINT `categories_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charge_categories`
--

DROP TABLE IF EXISTS `charge_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `charge_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `charge_type` int NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `charge_categories_tenant_id_foreign` (`tenant_id`),
  KEY `charge_categories_name_index` (`name`),
  CONSTRAINT `charge_categories_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charge_categories`
--

LOCK TABLES `charge_categories` WRITE;
/*!40000 ALTER TABLE `charge_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `charge_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charges`
--

DROP TABLE IF EXISTS `charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `charges` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `charge_type` int NOT NULL,
  `charge_category_id` int unsigned NOT NULL,
  `code` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `standard_charge` double NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `charges_tenant_id_foreign` (`tenant_id`),
  KEY `charges_charge_category_id_foreign` (`charge_category_id`),
  KEY `charges_code_index` (`code`),
  CONSTRAINT `charges_charge_category_id_foreign` FOREIGN KEY (`charge_category_id`) REFERENCES `charge_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `charges_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charges`
--

LOCK TABLES `charges` WRITE;
/*!40000 ALTER TABLE `charges` DISABLE KEYS */;
/*!40000 ALTER TABLE `charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency_settings`
--

DROP TABLE IF EXISTS `currency_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `currency_settings_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `currency_settings_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_settings`
--

LOCK TABLES `currency_settings` WRITE;
/*!40000 ALTER TABLE `currency_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `currency_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` tinyint(1) NOT NULL,
  `values` text COLLATE utf8mb4_unicode_ci,
  `grid` int NOT NULL DEFAULT '12',
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `custom_fields_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `custom_fields_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `death_reports`
--

DROP TABLE IF EXISTS `death_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `death_reports` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int unsigned NOT NULL,
  `case_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_id` bigint unsigned NOT NULL,
  `date` datetime NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `death_reports_tenant_id_foreign` (`tenant_id`),
  KEY `death_reports_patient_id_foreign` (`patient_id`),
  KEY `death_reports_doctor_id_foreign` (`doctor_id`),
  KEY `death_reports_date_index` (`date`),
  CONSTRAINT `death_reports_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `death_reports_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `death_reports_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `death_reports`
--

LOCK TABLES `death_reports` WRITE;
/*!40000 ALTER TABLE `death_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `death_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Admin',1,'web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(2,'Doctor',1,'web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(3,'Patient',1,'web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(4,'Nurse',1,'web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(5,'Receptionist',1,'web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(6,'Pharmacist',1,'web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(7,'Accountant',1,'web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(8,'Case Manager',1,'web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(9,'Lab Technician',1,'web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(10,'Super Admin',1,'web','2025-08-13 03:21:44','2025-08-13 03:21:44');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnosis_categories`
--

DROP TABLE IF EXISTS `diagnosis_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnosis_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `diagnosis_categories_name_index` (`name`),
  KEY `diagnosis_categories_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `diagnosis_categories_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnosis_categories`
--

LOCK TABLES `diagnosis_categories` WRITE;
/*!40000 ALTER TABLE `diagnosis_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `diagnosis_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_departments`
--

DROP TABLE IF EXISTS `doctor_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_departments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_departments_tenant_id_foreign` (`tenant_id`),
  KEY `doctor_departments_title_index` (`title`),
  CONSTRAINT `doctor_departments_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_departments`
--

LOCK TABLES `doctor_departments` WRITE;
/*!40000 ALTER TABLE `doctor_departments` DISABLE KEYS */;
INSERT INTO `doctor_departments` VALUES (2,'Doctor',NULL,'23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(3,'Doctor',NULL,'5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37');
/*!40000 ALTER TABLE `doctor_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_holidays`
--

DROP TABLE IF EXISTS `doctor_holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_holidays` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_id` bigint unsigned NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_holidays_tenant_id_foreign` (`tenant_id`),
  KEY `doctor_holidays_doctor_id_foreign` (`doctor_id`),
  CONSTRAINT `doctor_holidays_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `doctor_holidays_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_holidays`
--

LOCK TABLES `doctor_holidays` WRITE;
/*!40000 ALTER TABLE `doctor_holidays` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctor_holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_opd_charges`
--

DROP TABLE IF EXISTS `doctor_opd_charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_opd_charges` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` bigint unsigned NOT NULL,
  `standard_charge` double NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_opd_charges_tenant_id_foreign` (`tenant_id`),
  KEY `doctor_opd_charges_doctor_id_foreign` (`doctor_id`),
  KEY `doctor_opd_charges_created_at_index` (`created_at`),
  CONSTRAINT `doctor_opd_charges_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `doctor_opd_charges_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_opd_charges`
--

LOCK TABLES `doctor_opd_charges` WRITE;
/*!40000 ALTER TABLE `doctor_opd_charges` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctor_opd_charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `doctor_department_id` bigint unsigned NOT NULL,
  `specialist` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `appointment_charge` double NOT NULL DEFAULT '0',
  `google_json_file_path` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `doctors_user_id_foreign` (`user_id`),
  KEY `doctors_tenant_id_foreign` (`tenant_id`),
  KEY `doctors_doctor_department_id_foreign` (`doctor_department_id`),
  CONSTRAINT `doctors_doctor_department_id_foreign` FOREIGN KEY (`doctor_department_id`) REFERENCES `doctor_departments` (`id`),
  CONSTRAINT `doctors_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `doctors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,6,2,'Bones',NULL,'23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:36:53','2025-08-13 03:36:53',0,NULL),(2,9,2,'Bones',NULL,'23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 05:06:29','2025-08-13 05:06:29',0,NULL),(3,12,3,'Bones',NULL,'5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:16:11','2025-08-13 05:16:11',0,NULL),(4,14,3,'Bones',NULL,'5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:18:41','2025-08-13 05:18:41',0,NULL);
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_types`
--

DROP TABLE IF EXISTS `document_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `document_types_tenant_id_foreign` (`tenant_id`),
  KEY `document_types_name_index` (`name`),
  CONSTRAINT `document_types_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_types`
--

LOCK TABLES `document_types` WRITE;
/*!40000 ALTER TABLE `document_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_type_id` int NOT NULL,
  `patient_id` int NOT NULL,
  `uploaded_by` bigint unsigned NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_tenant_id_foreign` (`tenant_id`),
  KEY `documents_uploaded_by_foreign` (`uploaded_by`),
  CONSTRAINT `documents_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `documents_uploaded_by_foreign` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domains`
--

DROP TABLE IF EXISTS `domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domains` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `domain` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `domains_domain_unique` (`domain`),
  KEY `domains_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `domains_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domains`
--

LOCK TABLES `domains` WRITE;
/*!40000 ALTER TABLE `domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_payrolls`
--

DROP TABLE IF EXISTS `employee_payrolls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_payrolls` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `sr_no` bigint NOT NULL,
  `payroll_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `owner_id` int NOT NULL,
  `owner_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int NOT NULL,
  `net_salary` double NOT NULL,
  `status` int NOT NULL,
  `basic_salary` double NOT NULL,
  `allowance` double NOT NULL,
  `deductions` double NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_payrolls_tenant_id_foreign` (`tenant_id`),
  KEY `employee_payrolls_id_sr_no_index` (`id`,`sr_no`),
  CONSTRAINT `employee_payrolls_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_payrolls`
--

LOCK TABLES `employee_payrolls` WRITE;
/*!40000 ALTER TABLE `employee_payrolls` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_payrolls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquiries`
--

DROP TABLE IF EXISTS `enquiries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enquiries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewed_by` bigint unsigned DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enquiries_tenant_id_foreign` (`tenant_id`),
  KEY `enquiries_viewed_by_foreign` (`viewed_by`),
  KEY `enquiries_created_at_index` (`created_at`),
  CONSTRAINT `enquiries_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `enquiries_viewed_by_foreign` FOREIGN KEY (`viewed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquiries`
--

LOCK TABLES `enquiries` WRITE;
/*!40000 ALTER TABLE `enquiries` DISABLE KEYS */;
/*!40000 ALTER TABLE `enquiries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_google_calendars`
--

DROP TABLE IF EXISTS `event_google_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_google_calendars` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `google_calendar_list_id` bigint unsigned NOT NULL,
  `google_calendar_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_google_calendars_user_id_foreign` (`user_id`),
  KEY `event_google_calendars_google_calendar_list_id_foreign` (`google_calendar_list_id`),
  CONSTRAINT `event_google_calendars_google_calendar_list_id_foreign` FOREIGN KEY (`google_calendar_list_id`) REFERENCES `google_calendar_lists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `event_google_calendars_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_google_calendars`
--

LOCK TABLES `event_google_calendars` WRITE;
/*!40000 ALTER TABLE `event_google_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_google_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expenses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `expense_head` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime NOT NULL,
  `amount` double NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `expenses_tenant_id_foreign` (`tenant_id`),
  KEY `expenses_date_index` (`date`),
  CONSTRAINT `expenses_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'Is My Electronic Health Record Kept Private?','Health records are kept totally private and we employ robust encryption methods to protect your personal information. You determine who can see the information in your record.','2025-08-13 03:21:45','2025-08-13 03:21:45'),(2,'Can Doctor 24x7 Handle My Emergency Situations?','Doctor 24×7 is designed to handle non-emergent medical problems. You should NOT use it if you are experiencing a medical emergency.','2025-08-13 03:21:45','2025-08-13 03:21:45'),(3,'Can I Call Doctor 24x7 Outside Of India?','Doctor 24×7 consults are unavailable outside of India. However, if you are travelling outside India, you can use our service from a mobile phone using a SIM card issued in India.','2025-08-13 03:21:45','2025-08-13 03:21:45'),(4,'Is my electronic health record kept private?','Health records are kept totally private and we employ robust encryption methods to protect your personal information. You determine who can see the information in your record.','2025-08-13 03:21:45','2025-08-13 03:21:45'),(5,'How much does a consult cost?','The cost of a Doctor consult varies, depending on your choice of consulting the 1st available Doctor OR requesting a call back from a specific Doctor.','2025-08-13 03:21:45','2025-08-13 03:21:45'),(6,'Do I Talk to \"real doctors\"?','Yes. Doctor 24×7 subscribers only talk to reputed Doctors/Experts attached with top hospitals/private practice who are Licensed practitioners. Each Doctor/Expert on our network is qualified.','2025-08-13 03:21:45','2025-08-13 03:21:45');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature_subscriptionplan`
--

DROP TABLE IF EXISTS `feature_subscriptionplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feature_subscriptionplan` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `feature_id` bigint unsigned NOT NULL,
  `subscription_plan_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `feature_subscriptionplan_feature_id_subscription_plan_id_index` (`feature_id`,`subscription_plan_id`),
  KEY `feature_subscriptionplan_subscription_plan_id_foreign` (`subscription_plan_id`),
  CONSTRAINT `feature_subscriptionplan_feature_id_foreign` FOREIGN KEY (`feature_id`) REFERENCES `features` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `feature_subscriptionplan_subscription_plan_id_foreign` FOREIGN KEY (`subscription_plan_id`) REFERENCES `subscription_plans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature_subscriptionplan`
--

LOCK TABLES `feature_subscriptionplan` WRITE;
/*!40000 ALTER TABLE `feature_subscriptionplan` DISABLE KEYS */;
INSERT INTO `feature_subscriptionplan` VALUES (1,1,1,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(2,3,1,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(3,7,1,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(4,9,1,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(5,11,1,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(6,15,1,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(7,17,1,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(8,19,1,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(9,21,1,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(10,25,1,'2025-08-13 03:21:45','2025-08-13 03:21:45');
/*!40000 ALTER TABLE `feature_subscriptionplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `features` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu` int DEFAULT '0',
  `route` longtext COLLATE utf8mb4_unicode_ci,
  `has_parent` int DEFAULT '0',
  `is_default` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `features_name_unique` (`name`),
  KEY `features_name_submenu_has_parent_is_default_index` (`name`,`submenu`,`has_parent`,`is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (1,'Appointments',0,'{\"route_name\":[\"appointments.index\",\"appointments.create\",\"appointments.store\",\"appointments.edit\",\"appointments.update\",\"doctors.list\",\"doctor-schedule-list\",\"get.booking.slot\",\"patient.appointment.update\",\"appointments.show\",\"appointments.destroy\",\"appointments.excel\",\"appointment.status\"]}',0,0,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(2,'Appointment Calendar',0,'{\"route_name\":[\"appointment-calendars.index\",\"calendar-list\",\"appointment.details\"]}',1,0,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(3,'Blood Banks',4,'{\"route_name\":[\"blood-banks.index\",\"blood-banks.create\",\"blood-banks.store\",\"blood-banks.edit\",\"blood-banks.update\",\"blood-banks.destroy\",\"blood.banks.excel\"]}',0,0,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(4,'Blood Donors',0,'{\"route_name\":[\"blood-donors.index\",\"blood-donors.create\",\"blood-donors.store\",\"blood-donors.edit\",\"blood-donors.update\",\"blood-donors.destroy\",\"blood.donors.excel\"]}',3,0,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(5,'Blood Donations',0,'{\"route_name\":[\"blood-donations.index\",\"blood-donations.create\",\"blood-donations.store\",\"blood-donations.edit\",\"blood-donations.update\",\"blood-donations.destroy\",\"blood.donations.excel\"]}',3,0,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(6,'Blood Issues',0,'{\"route_name\":[\"blood-issues.index\",\"blood-issues.create\",\"blood-issues.store\",\"blood-issues.edit\",\"blood-issues.update\",\"blood-issues.destroy\",\"blood-issues.list\",\"blood.issues.excel\"]}',3,0,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(7,'Documents',2,'{\"route_name\":[\"documents.index\",\"documents.create\",\"documents.store\",\"documents.edit\",\"documents.update\",\"documents.destroy\",\"document.download\"]}',0,0,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(8,'Document Types',0,'{\"route_name\":[\"document-types.index\",\"document-types.create\",\"document-types.store\",\"document-types.edit\",\"document-types.show\",\"document-types.update\",\"document-types.destroy\"]}',7,0,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(9,'Live Consultations',2,'{\"route_name\":[\"live.consultation.index\",\"live.consultation.create\",\"live.consultation.store\",\"live.consultation.edit\",\"live.consultation.show\",\"live.consultation.update\",\"live.consultation.destroy\",\"live.consultation.list\",\"live.consultation.change.status\",\"live.consultation.get.live.status\",\"zoom.credential\",\"zoom.credential.create\"]}',0,0,'2025-08-13 03:21:45','2025-08-13 03:21:46'),(10,'Live Meetings',0,'{\"route_name\":[\"live.meeting.index\",\"live.meeting.store\",\"live.meeting.change.status\",\"live.meeting.get.live.status\",\"live.meeting.show\",\"live.meeting.edit\",\"live.meeting.update\",\"live.meeting.destroy\"]}',9,0,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(11,'Inventory',4,'{\"route_name\":[\"item-categories.index\",\"item-categories.store\",\"item-categories.edit\",\"item-categories.update\",\"item-categories.destroy\"]}',0,0,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(12,'Items',0,'{\"route_name\":[\"items.index\",\"items.create\",\"items.store\",\"items.edit\",\"items.show\",\"items.update\",\"items.destroy\"]}',11,0,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(13,'Item Stocks',0,'{\"route_name\":[\"item.stock.index\",\"item.stock.create\",\"item.stock.store\",\"item.stock.edit\",\"item.stock.show\",\"item.stock.update\",\"item.stock.destroy\",\"item.stock.download\",\"items.list\"]}',11,0,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(14,'Issued Items',0,'{\"route_name\":[\"issued.item.index\",\"issued.item.create\",\"users.list\",\"item.available.qty\",\"return.issued.item\",\"issued.item.store\",\"issued.item.show\",\"issued.item.destroy\"]}',11,0,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(15,'Vaccinations',2,'{\"route_name\":[\"vaccinated-patients.index\",\"vaccinated-patients.create\",\"vaccinated-patients.store\",\"vaccinated-patients.edit\",\"vaccinated-patients.show\",\"vaccinated-patients.update\",\"vaccinated-patients.destroy\",\"vaccinated-patients.excel\"]}',0,0,'2025-08-13 03:21:45','2025-08-13 03:21:46'),(16,'Vaccination',0,'{\"route_name\":[\"vaccinations.index\",\"vaccinations.create\",\"vaccinations.store\",\"vaccinations.edit\",\"vaccinations.show\",\"vaccinations.update\",\"vaccinations.destroy\",\"vaccinations.excel\"]}',15,0,'2025-08-13 03:21:45','2025-08-13 03:21:46'),(17,'SMS / Mail',2,'{\"route_name\":[\"sms.index\",\"sms.store\",\"sms.show\",\"sms.show.modal\",\"sms.destroy\",\"sms.users.lists\"]}',0,0,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(18,'Mail',0,'{\"route_name\":[\"mail\",\"mail.send\"]}',17,0,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(19,'Radiology',2,'{\"route_name\":[\"radiology.category.index\",\"radiology.category.create\",\"radiology.category.store\",\"radiology.category.edit\",\"radiology.category.update\",\"radiology.category.destroy\"]}',0,0,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(20,'Radiology Tests',0,'{\"route_name\":[\"radiology.test.index\",\"radiology.test.create\",\"radiology.test.store\",\"radiology.test.edit\",\"radiology.test.show\",\"radiology.test.show.modal\",\"radiology.test.update\",\"radiology.test.destroy\",\"radiology.test.standard.charge\",\"radiology.tests.excel\"]}',19,0,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(21,'Reports',4,'{\"route_name\":[\"birth-reports.index\",\"birth-reports.create\",\"birth-reports.store\",\"birth-reports.edit\",\"birth-reports.show\",\"birth-reports.update\",\"birth-reports.destroy\"]}',0,0,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(22,'Death Reports',0,'{\"route_name\":[\"death-reports.index\",\"death-reports.create\",\"death-reports.store\",\"death-reports.edit\",\"death-reports.show\",\"death-reports.update\",\"death-reports.destroy\"]}',21,0,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(23,'Investigation Reports',0,'{\"route_name\":[\"investigation-reports.index\",\"investigation-reports.create\",\"investigation-reports.store\",\"investigation-reports.edit\",\"investigation-reports.show\",\"investigation-reports.update\",\"investigation-reports.destroy\",\"investigation.reports.download\"]}',21,0,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(24,'Operation Reports',0,'{\"route_name\":[\"operation-reports.index\",\"operation-reports.create\",\"operation-reports.store\",\"operation-reports.edit\",\"operation-reports.show\",\"operation-reports.update\",\"operation-reports.destroy\"]}',21,0,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(25,'Pathology',2,'{\"route_name\":[\"pathology.category.index\",\"pathology.category.create\",\"pathology.category.store\",\"pathology.category.edit\",\"pathology.category.show\",\"pathology.category.update\",\"pathology.category.destroy\"]}',0,0,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(26,'Pathology Tests',0,'{\"route_name\":[\"pathology.test.index\",\"pathology.test.create\",\"pathology.test.store\",\"pathology.test.edit\",\"pathology.test.show\",\"pathology.test.show.modal\",\"pathology.test.update\",\"pathology.test.destroy\",\"pathology.test.standard.charge\",\"pathology.tests.excel\"]}',25,0,'2025-08-13 03:21:45','2025-08-13 03:21:45');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `front_services`
--

DROP TABLE IF EXISTS `front_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `front_services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `front_services_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `front_services_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `front_services`
--

LOCK TABLES `front_services` WRITE;
/*!40000 ALTER TABLE `front_services` DISABLE KEYS */;
INSERT INTO `front_services` VALUES (1,'Cardiology','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(2,'Orthopedics','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(3,'Pulmonology','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(4,'Dental Care','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(5,'Medicine','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(6,'Ambulance','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(7,'Ophthalmology','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(8,'Neurology','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(17,'Cardiology','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(18,'Orthopedics','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(19,'Pulmonology','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(20,'Dental Care','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(21,'Medicine','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(22,'Ambulance','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(23,'Ophthalmology','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(24,'Neurology','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(25,'Cardiology','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(26,'Orthopedics','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(27,'Pulmonology','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(28,'Dental Care','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(29,'Medicine','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(30,'Ambulance','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(31,'Ophthalmology','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(32,'Neurology','image Cardiology Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor.','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37');
/*!40000 ALTER TABLE `front_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `front_settings`
--

DROP TABLE IF EXISTS `front_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `front_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `front_settings_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `front_settings_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `front_settings`
--

LOCK TABLES `front_settings` WRITE;
/*!40000 ALTER TABLE `front_settings` DISABLE KEYS */;
INSERT INTO `front_settings` VALUES (1,'about_us_title','About For HMS','1',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(2,'about_us_description','HMS will teach physicians and nurses from around the world the principles of blood management, as well as how to manage their own blood conservation programs. The hospital was chosen based on the reputation its bloodless program has established in the medical community and because of its nationally recognized results.\n\nWe are a group of creative nerds making awesome stuff for Web and Mobile. We just love to contribute to open source technologies. We always try to build something which helps developers to save their time. so they can spend a bit more time with their friends And family.','1',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(3,'about_us_mission','We are providing advanced emergency services. We have well-equipped emergency and trauma center with facilities.','1',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(4,'about_us_image','assets/img/default_image.jpg','1',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(5,'home_page_experience','10','2',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(6,'home_page_title','Find Local Specialists Best Services','2',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(7,'home_page_description','Our medical clinic provides quality care for the entire family while maintaining a personable atmosphere best services.','2',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(8,'home_page_image','web_front/images/doctors/doctor.png','2',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(9,'terms_conditions','terms_conditions','2',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(10,'privacy_policy','privacy_policy','2',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(11,'home_page_certified_doctor_image','web_front/images/healthcare-doctor/doctor-1.png','2',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(12,'home_page_certified_doctor_text','Quality Healthcare','2',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(13,'home_page_certified_doctor_title','Have Certified and High Quality Doctor For You','2',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(14,'home_page_certified_doctor_description','Our medical clinic provides quality care for the entire family while maintaining a personable atmosphere best services. Our medical clinic provides quality. Our medical clinic provides quality care for the entire family while maintaining lizam a personable atmosphere best services. Our medical clinic provides.','2',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(15,'home_page_box_title','Free Consulting','2',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(16,'home_page_box_description','Proin gravida nibh vel velit auctor aliquet.','2',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(17,'home_page_step_1_title','Check Doctor Profile','2',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(18,'home_page_step_1_description','Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin lorem quis bibendum auctor nisi elit.','2',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(19,'home_page_step_2_title','Request Consulting','2',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(20,'home_page_step_2_description','Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin lorem quis bibendum auctor nisi elit.','2',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(21,'home_page_step_3_title','Receive Consulting','2',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(22,'home_page_step_3_description','Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin lorem quis bibendum auctor nisi elit.','2',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(23,'home_page_step_4_title','Get Your Solution','2',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(24,'home_page_step_4_description','Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin lorem quis bibendum auctor nisi elit.','2',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(25,'home_page_certified_box_title','Certified Doctor','2',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(26,'home_page_certified_box_description','Proin gravida nibh vel velit auctor aliquet.','2',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(27,'appointment_title','Contact Now and Get the Best Doctor Service Today','3',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(28,'appointment_description','Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin lorem quis bibendum auctor nisi elit consequat ipsum nec sagittis.','3',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(57,'home_page_experience','10','2','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(58,'home_page_title','Find Local Specialists Best Services','2','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(59,'home_page_description','Our medical clinic provides quality care for the entire family while maintaining a personable atmosphere best services.','2','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(60,'home_page_image','web_front/images/doctors/doctor.png','2','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(61,'terms_conditions','terms_conditions','2','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(62,'privacy_policy','privacy_policy','2','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(63,'about_us_title','About For HMS','1','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(64,'about_us_description','HMS will teach physicians and nurses from around the world the principles of blood management, as well as how to manage their own blood conservation programs. The hospital was chosen based on the reputation its bloodless program has established in the medical community and because of its nationally recognized results.\n\nWe are a group of creative nerds making awesome stuff for Web and Mobile. We just love to contribute to open source technologies. We always try to build something which helps developers to save their time. so they can spend a bit more time with their friends And family.','1','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(65,'about_us_mission','We are providing advanced emergency services. We have well-equipped emergency and trauma center with facilities.','1','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(66,'about_us_image','assets/img/default_image.jpg','1','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(67,'appointment_title','Contact Now and Get the Best Doctor Service Today','3','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(68,'appointment_description','Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin lorem quis bibendum auctor nisi elit consequat ipsum nec sagittis.','3','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(69,'home_page_box_title','Free Consulting','2','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(70,'home_page_box_description','Proin gravida nibh vel velit auctor aliquet.','2','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(71,'home_page_step_1_title','Check Doctor Profile','2','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(72,'home_page_step_1_description','Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin lorem quis bibendum auctor nisi elit.','2','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(73,'home_page_step_2_title','Request Consulting','2','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(74,'home_page_step_2_description','Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin lorem quis bibendum auctor nisi elit.','2','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(75,'home_page_step_3_title','Receive Consulting','2','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(76,'home_page_step_3_description','Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin lorem quis bibendum auctor nisi elit.','2','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(77,'home_page_step_4_title','Get Your Solution','2','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(78,'home_page_step_4_description','Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin lorem quis bibendum auctor nisi elit.','2','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(79,'home_page_certified_box_title','Certified Doctor','2','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(80,'home_page_certified_box_description','Proin gravida nibh vel velit auctor aliquet.','2','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(81,'home_page_certified_doctor_image','web_front/images/healthcare-doctor/doctor-1.png','2','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(82,'home_page_certified_doctor_text','Quality Healthcare','2','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(83,'home_page_certified_doctor_title','Have Certified and High Quality Doctor For You','2','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(84,'home_page_certified_doctor_description','Our medical clinic provides quality care for the entire family while maintaining a personable atmosphere best services. Our medical clinic provides quality. Our medical clinic provides quality care for the entire family while maintaining lizam a personable atmosphere best services. Our medical clinic provides.','2','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(85,'home_page_experience','10','2','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(86,'home_page_title','Find Local Specialists Best Services','2','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(87,'home_page_description','Our medical clinic provides quality care for the entire family while maintaining a personable atmosphere best services.','2','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(88,'home_page_image','web_front/images/doctors/doctor.png','2','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(89,'terms_conditions','terms_conditions','2','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(90,'privacy_policy','privacy_policy','2','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(91,'about_us_title','About For HMS','1','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(92,'about_us_description','HMS will teach physicians and nurses from around the world the principles of blood management, as well as how to manage their own blood conservation programs. The hospital was chosen based on the reputation its bloodless program has established in the medical community and because of its nationally recognized results.\n\nWe are a group of creative nerds making awesome stuff for Web and Mobile. We just love to contribute to open source technologies. We always try to build something which helps developers to save their time. so they can spend a bit more time with their friends And family.','1','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(93,'about_us_mission','We are providing advanced emergency services. We have well-equipped emergency and trauma center with facilities.','1','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(94,'about_us_image','assets/img/default_image.jpg','1','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(95,'appointment_title','Contact Now and Get the Best Doctor Service Today','3','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(96,'appointment_description','Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin lorem quis bibendum auctor nisi elit consequat ipsum nec sagittis.','3','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(97,'home_page_box_title','Free Consulting','2','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(98,'home_page_box_description','Proin gravida nibh vel velit auctor aliquet.','2','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(99,'home_page_step_1_title','Check Doctor Profile','2','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(100,'home_page_step_1_description','Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin lorem quis bibendum auctor nisi elit.','2','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(101,'home_page_step_2_title','Request Consulting','2','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(102,'home_page_step_2_description','Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin lorem quis bibendum auctor nisi elit.','2','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(103,'home_page_step_3_title','Receive Consulting','2','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(104,'home_page_step_3_description','Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin lorem quis bibendum auctor nisi elit.','2','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(105,'home_page_step_4_title','Get Your Solution','2','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(106,'home_page_step_4_description','Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin lorem quis bibendum auctor nisi elit.','2','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(107,'home_page_certified_box_title','Certified Doctor','2','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(108,'home_page_certified_box_description','Proin gravida nibh vel velit auctor aliquet.','2','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(109,'home_page_certified_doctor_image','web_front/images/healthcare-doctor/doctor-1.png','2','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(110,'home_page_certified_doctor_text','Quality Healthcare','2','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(111,'home_page_certified_doctor_title','Have Certified and High Quality Doctor For You','2','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(112,'home_page_certified_doctor_description','Our medical clinic provides quality care for the entire family while maintaining a personable atmosphere best services. Our medical clinic provides quality. Our medical clinic provides quality care for the entire family while maintaining lizam a personable atmosphere best services. Our medical clinic provides.','2','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37');
/*!40000 ALTER TABLE `front_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `google_calendar_integrations`
--

DROP TABLE IF EXISTS `google_calendar_integrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `google_calendar_integrations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `access_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_used_at` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `google_calendar_integrations_user_id_foreign` (`user_id`),
  CONSTRAINT `google_calendar_integrations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `google_calendar_integrations`
--

LOCK TABLES `google_calendar_integrations` WRITE;
/*!40000 ALTER TABLE `google_calendar_integrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `google_calendar_integrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `google_calendar_lists`
--

DROP TABLE IF EXISTS `google_calendar_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `google_calendar_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `calendar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_calendar_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `google_calendar_lists_user_id_foreign` (`user_id`),
  CONSTRAINT `google_calendar_lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `google_calendar_lists`
--

LOCK TABLES `google_calendar_lists` WRITE;
/*!40000 ALTER TABLE `google_calendar_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `google_calendar_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_schedules`
--

DROP TABLE IF EXISTS `hospital_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_schedules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `day_of_week` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hospital_schedules_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `hospital_schedules_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_schedules`
--

LOCK TABLES `hospital_schedules` WRITE;
/*!40000 ALTER TABLE `hospital_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `hospital_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_type`
--

DROP TABLE IF EXISTS `hospital_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_type` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hospital_type_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_type`
--

LOCK TABLES `hospital_type` WRITE;
/*!40000 ALTER TABLE `hospital_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `hospital_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incomes`
--

DROP TABLE IF EXISTS `incomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incomes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `income_head` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime NOT NULL,
  `amount` double NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `incomes_tenant_id_foreign` (`tenant_id`),
  KEY `incomes_date_index` (`date`),
  CONSTRAINT `incomes_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incomes`
--

LOCK TABLES `incomes` WRITE;
/*!40000 ALTER TABLE `incomes` DISABLE KEYS */;
/*!40000 ALTER TABLE `incomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance_diseases`
--

DROP TABLE IF EXISTS `insurance_diseases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance_diseases` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `insurance_id` int unsigned NOT NULL,
  `disease_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disease_charge` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `insurance_diseases_insurance_id_foreign` (`insurance_id`),
  CONSTRAINT `insurance_diseases_insurance_id_foreign` FOREIGN KEY (`insurance_id`) REFERENCES `insurances` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance_diseases`
--

LOCK TABLES `insurance_diseases` WRITE;
/*!40000 ALTER TABLE `insurance_diseases` DISABLE KEYS */;
/*!40000 ALTER TABLE `insurance_diseases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurances`
--

DROP TABLE IF EXISTS `insurances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurances` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_tax` double NOT NULL,
  `discount` double DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `insurance_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insurance_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hospital_rate` double NOT NULL,
  `total` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `insurances_tenant_id_foreign` (`tenant_id`),
  KEY `insurances_name_index` (`name`),
  CONSTRAINT `insurances_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurances`
--

LOCK TABLES `insurances` WRITE;
/*!40000 ALTER TABLE `insurances` DISABLE KEYS */;
/*!40000 ALTER TABLE `insurances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investigation_reports`
--

DROP TABLE IF EXISTS `investigation_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investigation_reports` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int unsigned NOT NULL,
  `date` datetime NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `doctor_id` bigint unsigned NOT NULL,
  `status` int NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `investigation_reports_tenant_id_foreign` (`tenant_id`),
  KEY `investigation_reports_patient_id_foreign` (`patient_id`),
  KEY `investigation_reports_doctor_id_foreign` (`doctor_id`),
  KEY `investigation_reports_date_index` (`date`),
  CONSTRAINT `investigation_reports_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `investigation_reports_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `investigation_reports_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investigation_reports`
--

LOCK TABLES `investigation_reports` WRITE;
/*!40000 ALTER TABLE `investigation_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `investigation_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_items`
--

DROP TABLE IF EXISTS `invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int unsigned NOT NULL,
  `invoice_id` int unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` int NOT NULL,
  `price` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_items_account_id_foreign` (`account_id`),
  KEY `invoice_items_invoice_id_foreign` (`invoice_id`),
  CONSTRAINT `invoice_items_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_items`
--

LOCK TABLES `invoice_items` WRITE;
/*!40000 ALTER TABLE `invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_id` int unsigned NOT NULL,
  `invoice_date` date NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT '0.00',
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoices_tenant_id_foreign` (`tenant_id`),
  KEY `invoices_patient_id_foreign` (`patient_id`),
  KEY `invoices_invoice_date_index` (`invoice_date`),
  CONSTRAINT `invoices_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoices_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipd_bills`
--

DROP TABLE IF EXISTS `ipd_bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ipd_bills` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ipd_patient_department_id` int unsigned NOT NULL,
  `total_charges` double NOT NULL,
  `total_payments` double NOT NULL,
  `gross_total` double NOT NULL,
  `discount_in_percentage` int NOT NULL,
  `tax_in_percentage` int NOT NULL,
  `other_charges` double NOT NULL,
  `net_payable_amount` double NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ipd_bills_tenant_id_foreign` (`tenant_id`),
  KEY `ipd_bills_ipd_patient_department_id_foreign` (`ipd_patient_department_id`),
  CONSTRAINT `ipd_bills_ipd_patient_department_id_foreign` FOREIGN KEY (`ipd_patient_department_id`) REFERENCES `ipd_patient_departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ipd_bills_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipd_bills`
--

LOCK TABLES `ipd_bills` WRITE;
/*!40000 ALTER TABLE `ipd_bills` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipd_bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipd_charges`
--

DROP TABLE IF EXISTS `ipd_charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ipd_charges` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ipd_patient_department_id` int unsigned NOT NULL,
  `date` date NOT NULL,
  `charge_type_id` int NOT NULL,
  `charge_category_id` int unsigned NOT NULL,
  `charge_id` int unsigned NOT NULL,
  `standard_charge` double DEFAULT NULL,
  `applied_charge` double NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ipd_charges_tenant_id_foreign` (`tenant_id`),
  KEY `ipd_charges_ipd_patient_department_id_foreign` (`ipd_patient_department_id`),
  KEY `ipd_charges_charge_category_id_foreign` (`charge_category_id`),
  KEY `ipd_charges_charge_id_foreign` (`charge_id`),
  CONSTRAINT `ipd_charges_charge_category_id_foreign` FOREIGN KEY (`charge_category_id`) REFERENCES `charge_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ipd_charges_charge_id_foreign` FOREIGN KEY (`charge_id`) REFERENCES `charges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ipd_charges_ipd_patient_department_id_foreign` FOREIGN KEY (`ipd_patient_department_id`) REFERENCES `ipd_patient_departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ipd_charges_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipd_charges`
--

LOCK TABLES `ipd_charges` WRITE;
/*!40000 ALTER TABLE `ipd_charges` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipd_charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipd_consultant_registers`
--

DROP TABLE IF EXISTS `ipd_consultant_registers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ipd_consultant_registers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ipd_patient_department_id` int unsigned NOT NULL,
  `applied_date` datetime NOT NULL,
  `doctor_id` bigint unsigned NOT NULL,
  `instruction` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `instruction_date` date NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ipd_consultant_registers_tenant_id_foreign` (`tenant_id`),
  KEY `ipd_consultant_registers_ipd_patient_department_id_foreign` (`ipd_patient_department_id`),
  KEY `ipd_consultant_registers_doctor_id_foreign` (`doctor_id`),
  CONSTRAINT `ipd_consultant_registers_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ipd_consultant_registers_ipd_patient_department_id_foreign` FOREIGN KEY (`ipd_patient_department_id`) REFERENCES `ipd_patient_departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ipd_consultant_registers_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipd_consultant_registers`
--

LOCK TABLES `ipd_consultant_registers` WRITE;
/*!40000 ALTER TABLE `ipd_consultant_registers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipd_consultant_registers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipd_diagnoses`
--

DROP TABLE IF EXISTS `ipd_diagnoses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ipd_diagnoses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ipd_patient_department_id` int unsigned NOT NULL,
  `report_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `report_date` datetime NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ipd_diagnoses_tenant_id_foreign` (`tenant_id`),
  KEY `ipd_diagnoses_ipd_patient_department_id_foreign` (`ipd_patient_department_id`),
  CONSTRAINT `ipd_diagnoses_ipd_patient_department_id_foreign` FOREIGN KEY (`ipd_patient_department_id`) REFERENCES `ipd_patient_departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ipd_diagnoses_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipd_diagnoses`
--

LOCK TABLES `ipd_diagnoses` WRITE;
/*!40000 ALTER TABLE `ipd_diagnoses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipd_diagnoses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipd_patient_departments`
--

DROP TABLE IF EXISTS `ipd_patient_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ipd_patient_departments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int unsigned NOT NULL,
  `ipd_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symptoms` text COLLATE utf8mb4_unicode_ci,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `admission_date` datetime NOT NULL,
  `is_discharge` tinyint(1) DEFAULT '0',
  `case_id` int unsigned NOT NULL,
  `is_old_patient` tinyint(1) DEFAULT '0',
  `doctor_id` bigint unsigned DEFAULT NULL,
  `bed_type_id` int unsigned DEFAULT NULL,
  `bed_id` int unsigned NOT NULL,
  `custom_field` longtext COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bill_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ipd_patient_departments_ipd_number_unique` (`ipd_number`),
  KEY `ipd_patient_departments_tenant_id_foreign` (`tenant_id`),
  KEY `ipd_patient_departments_patient_id_foreign` (`patient_id`),
  KEY `ipd_patient_departments_case_id_foreign` (`case_id`),
  KEY `ipd_patient_departments_doctor_id_foreign` (`doctor_id`),
  KEY `ipd_patient_departments_bed_type_id_foreign` (`bed_type_id`),
  KEY `ipd_patient_departments_bed_id_foreign` (`bed_id`),
  CONSTRAINT `ipd_patient_departments_bed_id_foreign` FOREIGN KEY (`bed_id`) REFERENCES `beds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ipd_patient_departments_bed_type_id_foreign` FOREIGN KEY (`bed_type_id`) REFERENCES `bed_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ipd_patient_departments_case_id_foreign` FOREIGN KEY (`case_id`) REFERENCES `patient_cases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ipd_patient_departments_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ipd_patient_departments_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ipd_patient_departments_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipd_patient_departments`
--

LOCK TABLES `ipd_patient_departments` WRITE;
/*!40000 ALTER TABLE `ipd_patient_departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipd_patient_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipd_payments`
--

DROP TABLE IF EXISTS `ipd_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ipd_payments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ipd_patient_department_id` int unsigned NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `payment_mode` tinyint NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `transaction_id` int DEFAULT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ipd_payments_tenant_id_foreign` (`tenant_id`),
  KEY `ipd_payments_ipd_patient_department_id_foreign` (`ipd_patient_department_id`),
  CONSTRAINT `ipd_payments_ipd_patient_department_id_foreign` FOREIGN KEY (`ipd_patient_department_id`) REFERENCES `ipd_patient_departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ipd_payments_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipd_payments`
--

LOCK TABLES `ipd_payments` WRITE;
/*!40000 ALTER TABLE `ipd_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipd_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipd_prescription_items`
--

DROP TABLE IF EXISTS `ipd_prescription_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ipd_prescription_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ipd_prescription_id` int unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  `medicine_id` int unsigned NOT NULL,
  `dosage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dose_interval` int NOT NULL,
  `day` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instruction` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ipd_prescription_items_tenant_id_foreign` (`tenant_id`),
  KEY `ipd_prescription_items_ipd_prescription_id_foreign` (`ipd_prescription_id`),
  KEY `ipd_prescription_items_category_id_foreign` (`category_id`),
  KEY `ipd_prescription_items_medicine_id_foreign` (`medicine_id`),
  CONSTRAINT `ipd_prescription_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ipd_prescription_items_ipd_prescription_id_foreign` FOREIGN KEY (`ipd_prescription_id`) REFERENCES `ipd_prescriptions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ipd_prescription_items_medicine_id_foreign` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ipd_prescription_items_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipd_prescription_items`
--

LOCK TABLES `ipd_prescription_items` WRITE;
/*!40000 ALTER TABLE `ipd_prescription_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipd_prescription_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipd_prescriptions`
--

DROP TABLE IF EXISTS `ipd_prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ipd_prescriptions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ipd_patient_department_id` int unsigned NOT NULL,
  `header_note` text COLLATE utf8mb4_unicode_ci,
  `footer_note` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ipd_prescriptions_tenant_id_foreign` (`tenant_id`),
  KEY `ipd_prescriptions_ipd_patient_department_id_foreign` (`ipd_patient_department_id`),
  CONSTRAINT `ipd_prescriptions_ipd_patient_department_id_foreign` FOREIGN KEY (`ipd_patient_department_id`) REFERENCES `ipd_patient_departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ipd_prescriptions_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipd_prescriptions`
--

LOCK TABLES `ipd_prescriptions` WRITE;
/*!40000 ALTER TABLE `ipd_prescriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipd_prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipd_timelines`
--

DROP TABLE IF EXISTS `ipd_timelines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ipd_timelines` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ipd_patient_department_id` int unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `visible_to_person` tinyint(1) NOT NULL DEFAULT '1',
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ipd_timelines_tenant_id_foreign` (`tenant_id`),
  KEY `ipd_timelines_ipd_patient_department_id_foreign` (`ipd_patient_department_id`),
  CONSTRAINT `ipd_timelines_ipd_patient_department_id_foreign` FOREIGN KEY (`ipd_patient_department_id`) REFERENCES `ipd_patient_departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ipd_timelines_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipd_timelines`
--

LOCK TABLES `ipd_timelines` WRITE;
/*!40000 ALTER TABLE `ipd_timelines` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipd_timelines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issued_items`
--

DROP TABLE IF EXISTS `issued_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issued_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `department_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `issued_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issued_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `item_category_id` int unsigned NOT NULL,
  `item_id` int unsigned NOT NULL,
  `quantity` int NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) DEFAULT '0',
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issued_items_tenant_id_foreign` (`tenant_id`),
  KEY `issued_items_department_id_foreign` (`department_id`),
  KEY `issued_items_user_id_foreign` (`user_id`),
  KEY `issued_items_item_category_id_foreign` (`item_category_id`),
  KEY `issued_items_item_id_foreign` (`item_id`),
  CONSTRAINT `issued_items_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `issued_items_item_category_id_foreign` FOREIGN KEY (`item_category_id`) REFERENCES `item_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `issued_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `issued_items_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `issued_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issued_items`
--

LOCK TABLES `issued_items` WRITE;
/*!40000 ALTER TABLE `issued_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `issued_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_categories`
--

DROP TABLE IF EXISTS `item_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_categories_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `item_categories_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_categories`
--

LOCK TABLES `item_categories` WRITE;
/*!40000 ALTER TABLE `item_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_stocks`
--

DROP TABLE IF EXISTS `item_stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_stocks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_category_id` int unsigned NOT NULL,
  `item_id` int unsigned NOT NULL,
  `supplier_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int NOT NULL,
  `purchase_price` double NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_stocks_tenant_id_foreign` (`tenant_id`),
  KEY `item_stocks_item_category_id_foreign` (`item_category_id`),
  KEY `item_stocks_item_id_foreign` (`item_id`),
  CONSTRAINT `item_stocks_item_category_id_foreign` FOREIGN KEY (`item_category_id`) REFERENCES `item_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `item_stocks_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `item_stocks_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_stocks`
--

LOCK TABLES `item_stocks` WRITE;
/*!40000 ALTER TABLE `item_stocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_category_id` int unsigned NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `available_quantity` int NOT NULL DEFAULT '0',
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `items_tenant_id_foreign` (`tenant_id`),
  KEY `items_item_category_id_foreign` (`item_category_id`),
  CONSTRAINT `items_item_category_id_foreign` FOREIGN KEY (`item_category_id`) REFERENCES `item_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `items_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab_technicians`
--

DROP TABLE IF EXISTS `lab_technicians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lab_technicians` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lab_technicians_tenant_id_foreign` (`tenant_id`),
  KEY `lab_technicians_user_id_foreign` (`user_id`),
  CONSTRAINT `lab_technicians_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lab_technicians_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_technicians`
--

LOCK TABLES `lab_technicians` WRITE;
/*!40000 ALTER TABLE `lab_technicians` DISABLE KEYS */;
/*!40000 ALTER TABLE `lab_technicians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_about_us`
--

DROP TABLE IF EXISTS `landing_about_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_about_us` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `text_main` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_img_one` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_img_two` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_img_three` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_img_one` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_img_two` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_one_text` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_two_text` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_three_text` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_one_text_secondary` varchar(135) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_two_text_secondary` varchar(135) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_three_text_secondary` varchar(135) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_about_us`
--

LOCK TABLES `landing_about_us` WRITE;
/*!40000 ALTER TABLE `landing_about_us` DISABLE KEYS */;
INSERT INTO `landing_about_us` VALUES (1,'How It Work','/assets/landing-theme/images/banner/about_us.png','/assets/landing-theme/images/banner/check-circle-regular.svg','/assets/landing-theme/images/banner/credit-card-solid.svg','/assets/landing-theme/images/about/12.png','/assets/landing-theme/images/about/14.png','Research','HMS Customization','Cost Effective','HMS specialises in developing innovative, efficient and smart healthcare solutions.','We offer complete HMS customization solutions. We are staffed by eLearning experts and we know how to get the most from HMS.','HMS not only saves time in the hospital but also is cost-effective in decreasing the number of people working on the Paper work.','2025-08-13 03:21:45','2025-08-13 03:21:45');
/*!40000 ALTER TABLE `landing_about_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_consultations`
--

DROP TABLE IF EXISTS `live_consultations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `live_consultations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` bigint unsigned NOT NULL,
  `patient_id` int unsigned NOT NULL,
  `consultation_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consultation_date` datetime NOT NULL,
  `host_video` tinyint(1) NOT NULL,
  `participant_video` tinyint(1) NOT NULL,
  `consultation_duration_minutes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `meeting_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci,
  `time_zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `live_consultations_tenant_id_foreign` (`tenant_id`),
  KEY `live_consultations_doctor_id_foreign` (`doctor_id`),
  KEY `live_consultations_patient_id_foreign` (`patient_id`),
  CONSTRAINT `live_consultations_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `live_consultations_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `live_consultations_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_consultations`
--

LOCK TABLES `live_consultations` WRITE;
/*!40000 ALTER TABLE `live_consultations` DISABLE KEYS */;
/*!40000 ALTER TABLE `live_consultations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_meetings`
--

DROP TABLE IF EXISTS `live_meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `live_meetings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `consultation_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consultation_date` datetime NOT NULL,
  `consultation_duration_minutes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host_video` tinyint(1) NOT NULL,
  `participant_video` tinyint(1) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci,
  `meeting_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `live_meetings_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `live_meetings_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_meetings`
--

LOCK TABLES `live_meetings` WRITE;
/*!40000 ALTER TABLE `live_meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `live_meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_meetings_candidates`
--

DROP TABLE IF EXISTS `live_meetings_candidates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `live_meetings_candidates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `live_meeting_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_meetings_candidates`
--

LOCK TABLES `live_meetings_candidates` WRITE;
/*!40000 ALTER TABLE `live_meetings_candidates` DISABLE KEYS */;
/*!40000 ALTER TABLE `live_meetings_candidates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lunch_breaks`
--

DROP TABLE IF EXISTS `lunch_breaks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunch_breaks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` bigint unsigned NOT NULL,
  `break_from` time NOT NULL,
  `break_to` time NOT NULL,
  `every_day` tinyint(1) DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lunch_breaks_tenant_id_foreign` (`tenant_id`),
  KEY `lunch_breaks_doctor_id_foreign` (`doctor_id`),
  CONSTRAINT `lunch_breaks_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lunch_breaks_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunch_breaks`
--

LOCK TABLES `lunch_breaks` WRITE;
/*!40000 ALTER TABLE `lunch_breaks` DISABLE KEYS */;
/*!40000 ALTER TABLE `lunch_breaks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails`
--

DROP TABLE IF EXISTS `mails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mails` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachments` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mails_tenant_id_foreign` (`tenant_id`),
  KEY `mails_user_id_foreign` (`user_id`),
  CONSTRAINT `mails_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mails_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails`
--

LOCK TABLES `mails` WRITE;
/*!40000 ALTER TABLE `mails` DISABLE KEYS */;
/*!40000 ALTER TABLE `mails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint unsigned NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `conversions_disk` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generated_conversions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_uuid_unique` (`uuid`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'App\\Models\\User',2,'profile_photo','298024105_451984543612548_8087291975554727440_n','298024105_451984543612548_8087291975554727440_n.png','image/png','public',171194,'[]','[]','[]',1,'2025-08-13 03:26:46','2025-08-13 03:26:46','public','0fd67b37-20cb-4cf3-8a55-4d611f269017','[]'),(8,'App\\Models\\User',6,'profile_photo','doctora1','User-1755039729.png','image/png','public',50421,'[]','[]','[]',1,'2025-08-13 04:02:09','2025-08-13 04:02:09','public','8b32007c-f8fa-475f-9fcb-01c50b5f6947','[]');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine_bills`
--

DROP TABLE IF EXISTS `medicine_bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine_bills` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_id` int unsigned NOT NULL,
  `doctor_id` int unsigned DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL,
  `net_amount` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `tax_amount` double(8,2) NOT NULL,
  `payment_status` int NOT NULL,
  `payment_type` int NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `medicine_bills_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `medicine_bills_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine_bills`
--

LOCK TABLES `medicine_bills` WRITE;
/*!40000 ALTER TABLE `medicine_bills` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicine_bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicines`
--

DROP TABLE IF EXISTS `medicines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicines` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned DEFAULT NULL,
  `brand_id` int unsigned DEFAULT NULL,
  `name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` double NOT NULL,
  `buying_price` double NOT NULL,
  `quantity` int NOT NULL,
  `available_quantity` int NOT NULL,
  `salt_composition` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `side_effects` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `medicines_tenant_id_foreign` (`tenant_id`),
  KEY `medicines_category_id_foreign` (`category_id`),
  KEY `medicines_brand_id_foreign` (`brand_id`),
  KEY `medicines_name_index` (`name`),
  CONSTRAINT `medicines_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `medicines_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `medicines_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicines`
--

LOCK TABLES `medicines` WRITE;
/*!40000 ALTER TABLE `medicines` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicines` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_09_15_000010_create_tenants_table',1),(2,'2014_09_15_000020_create_domains_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_063910_create_users_tenant_table',1),(5,'2014_10_12_100000_create_password_resets_table',1),(6,'2019_08_19_000000_create_failed_jobs_table',1),(7,'2019_12_14_000001_create_personal_access_tokens_table',1),(8,'2020_02_06_031618_create_categories_table',1),(9,'2020_02_12_053840_create_doctor_departments_table',1),(10,'2020_02_12_053932_create_departments_table',1),(11,'2020_02_13_042835_create_brands_table',1),(12,'2020_02_13_053840_create_doctors_table',1),(13,'2020_02_13_054103_create_patients_table',1),(14,'2020_02_13_094724_create_bills_table',1),(15,'2020_02_13_095024_create_medicines_table',1),(16,'2020_02_13_095125_create_bill_items_table',1),(17,'2020_02_13_111857_create_nurses_table',1),(18,'2020_02_13_125601_create_addresses_table',1),(19,'2020_02_13_141104_create_media_table',1),(20,'2020_02_14_051650_create_lab_technicians_table',1),(21,'2020_02_14_055353_create_appointments_table',1),(22,'2020_02_14_091441_create_receptionists_table',1),(23,'2020_02_14_093246_create_pharmacists_table',1),(24,'2020_02_17_053450_create_accountants_table',1),(25,'2020_02_17_080856_create_bed_types_table',1),(26,'2020_02_17_092326_create_blood_banks_table',1),(27,'2020_02_17_105627_create_beds_table',1),(28,'2020_02_17_110620_create_blood_donors_table',1),(29,'2020_02_17_135716_create_permission_tables',1),(30,'2020_02_18_042327_create_notice_boards_table',1),(31,'2020_02_18_042442_create_document_types_table',1),(32,'2020_02_18_060222_create_patient_cases_table',1),(33,'2020_02_18_060223_create_operation_reports_table',1),(34,'2020_02_18_064953_create_bed_assigns_table',1),(35,'2020_02_18_092202_create_documents_table',1),(36,'2020_02_18_094758_create_birth_reports_table',1),(37,'2020_02_18_111020_create_death_reports_table',1),(38,'2020_02_19_080336_create_employee_payrolls_table',1),(39,'2020_02_19_134502_create_settings_table',1),(40,'2020_02_21_090236_create_investigation_reports_table',1),(41,'2020_02_21_095439_create_accounts_table',1),(42,'2020_02_22_070658_create_payments_table',1),(43,'2020_02_22_090112_create_insurances_table',1),(44,'2020_02_22_091537_create_insurance_disease_table',1),(45,'2020_02_24_055136_create_invoices_table',1),(46,'2020_02_24_055518_create_schedules_table',1),(47,'2020_02_24_055702_create_invoice_items_table',1),(48,'2020_02_25_105042_create_services_table',1),(49,'2020_02_25_131030_create_packages_table',1),(50,'2020_02_25_131108_create_package_services_table',1),(51,'2020_02_27_120948_create_patient_admissions_table',1),(52,'2020_02_28_031410_create_case_handlers_table',1),(53,'2020_03_02_043813_create_advanced_payments_table',1),(54,'2020_03_02_065845_add_patient_admission_id_to_bills',1),(55,'2020_03_03_062243_add_patient_id_to_bills',1),(56,'2020_03_03_113334_create_schedule_day_table',1),(57,'2020_03_26_052336_create_ambulances_table',1),(58,'2020_03_26_081157_create_mails_table',1),(59,'2020_03_27_061641_create_enquiries_table',1),(60,'2020_03_27_063148_create_ambulance_calls_table',1),(61,'2020_03_31_122219_create_prescriptions_table',1),(62,'2020_04_11_052629_create_charge_categories_table',1),(63,'2020_04_11_053929_create_pathology_categories_table',1),(64,'2020_04_11_070859_create_radiology_categories_table',1),(65,'2020_04_11_090903_create_charges_table',1),(66,'2020_04_13_050643_create_radiology_tests_table',1),(67,'2020_04_14_093339_create_pathology_tests_table',1),(68,'2020_04_24_111205_create_doctor_opd_charge_table',1),(69,'2020_04_28_094118_create_expenses_table',1),(70,'2020_05_01_055137_create_incomes_table',1),(71,'2020_05_11_083050_add_notes_documents_table',1),(72,'2020_05_12_075825_create_sms_table',1),(73,'2020_06_22_071531_add_index_to_accounts_table',1),(74,'2020_06_22_071943_add_index_to_doctor_opd_charges_table',1),(75,'2020_06_22_072921_add_index_to_bed_assigns_table',1),(76,'2020_06_22_073042_add_index_to_medicines_table',1),(77,'2020_06_22_073457_add_index_to_employee_payrolls_table',1),(78,'2020_06_22_074937_add_index_to_notice_boards_table',1),(79,'2020_06_22_075222_add_index_to_blood_donors_table',1),(80,'2020_06_22_075359_add_index_to_packages_table',1),(81,'2020_06_22_075506_add_index_to_bed_types_table',1),(82,'2020_06_22_075725_add_index_to_services_table',1),(83,'2020_06_22_080944_add_index_to_invoices_table',1),(84,'2020_06_22_081601_add_index_to_payments_table',1),(85,'2020_06_22_081802_add_index_to_advanced_payments_table',1),(86,'2020_06_22_081909_add_index_to_bills_table',1),(87,'2020_06_22_082548_add_index_to_beds_table',1),(88,'2020_06_22_082942_add_index_to_blood_banks_table',1),(89,'2020_06_22_083511_add_index_to_users_table',1),(90,'2020_06_22_084750_add_index_to_patient_cases_table',1),(91,'2020_06_22_084912_add_index_to_patient_admissions_table',1),(92,'2020_06_22_085036_add_index_to_document_types_table',1),(93,'2020_06_22_085128_add_index_to_insurances_table',1),(94,'2020_06_22_085317_add_index_to_ambulances_table',1),(95,'2020_06_22_090509_add_index_to_ambulance_calls_table',1),(96,'2020_06_22_091253_add_index_to_doctor_departments_table',1),(97,'2020_06_22_091455_add_index_to_appointments_table',1),(98,'2020_06_22_091617_add_index_to_birth_reports_table',1),(99,'2020_06_22_091632_add_index_to_death_reports_table',1),(100,'2020_06_22_091651_add_index_to_investigation_reports_table',1),(101,'2020_06_22_091828_add_index_to_operation_reports_table',1),(102,'2020_06_22_092018_add_index_to_categories_table',1),(103,'2020_06_22_092149_add_index_to_brands_table',1),(104,'2020_06_22_092324_add_index_to_pathology_tests_table',1),(105,'2020_06_22_092338_add_index_to_pathology_categories_table',1),(106,'2020_06_22_092347_add_index_to_radiology_tests_table',1),(107,'2020_06_22_092357_add_index_to_radiology_categories_table',1),(108,'2020_06_22_092651_add_index_to_expenses_table',1),(109,'2020_06_22_092702_add_index_to_incomes_table',1),(110,'2020_06_22_092855_add_index_to_charges_table',1),(111,'2020_06_22_092905_add_index_to_charge_categories_table',1),(112,'2020_06_22_093234_add_index_to_enquiries_table',1),(113,'2020_06_24_044648_create_diagnosis_categories_table',1),(114,'2020_06_25_080242_create_patient_diagnosis_tests_table',1),(115,'2020_06_26_054352_create_patient_diagnosis_properties_table',1),(116,'2020_07_15_044653_remove_serial_visibility_from_schedules_table',1),(117,'2020_07_15_121336_change_ambulances_table_column',1),(118,'2020_07_22_052934_change_bed_assigns_table_column',1),(119,'2020_07_29_095430_change_invoice_items_table_column',1),(120,'2020_08_26_081235_create_item_categories_table',1),(121,'2020_08_26_101134_create_items_table',1),(122,'2020_08_26_125032_create_item_stocks_table',1),(123,'2020_08_27_141547_create_issued_items_table',1),(124,'2020_09_08_064222_create_ipd_patient_departments_table',1),(125,'2020_09_08_114627_create_ipd_diagnoses_table',1),(126,'2020_09_09_065624_create_ipd_consultant_registers_table',1),(127,'2020_09_09_135505_create_ipd_charges_table',1),(128,'2020_09_10_112306_create_ipd_prescriptions_table',1),(129,'2020_09_10_114203_create_ipd_prescription_items_table',1),(130,'2020_09_11_045308_create_modules_table',1),(131,'2020_09_12_050715_create_ipd_payments_table',1),(132,'2020_09_12_071821_create_ipd_timelines_table',1),(133,'2020_09_12_103003_create_ipd_bills_table',1),(134,'2020_09_14_083759_create_opd_patient_departments_table',1),(135,'2020_09_14_144731_add_ipd_patient_department_id_to_bed_assigns_table',1),(136,'2020_09_15_064044_create_transactions_table',1),(137,'2020_09_16_103204_create_opd_diagnoses_table',1),(138,'2020_09_16_114031_create_opd_timelines_table',1),(139,'2020_09_23_045100_change_patient_diagnosis_properties_table',1),(140,'2020_09_24_053229_add_ipd_bill_column_in_ipd_patient_departments_table',1),(141,'2020_10_09_085838_create_call_logs_table',1),(142,'2020_10_12_125133_create_visitors_table',1),(143,'2020_10_14_044134_create_postals_table',1),(144,'2020_10_30_043500_add_route_in_modules_table',1),(145,'2020_10_31_062448_add_complete_in_appointments_table',1),(146,'2020_11_02_050736_create_testimonials_table',1),(147,'2020_11_07_121633_add_region_code_in_sms_table',1),(148,'2020_11_19_093810_create_blood_donations_table',1),(149,'2020_11_20_113830_create_blood_issues_table',1),(150,'2020_11_24_131253_create_notifications_table',1),(151,'2020_12_28_131351_create_live_consultations_table',1),(152,'2020_12_31_062506_create_live_meetings_table',1),(153,'2020_12_31_091242_create_live_meetings_candidates_table',1),(154,'2021_01_05_100425_create_user_zoom_credential_table',1),(155,'2021_01_06_105407_add_metting_id_to_live_meetings_table',1),(156,'2021_02_23_065200_create_vaccinations_table',1),(157,'2021_02_23_065252_create_vaccinated_patients_table',1),(158,'2021_04_05_085646_create_front_settings_table',1),(159,'2021_05_10_000000_add_uuid_to_failed_jobs_table',1),(160,'2021_05_29_103036_add_conversions_disk_column_in_media_table',1),(161,'2021_06_07_104022_change_patient_foreign_key_type_in_appointments_table',1),(162,'2021_06_08_073918_change_department_foreign_key_in_appointments_table',1),(163,'2021_06_21_082754_update_amount_datatype_in_bills_table',1),(164,'2021_06_21_082845_update_amount_datatype_in_bill_items_table',1),(165,'2021_11_11_061443_create_front_services_table',1),(166,'2021_11_12_100750_create_hospital_schedules_table',1),(167,'2021_11_12_105805_add_social_details_in_users_table',1),(168,'2021_11_20_071507_create_subscription_plans_table',1),(169,'2021_11_23_090824_create_subscriptions_table',1),(170,'2021_11_24_102200_create_section_ones_table',1),(171,'2021_11_25_102200_create_section_twos_table',1),(172,'2021_11_26_085330_create_super_admin_settings_table',1),(173,'2021_11_26_102200_create_section_threes_table',1),(174,'2021_11_26_102202_create_section_fours_table',1),(175,'2021_11_26_102203_create_section_fives_table',1),(176,'2021_11_26_131611_create_subscribes_table',1),(177,'2021_11_26_131613_create_landing_about_us_table',1),(178,'2021_11_26_131615_create_super_admin_enquiries_table',1),(179,'2021_11_30_043411_create_service_sliders_table',1),(180,'2021_11_30_132704_create_admin_testimonials_table',1),(181,'2021_12_01_094113_create_faqs_table',1),(182,'2021_12_08_084047_create_features_table',1),(183,'2021_12_08_105802_create_feature_subscriptionplan_table',1),(184,'2022_01_24_065736_change_domain_field_in_domains_table',1),(185,'2022_01_24_065936_change_route_field_in_features_table',1),(186,'2022_02_22_072906_add_theme_mode_to_users_table',1),(187,'2022_03_26_051413_change_transaction_id_in_transactions',1),(188,'2022_03_28_092201_add_is_manual_payment_in_transactions',1),(189,'2022_04_09_063627_change_doctor_foreign_in_operation_reports_table',1),(190,'2022_05_12_103141_change_length_email_in_password_resets',1),(191,'2022_05_12_103950_change_length_name_in_accounts',1),(192,'2022_05_12_104835_change_length_name_in_medicines',1),(193,'2022_05_12_105027_change_length_name_in_packages',1),(194,'2022_05_12_105131_change_length_title_in_bed_types',1),(195,'2022_05_12_105228_change_length_name_in_services',1),(196,'2022_05_12_105423_change_length_first_name_in_users',1),(197,'2022_05_12_105529_change_length_name_in_document_types',1),(198,'2022_05_12_105616_change_length_name_in_insurances',1),(199,'2022_05_12_105820_change_length_vehicle_number_in_ambulances',1),(200,'2022_05_12_110013_change_length_title_in_doctor_departments',1),(201,'2022_05_12_110054_change_length_name_in_categories',1),(202,'2022_05_12_110121_change_length_name_in_brands',1),(203,'2022_05_12_110159_change_length_test_name_in_pathology_tests',1),(204,'2022_05_12_110234_change_length_name_in_pathology_categories',1),(205,'2022_05_12_110310_change_length_test_name_in_radiology_tests',1),(206,'2022_05_12_110359_change_length_name_in_radiology_categories',1),(207,'2022_05_12_110441_change_length_code_in_charges',1),(208,'2022_05_12_110518_change_length_name_in_charge_categories',1),(209,'2022_05_12_110625_change_length_name_in_diagnosis_categories',1),(210,'2022_05_12_111216_change_length_status_transaction_id_in_transactions',1),(211,'2022_05_12_111540_change_length_name_in_features',1),(212,'2022_05_16_111533_add_default_length_in_table',1),(213,'2022_07_27_115635_add_sms_limit_to_subscription_plans_table',1),(214,'2022_07_28_070949_add_sms_limit_to_subscriptions_table',1),(215,'2022_08_01_163441_create_add_prescription_fields_table',1),(216,'2022_08_02_164201_create_prescriptions_medicines_table',1),(217,'2022_08_26_225039_change_charge_standard_charge_column',1),(218,'2022_08_29_114641_change_field_in_blood_issues',1),(219,'2022_08_31_183659_add_city_field_in_user_table',1),(220,'2022_08_31_185620_create_hospital_type_table',1),(221,'2022_09_06_185142_add_foreign_key_at_hospital_type',1),(222,'2022_09_20_044627_run_default_country_code_seeder',1),(223,'2022_10_08_174423_create_currency_settings_table',1),(224,'2022_10_10_175359_create_default_currency_seeder_migration',1),(225,'2022_10_14_071405_super_admin_currency_settings',1),(226,'2022_10_15_035849_super_admin_currency_seeder_migration',1),(227,'2022_10_17_095822_add_default_field_seeder',1),(228,'2022_11_04_180329_remove_unique_constraint_from_item_category',1),(229,'2023_01_31_125406_change_datatype_meta_field_to_transactions_table',1),(230,'2023_02_09_042947_change_datatype_price_field_to_subscription_plans_table',1),(231,'2023_04_10_082532_seed_default_currency_setting_seeder',1),(232,'2023_06_17_043439_super_admin_google_recaptcha_setting',1),(233,'2023_06_26_070547_create_used_medicines_table',1),(234,'2023_06_26_094015_add_quantity_field_in_medicines_table',1),(235,'2023_06_27_093345_create_purchase_medicine_table',1),(236,'2023_06_27_105310_create_purchased_medicines_table',1),(237,'2023_07_05_044449_create_medicine_bill_table',1),(238,'2023_07_05_054627_create_sale_medicines_table',1),(239,'2023_07_06_093935_add_dose_interval_field_in_prescription_table',1),(240,'2023_07_12_130339_add_dose_interval_field_in_ipd_prescription_items_table',1),(241,'2023_07_26_060713_change_price_precision_medicine_bill_table',1),(242,'2023_08_17_000000_rename_password_resets_table',1),(243,'2023_08_24_064315_create_zoom_o_auth_credentials_table',1),(244,'2023_08_29_100628_add_charge_id_in_radiology_tests_table',1),(245,'2023_09_30_060447_create_pathology_units_table',1),(246,'2023_09_30_065818_create_pathology_parameters_table',1),(247,'2023_10_04_113522_create_pathology_parameter_items_table',1),(248,'2023_10_09_112844_create_doctor_holidays_table',1),(249,'2023_10_09_113239_create_lunch_breaks_table',1),(250,'2023_11_02_090934_add_description_field_to_doctors_table',1),(251,'2023_11_20_060736_add_default_language_field_to_settings',1),(252,'2023_11_23_064532_add_report_generated_to_opd_diagnosis_table',1),(253,'2023_11_24_105520_add_status_in_bills_table',1),(254,'2023_11_27_111203_create_bill_transactions_table',1),(255,'2023_12_14_074029_add_notes_field_to_transactions_table',1),(256,'2023_12_22_105204_add_discharge_field_to_ipd_patient_departments_table',1),(257,'2023_12_28_083507_create_custom_fields_table',1),(258,'2023_12_28_085923_add_custom_field_to_appointments_table',1),(259,'2023_12_28_090429_add_custom_field_to_ipd_patient_departments_table',1),(260,'2023_12_28_090546_add_custom_field_to_opd_patient_departments_table',1),(261,'2023_12_28_091156_add_custom_field_to_patients_table',1),(262,'2024_01_04_090911_add_region_code_to_users_table',1),(263,'2024_01_05_100018_create_ipd_patient_department_seeder_table',1),(264,'2024_01_25_040328_change_token_filed_in_password_reset_tokens_table',1),(265,'2024_01_26_073439_add_appointment_charge_field_to_doctors_table',1),(266,'2024_01_29_125535_create_appointment_transactions_table',1),(267,'2024_02_01_064646_add_payment_status_in_appointments_table',1),(268,'2024_02_05_102546_update_default_bed_status_seeder',1),(269,'2024_02_08_125631_create_google_calendar_integrations_table',1),(270,'2024_02_09_035534_create_google_calendar_lists_table',1),(271,'2024_02_12_052500_create_event_google_calendars_table',1),(272,'2024_02_12_092046_add_column_in_live_consultations_table',1),(273,'2024_02_13_064535_create_user_google_event_schedules_table',1),(274,'2024_02_15_050936_create_smart_patient_cards_table',1),(275,'2024_02_15_051157_add_template_id_to_patients_table',1),(276,'2024_02_15_051222_add_patient_unique_id_to_patients_table',1),(277,'2024_02_20_083631_add_manual_instruction_in_setting_seeder',1),(278,'2024_02_26_090956_add_patient_id_to_pathology_tests_table',1),(279,'2024_02_28_101005_create_setting_table_payment_getaway_field_seeder_table',1),(280,'2024_03_01_110117_create_opd_prescriptions_table',1),(281,'2024_03_06_051455_create_opd_prescription_items_table',1),(282,'2024_03_26_054916_add_payment_status_field_in_purchase_medicine_table',1),(283,'2024_04_01_044115_create_super_admin_flutterwave_credential_seeder_table',1),(284,'2024_05_15_121235_change_custom_field_to_patients_table',1),(285,'2024_05_15_121352_change_custom_field_to_appointments_table',1),(286,'2024_05_15_121400_change_custom_field_to_ipd_patient_departments_table',1),(287,'2024_05_15_121406_change_custom_field_to_opd_patient_departments_table',1),(288,'2024_05_20_055209_change_expiry_date_field_type_in_sale_medicines_table',1),(289,'2024_05_30_070256_add_google_json_file_path_field_to_doctors_table',1),(290,'2024_05_31_061137_change_price_datatype_in_bill_items',1),(291,'2024_05_31_064037_change_amount_datatype_in_bill_transactions',1),(292,'2024_05_31_064251_change_charge_datatype_in_beds',1),(293,'2024_05_31_071230_change_standard_charge_datatype_in_charges',1),(294,'2024_05_31_101858_change_standard_charge_datatype_in_pathology_tests_table',1),(295,'2024_05_31_102407_change_standard_charge_datatype_in_radiology_tests_table',1),(296,'2024_05_31_103537_change_rate_datatype_in_services_table',1),(297,'2024_06_01_035510_change_standard_and_applied_charge_datatype_in_ipd_charges',1),(298,'2024_06_01_040041_change_amount_datatype_in_ipd_payments',1),(299,'2024_06_01_042014_change_amount_datatype_in_ipd_bills',1),(300,'2024_07_24_114525_change_appointment_charge_datatype_in_doctors_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  UNIQUE KEY `model_has_permissions_model_type_unique` (`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (10,'App\\Models\\User',1),(1,'App\\Models\\User',2),(1,'App\\Models\\User',5),(2,'App\\Models\\User',6),(3,'App\\Models\\User',7),(3,'App\\Models\\User',8),(2,'App\\Models\\User',9),(5,'App\\Models\\User',10),(1,'App\\Models\\User',11),(2,'App\\Models\\User',12),(3,'App\\Models\\User',13),(2,'App\\Models\\User',14),(3,'App\\Models\\User',15),(5,'App\\Models\\User',16);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `modules_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `modules_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'Patients',1,'patients.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(2,'Doctors',1,'doctors.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(3,'Accountants',1,'accountants.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(4,'Medicines',1,'medicines.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(5,'Nurses',1,'nurses.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(6,'Receptionists',1,'receptionists.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(7,'Lab Technicians',1,'lab-technicians.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(8,'Pharmacists',1,'pharmacists.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(9,'Birth Reports',1,'birth-reports.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(10,'Death Reports',1,'death-reports.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(11,'Investigation Reports',1,'investigation-reports.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(12,'Operation Reports',1,'operation-reports.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(13,'Income',1,'incomes.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(14,'Expense',1,'expenses.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(15,'SMS',1,'sms.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(16,'IPD Patients',1,'ipd.patient.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(17,'OPD Patients',1,'opd.patient.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(18,'Accounts',1,'accounts.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(19,'Employee Payrolls',1,'employee-payrolls.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(20,'Invoices',1,'invoices.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(21,'Payments',1,'payments.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(22,'Payment Reports',1,'payment.reports',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(23,'Advance Payments',1,'advanced-payments.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(24,'Bills',1,'bills.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(25,'Bed Types',1,'bed-types.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(26,'Beds',1,'beds.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(27,'Bed Assigns',1,'bed-assigns.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(28,'Blood Banks',1,'blood-banks.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(29,'Blood Donors',1,'blood-donors.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(30,'Documents',1,'documents.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(31,'Document Types',1,'document-types.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(32,'Services',1,'services.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(33,'Insurances',1,'insurances.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(34,'Packages',1,'packages.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(35,'Ambulances',1,'ambulances.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(36,'Ambulances Calls',1,'ambulance-calls.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(37,'Appointments',1,'appointments.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(38,'Call Logs',1,'call_logs.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(39,'Visitors',1,'visitors.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(40,'Postal Receive',1,'receives.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(41,'Postal Dispatch',1,'dispatches.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(42,'Notice Boards',1,'noticeboard',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(43,'Mail',1,'mail',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(44,'Enquires',1,'enquiries',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(45,'Charge Categories',1,'charge-categories.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(46,'Charges',1,'charges.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(47,'Doctor OPD Charges',1,'doctor-opd-charges.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(48,'Items Categories',1,'item-categories.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(49,'Items',1,'items.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(50,'Item Stocks',1,'item.stock.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(51,'Issued Items',1,'issued.item.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(52,'Diagnosis Categories',1,'diagnosis.category.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(53,'Diagnosis Tests',1,'patient.diagnosis.test.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(54,'Pathology Categories',1,'pathology.category.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(55,'Pathology Tests',1,'pathology.test.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(56,'Radiology Categories',1,'radiology.category.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(57,'Radiology Tests',1,'radiology.test.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(58,'Medicine Categories',1,'categories.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(59,'Medicine Brands',1,'brands.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(60,'Doctor Departments',1,'doctor-departments.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(61,'Schedules',1,'schedules.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(62,'Prescriptions',1,'prescriptions.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(63,'Cases',1,'patient-cases.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(64,'Case Handlers',1,'case-handlers.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(65,'Patient Admissions',1,'patient-admissions.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(66,'My Payrolls',1,'payroll',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(67,'Patient Cases',1,'patients.cases',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(68,'Testimonial',1,'testimonials.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(69,'Blood Donations',1,'blood-donations.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(70,'Blood Issues',1,'blood-issues.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(71,'Live Consultations',1,'live.consultation.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(72,'Live Meetings',1,'live.meeting.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(73,'Vaccinated Patients',1,'vaccinated-patients.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(74,'Vaccinations',1,'vaccinations.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(75,'Purchased Medicine',1,'medicine-purchase.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(76,'Pathology Units',1,'pathology.unit.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(77,'Pathology Parameters',1,'pathology.parameter.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(78,'Vaccinations',1,'vaccinations.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(79,'Vaccinated Patients',1,'vaccinated-patients.index',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(157,'Patients',1,'patients.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(158,'Doctors',1,'doctors.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(159,'Accountants',1,'accountants.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(160,'Medicines',1,'medicines.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(161,'Nurses',1,'nurses.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(162,'Receptionists',1,'receptionists.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(163,'Lab Technicians',1,'lab-technicians.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(164,'Pharmacists',1,'pharmacists.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(165,'Birth Reports',1,'birth-reports.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(166,'Death Reports',1,'death-reports.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(167,'Investigation Reports',1,'investigation-reports.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(168,'Operation Reports',1,'operation-reports.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(169,'Income',1,'incomes.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(170,'Expense',1,'expenses.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(171,'SMS',1,'sms.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(172,'IPD Patients',1,'ipd.patient.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(173,'OPD Patients',1,'opd.patient.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(174,'Accounts',1,'accounts.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(175,'Employee Payrolls',1,'employee-payrolls.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(176,'Invoices',1,'invoices.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(177,'Payments',1,'payments.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(178,'Payment Reports',1,'payment.reports','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(179,'Advance Payments',1,'advanced-payments.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(180,'Bills',1,'bills.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(181,'Bed Types',1,'bed-types.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(182,'Beds',1,'beds.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(183,'Bed Assigns',1,'bed-assigns.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(184,'Blood Banks',1,'blood-banks.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(185,'Blood Donors',1,'blood-donors.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(186,'Documents',1,'documents.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(187,'Document Types',1,'document-types.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(188,'Services',1,'services.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(189,'Insurances',1,'insurances.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(190,'Packages',1,'packages.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(191,'Ambulances',1,'ambulances.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(192,'Ambulances Calls',1,'ambulance-calls.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(193,'Appointments',1,'appointments.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(194,'Call Logs',1,'call_logs.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(195,'Visitors',1,'visitors.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(196,'Postal Receive',1,'receives.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(197,'Postal Dispatch',1,'dispatches.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(198,'Notice Boards',1,'noticeboard','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(199,'Mail',1,'mail','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(200,'Enquires',1,'enquiries','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(201,'Charge Categories',1,'charge-categories.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(202,'Charges',1,'charges.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(203,'Doctor OPD Charges',1,'doctor-opd-charges.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(204,'Items Categories',1,'item-categories.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(205,'Items',1,'items.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(206,'Item Stocks',1,'item.stock.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(207,'Issued Items',1,'issued.item.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(208,'Diagnosis Categories',1,'diagnosis.category.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(209,'Diagnosis Tests',1,'patient.diagnosis.test.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(210,'Pathology Categories',1,'pathology.category.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(211,'Pathology Tests',1,'pathology.test.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(212,'Radiology Categories',1,'radiology.category.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(213,'Radiology Tests',1,'radiology.test.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(214,'Medicine Categories',1,'categories.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(215,'Medicine Brands',1,'brands.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(216,'Doctor Departments',1,'doctor-departments.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(217,'Schedules',1,'schedules.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(218,'Prescriptions',1,'prescriptions.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(219,'Cases',1,'patient-cases.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(220,'Case Handlers',1,'case-handlers.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(221,'Patient Admissions',1,'patient-admissions.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(222,'My Payrolls',1,'payroll','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(223,'Patient Cases',1,'patients.cases','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(224,'Testimonial',1,'testimonials.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(225,'Blood Donations',1,'blood-donations.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(226,'Blood Issues',1,'blood-issues.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(227,'Live Consultations',1,'live.consultation.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(228,'Live Meetings',1,'live.meeting.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(229,'Vaccinated Patients',1,'vaccinated-patients.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(230,'Vaccinations',1,'vaccinations.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(231,'Purchased Medicine',1,'medicine-purchase.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(232,'Pathology Units',1,'pathology.unit.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(233,'Pathology Parameters',1,'pathology.parameter.index','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(234,'Patients',1,'patients.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(235,'Doctors',1,'doctors.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(236,'Accountants',1,'accountants.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(237,'Medicines',1,'medicines.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(238,'Nurses',1,'nurses.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(239,'Receptionists',1,'receptionists.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(240,'Lab Technicians',1,'lab-technicians.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(241,'Pharmacists',1,'pharmacists.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(242,'Birth Reports',1,'birth-reports.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(243,'Death Reports',1,'death-reports.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(244,'Investigation Reports',1,'investigation-reports.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(245,'Operation Reports',1,'operation-reports.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(246,'Income',1,'incomes.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(247,'Expense',1,'expenses.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(248,'SMS',1,'sms.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(249,'IPD Patients',1,'ipd.patient.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(250,'OPD Patients',1,'opd.patient.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(251,'Accounts',1,'accounts.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(252,'Employee Payrolls',1,'employee-payrolls.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(253,'Invoices',1,'invoices.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(254,'Payments',1,'payments.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(255,'Payment Reports',1,'payment.reports','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(256,'Advance Payments',1,'advanced-payments.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(257,'Bills',1,'bills.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(258,'Bed Types',1,'bed-types.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(259,'Beds',1,'beds.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(260,'Bed Assigns',1,'bed-assigns.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(261,'Blood Banks',1,'blood-banks.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(262,'Blood Donors',1,'blood-donors.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(263,'Documents',1,'documents.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(264,'Document Types',1,'document-types.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(265,'Services',1,'services.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(266,'Insurances',1,'insurances.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(267,'Packages',1,'packages.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(268,'Ambulances',1,'ambulances.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(269,'Ambulances Calls',1,'ambulance-calls.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(270,'Appointments',1,'appointments.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(271,'Call Logs',1,'call_logs.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(272,'Visitors',1,'visitors.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(273,'Postal Receive',1,'receives.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(274,'Postal Dispatch',1,'dispatches.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(275,'Notice Boards',1,'noticeboard','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(276,'Mail',1,'mail','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(277,'Enquires',1,'enquiries','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(278,'Charge Categories',1,'charge-categories.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(279,'Charges',1,'charges.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(280,'Doctor OPD Charges',1,'doctor-opd-charges.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(281,'Items Categories',1,'item-categories.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(282,'Items',1,'items.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(283,'Item Stocks',1,'item.stock.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(284,'Issued Items',1,'issued.item.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(285,'Diagnosis Categories',1,'diagnosis.category.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(286,'Diagnosis Tests',1,'patient.diagnosis.test.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(287,'Pathology Categories',1,'pathology.category.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(288,'Pathology Tests',1,'pathology.test.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(289,'Radiology Categories',1,'radiology.category.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(290,'Radiology Tests',1,'radiology.test.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(291,'Medicine Categories',1,'categories.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(292,'Medicine Brands',1,'brands.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(293,'Doctor Departments',1,'doctor-departments.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(294,'Schedules',1,'schedules.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(295,'Prescriptions',1,'prescriptions.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(296,'Cases',1,'patient-cases.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(297,'Case Handlers',1,'case-handlers.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(298,'Patient Admissions',1,'patient-admissions.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(299,'My Payrolls',1,'payroll','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(300,'Patient Cases',1,'patients.cases','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(301,'Testimonial',1,'testimonials.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(302,'Blood Donations',1,'blood-donations.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(303,'Blood Issues',1,'blood-issues.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(304,'Live Consultations',1,'live.consultation.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(305,'Live Meetings',1,'live.meeting.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(306,'Vaccinated Patients',1,'vaccinated-patients.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(307,'Vaccinations',1,'vaccinations.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(308,'Purchased Medicine',1,'medicine-purchase.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(309,'Pathology Units',1,'pathology.unit.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(310,'Pathology Parameters',1,'pathology.parameter.index','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice_boards`
--

DROP TABLE IF EXISTS `notice_boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice_boards` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notice_boards_tenant_id_foreign` (`tenant_id`),
  KEY `notice_boards_created_at_id_index` (`created_at`,`id`),
  CONSTRAINT `notice_boards_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_boards`
--

LOCK TABLES `notice_boards` WRITE;
/*!40000 ALTER TABLE `notice_boards` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice_boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` int NOT NULL,
  `notification_for` int NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `meta` text COLLATE utf8mb4_unicode_ci,
  `read_at` timestamp NULL DEFAULT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_tenant_id_foreign` (`tenant_id`),
  KEY `notifications_user_id_foreign` (`user_id`),
  CONSTRAINT `notifications_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurses`
--

DROP TABLE IF EXISTS `nurses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nurses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nurses_tenant_id_foreign` (`tenant_id`),
  KEY `nurses_user_id_foreign` (`user_id`),
  CONSTRAINT `nurses_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `nurses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurses`
--

LOCK TABLES `nurses` WRITE;
/*!40000 ALTER TABLE `nurses` DISABLE KEYS */;
/*!40000 ALTER TABLE `nurses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opd_diagnoses`
--

DROP TABLE IF EXISTS `opd_diagnoses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opd_diagnoses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `opd_patient_department_id` int unsigned NOT NULL,
  `report_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `report_date` datetime NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `report_generated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `opd_diagnoses_tenant_id_foreign` (`tenant_id`),
  KEY `opd_diagnoses_opd_patient_department_id_foreign` (`opd_patient_department_id`),
  CONSTRAINT `opd_diagnoses_opd_patient_department_id_foreign` FOREIGN KEY (`opd_patient_department_id`) REFERENCES `opd_patient_departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `opd_diagnoses_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opd_diagnoses`
--

LOCK TABLES `opd_diagnoses` WRITE;
/*!40000 ALTER TABLE `opd_diagnoses` DISABLE KEYS */;
/*!40000 ALTER TABLE `opd_diagnoses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opd_patient_departments`
--

DROP TABLE IF EXISTS `opd_patient_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opd_patient_departments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int unsigned NOT NULL,
  `opd_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symptoms` text COLLATE utf8mb4_unicode_ci,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `appointment_date` datetime NOT NULL,
  `case_id` int unsigned DEFAULT NULL,
  `is_old_patient` tinyint(1) DEFAULT '0',
  `doctor_id` bigint unsigned DEFAULT NULL,
  `standard_charge` double NOT NULL,
  `payment_mode` tinyint NOT NULL,
  `custom_field` longtext COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `opd_patient_departments_opd_number_unique` (`opd_number`),
  KEY `opd_patient_departments_tenant_id_foreign` (`tenant_id`),
  KEY `opd_patient_departments_patient_id_foreign` (`patient_id`),
  KEY `opd_patient_departments_case_id_foreign` (`case_id`),
  KEY `opd_patient_departments_doctor_id_foreign` (`doctor_id`),
  CONSTRAINT `opd_patient_departments_case_id_foreign` FOREIGN KEY (`case_id`) REFERENCES `patient_cases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `opd_patient_departments_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `opd_patient_departments_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `opd_patient_departments_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opd_patient_departments`
--

LOCK TABLES `opd_patient_departments` WRITE;
/*!40000 ALTER TABLE `opd_patient_departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `opd_patient_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opd_prescription_items`
--

DROP TABLE IF EXISTS `opd_prescription_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opd_prescription_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `opd_prescription_id` bigint unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  `medicine_id` int unsigned NOT NULL,
  `dosage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dose_interval` int NOT NULL,
  `day` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instruction` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `opd_prescription_items_tenant_id_foreign` (`tenant_id`),
  KEY `opd_prescription_items_opd_prescription_id_foreign` (`opd_prescription_id`),
  KEY `opd_prescription_items_category_id_foreign` (`category_id`),
  KEY `opd_prescription_items_medicine_id_foreign` (`medicine_id`),
  CONSTRAINT `opd_prescription_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `opd_prescription_items_medicine_id_foreign` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `opd_prescription_items_opd_prescription_id_foreign` FOREIGN KEY (`opd_prescription_id`) REFERENCES `opd_prescriptions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `opd_prescription_items_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opd_prescription_items`
--

LOCK TABLES `opd_prescription_items` WRITE;
/*!40000 ALTER TABLE `opd_prescription_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `opd_prescription_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opd_prescriptions`
--

DROP TABLE IF EXISTS `opd_prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opd_prescriptions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `opd_patient_department_id` int unsigned NOT NULL,
  `header_note` text COLLATE utf8mb4_unicode_ci,
  `footer_note` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `opd_prescriptions_tenant_id_foreign` (`tenant_id`),
  KEY `opd_prescriptions_opd_patient_department_id_foreign` (`opd_patient_department_id`),
  CONSTRAINT `opd_prescriptions_opd_patient_department_id_foreign` FOREIGN KEY (`opd_patient_department_id`) REFERENCES `opd_patient_departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `opd_prescriptions_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opd_prescriptions`
--

LOCK TABLES `opd_prescriptions` WRITE;
/*!40000 ALTER TABLE `opd_prescriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `opd_prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opd_timelines`
--

DROP TABLE IF EXISTS `opd_timelines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opd_timelines` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `opd_patient_department_id` int unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `visible_to_person` tinyint(1) NOT NULL DEFAULT '1',
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `opd_timelines_tenant_id_foreign` (`tenant_id`),
  KEY `opd_timelines_opd_patient_department_id_foreign` (`opd_patient_department_id`),
  CONSTRAINT `opd_timelines_opd_patient_department_id_foreign` FOREIGN KEY (`opd_patient_department_id`) REFERENCES `opd_patient_departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `opd_timelines_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opd_timelines`
--

LOCK TABLES `opd_timelines` WRITE;
/*!40000 ALTER TABLE `opd_timelines` DISABLE KEYS */;
/*!40000 ALTER TABLE `opd_timelines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_reports`
--

DROP TABLE IF EXISTS `operation_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operation_reports` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int unsigned NOT NULL,
  `case_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_id` bigint unsigned NOT NULL,
  `date` datetime NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_reports_tenant_id_foreign` (`tenant_id`),
  KEY `operation_reports_patient_id_foreign` (`patient_id`),
  KEY `operation_reports_date_index` (`date`),
  KEY `operation_reports_doctor_id_foreign` (`doctor_id`),
  CONSTRAINT `operation_reports_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `operation_reports_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `operation_reports_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_reports`
--

LOCK TABLES `operation_reports` WRITE;
/*!40000 ALTER TABLE `operation_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `operation_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_services`
--

DROP TABLE IF EXISTS `package_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `package_id` int unsigned NOT NULL,
  `service_id` int unsigned NOT NULL,
  `quantity` double NOT NULL,
  `rate` double NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `package_services_package_id_foreign` (`package_id`),
  KEY `package_services_service_id_foreign` (`service_id`),
  CONSTRAINT `package_services_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `package_services_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_services`
--

LOCK TABLES `package_services` WRITE;
/*!40000 ALTER TABLE `package_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `discount` double NOT NULL,
  `total_amount` double NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `packages_tenant_id_foreign` (`tenant_id`),
  KEY `packages_created_at_name_index` (`created_at`,`name`),
  CONSTRAINT `packages_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packages`
--

LOCK TABLES `packages` WRITE;
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
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
-- Table structure for table `pathology_categories`
--

DROP TABLE IF EXISTS `pathology_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pathology_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pathology_categories_tenant_id_foreign` (`tenant_id`),
  KEY `pathology_categories_name_index` (`name`),
  CONSTRAINT `pathology_categories_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pathology_categories`
--

LOCK TABLES `pathology_categories` WRITE;
/*!40000 ALTER TABLE `pathology_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `pathology_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pathology_parameter_items`
--

DROP TABLE IF EXISTS `pathology_parameter_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pathology_parameter_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pathology_id` int unsigned NOT NULL,
  `patient_result` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parameter_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pathology_parameter_items_pathology_id_foreign` (`pathology_id`),
  KEY `pathology_parameter_items_parameter_id_foreign` (`parameter_id`),
  CONSTRAINT `pathology_parameter_items_parameter_id_foreign` FOREIGN KEY (`parameter_id`) REFERENCES `pathology_parameters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pathology_parameter_items_pathology_id_foreign` FOREIGN KEY (`pathology_id`) REFERENCES `pathology_tests` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pathology_parameter_items`
--

LOCK TABLES `pathology_parameter_items` WRITE;
/*!40000 ALTER TABLE `pathology_parameter_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `pathology_parameter_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pathology_parameters`
--

DROP TABLE IF EXISTS `pathology_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pathology_parameters` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parameter_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_range` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_id` int unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pathology_parameters_tenant_id_foreign` (`tenant_id`),
  KEY `pathology_parameters_unit_id_foreign` (`unit_id`),
  CONSTRAINT `pathology_parameters_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pathology_parameters_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `pathology_units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pathology_parameters`
--

LOCK TABLES `pathology_parameters` WRITE;
/*!40000 ALTER TABLE `pathology_parameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `pathology_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pathology_tests`
--

DROP TABLE IF EXISTS `pathology_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pathology_tests` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `test_name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int unsigned NOT NULL,
  `unit` int DEFAULT NULL,
  `subcategory` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report_days` int DEFAULT NULL,
  `charge_category_id` int unsigned NOT NULL,
  `standard_charge` double NOT NULL,
  `patient_id` int unsigned DEFAULT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pathology_tests_tenant_id_foreign` (`tenant_id`),
  KEY `pathology_tests_category_id_foreign` (`category_id`),
  KEY `pathology_tests_charge_category_id_foreign` (`charge_category_id`),
  KEY `pathology_tests_test_name_index` (`test_name`),
  KEY `pathology_tests_patient_id_foreign` (`patient_id`),
  CONSTRAINT `pathology_tests_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `pathology_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pathology_tests_charge_category_id_foreign` FOREIGN KEY (`charge_category_id`) REFERENCES `charge_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pathology_tests_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pathology_tests_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pathology_tests`
--

LOCK TABLES `pathology_tests` WRITE;
/*!40000 ALTER TABLE `pathology_tests` DISABLE KEYS */;
/*!40000 ALTER TABLE `pathology_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pathology_units`
--

DROP TABLE IF EXISTS `pathology_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pathology_units` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pathology_units_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `pathology_units_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pathology_units`
--

LOCK TABLES `pathology_units` WRITE;
/*!40000 ALTER TABLE `pathology_units` DISABLE KEYS */;
/*!40000 ALTER TABLE `pathology_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_admissions`
--

DROP TABLE IF EXISTS `patient_admissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_admissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `patient_admission_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_id` int unsigned NOT NULL,
  `doctor_id` bigint unsigned NOT NULL,
  `admission_date` datetime NOT NULL,
  `discharge_date` datetime DEFAULT NULL,
  `package_id` int unsigned DEFAULT NULL,
  `insurance_id` int unsigned DEFAULT NULL,
  `bed_id` int unsigned DEFAULT NULL,
  `policy_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_relation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_admissions_patient_admission_id_unique` (`patient_admission_id`),
  KEY `patient_admissions_tenant_id_foreign` (`tenant_id`),
  KEY `patient_admissions_patient_id_foreign` (`patient_id`),
  KEY `patient_admissions_doctor_id_foreign` (`doctor_id`),
  KEY `patient_admissions_package_id_foreign` (`package_id`),
  KEY `patient_admissions_insurance_id_foreign` (`insurance_id`),
  KEY `patient_admissions_bed_id_foreign` (`bed_id`),
  KEY `patient_admissions_admission_date_index` (`admission_date`),
  CONSTRAINT `patient_admissions_bed_id_foreign` FOREIGN KEY (`bed_id`) REFERENCES `beds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `patient_admissions_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `patient_admissions_insurance_id_foreign` FOREIGN KEY (`insurance_id`) REFERENCES `insurances` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `patient_admissions_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `patient_admissions_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `patient_admissions_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_admissions`
--

LOCK TABLES `patient_admissions` WRITE;
/*!40000 ALTER TABLE `patient_admissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_admissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_cases`
--

DROP TABLE IF EXISTS `patient_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_cases` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `case_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_id` int unsigned NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_id` bigint unsigned NOT NULL,
  `date` datetime NOT NULL,
  `fee` double NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_cases_case_id_unique` (`case_id`),
  KEY `patient_cases_tenant_id_foreign` (`tenant_id`),
  KEY `patient_cases_patient_id_foreign` (`patient_id`),
  KEY `patient_cases_doctor_id_foreign` (`doctor_id`),
  KEY `patient_cases_date_index` (`date`),
  CONSTRAINT `patient_cases_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `patient_cases_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `patient_cases_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_cases`
--

LOCK TABLES `patient_cases` WRITE;
/*!40000 ALTER TABLE `patient_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_diagnosis_properties`
--

DROP TABLE IF EXISTS `patient_diagnosis_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_diagnosis_properties` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `patient_diagnosis_id` bigint unsigned NOT NULL,
  `property_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patient_diagnosis_properties_created_at_index` (`created_at`),
  KEY `patient_diagnosis_properties_patient_diagnosis_id_foreign` (`patient_diagnosis_id`),
  CONSTRAINT `patient_diagnosis_properties_patient_diagnosis_id_foreign` FOREIGN KEY (`patient_diagnosis_id`) REFERENCES `patient_diagnosis_tests` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_diagnosis_properties`
--

LOCK TABLES `patient_diagnosis_properties` WRITE;
/*!40000 ALTER TABLE `patient_diagnosis_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_diagnosis_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_diagnosis_tests`
--

DROP TABLE IF EXISTS `patient_diagnosis_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_diagnosis_tests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int unsigned NOT NULL,
  `doctor_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `report_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patient_diagnosis_tests_created_at_index` (`created_at`),
  KEY `patient_diagnosis_tests_tenant_id_foreign` (`tenant_id`),
  KEY `patient_diagnosis_tests_patient_id_foreign` (`patient_id`),
  KEY `patient_diagnosis_tests_doctor_id_foreign` (`doctor_id`),
  KEY `patient_diagnosis_tests_category_id_foreign` (`category_id`),
  CONSTRAINT `patient_diagnosis_tests_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `diagnosis_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `patient_diagnosis_tests_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `patient_diagnosis_tests_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `patient_diagnosis_tests_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_diagnosis_tests`
--

LOCK TABLES `patient_diagnosis_tests` WRITE;
/*!40000 ALTER TABLE `patient_diagnosis_tests` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_diagnosis_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `custom_field` longtext COLLATE utf8mb4_unicode_ci,
  `template_id` int unsigned DEFAULT NULL,
  `patient_unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patients_patient_unique_id_unique` (`patient_unique_id`),
  KEY `patients_tenant_id_foreign` (`tenant_id`),
  KEY `patients_user_id_foreign` (`user_id`),
  KEY `patients_template_id_foreign` (`template_id`),
  CONSTRAINT `patients_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `smart_patient_cards` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `patients_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `patients_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,7,'23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 04:34:36','2025-08-13 04:34:36',NULL,NULL,'IC9ONLPB'),(2,8,'23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 05:05:02','2025-08-13 05:05:02',NULL,NULL,'KYTBMAFO'),(3,13,'5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:17:02','2025-08-13 05:17:02',NULL,NULL,'0PDOGE9P'),(4,15,'5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:19:59','2025-08-13 05:19:59',NULL,NULL,'CZH0K2EF');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `payment_date` date NOT NULL,
  `account_id` int unsigned NOT NULL,
  `pay_to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payments_tenant_id_foreign` (`tenant_id`),
  KEY `payments_account_id_foreign` (`account_id`),
  KEY `payments_payment_date_index` (`payment_date`),
  CONSTRAINT `payments_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `payments_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'manage_users','web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(2,'manage_beds','web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(3,'manage_wards','web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(4,'manage_appointments','web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(5,'manage_prescriptions','web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(6,'manage_patients','web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(7,'manage_blood_bank','web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(8,'manage_reports','web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(9,'manage_payrolls','web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(10,'manage_settings','web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(11,'manage_notice_board','web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(12,'manage_doctors','web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(13,'manage_nurses','web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(14,'manage_receptionists','web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(15,'manage_pharmacists','web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(16,'manage_accountants','web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(17,'manage_invoices','web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(18,'manage_operations_history','web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(19,'manage_admit_history','web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(20,'manage_blood_donor','web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(21,'manage_medicines','web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(22,'manage_department','web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(23,'manage_doctor_departments','web','2025-08-13 03:21:44','2025-08-13 03:21:44'),(24,'manage_lab_technicians','web','2025-08-13 03:21:45','2025-08-13 03:21:45');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
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
-- Table structure for table `pharmacists`
--

DROP TABLE IF EXISTS `pharmacists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pharmacists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pharmacists_tenant_id_foreign` (`tenant_id`),
  KEY `pharmacists_user_id_foreign` (`user_id`),
  CONSTRAINT `pharmacists_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pharmacists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacists`
--

LOCK TABLES `pharmacists` WRITE;
/*!40000 ALTER TABLE `pharmacists` DISABLE KEYS */;
/*!40000 ALTER TABLE `pharmacists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postals`
--

DROP TABLE IF EXISTS `postals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `type` int DEFAULT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `postals_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `postals_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postals`
--

LOCK TABLES `postals` WRITE;
/*!40000 ALTER TABLE `postals` DISABLE KEYS */;
/*!40000 ALTER TABLE `postals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescriptions`
--

DROP TABLE IF EXISTS `prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescriptions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int unsigned NOT NULL,
  `doctor_id` bigint unsigned DEFAULT NULL,
  `food_allergies` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tendency_bleed` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heart_disease` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `high_blood_pressure` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diabetic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surgery` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accident` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `others` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medical_history` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_medication` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `female_pregnancy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breast_feeding` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `health_insurance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `low_income` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `plus_rate` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temperature` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `problem_description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `advice` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_visit_qty` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_visit_time` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prescriptions_tenant_id_foreign` (`tenant_id`),
  KEY `prescriptions_patient_id_foreign` (`patient_id`),
  KEY `prescriptions_doctor_id_foreign` (`doctor_id`),
  CONSTRAINT `prescriptions_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prescriptions_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prescriptions_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescriptions`
--

LOCK TABLES `prescriptions` WRITE;
/*!40000 ALTER TABLE `prescriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescriptions_medicines`
--

DROP TABLE IF EXISTS `prescriptions_medicines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescriptions_medicines` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prescription_id` int unsigned NOT NULL,
  `medicine` int unsigned NOT NULL,
  `dosage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dose_interval` int NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prescriptions_medicines_prescription_id_foreign` (`prescription_id`),
  KEY `prescriptions_medicines_medicine_foreign` (`medicine`),
  CONSTRAINT `prescriptions_medicines_medicine_foreign` FOREIGN KEY (`medicine`) REFERENCES `medicines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prescriptions_medicines_prescription_id_foreign` FOREIGN KEY (`prescription_id`) REFERENCES `prescriptions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescriptions_medicines`
--

LOCK TABLES `prescriptions_medicines` WRITE;
/*!40000 ALTER TABLE `prescriptions_medicines` DISABLE KEYS */;
/*!40000 ALTER TABLE `prescriptions_medicines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_medicines`
--

DROP TABLE IF EXISTS `purchase_medicines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_medicines` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `purchase_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `net_amount` double(8,2) NOT NULL,
  `payment_type` int NOT NULL,
  `payment_status` tinyint(1) DEFAULT '1',
  `discount` double(8,2) NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_medicines_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `purchase_medicines_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_medicines`
--

LOCK TABLES `purchase_medicines` WRITE;
/*!40000 ALTER TABLE `purchase_medicines` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_medicines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchased_medicines`
--

DROP TABLE IF EXISTS `purchased_medicines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchased_medicines` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `purchase_medicines_id` bigint unsigned NOT NULL,
  `medicine_id` int unsigned DEFAULT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `lot_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` double(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchased_medicines_medicine_id_foreign` (`medicine_id`),
  KEY `purchased_medicines_purchase_medicines_id_foreign` (`purchase_medicines_id`),
  KEY `purchased_medicines_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `purchased_medicines_medicine_id_foreign` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `purchased_medicines_purchase_medicines_id_foreign` FOREIGN KEY (`purchase_medicines_id`) REFERENCES `purchase_medicines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `purchased_medicines_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchased_medicines`
--

LOCK TABLES `purchased_medicines` WRITE;
/*!40000 ALTER TABLE `purchased_medicines` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchased_medicines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radiology_categories`
--

DROP TABLE IF EXISTS `radiology_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `radiology_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `radiology_categories_tenant_id_foreign` (`tenant_id`),
  KEY `radiology_categories_name_index` (`name`),
  CONSTRAINT `radiology_categories_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radiology_categories`
--

LOCK TABLES `radiology_categories` WRITE;
/*!40000 ALTER TABLE `radiology_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `radiology_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radiology_tests`
--

DROP TABLE IF EXISTS `radiology_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `radiology_tests` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `test_name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int unsigned NOT NULL,
  `subcategory` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report_days` int DEFAULT NULL,
  `charge_category_id` int unsigned NOT NULL,
  `standard_charge` double NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `charge_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `radiology_tests_tenant_id_foreign` (`tenant_id`),
  KEY `radiology_tests_category_id_foreign` (`category_id`),
  KEY `radiology_tests_charge_category_id_foreign` (`charge_category_id`),
  KEY `radiology_tests_test_name_index` (`test_name`),
  KEY `radiology_tests_charge_id_foreign` (`charge_id`),
  CONSTRAINT `radiology_tests_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `radiology_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `radiology_tests_charge_category_id_foreign` FOREIGN KEY (`charge_category_id`) REFERENCES `charge_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `radiology_tests_charge_id_foreign` FOREIGN KEY (`charge_id`) REFERENCES `charges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `radiology_tests_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radiology_tests`
--

LOCK TABLES `radiology_tests` WRITE;
/*!40000 ALTER TABLE `radiology_tests` DISABLE KEYS */;
/*!40000 ALTER TABLE `radiology_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receptionists`
--

DROP TABLE IF EXISTS `receptionists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receptionists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `receptionists_tenant_id_foreign` (`tenant_id`),
  KEY `receptionists_user_id_foreign` (`user_id`),
  CONSTRAINT `receptionists_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `receptionists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receptionists`
--

LOCK TABLES `receptionists` WRITE;
/*!40000 ALTER TABLE `receptionists` DISABLE KEYS */;
INSERT INTO `receptionists` VALUES (1,10,'23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 05:08:25','2025-08-13 05:08:25'),(2,16,'5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:21:22','2025-08-13 05:21:22');
/*!40000 ALTER TABLE `receptionists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(4,2),(5,2),(6,2),(7,2),(8,2),(11,2),(12,2),(13,2),(14,2),(15,2),(18,2),(20,2),(21,2),(22,2),(4,3),(5,3),(7,3),(8,3),(11,3),(12,3),(13,3),(14,3),(15,3),(19,3),(21,3),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(8,4),(11,4),(12,4),(13,4),(14,4),(15,4),(18,4),(20,4),(21,4),(22,4),(2,5),(3,5),(4,5),(6,5),(7,5),(8,5),(11,5),(12,5),(13,5),(14,5),(15,5),(18,5),(19,5),(20,5),(22,5),(24,5),(11,6),(15,6),(21,6),(11,7),(15,7),(21,7),(1,10),(2,10),(3,10),(4,10),(5,10),(6,10),(7,10),(8,10),(9,10),(10,10),(11,10),(12,10),(13,10),(14,10),(15,10),(16,10),(17,10),(18,10),(19,10),(20,10),(21,10),(22,10),(23,10);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_medicines`
--

DROP TABLE IF EXISTS `sale_medicines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_medicines` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `medicine_bill_id` int unsigned NOT NULL,
  `medicine_id` int unsigned NOT NULL,
  `sale_quantity` int NOT NULL,
  `sale_price` double(8,2) NOT NULL,
  `tax` double(8,2) NOT NULL,
  `expiry_date` date NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_medicines`
--

LOCK TABLES `sale_medicines` WRITE;
/*!40000 ALTER TABLE `sale_medicines` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_medicines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_days`
--

DROP TABLE IF EXISTS `schedule_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule_days` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` bigint unsigned NOT NULL,
  `schedule_id` int unsigned NOT NULL,
  `available_on` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `available_from` time NOT NULL,
  `available_to` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `schedule_days_doctor_id_foreign` (`doctor_id`),
  KEY `schedule_days_schedule_id_foreign` (`schedule_id`),
  CONSTRAINT `schedule_days_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `schedule_days_schedule_id_foreign` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_days`
--

LOCK TABLES `schedule_days` WRITE;
/*!40000 ALTER TABLE `schedule_days` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule_days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` bigint unsigned NOT NULL,
  `per_patient_time` time NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `schedules_tenant_id_foreign` (`tenant_id`),
  KEY `schedules_doctor_id_foreign` (`doctor_id`),
  CONSTRAINT `schedules_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `schedules_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_fives`
--

DROP TABLE IF EXISTS `section_fives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_fives` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `main_img_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_img_url_one` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_img_url_two` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_img_url_three` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_img_url_four` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_one_number` int NOT NULL,
  `card_two_number` int NOT NULL,
  `card_three_number` int NOT NULL,
  `card_four_number` int NOT NULL,
  `card_one_text` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_two_text` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_three_text` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_four_text` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_fives`
--

LOCK TABLES `section_fives` WRITE;
/*!40000 ALTER TABLE `section_fives` DISABLE KEYS */;
INSERT INTO `section_fives` VALUES (1,'/assets/landing-theme/images/about/07.svg','/assets/landing-theme/images/banner/card_img_url_one.png','/assets/landing-theme/images/banner/card_img_url_two.png','/assets/landing-theme/images/banner/card_img_url_three.png','/assets/landing-theme/images/banner/card_imf_url_four.png',234,455,365,528,'Services','Team Members','Happy Patients','Tonic Research','2025-08-13 03:21:45','2025-08-13 03:21:45');
/*!40000 ALTER TABLE `section_fives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_fours`
--

DROP TABLE IF EXISTS `section_fours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_fours` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `text_main` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_secondary` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url_one` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url_two` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url_three` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url_four` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url_five` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url_six` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_text_one` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_text_two` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_text_three` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_text_four` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_text_five` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_text_six` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_text_one_secondary` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_text_two_secondary` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_text_three_secondary` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_text_four_secondary` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_text_five_secondary` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_text_six_secondary` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_fours`
--

LOCK TABLES `section_fours` WRITE;
/*!40000 ALTER TABLE `section_fours` DISABLE KEYS */;
INSERT INTO `section_fours` VALUES (1,'Grow Your Hospital','We Help To Grow Your Hospital Beyond Your Expectation','/assets/landing-theme/images/banner/bulit_seo.png','/assets/landing-theme/images/banner/hospital_profile.png','/assets/landing-theme/images/banner/online_appointment.png','/assets/landing-theme/images/banner/articles.png','/assets/landing-theme/images/banner/easy_to_use.png','/assets/landing-theme/images/banner/support.jpeg','Built SEO','Hospital Profile','Online Appointment','Articles','Easy to Use','24*7 Support','SEO Brings Higher patient retention Rates which will Results into Higher Conversion Rate.','More than 80% of people searching for medical professionals make their selection from HMS.','Provide comfort to your patients in this pandemic situation to book online appointments.','Keep updated with latest techniques/knowledge/research to build a professional network.','Top quality Software with all Features easy to use and easily accessible.','Any time we are here to help you.','2025-08-13 03:21:45','2025-08-13 03:21:45');
/*!40000 ALTER TABLE `section_fours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_ones`
--

DROP TABLE IF EXISTS `section_ones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_ones` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `text_main` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_secondary` varchar(135) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_ones`
--

LOCK TABLES `section_ones` WRITE;
/*!40000 ALTER TABLE `section_ones` DISABLE KEYS */;
INSERT INTO `section_ones` VALUES (1,'Manage Hospital Never Before','A Next Level Evolution In Healthcare IT, Web Based EMR, Revenue Cycle Management Solution, Designed To Meet The Opportunities.','/assets/landing-theme/images/banner/section_one.png','2025-08-13 03:21:45','2025-08-13 03:21:45');
/*!40000 ALTER TABLE `section_ones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_threes`
--

DROP TABLE IF EXISTS `section_threes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_threes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `text_main` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_secondary` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_one` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_two` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_three` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_four` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_five` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_threes`
--

LOCK TABLES `section_threes` WRITE;
/*!40000 ALTER TABLE `section_threes` DISABLE KEYS */;
INSERT INTO `section_threes` VALUES (1,'Why Hospital SAAS?','We have implemented, Hospital SAAS for our patient\'s registration, appointment scheduling, inpatient management, ICU management, OT management, pharmacy.','/assets/landing-theme/images/banner/section_three_sass.png','Fully Secure','Easy To Use','Regular Updates','24*7 Support',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45');
/*!40000 ALTER TABLE `section_threes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_twos`
--

DROP TABLE IF EXISTS `section_twos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_twos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `text_main` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_secondary` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_one_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_one_text` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_one_text_secondary` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_two_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_two_text` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_two_text_secondary` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_third_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_third_text` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_third_text_secondary` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_twos`
--

LOCK TABLES `section_twos` WRITE;
/*!40000 ALTER TABLE `section_twos` DISABLE KEYS */;
INSERT INTO `section_twos` VALUES (1,'Protect Your Health','Our medical clinic provides quality care for the entire family while maintaining a personable atmosphere best services.','/assets/landing-theme/images/banner/appointment_schedule.png','Schedule Appointment','Makes it Easy for patients to Book Appointment online from anywhere &amp; anytime.','/assets/landing-theme/images/banner/ipd_manage.png','OPD Management','Easily Manage Appointments with one click go to Medical Records of Patient to Save time.IP','/assets/landing-theme/images/banner/opd_manage.png','IPD Management','This module of hospital management system is designed to manage all Inpatient department','2025-08-13 03:21:45','2025-08-13 03:21:45');
/*!40000 ALTER TABLE `section_twos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_sliders`
--

DROP TABLE IF EXISTS `service_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_sliders`
--

LOCK TABLES `service_sliders` WRITE;
/*!40000 ALTER TABLE `service_sliders` DISABLE KEYS */;
INSERT INTO `service_sliders` VALUES (1,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(2,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(3,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(4,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(5,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(6,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(7,'2025-08-13 03:21:45','2025-08-13 03:21:45');
/*!40000 ALTER TABLE `service_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` int NOT NULL,
  `rate` double NOT NULL,
  `status` int NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `services_tenant_id_foreign` (`tenant_id`),
  KEY `services_name_index` (`name`),
  CONSTRAINT `services_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `settings_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `settings_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'phone_pe_enable',NULL,NULL,'2025-08-13 03:21:41','2025-08-13 03:21:41'),(2,'phonepe_merchant_id',NULL,NULL,'2025-08-13 03:21:41','2025-08-13 03:21:41'),(3,'phonepe_merchant_user_id',NULL,NULL,'2025-08-13 03:21:41','2025-08-13 03:21:41'),(4,'phonepe_env',NULL,NULL,'2025-08-13 03:21:41','2025-08-13 03:21:41'),(5,'phonepe_salt_key',NULL,NULL,'2025-08-13 03:21:41','2025-08-13 03:21:41'),(6,'phonepe_salt_index',NULL,NULL,'2025-08-13 03:21:41','2025-08-13 03:21:41'),(7,'phonepe_merchant_transaction_id',NULL,NULL,'2025-08-13 03:21:41','2025-08-13 03:21:41'),(8,'flutterwave_enable',NULL,NULL,'2025-08-13 03:21:41','2025-08-13 03:21:41'),(9,'flutterwave_public_key',NULL,NULL,'2025-08-13 03:21:41','2025-08-13 03:21:41'),(10,'flutterwave_secret_key',NULL,NULL,'2025-08-13 03:21:41','2025-08-13 03:21:41'),(11,'app_name','HMS',NULL,'2025-08-13 03:21:44','2025-08-13 03:21:44'),(12,'app_logo','web/img/hms-saas-logo.png',NULL,'2025-08-13 03:21:44','2025-08-13 03:21:44'),(13,'company_name','InfyOmLabs',NULL,'2025-08-13 03:21:44','2025-08-13 03:21:44'),(14,'current_currency','inr',NULL,'2025-08-13 03:21:44','2025-08-13 03:21:44'),(15,'hospital_address','16/A saint Joseph Park',NULL,'2025-08-13 03:21:44','2025-08-13 03:21:44'),(16,'hospital_email','cityhospital@gmail.com',NULL,'2025-08-13 03:21:44','2025-08-13 03:21:44'),(17,'hospital_phone','+919876543210',NULL,'2025-08-13 03:21:44','2025-08-13 03:21:44'),(18,'hospital_from_day','Mon to Fri',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(19,'hospital_from_time','9 AM to 9 PM',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(20,'favicon','web/img/hms-saas-favicon.ico',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(21,'facebook_url','https://www.facebook.com/test',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(22,'twitter_url','https://twitter.com/test?lang=en',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(23,'instagram_url','https://www.instagram.com/?hl=en',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(24,'linkedIn_url','https://www.linkedin.com/test',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(25,'about_us','Over past 10+ years of experience and skills in various technologies, we built great scalable products.\nWhatever technology we worked with, we just not build products for our clients but we a',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(26,'enable_google_recaptcha','0',NULL,'2025-08-13 03:21:45','2025-08-13 03:21:45'),(43,'app_name','HMS','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(44,'app_logo','web/img/hms-saas-logo.png','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(45,'company_name','InfyOmLabs','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(46,'current_currency','inr','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(47,'hospital_address','16/A saint Joseph Park','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(48,'hospital_email','cityhospital@gmail.com','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(49,'hospital_phone','+919876543210','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(50,'hospital_from_day','Mon to Fri','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(51,'hospital_from_time','9 AM to 9 PM','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(52,'favicon','web/img/hms-saas-favicon.ico','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(53,'facebook_url','https://www.facebook.com/test','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(54,'twitter_url','https://twitter.com/test?lang=en','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(55,'instagram_url','https://www.instagram.com/?hl=en','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(56,'linkedIn_url','https://www.linkedin.com/test','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(57,'about_us','Over past 10+ years of experience and skills in various technologies, we built great scalable products.\nWhatever technology we worked with, we just not build products for our clients but we a','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:24','2025-08-13 03:34:24'),(58,'enable_google_recaptcha','0','23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-13 03:34:25','2025-08-13 03:34:25'),(59,'app_name','HMS','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(60,'app_logo','web/img/hms-saas-logo.png','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(61,'company_name','InfyOmLabs','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(62,'current_currency','inr','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(63,'hospital_address','16/A saint Joseph Park','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(64,'hospital_email','cityhospital@gmail.com','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(65,'hospital_phone','+919876543210','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(66,'hospital_from_day','Mon to Fri','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(67,'hospital_from_time','9 AM to 9 PM','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(68,'favicon','web/img/hms-saas-favicon.ico','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(69,'facebook_url','https://www.facebook.com/test','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(70,'twitter_url','https://twitter.com/test?lang=en','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(71,'instagram_url','https://www.instagram.com/?hl=en','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(72,'linkedIn_url','https://www.linkedin.com/test','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(73,'about_us','Over past 10+ years of experience and skills in various technologies, we built great scalable products.\nWhatever technology we worked with, we just not build products for our clients but we a','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37'),(74,'enable_google_recaptcha','0','5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 05:11:37','2025-08-13 05:11:37');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smart_patient_cards`
--

DROP TABLE IF EXISTS `smart_patient_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `smart_patient_cards` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `template_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_email` tinyint(1) NOT NULL,
  `show_phone` tinyint(1) NOT NULL,
  `show_dob` tinyint(1) NOT NULL,
  `show_blood_group` tinyint(1) NOT NULL,
  `show_address` tinyint(1) NOT NULL,
  `show_patient_unique_id` tinyint(1) NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `smart_patient_cards_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `smart_patient_cards_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smart_patient_cards`
--

LOCK TABLES `smart_patient_cards` WRITE;
/*!40000 ALTER TABLE `smart_patient_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `smart_patient_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms`
--

DROP TABLE IF EXISTS `sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `send_to` bigint unsigned DEFAULT NULL,
  `region_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_by` bigint unsigned NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sms_tenant_id_foreign` (`tenant_id`),
  KEY `sms_send_to_foreign` (`send_to`),
  KEY `sms_send_by_foreign` (`send_by`),
  CONSTRAINT `sms_send_by_foreign` FOREIGN KEY (`send_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sms_send_to_foreign` FOREIGN KEY (`send_to`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sms_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms`
--

LOCK TABLES `sms` WRITE;
/*!40000 ALTER TABLE `sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribes`
--

DROP TABLE IF EXISTS `subscribes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscribe` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscribes_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribes`
--

LOCK TABLES `subscribes` WRITE;
/*!40000 ALTER TABLE `subscribes` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_plans`
--

DROP TABLE IF EXISTS `subscription_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription_plans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'usd',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double DEFAULT '0',
  `frequency` int NOT NULL DEFAULT '1' COMMENT '1 = Month, 2 = Year',
  `is_default` int NOT NULL DEFAULT '0',
  `trial_days` int NOT NULL DEFAULT '0' COMMENT 'Default validity will be 7 trial days',
  `sms_limit` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_plans`
--

LOCK TABLES `subscription_plans` WRITE;
/*!40000 ALTER TABLE `subscription_plans` DISABLE KEYS */;
INSERT INTO `subscription_plans` VALUES (1,'usd','Standard',10,1,1,7,0,'2025-08-13 03:21:45','2025-08-13 03:21:45');
/*!40000 ALTER TABLE `subscription_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `subscription_plan_id` bigint unsigned DEFAULT NULL,
  `transaction_id` bigint unsigned DEFAULT NULL,
  `plan_amount` double(8,2) DEFAULT '0.00',
  `plan_frequency` int NOT NULL DEFAULT '1' COMMENT '1 = Month, 2 = Year',
  `starts_at` datetime NOT NULL,
  `ends_at` datetime NOT NULL,
  `trial_ends_at` datetime DEFAULT NULL,
  `sms_limit` bigint NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subscriptions_user_id_index` (`user_id`),
  KEY `subscriptions_subscription_plan_id_index` (`subscription_plan_id`),
  KEY `subscriptions_transaction_id_index` (`transaction_id`),
  KEY `subscriptions_plan_amount_index` (`plan_amount`),
  KEY `subscriptions_plan_frequency_index` (`plan_frequency`),
  KEY `subscriptions_starts_at_index` (`starts_at`),
  KEY `subscriptions_ends_at_index` (`ends_at`),
  KEY `subscriptions_trial_ends_at_index` (`trial_ends_at`),
  KEY `subscriptions_status_index` (`status`),
  CONSTRAINT `subscriptions_subscription_plan_id_foreign` FOREIGN KEY (`subscription_plan_id`) REFERENCES `subscription_plans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `subscriptions_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (2,5,1,NULL,10.00,1,'2025-08-12 22:34:25','2025-08-19 22:34:25','2025-08-19 22:34:25',0,1,'2025-08-13 03:34:25','2025-08-13 03:34:25'),(3,11,1,NULL,10.00,1,'2025-08-13 00:11:37','2025-08-20 00:11:37','2025-08-20 00:11:37',0,1,'2025-08-13 05:11:37','2025-08-13 05:11:37');
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `super_admin_currency_settings`
--

DROP TABLE IF EXISTS `super_admin_currency_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `super_admin_currency_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `super_admin_currency_settings`
--

LOCK TABLES `super_admin_currency_settings` WRITE;
/*!40000 ALTER TABLE `super_admin_currency_settings` DISABLE KEYS */;
INSERT INTO `super_admin_currency_settings` VALUES (1,'United states dollar','USD','$','2025-08-13 03:21:36','2025-08-13 03:21:36',NULL),(2,'Indian rupee','INR','₹','2025-08-13 03:21:36','2025-08-13 03:21:36',NULL),(3,'Euro','EUR','€','2025-08-13 03:21:36','2025-08-13 03:21:36',NULL),(4,'Australian Dollar','AUD','AU$','2025-08-13 03:21:36','2025-08-13 03:21:36',NULL),(5,'Japanese Yen','JPY','¥','2025-08-13 03:21:36','2025-08-13 03:21:36',NULL),(6,'British Pound Sterling','GBP','£','2025-08-13 03:21:36','2025-08-13 03:21:36',NULL),(7,'Canadian Dollar','CAD','C$','2025-08-13 03:21:36','2025-08-13 03:21:36',NULL),(8,'Kenyan Shilling','KES','Ksh','2025-08-13 03:21:36','2025-08-13 03:21:36',NULL),(9,'Swiss Franc','CHF','CHF','2025-08-13 03:21:36','2025-08-13 03:21:36',NULL);
/*!40000 ALTER TABLE `super_admin_currency_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `super_admin_enquiries`
--

DROP TABLE IF EXISTS `super_admin_enquiries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `super_admin_enquiries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `super_admin_enquiries`
--

LOCK TABLES `super_admin_enquiries` WRITE;
/*!40000 ALTER TABLE `super_admin_enquiries` DISABLE KEYS */;
/*!40000 ALTER TABLE `super_admin_enquiries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `super_admin_settings`
--

DROP TABLE IF EXISTS `super_admin_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `super_admin_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `super_admin_settings`
--

LOCK TABLES `super_admin_settings` WRITE;
/*!40000 ALTER TABLE `super_admin_settings` DISABLE KEYS */;
INSERT INTO `super_admin_settings` VALUES (1,'default_country_code','in','2025-08-13 03:21:36','2025-08-13 03:21:36'),(2,'super_admin_currency','inr','2025-08-13 03:21:36','2025-08-13 03:21:36'),(3,'enable_google_recaptcha','0','2025-08-13 03:21:36','2025-08-13 03:21:36'),(4,'google_captcha_key','','2025-08-13 03:21:36','2025-08-13 03:21:36'),(5,'google_captcha_secret','','2025-08-13 03:21:36','2025-08-13 03:21:36'),(6,'stripe_key','','2025-08-13 03:21:37','2025-08-13 03:21:37'),(7,'stripe_secret','','2025-08-13 03:21:37','2025-08-13 03:21:37'),(8,'stripe_enable','0','2025-08-13 03:21:37','2025-08-13 03:21:37'),(9,'paypal_key','','2025-08-13 03:21:37','2025-08-13 03:21:37'),(10,'paypal_secret','','2025-08-13 03:21:37','2025-08-13 03:21:37'),(11,'paypal_mode','','2025-08-13 03:21:37','2025-08-13 03:21:37'),(12,'paypal_enable','0','2025-08-13 03:21:37','2025-08-13 03:21:37'),(13,'razorpay_key','','2025-08-13 03:21:37','2025-08-13 03:21:37'),(14,'razorpay_secret','','2025-08-13 03:21:37','2025-08-13 03:21:37'),(15,'razorpay_enable','0','2025-08-13 03:21:37','2025-08-13 03:21:37'),(16,'default_language','en','2025-08-13 03:21:38','2025-08-13 03:21:38'),(17,'manual_instruction','Manual Instruction','2025-08-13 03:21:41','2025-08-13 03:21:41'),(18,'paystack_key',NULL,'2025-08-13 03:21:42','2025-08-13 03:21:42'),(19,'paystack_secret',NULL,'2025-08-13 03:21:42','2025-08-13 03:21:42'),(20,'paystack_enable','0','2025-08-13 03:21:42','2025-08-13 03:21:42'),(21,'phonepe_merchant_id',NULL,'2025-08-13 03:21:42','2025-08-13 03:21:42'),(22,'phonepe_merchant_user_id',NULL,'2025-08-13 03:21:42','2025-08-13 03:21:42'),(23,'phonepe_env',NULL,'2025-08-13 03:21:42','2025-08-13 03:21:42'),(24,'phonepe_salt_key',NULL,'2025-08-13 03:21:42','2025-08-13 03:21:42'),(25,'phonepe_salt_index',NULL,'2025-08-13 03:21:42','2025-08-13 03:21:42'),(26,'phonepe_merchant_transaction_id',NULL,'2025-08-13 03:21:42','2025-08-13 03:21:42'),(27,'phonepe_enable','0','2025-08-13 03:21:42','2025-08-13 03:21:42'),(28,'flutterwave_key',NULL,'2025-08-13 03:21:42','2025-08-13 03:21:42'),(29,'flutterwave_secret',NULL,'2025-08-13 03:21:42','2025-08-13 03:21:42'),(30,'flutterwave_enable','0','2025-08-13 03:21:42','2025-08-13 03:21:42'),(31,'app_name','InfyHMS','2025-08-13 03:21:45','2025-08-13 03:21:45'),(32,'app_logo','web/img/hms-saas-logo.png','2025-08-13 03:21:45','2025-08-13 03:21:45'),(33,'favicon','web/img/hms-saas-favicon.ico','2025-08-13 03:21:45','2025-08-13 03:21:45'),(34,'footer_text','Over past 10+ years of experience and skills in various technologies, we built great scalable products. Whatever technology we worked with, we just not build products for our clients but we a','2025-08-13 03:21:45','2025-08-13 03:21:45'),(35,'address','423B, Road Wordwide Country, USA','2025-08-13 03:21:45','2025-08-13 03:21:45'),(36,'email','admin@hms.com','2025-08-13 03:21:45','2025-08-13 03:21:45'),(37,'phone','+91 2345678900','2025-08-13 03:21:45','2025-08-13 03:21:45'),(38,'facebook_url','https://www.facebook.com/test/','2025-08-13 03:21:45','2025-08-13 03:21:45'),(39,'twitter_url','https://twitter.com/test?lang=en','2025-08-13 03:21:45','2025-08-13 03:21:45'),(40,'instagram_url','https://www.instagram.com/?hl=en','2025-08-13 03:21:45','2025-08-13 03:21:45'),(41,'linkedin_url','https://www.linkedin.com/test','2025-08-13 03:21:45','2025-08-13 03:21:45'),(42,'plan_expire_notification','6','2025-08-13 03:21:45','2025-08-13 03:21:45');
/*!40000 ALTER TABLE `super_admin_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenants`
--

DROP TABLE IF EXISTS `tenants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenants` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hospital_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tenants_tenant_username_unique` (`tenant_username`),
  UNIQUE KEY `tenants_hospital_name_unique` (`hospital_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenants`
--

LOCK TABLES `tenants` WRITE;
/*!40000 ALTER TABLE `tenants` DISABLE KEYS */;
INSERT INTO `tenants` VALUES ('23157839-2e82-4416-b4c5-e8579c4c4f65','DrGalvez','BriSalud','2025-08-13 03:34:24','2025-08-13 03:34:24','[]'),('5b0da0a8-1301-4621-a69a-bc405a85afdb','Pedro','Bonamedic','2025-08-13 05:11:37','2025-08-13 05:11:37','[]');
/*!40000 ALTER TABLE `tenants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `testimonials_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `testimonials_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` int NOT NULL COMMENT '1 = Stripe, 2 = Paypal',
  `amount` double(8,2) NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `status` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_manual_payment` bigint unsigned DEFAULT '0',
  `meta` longtext COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `transactions_transaction_id_index` (`transaction_id`),
  KEY `transactions_payment_type_index` (`payment_type`),
  KEY `transactions_amount_index` (`amount`),
  KEY `transactions_user_id_index` (`user_id`),
  KEY `transactions_status_index` (`status`),
  KEY `transactions_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `transactions_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `used_medicines`
--

DROP TABLE IF EXISTS `used_medicines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `used_medicines` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `stock_used` int NOT NULL,
  `medicine_id` int unsigned DEFAULT NULL,
  `model_id` int NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `used_medicines_medicine_id_foreign` (`medicine_id`),
  KEY `used_medicines_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `used_medicines_medicine_id_foreign` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `used_medicines_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `used_medicines`
--

LOCK TABLES `used_medicines` WRITE;
/*!40000 ALTER TABLE `used_medicines` DISABLE KEYS */;
/*!40000 ALTER TABLE `used_medicines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_google_event_schedules`
--

DROP TABLE IF EXISTS `user_google_event_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_google_event_schedules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `google_live_consultation_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_calendar_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_event_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_meet_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_google_event_schedules_user_id_foreign` (`user_id`),
  CONSTRAINT `user_google_event_schedules_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_google_event_schedules`
--

LOCK TABLES `user_google_event_schedules` WRITE;
/*!40000 ALTER TABLE `user_google_event_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_google_event_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tenants`
--

DROP TABLE IF EXISTS `user_tenants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_tenants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_tenants_tenant_id_foreign` (`tenant_id`),
  KEY `user_tenants_user_id_foreign` (`user_id`),
  CONSTRAINT `user_tenants_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_tenants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tenants`
--

LOCK TABLES `user_tenants` WRITE;
/*!40000 ALTER TABLE `user_tenants` DISABLE KEYS */;
INSERT INTO `user_tenants` VALUES (2,5,'23157839-2e82-4416-b4c5-e8579c4c4f65','2025-08-12 22:34:24','2025-08-13 03:34:24','2025-08-13 03:34:24'),(3,11,'5b0da0a8-1301-4621-a69a-bc405a85afdb','2025-08-13 00:11:37','2025-08-13 05:11:37','2025-08-13 05:11:37');
/*!40000 ALTER TABLE `user_tenants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_zoom_credential`
--

DROP TABLE IF EXISTS `user_zoom_credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_zoom_credential` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `zoom_api_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zoom_api_secret` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_zoom_credential_tenant_id_foreign` (`tenant_id`),
  KEY `user_zoom_credential_user_id_foreign` (`user_id`),
  CONSTRAINT `user_zoom_credential_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_zoom_credential_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_zoom_credential`
--

LOCK TABLES `user_zoom_credential` WRITE;
/*!40000 ALTER TABLE `user_zoom_credential` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_zoom_credential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `department_id` bigint unsigned DEFAULT NULL,
  `first_name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_super_admin_default` tinyint(1) NOT NULL DEFAULT '0',
  `gender` int NOT NULL,
  `is_admin_default` tinyint(1) NOT NULL DEFAULT '0',
  `qualification` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `owner_id` int DEFAULT NULL,
  `owner_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hospital_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedIn_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `theme_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `hospital_type_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`),
  KEY `users_tenant_id_foreign` (`tenant_id`),
  KEY `users_first_name_index` (`first_name`),
  KEY `users_hospital_type_id_foreign` (`hospital_type_id`),
  CONSTRAINT `users_hospital_type_id_foreign` FOREIGN KEY (`hospital_type_id`) REFERENCES `hospital_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `users_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,10,'Super','Admin','admin@hms.com',NULL,'$2y$10$O.hOnoG1ptDgBt.9b3vsUuy.E1NWNKMrYRERK2u22mzQBKXcIM7CC',NULL,'7878454512',NULL,0,1,0,NULL,'B+','1994-12-12','2025-08-13 03:21:44',NULL,NULL,1,'en',NULL,NULL,'',NULL,'avdLfzxyANVOUq6dBNghKew8UxrrLY12Hm4VCYFLzJUtfyMSTD70Zl62USmc',NULL,NULL,NULL,NULL,'2025-08-13 03:21:44','2025-08-13 03:21:44','0',NULL),(5,1,'BriSalud',NULL,'luiggiybanez@gmail.com',NULL,'$2y$10$/XGpyhJvaeeHzQi11ukyDuLH/6va1v1zsaY5e0qYKbgpkyGJheRmG',NULL,'927234581','+51',0,0,0,NULL,NULL,NULL,'2025-08-13 03:34:43',NULL,NULL,1,'es',NULL,'DrGalvez','BriSalud','23157839-2e82-4416-b4c5-e8579c4c4f65',NULL,NULL,NULL,NULL,NULL,'2025-08-13 03:34:24','2025-08-13 05:01:49','0',NULL),(6,2,'Mariana','Galvez','mgalvez@gmail.com',NULL,'$2y$10$swyLhLro/sf0mxJRTfa4M.QZGy44UQdnR/UJX.4RfS0F.FhKCI2eu',NULL,NULL,'+91',0,1,0,NULL,NULL,'1985-08-07','2025-08-13 03:44:29',1,'App\\Models\\Doctor',1,'en','storage/profile_images/3ZcsjpR7b0V4BPS1whvp4lKC4hrLJzQe4b9Lxa72.png',NULL,'','23157839-2e82-4416-b4c5-e8579c4c4f65',NULL,NULL,NULL,NULL,NULL,'2025-08-13 03:36:53','2025-08-13 05:02:23','0',NULL),(7,3,'luiggi','ybanez','lybanez@gmail.com',NULL,'$2y$10$LHM.K.zDSzwpDQBzbYAoi.mopaELzCS1B/4okIRLo0YQM1F0OAXca',NULL,NULL,'+91',0,0,0,NULL,NULL,'2000-08-02','2025-08-13 04:58:32',1,'App\\Models\\Patient',0,'en','storage/profile_images/qkx2dArwnHC8JrOhAEjnfzLegptASLKoQT9atITm.png',NULL,'','23157839-2e82-4416-b4c5-e8579c4c4f65',NULL,NULL,NULL,NULL,NULL,'2025-08-13 04:34:36','2025-08-13 04:58:32','0',NULL),(8,3,'Juan','Rodriguez','jrodriguez@gmail.com',NULL,'$2y$10$cXC9Q5gWtf7G0jG7IyyB..LixAoMKcZl7p2Q6t71zTeH1ho9eMHDK',NULL,NULL,'+91',0,0,0,NULL,NULL,'1996-08-07','2025-08-13 05:08:49',2,'App\\Models\\Patient',0,'en',NULL,NULL,'','23157839-2e82-4416-b4c5-e8579c4c4f65',NULL,NULL,NULL,NULL,NULL,'2025-08-13 05:05:02','2025-08-13 05:08:49','0',NULL),(9,2,'Gabriela','Campos','camposg@gmail.com',NULL,'$2y$10$t6MU4MPvHwjONcI.9Qi8i.I5Z.rNfusPWNtQkHbjZzPGuNj4IvrfW',NULL,NULL,'+91',0,0,0,NULL,NULL,'1990-08-08','2025-08-13 05:08:50',2,'App\\Models\\Doctor',0,'en',NULL,NULL,'','23157839-2e82-4416-b4c5-e8579c4c4f65',NULL,NULL,NULL,NULL,NULL,'2025-08-13 05:06:29','2025-08-13 05:08:50','0',NULL),(10,5,'Jubitza','Reyes','jreyes@gmail.com',NULL,'$2y$10$cSVH5IgyROHnP0vmjI4B9.l3nAf5ylX3JtTHDUUIGBcA2me4symy2',NULL,NULL,'+91',0,0,0,NULL,NULL,'2000-11-08','2025-08-13 05:08:51',1,'App\\Models\\Receptionist',0,'en',NULL,NULL,'','23157839-2e82-4416-b4c5-e8579c4c4f65',NULL,NULL,NULL,NULL,NULL,'2025-08-13 05:08:25','2025-08-13 05:08:51','0',NULL),(11,1,'Bonamedic',NULL,'luiggiescorpio@gmail.com',NULL,'$2y$10$9uVTrSlwAKsNNhphqmHFd.6eq5qb9/2/W0/5uTkBEetTW46sNJZva',NULL,'928563521','+51',0,0,0,NULL,NULL,NULL,'2025-08-13 05:14:12',NULL,NULL,1,'en',NULL,'Pedro','Bonamedic','5b0da0a8-1301-4621-a69a-bc405a85afdb','BvdEyIPi8FJx3eBXY0Etcp3iDbQOxn4r7BhgIh0lt1kovjA6GqRo2gY4GO1H',NULL,NULL,NULL,NULL,'2025-08-13 05:11:37','2025-08-13 05:14:12','0',NULL),(12,2,'Mauricio','Olmeda','molmeda@gmail.com',NULL,'$2y$10$GdsSdceQQI0cEXsyOXwhaO93tYza9QIAYN4b4VzYQKKRiZlJ//fOi',NULL,NULL,'+91',0,0,0,NULL,NULL,'1980-03-04','2025-08-13 05:21:45',3,'App\\Models\\Doctor',0,'en',NULL,NULL,'','5b0da0a8-1301-4621-a69a-bc405a85afdb',NULL,NULL,NULL,NULL,NULL,'2025-08-13 05:16:11','2025-08-13 05:21:45','0',NULL),(13,3,'Lucas','Padilla','plucas@gmail.com',NULL,'$2y$10$jmxAIlJIVtip.o7kfzWATOMe1.7suwAnqsD108jRjo7sV6fISBN1i',NULL,NULL,'+91',0,0,0,NULL,NULL,'1996-07-03','2025-08-13 05:21:46',3,'App\\Models\\Patient',0,'en',NULL,NULL,'','5b0da0a8-1301-4621-a69a-bc405a85afdb',NULL,NULL,NULL,NULL,NULL,'2025-08-13 05:17:02','2025-08-13 05:21:46','0',NULL),(14,2,'Antonio','Villegas','avillegas@gmail.com',NULL,'$2y$10$FtmNWsv/092ph0EzBqBCkOV86NSwBRTZIjsX68NoNsUk2tWfVRHLS',NULL,NULL,'+91',0,0,0,NULL,NULL,'1979-11-27','2025-08-13 05:21:48',4,'App\\Models\\Doctor',0,'en',NULL,NULL,'','5b0da0a8-1301-4621-a69a-bc405a85afdb',NULL,NULL,NULL,NULL,NULL,'2025-08-13 05:18:41','2025-08-13 05:21:48','0',NULL),(15,3,'Jhon','Gomez','jgomez@gmail.com',NULL,'$2y$10$FyMSgupY.WO3/YrlS4Iane8DB1QQnaH599LoH/MA08TbEHINL1Z26',NULL,NULL,'+91',0,0,0,NULL,NULL,'2005-02-16','2025-08-13 05:21:49',4,'App\\Models\\Patient',0,'en',NULL,NULL,'','5b0da0a8-1301-4621-a69a-bc405a85afdb',NULL,NULL,NULL,NULL,NULL,'2025-08-13 05:19:59','2025-08-13 05:21:49','0',NULL),(16,5,'Andrea','Salazar','asalazar@gmail.com',NULL,'$2y$10$MShdsxs6rRP8GLtypNAuf.aa852GfudrlRwDcmCUG3H05ZR7ON9Yy',NULL,NULL,'+91',0,0,0,NULL,NULL,'2001-12-07','2025-08-13 05:21:49',2,'App\\Models\\Receptionist',0,'en',NULL,NULL,'','5b0da0a8-1301-4621-a69a-bc405a85afdb',NULL,NULL,NULL,NULL,NULL,'2025-08-13 05:21:22','2025-08-13 05:21:49','0',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaccinated_patients`
--

DROP TABLE IF EXISTS `vaccinated_patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vaccinated_patients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int unsigned NOT NULL,
  `vaccination_id` int unsigned NOT NULL,
  `vaccination_serial_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dose_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dose_given_date` datetime NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vaccinated_patients_tenant_id_foreign` (`tenant_id`),
  KEY `vaccinated_patients_id_index` (`id`),
  KEY `vaccinated_patients_patient_id_index` (`patient_id`),
  KEY `vaccinated_patients_vaccination_id_index` (`vaccination_id`),
  CONSTRAINT `vaccinated_patients_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vaccinated_patients_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vaccinated_patients_vaccination_id_foreign` FOREIGN KEY (`vaccination_id`) REFERENCES `vaccinations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccinated_patients`
--

LOCK TABLES `vaccinated_patients` WRITE;
/*!40000 ALTER TABLE `vaccinated_patients` DISABLE KEYS */;
/*!40000 ALTER TABLE `vaccinated_patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaccinations`
--

DROP TABLE IF EXISTS `vaccinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vaccinations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufactured_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vaccinations_tenant_id_foreign` (`tenant_id`),
  KEY `vaccinations_id_index` (`id`),
  CONSTRAINT `vaccinations_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccinations`
--

LOCK TABLES `vaccinations` WRITE;
/*!40000 ALTER TABLE `vaccinations` DISABLE KEYS */;
/*!40000 ALTER TABLE `vaccinations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitors`
--

DROP TABLE IF EXISTS `visitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `purpose` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_card` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_person` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visitors_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `visitors_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitors`
--

LOCK TABLES `visitors` WRITE;
/*!40000 ALTER TABLE `visitors` DISABLE KEYS */;
/*!40000 ALTER TABLE `visitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zoom_o_auth_credentials`
--

DROP TABLE IF EXISTS `zoom_o_auth_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoom_o_auth_credentials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `access_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `refresh_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zoom_o_auth_credentials_user_id_foreign` (`user_id`),
  CONSTRAINT `zoom_o_auth_credentials_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zoom_o_auth_credentials`
--

LOCK TABLES `zoom_o_auth_credentials` WRITE;
/*!40000 ALTER TABLE `zoom_o_auth_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `zoom_o_auth_credentials` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-12 19:27:49
