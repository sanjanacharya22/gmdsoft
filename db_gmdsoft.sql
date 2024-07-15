-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 15, 2024 at 03:58 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gmdsoft`
--

-- --------------------------------------------------------

--
-- Table structure for table `lkp_availability`
--

DROP TABLE IF EXISTS `lkp_availability`;
CREATE TABLE IF NOT EXISTS `lkp_availability` (
  `id` smallint UNSIGNED NOT NULL,
  `availability` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Active, inactive';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_country`
--

DROP TABLE IF EXISTS `lkp_country`;
CREATE TABLE IF NOT EXISTS `lkp_country` (
  `id` smallint UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lkp_cust_cate`
--

DROP TABLE IF EXISTS `lkp_cust_cate`;
CREATE TABLE IF NOT EXISTS `lkp_cust_cate` (
  `id` smallint UNSIGNED NOT NULL,
  `cust_cate` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` tinyint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_cgtype` (`cust_cate`),
  UNIQUE KEY `cust_cate` (`cust_cate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Police, ED, R & D Institute';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_cust_group`
--

DROP TABLE IF EXISTS `lkp_cust_group`;
CREATE TABLE IF NOT EXISTS `lkp_cust_group` (
  `id` smallint UNSIGNED NOT NULL,
  `cust_group` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lkp_cust_status`
--

DROP TABLE IF EXISTS `lkp_cust_status`;
CREATE TABLE IF NOT EXISTS `lkp_cust_status` (
  `id` smallint UNSIGNED NOT NULL,
  `cust_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='New, Verification In Progress, Active, Inactive ';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_dongle_deal_classification`
--

DROP TABLE IF EXISTS `lkp_dongle_deal_classification`;
CREATE TABLE IF NOT EXISTS `lkp_dongle_deal_classification` (
  `id` smallint UNSIGNED NOT NULL,
  `deal_classification` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lkp_dongle_key_seperator`
--

DROP TABLE IF EXISTS `lkp_dongle_key_seperator`;
CREATE TABLE IF NOT EXISTS `lkp_dongle_key_seperator` (
  `id` smallint UNSIGNED NOT NULL,
  `key_seperator` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lkp_dongle_type`
--

DROP TABLE IF EXISTS `lkp_dongle_type`;
CREATE TABLE IF NOT EXISTS `lkp_dongle_type` (
  `id` smallint UNSIGNED NOT NULL,
  `dtype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_dtype` (`dtype`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Patch, Package';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_lang`
--

DROP TABLE IF EXISTS `lkp_lang`;
CREATE TABLE IF NOT EXISTS `lkp_lang` (
  `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_language` (`lang`),
  UNIQUE KEY `lang` (`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='EN, KO, KN';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_log_type`
--

DROP TABLE IF EXISTS `lkp_log_type`;
CREATE TABLE IF NOT EXISTS `lkp_log_type` (
  `id` smallint UNSIGNED NOT NULL,
  `log_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_ltype` (`log_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Log type used in audit trail';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_module`
--

DROP TABLE IF EXISTS `lkp_module`;
CREATE TABLE IF NOT EXISTS `lkp_module` (
  `id` smallint UNSIGNED NOT NULL,
  `module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_module` (`module`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='package management, mail management, customer management etc';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_package_family`
--

DROP TABLE IF EXISTS `lkp_package_family`;
CREATE TABLE IF NOT EXISTS `lkp_package_family` (
  `id` smallint UNSIGNED NOT NULL,
  `pack_family` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_p_family` (`pack_family`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='global, domestic, oem';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_package_type`
--

DROP TABLE IF EXISTS `lkp_package_type`;
CREATE TABLE IF NOT EXISTS `lkp_package_type` (
  `id` smallint UNSIGNED NOT NULL,
  `package_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_ptype` (`package_type`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Full package, Temporary package';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_product_type`
--

DROP TABLE IF EXISTS `lkp_product_type`;
CREATE TABLE IF NOT EXISTS `lkp_product_type` (
  `id` smallint UNSIGNED NOT NULL,
  `prod_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_ptype` (`prod_type`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='global, domestic, oem';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_resource_type`
--

DROP TABLE IF EXISTS `lkp_resource_type`;
CREATE TABLE IF NOT EXISTS `lkp_resource_type` (
  `id` smallint UNSIGNED NOT NULL,
  `resource_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_rtype` (`resource_type`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lkp_role`
--

DROP TABLE IF EXISTS `lkp_role`;
CREATE TABLE IF NOT EXISTS `lkp_role` (
  `id` smallint UNSIGNED NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `role` (`role`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='QA, front/support team, super admin';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_serial_type`
--

DROP TABLE IF EXISTS `lkp_serial_type`;
CREATE TABLE IF NOT EXISTS `lkp_serial_type` (
  `id` smallint UNSIGNED NOT NULL,
  `serial_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_stype` (`serial_type`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='trial, infinite';

-- --------------------------------------------------------

--
-- Table structure for table `mst_customer`
--

DROP TABLE IF EXISTS `mst_customer`;
CREATE TABLE IF NOT EXISTS `mst_customer` (
  `cust_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pri_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pri_phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `login_id` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reg_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `country_id` smallint UNSIGNED NOT NULL,
  `cust_group_id` smallint UNSIGNED DEFAULT NULL,
  `role_id` smallint UNSIGNED DEFAULT NULL,
  `cust_cate_id` smallint UNSIGNED DEFAULT NULL,
  `sec_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sec_phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pwrd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `cust_status_id` smallint UNSIGNED NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`cust_id`),
  UNIQUE KEY `pri_email` (`pri_email`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_cust_cate_id` (`cust_cate_id`),
  KEY `idx_cust_group_id` (`cust_group_id`),
  KEY `country_id` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_cust_group`
--

DROP TABLE IF EXISTS `mst_cust_group`;
CREATE TABLE IF NOT EXISTS `mst_cust_group` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `cust_group_id` smallint UNSIGNED DEFAULT NULL,
  `cust_group_type_id` smallint UNSIGNED DEFAULT NULL,
  `reg_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `reguser_id` int DEFAULT NULL,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `is_deleted` tinyint DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cgroup_name` (`cust_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `txn_audit_trial`
--

DROP TABLE IF EXISTS `txn_audit_trial`;
CREATE TABLE IF NOT EXISTS `txn_audit_trial` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_type_id` smallint UNSIGNED NOT NULL,
  `prev_value` json DEFAULT NULL,
  `new_value` json NOT NULL,
  `operated_by` int NOT NULL COMMENT 'updated user id',
  `operated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idxlog_type_id` (`log_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `txn_hubspot_ticket`
--

DROP TABLE IF EXISTS `txn_hubspot_ticket`;
CREATE TABLE IF NOT EXISTS `txn_hubspot_ticket` (
  `id` smallint UNSIGNED NOT NULL,
  `cust_id` int NOT NULL,
  `ticket_status` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `txn_package_download`
--

DROP TABLE IF EXISTS `txn_package_download`;
CREATE TABLE IF NOT EXISTS `txn_package_download` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `package_id` smallint NOT NULL,
  `cust_id` smallint NOT NULL,
  `downlaod_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `txn_package_product`
--

DROP TABLE IF EXISTS `txn_package_product`;
CREATE TABLE IF NOT EXISTS `txn_package_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `package_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `txn_role_module`
--

DROP TABLE IF EXISTS `txn_role_module`;
CREATE TABLE IF NOT EXISTS `txn_role_module` (
  `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` smallint UNSIGNED DEFAULT NULL,
  `module_id` smallint UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_role_module` (`role_id`,`module_id`),
  KEY `module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `txn_session`
--

DROP TABLE IF EXISTS `txn_session`;
CREATE TABLE IF NOT EXISTS `txn_session` (
  `session_txn_id` bigint NOT NULL AUTO_INCREMENT,
  `cust_id` int NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `expires` int DEFAULT NULL,
  `data` text COLLATE utf8mb4_general_ci,
  `login_token` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dfp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'device fingerprint',
  `session_start_time` datetime DEFAULT NULL,
  `session_status` bit(1) DEFAULT b'1',
  PRIMARY KEY (`session_txn_id`),
  UNIQUE KEY `login_token` (`login_token`),
  UNIQUE KEY `unique_dfp` (`dfp`),
  KEY `idx_cust_id` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lkp_cust_status`
--
ALTER TABLE `lkp_cust_status`
  ADD CONSTRAINT `lkp_cust_status_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_dongle_deal_classification`
--
ALTER TABLE `lkp_dongle_deal_classification`
  ADD CONSTRAINT `lkp_dongle_deal_classification_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_dongle_key_seperator`
--
ALTER TABLE `lkp_dongle_key_seperator`
  ADD CONSTRAINT `lkp_dongle_key_seperator_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_dongle_type`
--
ALTER TABLE `lkp_dongle_type`
  ADD CONSTRAINT `lkp_dongle_type_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_module`
--
ALTER TABLE `lkp_module`
  ADD CONSTRAINT `lkp_module_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_package_family`
--
ALTER TABLE `lkp_package_family`
  ADD CONSTRAINT `lkp_package_family_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_package_type`
--
ALTER TABLE `lkp_package_type`
  ADD CONSTRAINT `lkp_package_type_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_product_type`
--
ALTER TABLE `lkp_product_type`
  ADD CONSTRAINT `lkp_product_type_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_resource_type`
--
ALTER TABLE `lkp_resource_type`
  ADD CONSTRAINT `lkp_resource_type_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_role`
--
ALTER TABLE `lkp_role`
  ADD CONSTRAINT `lkp_role_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_serial_type`
--
ALTER TABLE `lkp_serial_type`
  ADD CONSTRAINT `lkp_serial_type_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_customer`
--
ALTER TABLE `mst_customer`
  ADD CONSTRAINT `mst_customer_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `lkp_role` (`id`),
  ADD CONSTRAINT `mst_customer_ibfk_2` FOREIGN KEY (`cust_cate_id`) REFERENCES `lkp_cust_cate` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_customer_ibfk_3` FOREIGN KEY (`cust_group_id`) REFERENCES `lkp_cust_group` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_customer_ibfk_4` FOREIGN KEY (`country_id`) REFERENCES `lkp_country` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_cust_group`
--
ALTER TABLE `mst_cust_group`
  ADD CONSTRAINT `mst_cust_group_ibfk_1` FOREIGN KEY (`cust_group_id`) REFERENCES `lkp_cust_group` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_audit_trial`
--
ALTER TABLE `txn_audit_trial`
  ADD CONSTRAINT `txn_audit_trial_ibfk_1` FOREIGN KEY (`log_type_id`) REFERENCES `lkp_log_type` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_hubspot_ticket`
--
ALTER TABLE `txn_hubspot_ticket`
  ADD CONSTRAINT `txn_hubspot_ticket_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_role_module`
--
ALTER TABLE `txn_role_module`
  ADD CONSTRAINT `txn_role_module_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `lkp_module` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_role_module_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `lkp_role` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_session`
--
ALTER TABLE `txn_session`
  ADD CONSTRAINT `txn_session_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `mst_customer` (`cust_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
