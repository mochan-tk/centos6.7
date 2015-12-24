-- MySQL dump 10.13  Distrib 5.6.26, for Linux (x86_64)
--
-- Host: localhost    Database: mysql
-- ------------------------------------------------------
-- Server version	5.6.26-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `innodb_index_stats`
--

DROP TABLE IF EXISTS `innodb_index_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `innodb_index_stats` (
  `database_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `index_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stat_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `stat_value` bigint(20) unsigned NOT NULL,
  `sample_size` bigint(20) unsigned DEFAULT NULL,
  `stat_description` varchar(1024) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`database_name`,`table_name`,`index_name`,`stat_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `innodb_index_stats`
--

LOCK TABLES `innodb_index_stats` WRITE;
/*!40000 ALTER TABLE `innodb_index_stats` DISABLE KEYS */;
INSERT INTO `innodb_index_stats` VALUES ('sakila','actor','PRIMARY','2015-12-21 08:56:04','n_diff_pfx01',200,1,'actor_id'),('sakila','actor','PRIMARY','2015-12-21 08:56:04','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','actor','PRIMARY','2015-12-21 08:56:04','size',1,NULL,'Number of pages in the index'),('sakila','actor','idx_actor_last_name','2015-12-21 08:56:04','n_diff_pfx01',121,1,'last_name'),('sakila','actor','idx_actor_last_name','2015-12-21 08:56:04','n_diff_pfx02',200,1,'last_name,actor_id'),('sakila','actor','idx_actor_last_name','2015-12-21 08:56:04','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','actor','idx_actor_last_name','2015-12-21 08:56:04','size',1,NULL,'Number of pages in the index'),('sakila','address','PRIMARY','2015-12-21 08:55:03','n_diff_pfx01',603,4,'address_id'),('sakila','address','PRIMARY','2015-12-21 08:55:03','n_leaf_pages',4,NULL,'Number of leaf pages in the index'),('sakila','address','PRIMARY','2015-12-21 08:55:03','size',5,NULL,'Number of pages in the index'),('sakila','address','idx_fk_city_id','2015-12-21 08:55:03','n_diff_pfx01',599,1,'city_id'),('sakila','address','idx_fk_city_id','2015-12-21 08:55:03','n_diff_pfx02',603,1,'city_id,address_id'),('sakila','address','idx_fk_city_id','2015-12-21 08:55:03','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','address','idx_fk_city_id','2015-12-21 08:55:03','size',1,NULL,'Number of pages in the index'),('sakila','category','PRIMARY','2015-12-21 08:55:03','n_diff_pfx01',16,1,'category_id'),('sakila','category','PRIMARY','2015-12-21 08:55:03','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','category','PRIMARY','2015-12-21 08:55:03','size',1,NULL,'Number of pages in the index'),('sakila','city','PRIMARY','2015-12-21 08:55:03','n_diff_pfx01',600,2,'city_id'),('sakila','city','PRIMARY','2015-12-21 08:55:03','n_leaf_pages',2,NULL,'Number of leaf pages in the index'),('sakila','city','PRIMARY','2015-12-21 08:55:03','size',3,NULL,'Number of pages in the index'),('sakila','city','idx_fk_country_id','2015-12-21 08:55:03','n_diff_pfx01',109,1,'country_id'),('sakila','city','idx_fk_country_id','2015-12-21 08:55:03','n_diff_pfx02',600,1,'country_id,city_id'),('sakila','city','idx_fk_country_id','2015-12-21 08:55:03','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','city','idx_fk_country_id','2015-12-21 08:55:03','size',1,NULL,'Number of pages in the index'),('sakila','country','PRIMARY','2015-12-21 08:55:03','n_diff_pfx01',109,1,'country_id'),('sakila','country','PRIMARY','2015-12-21 08:55:03','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','country','PRIMARY','2015-12-21 08:55:03','size',1,NULL,'Number of pages in the index'),('sakila','customer','PRIMARY','2015-12-21 08:55:03','n_diff_pfx01',599,4,'customer_id'),('sakila','customer','PRIMARY','2015-12-21 08:55:03','n_leaf_pages',4,NULL,'Number of leaf pages in the index'),('sakila','customer','PRIMARY','2015-12-21 08:55:03','size',5,NULL,'Number of pages in the index'),('sakila','customer','idx_fk_address_id','2015-12-21 08:55:03','n_diff_pfx01',599,1,'address_id'),('sakila','customer','idx_fk_address_id','2015-12-21 08:55:03','n_diff_pfx02',599,1,'address_id,customer_id'),('sakila','customer','idx_fk_address_id','2015-12-21 08:55:03','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','customer','idx_fk_address_id','2015-12-21 08:55:03','size',1,NULL,'Number of pages in the index'),('sakila','customer','idx_fk_store_id','2015-12-21 08:55:03','n_diff_pfx01',2,1,'store_id'),('sakila','customer','idx_fk_store_id','2015-12-21 08:55:03','n_diff_pfx02',599,1,'store_id,customer_id'),('sakila','customer','idx_fk_store_id','2015-12-21 08:55:03','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','customer','idx_fk_store_id','2015-12-21 08:55:03','size',1,NULL,'Number of pages in the index'),('sakila','customer','idx_last_name','2015-12-21 08:55:03','n_diff_pfx01',599,1,'last_name'),('sakila','customer','idx_last_name','2015-12-21 08:55:03','n_diff_pfx02',599,1,'last_name,customer_id'),('sakila','customer','idx_last_name','2015-12-21 08:55:03','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','customer','idx_last_name','2015-12-21 08:55:03','size',1,NULL,'Number of pages in the index'),('sakila','film','PRIMARY','2015-12-21 08:55:03','n_diff_pfx01',1000,11,'film_id'),('sakila','film','PRIMARY','2015-12-21 08:55:03','n_leaf_pages',11,NULL,'Number of leaf pages in the index'),('sakila','film','PRIMARY','2015-12-21 08:55:03','size',12,NULL,'Number of pages in the index'),('sakila','film','idx_fk_language_id','2015-12-21 08:55:03','n_diff_pfx01',1,1,'language_id'),('sakila','film','idx_fk_language_id','2015-12-21 08:55:03','n_diff_pfx02',1000,1,'language_id,film_id'),('sakila','film','idx_fk_language_id','2015-12-21 08:55:03','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','film','idx_fk_language_id','2015-12-21 08:55:03','size',1,NULL,'Number of pages in the index'),('sakila','film','idx_fk_original_language_id','2015-12-21 08:55:03','n_diff_pfx01',1,1,'original_language_id'),('sakila','film','idx_fk_original_language_id','2015-12-21 08:55:03','n_diff_pfx02',1000,1,'original_language_id,film_id'),('sakila','film','idx_fk_original_language_id','2015-12-21 08:55:03','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','film','idx_fk_original_language_id','2015-12-21 08:55:03','size',1,NULL,'Number of pages in the index'),('sakila','film','idx_title','2015-12-21 08:55:03','n_diff_pfx01',1000,2,'title'),('sakila','film','idx_title','2015-12-21 08:55:03','n_diff_pfx02',1000,2,'title,film_id'),('sakila','film','idx_title','2015-12-21 08:55:03','n_leaf_pages',2,NULL,'Number of leaf pages in the index'),('sakila','film','idx_title','2015-12-21 08:55:03','size',3,NULL,'Number of pages in the index'),('sakila','film_actor','PRIMARY','2015-12-21 08:55:03','n_diff_pfx01',200,11,'actor_id'),('sakila','film_actor','PRIMARY','2015-12-21 08:55:03','n_diff_pfx02',5462,11,'actor_id,film_id'),('sakila','film_actor','PRIMARY','2015-12-21 08:55:03','n_leaf_pages',11,NULL,'Number of leaf pages in the index'),('sakila','film_actor','PRIMARY','2015-12-21 08:55:03','size',12,NULL,'Number of pages in the index'),('sakila','film_actor','idx_fk_film_id','2015-12-21 08:55:03','n_diff_pfx01',997,4,'film_id'),('sakila','film_actor','idx_fk_film_id','2015-12-21 08:55:03','n_diff_pfx02',5462,4,'film_id,actor_id'),('sakila','film_actor','idx_fk_film_id','2015-12-21 08:55:03','n_leaf_pages',4,NULL,'Number of leaf pages in the index'),('sakila','film_actor','idx_fk_film_id','2015-12-21 08:55:03','size',5,NULL,'Number of pages in the index'),('sakila','film_category','PRIMARY','2015-12-21 08:55:03','n_diff_pfx01',1000,3,'film_id'),('sakila','film_category','PRIMARY','2015-12-21 08:55:03','n_diff_pfx02',1000,3,'film_id,category_id'),('sakila','film_category','PRIMARY','2015-12-21 08:55:03','n_leaf_pages',3,NULL,'Number of leaf pages in the index'),('sakila','film_category','PRIMARY','2015-12-21 08:55:03','size',4,NULL,'Number of pages in the index'),('sakila','film_category','fk_film_category_category','2015-12-21 08:55:03','n_diff_pfx01',16,1,'category_id'),('sakila','film_category','fk_film_category_category','2015-12-21 08:55:03','n_diff_pfx02',1000,1,'category_id,film_id'),('sakila','film_category','fk_film_category_category','2015-12-21 08:55:03','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','film_category','fk_film_category_category','2015-12-21 08:55:03','size',1,NULL,'Number of pages in the index'),('sakila','film_text','FTS_DOC_ID_INDEX','2015-12-21 08:55:03','n_diff_pfx01',1000,1,'FTS_DOC_ID'),('sakila','film_text','FTS_DOC_ID_INDEX','2015-12-21 08:55:03','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','film_text','FTS_DOC_ID_INDEX','2015-12-21 08:55:03','size',1,NULL,'Number of pages in the index'),('sakila','film_text','PRIMARY','2015-12-21 08:55:03','n_diff_pfx01',1000,10,'film_id'),('sakila','film_text','PRIMARY','2015-12-21 08:55:03','n_leaf_pages',10,NULL,'Number of leaf pages in the index'),('sakila','film_text','PRIMARY','2015-12-21 08:55:03','size',11,NULL,'Number of pages in the index'),('sakila','inventory','PRIMARY','2015-12-21 08:55:03','n_diff_pfx01',4581,10,'inventory_id'),('sakila','inventory','PRIMARY','2015-12-21 08:55:03','n_leaf_pages',10,NULL,'Number of leaf pages in the index'),('sakila','inventory','PRIMARY','2015-12-21 08:55:03','size',11,NULL,'Number of pages in the index'),('sakila','inventory','idx_fk_film_id','2015-12-21 08:55:03','n_diff_pfx01',958,4,'film_id'),('sakila','inventory','idx_fk_film_id','2015-12-21 08:55:03','n_diff_pfx02',4581,4,'film_id,inventory_id'),('sakila','inventory','idx_fk_film_id','2015-12-21 08:55:03','n_leaf_pages',4,NULL,'Number of leaf pages in the index'),('sakila','inventory','idx_fk_film_id','2015-12-21 08:55:03','size',5,NULL,'Number of pages in the index'),('sakila','inventory','idx_store_id_film_id','2015-12-21 08:55:03','n_diff_pfx01',2,6,'store_id'),('sakila','inventory','idx_store_id_film_id','2015-12-21 08:55:03','n_diff_pfx02',1521,6,'store_id,film_id'),('sakila','inventory','idx_store_id_film_id','2015-12-21 08:55:03','n_diff_pfx03',4581,6,'store_id,film_id,inventory_id'),('sakila','inventory','idx_store_id_film_id','2015-12-21 08:55:03','n_leaf_pages',6,NULL,'Number of leaf pages in the index'),('sakila','inventory','idx_store_id_film_id','2015-12-21 08:55:03','size',7,NULL,'Number of pages in the index'),('sakila','language','PRIMARY','2015-12-21 08:55:13','n_diff_pfx01',6,1,'language_id'),('sakila','language','PRIMARY','2015-12-21 08:55:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','language','PRIMARY','2015-12-21 08:55:13','size',1,NULL,'Number of pages in the index'),('sakila','payment','PRIMARY','2015-12-21 08:55:23','n_diff_pfx01',16086,20,'payment_id'),('sakila','payment','PRIMARY','2015-12-21 08:55:23','n_leaf_pages',44,NULL,'Number of leaf pages in the index'),('sakila','payment','PRIMARY','2015-12-21 08:55:23','size',97,NULL,'Number of pages in the index'),('sakila','payment','fk_payment_rental','2015-12-21 08:55:23','n_diff_pfx01',16045,16,'rental_id'),('sakila','payment','fk_payment_rental','2015-12-21 08:55:23','n_diff_pfx02',16049,16,'rental_id,payment_id'),('sakila','payment','fk_payment_rental','2015-12-21 08:55:23','n_leaf_pages',16,NULL,'Number of leaf pages in the index'),('sakila','payment','fk_payment_rental','2015-12-21 08:55:23','size',17,NULL,'Number of pages in the index'),('sakila','payment','idx_fk_customer_id','2015-12-21 08:55:23','n_diff_pfx01',599,10,'customer_id'),('sakila','payment','idx_fk_customer_id','2015-12-21 08:55:23','n_diff_pfx02',16049,10,'customer_id,payment_id'),('sakila','payment','idx_fk_customer_id','2015-12-21 08:55:23','n_leaf_pages',10,NULL,'Number of leaf pages in the index'),('sakila','payment','idx_fk_customer_id','2015-12-21 08:55:23','size',11,NULL,'Number of pages in the index'),('sakila','payment','idx_fk_staff_id','2015-12-21 08:55:23','n_diff_pfx01',2,10,'staff_id'),('sakila','payment','idx_fk_staff_id','2015-12-21 08:55:23','n_diff_pfx02',16049,10,'staff_id,payment_id'),('sakila','payment','idx_fk_staff_id','2015-12-21 08:55:23','n_leaf_pages',10,NULL,'Number of leaf pages in the index'),('sakila','payment','idx_fk_staff_id','2015-12-21 08:55:23','size',11,NULL,'Number of pages in the index'),('sakila','rental','PRIMARY','2015-12-21 08:55:34','n_diff_pfx01',16005,20,'rental_id'),('sakila','rental','PRIMARY','2015-12-21 08:55:34','n_leaf_pages',47,NULL,'Number of leaf pages in the index'),('sakila','rental','PRIMARY','2015-12-21 08:55:34','size',97,NULL,'Number of pages in the index'),('sakila','rental','idx_fk_customer_id','2015-12-21 08:55:34','n_diff_pfx01',599,16,'customer_id'),('sakila','rental','idx_fk_customer_id','2015-12-21 08:55:34','n_diff_pfx02',16044,16,'customer_id,rental_id'),('sakila','rental','idx_fk_customer_id','2015-12-21 08:55:34','n_leaf_pages',16,NULL,'Number of leaf pages in the index'),('sakila','rental','idx_fk_customer_id','2015-12-21 08:55:34','size',17,NULL,'Number of pages in the index'),('sakila','rental','idx_fk_inventory_id','2015-12-21 08:55:34','n_diff_pfx01',4580,16,'inventory_id'),('sakila','rental','idx_fk_inventory_id','2015-12-21 08:55:34','n_diff_pfx02',16044,16,'inventory_id,rental_id'),('sakila','rental','idx_fk_inventory_id','2015-12-21 08:55:34','n_leaf_pages',16,NULL,'Number of leaf pages in the index'),('sakila','rental','idx_fk_inventory_id','2015-12-21 08:55:34','size',17,NULL,'Number of pages in the index'),('sakila','rental','idx_fk_staff_id','2015-12-21 08:55:34','n_diff_pfx01',2,13,'staff_id'),('sakila','rental','idx_fk_staff_id','2015-12-21 08:55:34','n_diff_pfx02',16044,13,'staff_id,rental_id'),('sakila','rental','idx_fk_staff_id','2015-12-21 08:55:34','n_leaf_pages',13,NULL,'Number of leaf pages in the index'),('sakila','rental','idx_fk_staff_id','2015-12-21 08:55:34','size',14,NULL,'Number of pages in the index'),('sakila','rental','rental_date','2015-12-21 08:55:34','n_diff_pfx01',15815,24,'rental_date'),('sakila','rental','rental_date','2015-12-21 08:55:34','n_diff_pfx02',16044,24,'rental_date,inventory_id'),('sakila','rental','rental_date','2015-12-21 08:55:34','n_diff_pfx03',16044,24,'rental_date,inventory_id,customer_id'),('sakila','rental','rental_date','2015-12-21 08:55:34','n_leaf_pages',24,NULL,'Number of leaf pages in the index'),('sakila','rental','rental_date','2015-12-21 08:55:34','size',25,NULL,'Number of pages in the index'),('sakila','staff','PRIMARY','2015-12-21 08:55:44','n_diff_pfx01',2,1,'staff_id'),('sakila','staff','PRIMARY','2015-12-21 08:55:44','n_leaf_pages',3,NULL,'Number of leaf pages in the index'),('sakila','staff','PRIMARY','2015-12-21 08:55:44','size',4,NULL,'Number of pages in the index'),('sakila','staff','idx_fk_address_id','2015-12-21 08:55:44','n_diff_pfx01',2,1,'address_id'),('sakila','staff','idx_fk_address_id','2015-12-21 08:55:44','n_diff_pfx02',2,1,'address_id,staff_id'),('sakila','staff','idx_fk_address_id','2015-12-21 08:55:44','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','staff','idx_fk_address_id','2015-12-21 08:55:44','size',1,NULL,'Number of pages in the index'),('sakila','staff','idx_fk_store_id','2015-12-21 08:55:44','n_diff_pfx01',2,1,'store_id'),('sakila','staff','idx_fk_store_id','2015-12-21 08:55:44','n_diff_pfx02',2,1,'store_id,staff_id'),('sakila','staff','idx_fk_store_id','2015-12-21 08:55:44','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','staff','idx_fk_store_id','2015-12-21 08:55:44','size',1,NULL,'Number of pages in the index'),('sakila','store','PRIMARY','2015-12-21 08:55:54','n_diff_pfx01',2,1,'store_id'),('sakila','store','PRIMARY','2015-12-21 08:55:54','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','store','PRIMARY','2015-12-21 08:55:54','size',1,NULL,'Number of pages in the index'),('sakila','store','idx_fk_address_id','2015-12-21 08:55:54','n_diff_pfx01',2,1,'address_id'),('sakila','store','idx_fk_address_id','2015-12-21 08:55:54','n_diff_pfx02',2,1,'address_id,store_id'),('sakila','store','idx_fk_address_id','2015-12-21 08:55:54','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','store','idx_fk_address_id','2015-12-21 08:55:54','size',1,NULL,'Number of pages in the index'),('sakila','store','idx_unique_manager','2015-12-21 08:55:54','n_diff_pfx01',2,1,'manager_staff_id'),('sakila','store','idx_unique_manager','2015-12-21 08:55:54','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sakila','store','idx_unique_manager','2015-12-21 08:55:54','size',1,NULL,'Number of pages in the index'),('world','City','CountryCode','2015-12-23 11:56:39','n_diff_pfx01',232,7,'CountryCode'),('world','City','CountryCode','2015-12-23 11:56:39','n_diff_pfx02',4079,7,'CountryCode,ID'),('world','City','CountryCode','2015-12-23 11:56:39','n_leaf_pages',7,NULL,'Number of leaf pages in the index'),('world','City','CountryCode','2015-12-23 11:56:39','size',8,NULL,'Number of pages in the index'),('world','City','PRIMARY','2015-12-23 11:56:39','n_diff_pfx01',4188,20,'ID'),('world','City','PRIMARY','2015-12-23 11:56:39','n_leaf_pages',24,NULL,'Number of leaf pages in the index'),('world','City','PRIMARY','2015-12-23 11:56:39','size',25,NULL,'Number of pages in the index'),('world','Country','PRIMARY','2015-12-23 11:56:29','n_diff_pfx01',239,5,'Code'),('world','Country','PRIMARY','2015-12-23 11:56:29','n_leaf_pages',5,NULL,'Number of leaf pages in the index'),('world','Country','PRIMARY','2015-12-23 11:56:29','size',6,NULL,'Number of pages in the index'),('world','CountryLanguage','CountryCode','2015-12-23 11:56:49','n_diff_pfx01',233,3,'CountryCode'),('world','CountryLanguage','CountryCode','2015-12-23 11:56:49','n_diff_pfx02',984,3,'CountryCode,Language'),('world','CountryLanguage','CountryCode','2015-12-23 11:56:49','n_leaf_pages',3,NULL,'Number of leaf pages in the index'),('world','CountryLanguage','CountryCode','2015-12-23 11:56:49','size',4,NULL,'Number of pages in the index'),('world','CountryLanguage','PRIMARY','2015-12-23 11:56:49','n_diff_pfx01',233,5,'CountryCode'),('world','CountryLanguage','PRIMARY','2015-12-23 11:56:49','n_diff_pfx02',984,5,'CountryCode,Language'),('world','CountryLanguage','PRIMARY','2015-12-23 11:56:49','n_leaf_pages',5,NULL,'Number of leaf pages in the index'),('world','CountryLanguage','PRIMARY','2015-12-23 11:56:49','size',6,NULL,'Number of pages in the index');
/*!40000 ALTER TABLE `innodb_index_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `innodb_table_stats`
--

DROP TABLE IF EXISTS `innodb_table_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `innodb_table_stats` (
  `database_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `n_rows` bigint(20) unsigned NOT NULL,
  `clustered_index_size` bigint(20) unsigned NOT NULL,
  `sum_of_other_index_sizes` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`database_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `innodb_table_stats`
--

LOCK TABLES `innodb_table_stats` WRITE;
/*!40000 ALTER TABLE `innodb_table_stats` DISABLE KEYS */;
INSERT INTO `innodb_table_stats` VALUES ('sakila','actor','2015-12-21 08:56:04',200,1,1),('sakila','address','2015-12-21 08:55:03',603,5,1),('sakila','category','2015-12-21 08:55:03',16,1,0),('sakila','city','2015-12-21 08:55:03',600,3,1),('sakila','country','2015-12-21 08:55:03',109,1,0),('sakila','customer','2015-12-21 08:55:03',599,5,3),('sakila','film','2015-12-21 08:55:03',1000,12,5),('sakila','film_actor','2015-12-21 08:55:03',5462,12,5),('sakila','film_category','2015-12-21 08:55:03',1000,4,1),('sakila','film_text','2015-12-21 08:55:03',1000,11,1),('sakila','inventory','2015-12-21 08:55:03',4581,11,12),('sakila','language','2015-12-21 08:55:13',6,1,0),('sakila','payment','2015-12-21 08:55:23',16086,97,39),('sakila','rental','2015-12-21 08:55:34',16005,97,73),('sakila','staff','2015-12-21 08:55:44',2,4,2),('sakila','store','2015-12-21 08:55:54',2,1,2),('world','City','2015-12-23 11:56:39',4188,25,8),('world','Country','2015-12-23 11:56:29',239,6,0),('world','CountryLanguage','2015-12-23 11:56:49',984,6,4);
/*!40000 ALTER TABLE `innodb_table_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slave_master_info`
--

DROP TABLE IF EXISTS `slave_master_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slave_master_info` (
  `Number_of_lines` int(10) unsigned NOT NULL COMMENT 'Number of lines in the file.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the master binary log currently being read from the master.',
  `Master_log_pos` bigint(20) unsigned NOT NULL COMMENT 'The master log position of the last read event.',
  `Host` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'The host name of the master.',
  `User_name` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The user name used to connect to the master.',
  `User_password` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The password used to connect to the master.',
  `Port` int(10) unsigned NOT NULL COMMENT 'The network port used to connect to the master.',
  `Connect_retry` int(10) unsigned NOT NULL COMMENT 'The period (in seconds) that the slave will wait before trying to reconnect to the master.',
  `Enabled_ssl` tinyint(1) NOT NULL COMMENT 'Indicates whether the server supports SSL connections.',
  `Ssl_ca` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Authority (CA) certificate.',
  `Ssl_capath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path to the Certificate Authority (CA) certificates.',
  `Ssl_cert` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL certificate file.',
  `Ssl_cipher` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the cipher in use for the SSL connection.',
  `Ssl_key` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL key file.',
  `Ssl_verify_server_cert` tinyint(1) NOT NULL COMMENT 'Whether to verify the server certificate.',
  `Heartbeat` float NOT NULL,
  `Bind` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Displays which interface is employed when connecting to the MySQL server',
  `Ignored_server_ids` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The number of server IDs to be ignored, followed by the actual server IDs',
  `Uuid` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The master server uuid.',
  `Retry_count` bigint(20) unsigned NOT NULL COMMENT 'Number of reconnect attempts, to the master, before giving up.',
  `Ssl_crl` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Revocation List (CRL)',
  `Ssl_crlpath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path used for Certificate Revocation List (CRL) files',
  `Enabled_auto_position` tinyint(1) NOT NULL COMMENT 'Indicates whether GTIDs will be used to retrieve events from the master.',
  PRIMARY KEY (`Host`,`Port`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Master Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slave_master_info`
--

LOCK TABLES `slave_master_info` WRITE;
/*!40000 ALTER TABLE `slave_master_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `slave_master_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slave_relay_log_info`
--

DROP TABLE IF EXISTS `slave_relay_log_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slave_relay_log_info` (
  `Number_of_lines` int(10) unsigned NOT NULL COMMENT 'Number of lines in the file or rows in the table. Used to version table definitions.',
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the current relay log file.',
  `Relay_log_pos` bigint(20) unsigned NOT NULL COMMENT 'The relay log position of the last executed event.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the master binary log file from which the events in the relay log file were read.',
  `Master_log_pos` bigint(20) unsigned NOT NULL COMMENT 'The master log position of the last executed event.',
  `Sql_delay` int(11) NOT NULL COMMENT 'The number of seconds that the slave must lag behind the master.',
  `Number_of_workers` int(10) unsigned NOT NULL,
  `Id` int(10) unsigned NOT NULL COMMENT 'Internal Id that uniquely identifies this record.',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Relay Log Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slave_relay_log_info`
--

LOCK TABLES `slave_relay_log_info` WRITE;
/*!40000 ALTER TABLE `slave_relay_log_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `slave_relay_log_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slave_worker_info`
--

DROP TABLE IF EXISTS `slave_worker_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slave_worker_info` (
  `Id` int(10) unsigned NOT NULL,
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Relay_log_pos` bigint(20) unsigned NOT NULL,
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Master_log_pos` bigint(20) unsigned NOT NULL,
  `Checkpoint_relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_relay_log_pos` bigint(20) unsigned NOT NULL,
  `Checkpoint_master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_master_log_pos` bigint(20) unsigned NOT NULL,
  `Checkpoint_seqno` int(10) unsigned NOT NULL,
  `Checkpoint_group_size` int(10) unsigned NOT NULL,
  `Checkpoint_group_bitmap` blob NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Worker Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slave_worker_info`
--

LOCK TABLES `slave_worker_info` WRITE;
/*!40000 ALTER TABLE `slave_worker_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `slave_worker_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-24  1:02:22
