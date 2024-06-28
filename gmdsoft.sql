-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 28, 2024 at 07:37 AM
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
-- Database: `gmdsoft`
--

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
-- Table structure for table `tbl_module`
--

DROP TABLE IF EXISTS `tbl_module`;
CREATE TABLE IF NOT EXISTS `tbl_module` (
  `m_id` int NOT NULL AUTO_INCREMENT,
  `module` varchar(50) NOT NULL,
  PRIMARY KEY (`m_id`),
  UNIQUE KEY `unique_module` (`module`)
) ;

--
-- Dumping data for table `tbl_module`
--

INSERT INTO `tbl_module` (`m_id`, `module`) VALUES
(2, 'Email Management'),
(3, 'Mail Template Management'),
(1, 'Package Management');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package`
--

DROP TABLE IF EXISTS `tbl_package`;
CREATE TABLE IF NOT EXISTS `tbl_package` (
  `package_version` varchar(255) DEFAULT NULL,
  `revision` bigint DEFAULT NULL,
  `deployment_type` bit(1) DEFAULT NULL,
  `scope_of_disclosure` varchar(255) DEFAULT NULL,
  `availability` enum('Not available','In stock') DEFAULT NULL,
  `package_files` varchar(255) DEFAULT NULL,
  `package_password` varchar(255) DEFAULT NULL,
  `package_hash` varchar(255) DEFAULT NULL,
  `patch_files` varchar(255) DEFAULT NULL,
  `patch_version` varchar(255) DEFAULT NULL,
  `patch_hash` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_deploy`
--

DROP TABLE IF EXISTS `tbl_package_deploy`;
CREATE TABLE IF NOT EXISTS `tbl_package_deploy` (
  `deployid` bigint NOT NULL AUTO_INCREMENT COMMENT '배포ID',
  `deployscope` bit(1) DEFAULT NULL COMMENT '배포 공개범위(연구소공개, 전체공개)',
  `packagefile` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '패키지파일명(.확장자)',
  `patchversion` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '패치버전',
  `pgmcode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '제품코드',
  `pgmname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '제품이름',
  `regdate` datetime DEFAULT NULL COMMENT '등록일',
  `reguserid` bigint DEFAULT NULL COMMENT '등록자ID',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '비고',
  `revision` bigint DEFAULT NULL COMMENT '배포 SVN리비전',
  `senddate` datetime DEFAULT NULL COMMENT '발송일',
  `sendid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '발송ID',
  `seq` decimal(25,0) DEFAULT NULL,
  `deploytype` bit(1) DEFAULT NULL COMMENT '패키지 배포구분(정식, 임시)',
  `updatedate` datetime DEFAULT NULL COMMENT '수정일',
  `updateuserid` bigint DEFAULT NULL COMMENT '수정자ID',
  `useyn` bit(1) NOT NULL DEFAULT b'1' COMMENT '사용 여부',
  `packageversion` varchar(255) DEFAULT NULL COMMENT '패키지 버전',
  `packagehash` varchar(255) DEFAULT NULL COMMENT '패키지 해쉬값',
  `patchhash` varchar(255) DEFAULT NULL COMMENT '패치 해쉬값',
  `patchfile` varchar(255) DEFAULT NULL COMMENT '패치파일명',
  `packagepasswd` varchar(255) DEFAULT NULL COMMENT '패키지 비밀번호',
  `deploydate` datetime DEFAULT NULL COMMENT '배포일',
  PRIMARY KEY (`deployid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_deploy_info`
--

DROP TABLE IF EXISTS `tbl_package_deploy_info`;
CREATE TABLE IF NOT EXISTS `tbl_package_deploy_info` (
  `infoid` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `locale` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '지역',
  `strid` varchar(255) DEFAULT 'strid' COMMENT '패키지ID',
  `newapp` longtext COMMENT '신규 어플',
  `updateapp` longtext COMMENT '개선된 어플',
  `fixbug` longtext COMMENT '수정된 버그 내용',
  `etc` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '기타',
  `updatefunc` longtext COMMENT '개선 기능',
  `newmodel` longtext COMMENT '신규 모델',
  `updatemodel` longtext COMMENT '수정된 모델',
  `msg` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '내용',
  `deployid` bigint DEFAULT NULL COMMENT '배포ID',
  `regdate` datetime DEFAULT NULL COMMENT '등록일',
  `reguserid` bigint DEFAULT NULL COMMENT '등록자ID',
  `updatedate` datetime DEFAULT NULL COMMENT '수정일',
  `updateuserid` bigint DEFAULT NULL COMMENT '수정자ID',
  `newfunc` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '새 기능',
  PRIMARY KEY (`infoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_deploy_link`
--

DROP TABLE IF EXISTS `tbl_package_deploy_link`;
CREATE TABLE IF NOT EXISTS `tbl_package_deploy_link` (
  `linkid` bigint NOT NULL AUTO_INCREMENT,
  `lname_en` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `lname_kr` varchar(255) DEFAULT NULL,
  `lurl` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `deployid` bigint DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `reguserid` bigint DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  `updateuserid` bigint DEFAULT NULL,
  PRIMARY KEY (`linkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_type`
--

DROP TABLE IF EXISTS `tbl_product_type`;
CREATE TABLE IF NOT EXISTS `tbl_product_type` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `product_type` varchar(50) NOT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `product_type` (`product_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='holds product types';

--
-- Dumping data for table `tbl_product_type`
--

INSERT INTO `tbl_product_type` (`pid`, `product_type`) VALUES
(1, 'domestic'),
(2, 'global'),
(3, 'oem domestic'),
(4, 'oem global');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;
CREATE TABLE IF NOT EXISTS `tbl_roles` (
  `role_id` int NOT NULL,
  `role` varchar(50) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `uk_role` (`role`)
) ;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`role_id`, `role`, `remark`) VALUES
(1, 'qa', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role_module`
--

DROP TABLE IF EXISTS `tbl_role_module`;
CREATE TABLE IF NOT EXISTS `tbl_role_module` (
  `role_id` int NOT NULL,
  `m_id` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `f_id` (`m_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_role_module`
--

INSERT INTO `tbl_role_module` (`role_id`, `m_id`, `id`) VALUES
(1, 1, 1),
(1, 2, 2),
(1, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE IF NOT EXISTS `tbl_users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pri_email` varchar(13) NOT NULL,
  `sec_email` varchar(50) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `role_id` int NOT NULL,
  `remark` text,
  `pri_phone` varchar(13) NOT NULL,
  `sec_phone` varchar(13) DEFAULT NULL,
  `contact` varchar(13) NOT NULL,
  `organization` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `country` varchar(50) DEFAULT NULL,
  `license_id` int DEFAULT NULL,
  `dongle_id` int DEFAULT NULL,
  `cust_status` tinyint(1) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `notification` text,
  `pid` int DEFAULT NULL,
  `reg_date` datetime NOT NULL,
  `group_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `unique_pri_email` (`pri_email`),
  KEY `user_id` (`user_id`)
) ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `name`, `pri_email`, `sec_email`, `regdate`, `role_id`, `remark`, `pri_phone`, `sec_phone`, `contact`, `organization`, `category`, `country`, `license_id`, `dongle_id`, `cust_status`, `status`, `notification`, `pid`, `reg_date`, `group_name`) VALUES
(1, 'sanjan', 'pri@gmail.com', 'sec@gmail.com', '0000-00-00 00:00:00', 1, 'nothing', '1234567892', NULL, '8976547892', '', '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_role_module`
--
ALTER TABLE `tbl_role_module`
  ADD CONSTRAINT `tbl_role_module_ibfk_1` FOREIGN KEY (`m_id`) REFERENCES `tbl_module` (`m_id`),
  ADD CONSTRAINT `tbl_role_module_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `tbl_roles` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
