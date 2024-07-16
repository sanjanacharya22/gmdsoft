-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 16, 2024 at 11:48 AM
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
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
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
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lkp_cust_cate`
--

DROP TABLE IF EXISTS `lkp_cust_cate`;
CREATE TABLE IF NOT EXISTS `lkp_cust_cate` (
  `id` smallint UNSIGNED NOT NULL,
  `cust_cate` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_cgtype` (`cust_cate`),
  UNIQUE KEY `cust_cate` (`cust_cate`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Police, ED, R & D Institute';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_cust_grp`
--

DROP TABLE IF EXISTS `lkp_cust_grp`;
CREATE TABLE IF NOT EXISTS `lkp_cust_grp` (
  `id` mediumint UNSIGNED NOT NULL,
  `cust_group` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='in verification -admin added, registered -user register, active';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Perpetual Key, Time Key, Software Key, Network Key, USB Key, Old Perpetual Key, Old Time Key';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_faq_content`
--

DROP TABLE IF EXISTS `lkp_faq_content`;
CREATE TABLE IF NOT EXISTS `lkp_faq_content` (
  `id` smallint UNSIGNED NOT NULL,
  `faq_content` text COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lkp_faq_title`
--

DROP TABLE IF EXISTS `lkp_faq_title`;
CREATE TABLE IF NOT EXISTS `lkp_faq_title` (
  `id` smallint UNSIGNED NOT NULL,
  `faq_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lkp_firmware_stock`
--

DROP TABLE IF EXISTS `lkp_firmware_stock`;
CREATE TABLE IF NOT EXISTS `lkp_firmware_stock` (
  `id` smallint UNSIGNED NOT NULL,
  `stock` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='bootloader, custome image';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_firmware_type`
--

DROP TABLE IF EXISTS `lkp_firmware_type`;
CREATE TABLE IF NOT EXISTS `lkp_firmware_type` (
  `id` smallint UNSIGNED NOT NULL,
  `firmware_type` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='oppo, samsung';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_guide_content`
--

DROP TABLE IF EXISTS `lkp_guide_content`;
CREATE TABLE IF NOT EXISTS `lkp_guide_content` (
  `id` smallint UNSIGNED NOT NULL,
  `guide_content` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lkp_guide_type`
--

DROP TABLE IF EXISTS `lkp_guide_type`;
CREATE TABLE IF NOT EXISTS `lkp_guide_type` (
  `id` smallint UNSIGNED NOT NULL,
  `guide_type` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='dongle guide, customer care guide';

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
-- Table structure for table `lkp_mail_classification`
--

DROP TABLE IF EXISTS `lkp_mail_classification`;
CREATE TABLE IF NOT EXISTS `lkp_mail_classification` (
  `id` smallint UNSIGNED NOT NULL,
  `mail_classification` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='sending a package, newsletter, test mail, event news';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_mail_grp_name`
--

DROP TABLE IF EXISTS `lkp_mail_grp_name`;
CREATE TABLE IF NOT EXISTS `lkp_mail_grp_name` (
  `id` smallint UNSIGNED NOT NULL,
  `mail_grp_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lkp_mail_grp_type`
--

DROP TABLE IF EXISTS `lkp_mail_grp_type`;
CREATE TABLE IF NOT EXISTS `lkp_mail_grp_type` (
  `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `mail_grp_type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='custom, inside, domestic_institution,  abroad';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_mail_title`
--

DROP TABLE IF EXISTS `lkp_mail_title`;
CREATE TABLE IF NOT EXISTS `lkp_mail_title` (
  `id` smallint UNSIGNED NOT NULL,
  `mail_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for table `lkp_product_name`
--

DROP TABLE IF EXISTS `lkp_product_name`;
CREATE TABLE IF NOT EXISTS `lkp_product_name` (
  `id` smallint UNSIGNED NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for table `lkp_resource_file_name`
--

DROP TABLE IF EXISTS `lkp_resource_file_name`;
CREATE TABLE IF NOT EXISTS `lkp_resource_file_name` (
  `id` smallint UNSIGNED NOT NULL,
  `resource_file_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lkp_resource_info`
--

DROP TABLE IF EXISTS `lkp_resource_info`;
CREATE TABLE IF NOT EXISTS `lkp_resource_info` (
  `id` smallint UNSIGNED NOT NULL,
  `resource_info` text COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='offline map, cell tower, wechat analysis helper, driver installer etc';

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
-- Table structure for table `lkp_scope_of_disclosure`
--

DROP TABLE IF EXISTS `lkp_scope_of_disclosure`;
CREATE TABLE IF NOT EXISTS `lkp_scope_of_disclosure` (
  `id` smallint UNSIGNED NOT NULL,
  `scope_of_disclosure` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for table `lkp_template_content`
--

DROP TABLE IF EXISTS `lkp_template_content`;
CREATE TABLE IF NOT EXISTS `lkp_template_content` (
  `id` smallint UNSIGNED NOT NULL,
  `template_content` text COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lkp_template_name`
--

DROP TABLE IF EXISTS `lkp_template_name`;
CREATE TABLE IF NOT EXISTS `lkp_template_name` (
  `id` smallint UNSIGNED NOT NULL,
  `mail_template_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lkp_template_title`
--

DROP TABLE IF EXISTS `lkp_template_title`;
CREATE TABLE IF NOT EXISTS `lkp_template_title` (
  `id` smallint UNSIGNED NOT NULL,
  `mail_template_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lkp_ticket_status`
--

DROP TABLE IF EXISTS `lkp_ticket_status`;
CREATE TABLE IF NOT EXISTS `lkp_ticket_status` (
  `id` smallint UNSIGNED NOT NULL,
  `ticket_status` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lkp_whats_new_description`
--

DROP TABLE IF EXISTS `lkp_whats_new_description`;
CREATE TABLE IF NOT EXISTS `lkp_whats_new_description` (
  `id` smallint UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lkp_whats_new_title`
--

DROP TABLE IF EXISTS `lkp_whats_new_title`;
CREATE TABLE IF NOT EXISTS `lkp_whats_new_title` (
  `id` smallint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin_user_guide`
--

DROP TABLE IF EXISTS `mst_admin_user_guide`;
CREATE TABLE IF NOT EXISTS `mst_admin_user_guide` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `guide_type_id` smallint UNSIGNED NOT NULL,
  `guide_content_id` smallint UNSIGNED NOT NULL,
  `is_deleted` tinyint UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `guide_type_id` (`guide_type_id`),
  KEY `guide_content_id` (`guide_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_customer`
--

DROP TABLE IF EXISTS `mst_customer`;
CREATE TABLE IF NOT EXISTS `mst_customer` (
  `cust_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pri_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pri_phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `reg_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `country_id` smallint UNSIGNED NOT NULL,
  `cust_grp_id` mediumint UNSIGNED DEFAULT NULL,
  `role_id` smallint UNSIGNED DEFAULT NULL,
  `cust_cate_id` smallint UNSIGNED DEFAULT NULL,
  `sec_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sec_phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `passwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `cust_status_id` smallint UNSIGNED NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`cust_id`),
  UNIQUE KEY `pri_email` (`pri_email`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_cust_cate_id` (`cust_cate_id`),
  KEY `idx_cust_group_id` (`cust_grp_id`),
  KEY `country_id` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_dongle_key`
--

DROP TABLE IF EXISTS `mst_dongle_key`;
CREATE TABLE IF NOT EXISTS `mst_dongle_key` (
  `dongle_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `dongle_did` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'dongle delivery id',
  `serial_no` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `cust_id` int UNSIGNED NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dongle_type_id` smallint UNSIGNED NOT NULL,
  `dongle_deal_classification_id` smallint UNSIGNED NOT NULL,
  `availability_id` smallint UNSIGNED NOT NULL,
  `remarks` text COLLATE utf8mb4_general_ci,
  `delivery_date` datetime NOT NULL COMMENT 'trading date',
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`dongle_id`),
  KEY `dongle_type_id` (`dongle_type_id`),
  KEY `dongle_deal_classification_id` (`dongle_deal_classification_id`),
  KEY `availability_id` (`availability_id`),
  KEY `cust_id` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_faq`
--

DROP TABLE IF EXISTS `mst_faq`;
CREATE TABLE IF NOT EXISTS `mst_faq` (
  `faq_id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `faq_title_id` smallint UNSIGNED NOT NULL,
  `faq_content_id` smallint UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`faq_id`),
  KEY `faq_title_id` (`faq_title_id`),
  KEY `product_id` (`product_id`),
  KEY `faq_content_id` (`faq_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_firmware`
--

DROP TABLE IF EXISTS `mst_firmware`;
CREATE TABLE IF NOT EXISTS `mst_firmware` (
  `firmware_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `firmware_stock_id` smallint UNSIGNED NOT NULL,
  `firmware_type_id` smallint UNSIGNED NOT NULL,
  `firmware_url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`firmware_id`),
  KEY `firmware_stock_id` (`firmware_stock_id`),
  KEY `firmware_type_id` (`firmware_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_mail_template`
--

DROP TABLE IF EXISTS `mst_mail_template`;
CREATE TABLE IF NOT EXISTS `mst_mail_template` (
  `mail_template_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `template_name_id` smallint UNSIGNED NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  `template_title_id` smallint UNSIGNED DEFAULT NULL,
  `template_content_id` smallint UNSIGNED NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reg_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`mail_template_id`),
  KEY `template_name_id` (`template_name_id`),
  KEY `lang_id` (`lang_id`),
  KEY `template_title_id` (`template_title_id`),
  KEY `template_content_id` (`template_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_package`
--

DROP TABLE IF EXISTS `mst_package`;
CREATE TABLE IF NOT EXISTS `mst_package` (
  `package_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `package_version` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `deployment_type_id` smallint UNSIGNED NOT NULL,
  `availability_id` smallint UNSIGNED NOT NULL,
  `patch` tinyint NOT NULL DEFAULT '0',
  `patch_version` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `scope_of_disclosure_id` smallint UNSIGNED NOT NULL,
  `package_type_id` smallint UNSIGNED NOT NULL,
  `package_family_id` smallint UNSIGNED NOT NULL,
  `package_files` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `package_passwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `package_hash` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_general_ci,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`package_id`),
  KEY `deployment_type_id` (`deployment_type_id`),
  KEY `availability_id` (`availability_id`),
  KEY `scope_of_disclosure_id` (`scope_of_disclosure_id`),
  KEY `package_type_id` (`package_type_id`),
  KEY `package_family_id` (`package_family_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='holds package info';

-- --------------------------------------------------------

--
-- Table structure for table `mst_package_info`
--

DROP TABLE IF EXISTS `mst_package_info`;
CREATE TABLE IF NOT EXISTS `mst_package_info` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `package_link_name_en` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `package_link_name_ko` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `package_id` int UNSIGNED NOT NULL,
  `url_link` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `package_id` (`package_id`),
  KEY `package_id_2` (`package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_product`
--

DROP TABLE IF EXISTS `mst_product`;
CREATE TABLE IF NOT EXISTS `mst_product` (
  `product_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_name_id` smallint UNSIGNED NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `version_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `product_type_id` smallint UNSIGNED NOT NULL,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`),
  KEY `product_name_id` (`product_name_id`),
  KEY `product_type_id` (`product_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_resource`
--

DROP TABLE IF EXISTS `mst_resource`;
CREATE TABLE IF NOT EXISTS `mst_resource` (
  `resource_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `resource_type_id` smallint UNSIGNED NOT NULL,
  `resource_file_name_id` smallint UNSIGNED NOT NULL,
  `resource_info_id` smallint UNSIGNED NOT NULL,
  `resource_url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `resource_passwrd` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `reg_date` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  `availability_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`resource_id`),
  KEY `resource_type_id` (`resource_type_id`),
  KEY `resource_file_path_id` (`resource_file_name_id`),
  KEY `resource_info_id` (`resource_info_id`),
  KEY `availability_id` (`availability_id`),
  KEY `resource_file_name_id` (`resource_file_name_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_whats_new`
--

DROP TABLE IF EXISTS `mst_whats_new`;
CREATE TABLE IF NOT EXISTS `mst_whats_new` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int UNSIGNED NOT NULL,
  `whats_new_title_id` smallint UNSIGNED NOT NULL,
  `whats_new_description_id` smallint UNSIGNED NOT NULL,
  `release_date` datetime NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_date` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `whats_new_title_id` (`whats_new_title_id`),
  KEY `whats_new_description_id` (`whats_new_description_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_excel_red_app`
--

DROP TABLE IF EXISTS `tbl_excel_red_app`;
CREATE TABLE IF NOT EXISTS `tbl_excel_red_app` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pkgversion` varchar(255) DEFAULT NULL,
  `appname_eng` varchar(255) DEFAULT NULL,
  `appname_kor` varchar(255) DEFAULT NULL,
  `appversion` varchar(45) DEFAULT NULL,
  `apppackages` varchar(4096) DEFAULT NULL,
  `os` varchar(45) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `useyn` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `pkg_index` (`pkgversion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='MD-RED 버전별 지원 앱 목록';

-- --------------------------------------------------------

--
-- Table structure for table `tbl_excel_red_model`
--

DROP TABLE IF EXISTS `tbl_excel_red_model`;
CREATE TABLE IF NOT EXISTS `tbl_excel_red_model` (
  `id` int NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(128) DEFAULT NULL,
  `model` varchar(128) DEFAULT NULL,
  `remarkkor` varchar(255) DEFAULT NULL,
  `remarkeng` varchar(255) DEFAULT NULL,
  `regdate` varchar(45) DEFAULT NULL,
  `pkgversion` varchar(45) DEFAULT NULL,
  `useyn` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `pkg_index` (`pkgversion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='MD-RED 버전별 지원 모델 목록';

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
-- Table structure for table `txn_cust_roundkey`
--

DROP TABLE IF EXISTS `txn_cust_roundkey`;
CREATE TABLE IF NOT EXISTS `txn_cust_roundkey` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `cust_id` int UNSIGNED NOT NULL,
  `round_key` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `availability_id` smallint UNSIGNED NOT NULL,
  `dongle_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cust_id` (`cust_id`),
  KEY `product_id` (`product_id`),
  KEY `availability_id` (`availability_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `txn_dongle_product`
--

DROP TABLE IF EXISTS `txn_dongle_product`;
CREATE TABLE IF NOT EXISTS `txn_dongle_product` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `dongle_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `round_key` mediumint UNSIGNED NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `dongle_id` (`dongle_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='dongle key and product link';

-- --------------------------------------------------------

--
-- Table structure for table `txn_faq_product`
--

DROP TABLE IF EXISTS `txn_faq_product`;
CREATE TABLE IF NOT EXISTS `txn_faq_product` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `faq_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `txn_firmware_download`
--

DROP TABLE IF EXISTS `txn_firmware_download`;
CREATE TABLE IF NOT EXISTS `txn_firmware_download` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `firmware_id` int UNSIGNED NOT NULL,
  `cust_id` int UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `downloaded_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `firmware_id` (`firmware_id`),
  KEY `cust_id` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `txn_hubspot_ticket`
--

DROP TABLE IF EXISTS `txn_hubspot_ticket`;
CREATE TABLE IF NOT EXISTS `txn_hubspot_ticket` (
  `id` smallint UNSIGNED NOT NULL,
  `cust_id` int NOT NULL,
  `ticket_status_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_status_id` (`ticket_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `txn_mail`
--

DROP TABLE IF EXISTS `txn_mail`;
CREATE TABLE IF NOT EXISTS `txn_mail` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `mail_title_id` smallint UNSIGNED NOT NULL,
  `mail_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `mail_grp_name_id` smallint UNSIGNED NOT NULL,
  `mail_grp_type_id` smallint UNSIGNED NOT NULL,
  `mail_classification_id` smallint UNSIGNED NOT NULL,
  `mail_template_id` smallint UNSIGNED NOT NULL,
  `shipping_id` int UNSIGNED NOT NULL,
  `mail_sent_id` int UNSIGNED NOT NULL,
  `shipment_date_scheduled` datetime DEFAULT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  `availibility_id` smallint UNSIGNED NOT NULL,
  `email_content_id` smallint UNSIGNED NOT NULL,
  `is_deleted` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `attachment` blob,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `mail_title_id` (`mail_title_id`),
  KEY `mail_grp_id` (`mail_grp_name_id`),
  KEY `mail_classification_id` (`mail_classification_id`),
  KEY `mail_template_id` (`mail_template_id`),
  KEY `lang_id` (`lang_id`),
  KEY `availibility_id` (`availibility_id`),
  KEY `email_content_id` (`email_content_id`),
  KEY `mail_grp_type_id` (`mail_grp_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='mail sent record';

-- --------------------------------------------------------

--
-- Table structure for table `txn_package_download`
--

DROP TABLE IF EXISTS `txn_package_download`;
CREATE TABLE IF NOT EXISTS `txn_package_download` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `package_id` int UNSIGNED NOT NULL,
  `cust_id` int UNSIGNED NOT NULL,
  `downlaoded_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `package_id` (`package_id`),
  KEY `cust_id` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `txn_package_product`
--

DROP TABLE IF EXISTS `txn_package_product`;
CREATE TABLE IF NOT EXISTS `txn_package_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `package_id` int UNSIGNED DEFAULT NULL,
  `product_id` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `package_id` (`package_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `txn_resource_download`
--

DROP TABLE IF EXISTS `txn_resource_download`;
CREATE TABLE IF NOT EXISTS `txn_resource_download` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `resource_id` int UNSIGNED NOT NULL,
  `cust_id` int UNSIGNED NOT NULL,
  `downlaoded_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resource_id` (`resource_id`),
  KEY `cust_id` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `txn_resource_product`
--

DROP TABLE IF EXISTS `txn_resource_product`;
CREATE TABLE IF NOT EXISTS `txn_resource_product` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int UNSIGNED NOT NULL,
  `resource_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `resource_id` (`resource_id`)
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
  `session_txn_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `cust_id` int UNSIGNED NOT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `txn_user_recent_product`
--

DROP TABLE IF EXISTS `txn_user_recent_product`;
CREATE TABLE IF NOT EXISTS `txn_user_recent_product` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int UNSIGNED NOT NULL,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  `cust_id` int UNSIGNED NOT NULL,
  `repeated_count` tinyint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `cust_id` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='to display recent product for a user';

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lkp_availability`
--
ALTER TABLE `lkp_availability`
  ADD CONSTRAINT `lkp_availability_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_country`
--
ALTER TABLE `lkp_country`
  ADD CONSTRAINT `lkp_country_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_cust_cate`
--
ALTER TABLE `lkp_cust_cate`
  ADD CONSTRAINT `lkp_cust_cate_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_cust_grp`
--
ALTER TABLE `lkp_cust_grp`
  ADD CONSTRAINT `lkp_cust_grp_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

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
-- Constraints for table `lkp_dongle_type`
--
ALTER TABLE `lkp_dongle_type`
  ADD CONSTRAINT `lkp_dongle_type_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_faq_content`
--
ALTER TABLE `lkp_faq_content`
  ADD CONSTRAINT `lkp_faq_content_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_faq_title`
--
ALTER TABLE `lkp_faq_title`
  ADD CONSTRAINT `lkp_faq_title_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_firmware_stock`
--
ALTER TABLE `lkp_firmware_stock`
  ADD CONSTRAINT `lkp_firmware_stock_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_firmware_type`
--
ALTER TABLE `lkp_firmware_type`
  ADD CONSTRAINT `lkp_firmware_type_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_guide_content`
--
ALTER TABLE `lkp_guide_content`
  ADD CONSTRAINT `lkp_guide_content_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_guide_type`
--
ALTER TABLE `lkp_guide_type`
  ADD CONSTRAINT `lkp_guide_type_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_mail_classification`
--
ALTER TABLE `lkp_mail_classification`
  ADD CONSTRAINT `lkp_mail_classification_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_mail_grp_name`
--
ALTER TABLE `lkp_mail_grp_name`
  ADD CONSTRAINT `lkp_mail_grp_name_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_mail_grp_type`
--
ALTER TABLE `lkp_mail_grp_type`
  ADD CONSTRAINT `lkp_mail_grp_type_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_mail_title`
--
ALTER TABLE `lkp_mail_title`
  ADD CONSTRAINT `lkp_mail_title_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

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
-- Constraints for table `lkp_product_name`
--
ALTER TABLE `lkp_product_name`
  ADD CONSTRAINT `lkp_product_name_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_product_type`
--
ALTER TABLE `lkp_product_type`
  ADD CONSTRAINT `lkp_product_type_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_resource_file_name`
--
ALTER TABLE `lkp_resource_file_name`
  ADD CONSTRAINT `lkp_resource_file_name_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_resource_info`
--
ALTER TABLE `lkp_resource_info`
  ADD CONSTRAINT `lkp_resource_info_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

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
-- Constraints for table `lkp_scope_of_disclosure`
--
ALTER TABLE `lkp_scope_of_disclosure`
  ADD CONSTRAINT `lkp_scope_of_disclosure_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_serial_type`
--
ALTER TABLE `lkp_serial_type`
  ADD CONSTRAINT `lkp_serial_type_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_template_content`
--
ALTER TABLE `lkp_template_content`
  ADD CONSTRAINT `lkp_template_content_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_template_name`
--
ALTER TABLE `lkp_template_name`
  ADD CONSTRAINT `lkp_template_name_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_template_title`
--
ALTER TABLE `lkp_template_title`
  ADD CONSTRAINT `lkp_template_title_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_ticket_status`
--
ALTER TABLE `lkp_ticket_status`
  ADD CONSTRAINT `lkp_ticket_status_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_whats_new_description`
--
ALTER TABLE `lkp_whats_new_description`
  ADD CONSTRAINT `lkp_whats_new_description_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_whats_new_title`
--
ALTER TABLE `lkp_whats_new_title`
  ADD CONSTRAINT `lkp_whats_new_title_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_admin_user_guide`
--
ALTER TABLE `mst_admin_user_guide`
  ADD CONSTRAINT `mst_admin_user_guide_ibfk_1` FOREIGN KEY (`guide_content_id`) REFERENCES `lkp_guide_content` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_admin_user_guide_ibfk_2` FOREIGN KEY (`guide_type_id`) REFERENCES `lkp_guide_type` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_customer`
--
ALTER TABLE `mst_customer`
  ADD CONSTRAINT `mst_customer_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `lkp_role` (`id`),
  ADD CONSTRAINT `mst_customer_ibfk_2` FOREIGN KEY (`cust_cate_id`) REFERENCES `lkp_cust_cate` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_customer_ibfk_4` FOREIGN KEY (`country_id`) REFERENCES `lkp_country` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_customer_ibfk_5` FOREIGN KEY (`cust_grp_id`) REFERENCES `lkp_cust_grp` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_dongle_key`
--
ALTER TABLE `mst_dongle_key`
  ADD CONSTRAINT `mst_dongle_key_ibfk_1` FOREIGN KEY (`dongle_type_id`) REFERENCES `lkp_dongle_type` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_dongle_key_ibfk_2` FOREIGN KEY (`dongle_deal_classification_id`) REFERENCES `lkp_dongle_deal_classification` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_dongle_key_ibfk_4` FOREIGN KEY (`availability_id`) REFERENCES `lkp_availability` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_dongle_key_ibfk_5` FOREIGN KEY (`cust_id`) REFERENCES `mst_customer` (`cust_id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_faq`
--
ALTER TABLE `mst_faq`
  ADD CONSTRAINT `mst_faq_ibfk_1` FOREIGN KEY (`faq_content_id`) REFERENCES `lkp_faq_content` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_faq_ibfk_2` FOREIGN KEY (`faq_title_id`) REFERENCES `lkp_faq_title` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_firmware`
--
ALTER TABLE `mst_firmware`
  ADD CONSTRAINT `mst_firmware_ibfk_1` FOREIGN KEY (`firmware_stock_id`) REFERENCES `lkp_firmware_stock` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_firmware_ibfk_2` FOREIGN KEY (`firmware_type_id`) REFERENCES `lkp_firmware_type` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_mail_template`
--
ALTER TABLE `mst_mail_template`
  ADD CONSTRAINT `mst_mail_template_ibfk_1` FOREIGN KEY (`template_content_id`) REFERENCES `lkp_template_content` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_mail_template_ibfk_2` FOREIGN KEY (`template_name_id`) REFERENCES `lkp_template_name` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_mail_template_ibfk_3` FOREIGN KEY (`template_title_id`) REFERENCES `lkp_template_title` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_package`
--
ALTER TABLE `mst_package`
  ADD CONSTRAINT `mst_package_ibfk_1` FOREIGN KEY (`availability_id`) REFERENCES `lkp_availability` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_package_ibfk_2` FOREIGN KEY (`scope_of_disclosure_id`) REFERENCES `lkp_scope_of_disclosure` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_package_ibfk_3` FOREIGN KEY (`package_type_id`) REFERENCES `lkp_package_type` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_package_ibfk_4` FOREIGN KEY (`package_family_id`) REFERENCES `lkp_package_family` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_package_info`
--
ALTER TABLE `mst_package_info`
  ADD CONSTRAINT `mst_package_info_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `mst_package` (`package_id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_product`
--
ALTER TABLE `mst_product`
  ADD CONSTRAINT `mst_product_ibfk_1` FOREIGN KEY (`product_name_id`) REFERENCES `lkp_product_name` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_product_ibfk_2` FOREIGN KEY (`product_type_id`) REFERENCES `lkp_product_type` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_resource`
--
ALTER TABLE `mst_resource`
  ADD CONSTRAINT `mst_resource_ibfk_2` FOREIGN KEY (`resource_info_id`) REFERENCES `lkp_resource_info` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_resource_ibfk_3` FOREIGN KEY (`resource_type_id`) REFERENCES `lkp_resource_type` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_resource_ibfk_4` FOREIGN KEY (`availability_id`) REFERENCES `lkp_availability` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_resource_ibfk_5` FOREIGN KEY (`resource_file_name_id`) REFERENCES `lkp_resource_file_name` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_whats_new`
--
ALTER TABLE `mst_whats_new`
  ADD CONSTRAINT `mst_whats_new_ibfk_1` FOREIGN KEY (`whats_new_description_id`) REFERENCES `lkp_whats_new_description` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_whats_new_ibfk_2` FOREIGN KEY (`whats_new_title_id`) REFERENCES `lkp_whats_new_title` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_audit_trial`
--
ALTER TABLE `txn_audit_trial`
  ADD CONSTRAINT `txn_audit_trial_ibfk_1` FOREIGN KEY (`log_type_id`) REFERENCES `lkp_log_type` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_cust_roundkey`
--
ALTER TABLE `txn_cust_roundkey`
  ADD CONSTRAINT `txn_cust_roundkey_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `mst_customer` (`cust_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_cust_roundkey_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `mst_product` (`product_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_cust_roundkey_ibfk_3` FOREIGN KEY (`availability_id`) REFERENCES `lkp_availability` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_dongle_product`
--
ALTER TABLE `txn_dongle_product`
  ADD CONSTRAINT `txn_dongle_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `mst_product` (`product_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_dongle_product_ibfk_2` FOREIGN KEY (`dongle_id`) REFERENCES `mst_dongle_key` (`dongle_id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_firmware_download`
--
ALTER TABLE `txn_firmware_download`
  ADD CONSTRAINT `txn_firmware_download_ibfk_1` FOREIGN KEY (`firmware_id`) REFERENCES `mst_firmware` (`firmware_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_firmware_download_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `mst_customer` (`cust_id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_hubspot_ticket`
--
ALTER TABLE `txn_hubspot_ticket`
  ADD CONSTRAINT `txn_hubspot_ticket_ibfk_1` FOREIGN KEY (`ticket_status_id`) REFERENCES `lkp_ticket_status` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_mail`
--
ALTER TABLE `txn_mail`
  ADD CONSTRAINT `txn_mail_ibfk_1` FOREIGN KEY (`mail_grp_type_id`) REFERENCES `lkp_mail_grp_type` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_mail_ibfk_2` FOREIGN KEY (`mail_classification_id`) REFERENCES `lkp_mail_classification` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_mail_ibfk_3` FOREIGN KEY (`mail_grp_name_id`) REFERENCES `lkp_mail_grp_name` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_mail_ibfk_4` FOREIGN KEY (`mail_title_id`) REFERENCES `lkp_mail_title` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_package_download`
--
ALTER TABLE `txn_package_download`
  ADD CONSTRAINT `txn_package_download_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `mst_customer` (`cust_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_package_download_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `mst_package` (`package_id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_package_product`
--
ALTER TABLE `txn_package_product`
  ADD CONSTRAINT `txn_package_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `mst_product` (`product_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_package_product_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `mst_package` (`package_id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_resource_download`
--
ALTER TABLE `txn_resource_download`
  ADD CONSTRAINT `txn_resource_download_ibfk_1` FOREIGN KEY (`resource_id`) REFERENCES `mst_resource` (`resource_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_resource_download_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `mst_customer` (`cust_id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_resource_product`
--
ALTER TABLE `txn_resource_product`
  ADD CONSTRAINT `txn_resource_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `mst_product` (`product_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_resource_product_ibfk_2` FOREIGN KEY (`resource_id`) REFERENCES `mst_resource` (`resource_id`) ON DELETE RESTRICT;

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
  ADD CONSTRAINT `txn_session_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `mst_customer` (`cust_id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_user_recent_product`
--
ALTER TABLE `txn_user_recent_product`
  ADD CONSTRAINT `txn_user_recent_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `mst_product` (`product_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_user_recent_product_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `mst_customer` (`cust_id`) ON DELETE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
