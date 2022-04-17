-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               8.0.24 - MySQL Community Server - GPL
-- Server OS:                    Linux
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for db_inventory
CREATE DATABASE IF NOT EXISTS `db_inventory` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_inventory`;

-- Dumping structure for table db_inventory.brands
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_inventory.brands: ~2 rows (approximately)
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` (`id`, `name`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'SKF', 1, '2022-03-06 18:39:04', '2022-03-06 18:39:04', NULL),
	(2, 'TIMKEN', 1, '2022-03-06 18:47:55', '2022-03-06 18:47:55', NULL);
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;

-- Dumping structure for table db_inventory.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_inventory.categories: ~0 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'BEARING', 1, '2022-03-06 12:56:20', '2022-03-06 12:56:20', NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table db_inventory.countries
CREATE TABLE IF NOT EXISTS `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_inventory.countries: ~4 rows (approximately)
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` (`id`, `name`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'tes1 123', 0, '2022-02-28 08:40:57', '2022-02-28 08:41:08', '2022-02-28 08:41:08'),
	(2, 'SWEDEN', 1, '2022-03-06 18:40:31', '2022-03-06 18:40:31', NULL),
	(3, 'USA', 1, '2022-03-06 18:47:55', '2022-03-06 18:47:55', NULL),
	(4, 'ITALY', 1, '2022-03-06 18:47:55', '2022-03-06 18:47:55', NULL);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;

-- Dumping structure for table db_inventory.currencies
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_inventory.currencies: ~3 rows (approximately)
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` (`id`, `name`, `code`, `exchange_rate`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'US Dollar', 'USD', 1, '2020-11-01 00:22:58', '2020-11-01 00:34:55', NULL),
	(2, 'Euro', 'Euro', 0.85, '2020-11-01 01:29:12', '2020-11-10 23:15:34', NULL),
	(3, 'Rupiah', 'IDR', 1, '2022-03-12 20:42:22', NULL, NULL);
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;

-- Dumping structure for table db_inventory.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `npwp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_npwp_unique` (`npwp`),
  UNIQUE KEY `customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_inventory.customers: ~51 rows (approximately)
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`id`, `userId`, `npwp`, `name`, `email`, `phone`, `address`, `city`, `postal_code`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 0, '02.269.451.7-431.000', 'CV. ARIRA PANGINDO', NULL, '0251-8659013/ 8664267', 'JL. SUKARAJA CILUAR Blok - No.51 RT:004 RW:001 Kel.CILUAR Kec.BOGOR UTARA Kota/Kab.BOGOR JAWA BARAT 16156', NULL, NULL, 1, '2022-03-12 09:13:50', '2022-03-12 09:13:50', NULL),
	(2, 0, '82.823.686.9-526.000', 'CV. BAHAGIAA', NULL, 'null', 'JL. GATOT SUBROTO Blok 000 No.51 RT:001 RW:002 Kel.JAYENGAN Kec.SERENGAN Kota/Kab.SURAKARTA JAWA TENGAH 57152', NULL, NULL, 1, '2022-03-12 09:13:50', '2022-03-12 09:13:50', NULL),
	(3, 0, '02.185.835.2-044.000', 'CV. MITRA BARU', NULL, 'null', 'RUKO MARINATAMA MG. DUA JL. G. SAHARI RAYA Blok C-11 No.002 RT:000 RW:000 Kel.PADEMANGAN BARAT Kec.PADEMANGAN Kota/Kab.JAKARTA UTARA DKI JAKARTA 10720', NULL, NULL, 1, '2022-03-12 09:13:50', '2022-03-12 09:13:50', NULL),
	(4, 0, '02.955.333.6-504.000', 'CV. SURYA SARANA DINAMIKA', NULL, 'null', 'JL. MT. HARYONO Blok 000 No.39 RT:006 RW:004 Kel.PURWODINATAN Kec.SEMARANG TENGAH Kota/Kab.KOTA SEMARANG JAWA TENGAH 00000', NULL, NULL, 1, '2022-03-12 09:13:50', '2022-03-12 09:13:50', NULL),
	(5, 0, '02.113.519.9-614.000', 'CV BINTANG INDOTECH', NULL, 'null', 'DUPAK RUKO MUTIARA SURABAYA Blok B12 No.65 RT:000 RW:000 Kel.DUPAK Kec.BUBUTAN Kota/Kab.SURABAYA JAWA TIMUR 60172', NULL, NULL, 1, '2022-03-12 09:13:50', '2022-03-12 09:13:50', NULL),
	(6, 0, '21.029.469.0-511.000', 'PT. AMAN INDAH MAKMUR', NULL, 'null', 'KAWASAN INDUSTRI CANDI GATOT SUBROTO Blok 015 No.000 RT:000 RW:000 Kel.NGALIYAN Kec.NGALIYAN Kota/Kab.SEMARANG JAWA TENGAH 00000', NULL, NULL, 1, '2022-03-12 09:13:51', '2022-03-12 09:13:51', NULL),
	(7, 0, '01.744.927.3-063.000', 'PT. APAC INTI CORPORA', NULL, 'null', 'JL. PAJAJARAN Blok 14 No.62 RT:000 RW:000 Kel.GANDANGSARI Kec.JATIUWUNG Kota/Kab.TANGERANG BANTEN 00000', NULL, NULL, 1, '2022-03-12 09:13:51', '2022-03-12 09:13:51', NULL),
	(8, 0, '02.273.254.9-075.000', 'PT. ASIAN BEARINDO SEJAHTERA', NULL, '216258222', 'JL. LAUTZE RAYA Blok 000 No.103-105 RT:011 RW:003 Kel.KARANG ANYAR Kec.SAWAH BESAR Kota/Kab.JAKARTA PUSAT DKI JAKARTA 10710', NULL, NULL, 1, '2022-03-12 09:13:51', '2022-03-12 09:13:51', NULL),
	(9, 0, '01.254.040.7-092.000', 'PT. ASIA PACIFIC FIBER TBK.', NULL, 'null', 'DESA NOLOKERTO JL. RAYA - KALIWUNGU KM 19 Blok 000 No.000 RT:000 RW:000 Kel.NOLOKERTO Kec.KALIWUNGU Kota/Kab.KENDAL JAWA TENGAH 00000', NULL, NULL, 1, '2022-03-12 09:13:51', '2022-03-12 09:13:51', NULL),
	(10, 0, '01.139.720.5-511.000', 'PT. BENGKEL REPARASI TJOKRO BERSAUDARA SEMARANG', NULL, 'null', 'JL. PENGAPON Blok 000 No.017 RT:000 RW:000 Kel.KEMIJEN Kec.SEMARANG TIMUR Kota/Kab.KOTA SEMARANG JAWA TENGAH 00000', NULL, NULL, 1, '2022-03-12 09:13:52', '2022-03-12 09:13:52', NULL),
	(11, 0, '01.966.989.4-073.000', 'PT. BIMA ESTETIKA LESTARI TANGGUH', NULL, '216257433', 'JL. MELAWAN Blok 000 No.075 RT:012 RW:008 Kel.MANGGA DUA Kec.SAWAH BESAR Kota/Kab.JAKARTA PUSAT DKI JAKARTA 10730', NULL, NULL, 1, '2022-03-12 09:13:52', '2022-03-12 09:13:52', NULL),
	(12, 0, '01.310.774.3-062.000', 'PT. BIROTIKA SEMESTA', NULL, 'null', 'JL. MT. HARYONO KAV 58 - 60 Blok 000 No.000 RT:000 RW:000 Kel.PANCORAN Kec.PANCORAN Kota/Kab.JAKARTA SELATAN DKI JAKARTA 00000', NULL, NULL, 1, '2022-03-12 09:13:52', '2022-03-12 09:13:52', NULL),
	(13, 0, '01.674.359.3-056.000', 'PT. BOSCH REXROTH', NULL, 'null', 'CILANDAK COMMERSIAL ESTATE BLD 202, JL. CILANDAK KKO Blok 00 No.00 RT:000 RW:000 Kel.CILANDAK TIMUR Kec.PASAR MINGGU Kota/Kab.JAKARTA SELATAN DKI JAKARTA 12560', NULL, NULL, 1, '2022-03-12 09:13:53', '2022-03-12 09:13:53', NULL),
	(14, 0, '02.416.794.2-075.000', 'PT. BUKIT MAS BEARINDO', NULL, 'null', 'JL. KARANG ANYAR Blok B38 - 39 No.055 RT:000 RW:000 Kel.SAWAH BESAR Kec.KARANG ANYAR Kota/Kab.JAKARTA PUSAT DKI JAKARTA 10740', NULL, NULL, 1, '2022-03-12 09:13:53', '2022-03-12 09:13:53', NULL),
	(15, 0, '21.100.687.9-004.000', 'PT. CBC INDONESIA', NULL, '021 29221400', 'SECURE BUILDING BLOK C JL. PROTOKOL HALIM PERDANA KUSUMA Blok 000 No.000 RT:010 RW:010 Kel.CILILITAN Kec.MAKASAR Kota/Kab.JAKARTA TIMUR DKI JAKARTA 13930', NULL, NULL, 1, '2022-03-12 09:13:53', '2022-03-12 09:13:53', NULL),
	(16, 0, '02.113.787.2-631.000', 'PT. CENTURY BEARINDO INTERNATIONAL', NULL, 'null', 'RUKO MUTIARA DUPAK A -26 JL. RAYA DUPAK Blok 000 No.65 RT:000 RW:000 Kel.GUNDIH Kec.BUBUTAN Kota/Kab.SURABAYA JAWA TIMUR 60171', NULL, NULL, 1, '2022-03-12 09:13:53', '2022-03-12 09:13:53', NULL),
	(17, 0, '01.000.172.5-092.000', 'PT. CHAROEN POKPHAND INDONESIA Tbk.', NULL, '216919999', 'JL. ANCOL BARAT Blok VIII No.001 RT:001 RW:003 Kel.ANCOL Kec.PADEMANGAN Kota/Kab.JAKARTA UTARA DKI JAKARTA 14430', NULL, NULL, 1, '2022-03-12 09:13:53', '2022-03-12 09:13:53', NULL),
	(18, 0, '01.000.197.2-058.000', 'PT. CHAROEN POKPHAND JAYA FARM', NULL, 'null', 'JL.ANCOL BARAT Blok VIII No.001 RT:001 RW:003 Kel.ANCOL Kec.PADEMANGAN Kota/Kab.JAKARTA UTARA DKI JAKARTA 14430', NULL, NULL, 1, '2022-03-12 09:13:53', '2022-03-12 09:13:53', NULL),
	(19, 0, '71.280.614.0-014.000', 'PT. CJ CHEILJEDANG FEED SEMARANG', NULL, '021 52995000', 'MENARA UTARA GD. MENARA JAMSOSTEK LT. 21 JL. JEND. GATOT SUBROTO Blok 000 No.38 RT:000 RW:000 Kel.KUNINGAN BARAT Kec.MAMPANG PRAPATAN Kota/Kab.JAKARTA SELATAN DKI JAKARTA 12710', NULL, NULL, 1, '2022-03-12 09:13:53', '2022-03-12 09:13:53', NULL),
	(20, 0, '01.139.907.8-532.000', 'PT. DAN LIRIS', NULL, 'null', 'JL. MERAPI Blok 000 No.23 RT:000 RW:000 Kel.BANARAN Kec.GROGOL Kota/Kab.SUKOHARJO JAWA TENGAH 57552', NULL, NULL, 1, '2022-03-12 09:13:53', '2022-03-12 09:13:53', NULL),
	(21, 0, '03.168.116.6-009.000', 'PT. DIAN BATARA INTI', NULL, 'null', 'JL KALISARI Blok 75A No.000 RT:006 RW:002 Kel.KALISARI Kec.PS. REBO Kota/Kab.JAKARTA TIMUR DKI JAKARTA 00000', NULL, NULL, 1, '2022-03-12 09:13:54', '2022-03-12 09:13:54', NULL),
	(22, 0, '01.202.397.4-511.000', 'PT. DJARUM', NULL, '62291431901', 'Jalan Jend. A. Yani Blok 000 No.28 RT:000 RW:000 Kel.Gribig Kec.Gebog Kota/Kab.Kudus Jawa Tengah 00000', NULL, NULL, 1, '2022-03-12 09:13:54', '2022-03-12 09:13:54', NULL),
	(23, 0, '01.245.489.8-511.000', 'PT. DUA KELINCI', NULL, 'null', 'JL. PATI - KUDUS KM 6,3 Blok 000 No.000 RT:000 RW:000 Kel.BUMIREJO Kec.MARGOREJO Kota/Kab.PATI JAWA TENGAH 00000', NULL, NULL, 1, '2022-03-12 09:13:54', '2022-03-12 09:13:54', NULL),
	(24, 0, '01.577.116.5-092.000', 'PT. GARUDAFOOD PUTRA PUTRI JAYA, TBK', NULL, 'null', 'BINTARO RAYA Blok 000 No.10A RT:000 RW:000 Kel.KEBAYORAN LAMA UTARA Kec.KEBAYORAN LAMA Kota/Kab.JAKARTA SELATAN DKI JAKARTA 12240', NULL, NULL, 1, '2022-03-12 09:13:54', '2022-03-12 09:13:54', NULL),
	(25, 0, '01.593.826.9-431.000', 'PT. GUNANUSA ERAMANDIRI', NULL, 'null', 'KAWASAN INDUSTRI HYUNDAI, JL. INTI I Blok C3 No.003 RT:000 RW:000 Kel.CIBATU Kec.CIKARANG SELATAN Kota/Kab.BEKASI JAWA BARAT 17550', NULL, NULL, 1, '2022-03-12 09:13:54', '2022-03-12 09:13:54', NULL),
	(26, 0, '01.346.347.6-057.000', 'PT. INDOFOOD FRITOLAY MAKMUR', NULL, 'null', 'GEDUNG SUDIRMAN PLAZA - INDOFOOD TOWER LT. 23 JL. JEND. SUDIRMAN KAV 76 - 78 Blok 000 No.000 RT:003 RW:003 Kel.KUNINGAN Kec.SETIABUDI Kota/Kab.JAKARTA SELATAN DKI JAKARTA 12910', NULL, NULL, 1, '2022-03-12 09:13:54', '2022-03-12 09:13:54', NULL),
	(27, 0, '02.566.789.0-032.000', 'PT. INDOGEAR TRANSMISI SISTEM', NULL, 'null', 'PERTOKOAN GLODOK JAYA JL. HAYAM WURUK Blok 000 No.1 D7 RT:001 RW:006 Kel.MANGGA BESAR Kec.--- Kota/Kab.JAKARTA BARAT DKI JAKARTA 11180', NULL, NULL, 1, '2022-03-12 09:13:54', '2022-03-12 09:13:54', NULL),
	(28, 0, '01.619.856.6-511.000', 'PT. KABANA TEXTILE INDUSTRIES', NULL, 'null', 'JL.RAYA SPAIT KM.1O Blok 000 No.000 RT:000 RW:000 Kel.PAIT Kec.SIWALAN Kota/Kab.PEKALONGAN JAWA TENGAH 51155', NULL, NULL, 1, '2022-03-12 09:13:54', '2022-03-12 09:13:54', NULL),
	(29, 0, '01.002.173.1-505.000', 'PT. KAMALTEX', NULL, 'null', 'JL. SYEH BASYARUDIN Blok 000 No.000 RT:000 RW:000 Kel.NGEMPON Kec.BERGAS Kota/Kab.KAB. SEMARANG JAWA TENGAH 50552', NULL, NULL, 1, '2022-03-12 09:13:55', '2022-03-12 09:13:55', NULL),
	(30, 0, '01.545.518.1-525.000', 'PT. KOSOEMA NANDA PUTRA', NULL, 'null', 'JL. PEDAN - KARANGDOWO Blok 000 No.000 RT:000 RW:000 Kel.KALANGAN Kec.PEDAN Kota/Kab.KLATEN JAWA TENGAH 00000', NULL, NULL, 1, '2022-03-12 09:13:55', '2022-03-12 09:13:55', NULL),
	(31, 0, '01.824.326.1-054.000', 'PT. MALINDO FEEDMILL TBK', NULL, 'null', 'JL. RS FATMAWATI NO. 15, KOMPLEK GOLDEN PLAZA Blok G No.17 - 22 RT:000 RW:000 Kel.- Kec.CILANDAK Kota/Kab.JAKARTA SELATAN DKI JAKARTA 12420', NULL, NULL, 1, '2022-03-12 09:13:55', '2022-03-12 09:13:55', NULL),
	(32, 0, '03.098.803.4-027.000', 'PT. MOMENTUM ENGINEERING INDOCHIME', NULL, 'null', 'MEGA GLODOK KEMAYORAN JL. ANGKASA KAV. B - 6 Blok A1 No.12 & 15 RT:000 RW:000 Kel.GUNUNG SAHARI SELATAN Kec.KEMAYORAN Kota/Kab.JAKARTA PUSAT DKI JAKARTA 00000', NULL, NULL, 1, '2022-03-12 09:13:55', '2022-03-12 09:13:55', NULL),
	(33, 0, '90.986.509.9-026.000', 'PT. NOBEL RIGGINDO SAMUDRA', NULL, 'null', 'GEDUNG BAJA TOWER B LANTAI 3 JL. PANGERAN JAYAKARTA NO. 55 Blok 0000 No.0000 RT:000 RW:000 Kel.MANGGA DUA SELATAN Kec.SAWAH BESAR Kota/Kab.JAKARTA PUSAT DKI JAKARTA 10730', NULL, NULL, 1, '2022-03-12 09:13:55', '2022-03-12 09:13:55', NULL),
	(34, 0, '71.195.323.2-502.000', 'PT. RINDANG JATI SPINNING', NULL, 'null', 'JL. RAYA JATIREJO Blok 000 No.000 RT:004 RW:001 Kel.JATIREJO Kec.AMPELGADING Kota/Kab.PEMALANG JAWA TENGAH 00000', NULL, NULL, 1, '2022-03-12 09:13:55', '2022-03-12 09:13:55', NULL),
	(35, 0, '02.622.790.0-614.000', 'PT. SARANA BELT INDONESIA', NULL, 'null', 'JL. MARGO MULYO Blok 000 No.51-A RT:001 RW:001 Kel.GREGES Kec.ASEMROWO Kota/Kab.SURABAYA JAWA TIMUR 00000', NULL, NULL, 1, '2022-03-12 09:13:55', '2022-03-12 09:13:55', NULL),
	(36, 0, '01.869.469.5-055.000', 'PT. SEMARANG AUTOCOMP MANUFACTURING INDONESIA', NULL, 'null', 'JL. WALISONGO KM 9,8 Blok 000 No.000 RT:000 RW:000 Kel.TUGU REJO Kec.TUGU Kota/Kab.SEMARANG JAWA TENGAH 50151', NULL, NULL, 1, '2022-03-12 09:13:56', '2022-03-12 09:13:56', NULL),
	(37, 0, '01.835.963.8-511.000', 'PT. SINAR INDAH KERTAS', NULL, 'null', 'JL. PATI - KUDUS KM 4 Blok 000 No.000 RT:000 RW:000 Kel.PEGANDAN Kec.MARGOREJO Kota/Kab.PATI JAWA TENGAH 00000', NULL, NULL, 1, '2022-03-12 09:13:56', '2022-03-12 09:13:56', NULL),
	(38, 0, '03.053.130.5-064.000', 'PT. SRIBOGA FLOUR MILL', NULL, 'null', 'GD. DANIPRISMA PLAZA LT.3 JL. SULTAN HASANUDDIN Blok 000 No.47-48 RT:000 RW:000 Kel.MELAWAI Kec.KEBAYORAN BARU Kota/Kab.JAKARTA SELATAN DKI JAKARTA RAYA 12160', NULL, NULL, 1, '2022-03-12 09:13:56', '2022-03-12 09:13:56', NULL),
	(39, 0, '01.070.672.9-052.000', 'PT. SURYARENGOCONTAINERS', NULL, 'null', 'JL. K.H.AGUS SALIM Blok 000 No.004 RT:001 RW:007 Kel.PORIS PLAWAD Kec.CIPONDOH Kota/Kab. TANGERANG BANTEN 00000', NULL, NULL, 1, '2022-03-12 09:13:56', '2022-03-12 09:13:56', NULL),
	(40, 0, '02.257.367.9-607.000', 'PT. TALI AGUNG', NULL, 'null', 'JL. KEDUNG DORO Blok 000 No.203 - 205 RT:000 RW:000 Kel.WONOREJO Kec.TEGALSARI Kota/Kab.SURABAYA JAWA TIMUR 00000', NULL, NULL, 1, '2022-03-12 09:13:56', '2022-03-12 09:13:56', NULL),
	(41, 0, '01.654.278.9-007.000', 'PT. TANJUNG KREASI PARQUET INDUSTRY', NULL, 'null', 'JL. RAWA GELAM V KAV OR 3B KIP Blok 000 No.000 RT:000 RW:000 Kel.JATINEGARA Kec.CAKUNG Kota/Kab.JAKARTA TIMUR DKI JAKARTA 13930', NULL, NULL, 1, '2022-03-12 09:13:56', '2022-03-12 09:13:56', NULL),
	(42, 0, '01.822.829.6-631.000', 'PT. TEMPRINA MEDIA GRAFIKA', NULL, 'null', 'JL. KARAH AGUNG Blok 000 No.045 RT:000 RW:000 Kel.KARAH Kec.JAMBANGAN Kota/Kab.KOTA SURABAYA JAWA TIMUR 60232', NULL, NULL, 1, '2022-03-12 09:13:56', '2022-03-12 09:13:56', NULL),
	(43, 0, '02.311.108.1-022.000', 'PT. TIMUR BAHARI', NULL, 'null', 'SAHID SUDIRMAN CENTER LT 11 SUITE A WS NO 46 JL. JEND SUDIRMAN Blok 000 No.086 RT:000 RW:000 Kel.KARET TENGSIN Kec.TANAH ABANG Kota/Kab.JAKARTA PUSAT DKI JAKARTA 10220', NULL, NULL, 1, '2022-03-12 09:13:56', '2022-03-12 09:13:56', NULL),
	(44, 0, '02.914.244.5-012.000', 'PT. TNT SKYPAK INTERNATIONAL EXPRESS', NULL, '212520818', 'GD.SUMMITMAS I LT. 21 JL. JEND. SUDIRMAN KAV. 61 -62 Blok 0000 No.000 RT:006 RW:014 Kel.KB. BARU Kec.TEBET Kota/Kab.JAKARTA SELATAN DKI JAKARTA 12190', NULL, NULL, 1, '2022-03-12 09:13:57', '2022-03-12 09:13:57', NULL),
	(45, 0, '01.331.781.3-073.000', 'PT. YUAN WIRA PERDNA', NULL, '021 3866688', 'JL. LAUTZE Blok 000 No.14K RT:002 RW:006 Kel.PASAR BARU Kec.SAWAH BESAR Kota/Kab.JAKARTA PUSAT DKI JAKRTA 10710', NULL, NULL, 1, '2022-03-12 09:13:57', '2022-03-12 09:13:57', NULL),
	(46, 0, '81.424.685.6-509.000', 'PT ISTANA SUKSES MAKMURJAYA', NULL, 'null', 'KOMPLEK RUKO JURNATAN Blok A No.040 RT:002 RW:005 Kel.PURWODINATAN Kec.PURWODINATAN Kota/Kab.KOTA SEMARANG JAWA TENGAH 00000', NULL, NULL, 1, '2022-03-12 09:13:57', '2022-03-12 09:13:57', NULL),
	(47, 0, '02.063.117.2-029.000', 'PT SUMBER BERKAT PRATAMA', NULL, 'null', 'JL. AM SANGAJI NO.38 PETOJO UTARA , JAKARTA PUSAT Blok 000 No.38 RT:002 RW:006 Kel.PETOJO UTARA Kec.GAMBIR Kota/Kab.JAKARTA PUSAT DKI JAKARTA 00000', NULL, NULL, 1, '2022-03-12 09:13:57', '2022-03-12 09:13:57', NULL),
	(48, 0, '02.015.626.1-415.000', 'PT SUMBER GRAHA SEJAHTERA', NULL, 'null', 'KP. HAUAN TEGAL Blok 000 No.000 RT:003 RW:005 Kel.TOBAT Kec.BALARAJA Kota/Kab.TANGERANG BANTEN 00000', NULL, NULL, 1, '2022-03-12 09:13:57', '2022-03-12 09:13:57', NULL),
	(49, 0, '02.194.602.5-058.000', 'PT Tudung Putra Putri Jaya', NULL, 'null', 'Wisma Garudafood II Jl. Bintaro Raya Blok 000 No.10A RT:003 RW:010 Kel.Kebayoran Lama Utara Kec.Kebayoran Lama Kota/Kab.Jakarta Selatan DKI Jakarta Raya 12240', NULL, NULL, 1, '2022-03-12 09:13:57', '2022-03-12 09:13:57', NULL),
	(50, 0, '04.073.106.9-506.000', 'RINDHO WARTONO', NULL, 'null', 'DESA GONDONGSARI Blok 0000 No.000 RT:001 RW:006 Kel.GONDONGSARI Kec.GEBOG Kota/Kab.KUDUS JAWA TENGAH 00000', NULL, NULL, 1, '2022-03-12 09:13:57', '2022-03-12 09:13:57', NULL),
	(52, 0, NULL, 'PT. MALINDO, PT. CJ', NULL, NULL, NULL, NULL, NULL, 1, '2022-03-12 09:19:59', '2022-03-12 09:19:59', NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Dumping structure for table db_inventory.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_inventory.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table db_inventory.general_settings
CREATE TABLE IF NOT EXISTS `general_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `site_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_rtl` tinyint DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_access` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `developed_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int DEFAULT NULL,
  `theme` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_inventory.general_settings: ~0 rows (approximately)
/*!40000 ALTER TABLE `general_settings` DISABLE KEYS */;
INSERT INTO `general_settings` (`id`, `site_title`, `site_logo`, `is_rtl`, `currency`, `staff_access`, `date_format`, `developed_by`, `invoice_format`, `state`, `theme`, `currency_position`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Ledger', '20220209020302.png', NULL, '1', 'own', 'd/m/Y', 'iBoyDev', 'standard', 1, 'default.css', 'prefix', '2018-07-06 06:13:11', '2022-02-09 02:03:02', NULL);
/*!40000 ALTER TABLE `general_settings` ENABLE KEYS */;

-- Dumping structure for table db_inventory.inventories
CREATE TABLE IF NOT EXISTS `inventories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `basicPrice` double(8,2) NOT NULL,
  `sellingPrice` double(8,2) NOT NULL,
  `stockValue` double(8,2) NOT NULL,
  `profit` double(8,2) NOT NULL,
  `totalProfit` double(8,2) NOT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) NOT NULL,
  `categoryId` int NOT NULL,
  `brandId` int NOT NULL,
  `unitId` int NOT NULL,
  `storeId` int NOT NULL,
  `countryId` int NOT NULL,
  `customerId` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_inventory.inventories: ~20 rows (approximately)
/*!40000 ALTER TABLE `inventories` DISABLE KEYS */;
INSERT INTO `inventories` (`id`, `name`, `qty`, `basicPrice`, `sellingPrice`, `stockValue`, `profit`, `totalProfit`, `size`, `weight`, `categoryId`, `brandId`, `unitId`, `storeId`, `countryId`, `customerId`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, '23024 CC/W33', 12, 5000.00, 6000.00, 72000.00, 1000.00, 1000.00, '120*180*46', 4.05, 1, 1, 2, 2, 2, 38, '2022-03-12 09:52:45', '2022-03-12 09:52:45', NULL),
	(2, '24126 CC/W33 C3', 28, 0.00, 0.00, 0.00, 0.00, 0.00, '130*210*80', 11.00, 1, 1, 2, 2, 2, 52, '2022-03-12 09:52:45', '2022-03-14 20:11:21', '2022-03-14 20:11:21'),
	(3, '932/938', 59, 0.00, 0.00, 0.00, 0.00, 0.00, '114.3*212.725*66.', 9.83, 1, 2, 2, 2, 3, NULL, '2022-03-12 09:52:45', '2022-03-12 09:52:45', NULL),
	(4, '99600/99100', 74, 0.00, 0.00, 0.00, 0.00, 0.00, '152.4*254*66.675', 12.49, 1, 2, 2, 2, 3, NULL, '2022-03-12 09:52:46', '2022-03-12 09:52:46', NULL),
	(5, 'H 2318', 108, 0.00, 0.00, 0.00, 0.00, 0.00, '80*90*120', 1.60, 1, 1, 2, 2, 2, NULL, '2022-03-12 09:52:46', '2022-03-12 09:52:46', NULL),
	(6, '23218CCK/W33', 125, 0.00, 0.00, 0.00, 0.00, 0.00, '90*160*52.4', 4.40, 1, 1, 2, 2, 2, NULL, '2022-03-12 09:52:46', '2022-03-12 09:52:46', NULL),
	(7, '1305 ETN9', 4, 0.00, 0.00, 0.00, 0.00, 0.00, '25*62*17', 0.26, 1, 1, 2, 2, 2, NULL, '2022-03-12 09:52:46', '2022-03-12 09:52:46', NULL),
	(8, '22315 EK', 10, 0.00, 0.00, 0.00, 0.00, 0.00, '75*160*55', 5.45, 1, 1, 2, 2, 2, NULL, '2022-03-12 09:52:46', '2022-03-12 09:52:46', NULL),
	(9, '22222CCK/W33', 2, 0.00, 0.00, 0.00, 0.00, 0.00, '110*200*53', 6.90, 1, 1, 2, 2, 2, NULL, '2022-03-12 09:52:47', '2022-03-12 09:52:47', NULL),
	(10, '22224 ESK C3', 2, 0.00, 0.00, 0.00, 0.00, 0.00, '120*215*58', 8.70, 1, 1, 2, 2, 2, NULL, '2022-03-12 09:52:47', '2022-03-12 09:52:47', NULL),
	(11, '22228 ESK C3', 2, 0.00, 0.00, 0.00, 0.00, 0.00, '140*250*68', 14.00, 1, 1, 2, 2, 2, NULL, '2022-03-12 09:52:47', '2022-03-12 09:52:47', NULL),
	(12, '22213K/C3', 2, 0.00, 0.00, 0.00, 0.00, 0.00, '65*120*31', 1.40, 1, 1, 2, 2, 2, NULL, '2022-03-12 09:52:47', '2022-03-12 09:52:47', NULL),
	(13, '62207 2RS1', 4, 0.00, 0.00, 0.00, 0.00, 0.00, '35*72*23', 0.40, 1, 1, 2, 2, 4, NULL, '2022-03-12 09:52:47', '2022-03-12 09:52:47', NULL),
	(14, '22210 EK/C3+H310', 4, 0.00, 0.00, 0.00, 0.00, 0.00, '45*90*23', 0.91, 1, 1, 2, 2, 2, NULL, '2022-03-12 09:52:47', '2022-03-12 09:52:47', NULL),
	(15, '6222 ZZ/C4', 4, 0.00, 0.00, 0.00, 0.00, 0.00, '110*200*38', 4.45, 1, 1, 2, 2, 4, NULL, '2022-03-12 09:52:48', '2022-03-12 09:52:48', NULL),
	(16, '22215 EK/C3+H315', 4, 0.00, 0.00, 0.00, 0.00, 0.00, '65*130*31', 2.54, 1, 1, 2, 2, 2, NULL, '2022-03-12 09:52:48', '2022-03-12 09:52:48', NULL),
	(17, '62208 2RS1', 4, 0.00, 0.00, 0.00, 0.00, 0.00, '40*80*23', 0.47, 1, 1, 2, 2, 4, NULL, '2022-03-12 09:52:48', '2022-03-12 09:52:48', NULL),
	(18, '22217 EK/C3+H317', 2, 0.00, 0.00, 0.00, 0.00, 0.00, '75*150*36', 3.80, 1, 1, 2, 2, 2, NULL, '2022-03-12 09:52:48', '2022-03-12 09:52:48', NULL),
	(19, 'GEH 17C', 4, 0.00, 0.00, 0.00, 0.00, 0.00, '17*35*20', 0.09, 1, 1, 2, 2, 2, NULL, '2022-03-12 09:52:48', '2022-03-12 09:52:48', NULL),
	(20, 'YAR 206-2F', 4, 0.00, 0.00, 0.00, 0.00, 0.00, '30*62*38.1', 0.28, 1, 1, 2, 2, 2, NULL, '2022-03-12 09:52:48', '2022-03-12 09:52:48', NULL);
/*!40000 ALTER TABLE `inventories` ENABLE KEYS */;

-- Dumping structure for table db_inventory.lookups
CREATE TABLE IF NOT EXISTS `lookups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_inventory.lookups: ~2 rows (approximately)
/*!40000 ALTER TABLE `lookups` DISABLE KEYS */;
INSERT INTO `lookups` (`id`, `type`, `name`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'CreditTerm', 'Paid', '1', '2022-03-17 01:21:21', NULL, NULL),
	(2, 'CreditTerm', 'UnPaid', '2', '2022-03-17 01:21:30', NULL, NULL);
/*!40000 ALTER TABLE `lookups` ENABLE KEYS */;

-- Dumping structure for table db_inventory.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_inventory.migrations: ~22 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2022_02_27_194616_create_general_settings', 1),
	(6, '2022_02_27_200552_create_currencies', 1),
	(7, '2022_02_27_203627_create_categories_table', 2),
	(8, '2022_02_27_203911_create_roles_table', 3),
	(9, '2022_02_27_213806_create_categories_table', 4),
	(10, '2022_02_27_222631_create_brands_table', 5),
	(11, '2022_02_27_224430_create_units_table', 6),
	(12, '2022_02_27_225303_create_stores_table', 7),
	(13, '2022_02_28_075747_create_countries_table', 8),
	(20, '2022_03_05_194124_create_inventories_table', 9),
	(21, '2022_03_06_140009_create_customers_table', 9),
	(29, '2022_03_12_095913_create_quotations_table', 10),
	(31, '2022_03_12_101028_create_quotation_details_table', 11),
	(36, '2022_03_15_163225_create_sales_table', 12),
	(39, '2022_03_15_164009_create_sale_details_table', 13),
	(40, '2022_03_16_165035_create_purchases_table', 14),
	(41, '2022_03_16_165355_create_purchase_details_table', 14),
	(43, '2022_03_16_181923_create_lookups_table', 15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table db_inventory.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_inventory.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table db_inventory.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_inventory.personal_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table db_inventory.purchases
CREATE TABLE IF NOT EXISTS `purchases` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `purchaseNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `poNumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currencyId` int NOT NULL,
  `customerId` int DEFAULT NULL,
  `customerAtten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyId` int DEFAULT NULL,
  `companyAtten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yourReff` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ourReff` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creditTermId` int DEFAULT NULL,
  `subtotal` double(20,2) DEFAULT NULL,
  `disc` double(20,2) DEFAULT NULL,
  `tax` double(20,2) DEFAULT NULL,
  `grandTotal` double(20,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_inventory.purchases: ~3 rows (approximately)
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` (`id`, `purchaseNo`, `poNumb`, `currencyId`, `customerId`, `customerAtten`, `companyId`, `companyAtten`, `yourReff`, `ourReff`, `creditTermId`, `subtotal`, `disc`, `tax`, `grandTotal`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'P20220316', NULL, 3, 1, 'Bpk. Rony/Ibu Sukma', 1, 'Umar', NULL, NULL, 1, 8578200.00, NULL, 857820.00, 9436020.00, '2022-03-17 00:30:37', NULL, NULL),
	(2, 'D20220316', 'P20220316', 3, 3, '3', 3, '3', NULL, NULL, NULL, 65000.00, NULL, 6500.00, 71500.00, '2022-03-16 19:00:01', '2022-03-16 19:34:56', '2022-03-16 19:34:56'),
	(3, 'D20220316', 'P20220316', 1, 1, 'Bpk Purchase', 1, 'Bpk. Deliver', 'tes Your', 'tes Our', 2, 165000.00, NULL, 16500.00, 181500.00, '2022-03-16 19:04:51', '2022-03-16 20:21:29', NULL);
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;

-- Dumping structure for table db_inventory.purchase_details
CREATE TABLE IF NOT EXISTS `purchase_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `purchaseId` int NOT NULL,
  `itemId` int NOT NULL,
  `qty` int NOT NULL,
  `unitPrice` double(20,2) DEFAULT NULL,
  `arrivalDate` datetime DEFAULT NULL,
  `total` double(20,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_inventory.purchase_details: ~9 rows (approximately)
/*!40000 ALTER TABLE `purchase_details` DISABLE KEYS */;
INSERT INTO `purchase_details` (`id`, `purchaseId`, `itemId`, `qty`, `unitPrice`, `arrivalDate`, `total`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, 1, 50, 171564.00, '2022-03-17 00:31:02', 8578200.00, '2022-03-17 00:31:12', NULL, NULL),
	(2, 2, 6, 3, 5000.00, '2022-03-17 00:00:00', 15000.00, NULL, NULL, NULL),
	(3, 2, 5, 5, 10000.00, '2022-03-17 00:00:00', 50000.00, NULL, NULL, NULL),
	(4, 3, 5, 3, 5000.00, '2022-03-17 00:00:00', 15000.00, NULL, NULL, NULL),
	(5, 3, 4, 5, 10000.00, '2022-03-17 00:00:00', 50000.00, NULL, NULL, NULL),
	(6, 3, 4, 4, 15000.00, '2022-03-17 00:00:00', 60000.00, '2022-03-16 19:59:16', '2022-03-16 20:18:34', '2022-03-16 20:18:34'),
	(7, 3, 7, 10, 500.00, '2022-03-17 00:00:00', 5000.00, '2022-03-16 20:08:43', '2022-03-16 20:14:18', '2022-03-16 20:14:18'),
	(8, 3, 6, 2, 5000.00, NULL, 10000.00, '2022-03-16 20:20:37', '2022-03-16 20:20:51', '2022-03-16 20:20:51'),
	(9, 3, 19, 10, 10000.00, '2022-03-17 00:00:00', 100000.00, '2022-03-16 20:21:09', '2022-03-16 20:21:28', NULL);
/*!40000 ALTER TABLE `purchase_details` ENABLE KEYS */;

-- Dumping structure for table db_inventory.quotations
CREATE TABLE IF NOT EXISTS `quotations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `quatationNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currencyId` int NOT NULL,
  `customerId` int DEFAULT NULL,
  `receiver` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_inventory.quotations: ~3 rows (approximately)
/*!40000 ALTER TABLE `quotations` DISABLE KEYS */;
INSERT INTO `quotations` (`id`, `quatationNo`, `currencyId`, `customerId`, `receiver`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Q20211104A', 3, 1, 'BPK. David', '2022-03-15 01:59:21', NULL, NULL),
	(2, 'Q20220314', 2, 2, 'Doni Raharjo', '2022-03-14 20:08:57', '2022-03-14 20:12:20', '2022-03-14 20:12:20'),
	(3, 'Q20220314', 3, 2, 'Doni Raharjo', '2022-03-14 20:12:47', '2022-03-14 20:12:47', NULL);
/*!40000 ALTER TABLE `quotations` ENABLE KEYS */;

-- Dumping structure for table db_inventory.quotation_details
CREATE TABLE IF NOT EXISTS `quotation_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `quatationId` int NOT NULL,
  `itemId` int NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `unitPrice` double(20,2) NOT NULL,
  `qty` int NOT NULL,
  `disc` double(8,2) DEFAULT NULL,
  `total` double(20,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_inventory.quotation_details: ~4 rows (approximately)
/*!40000 ALTER TABLE `quotation_details` DISABLE KEYS */;
INSERT INTO `quotation_details` (`id`, `quatationId`, `itemId`, `remark`, `unitPrice`, `qty`, `disc`, `total`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, 1, 'Ready Stock', 275000.00, 10, NULL, 2750000.00, '2022-03-15 02:01:37', NULL, NULL),
	(2, 2, 1, 'first', 10000.00, 5, 10.00, 45000.00, NULL, NULL, NULL),
	(3, 2, 4, 'second', 20000.00, 5, NULL, 100000.00, NULL, NULL, NULL),
	(4, 3, 5, 'asd', 5000.00, 1, NULL, 5000.00, NULL, NULL, NULL);
/*!40000 ALTER TABLE `quotation_details` ENABLE KEYS */;

-- Dumping structure for table db_inventory.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_inventory.roles: ~4 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `description`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Admin', 'admin can access all data...', 1, '2018-06-01 23:46:44', '2018-06-02 23:13:05', NULL),
	(2, 'Owner', 'Owner of shop...', 1, '2018-10-22 02:38:13', '2018-10-22 02:38:13', NULL),
	(3, 'staff', 'staff has specific acess...', 1, '2018-06-02 00:05:27', '2018-06-02 00:05:27', NULL),
	(4, 'Customer', NULL, 1, '2020-11-05 06:43:16', '2020-11-15 00:24:15', NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table db_inventory.sales
CREATE TABLE IF NOT EXISTS `sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `salesNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoiceNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poNumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currencyId` int NOT NULL,
  `customerId` int DEFAULT NULL,
  `supplierId` int DEFAULT NULL,
  `receiver` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipper` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` double(20,2) DEFAULT NULL,
  `disc` double(20,2) DEFAULT NULL,
  `tax` double(20,2) DEFAULT NULL,
  `grandTotal` double(20,2) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `menuId` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_inventory.sales: ~4 rows (approximately)
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` (`id`, `salesNo`, `invoiceNo`, `poNumb`, `currencyId`, `customerId`, `supplierId`, `receiver`, `shipper`, `subtotal`, `disc`, `tax`, `grandTotal`, `startDate`, `endDate`, `menuId`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'D20220316', NULL, NULL, 3, 1, NULL, 'BPK. David', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-03-16 03:35:46', NULL, NULL),
	(2, 'D20220315', NULL, NULL, 3, 3, NULL, 'Doni Raharjo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-03-15 21:23:16', '2022-03-15 21:29:58', '2022-03-15 21:29:58'),
	(3, 'D20220315', NULL, NULL, 3, 4, NULL, 'Doni Raharjo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-03-15 21:31:27', '2022-03-15 21:37:56', '2022-03-15 21:37:56'),
	(4, 'D20220315', 'I20220315', NULL, 3, 2, NULL, 'Doni Raharjo', NULL, 10000.00, NULL, 1000.00, 11000.00, NULL, NULL, 3, '2022-03-15 21:38:08', '2022-03-16 12:42:11', NULL);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;

-- Dumping structure for table db_inventory.sale_details
CREATE TABLE IF NOT EXISTS `sale_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `salesId` int NOT NULL,
  `itemId` int NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `unitPrice` double(20,2) DEFAULT NULL,
  `qty` int NOT NULL,
  `disc` double(8,2) DEFAULT NULL,
  `total` double(20,2) DEFAULT NULL,
  `reff` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `costDelivery` double(20,2) DEFAULT NULL,
  `insentiveA` double(20,2) DEFAULT NULL,
  `insentiveB` double(20,2) DEFAULT NULL,
  `insentiveC` double(20,2) DEFAULT NULL,
  `menuId` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_inventory.sale_details: ~7 rows (approximately)
/*!40000 ALTER TABLE `sale_details` DISABLE KEYS */;
INSERT INTO `sale_details` (`id`, `salesId`, `itemId`, `remark`, `unitPrice`, `qty`, `disc`, `total`, `reff`, `costDelivery`, `insentiveA`, `insentiveB`, `insentiveC`, `menuId`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, 1, NULL, NULL, 20, NULL, NULL, 'PO1', NULL, NULL, NULL, NULL, 3, '2022-03-16 04:02:50', NULL, NULL),
	(2, 1, 2, NULL, NULL, 20, NULL, NULL, 'PO1', NULL, NULL, NULL, NULL, 3, '2022-03-16 04:02:51', NULL, NULL),
	(3, 1, 3, NULL, NULL, 20, NULL, NULL, 'PO1', NULL, NULL, NULL, NULL, 3, '2022-03-16 04:02:52', '2022-03-15 21:37:56', '2022-03-15 21:37:56'),
	(4, 2, 4, NULL, NULL, 2, NULL, NULL, 'PO1', 500.00, NULL, NULL, NULL, 3, NULL, NULL, NULL),
	(5, 2, 4, NULL, NULL, 3, NULL, NULL, 'PO1', 1000.00, NULL, NULL, NULL, 3, NULL, NULL, NULL),
	(6, 3, 4, NULL, NULL, 2, NULL, NULL, 'PO1', 50000.00, NULL, NULL, NULL, 3, NULL, NULL, NULL),
	(7, 4, 6, NULL, 5000.00, 2, NULL, 10000.00, 'PO1', NULL, 10000.00, 20000.00, 30000.00, 3, NULL, '2022-03-16 20:13:21', '2022-03-16 20:13:21');
/*!40000 ALTER TABLE `sale_details` ENABLE KEYS */;

-- Dumping structure for table db_inventory.stores
CREATE TABLE IF NOT EXISTS `stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_inventory.stores: ~2 rows (approximately)
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` (`id`, `name`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'semarang 321', 0, '2022-02-27 22:58:34', '2022-02-27 23:17:59', '2022-02-27 23:17:59'),
	(2, 'SEMARANG A', 1, '2022-03-06 18:40:31', '2022-03-06 18:40:31', NULL);
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;

-- Dumping structure for table db_inventory.units
CREATE TABLE IF NOT EXISTS `units` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_inventory.units: ~2 rows (approximately)
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` (`id`, `name`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'tes 231', 0, '2022-02-27 22:50:48', '2022-02-27 22:51:54', '2022-02-27 22:51:54'),
	(2, 'PSC', 1, '2022-03-06 18:40:31', '2022-03-06 18:40:31', NULL);
/*!40000 ALTER TABLE `units` ENABLE KEYS */;

-- Dumping structure for table db_inventory.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roleId` int NOT NULL,
  `storeId` int DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_inventory.users: ~4 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `phone`, `company_name`, `roleId`, `storeId`, `is_active`, `is_deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$DWAHTfjcvwCpOCXaJg11MOhsqns03uvlwiSUOQwkHL2YYrtrXPcL6', 'bwa9lKkYS0XyfTeZUFhiRJGKGC9RA31yTTLlUqUvmJ1QZ48PYFixrBXeIYmX', '12112', 'lioncoders', 1, NULL, 1, 0, '2018-06-02 03:24:15', '2018-09-05 00:14:15', NULL),
	(2, 'owner', 'owner@mail.com', NULL, '$2y$10$zFZ88mPz2Dd2uPII30Mmp.jS3OX.Nt60e6I6u9nCML5vkD.Kk43fK', 'wXZLZBXyhl6mmqDfmozdRriFsgMiRXFBELppGpfzCXwYBJOJNgo6gEpUaeP6', '13524144737', NULL, 2, NULL, 1, 0, '2022-02-09 02:40:14', '2022-02-09 02:40:14', NULL),
	(3, 'staff', 'anda@gmail.com', NULL, '$2y$10$kxDbnynB6mB1e1w3pmtbSOlSxy/WwbLPY5TJpMi0Opao5ezfuQjQm', 'j15AU7WAHNYWECDfWjTCKAjwGRajZ2IFeR5vwHwZe0WaSfOREB6wO2AyHV0D', '3123', NULL, 4, 1, 1, 0, '2018-07-02 01:08:08', '2018-10-23 21:41:13', NULL),
	(4, 'customer', 'customer@mail.com', NULL, '$2y$10$YlGaVlGOwBXPxjkUL/VkceBJMeqrxNXnspq9G/1EcU9UNzVTvSHP2', 'hRw7eDtbd6ZorK2fjhGoTDxT9Fa2b2DXVPsx4IZZRRdrdmKljxNIW6zrnBUQ', '10001', NULL, 4, NULL, 0, 1, '2018-12-30 00:48:37', '2022-02-09 02:53:38', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
