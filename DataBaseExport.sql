CREATE DATABASE  IF NOT EXISTS `vuz_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vuz_db`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: vuz_db
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'Оператор системы');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,25),(2,1,26),(3,1,27),(4,1,28),(5,1,29),(6,1,30),(7,1,31),(8,1,32),(9,1,33),(10,1,34),(11,1,35),(12,1,36),(13,1,37),(14,1,38),(15,1,39),(16,1,40),(17,1,41),(18,1,42),(19,1,43),(20,1,44);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add department',7,'add_department'),(26,'Can change department',7,'change_department'),(27,'Can delete department',7,'delete_department'),(28,'Can view department',7,'view_department'),(29,'Can add discipline',8,'add_discipline'),(30,'Can change discipline',8,'change_discipline'),(31,'Can delete discipline',8,'delete_discipline'),(32,'Can view discipline',8,'view_discipline'),(33,'Can add facultie',9,'add_facultie'),(34,'Can change facultie',9,'change_facultie'),(35,'Can delete facultie',9,'delete_facultie'),(36,'Can view facultie',9,'view_facultie'),(37,'Can add teacher',10,'add_teacher'),(38,'Can change teacher',10,'change_teacher'),(39,'Can delete teacher',10,'delete_teacher'),(40,'Can view teacher',10,'view_teacher'),(41,'Can add academic_load',11,'add_academic_load'),(42,'Can change academic_load',11,'change_academic_load'),(43,'Can delete academic_load',11,'delete_academic_load'),(44,'Can view academic_load',11,'view_academic_load');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$pFgDB591zVZWyEduSTUSsz$3MAwAl0CzdgH26rmgnFpTbiD4AHgQIyV3fY/GzfQKxI=','2022-05-11 17:21:28.555439',1,'admin','','','',1,1,'2022-01-27 11:54:29.193000'),(2,'pbkdf2_sha256$320000$LrFJhzzdLKFyhxR7zYTnkg$JnGkb0CSAk83cFEws+bYUghK6yOoPDTUyW46QopHnHU=','2022-05-11 17:20:45.049006',0,'Operator1','','','',1,1,'2022-01-27 12:25:48.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,2,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-01-27 12:07:46.805000','1','Discipline object (1)',1,'[{\"added\": {}}]',8,1),(2,'2022-01-27 12:07:56.329000','2','Discipline object (2)',1,'[{\"added\": {}}]',8,1),(3,'2022-01-27 12:08:09.055000','3','Discipline object (3)',1,'[{\"added\": {}}]',8,1),(4,'2022-01-27 12:08:20.424000','4','Discipline object (4)',1,'[{\"added\": {}}]',8,1),(5,'2022-01-27 12:08:33.748000','5','Discipline object (5)',1,'[{\"added\": {}}]',8,1),(6,'2022-01-27 12:08:45.029000','6','Discipline object (6)',1,'[{\"added\": {}}]',8,1),(7,'2022-01-27 12:18:15.540000','1','Высшая инженерная школа',1,'[{\"added\": {}}]',9,1),(8,'2022-01-27 12:19:53.749000','1','Кафедра техносферной безопасности',1,'[{\"added\": {}}]',7,1),(9,'2022-01-27 12:20:12.558000','2','Кафедра автомобильных дорог и строительного п',1,'[{\"added\": {}}]',7,1),(10,'2022-01-27 12:21:46.624000','3','Кафедра инженерной геологии, оснований и фунд',1,'[{\"added\": {}}]',7,1),(11,'2022-01-27 12:22:43.644000','2','Высшая школа энергетики, нефти и газа',1,'[{\"added\": {}}]',9,1),(12,'2022-01-27 12:23:22.267000','4','Кафедра теплоэнергетики и теплотехники',1,'[{\"added\": {}}]',7,1),(13,'2022-01-27 12:23:38.054000','5','Кафедра электроэнергетики и электротехники',1,'[{\"added\": {}}]',7,1),(14,'2022-01-27 12:24:05.682000','6','Кафедра транспорта, хранения нефти, газа',1,'[{\"added\": {}}]',7,1),(15,'2022-01-27 12:25:21.814000','1','Оператор системы',1,'[{\"added\": {}}]',3,1),(16,'2022-01-27 12:25:48.485000','2','Operator1',1,'[{\"added\": {}}]',4,1),(17,'2022-01-27 12:26:17.301000','2','Operator1',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1),(18,'2022-01-27 12:31:26.524000','1','Иван Иванов',1,'[{\"added\": {}}]',10,1),(19,'2022-01-27 12:39:46.242000','2','Анастас Микоян',1,'[{\"added\": {}}]',10,1),(20,'2022-01-27 12:40:27.363000','3','Иосиф Джугашвили',1,'[{\"added\": {}}]',10,1),(21,'2022-01-27 12:41:08.501000','4','Клим Киров',1,'[{\"added\": {}}]',10,1),(22,'2022-01-27 12:42:02.345000','5','Гурбандулы Йокар',1,'[{\"added\": {}}]',10,1),(23,'2022-01-27 12:42:37.138000','6','Марк Аврелий',1,'[{\"added\": {}}]',10,1),(24,'2022-01-27 12:43:33.094000','1','Иван Иванов',1,'[{\"added\": {}}]',11,1),(25,'2022-01-27 12:43:50.446000','2','Анастас Микоян',1,'[{\"added\": {}}]',11,1),(26,'2022-01-27 12:44:08.899000','3','Иосиф Джугашвили',1,'[{\"added\": {}}]',11,1),(27,'2022-01-27 12:44:34.051000','4','Клим Киров',1,'[{\"added\": {}}]',11,1),(28,'2022-01-27 12:44:55.072000','5','Гурбандулы Йокар',1,'[{\"added\": {}}]',11,1),(29,'2022-01-27 12:45:15.854000','6','Марк Аврелий',1,'[{\"added\": {}}]',11,1),(30,'2022-01-27 12:45:57.431000','7','Иван Иванов',1,'[{\"added\": {}}]',11,1),(31,'2022-01-27 12:57:14.139000','2','Operator1',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(11,'MVTExample','academic_load'),(7,'MVTExample','department'),(8,'MVTExample','discipline'),(9,'MVTExample','facultie'),(10,'MVTExample','teacher'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'MVTExample','0001_initial','2022-01-27 11:52:07.899459'),(2,'contenttypes','0001_initial','2022-01-27 11:52:08.523659'),(3,'auth','0001_initial','2022-01-27 11:52:20.897089'),(4,'admin','0001_initial','2022-01-27 11:52:24.247456'),(5,'admin','0002_logentry_remove_auto_add','2022-01-27 11:52:24.281152'),(6,'admin','0003_logentry_add_action_flag_choices','2022-01-27 11:52:24.330422'),(7,'contenttypes','0002_remove_content_type_name','2022-01-27 11:52:26.033816'),(8,'auth','0002_alter_permission_name_max_length','2022-01-27 11:52:28.437838'),(9,'auth','0003_alter_user_email_max_length','2022-01-27 11:52:28.770292'),(10,'auth','0004_alter_user_username_opts','2022-01-27 11:52:28.858863'),(11,'auth','0005_alter_user_last_login_null','2022-01-27 11:52:29.690649'),(12,'auth','0006_require_contenttypes_0002','2022-01-27 11:52:29.770766'),(13,'auth','0007_alter_validators_add_error_messages','2022-01-27 11:52:29.847388'),(14,'auth','0008_alter_user_username_max_length','2022-01-27 11:52:30.936878'),(15,'auth','0009_alter_user_last_name_max_length','2022-01-27 11:52:31.970481'),(16,'auth','0010_alter_group_name_max_length','2022-01-27 11:52:32.035515'),(17,'auth','0011_update_proxy_permissions','2022-01-27 11:52:32.067046'),(18,'auth','0012_alter_user_first_name_max_length','2022-01-27 11:52:33.436980'),(19,'sessions','0001_initial','2022-01-27 11:52:34.940920'),(20,'MVTExample','0002_alter_academic_load_academic_year_and_more','2022-01-27 12:37:24.834575');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('iw3ttsgmwww04au6fee6oqoty6u0td00','.eJxVjDkOwjAQRe_iGlnexgslPWewZrzgAHKkOKkQd4dIKaD9773_YhG3tcVtlCVOmZ2ZZKffjTA9St9BvmO_zTzNfV0m4rvCDzr4dc7leTncv4OGo31rVZUTNiRNBghCDYCygMkmOR9QIAnhQVgi5ZwliVnrCg4IXU7aK8veH8-KN28:1noq1g:Ejf3oaGF48wOEufyYqnMsdu0tJ9Nx7KOA6QJhdjz8_c','2022-05-25 17:21:28.664374'),('m4mshzuglwehx2dd3dj4yfd8zyilscok','.eJxVjDkOwjAQRe_iGlnexgslPWewZrzgAHKkOKkQd4dIKaD9773_YhG3tcVtlCVOmZ2ZZKffjTA9St9BvmO_zTzNfV0m4rvCDzr4dc7leTncv4OGo31rVZUTNiRNBghCDYCygMkmOR9QIAnhQVgi5ZwliVnrCg4IXU7aK8veH8-KN28:1nUXdS:INacNECw45zMpdT8fIYPkfpqxJ3CWyNUgklZOwqAif4','2022-03-30 17:40:34.184523'),('zua7lpdk49k5gpyo35viumby2mcdp8u1','.eJxVjDkOwjAQRe_iGlnexgslPWewZrzgAHKkOKkQd4dIKaD9773_YhG3tcVtlCVOmZ2ZZKffjTA9St9BvmO_zTzNfV0m4rvCDzr4dc7leTncv4OGo31rVZUTNiRNBghCDYCygMkmOR9QIAnhQVgi5ZwliVnrCg4IXU7aK8veH8-KN28:1nD4LG:0xoFXPrFugoUqkIlZCYja4IB1zloArHq333WupZ2vD8','2022-02-10 12:57:34.891000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mvtexample_academic_load`
--

DROP TABLE IF EXISTS `mvtexample_academic_load`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mvtexample_academic_load` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `academic_year` varchar(45) NOT NULL,
  `term` int NOT NULL,
  `groups` varchar(45) NOT NULL,
  `students_count` int NOT NULL,
  `exams_type` varchar(45) NOT NULL,
  `discipline_id` bigint NOT NULL,
  `teacher_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MVTExample_academic__discipline_id_908135b6_fk_MVTExampl` (`discipline_id`),
  KEY `MVTExample_academic__teacher_id_b6078c7e_fk_MVTExampl` (`teacher_id`),
  CONSTRAINT `MVTExample_academic__discipline_id_908135b6_fk_MVTExampl` FOREIGN KEY (`discipline_id`) REFERENCES `mvtexample_discipline` (`id`),
  CONSTRAINT `MVTExample_academic__teacher_id_b6078c7e_fk_MVTExampl` FOREIGN KEY (`teacher_id`) REFERENCES `mvtexample_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mvtexample_academic_load`
--

LOCK TABLES `mvtexample_academic_load` WRITE;
/*!40000 ALTER TABLE `mvtexample_academic_load` DISABLE KEYS */;
INSERT INTO `mvtexample_academic_load` VALUES (1,'2021/2022',1,'0638,0639,0640',100,'Собеседование',1,1),(2,'2021/2022',1,'0638,0639,0640',100,'Собеседование',2,2),(3,'2021/2022',1,'0638,0639,0640',80,'Экзамен',3,3),(4,'2021/2022',1,'0638,0639,0640',100,'Собеседование',4,4),(5,'2021/2022',1,'0638,0639,0640',110,'Экзамен',6,5),(6,'2021/2022',1,'0638,0639,0640',100,'Экзамен',6,6),(7,'2021/2022',1,'0700,0711,0712',80,'Экзамен',2,1);
/*!40000 ALTER TABLE `mvtexample_academic_load` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mvtexample_department`
--

DROP TABLE IF EXISTS `mvtexample_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mvtexample_department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `head_name` varchar(45) NOT NULL,
  `room_number` int NOT NULL,
  `corp_number` int NOT NULL,
  `phone` bigint NOT NULL,
  `teachers_count` int NOT NULL,
  `facultie_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MVTExample_departmen_facultie_id_621b4f7a_fk_MVTExampl` (`facultie_id`),
  CONSTRAINT `MVTExample_departmen_facultie_id_621b4f7a_fk_MVTExampl` FOREIGN KEY (`facultie_id`) REFERENCES `mvtexample_facultie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mvtexample_department`
--

LOCK TABLES `mvtexample_department` WRITE;
/*!40000 ALTER TABLE `mvtexample_department` DISABLE KEYS */;
INSERT INTO `mvtexample_department` VALUES (1,'Кафедра техносферной безопасности','Иванов И. И.',1,1,8800553535,12,1),(2,'Кафедра автомобильных дорог и строительного п','Иванов И. И.',1,1,8800553535,12,1),(3,'Кафедра инженерной геологии, оснований и фунд','Иванов И. И.',1,1,8800553535,5,1),(4,'Кафедра теплоэнергетики и теплотехники','Иванов И. И.',2,1,8800553535,42,2),(5,'Кафедра электроэнергетики и электротехники','Иванов И. И.',2,4,8800553535,10,2),(6,'Кафедра транспорта, хранения нефти, газа','Иванов И. И.',1,1,8800553535,10,2);
/*!40000 ALTER TABLE `mvtexample_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mvtexample_discipline`
--

DROP TABLE IF EXISTS `mvtexample_discipline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mvtexample_discipline` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `hours` int NOT NULL,
  `cycle` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mvtexample_discipline`
--

LOCK TABLES `mvtexample_discipline` WRITE;
/*!40000 ALTER TABLE `mvtexample_discipline` DISABLE KEYS */;
INSERT INTO `mvtexample_discipline` VALUES (1,'Административное право',100,'Цикл 1'),(2,'Актуальные проблемы цивилистики',123,'Цикл 1'),(3,'Арбитражный процесс',122,'Цикл 1'),(4,'Гражданский процесс',12,'Цикл 1'),(5,'Гражданское право',50,'Цикл 2'),(6,'Жилищное право',520,'24');
/*!40000 ALTER TABLE `mvtexample_discipline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mvtexample_facultie`
--

DROP TABLE IF EXISTS `mvtexample_facultie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mvtexample_facultie` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `dean_name` varchar(45) NOT NULL,
  `room_number` int NOT NULL,
  `corp_number` int NOT NULL,
  `phone` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mvtexample_facultie`
--

LOCK TABLES `mvtexample_facultie` WRITE;
/*!40000 ALTER TABLE `mvtexample_facultie` DISABLE KEYS */;
INSERT INTO `mvtexample_facultie` VALUES (1,'Высшая инженерная школа','Аксенов Сергей Евгеньевич',1,1,88005553535),(2,'Высшая школа энергетики, нефти и газа','Аксенов Сергей Евгеньевич',1,2,88005553535);
/*!40000 ALTER TABLE `mvtexample_facultie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mvtexample_teacher`
--

DROP TABLE IF EXISTS `mvtexample_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mvtexample_teacher` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `patronymic` varchar(45) NOT NULL,
  `birth` int NOT NULL,
  `admission_to_work` int NOT NULL,
  `experience` int NOT NULL,
  `post` varchar(45) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `city` varchar(45) NOT NULL,
  `department_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MVTExample_teacher_department_id_93d1551c_fk_MVTExampl` (`department_id`),
  CONSTRAINT `MVTExample_teacher_department_id_93d1551c_fk_MVTExampl` FOREIGN KEY (`department_id`) REFERENCES `mvtexample_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mvtexample_teacher`
--

LOCK TABLES `mvtexample_teacher` WRITE;
/*!40000 ALTER TABLE `mvtexample_teacher` DISABLE KEYS */;
INSERT INTO `mvtexample_teacher` VALUES (1,'Иван','Иванов','Иванович',1986,2012,10,'Преподаватель','Мужской','Архангельск',1),(2,'Анастас','Микоян','Артурович',1948,1965,45,'Преподаватель','Мужской','Архангельск',2),(3,'Иосиф','Джугашвили','Эйштенович',1980,2000,15,'Преподаватель','Мужской','Архангельск',3),(4,'Клим','Киров','Красиевич',1950,1988,20,'Преподаватель','Мужской','Архангельск',4),(5,'Гурбандулы','Йокар','Оглы',1999,2022,1,'Преподаватель','Мужской','Архангельск',5),(6,'Марк','Аврелий','Августович',1939,2000,15,'Преподаватель','Мужской','Архангельск',6);
/*!40000 ALTER TABLE `mvtexample_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'vuz_db'
--

--
-- Dumping routines for database 'vuz_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-11 20:34:43
