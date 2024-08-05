-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 29, 2024 at 05:11 AM
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
  UNIQUE KEY `unique_availability_lang_id` (`availability`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='in stock, not available';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_brand_model`
--

DROP TABLE IF EXISTS `lkp_brand_model`;
CREATE TABLE IF NOT EXISTS `lkp_brand_model` (
  `id` smallint UNSIGNED NOT NULL,
  `brand_model` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_brand_model_lang_id` (`brand_model`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='GT-I9082, GT-I9300 etc';

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
  UNIQUE KEY `unique_country_lang_id` (`country`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='india, south korea';

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
  UNIQUE KEY `unique_cust_cate_lang_id` (`cust_cate`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Police, ED, R & D Institute';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_cust_dateformat`
--

DROP TABLE IF EXISTS `lkp_cust_dateformat`;
CREATE TABLE IF NOT EXISTS `lkp_cust_dateformat` (
  `id` smallint UNSIGNED NOT NULL,
  `cust_dateformat` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_cust_dateformat_lang_id` (`cust_dateformat`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='holds different date formats';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_cust_grp`
--

DROP TABLE IF EXISTS `lkp_cust_grp`;
CREATE TABLE IF NOT EXISTS `lkp_cust_grp` (
  `id` mediumint UNSIGNED NOT NULL,
  `cust_grp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_cust_grp_lang_id` (`cust_grp`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='research institute, LG Display, Ethics Office, SK Infosec etc';

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
  UNIQUE KEY `unique_cust_status_lang_id` (`cust_status`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='in verification -admin added, registered -user register, active';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_cust_timezone`
--

DROP TABLE IF EXISTS `lkp_cust_timezone`;
CREATE TABLE IF NOT EXISTS `lkp_cust_timezone` (
  `id` smallint UNSIGNED NOT NULL,
  `cust_timezone` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_cust_timezone_lang_id` (`cust_timezone`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='hold customer time zone format eg.±hh:mm, ±hhmm';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_delivery_type`
--

DROP TABLE IF EXISTS `lkp_delivery_type`;
CREATE TABLE IF NOT EXISTS `lkp_delivery_type` (
  `id` smallint UNSIGNED NOT NULL,
  `delivery_type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lkp_deployment_type`
--

DROP TABLE IF EXISTS `lkp_deployment_type`;
CREATE TABLE IF NOT EXISTS `lkp_deployment_type` (
  `id` smallint UNSIGNED NOT NULL,
  `deployment_type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_deployment_type_lang_id` (`deployment_type`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Full package, Temporary package';

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
  UNIQUE KEY `unique_deal_classification_lang_id` (`deal_classification`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='delivery, hire, demo etc';

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
  UNIQUE KEY `unique_dtype_lang_id` (`dtype`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Perpetual Key, Time Key, Software Key, Network Key, USB Key, Old Perpetual Key, Old Time Key';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_faq_content`
--

DROP TABLE IF EXISTS `lkp_faq_content`;
CREATE TABLE IF NOT EXISTS `lkp_faq_content` (
  `id` smallint UNSIGNED NOT NULL,
  `faq_content` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Stores the text content of FAQs on product, package etc	';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_faq_tag`
--

DROP TABLE IF EXISTS `lkp_faq_tag`;
CREATE TABLE IF NOT EXISTS `lkp_faq_tag` (
  `id` smallint UNSIGNED NOT NULL,
  `tag_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_tag_name_lang_id` (`tag_name`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='used to filter faq using tag';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_faq_type`
--

DROP TABLE IF EXISTS `lkp_faq_type`;
CREATE TABLE IF NOT EXISTS `lkp_faq_type` (
  `id` smallint UNSIGNED NOT NULL,
  `faq_type` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_faq_type_lang_id` (`faq_type`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='type as: general, all products, products';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_firmware_brand`
--

DROP TABLE IF EXISTS `lkp_firmware_brand`;
CREATE TABLE IF NOT EXISTS `lkp_firmware_brand` (
  `id` smallint UNSIGNED NOT NULL,
  `firmware_brand` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_firmware_brand_lang_id` (`firmware_brand`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Samsung, oppo, Microsoft, Nokia';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_firmware_os`
--

DROP TABLE IF EXISTS `lkp_firmware_os`;
CREATE TABLE IF NOT EXISTS `lkp_firmware_os` (
  `id` smallint UNSIGNED NOT NULL,
  `firmware_os` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_firmware_os_lang_id` (`firmware_os`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='windows, android';

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
  UNIQUE KEY `unique_stock_lang_id` (`stock`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='bootloader, custome image';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_	guide_type`
--

DROP TABLE IF EXISTS `lkp_	guide_type`;
CREATE TABLE IF NOT EXISTS `lkp_	guide_type` (
  `id` smallint UNSIGNED NOT NULL,
  `guide_type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_guide_type_lang_id` (`guide_type`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='customer care guide, dongle guide';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_lang`
--

DROP TABLE IF EXISTS `lkp_lang`;
CREATE TABLE IF NOT EXISTS `lkp_lang` (
  `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_language` (`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='EN, KO';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_log_type`
--

DROP TABLE IF EXISTS `lkp_log_type`;
CREATE TABLE IF NOT EXISTS `lkp_log_type` (
  `id` smallint UNSIGNED NOT NULL,
  `log_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_log_type_lang_id` (`log_type`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Log type used in audit trail, include product usage count';

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
  UNIQUE KEY `unique_mail_classification_lang_id` (`mail_classification`,`lang_id`),
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
  UNIQUE KEY `unique_mail_grp_name_lang_id` (`mail_grp_name`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='KDF_Temp, MD-VIDEO_EN, DETEGO etc';

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
  UNIQUE KEY `unique_mail_grp_type_lang_id` (`mail_grp_type`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='custom, inside, domestic_institution,  abroad';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_mail_sent_status`
--

DROP TABLE IF EXISTS `lkp_mail_sent_status`;
CREATE TABLE IF NOT EXISTS `lkp_mail_sent_status` (
  `id` smallint UNSIGNED NOT NULL,
  `mail_sent_status` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_mail_sent_status_lang_id` (`mail_sent_status`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='sent, bounced, in progress';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_mail_summary_status`
--

DROP TABLE IF EXISTS `lkp_mail_summary_status`;
CREATE TABLE IF NOT EXISTS `lkp_mail_summary_status` (
  `id` smallint UNSIGNED NOT NULL,
  `mail_summary_status` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_mail_summary_status_lang_id` (`mail_summary_status`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Draft, Open, Sent';

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
  UNIQUE KEY `unique_mail_title_lang_id` (`mail_title`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='This field would store a brief title of the mail';

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
  UNIQUE KEY `unique_module_lang_id` (`module`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='package management, mail management, customer management etc';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_module_permission`
--

DROP TABLE IF EXISTS `lkp_module_permission`;
CREATE TABLE IF NOT EXISTS `lkp_module_permission` (
  `id` smallint UNSIGNED NOT NULL,
  `permission` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='permission based on module eg. Full, Mail send, mail register';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_noti_status`
--

DROP TABLE IF EXISTS `lkp_noti_status`;
CREATE TABLE IF NOT EXISTS `lkp_noti_status` (
  `id` smallint UNSIGNED NOT NULL,
  `noti_status` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_noti_status_lang_id` (`noti_status`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='unread, read';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_noti_type`
--

DROP TABLE IF EXISTS `lkp_noti_type`;
CREATE TABLE IF NOT EXISTS `lkp_noti_type` (
  `id` smallint UNSIGNED NOT NULL,
  `noti_type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_noti_type_lang_id` (`noti_type`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='info, warning, alert';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_prod_type`
--

DROP TABLE IF EXISTS `lkp_prod_type`;
CREATE TABLE IF NOT EXISTS `lkp_prod_type` (
  `id` smallint UNSIGNED NOT NULL,
  `prod_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_prod_type_lang_id` (`prod_type`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='ADDINS, GT, PH, NECLAN, PKG, MD';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_region_sub_type`
--

DROP TABLE IF EXISTS `lkp_region_sub_type`;
CREATE TABLE IF NOT EXISTS `lkp_region_sub_type` (
  `id` smallint UNSIGNED NOT NULL,
  `region_sub_type` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_region_sub_type_lang_id` (`region_sub_type`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='main, others, oem';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_region_type`
--

DROP TABLE IF EXISTS `lkp_region_type`;
CREATE TABLE IF NOT EXISTS `lkp_region_type` (
  `id` smallint UNSIGNED NOT NULL,
  `region_type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_region_type_lang_id` (`region_type`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='G: global, D: domestic, C: customer (both global and domestic)';

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
  UNIQUE KEY `unique_resource_file_name_lang_id` (`resource_file_name`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='This field stored the file name of resource';

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
  UNIQUE KEY `unique_resource_info_lang_id` (`resource_info`(255),`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='stores information about resources';

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
  UNIQUE KEY `unique_resource_type_lang_id` (`resource_type`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='offline map, cell tower, wechat analysis helper, driver installer etc';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_role`
--

DROP TABLE IF EXISTS `lkp_role`;
CREATE TABLE IF NOT EXISTS `lkp_role` (
  `id` smallint UNSIGNED NOT NULL,
  `user_role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_user_role_lang_id` (`user_role`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='QA, front/support team, super admin, partner, customer';

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
  UNIQUE KEY `unique_scope_of_disclosure_lang_id` (`scope_of_disclosure`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='published in the research institute, full disclosure';

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
  UNIQUE KEY `unique_serial_type_lang_id` (`serial_type`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='trial, infinite';

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
  UNIQUE KEY `unique_ticket_status_lang_id` (`ticket_status`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='new, in progress, closed	';

-- --------------------------------------------------------

--
-- Table structure for table `lkp_whats_new_tag`
--

DROP TABLE IF EXISTS `lkp_whats_new_tag`;
CREATE TABLE IF NOT EXISTS `lkp_whats_new_tag` (
  `id` smallint UNSIGNED NOT NULL,
  `tag_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`lang_id`),
  UNIQUE KEY `unique_tag_name_lang_id` (`tag_name`,`lang_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='used to filter whats new using tag';

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin_user_guide`
--

DROP TABLE IF EXISTS `mst_admin_user_guide`;
CREATE TABLE IF NOT EXISTS `mst_admin_user_guide` (
  `guide_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `guide_type_id` smallint UNSIGNED NOT NULL COMMENT 'customer care guide, dongle guide',
  `guide_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'stores information related to various guides, tutorials, or help articles',
  `lang_id` smallint UNSIGNED NOT NULL,
  `is_deleted` tinyint UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`guide_id`),
  KEY `lang_id` (`lang_id`),
  KEY `guide_type_id` (`guide_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='used to display guide info like customer management guide or dongle guide';

-- --------------------------------------------------------

--
-- Table structure for table `mst_cust`
--

DROP TABLE IF EXISTS `mst_cust`;
CREATE TABLE IF NOT EXISTS `mst_cust` (
  `cust_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pri_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'input allow English only',
  `pri_phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'input allow English only',
  `reg_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `country_id` smallint UNSIGNED NOT NULL COMMENT 'india, south korea',
  `cust_grp_id` mediumint UNSIGNED DEFAULT NULL COMMENT 'research institute, LG Display, Ethics Office, SK Infosec etc',
  `role_id` smallint UNSIGNED DEFAULT NULL COMMENT 'QA, front/support team, super admin',
  `cust_cate_id` smallint UNSIGNED DEFAULT NULL COMMENT 'Police, ED, R & D Institute',
  `sec_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sec_phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cust_dateformat_id` smallint UNSIGNED NOT NULL,
  `cust_timezone_id` smallint UNSIGNED NOT NULL,
  `passwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `cust_status_id` smallint UNSIGNED NOT NULL COMMENT 'in verification -admin added, registered -user register, active',
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  `lang_id` smallint UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`cust_id`),
  UNIQUE KEY `pri_email` (`pri_email`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_cust_cate_id` (`cust_cate_id`),
  KEY `idx_cust_group_id` (`cust_grp_id`),
  KEY `country_id` (`country_id`),
  KEY `cust_status_id` (`cust_status_id`),
  KEY `lang_id` (`lang_id`),
  KEY `cust_dateformat_id` (`cust_dateformat_id`),
  KEY `cust_timezone_id` (`cust_timezone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='holds customer and admin data';

-- --------------------------------------------------------

--
-- Table structure for table `mst_dongle_key`
--

DROP TABLE IF EXISTS `mst_dongle_key`;
CREATE TABLE IF NOT EXISTS `mst_dongle_key` (
  `dongle_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `dongle_did` int UNSIGNED NOT NULL COMMENT 'dongle delivery id',
  `serial_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'license key',
  `serial_type_id` smallint UNSIGNED NOT NULL COMMENT 'trial, infinite',
  `cust_id` smallint UNSIGNED NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'dongle key registered date',
  `dongle_type_id` smallint UNSIGNED NOT NULL COMMENT 'Perpetual Key, Time Key, Software Key, Network Key, USB Key, Old Perpetual Key, Old Time Key',
  `dongle_deal_classification_id` smallint UNSIGNED NOT NULL COMMENT 'delivery, hire, demo etc',
  `availability_id` smallint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'in stock, not available',
  `remarks` text COLLATE utf8mb4_general_ci,
  `delivery_date` date NOT NULL COMMENT 'trading date',
  `expire_date` date NOT NULL COMMENT 'dongle key expire date',
  PRIMARY KEY (`dongle_id`),
  KEY `dongle_type_id` (`dongle_type_id`),
  KEY `dongle_deal_classification_id` (`dongle_deal_classification_id`),
  KEY `availability_id` (`availability_id`),
  KEY `serial_type_id` (`serial_type_id`),
  KEY `cust_grp_id` (`cust_id`),
  KEY `cust_id` (`cust_id`),
  KEY `dongle_did` (`dongle_did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='holds dongle key information';

-- --------------------------------------------------------

--
-- Table structure for table `mst_dongle_key_dlivery`
--

DROP TABLE IF EXISTS `mst_dongle_key_dlivery`;
CREATE TABLE IF NOT EXISTS `mst_dongle_key_dlivery` (
  `dongle_did` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `expire_date` datetime NOT NULL,
  `reg_date` datetime NOT NULL,
  `cust_id` int UNSIGNED NOT NULL,
  `delivery_type_id` smallint UNSIGNED NOT NULL COMMENT 'N, T, AND, D',
  `remarks` text COLLATE utf8mb4_general_ci NOT NULL,
  `delivery_date` int NOT NULL,
  `availability_id` smallint UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`dongle_did`),
  KEY `cust_id` (`cust_id`),
  KEY `availability_id` (`availability_id`),
  KEY `delivery_type_id` (`delivery_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_faq`
--

DROP TABLE IF EXISTS `mst_faq`;
CREATE TABLE IF NOT EXISTS `mst_faq` (
  `faq_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `faq_type_id` smallint UNSIGNED NOT NULL COMMENT 'general, training, product',
  `faq_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'This field would store a brief summary of the FAQ entry',
  `reg_date` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  `lang_id` smallint UNSIGNED NOT NULL,
  `is_active` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`faq_id`),
  KEY `lang_id` (`lang_id`),
  KEY `faq_type_id` (`faq_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='used to store faq';

-- --------------------------------------------------------

--
-- Table structure for table `mst_faq_content`
--

DROP TABLE IF EXISTS `mst_faq_content`;
CREATE TABLE IF NOT EXISTS `mst_faq_content` (
  `id` int UNSIGNED NOT NULL,
  `faq_id` int UNSIGNED NOT NULL,
  `faq_content_id` smallint UNSIGNED NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `faq_id` (`faq_id`),
  KEY `faq_content_id` (`faq_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='association table for faq and content';

-- --------------------------------------------------------

--
-- Table structure for table `mst_faq_prod`
--

DROP TABLE IF EXISTS `mst_faq_prod`;
CREATE TABLE IF NOT EXISTS `mst_faq_prod` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `faq_id` int UNSIGNED NOT NULL,
  `prod_id` int UNSIGNED NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `faq_id` (`faq_id`),
  KEY `prod_id` (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='association table for faq and product';

-- --------------------------------------------------------

--
-- Table structure for table `mst_faq_tag`
--

DROP TABLE IF EXISTS `mst_faq_tag`;
CREATE TABLE IF NOT EXISTS `mst_faq_tag` (
  `id` smallint UNSIGNED NOT NULL,
  `faq_id` int UNSIGNED NOT NULL,
  `tag_id` smallint UNSIGNED NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `faq_id` (`faq_id`),
  KEY `tag_id` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='associates faq with tag table';

-- --------------------------------------------------------

--
-- Table structure for table `mst_firmware`
--

DROP TABLE IF EXISTS `mst_firmware`;
CREATE TABLE IF NOT EXISTS `mst_firmware` (
  `firmware_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int UNSIGNED NOT NULL,
  `firmware_os_id` smallint UNSIGNED NOT NULL COMMENT 'windows, android',
  `firmware_stock_id` smallint UNSIGNED NOT NULL COMMENT 'bootloader, custome image',
  `firmware_brand_id` smallint UNSIGNED NOT NULL COMMENT 'oppo, samsung',
  `brand_model_id` smallint UNSIGNED NOT NULL COMMENT 'GT-I9082, GT-I9300 etc',
  `firmware_folder` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `firmware_url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `availability_id` smallint UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`firmware_id`),
  KEY `firmware_stock_id` (`firmware_stock_id`),
  KEY `firmware_type_id` (`firmware_brand_id`),
  KEY `product_id` (`product_id`),
  KEY `firmware_os_id` (`firmware_os_id`),
  KEY `brand_model_id` (`brand_model_id`),
  KEY `availability_id` (`availability_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='holds firmware information';

-- --------------------------------------------------------

--
-- Table structure for table `mst_mail_template`
--

DROP TABLE IF EXISTS `mst_mail_template`;
CREATE TABLE IF NOT EXISTS `mst_mail_template` (
  `mail_template_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `template_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'stores mail template name',
  `mail_classification_id` smallint UNSIGNED NOT NULL COMMENT 'sending a package, newsletter, test mail, event news',
  `template_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'This field will store a brief title or summary of the mail template',
  `template_content` text COLLATE utf8mb4_general_ci NOT NULL COMMENT 'stores the text content of mail',
  `remarks` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reg_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `lang_id` smallint UNSIGNED NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`mail_template_id`),
  KEY `lang_id` (`lang_id`),
  KEY `mail_classification_id` (`mail_classification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='stores mail template format';

-- --------------------------------------------------------

--
-- Table structure for table `mst_package`
--

DROP TABLE IF EXISTS `mst_package`;
CREATE TABLE IF NOT EXISTS `mst_package` (
  `package_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `package_version` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `deployment_type_id` smallint UNSIGNED NOT NULL COMMENT 'Full package, Temporary package',
  `revision` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Deployment SVNRegation',
  `scope_of_disclosure_id` smallint UNSIGNED NOT NULL COMMENT 'published in the research institute, full disclosure',
  `package_passwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prod_id` int UNSIGNED NOT NULL,
  `remarks` text COLLATE utf8mb4_general_ci,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `availability_id` smallint UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`package_id`),
  KEY `deployment_type_id` (`deployment_type_id`),
  KEY `availability_id` (`availability_id`),
  KEY `scope_of_disclosure_id` (`scope_of_disclosure_id`),
  KEY `prod_id` (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='holds package info';

-- --------------------------------------------------------

--
-- Table structure for table `mst_package_files`
--

DROP TABLE IF EXISTS `mst_package_files`;
CREATE TABLE IF NOT EXISTS `mst_package_files` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `package_id` int UNSIGNED NOT NULL,
  `package_link_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `file_url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `package_hash` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `package_passwd` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `reg_date` datetime NOT NULL,
  `availability_id` smallint UNSIGNED NOT NULL DEFAULT '1',
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `package_id` (`package_id`),
  KEY `lang_id` (`lang_id`),
  KEY `availability_id` (`availability_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='package files and package association table';

-- --------------------------------------------------------

--
-- Table structure for table `mst_package_patch`
--

DROP TABLE IF EXISTS `mst_package_patch`;
CREATE TABLE IF NOT EXISTS `mst_package_patch` (
  `package_hash_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `package_id` int UNSIGNED NOT NULL,
  `patch_version` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `patch_hash` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `patch_link_name_en` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `patch_link_name_ko` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `url_link` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `remarks` text COLLATE utf8mb4_general_ci NOT NULL,
  `reg_date` datetime NOT NULL,
  `availability_id` smallint UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`package_hash_id`),
  KEY `package_id` (`package_id`),
  KEY `availability_id` (`availability_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='used to store patch data of a package';

-- --------------------------------------------------------

--
-- Table structure for table `mst_package_release_notes`
--

DROP TABLE IF EXISTS `mst_package_release_notes`;
CREATE TABLE IF NOT EXISTS `mst_package_release_notes` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `package_id` int UNSIGNED NOT NULL,
  `release_note` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `release_attachment` blob NOT NULL,
  `release_xml` text COLLATE utf8mb4_general_ci NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `package_id` (`package_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_prod`
--

DROP TABLE IF EXISTS `mst_prod`;
CREATE TABLE IF NOT EXISTS `mst_prod` (
  `prod_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `prod_type_id` smallint UNSIGNED NOT NULL COMMENT 'ADDINS, GT, PH, NECLAN, PKG, MD',
  `region_type_id` smallint UNSIGNED NOT NULL COMMENT 'global, domestic',
  `region_sub_type_id` smallint UNSIGNED NOT NULL COMMENT 'main, oem, others',
  `remarks` text COLLATE utf8mb4_general_ci NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `availability_id` smallint UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`prod_id`),
  KEY `product_type_id` (`prod_type_id`),
  KEY `availability_id` (`availability_id`),
  KEY `region_type_id` (`region_type_id`),
  KEY `region_sub_type_id` (`region_sub_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='holds product information';

-- --------------------------------------------------------

--
-- Table structure for table `mst_prod_lang`
--

DROP TABLE IF EXISTS `mst_prod_lang`;
CREATE TABLE IF NOT EXISTS `mst_prod_lang` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `prod_id` int UNSIGNED NOT NULL,
  `prod_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `prod_code` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `version_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `lang_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `prod_id` (`prod_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='holds product table language specific columns';

-- --------------------------------------------------------

--
-- Table structure for table `mst_prod_resource`
--

DROP TABLE IF EXISTS `mst_prod_resource`;
CREATE TABLE IF NOT EXISTS `mst_prod_resource` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `prod_id` int UNSIGNED NOT NULL,
  `resource_id` int UNSIGNED NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `prod_id` (`prod_id`),
  KEY `resource_id` (`resource_id`),
  KEY `availability_id` (`is_deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='product and resource association table';

-- --------------------------------------------------------

--
-- Table structure for table `mst_resource`
--

DROP TABLE IF EXISTS `mst_resource`;
CREATE TABLE IF NOT EXISTS `mst_resource` (
  `resource_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `resource_type_id` smallint UNSIGNED NOT NULL COMMENT 'offline map, cell tower, wechat analysis helper, driver installer etc',
  `resource_file_name_id` smallint UNSIGNED NOT NULL,
  `resource_info_id` smallint UNSIGNED NOT NULL,
  `resource_url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `resource_passwrd` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `reg_date` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  `availability_id` smallint UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`resource_id`),
  KEY `resource_type_id` (`resource_type_id`),
  KEY `availability_id` (`availability_id`),
  KEY `resource_file_name_id` (`resource_file_name_id`),
  KEY `resource_info_id` (`resource_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='holds resource information';

-- --------------------------------------------------------

--
-- Table structure for table `mst_role_module`
--

DROP TABLE IF EXISTS `mst_role_module`;
CREATE TABLE IF NOT EXISTS `mst_role_module` (
  `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` smallint UNSIGNED DEFAULT NULL,
  `module_id` smallint UNSIGNED DEFAULT NULL,
  `module_permission_id` smallint UNSIGNED NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_role_module` (`role_id`,`module_id`),
  KEY `module_id` (`module_id`),
  KEY `module_permission_id` (`module_permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='associates admin role with modules';

-- --------------------------------------------------------

--
-- Table structure for table `mst_whats_new`
--

DROP TABLE IF EXISTS `mst_whats_new`;
CREATE TABLE IF NOT EXISTS `mst_whats_new` (
  `whats_new_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `whats_new_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `whats_new_image` mediumblob,
  `whats_new_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'url link for youtube or any social media',
  `valid_till` date NOT NULL COMMENT 'expiration date',
  `lang_id` smallint UNSIGNED NOT NULL,
  `release_date` datetime NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_date` datetime NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`whats_new_id`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='stores latest updates, features, news, or announcements';

-- --------------------------------------------------------

--
-- Table structure for table `mst_whats_new_prod`
--

DROP TABLE IF EXISTS `mst_whats_new_prod`;
CREATE TABLE IF NOT EXISTS `mst_whats_new_prod` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `prod_id` int UNSIGNED NOT NULL,
  `whats_new_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `prod_id` (`prod_id`),
  KEY `whats_new_id` (`whats_new_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='product and whats new table association';

-- --------------------------------------------------------

--
-- Table structure for table `mst_whats_new_tag`
--

DROP TABLE IF EXISTS `mst_whats_new_tag`;
CREATE TABLE IF NOT EXISTS `mst_whats_new_tag` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `whats_new_id` int UNSIGNED NOT NULL,
  `whats_new_tag_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `whats_new_id` (`whats_new_id`),
  KEY `whats_new_tag_id` (`whats_new_tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='association table for whats new tag and whats new table';

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
  `operation_type_id` smallint UNSIGNED NOT NULL,
  `prev_value` json DEFAULT NULL,
  `new_value` json NOT NULL,
  `operated_by` int UNSIGNED NOT NULL COMMENT 'updated user id',
  `operated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idxlog_type_id` (`operation_type_id`),
  KEY `operated_by` (`operated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='stores every information on changes in database like creation, updating, and deletion';

-- --------------------------------------------------------

--
-- Table structure for table `txn_cust_roundkey`
--

DROP TABLE IF EXISTS `txn_cust_roundkey`;
CREATE TABLE IF NOT EXISTS `txn_cust_roundkey` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `cust_id` int UNSIGNED NOT NULL,
  `round_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'auto generated (dongle id + product id)',
  `prod_id` int UNSIGNED NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `delivery_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `dongle_id` int UNSIGNED NOT NULL,
  `availability_id` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cust_id` (`cust_id`),
  KEY `product_id` (`prod_id`),
  KEY `dongle_id` (`dongle_id`),
  KEY `availability_id` (`availability_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Holds round key information';

-- --------------------------------------------------------

--
-- Table structure for table `txn_firmware_download`
--

DROP TABLE IF EXISTS `txn_firmware_download`;
CREATE TABLE IF NOT EXISTS `txn_firmware_download` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `firmware_id` int UNSIGNED NOT NULL,
  `download_notes_ko` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'browser details',
  `download_notes_en` mediumtext COLLATE utf8mb4_general_ci NOT NULL COMMENT 'browser details',
  `cust_id` int UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `downloaded_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `firmware_id` (`firmware_id`),
  KEY `cust_id` (`cust_id`),
  KEY `firmware_link_id` (`firmware_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='stores firmware download log';

-- --------------------------------------------------------

--
-- Table structure for table `txn_hubspot_ticket`
--

DROP TABLE IF EXISTS `txn_hubspot_ticket`;
CREATE TABLE IF NOT EXISTS `txn_hubspot_ticket` (
  `id` smallint UNSIGNED NOT NULL,
  `cust_id` int UNSIGNED NOT NULL,
  `ticket_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ticket_status_id` smallint UNSIGNED NOT NULL COMMENT 'new, in progress, closed',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ticket_id` (`ticket_id`),
  KEY `ticket_status_id` (`ticket_status_id`),
  KEY `cust_id` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='used for customer support requests and inquiries';

-- --------------------------------------------------------

--
-- Table structure for table `txn_mail_detail`
--

DROP TABLE IF EXISTS `txn_mail_detail`;
CREATE TABLE IF NOT EXISTS `txn_mail_detail` (
  `mail_detail_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `mail_summary_id` int UNSIGNED NOT NULL,
  `mail_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'email id of customer',
  `mail_sent_status_id` smallint UNSIGNED NOT NULL DEFAULT '3' COMMENT 'sent, bounced, in progress(give default as in progress)',
  PRIMARY KEY (`mail_detail_id`),
  KEY `mail_sent_status_id` (`mail_sent_status_id`),
  KEY `mail_summary_id` (`mail_summary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='holds mail id of individual cust';

-- --------------------------------------------------------

--
-- Table structure for table `txn_mail_summary`
--

DROP TABLE IF EXISTS `txn_mail_summary`;
CREATE TABLE IF NOT EXISTS `txn_mail_summary` (
  `mail_summary_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `mail_title_id` smallint UNSIGNED NOT NULL COMMENT 'This field would store a brief title of the mail',
  `mail_grp_name_id` smallint UNSIGNED NOT NULL COMMENT 'KDF_Temp, MD-VIDEO_EN, DETEGO etc',
  `mail_grp_type_id` smallint UNSIGNED NOT NULL COMMENT 'custom, inside, domestic_institution, abroad',
  `mail_template_id` int UNSIGNED NOT NULL,
  `shipping_id` int UNSIGNED NOT NULL,
  `mail_sent_id` int UNSIGNED NOT NULL,
  `send_date_scheduled` datetime DEFAULT CURRENT_TIMESTAMP,
  `mail_summary_status_id` smallint UNSIGNED NOT NULL COMMENT 'Draft, Open, Sent',
  `lang_id` smallint UNSIGNED NOT NULL,
  `email_content_id` smallint UNSIGNED NOT NULL,
  `mail_attachment` blob,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mail_summary_id`),
  KEY `mail_title_id` (`mail_title_id`),
  KEY `mail_grp_id` (`mail_grp_name_id`),
  KEY `mail_template_id` (`mail_template_id`),
  KEY `lang_id` (`lang_id`),
  KEY `email_content_id` (`email_content_id`),
  KEY `mail_grp_type_id` (`mail_grp_type_id`),
  KEY `mail_summary_status_id` (`mail_summary_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='mail sent record';

-- --------------------------------------------------------

--
-- Table structure for table `txn_noti`
--

DROP TABLE IF EXISTS `txn_noti`;
CREATE TABLE IF NOT EXISTS `txn_noti` (
  `noti_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `cust_id` int UNSIGNED NOT NULL,
  `noti_type_id` smallint UNSIGNED NOT NULL COMMENT 'info, warning, alert',
  `noti_message` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `reg_date` datetime NOT NULL,
  `noti_status_id` smallint UNSIGNED NOT NULL COMMENT 'unread, read',
  PRIMARY KEY (`noti_id`),
  KEY `cust_id` (`cust_id`),
  KEY `noti_type_id` (`noti_type_id`),
  KEY `noti_status_id` (`noti_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='to manage notification';

-- --------------------------------------------------------

--
-- Table structure for table `txn_package_download`
--

DROP TABLE IF EXISTS `txn_package_download`;
CREATE TABLE IF NOT EXISTS `txn_package_download` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `package_id` int UNSIGNED NOT NULL,
  `download_notes_ko` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'browser details',
  `download_notes_en` mediumtext COLLATE utf8mb4_general_ci NOT NULL COMMENT 'browser details',
  `cust_id` int UNSIGNED NOT NULL,
  `downlaoded_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `package_id` (`package_id`),
  KEY `cust_id` (`cust_id`),
  KEY `package_url_id` (`package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='stores package download log';

-- --------------------------------------------------------

--
-- Table structure for table `txn_resource_download`
--

DROP TABLE IF EXISTS `txn_resource_download`;
CREATE TABLE IF NOT EXISTS `txn_resource_download` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `resource_id` int UNSIGNED NOT NULL,
  `download_notes_ko` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'browser details',
  `download_notes_en` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'browser details',
  `cust_id` int UNSIGNED NOT NULL,
  `downlaoded_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resource_id` (`resource_id`),
  KEY `cust_id` (`cust_id`),
  KEY `resource_url_id` (`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='stores resource download log of customer';

-- --------------------------------------------------------

--
-- Table structure for table `txn_session`
--

DROP TABLE IF EXISTS `txn_session`;
CREATE TABLE IF NOT EXISTS `txn_session` (
  `cust_id` int UNSIGNED NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `expiry_datetime` datetime DEFAULT NULL,
  `session_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `login_token` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dfp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'device fingerprint',
  `session_login_datetime` datetime NOT NULL,
  `session_logout_datetime` datetime NOT NULL,
  `session_status` bit(1) DEFAULT b'1',
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `login_token` (`login_token`),
  UNIQUE KEY `unique_dfp` (`dfp`),
  KEY `idx_cust_id` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='holds login token and device figure print informations';

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lkp_availability`
--
ALTER TABLE `lkp_availability`
  ADD CONSTRAINT `lkp_availability_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_brand_model`
--
ALTER TABLE `lkp_brand_model`
  ADD CONSTRAINT `lkp_brand_model_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

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
-- Constraints for table `lkp_cust_dateformat`
--
ALTER TABLE `lkp_cust_dateformat`
  ADD CONSTRAINT `lkp_cust_dateformat_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

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
-- Constraints for table `lkp_cust_timezone`
--
ALTER TABLE `lkp_cust_timezone`
  ADD CONSTRAINT `lkp_cust_timezone_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_delivery_type`
--
ALTER TABLE `lkp_delivery_type`
  ADD CONSTRAINT `lkp_delivery_type_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_deployment_type`
--
ALTER TABLE `lkp_deployment_type`
  ADD CONSTRAINT `lkp_deployment_type_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

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
-- Constraints for table `lkp_faq_tag`
--
ALTER TABLE `lkp_faq_tag`
  ADD CONSTRAINT `lkp_faq_tag_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_faq_type`
--
ALTER TABLE `lkp_faq_type`
  ADD CONSTRAINT `lkp_faq_type_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_firmware_brand`
--
ALTER TABLE `lkp_firmware_brand`
  ADD CONSTRAINT `lkp_firmware_brand_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_firmware_os`
--
ALTER TABLE `lkp_firmware_os`
  ADD CONSTRAINT `lkp_firmware_os_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_firmware_stock`
--
ALTER TABLE `lkp_firmware_stock`
  ADD CONSTRAINT `lkp_firmware_stock_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_	guide_type`
--
ALTER TABLE `lkp_	guide_type`
  ADD CONSTRAINT `lkp_	guide_type_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_log_type`
--
ALTER TABLE `lkp_log_type`
  ADD CONSTRAINT `lkp_log_type_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

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
-- Constraints for table `lkp_mail_sent_status`
--
ALTER TABLE `lkp_mail_sent_status`
  ADD CONSTRAINT `lkp_mail_sent_status_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_mail_summary_status`
--
ALTER TABLE `lkp_mail_summary_status`
  ADD CONSTRAINT `lkp_mail_summary_status_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

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
-- Constraints for table `lkp_module_permission`
--
ALTER TABLE `lkp_module_permission`
  ADD CONSTRAINT `lkp_module_permission_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_noti_status`
--
ALTER TABLE `lkp_noti_status`
  ADD CONSTRAINT `lkp_noti_status_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_noti_type`
--
ALTER TABLE `lkp_noti_type`
  ADD CONSTRAINT `lkp_noti_type_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_prod_type`
--
ALTER TABLE `lkp_prod_type`
  ADD CONSTRAINT `lkp_prod_type_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_region_sub_type`
--
ALTER TABLE `lkp_region_sub_type`
  ADD CONSTRAINT `lkp_region_sub_type_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_region_type`
--
ALTER TABLE `lkp_region_type`
  ADD CONSTRAINT `lkp_region_type_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

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
-- Constraints for table `lkp_ticket_status`
--
ALTER TABLE `lkp_ticket_status`
  ADD CONSTRAINT `lkp_ticket_status_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `lkp_whats_new_tag`
--
ALTER TABLE `lkp_whats_new_tag`
  ADD CONSTRAINT `lkp_whats_new_tag_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_admin_user_guide`
--
ALTER TABLE `mst_admin_user_guide`
  ADD CONSTRAINT `mst_admin_user_guide_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_admin_user_guide_ibfk_2` FOREIGN KEY (`guide_type_id`) REFERENCES `lkp_	guide_type` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_cust`
--
ALTER TABLE `mst_cust`
  ADD CONSTRAINT `mst_cust_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `lkp_role` (`id`),
  ADD CONSTRAINT `mst_cust_ibfk_2` FOREIGN KEY (`cust_cate_id`) REFERENCES `lkp_cust_cate` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_cust_ibfk_4` FOREIGN KEY (`country_id`) REFERENCES `lkp_country` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_cust_ibfk_5` FOREIGN KEY (`cust_grp_id`) REFERENCES `lkp_cust_grp` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_cust_ibfk_6` FOREIGN KEY (`cust_status_id`) REFERENCES `lkp_cust_status` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_cust_ibfk_7` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_cust_ibfk_8` FOREIGN KEY (`cust_dateformat_id`) REFERENCES `lkp_cust_dateformat` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_cust_ibfk_9` FOREIGN KEY (`cust_timezone_id`) REFERENCES `lkp_cust_timezone` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_dongle_key`
--
ALTER TABLE `mst_dongle_key`
  ADD CONSTRAINT `mst_dongle_key_ibfk_1` FOREIGN KEY (`dongle_type_id`) REFERENCES `lkp_dongle_type` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_dongle_key_ibfk_2` FOREIGN KEY (`dongle_deal_classification_id`) REFERENCES `lkp_dongle_deal_classification` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_dongle_key_ibfk_4` FOREIGN KEY (`availability_id`) REFERENCES `lkp_availability` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_dongle_key_ibfk_6` FOREIGN KEY (`serial_type_id`) REFERENCES `lkp_serial_type` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_dongle_key_ibfk_7` FOREIGN KEY (`dongle_did`) REFERENCES `mst_dongle_key_dlivery` (`dongle_did`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_dongle_key_dlivery`
--
ALTER TABLE `mst_dongle_key_dlivery`
  ADD CONSTRAINT `mst_dongle_key_dlivery_ibfk_1` FOREIGN KEY (`availability_id`) REFERENCES `lkp_availability` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_dongle_key_dlivery_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `mst_cust` (`cust_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_dongle_key_dlivery_ibfk_3` FOREIGN KEY (`delivery_type_id`) REFERENCES `lkp_delivery_type` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_faq`
--
ALTER TABLE `mst_faq`
  ADD CONSTRAINT `mst_faq_ibfk_1` FOREIGN KEY (`faq_type_id`) REFERENCES `lkp_faq_type` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_faq_ibfk_3` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_faq_content`
--
ALTER TABLE `mst_faq_content`
  ADD CONSTRAINT `mst_faq_content_ibfk_1` FOREIGN KEY (`faq_id`) REFERENCES `mst_faq` (`faq_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_faq_content_ibfk_2` FOREIGN KEY (`faq_content_id`) REFERENCES `lkp_faq_content` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_faq_prod`
--
ALTER TABLE `mst_faq_prod`
  ADD CONSTRAINT `mst_faq_prod_ibfk_1` FOREIGN KEY (`faq_id`) REFERENCES `mst_faq` (`faq_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_faq_prod_ibfk_2` FOREIGN KEY (`prod_id`) REFERENCES `mst_prod` (`prod_id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_faq_tag`
--
ALTER TABLE `mst_faq_tag`
  ADD CONSTRAINT `mst_faq_tag_ibfk_1` FOREIGN KEY (`faq_id`) REFERENCES `mst_faq` (`faq_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_faq_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `lkp_faq_tag` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_firmware`
--
ALTER TABLE `mst_firmware`
  ADD CONSTRAINT `mst_firmware_ibfk_1` FOREIGN KEY (`firmware_stock_id`) REFERENCES `lkp_firmware_stock` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_firmware_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `mst_prod` (`prod_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_firmware_ibfk_4` FOREIGN KEY (`firmware_os_id`) REFERENCES `lkp_firmware_os` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_firmware_ibfk_5` FOREIGN KEY (`firmware_brand_id`) REFERENCES `lkp_firmware_brand` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_firmware_ibfk_6` FOREIGN KEY (`brand_model_id`) REFERENCES `lkp_brand_model` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_firmware_ibfk_7` FOREIGN KEY (`availability_id`) REFERENCES `lkp_availability` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_mail_template`
--
ALTER TABLE `mst_mail_template`
  ADD CONSTRAINT `mst_mail_template_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_mail_template_ibfk_2` FOREIGN KEY (`mail_classification_id`) REFERENCES `lkp_mail_classification` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_package`
--
ALTER TABLE `mst_package`
  ADD CONSTRAINT `mst_package_ibfk_1` FOREIGN KEY (`availability_id`) REFERENCES `lkp_availability` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_package_ibfk_2` FOREIGN KEY (`scope_of_disclosure_id`) REFERENCES `lkp_scope_of_disclosure` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_package_ibfk_5` FOREIGN KEY (`deployment_type_id`) REFERENCES `lkp_deployment_type` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_package_ibfk_6` FOREIGN KEY (`prod_id`) REFERENCES `mst_prod` (`prod_id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_package_files`
--
ALTER TABLE `mst_package_files`
  ADD CONSTRAINT `mst_package_files_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `mst_package` (`package_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_package_files_ibfk_3` FOREIGN KEY (`availability_id`) REFERENCES `lkp_availability` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_package_files_ibfk_4` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_package_patch`
--
ALTER TABLE `mst_package_patch`
  ADD CONSTRAINT `mst_package_patch_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `mst_package` (`package_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_package_patch_ibfk_2` FOREIGN KEY (`availability_id`) REFERENCES `lkp_availability` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_package_release_notes`
--
ALTER TABLE `mst_package_release_notes`
  ADD CONSTRAINT `mst_package_release_notes_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `mst_package` (`package_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_package_release_notes_ibfk_2` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_prod`
--
ALTER TABLE `mst_prod`
  ADD CONSTRAINT `fk_region_sub_type` FOREIGN KEY (`region_sub_type_id`) REFERENCES `lkp_region_sub_type` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_prod_ibfk_2` FOREIGN KEY (`prod_type_id`) REFERENCES `lkp_prod_type` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_prod_ibfk_3` FOREIGN KEY (`availability_id`) REFERENCES `lkp_availability` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_prod_ibfk_4` FOREIGN KEY (`region_type_id`) REFERENCES `lkp_region_type` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_prod_lang`
--
ALTER TABLE `mst_prod_lang`
  ADD CONSTRAINT `mst_prod_lang_ibfk_1` FOREIGN KEY (`prod_id`) REFERENCES `mst_prod` (`prod_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_prod_lang_ibfk_2` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_prod_resource`
--
ALTER TABLE `mst_prod_resource`
  ADD CONSTRAINT `mst_prod_resource_ibfk_1` FOREIGN KEY (`resource_id`) REFERENCES `mst_resource` (`resource_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_prod_resource_ibfk_2` FOREIGN KEY (`prod_id`) REFERENCES `mst_prod` (`prod_id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_resource`
--
ALTER TABLE `mst_resource`
  ADD CONSTRAINT `mst_resource_ibfk_3` FOREIGN KEY (`resource_type_id`) REFERENCES `lkp_resource_type` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_resource_ibfk_4` FOREIGN KEY (`availability_id`) REFERENCES `lkp_availability` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_resource_ibfk_5` FOREIGN KEY (`resource_file_name_id`) REFERENCES `lkp_resource_file_name` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_resource_ibfk_6` FOREIGN KEY (`resource_info_id`) REFERENCES `lkp_resource_info` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_role_module`
--
ALTER TABLE `mst_role_module`
  ADD CONSTRAINT `mst_role_module_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `lkp_module` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_role_module_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `lkp_role` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_role_module_ibfk_3` FOREIGN KEY (`module_permission_id`) REFERENCES `lkp_module_permission` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_whats_new`
--
ALTER TABLE `mst_whats_new`
  ADD CONSTRAINT `mst_whats_new_ibfk_4` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_whats_new_prod`
--
ALTER TABLE `mst_whats_new_prod`
  ADD CONSTRAINT `mst_whats_new_prod_ibfk_1` FOREIGN KEY (`whats_new_id`) REFERENCES `mst_whats_new` (`whats_new_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_whats_new_prod_ibfk_2` FOREIGN KEY (`prod_id`) REFERENCES `mst_prod` (`prod_id`) ON DELETE RESTRICT;

--
-- Constraints for table `mst_whats_new_tag`
--
ALTER TABLE `mst_whats_new_tag`
  ADD CONSTRAINT `mst_whats_new_tag_ibfk_1` FOREIGN KEY (`whats_new_id`) REFERENCES `mst_whats_new` (`whats_new_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `mst_whats_new_tag_ibfk_2` FOREIGN KEY (`whats_new_tag_id`) REFERENCES `lkp_whats_new_tag` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_audit_trial`
--
ALTER TABLE `txn_audit_trial`
  ADD CONSTRAINT `txn_audit_trial_ibfk_1` FOREIGN KEY (`operation_type_id`) REFERENCES `lkp_log_type` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_audit_trial_ibfk_2` FOREIGN KEY (`operated_by`) REFERENCES `mst_cust` (`cust_id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_cust_roundkey`
--
ALTER TABLE `txn_cust_roundkey`
  ADD CONSTRAINT `txn_cust_roundkey_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `mst_cust` (`cust_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_cust_roundkey_ibfk_2` FOREIGN KEY (`prod_id`) REFERENCES `mst_prod` (`prod_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_cust_roundkey_ibfk_3` FOREIGN KEY (`dongle_id`) REFERENCES `mst_dongle_key` (`dongle_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_cust_roundkey_ibfk_4` FOREIGN KEY (`availability_id`) REFERENCES `lkp_availability` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_firmware_download`
--
ALTER TABLE `txn_firmware_download`
  ADD CONSTRAINT `txn_firmware_download_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `mst_cust` (`cust_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_firmware_download_ibfk_3` FOREIGN KEY (`firmware_id`) REFERENCES `mst_firmware` (`firmware_id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_hubspot_ticket`
--
ALTER TABLE `txn_hubspot_ticket`
  ADD CONSTRAINT `txn_hubspot_ticket_ibfk_1` FOREIGN KEY (`ticket_status_id`) REFERENCES `lkp_ticket_status` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_hubspot_ticket_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `mst_cust` (`cust_id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_mail_detail`
--
ALTER TABLE `txn_mail_detail`
  ADD CONSTRAINT `txn_mail_detail_ibfk_1` FOREIGN KEY (`mail_summary_id`) REFERENCES `txn_mail_summary` (`mail_summary_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_mail_detail_ibfk_2` FOREIGN KEY (`mail_sent_status_id`) REFERENCES `lkp_mail_sent_status` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_mail_summary`
--
ALTER TABLE `txn_mail_summary`
  ADD CONSTRAINT `txn_mail_summary_ibfk_1` FOREIGN KEY (`mail_grp_type_id`) REFERENCES `lkp_mail_grp_type` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_mail_summary_ibfk_3` FOREIGN KEY (`mail_grp_name_id`) REFERENCES `lkp_mail_grp_name` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_mail_summary_ibfk_4` FOREIGN KEY (`mail_title_id`) REFERENCES `lkp_mail_title` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_mail_summary_ibfk_5` FOREIGN KEY (`mail_template_id`) REFERENCES `mst_mail_template` (`mail_template_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_mail_summary_ibfk_6` FOREIGN KEY (`lang_id`) REFERENCES `lkp_lang` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_mail_summary_ibfk_7` FOREIGN KEY (`mail_summary_status_id`) REFERENCES `lkp_mail_summary_status` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_noti`
--
ALTER TABLE `txn_noti`
  ADD CONSTRAINT `txn_noti_ibfk_1` FOREIGN KEY (`noti_status_id`) REFERENCES `lkp_noti_status` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_noti_ibfk_2` FOREIGN KEY (`noti_type_id`) REFERENCES `lkp_noti_type` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_noti_ibfk_3` FOREIGN KEY (`cust_id`) REFERENCES `mst_cust` (`cust_id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_package_download`
--
ALTER TABLE `txn_package_download`
  ADD CONSTRAINT `txn_package_download_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `mst_cust` (`cust_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_package_download_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `mst_package` (`package_id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_resource_download`
--
ALTER TABLE `txn_resource_download`
  ADD CONSTRAINT `txn_resource_download_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `mst_cust` (`cust_id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `txn_resource_download_ibfk_3` FOREIGN KEY (`resource_id`) REFERENCES `mst_resource` (`resource_id`) ON DELETE RESTRICT;

--
-- Constraints for table `txn_session`
--
ALTER TABLE `txn_session`
  ADD CONSTRAINT `txn_session_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `mst_cust` (`cust_id`) ON DELETE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
