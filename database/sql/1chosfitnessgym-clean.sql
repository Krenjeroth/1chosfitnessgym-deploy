/*
SQLyog Community v13.3.0 (64 bit)
MySQL - 10.4.32-MariaDB : Database - 1chosfitnessgym
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`1chosfitnessgym` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `1chosfitnessgym`;

/*Table structure for table `barangays` */

DROP TABLE IF EXISTS `barangays`;

CREATE TABLE `barangays` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `municipality_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `barangays_municipality_id_foreign` (`municipality_id`),
  CONSTRAINT `barangays_municipality_id_foreign` FOREIGN KEY (`municipality_id`) REFERENCES `municipalities` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `barangays` */

insert  into `barangays`(`id`,`municipality_id`,`name`,`code`,`created_at`,`updated_at`) values 
(1,1,'Poblacion','01','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(2,1,'Abiang','02','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(3,1,'Caliking','03','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(4,1,'Cattubo','04','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(5,1,'Naguey','05','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(6,1,'Paoay','06','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(7,1,'Pasdong','07','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(8,1,'Topdac','08','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(9,2,'Poblacion','01','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(10,2,'Ampusongan','02','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(11,2,'Bagu','03','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(12,2,'Dalipey','04','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(13,2,'Gambang','05','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(14,2,'Kayapa','06','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(15,2,'Sinacbat','07','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(16,3,'Poblacion','01','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(17,3,'Ambuclao','02','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(18,3,'Bila','03','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(19,3,'Bobok-Bisal','04','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(20,3,'Daclan','05','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(21,3,'Ekip','06','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(22,3,'Karao','07','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(23,3,'Nawal','08','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(24,3,'Pito','09','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(25,3,'Tikey','10','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(26,4,'Poblacion','01','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(27,4,'Abatan','02','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(28,4,'Amgaleyguey','03','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(29,4,'Amlimay','04','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(30,4,'Baculongan Norte','05','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(31,4,'Baculongan Sur','06','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(32,4,'Bangao','07','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(33,4,'Buyacaoan','08','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(34,4,'Calamagan','09','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(35,4,'Catlubong','10','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(36,4,'Lengaoan','11','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(37,4,'Loo','12','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(38,4,'Natubleng','13','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(39,4,'Sebang','14','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(40,5,'Poblacion','01','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(41,5,'Ampucao','02','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(42,5,'Dalupirip','03','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(43,5,'Gumatdang','04','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(44,5,'Loakan','05','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(45,5,'Tinongdan','06','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(46,5,'Tuding','07','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(47,5,'Ucab','08','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(48,5,'Virac','09','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(49,6,'Poblacion','01','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(50,6,'Adaoay','02','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(51,6,'Anchokey','03','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(52,6,'Bashoy','04','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(53,6,'Ballay','05','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(54,6,'Batan','06','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(55,6,'Duacan','07','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(56,6,'Eddet','08','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(57,6,'Gusaran','09','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(58,6,'Kabayan Barrio','10','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(59,6,'Lusod','11','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(60,6,'Pacso','12','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(61,6,'Tawangan','13','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(62,7,'Central','01','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(63,7,'Balakbak','02','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(64,7,'Beleng-Belis','03','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(65,7,'Boklaoan','04','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(66,7,'Cayapes','05','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(67,7,'Cuba','06','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(68,7,'Datakan','07','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(69,7,'Gadang','08','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(70,7,'Gaswiling','09','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(71,7,'Labueg','10','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(72,7,'Paykek','11','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(73,7,'Pudong','12','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(74,7,'Pongayan','13','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(75,7,'Sagubo','14','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(76,7,'Taba-ao','15','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(77,8,'Poblacion','01','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(78,8,'Badeo','02','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(79,8,'Lubo','03','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(80,8,'Madaymen','04','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(81,8,'Palina','05','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(82,8,'Sagpat','06','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(83,8,'Tacadang','07','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(84,9,'Poblacion','01','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(85,9,'Alapang','02','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(86,9,'Alno','03','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(87,9,'Ambiong','04','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(88,9,'Bahong','05','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(89,9,'Balili','06','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(90,9,'Beckel','07','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(91,9,'Bineng','08','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(92,9,'Betag','09','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(93,9,'Cruz','10','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(94,9,'Lubas','11','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(95,9,'Pico','12','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(96,9,'Puguis','13','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(97,9,'Shilan','14','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(98,9,'Tawang','15','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(99,9,'Wangal','16','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(100,10,'Poblacion','01','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(101,10,'Balili','02','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(102,10,'Bedbed','03','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(103,10,'Bulalacao','04','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(104,10,'Cabiten','05','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(105,10,'Colalo','06','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(106,10,'Guinaoang','07','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(107,10,'Paco','08','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(108,10,'Suyoc','09','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(109,10,'Sapid','10','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(110,10,'Tabio','11','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(111,10,'Taneg','12','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(112,11,'Poblacion','01','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(113,11,'Bagong','02','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(114,11,'Balluay','03','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(115,11,'Banangan','04','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(116,11,'Banengbeng','05','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(117,11,'Bayabas','06','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(118,11,'Kamog','07','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(119,11,'Pappa','08','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(120,12,'Poblacion','01','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(121,12,'Ansagan','02','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(122,12,'Camp 1','03','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(123,12,'Camp 3','04','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(124,12,'Camp 4','05','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(125,12,'Nangalisan','06','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(126,12,'San Pascual','07','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(127,12,'Tabaan Norte','08','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(128,12,'Tabaan Sur','09','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(129,12,'Tadiangan','10','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(130,12,'Taloy Norte','11','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(131,12,'Taloy Sur','12','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(132,12,'Twin Peaks','13','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(133,13,'Caponga (Pob.)','01','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(134,13,'Ambassador','02','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(135,13,'Ambongdolan','03','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(136,13,'Ba-ayan','04','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(137,13,'Basil','05','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(138,13,'Tublay Central','06','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(139,13,'Daclan','07','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(140,13,'Tuel','08','2025-05-18 01:52:43','2025-05-18 01:52:43');

/*Table structure for table `cache` */

DROP TABLE IF EXISTS `cache`;

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cache` */

/*Table structure for table `cache_locks` */

DROP TABLE IF EXISTS `cache_locks`;

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cache_locks` */

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `genders` */

DROP TABLE IF EXISTS `genders`;

CREATE TABLE `genders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `genders` */

insert  into `genders`(`id`,`type`,`created_at`,`updated_at`) values 
(1,'Male',NULL,NULL),
(2,'Female',NULL,NULL);

/*Table structure for table `job_batches` */

DROP TABLE IF EXISTS `job_batches`;

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `job_batches` */

/*Table structure for table `jobs` */

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `jobs` */

/*Table structure for table `members` */

DROP TABLE IF EXISTS `members`;

CREATE TABLE `members` (
  `id` char(36) NOT NULL,
  `gender_id` bigint(20) unsigned NOT NULL,
  `full_name` text NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `age` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `address` text DEFAULT NULL,
  `join_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `emergency_contact_name` varchar(255) DEFAULT NULL,
  `emergency_contact_phone` varchar(255) DEFAULT NULL,
  `img_path` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `members_gender_id_foreign` (`gender_id`),
  CONSTRAINT `members_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `members` */

/*Table structure for table `memberships` */

DROP TABLE IF EXISTS `memberships`;

CREATE TABLE `memberships` (
  `id` char(36) NOT NULL,
  `member_id` char(36) NOT NULL,
  `plan_id` bigint(20) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = expired, 1 = active',
  `start_date` timestamp NULL DEFAULT NULL,
  `expiry_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `memberships_member_id_foreign` (`member_id`),
  KEY `memberships_plan_id_foreign` (`plan_id`),
  CONSTRAINT `memberships_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE,
  CONSTRAINT `memberships_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `memberships` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'0001_01_01_000000_create_users_table',1),
(2,'0001_01_01_000001_create_cache_table',1),
(3,'0001_01_01_000002_create_jobs_table',1),
(4,'2025_02_06_013312_create_personal_access_tokens_table',1),
(5,'2025_02_07_022813_add_two_factor_columns_to_users_table',1),
(6,'2025_02_17_074247_add_status_column_to_users_table',1),
(7,'2025_02_20_002207_create_roles_table',1),
(8,'2025_02_20_002235_create_permissions_table',1),
(9,'2025_02_20_002951_create_role_user_table',1),
(10,'2025_02_20_005040_create_permission_role_table',1),
(11,'2025_02_20_055532_create_municipalities_table',1),
(12,'2025_02_20_055555_create_barangays_table',1),
(13,'2025_02_20_061952_create_genders_table',1),
(14,'2025_02_20_062429_create_members_table',1),
(15,'2025_02_20_072341_create_plans_table',1),
(16,'2025_02_20_074918_create_memberships_table',1),
(17,'2025_02_21_020520_create_payments_table',1);

/*Table structure for table `municipalities` */

DROP TABLE IF EXISTS `municipalities`;

CREATE TABLE `municipalities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `municipalities` */

insert  into `municipalities`(`id`,`name`,`code`,`created_at`,`updated_at`) values 
(1,'Atok','11','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(2,'Bakun','09','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(3,'Bokod','13','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(4,'Buguias','08','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(5,'Itogon','01','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(6,'Kabayan','12','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(7,'Kapangan','07','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(8,'Kibungan','10','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(9,'La Trinidad','03','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(10,'Mankayan','02','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(11,'Sablan','05','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(12,'Tuba','04','2025-05-18 01:52:43','2025-05-18 01:52:43'),
(13,'Tublay','06','2025-05-18 01:52:43','2025-05-18 01:52:43');

/*Table structure for table `password_reset_tokens` */

DROP TABLE IF EXISTS `password_reset_tokens`;

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_reset_tokens` */

/*Table structure for table `payments` */

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `id` char(36) NOT NULL,
  `membership_id` char(36) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `method` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payments_membership_id_foreign` (`membership_id`),
  CONSTRAINT `payments_membership_id_foreign` FOREIGN KEY (`membership_id`) REFERENCES `memberships` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `payments` */

/*Table structure for table `permission_role` */

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  KEY `permission_role_permission_id_foreign` (`permission_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permission_role` */

insert  into `permission_role`(`permission_id`,`role_id`) values 
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(6,1),
(7,1),
(8,1),
(9,1),
(10,1),
(11,1),
(12,1),
(13,1),
(14,1),
(15,1),
(16,1),
(17,1),
(18,1),
(19,1),
(20,1),
(21,1),
(22,1),
(23,1),
(24,1),
(25,1),
(26,1),
(27,1),
(28,1),
(29,1),
(30,1),
(1,2);

/*Table structure for table `permissions` */

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permissions` */

insert  into `permissions`(`id`,`title`,`created_at`,`updated_at`) values 
(1,'user_index',NULL,NULL),
(2,'user_store',NULL,NULL),
(3,'user_update',NULL,NULL),
(4,'user_show',NULL,NULL),
(5,'user_destroy',NULL,NULL),
(6,'plan_index',NULL,NULL),
(7,'plan_store',NULL,NULL),
(8,'plan_update',NULL,NULL),
(9,'plan_show',NULL,NULL),
(10,'plan_destroy',NULL,NULL),
(11,'member_index',NULL,NULL),
(12,'member_store',NULL,NULL),
(13,'member_update',NULL,NULL),
(14,'member_show',NULL,NULL),
(15,'member_destroy',NULL,NULL),
(16,'membership_index',NULL,NULL),
(17,'membership_store',NULL,NULL),
(18,'membership_update',NULL,NULL),
(19,'membership_show',NULL,NULL),
(20,'membership_destroy',NULL,NULL),
(21,'role_index',NULL,NULL),
(22,'role_store',NULL,NULL),
(23,'role_update',NULL,NULL),
(24,'role_show',NULL,NULL),
(25,'role_destroy',NULL,NULL),
(26,'permission_index',NULL,NULL),
(27,'permission_store',NULL,NULL),
(28,'permission_update',NULL,NULL),
(29,'permission_show',NULL,NULL),
(30,'permission_destroy',NULL,NULL);

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `plans` */

DROP TABLE IF EXISTS `plans`;

CREATE TABLE `plans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `validity` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = inactive, 1 = active',
  `price` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `plans` */

/*Table structure for table `role_user` */

DROP TABLE IF EXISTS `role_user`;

CREATE TABLE `role_user` (
  `role_id` bigint(20) unsigned NOT NULL,
  `user_id` char(36) NOT NULL,
  KEY `role_user_role_id_foreign` (`role_id`),
  KEY `role_user_user_id_foreign` (`user_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `role_user` */

insert  into `role_user`(`role_id`,`user_id`) values 
(1,'7f84b7d8-3e2c-4a1a-96f3-9e8a2b6c74d1'),
(1,'162a92ce-b3e7-42d6-9b8f-8bd38f2c2622'),
(1,'bceadf0c-87c1-4a42-b2a7-aa2ef35049a6'),
(1,'dbf58ad0-4c28-4ee8-be60-eaff7438ba01'),
(1,'798d842c-a7fb-4524-bf7e-75dcdc5593f2');

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `roles` */

insert  into `roles`(`id`,`title`,`created_at`,`updated_at`) values 
(1,'Admin',NULL,NULL),
(2,'User',NULL,NULL);

/*Table structure for table `sessions` */

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sessions` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = inactive, 1 = active',
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`status`,`two_factor_secret`,`two_factor_recovery_codes`,`two_factor_confirmed_at`,`remember_token`,`created_at`,`updated_at`) values 
('162a92ce-b3e7-42d6-9b8f-8bd38f2c2622','KrenjerJS','krenjerjs@1chosfg.com','2025-05-18 01:52:43','$2y$12$hsLtL6sy1RCI0U5HkLwxNu7FL2Na1jKpQzAbw2qwBsqzpwHcEYk.S',0,NULL,NULL,NULL,'IpaGSSwvjn','2025-05-18 01:52:43','2025-05-18 01:52:43'),
('798d842c-a7fb-4524-bf7e-75dcdc5593f2','AceSJ','acesj@1chosfg.com','2025-05-18 01:52:43','$2y$12$hsLtL6sy1RCI0U5HkLwxNu7FL2Na1jKpQzAbw2qwBsqzpwHcEYk.S',0,NULL,NULL,NULL,'pvrwyCTYEp','2025-05-18 01:52:43','2025-05-18 01:52:43'),
('7f84b7d8-3e2c-4a1a-96f3-9e8a2b6c74d1','Admin','admin@1chosfg.com','2025-05-18 01:52:43','$2y$12$hsLtL6sy1RCI0U5HkLwxNu7FL2Na1jKpQzAbw2qwBsqzpwHcEYk.S',0,NULL,NULL,NULL,'d8bQqFJ8vG','2025-05-18 01:52:43','2025-05-18 01:52:43'),
('bceadf0c-87c1-4a42-b2a7-aa2ef35049a6','KurbyJO','kurbyjo@1chosfg.com','2025-05-18 01:52:43','$2y$12$hsLtL6sy1RCI0U5HkLwxNu7FL2Na1jKpQzAbw2qwBsqzpwHcEYk.S',0,NULL,NULL,NULL,'tccr68I0qr','2025-05-18 01:52:43','2025-05-18 01:52:43'),
('dbf58ad0-4c28-4ee8-be60-eaff7438ba01','KrislouJN','krisloujn@1chosfg.com','2025-05-18 01:52:43','$2y$12$hsLtL6sy1RCI0U5HkLwxNu7FL2Na1jKpQzAbw2qwBsqzpwHcEYk.S',1,NULL,NULL,NULL,'S1WxAURsyz','2025-05-18 01:52:43','2025-05-18 01:52:43');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
