/*
Navicat MySQL Data Transfer

Source Server         : licensing.tklapp.com
Source Server Version : 50553
Source Host           : licensing.tklapp.com:3306
Source Database       : master_data

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2016-12-15 16:14:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for authorised_fishing_areas
-- ----------------------------
DROP TABLE IF EXISTS `authorised_fishing_areas`;
CREATE TABLE `authorised_fishing_areas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Code` char(2) NOT NULL,
  `Description` varchar(180) DEFAULT NULL,
  `Color` varchar(60) DEFAULT NULL,
  `Area_Type` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_fr` varchar(255) DEFAULT NULL,
  `ISO3166-1-Alpha-2` char(2) DEFAULT NULL,
  `ISO3166-1-Alpha-3` char(3) DEFAULT NULL,
  `ISO3166-1-numeric` int(11) DEFAULT NULL,
  `ITU` varchar(255) DEFAULT NULL,
  `MARC` varchar(255) DEFAULT NULL,
  `WMO` varchar(255) DEFAULT NULL,
  `DS` varchar(255) DEFAULT NULL,
  `Dial` varchar(255) DEFAULT NULL,
  `FIFA` varchar(255) DEFAULT NULL,
  `FIPS` varchar(255) DEFAULT NULL,
  `GAUL` double DEFAULT NULL,
  `IOC` varchar(255) DEFAULT NULL,
  `currency_alphabetic_code` varchar(255) DEFAULT NULL,
  `currency_country_name` varchar(255) DEFAULT NULL,
  `currency_minor_unit` double DEFAULT NULL,
  `currency_name` varchar(255) DEFAULT NULL,
  `currency_numeric_code` double DEFAULT NULL,
  `is_independent` varchar(255) DEFAULT NULL,
  `ffa_member` varchar(120) DEFAULT NULL,
  `ffa_member_fisheries_authority` varchar(140) DEFAULT NULL,
  `ffa_member_fisheries_authority_abrv` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `currency_alphabetic_code` (`currency_alphabetic_code`),
  KEY `currency_numeric_code` (`currency_numeric_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for entity
-- ----------------------------
DROP TABLE IF EXISTS `entity`;
CREATE TABLE `entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type` varchar(120) NOT NULL,
  `entity_name` varchar(80) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `identification_number` int(11) DEFAULT NULL,
  `identification_number_type` int(11) DEFAULT NULL,
  `identification_upload_copy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for entity_identification_type
-- ----------------------------
DROP TABLE IF EXISTS `entity_identification_type`;
CREATE TABLE `entity_identification_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identification_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for entity_type
-- ----------------------------
DROP TABLE IF EXISTS `entity_type`;
CREATE TABLE `entity_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type` varchar(80) NOT NULL,
  `entity_type_code` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fee_type
-- ----------------------------
DROP TABLE IF EXISTS `fee_type`;
CREATE TABLE `fee_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fee_type` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for gear_type
-- ----------------------------
DROP TABLE IF EXISTS `gear_type`;
CREATE TABLE `gear_type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Key` double DEFAULT NULL,
  `IDENTIFIER` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `ISSCFG_NAME` varchar(255) DEFAULT NULL,
  `ELOG_CODE` varchar(255) DEFAULT NULL,
  `ELOG_NAME` varchar(255) DEFAULT NULL,
  `IMS_NAME` varchar(255) DEFAULT NULL,
  `IMS_vty_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CODE` (`CODE`),
  KEY `ELOG_CODE` (`ELOG_CODE`),
  KEY `IDENTIFIER` (`IDENTIFIER`),
  KEY `Key` (`Key`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for gear_type_attribute
-- ----------------------------
DROP TABLE IF EXISTS `gear_type_attribute`;
CREATE TABLE `gear_type_attribute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gear_type_id` int(11) DEFAULT NULL,
  `gear_type_attribute` varchar(255) NOT NULL,
  `gear_type_attribute_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ports
-- ----------------------------
DROP TABLE IF EXISTS `ports`;
CREATE TABLE `ports` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Country` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `NameWoDiacritics` varchar(255) DEFAULT NULL,
  `Subdivision` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Function` varchar(255) DEFAULT NULL,
  `Date` double DEFAULT NULL,
  `IATA` varchar(255) DEFAULT NULL,
  `Coordinates` varchar(255) DEFAULT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  `Enabled` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=102691 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for source
-- ----------------------------
DROP TABLE IF EXISTS `source`;
CREATE TABLE `source` (
  `source_id` smallint(6) NOT NULL,
  `group_name` char(3) NOT NULL,
  `type_name` varchar(20) NOT NULL,
  `details` varchar(255) NOT NULL,
  `cty_code` char(2) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for species
-- ----------------------------
DROP TABLE IF EXISTS `species`;
CREATE TABLE `species` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ISSCAAP` varchar(255) DEFAULT NULL,
  `TAXOCODE` varchar(255) DEFAULT NULL,
  `3A_CODE` varchar(255) DEFAULT NULL,
  `Scientific_name` varchar(255) DEFAULT NULL,
  `English_name` varchar(255) DEFAULT NULL,
  `French_name` varchar(255) DEFAULT NULL,
  `Spanish_name` varchar(255) DEFAULT NULL,
  `Arabic_name` varchar(255) DEFAULT NULL,
  `Chinese_name` varchar(255) DEFAULT NULL,
  `Russian_name` varchar(255) DEFAULT NULL,
  `Author` varchar(255) DEFAULT NULL,
  `Family` varchar(255) DEFAULT NULL,
  `Order` varchar(255) DEFAULT NULL,
  `Stats_data` varchar(255) DEFAULT NULL,
  `IMS_NAME` varchar(255) DEFAULT NULL,
  `Enabled` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `3A_CODE` (`3A_CODE`),
  KEY `TAXOCODE` (`TAXOCODE`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for species_aquatic_animals_and_plants
-- ----------------------------
DROP TABLE IF EXISTS `species_aquatic_animals_and_plants`;
CREATE TABLE `species_aquatic_animals_and_plants` (
  `Code` varchar(255) NOT NULL,
  `Species` varchar(255) DEFAULT NULL,
  `Species Group` varchar(255) DEFAULT NULL,
  `Order` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Status` varchar(64) NOT NULL,
  `Status_Code` char(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for storage_method
-- ----------------------------
DROP TABLE IF EXISTS `storage_method`;
CREATE TABLE `storage_method` (
  `ID` int(11) NOT NULL,
  `Storage_Methods` varchar(255) DEFAULT NULL,
  `Storage_Code` varchar(255) DEFAULT NULL,
  `Bait` varchar(255) DEFAULT NULL,
  `Enabled` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Storage_Code` (`Storage_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for units_of_measurement
-- ----------------------------
DROP TABLE IF EXISTS `units_of_measurement`;
CREATE TABLE `units_of_measurement` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `kind_of_quantity` varchar(120) DEFAULT NULL,
  `print` varchar(10) DEFAULT NULL,
  `cs` char(10) DEFAULT NULL,
  `ci` varchar(10) DEFAULT NULL,
  `M` char(5) DEFAULT NULL,
  `definition_value` varchar(20) DEFAULT NULL,
  `definition_unit` varchar(20) DEFAULT NULL,
  `IMS_name` varchar(60) DEFAULT NULL,
  `IMS_code` char(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for vessel_hull_materials
-- ----------------------------
DROP TABLE IF EXISTS `vessel_hull_materials`;
CREATE TABLE `vessel_hull_materials` (
  `material_id` int(11) NOT NULL,
  `material_name` varchar(50) NOT NULL,
  `material_code` varchar(10) DEFAULT NULL,
  `sort_order` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`material_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for vessel_type
-- ----------------------------
DROP TABLE IF EXISTS `vessel_type`;
CREATE TABLE `vessel_type` (
  `ID` int(11) NOT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `Vessel Type` varchar(255) DEFAULT NULL,
  `Vessel Sub Type` varchar(255) DEFAULT NULL,
  `Standard Abbreviation` varchar(255) DEFAULT NULL,
  `IMS_Friendly` varchar(255) DEFAULT NULL,
  `Enabled` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- View structure for authorised_fishing_areas_eez
-- ----------------------------
DROP VIEW IF EXISTS `authorised_fishing_areas_eez`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `authorised_fishing_areas_eez` AS select `authorised_fishing_areas`.`id` AS `id`,`authorised_fishing_areas`.`Code` AS `Code`,`authorised_fishing_areas`.`Description` AS `Description`,`authorised_fishing_areas`.`Color` AS `Color`,`authorised_fishing_areas`.`Area_Type` AS `Area_Type` from `authorised_fishing_areas` where (`authorised_fishing_areas`.`Area_Type` = 'EZ') ;

-- ----------------------------
-- View structure for authorised_fishing_areas_high_seas
-- ----------------------------
DROP VIEW IF EXISTS `authorised_fishing_areas_high_seas`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `authorised_fishing_areas_high_seas` AS select `authorised_fishing_areas`.`id` AS `id`,`authorised_fishing_areas`.`Code` AS `Code`,`authorised_fishing_areas`.`Description` AS `Description`,`authorised_fishing_areas`.`Color` AS `Color`,`authorised_fishing_areas`.`Area_Type` AS `Area_Type` from `authorised_fishing_areas` where (`authorised_fishing_areas`.`Area_Type` = 'HS') ;

-- ----------------------------
-- View structure for currency
-- ----------------------------
DROP VIEW IF EXISTS `currency`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `currency` AS select distinct `countries`.`currency_alphabetic_code` AS `currency_alphabetic_code`,`countries`.`ISO3166-1-numeric` AS `ISO3166-1-numeric` from `countries` where (`countries`.`currency_alphabetic_code` <> '') group by `countries`.`currency_alphabetic_code` ;

-- ----------------------------
-- View structure for db_schema
-- ----------------------------
DROP VIEW IF EXISTS `db_schema`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `db_schema` AS select distinct `information_schema`.`COLUMNS`.`TABLE_SCHEMA` AS `TABLE_SCHEMA` from `INFORMATION_SCHEMA`.`COLUMNS` where (`information_schema`.`COLUMNS`.`TABLE_SCHEMA` = 'master_data') ;

-- ----------------------------
-- View structure for engine_power
-- ----------------------------
DROP VIEW IF EXISTS `engine_power`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `engine_power` AS select `units_of_measurement`.`id` AS `id`,`units_of_measurement`.`name` AS `name`,`units_of_measurement`.`kind_of_quantity` AS `kind_of_quantity`,`units_of_measurement`.`print` AS `print`,`units_of_measurement`.`cs` AS `cs`,`units_of_measurement`.`ci` AS `ci`,`units_of_measurement`.`M` AS `M`,`units_of_measurement`.`definition_value` AS `definition_value`,`units_of_measurement`.`definition_unit` AS `definition_unit`,`units_of_measurement`.`IMS_name` AS `IMS_name`,`units_of_measurement`.`IMS_code` AS `IMS_code` from `units_of_measurement` where ((`units_of_measurement`.`kind_of_quantity` = 'power') or (`units_of_measurement`.`kind_of_quantity` = 'pressure')) ;

-- ----------------------------
-- View structure for ffa_members
-- ----------------------------
DROP VIEW IF EXISTS `ffa_members`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `ffa_members` AS select `countries`.`ID` AS `ID`,`countries`.`name` AS `name`,`countries`.`name_fr` AS `name_fr`,`countries`.`ISO3166-1-Alpha-2` AS `ISO3166-1-Alpha-2`,`countries`.`ISO3166-1-Alpha-3` AS `ISO3166-1-Alpha-3`,`countries`.`ISO3166-1-numeric` AS `ISO3166-1-numeric`,`countries`.`ITU` AS `ITU`,`countries`.`MARC` AS `MARC`,`countries`.`WMO` AS `WMO`,`countries`.`DS` AS `DS`,`countries`.`Dial` AS `Dial`,`countries`.`FIFA` AS `FIFA`,`countries`.`FIPS` AS `FIPS`,`countries`.`GAUL` AS `GAUL`,`countries`.`IOC` AS `IOC`,`countries`.`currency_alphabetic_code` AS `currency_alphabetic_code`,`countries`.`currency_country_name` AS `currency_country_name`,`countries`.`currency_minor_unit` AS `currency_minor_unit`,`countries`.`currency_name` AS `currency_name`,`countries`.`currency_numeric_code` AS `currency_numeric_code`,`countries`.`is_independent` AS `is_independent`,`countries`.`ffa_member` AS `ffa_member`,`countries`.`ffa_member_fisheries_authority` AS `ffa_member_fisheries_authority`,`countries`.`ffa_member_fisheries_authority_abrv` AS `ffa_member_fisheries_authority_abrv` from `countries` where (`countries`.`ffa_member` <> '') ;

-- ----------------------------
-- View structure for master_data_list
-- ----------------------------
DROP VIEW IF EXISTS `master_data_list`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `master_data_list` AS select `information_schema`.`COLUMNS`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`COLUMNS`.`TABLE_NAME` AS `TABLE_NAME`,`information_schema`.`COLUMNS`.`COLUMN_NAME` AS `COLUMN_NAME`,`information_schema`.`COLUMNS`.`DATA_TYPE` AS `DATA_TYPE`,`information_schema`.`COLUMNS`.`NUMERIC_SCALE` AS `NUMERIC_SCALE` from `INFORMATION_SCHEMA`.`COLUMNS` where (`information_schema`.`COLUMNS`.`TABLE_SCHEMA` = 'master_data') ;

-- ----------------------------
-- View structure for species_snapper
-- ----------------------------
DROP VIEW IF EXISTS `species_snapper`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `species_snapper` AS select `species`.`ID` AS `ID`,`species`.`ISSCAAP` AS `ISSCAAP`,`species`.`TAXOCODE` AS `TAXOCODE`,`species`.`3A_CODE` AS `3A_CODE`,`species`.`Scientific_name` AS `Scientific_name`,`species`.`English_name` AS `English_name`,`species`.`Family` AS `Family`,`species`.`Author` AS `Author`,`species`.`Order` AS `Order`,`species`.`Stats_data` AS `Stats_data`,`species`.`IMS_NAME` AS `IMS_NAME` from `species` where (`species`.`Family` like '%Lutjanidae%') ;

-- ----------------------------
-- View structure for species_tuna
-- ----------------------------
DROP VIEW IF EXISTS `species_tuna`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `species_tuna` AS select `species`.`ID` AS `ID`,`species`.`ISSCAAP` AS `ISSCAAP`,`species`.`TAXOCODE` AS `TAXOCODE`,`species`.`3A_CODE` AS `3A_CODE`,`species`.`Scientific_name` AS `Scientific_name`,`species`.`English_name` AS `English_name`,`species`.`Family` AS `Family`,`species`.`Author` AS `Author`,`species`.`Order` AS `Order`,`species`.`Stats_data` AS `Stats_data`,`species`.`IMS_NAME` AS `IMS_NAME` from `species` where (`species`.`Family` like '%Scombridae%') ;
SET FOREIGN_KEY_CHECKS=1;
