-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: teacher
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
-- Table structure for table `identitas_diris`
--

DROP TABLE IF EXISTS `identitas_diris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identitas_diris` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `namalengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-',
  `jeniskelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-',
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-',
  `nuptk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempatlahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-',
  `tanggallahir` date NOT NULL,
  `alamatkampung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamatrt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamatrw` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamatdesa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamatkecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamatkab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamatprovinsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamatkodepos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nohp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-',
  `npwp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identitas_diris`
--

LOCK TABLES `identitas_diris` WRITE;
/*!40000 ALTER TABLE `identitas_diris` DISABLE KEYS */;
INSERT INTO `identitas_diris` VALUES (1,2,'Sandi Cahya Septian, M.Pd.','Laki-laki','198409122010011009','3201221209840001','1244762663120003','Sukabumi','1984-09-12','Kp. Nyalindung','005','003','Sukamekar','Sukaraja','Kabupaten Sukabumi','Jawabarat','43192','081564866684','sandiseptian29@guru.smp.belajar.id','49.588.406.6-434.000','2022-05-05 12:02:36','2022-05-05 12:02:36');
/*!40000 ALTER TABLE `identitas_diris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jabatan_gurus`
--

DROP TABLE IF EXISTS `jabatan_gurus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jabatan_gurus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Jabatanguru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jabatan_gurus`
--

LOCK TABLES `jabatan_gurus` WRITE;
/*!40000 ALTER TABLE `jabatan_gurus` DISABLE KEYS */;
INSERT INTO `jabatan_gurus` VALUES (1,'Guru Kelas',NULL,NULL),(2,'Guru Mata Pelajaran',NULL,NULL),(3,'Guru Bimbingan Konseling',NULL,NULL);
/*!40000 ALTER TABLE `jabatan_gurus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jeniskelamins`
--

DROP TABLE IF EXISTS `jeniskelamins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jeniskelamins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `jeniskelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jeniskelamins`
--

LOCK TABLES `jeniskelamins` WRITE;
/*!40000 ALTER TABLE `jeniskelamins` DISABLE KEYS */;
INSERT INTO `jeniskelamins` VALUES (1,'Laki-Laki',NULL,NULL),(2,'Perempuan',NULL,NULL);
/*!40000 ALTER TABLE `jeniskelamins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kelas`
--

DROP TABLE IF EXISTS `kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kelas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kelas`
--

LOCK TABLES `kelas` WRITE;
/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` VALUES (1,'Kelas 1',NULL,NULL),(2,'Kelas 2',NULL,NULL),(3,'Kelas 3',NULL,NULL),(4,'Kelas 4',NULL,NULL),(5,'Kelas 5',NULL,NULL),(6,'Kelas 6',NULL,NULL),(7,'Kelas 7',NULL,NULL),(8,'Kelas 8',NULL,NULL),(9,'Kelas 9',NULL,NULL),(10,'Kelas 10',NULL,NULL),(11,'Kelas 11',NULL,NULL),(12,'Kelas 12',NULL,NULL);
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kurikulums`
--

DROP TABLE IF EXISTS `kurikulums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kurikulums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kurikulum` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kurikulums`
--

LOCK TABLES `kurikulums` WRITE;
/*!40000 ALTER TABLE `kurikulums` DISABLE KEYS */;
INSERT INTO `kurikulums` VALUES (1,'Kurikulum 2013',NULL,NULL),(2,'Kurikulum Sekolah Penggerak',NULL,NULL);
/*!40000 ALTER TABLE `kurikulums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kurtilas`
--

DROP TABLE IF EXISTS `kurtilas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kurtilas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `id_id` bigint(20) unsigned NOT NULL,
  `kur_id` bigint(20) unsigned NOT NULL,
  `tp_id` bigint(20) unsigned NOT NULL,
  `ps_id` bigint(20) unsigned NOT NULL,
  `ks_id` bigint(20) unsigned NOT NULL,
  `pengawas_id` bigint(20) unsigned NOT NULL,
  `mapel_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kurtilas`
--

LOCK TABLES `kurtilas` WRITE;
/*!40000 ALTER TABLE `kurtilas` DISABLE KEYS */;
INSERT INTO `kurtilas` VALUES (3,2,1,2,1,1,1,1,5,'2022-05-17 07:23:42','2022-05-17 07:23:42');
/*!40000 ALTER TABLE `kurtilas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapels`
--

DROP TABLE IF EXISTS `mapels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mata_pelajaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapels`
--

LOCK TABLES `mapels` WRITE;
/*!40000 ALTER TABLE `mapels` DISABLE KEYS */;
INSERT INTO `mapels` VALUES (1,'Bahasa Indonesia',NULL,NULL),(2,'Pendidikan Agama Budi Pekerti',NULL,NULL),(3,'IPA',NULL,NULL),(4,'Pendidikan Kewarganegaraan',NULL,NULL),(5,'IPS',NULL,NULL),(6,'Seni Budaya',NULL,NULL),(7,'Bahasa Inggris',NULL,NULL),(8,'Pendidikan Jasmani, Olahraga dan Kesehatan',NULL,NULL),(9,'Matematika',NULL,NULL),(10,'Informatika',NULL,NULL),(11,'Bahasa Sunda',NULL,NULL);
/*!40000 ALTER TABLE `mapels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2022_05_02_145806_create_tugastambahan_gurus_table',13),(9,'2022_04_02_052152_add_relationships_to_kompetensi_intis_table',1),(104,'2022_04_16_060217_create_skls_table',2),(206,'2019_08_19_000000_create_failed_jobs_table',3),(207,'2019_12_14_000001_create_personal_access_tokens_table',3),(208,'2022_03_29_151458_laratrust_setup_tables',3),(209,'2022_05_03_142547_create_identitas_diris_table',3),(228,'2022_05_03_142848_create_profil_sekolahs_table',4),(229,'2022_05_03_143022_create_profil_kepalasekolahs_table',4),(230,'2022_05_03_143222_create_profil_pengawassekolahs_table',4),(231,'2022_05_05_005253_create_penugasans_table',4),(233,'2022_05_02_044147_create_mapels_table',5),(234,'2022_05_07_045616_create_peserta_didiks_table',5),(235,'2022_05_02_060629_create_jeniskelamins_table',5),(236,'2022_05_02_060701_create_tingkat_satuanpendidikans_table',5),(237,'2022_05_02_071812_create_status_kepegawaians_table',6),(238,'2022_05_07_141917_create_tahun_pelajarans_table',7),(239,'2022_05_02_142345_create_kelas_table',8),(249,'2022_05_07_150705_create_rombels_table',9),(250,'2022_05_11_185529_create_kurikulums_table',10),(257,'2022_05_11_201552_create_kurtilas_table',11),(268,'2022_05_02_165051_create_jabatan_gurus_table',14),(269,'2022_05_12_014855_create_pembagiantugas_table',14);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `pembagiantugas`
--

DROP TABLE IF EXISTS `pembagiantugas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pembagiantugas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `id_id` bigint(20) unsigned NOT NULL,
  `tp_id` bigint(20) unsigned NOT NULL,
  `ps_id` bigint(20) unsigned NOT NULL,
  `ks_id` bigint(20) unsigned NOT NULL,
  `pengawas_id` bigint(20) unsigned NOT NULL,
  `kur_id` bigint(20) unsigned NOT NULL,
  `mapel_id` bigint(20) unsigned NOT NULL,
  `no_sk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_sk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tugas_pokok` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembagiantugas`
--

LOCK TABLES `pembagiantugas` WRITE;
/*!40000 ALTER TABLE `pembagiantugas` DISABLE KEYS */;
/*!40000 ALTER TABLE `pembagiantugas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penugasans`
--

DROP TABLE IF EXISTS `penugasans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penugasans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_id` bigint(20) unsigned NOT NULL,
  `ps_id` bigint(20) unsigned NOT NULL,
  `sk_id` bigint(20) unsigned NOT NULL,
  `no_sk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_sk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tmt_penugasan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pejabatyangmenandatangani` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namapejabatyangmenandatangani` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penugasans`
--

LOCK TABLES `penugasans` WRITE;
/*!40000 ALTER TABLE `penugasans` DISABLE KEYS */;
INSERT INTO `penugasans` VALUES (1,3,2,1,'800/134-Setdis P dan K/II/2021','2021-02-03','2021-02-01','Kepala Dinas Pendidikan dan Kebudayaan Kota Sukabumi','Ir. H. Cecep Mansur, MM','2022-05-07 00:31:52','2022-05-07 00:31:52'),(2,1,1,1,'800/059-Kep.kadis P dan K/VII/2021','2021-07-27','2021-07-27','Kepala Dinas Pendidikan dan Kebudayaan Kota Sukabumi','Ir. H. Cecep Mansur, MM','2022-05-16 02:51:25','2022-05-16 02:51:25');
/*!40000 ALTER TABLE `penugasans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(1,2),(2,1),(2,2),(3,1),(3,2),(4,1),(4,2),(5,1),(6,1),(7,1),(8,1),(9,1),(9,2),(9,3),(9,4),(9,5),(10,1),(10,2),(10,3),(10,4),(10,5),(11,6),(12,6),(13,6),(14,6);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_user`
--

DROP TABLE IF EXISTS `permission_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_user` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  KEY `permission_user_permission_id_foreign` (`permission_id`),
  CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_user`
--

LOCK TABLES `permission_user` WRITE;
/*!40000 ALTER TABLE `permission_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'users-create','Create Users','Create Users','2022-05-05 10:42:30','2022-05-05 10:42:30'),(2,'users-read','Read Users','Read Users','2022-05-05 10:42:30','2022-05-05 10:42:30'),(3,'users-update','Update Users','Update Users','2022-05-05 10:42:30','2022-05-05 10:42:30'),(4,'users-delete','Delete Users','Delete Users','2022-05-05 10:42:30','2022-05-05 10:42:30'),(5,'payments-create','Create Payments','Create Payments','2022-05-05 10:42:30','2022-05-05 10:42:30'),(6,'payments-read','Read Payments','Read Payments','2022-05-05 10:42:30','2022-05-05 10:42:30'),(7,'payments-update','Update Payments','Update Payments','2022-05-05 10:42:30','2022-05-05 10:42:30'),(8,'payments-delete','Delete Payments','Delete Payments','2022-05-05 10:42:30','2022-05-05 10:42:30'),(9,'profile-read','Read Profile','Read Profile','2022-05-05 10:42:30','2022-05-05 10:42:30'),(10,'profile-update','Update Profile','Update Profile','2022-05-05 10:42:30','2022-05-05 10:42:30'),(11,'module_1_name-create','Create Module_1_name','Create Module_1_name','2022-05-05 10:42:30','2022-05-05 10:42:30'),(12,'module_1_name-read','Read Module_1_name','Read Module_1_name','2022-05-05 10:42:30','2022-05-05 10:42:30'),(13,'module_1_name-update','Update Module_1_name','Update Module_1_name','2022-05-05 10:42:30','2022-05-05 10:42:30'),(14,'module_1_name-delete','Delete Module_1_name','Delete Module_1_name','2022-05-05 10:42:30','2022-05-05 10:42:30');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `peserta_didiks`
--

DROP TABLE IF EXISTS `peserta_didiks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peserta_didiks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `jk_id` bigint(20) unsigned NOT NULL,
  `ps_id` bigint(20) unsigned NOT NULL,
  `nisn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namapesertadidik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peserta_didiks`
--

LOCK TABLES `peserta_didiks` WRITE;
/*!40000 ALTER TABLE `peserta_didiks` DISABLE KEYS */;
INSERT INTO `peserta_didiks` VALUES (1,1,1,'0081471553','20217001','AA Nur AS Syamsi','2022-05-10 18:33:37','2022-05-10 18:33:37');
/*!40000 ALTER TABLE `peserta_didiks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profil_kepalasekolahs`
--

DROP TABLE IF EXISTS `profil_kepalasekolahs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profil_kepalasekolahs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ps_id` bigint(20) unsigned NOT NULL,
  `nama_kepalasekolah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip_ks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pangkat_golongan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profil_kepalasekolahs`
--

LOCK TABLES `profil_kepalasekolahs` WRITE;
/*!40000 ALTER TABLE `profil_kepalasekolahs` DISABLE KEYS */;
INSERT INTO `profil_kepalasekolahs` VALUES (1,1,'Agus Budiman, M. Pd.','197102272006041008','Pembina IV a','2022-05-07 05:25:30','2022-05-07 05:25:30'),(2,2,'Ijang Efendi, M. Pd','196511091988031017','Pembina IV a','2022-05-16 07:17:43','2022-05-16 07:17:43');
/*!40000 ALTER TABLE `profil_kepalasekolahs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profil_pengawassekolahs`
--

DROP TABLE IF EXISTS `profil_pengawassekolahs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profil_pengawassekolahs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ps_id` bigint(20) unsigned NOT NULL,
  `nama_pengawassekolah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip_pengawas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pangkat_golongan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profil_pengawassekolahs`
--

LOCK TABLES `profil_pengawassekolahs` WRITE;
/*!40000 ALTER TABLE `profil_pengawassekolahs` DISABLE KEYS */;
INSERT INTO `profil_pengawassekolahs` VALUES (1,1,'Roni Abdurahman, M. Pd','196811121994121002','Pembina IV a','2022-05-07 05:31:55','2022-05-07 05:31:55'),(2,2,'Roni Abdurahman, M. Pd','196811121994121002','Pembina IV a','2022-05-16 07:17:57','2022-05-16 07:17:57');
/*!40000 ALTER TABLE `profil_pengawassekolahs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profil_sekolahs`
--

DROP TABLE IF EXISTS `profil_sekolahs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profil_sekolahs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `nama_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `npsn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamatkampung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamatrt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamatrw` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamatdesa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamatkecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamatkab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamatprovinsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamatkodepos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logosekolah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profil_sekolahs`
--

LOCK TABLES `profil_sekolahs` WRITE;
/*!40000 ALTER TABLE `profil_sekolahs` DISABLE KEYS */;
INSERT INTO `profil_sekolahs` VALUES (1,2,'SMP Negeri 4 Kota Sukabumi','20221608','Jl. Kopeng No.91','-','-','Karamat','Gunungpuyuh','Kota Sukabumi','Jawa Barat','43122',NULL,NULL,'2022-05-06 23:37:04','2022-05-06 23:37:04'),(2,2,'SMP Negeri 8 Kota Sukabumi','20221612','Jl. Sudajaya Hilir No 31','-','-','Gedongpanjang','Citamiang','Kota Sukabumi','Jawa Barat','43161',NULL,NULL,'2022-05-16 02:45:00','2022-05-16 02:45:00');
/*!40000 ALTER TABLE `profil_sekolahs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profilsekolah_tahun_pelajarans`
--

DROP TABLE IF EXISTS `profilsekolah_tahun_pelajarans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profilsekolah_tahun_pelajarans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `profil_sekolahs_id` bigint(20) unsigned NOT NULL,
  `tahun_pelajarans_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profilsekolah_tahun_pelajarans`
--

LOCK TABLES `profilsekolah_tahun_pelajarans` WRITE;
/*!40000 ALTER TABLE `profilsekolah_tahun_pelajarans` DISABLE KEYS */;
/*!40000 ALTER TABLE `profilsekolah_tahun_pelajarans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `role_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (5,2,'App\\Models\\User'),(5,4,'App\\Models\\User');
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'superadministrator','Superadministrator','Superadministrator','2022-05-05 10:42:29','2022-05-05 10:42:29'),(2,'administrator','Administrator','Administrator','2022-05-05 10:42:30','2022-05-05 10:42:30'),(3,'kurikulum','Kurikulum','Kurikulum','2022-05-05 10:42:30','2022-05-05 10:42:30'),(4,'kesiswaan','Kesiswaan','Kesiswaan','2022-05-05 10:42:30','2022-05-05 10:42:30'),(5,'guru','Guru','Guru','2022-05-05 10:42:30','2022-05-05 10:42:30'),(6,'peserta_didik','Peserta Didik','Peserta Didik','2022-05-05 10:42:30','2022-05-05 10:42:30');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rombels`
--

DROP TABLE IF EXISTS `rombels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rombels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ps_id` bigint(20) unsigned NOT NULL,
  `tp_id` bigint(20) unsigned NOT NULL,
  `kelas_id` bigint(20) unsigned NOT NULL,
  `namarombel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namawalikelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rombels`
--

LOCK TABLES `rombels` WRITE;
/*!40000 ALTER TABLE `rombels` DISABLE KEYS */;
INSERT INTO `rombels` VALUES (1,1,2,8,'Kelas 8A','Yudi Wardiansyah, S .Pd.','2022-05-14 18:06:12','2022-05-14 18:06:12');
/*!40000 ALTER TABLE `rombels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_kepegawaians`
--

DROP TABLE IF EXISTS `status_kepegawaians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_kepegawaians` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `statuskepegawaian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_kepegawaians`
--

LOCK TABLES `status_kepegawaians` WRITE;
/*!40000 ALTER TABLE `status_kepegawaians` DISABLE KEYS */;
INSERT INTO `status_kepegawaians` VALUES (1,'PNS',NULL,NULL),(2,'GTY/PTY',NULL,NULL),(3,'GTT/PTT Provinsi',NULL,NULL),(4,'GTT/PTT Kabupaten/Kota',NULL,NULL),(5,'Guru Bantu Pusat',NULL,NULL),(6,'Guru Honor Sekolah',NULL,NULL);
/*!40000 ALTER TABLE `status_kepegawaians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tahun_pelajarans`
--

DROP TABLE IF EXISTS `tahun_pelajarans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tahun_pelajarans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tahun_pelajaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tahun_pelajarans`
--

LOCK TABLES `tahun_pelajarans` WRITE;
/*!40000 ALTER TABLE `tahun_pelajarans` DISABLE KEYS */;
INSERT INTO `tahun_pelajarans` VALUES (1,'2020-2021','2022-05-15 15:11:40','2022-05-24 15:11:55'),(2,'2021-2022','2022-05-04 15:11:59','2022-05-09 15:12:02');
/*!40000 ALTER TABLE `tahun_pelajarans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tingkat_satuanpendidikans`
--

DROP TABLE IF EXISTS `tingkat_satuanpendidikans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tingkat_satuanpendidikans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tingkatsatuanpendidikan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tingkat_satuanpendidikans`
--

LOCK TABLES `tingkat_satuanpendidikans` WRITE;
/*!40000 ALTER TABLE `tingkat_satuanpendidikans` DISABLE KEYS */;
INSERT INTO `tingkat_satuanpendidikans` VALUES (2,'SD/MI/SDLB/Paket A\r\n',NULL,NULL),(3,'SMP/MTs/SMPLB/Paket B',NULL,NULL),(4,'SMA/MA/SMALB/SMK/Paket C\r\n',NULL,NULL);
/*!40000 ALTER TABLE `tingkat_satuanpendidikans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tugastambahan_gurus`
--

DROP TABLE IF EXISTS `tugastambahan_gurus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tugastambahan_gurus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Nama_tugastambahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlahjam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tugastambahan_gurus`
--

LOCK TABLES `tugastambahan_gurus` WRITE;
/*!40000 ALTER TABLE `tugastambahan_gurus` DISABLE KEYS */;
INSERT INTO `tugastambahan_gurus` VALUES (1,'Wakil Kepala Sekolah','12',NULL,NULL),(2,'Wakil Kepala Sekolah Bagian Kurikulum','12',NULL,NULL),(3,'Wakil Kepala Sekolah Bagian Kesiswaan','12',NULL,NULL),(4,'Wakil Kepala Sekolah Bagian Sarana dan Prasarana','12',NULL,NULL),(5,'Wakil Kepala Sekolah Bagian Humas','12',NULL,NULL),(6,'Kepala Perpustakaan','12',NULL,NULL),(7,'Kepala Laboratorium','12',NULL,NULL),(8,'Pembina Ekstrakulikuler','12',NULL,NULL),(9,'Wali Kelas','2',NULL,NULL),(10,'Guru Piket','1',NULL,NULL);
/*!40000 ALTER TABLE `tugastambahan_gurus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Sandi Cahya Septian, M. Pd','sandiseptian1984@gmail.com',NULL,'$2y$10$XGOub7dd1ktOI47Q7WlZVe.uFnhN30.00xA4N8wbnxifNnst4bm82',NULL,'2022-05-06 04:05:50','2022-05-06 04:05:50'),(4,'Muhammad Waldan Syafiq','sandiseptian29@guru.smp.belajar.id',NULL,'$2y$10$zvwVFWhnqVWZ7EZ.UYEJoesNcsqt6NAfZxnCIEY1XncdG36HJ.byS',NULL,'2022-05-21 05:48:57','2022-05-21 05:48:57');
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

-- Dump completed on 2022-05-21 21:08:38
