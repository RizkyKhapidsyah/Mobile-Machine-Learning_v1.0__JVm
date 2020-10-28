/*
SQLyog Enterprise - MySQL GUI v8.2 RC2
MySQL - 5.5.8 : Database - dbmoodle
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbmoodle` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dbmoodle`;

/*Table structure for table `adodb_logsql` */

DROP TABLE IF EXISTS `adodb_logsql`;

CREATE TABLE `adodb_logsql` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `sql0` varchar(250) NOT NULL DEFAULT '',
  `sql1` text,
  `params` text,
  `tracer` text,
  `timer` decimal(16,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='to save some logs from ADOdb';

/*Data for the table `adodb_logsql` */

/*Table structure for table `mdl_assignment` */

DROP TABLE IF EXISTS `mdl_assignment`;

CREATE TABLE `mdl_assignment` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `format` smallint(4) unsigned NOT NULL DEFAULT '0',
  `assignmenttype` varchar(50) NOT NULL DEFAULT '',
  `resubmit` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `preventlate` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `emailteachers` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `var1` bigint(10) DEFAULT '0',
  `var2` bigint(10) DEFAULT '0',
  `var3` bigint(10) DEFAULT '0',
  `var4` bigint(10) DEFAULT '0',
  `var5` bigint(10) DEFAULT '0',
  `maxbytes` bigint(10) unsigned NOT NULL DEFAULT '100000',
  `timedue` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timeavailable` bigint(10) unsigned NOT NULL DEFAULT '0',
  `grade` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assi_cou_ix` (`course`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Defines assignments';

/*Data for the table `mdl_assignment` */

insert  into `mdl_assignment`(`id`,`course`,`name`,`description`,`format`,`assignmenttype`,`resubmit`,`preventlate`,`emailteachers`,`var1`,`var2`,`var3`,`var4`,`var5`,`maxbytes`,`timedue`,`timeavailable`,`grade`,`timemodified`) values (1,5,'Tugas SI-1','1. Sebutkan Pengertian Sistem Informasi ?<br />2. Apa yang dimaksud dengan Sistem ?<br />3. Apa pengertian Informasi ?<br /> ',0,'uploadsingle',0,0,0,0,0,0,0,0,67108864,1312055400,1311450600,100,1311450806),(2,4,'Tugas MP-1','1. Jelaskan Pengertian Mobile Programming ?<br />2. Apakah Android dan J2ME termasuk Mobile Programming ?<br />3. Sebutkan Alasan Mobile Programming begitu berkembang saat ini ?<br /> ',0,'uploadsingle',0,0,0,0,0,0,0,0,10485760,1312055400,1311450600,100,1311450946),(3,3,'Tugas PBO Offline-1',' 1. Sebutkan Konsep PBO ?\r\n 2. Apa Kepanjanga PBO ?\r\n 3. Apa Pengertian PBO ?',0,'offline',0,0,0,0,0,0,0,0,100000,1312055700,1311450900,100,1311608267),(4,3,'Tugas PBO-2',' 1. Buatlah 1 buah Inheritence ?\r\n 2. Buatlah sebuah konstruktor ?\r\n 3. Buat lah sebuah Objek ?',0,'uploadsingle',0,0,0,0,0,0,0,0,10485760,1312056000,1311451200,100,1311608401),(5,2,'Tugas RPL-1',' 1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?',0,'uploadsingle',0,0,0,0,0,0,0,0,5242880,1312056300,1311451500,100,1313826799),(6,2,'Tugas RPL Offline-1','1. Semeter berapakah kita belajar RPL di TIF UIN ?\r\n2. Apa syarat Matkul RPL ? ',0,'offline',0,0,0,0,0,0,0,0,100000,1312056300,1311451500,100,1311451689),(7,2,'TUGAS  3 RPL','1. APAKAh kita bisa berjalan diatas air ?\r\n2. Siapakan nama ibu anda ?',0,'upload',1,0,0,3,0,0,1,0,1048576,1314467100,1313862300,100,1313862445),(8,4,'Tugas UTS','Buatlah aplikasi client server berbasis android ataupun iphone dengan menggunakan database server mysql ',0,'online',0,0,0,0,0,0,0,0,100000,1324830000,1324225200,100,1324225481),(9,4,'Tugas MID','1. Apa yg anda ketehui dengan DVM android ?<br />2. Versi berapakah android yang berjalan di tablet ?<br /> ',0,'uploadsingle',0,0,0,0,0,0,0,0,1048576,1324830300,1324225500,100,1324225729);

/*Table structure for table `mdl_assignment_submissions` */

DROP TABLE IF EXISTS `mdl_assignment_submissions`;

CREATE TABLE `mdl_assignment_submissions` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timecreated` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  `numfiles` bigint(10) unsigned NOT NULL DEFAULT '0',
  `data1` text,
  `data2` text,
  `grade` bigint(11) NOT NULL DEFAULT '0',
  `submissioncomment` text NOT NULL,
  `format` smallint(4) unsigned NOT NULL DEFAULT '0',
  `teacher` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timemarked` bigint(10) unsigned NOT NULL DEFAULT '0',
  `mailed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assisubm_use_ix` (`userid`),
  KEY `mdl_assisubm_mai_ix` (`mailed`),
  KEY `mdl_assisubm_tim_ix` (`timemarked`),
  KEY `mdl_assisubm_ass_ix` (`assignment`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='Info about submitted assignments';

/*Data for the table `mdl_assignment_submissions` */

insert  into `mdl_assignment_submissions`(`id`,`assignment`,`userid`,`timecreated`,`timemodified`,`numfiles`,`data1`,`data2`,`grade`,`submissioncomment`,`format`,`teacher`,`timemarked`,`mailed`) values (18,5,3,0,1313945002,0,NULL,NULL,92,'',1,6,1313945192,0),(17,2,4,0,1313944825,0,NULL,NULL,81,'',1,7,1313945306,0),(16,4,4,0,1313944801,0,NULL,NULL,92,'',1,8,1313945372,0),(15,3,4,0,1313944741,0,NULL,NULL,95,'',1,8,1313945354,0),(14,6,4,0,1313944676,0,NULL,NULL,71,'',1,6,1313945209,0),(13,7,4,0,1313944651,0,NULL,NULL,94,'',1,6,1313945238,0),(12,5,4,0,1313944614,0,NULL,NULL,78,'',1,6,1313945182,0),(19,6,3,0,1313945015,0,NULL,NULL,88,'',1,6,1313945219,0),(20,7,3,0,1313945034,0,NULL,NULL,90,'',1,6,1313945248,0),(21,2,3,0,1313945049,0,NULL,NULL,77,'',1,7,1313945316,0),(22,1,3,0,1313945069,0,NULL,NULL,93,'',1,9,1313945424,0),(23,2,5,0,1313945101,0,NULL,NULL,89,'',1,7,1313945297,0),(24,1,5,0,1313945122,0,NULL,NULL,85,'',1,9,1313945416,0),(25,5,10,0,1313962815,0,NULL,NULL,94,'',1,6,1313962993,0),(26,6,10,0,1313962845,0,NULL,NULL,95,'',1,6,1313963019,0),(27,7,10,0,1313962864,0,NULL,NULL,96,'',1,6,1313963040,0),(28,3,10,0,1313962885,0,NULL,NULL,84,'',1,8,1313963109,0),(29,4,10,0,1313962899,0,NULL,NULL,85,'',1,8,1313963126,0),(30,2,10,0,1313962919,0,NULL,NULL,99,'',1,7,1313963176,0),(31,1,10,0,1313962932,0,NULL,NULL,98,'',1,9,1313963217,0),(32,9,3,0,1324225758,0,'dhhj',NULL,0,'',0,0,0,0);

/*Table structure for table `mdl_backup_config` */

DROP TABLE IF EXISTS `mdl_backup_config`;

CREATE TABLE `mdl_backup_config` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_backconf_nam_uix` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='To store backup configuration variables';

/*Data for the table `mdl_backup_config` */

insert  into `mdl_backup_config`(`id`,`name`,`value`) values (1,'backup_sche_modules','0'),(2,'backup_sche_withuserdata','0'),(3,'backup_sche_metacourse','0'),(4,'backup_sche_users','0'),(5,'backup_sche_logs','0'),(6,'backup_sche_userfiles','0'),(7,'backup_sche_coursefiles','0'),(8,'backup_sche_sitefiles','0'),(9,'backup_sche_gradebook_history','0'),(10,'backup_sche_messages','0'),(11,'backup_sche_blogs','0'),(12,'backup_sche_keep','1'),(13,'backup_sche_active','0'),(14,'backup_sche_weekdays','0000000'),(15,'backup_sche_hour','0'),(16,'backup_sche_minute','0'),(17,'backup_sche_destination','');

/*Table structure for table `mdl_backup_courses` */

DROP TABLE IF EXISTS `mdl_backup_courses`;

CREATE TABLE `mdl_backup_courses` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `laststarttime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `lastendtime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `laststatus` varchar(1) NOT NULL DEFAULT '0',
  `nextstarttime` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_backcour_cou_uix` (`courseid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='To store every course backup status';

/*Data for the table `mdl_backup_courses` */

/*Table structure for table `mdl_backup_files` */

DROP TABLE IF EXISTS `mdl_backup_files`;

CREATE TABLE `mdl_backup_files` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `backup_code` bigint(10) unsigned NOT NULL DEFAULT '0',
  `file_type` varchar(10) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `old_id` bigint(10) unsigned NOT NULL DEFAULT '0',
  `new_id` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_backfile_bacfilpat_uix` (`backup_code`,`file_type`,`path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='To store and recode ids to user and course files';

/*Data for the table `mdl_backup_files` */

/*Table structure for table `mdl_backup_ids` */

DROP TABLE IF EXISTS `mdl_backup_ids`;

CREATE TABLE `mdl_backup_ids` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `backup_code` bigint(12) unsigned NOT NULL DEFAULT '0',
  `table_name` varchar(30) NOT NULL DEFAULT '',
  `old_id` bigint(10) unsigned NOT NULL DEFAULT '0',
  `new_id` bigint(10) unsigned NOT NULL DEFAULT '0',
  `info` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_backids_bactabold_uix` (`backup_code`,`table_name`,`old_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='To store and convert ids in backup/restore';

/*Data for the table `mdl_backup_ids` */

/*Table structure for table `mdl_backup_log` */

DROP TABLE IF EXISTS `mdl_backup_log`;

CREATE TABLE `mdl_backup_log` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `time` bigint(10) unsigned NOT NULL DEFAULT '0',
  `laststarttime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `info` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_backlog_cou_ix` (`courseid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='To store every course backup log info';

/*Data for the table `mdl_backup_log` */

/*Table structure for table `mdl_block` */

DROP TABLE IF EXISTS `mdl_block`;

CREATE TABLE `mdl_block` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `version` bigint(10) unsigned NOT NULL DEFAULT '0',
  `cron` bigint(10) unsigned NOT NULL DEFAULT '0',
  `lastcron` bigint(10) unsigned NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `multiple` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='to store installed blocks';

/*Data for the table `mdl_block` */

insert  into `mdl_block`(`id`,`name`,`version`,`cron`,`lastcron`,`visible`,`multiple`) values (1,'activity_modules',2007101509,0,0,1,0),(2,'admin',2007101509,0,0,1,0),(3,'admin_bookmarks',2007101509,0,0,1,0),(4,'admin_tree',2007101509,0,0,1,0),(5,'blog_menu',2007101509,0,0,1,0),(6,'blog_tags',2007101509,0,0,1,1),(7,'calendar_month',2007101509,0,0,1,0),(8,'calendar_upcoming',2007101509,0,0,1,0),(9,'course_list',2007101509,0,0,1,0),(10,'course_summary',2007101509,0,0,1,0),(11,'glossary_random',2007101509,0,0,1,1),(12,'html',2007101509,0,0,1,1),(13,'loancalc',2007101509,0,0,1,0),(14,'login',2007101509,0,0,1,0),(15,'mentees',2007101509,0,0,1,1),(16,'messages',2007101509,0,0,1,0),(17,'mnet_hosts',2007101509,0,0,1,0),(18,'news_items',2007101509,0,0,1,0),(19,'online_users',2007101510,0,0,1,0),(20,'participants',2007101509,0,0,1,0),(21,'quiz_results',2007101509,0,0,1,1),(22,'recent_activity',2007101509,0,0,1,0),(23,'rss_client',2007101511,300,0,1,1),(24,'search',2008031500,1,0,1,0),(25,'search_forums',2007101509,0,0,1,0),(26,'section_links',2007101511,0,0,1,0),(27,'site_main_menu',2007101509,0,0,1,0),(28,'social_activities',2007101509,0,0,1,0),(29,'tag_flickr',2007101509,0,0,1,1),(30,'tag_youtube',2007101509,0,0,1,1),(31,'tags',2007101509,0,0,1,1);

/*Table structure for table `mdl_block_instance` */

DROP TABLE IF EXISTS `mdl_block_instance`;

CREATE TABLE `mdl_block_instance` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `blockid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `pageid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `pagetype` varchar(20) NOT NULL DEFAULT '',
  `position` varchar(10) NOT NULL DEFAULT '',
  `weight` smallint(3) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `configdata` text,
  PRIMARY KEY (`id`),
  KEY `mdl_blocinst_pag_ix` (`pageid`),
  KEY `mdl_blocinst_pag2_ix` (`pagetype`),
  KEY `mdl_blocinst_blo_ix` (`blockid`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='to store block instances in pages';

/*Data for the table `mdl_block_instance` */

insert  into `mdl_block_instance`(`id`,`blockid`,`pageid`,`pagetype`,`position`,`weight`,`visible`,`configdata`) values (1,27,1,'course-view','l',0,1,''),(2,4,1,'course-view','l',1,1,''),(3,10,1,'course-view','r',0,1,''),(4,7,1,'course-view','r',1,1,''),(5,4,0,'admin','l',0,1,''),(6,3,0,'admin','l',1,1,''),(7,20,2,'course-view','l',0,1,''),(8,1,2,'course-view','l',1,1,''),(9,25,2,'course-view','l',2,1,''),(10,2,2,'course-view','l',3,1,''),(11,9,2,'course-view','l',4,1,''),(12,18,2,'course-view','r',0,1,''),(13,8,2,'course-view','r',1,1,''),(14,22,2,'course-view','r',2,1,''),(15,20,3,'course-view','l',0,1,''),(16,1,3,'course-view','l',1,1,''),(17,25,3,'course-view','l',2,1,''),(18,2,3,'course-view','l',3,1,''),(19,9,3,'course-view','l',4,1,''),(20,18,3,'course-view','r',0,1,''),(21,8,3,'course-view','r',1,1,''),(22,22,3,'course-view','r',2,1,''),(23,20,4,'course-view','l',0,1,''),(24,1,4,'course-view','l',1,1,''),(25,25,4,'course-view','l',2,1,''),(26,2,4,'course-view','l',3,1,''),(27,9,4,'course-view','l',4,1,''),(28,18,4,'course-view','r',0,1,''),(29,8,4,'course-view','r',1,1,''),(30,22,4,'course-view','r',2,1,''),(31,20,5,'course-view','l',0,1,''),(32,1,5,'course-view','l',1,1,''),(33,25,5,'course-view','l',2,1,''),(34,2,5,'course-view','l',3,1,''),(35,9,5,'course-view','l',4,1,''),(36,18,5,'course-view','r',0,1,''),(37,8,5,'course-view','r',1,1,''),(38,22,5,'course-view','r',2,1,''),(39,1,1,'course-view','r',2,1,''),(40,18,1,'course-view','r',3,1,''),(50,6,13,'blog-view','r',1,1,NULL),(49,5,13,'blog-view','r',0,1,NULL);

/*Table structure for table `mdl_block_pinned` */

DROP TABLE IF EXISTS `mdl_block_pinned`;

CREATE TABLE `mdl_block_pinned` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `blockid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `pagetype` varchar(20) NOT NULL DEFAULT '',
  `position` varchar(10) NOT NULL DEFAULT '',
  `weight` smallint(3) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `configdata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_blocpinn_pag_ix` (`pagetype`),
  KEY `mdl_blocpinn_blo_ix` (`blockid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='to pin blocks';

/*Data for the table `mdl_block_pinned` */

/*Table structure for table `mdl_block_rss_client` */

DROP TABLE IF EXISTS `mdl_block_rss_client`;

CREATE TABLE `mdl_block_rss_client` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `title` text NOT NULL,
  `preferredtitle` varchar(64) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `shared` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Remote news feed information. Contains the news feed id, the';

/*Data for the table `mdl_block_rss_client` */

/*Table structure for table `mdl_block_search_documents` */

DROP TABLE IF EXISTS `mdl_block_search_documents`;

CREATE TABLE `mdl_block_search_documents` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `docid` varchar(32) NOT NULL DEFAULT '',
  `doctype` varchar(32) NOT NULL DEFAULT 'none',
  `itemtype` varchar(32) NOT NULL DEFAULT 'standard',
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `docdate` bigint(10) unsigned NOT NULL DEFAULT '0',
  `updated` bigint(10) unsigned NOT NULL DEFAULT '0',
  `courseid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `groupid` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_blocseardocu_doc_ix` (`docid`),
  KEY `mdl_blocseardocu_doc2_ix` (`doctype`),
  KEY `mdl_blocseardocu_ite_ix` (`itemtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='table to store search index backups';

/*Data for the table `mdl_block_search_documents` */

/*Table structure for table `mdl_cache_filters` */

DROP TABLE IF EXISTS `mdl_cache_filters`;

CREATE TABLE `mdl_cache_filters` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `filter` varchar(32) NOT NULL DEFAULT '',
  `version` bigint(10) unsigned NOT NULL DEFAULT '0',
  `md5key` varchar(32) NOT NULL DEFAULT '',
  `rawtext` text NOT NULL,
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_cachfilt_filmd5_ix` (`filter`,`md5key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='For keeping information about cached data';

/*Data for the table `mdl_cache_filters` */

/*Table structure for table `mdl_cache_flags` */

DROP TABLE IF EXISTS `mdl_cache_flags`;

CREATE TABLE `mdl_cache_flags` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `flagtype` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL,
  `expiry` bigint(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_cachflag_fla_ix` (`flagtype`),
  KEY `mdl_cachflag_nam_ix` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='Cache of time-sensitive flags';

/*Data for the table `mdl_cache_flags` */

insert  into `mdl_cache_flags`(`id`,`flagtype`,`name`,`timemodified`,`value`,`expiry`) values (1,'accesslib/dirtycontexts','/1',1312652871,'1',1312660071),(2,'accesslib/dirtycontexts','/1/3/10',1322021433,'1',1322028633),(3,'accesslib/dirtycontexts','/1/3/20',1324190059,'1',1324197259),(4,'accesslib/dirtycontexts','/1/3/32',1365141778,'1',1365148978),(5,'accesslib/dirtycontexts','/1/3/42',1314294032,'1',1314301232),(6,'accesslib/dirtycontexts','/1/3/10/31',1311433627,'1',1311440827),(7,'accesslib/dirtycontexts','/1/3/20/30',1311438547,'1',1311445747),(8,'accesslib/dirtycontexts','/1/3/20/65',1311605105,'1',1311612305),(9,'accesslib/dirtycontexts','/1/3/32/75',1311609718,'1',1311616918),(10,'accesslib/dirtycontexts','/1/3/32/97',1311609991,'1',1311617191),(11,'accesslib/dirtycontexts','/1/3/32/98',1311610066,'1',1311617266),(12,'accesslib/dirtycontexts','/1/3/32/99',1311610104,'1',1311617304),(13,'accesslib/dirtycontexts','/1/3/32/74',1311615685,'1',1311622885),(14,'accesslib/dirtycontexts','/1/3/32/96',1311781932,'1',1311789132),(15,'accesslib/dirtycontexts','/1/3/32/100',1311781939,'1',1311789139),(16,'accesslib/dirtycontexts','/1/3/32/95',1311781950,'1',1311789150),(17,'accesslib/dirtycontexts','/1/108',1312651377,'1',1312658577),(18,'accesslib/dirtycontexts','/1/3/114',1316361574,'1',1316368774),(19,'accesslib/dirtycontexts','/1/3/115',1316361789,'1',1316368989),(20,'accesslib/dirtycontexts','/1/3/115/122',1316361789,'1',1316368989),(21,'accesslib/dirtycontexts','/1/3/115/116',1316361789,'1',1316368989),(22,'accesslib/dirtycontexts','/1/3/115/117',1316361789,'1',1316368989),(23,'accesslib/dirtycontexts','/1/3/115/118',1316361789,'1',1316368989),(24,'accesslib/dirtycontexts','/1/3/115/119',1316361789,'1',1316368989),(25,'accesslib/dirtycontexts','/1/3/115/120',1316361789,'1',1316368989),(26,'accesslib/dirtycontexts','/1/3/115/121',1316361789,'1',1316368989),(27,'accesslib/dirtycontexts','/1/3/115/123',1316361789,'1',1316368989),(28,'accesslib/dirtycontexts','/1/3/115/124',1316361789,'1',1316368989),(29,'accesslib/dirtycontexts','/1/3/32/125',1322017254,'1',1322024454),(30,'accesslib/dirtycontexts','/1/3/32/127',1324224561,'1',1324231761);

/*Table structure for table `mdl_cache_text` */

DROP TABLE IF EXISTS `mdl_cache_text`;

CREATE TABLE `mdl_cache_text` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `md5key` varchar(32) NOT NULL DEFAULT '',
  `formattedtext` longtext NOT NULL,
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_cachtext_md5_ix` (`md5key`),
  KEY `mdl_cachtext_tim_ix` (`timemodified`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COMMENT='For storing temporary copies of processed texts';

/*Data for the table `mdl_cache_text` */

insert  into `mdl_cache_text`(`id`,`md5key`,`formattedtext`,`timemodified`) values (1,'9336815a4e6470e9bbe5f0d62a940984','Di Course ini kita akan membahas bagaimana kita merancang dan membangun sebuah perangkat lunak yang termanagement. ',1312621272),(2,'70ff423b986529f1cef94bb3f4959d1d','Pada Course ini kita akan membahas bagaimana membuat sebuah perangkat lunak yang berorientasikan Objek. ',1311432798),(3,'a6ab313afa930e33a3f2b8134c463544',' Pada Course ini kita akan membahas bagaimana membuat sebuah perangkat lunak yang berorientasikan Objek. ',1368933477),(4,'6195dbf61c32b5b2719a8c07386a54cb','Course ini akan membahas dan mengupas tuntas tentang Mobile Programming ',1312653553),(5,'ddc233a6561e0a229ea3bd1be94ea9e5','Sistem informasi merupakan sebuah Bidang yang mengkaji tentang bagaimana sebuah informasi dapat terdistribusi dengan sebuah sistem yang dirancang. ',1312650722),(6,'4f19ee70ab8367ccea293d686ae0d73f','<p>1. Jelaskan Kegunaan kita belajar RPL ?<br />2. Apa kepanjangan RPL ?<br /> </p>',1311451712),(7,'ea1297385e49ea673a9c654276f064d4','<p> 1. Sebutkan Konsep PBO ?<br />\r\n 2. Apa Kepanjanga PBO ?<br />\r\n 3. Apa Pengertian PBO ?</p>',1313963097),(8,'4ad3fca23b166a528ed79d763ea15110','<p>1. Buatlah 1 buah Inheritence ?<br />2. Buatlah sebuah konstruktor ?<br />3. Buat lah sebuah Objek ?<br /> </p>',1311608373),(9,'9a7b7709b2c0f70200550c8fd9d66b9e','Pada tahun 2005 Google mengakusisi Android Inc yang pada saat itu dimotori oleh Andy Rubin, Rich Miner, Nick Sears dan Chris White. Kemudian pada tahun itu juga memulai membangun platform Android secara intensif. Kemudian pada tanggal 5 November 2007 Android pertama kali diluncurkan, dan smartphone pertama yang menggunakan sistem operasi Android dikeluarkan oleh T-Mobile dengan sebutan G1 pada bulan September 2008. Hingga saat ini Android telah merilis beberapa versi Android untuk menyempurnakan versi sebelumnya. Selain berdasarkan penomoran, pada setiap versi Android terdapat kode nama berdasarkan nama-nama kue. Hingga saat ini sudah terdapat beberapa versi yang telah diluncurkan, diantaranya: versi 1.5 dirilis pada 30 April 2009 diberi nama Cupcake, versi 1.6 dirilis pada 15 September 2009 diberi nama Donut, versi&nbsp; 2.0/2.1 dirilis pada 26 Oktober 2009 diberi nama Éclair, versi 2.2 dirilis pada bulan Mei 2010 diberi nama Froyo dan versi 2.3 dirilis pada Desember 2010 yang diberi nama Gingerbread.',1311609702),(10,'c07133780fc64ce6f8403c37f8705176','We at Mobileprogramming LLC, structure a mobile application as a multi-layered application consisting of user experience, business, and data layers. The process starts with the definition of the mobile application, understanding key components, learning scenarios where it will be used, learning key patterns and technology considerations.<br />\r\n<br />\r\nAs mobile technology keeps the customers stay connected for almost all the time, enterprises are moving beyond the desktop world to keep attuned to their customer needs. Mobileprogramming help customers across verticals such as&nbsp; Healthcare, Education, Insurance and Financial Services and have implemented solutions across various platforms like Windows Mobile, iPhone/iPad, Android, Symbian, BlackBerry, J2ME, BREW, Palm and Web OS.',1312344601),(11,'d41220c64d397bf4cbbf09f21793de44',' Di Course ini kita akan membahas bagaimana kita merancang dan membangun sebuah perangkat lunak yang termanagement. ',1368933477),(12,'3f7fd3d401c9e47b79e4d3ad9f3be149','Administrators can usually do anything on the site, in all courses.',1313696305),(13,'cc9b927920dce1c867c881f40cb51598','Course creators can create new courses.',1313696305),(14,'7862c21bfb2325c5c0b3d490248b86f3','Teachers can do anything within a course, including changing the activities and grading students.',1313696305),(15,'dbc92f4d77130e3a05fee9d7f37cd128','Non-editing teachers can teach in courses and grade students, but may not alter activities.',1313696305),(16,'53ad46511f5b1356ab8eb29d3c1c4cbf','Students generally have fewer privileges within a course.',1313696305),(17,'ac13edf81e3c31bb72118fb0931c03d0','Guests have minimal privileges and usually can not enter text anywhere.',1313696305),(18,'91c495815f6be4e394b5bfa412f003c5','All logged in users.',1313696305),(19,'ea4a297660f7b61da95f5ad9a05d9db4',' Sistem informasi merupakan sebuah Bidang yang mengkaji tentang bagaimana sebuah informasi dapat terdistribusi dengan sebuah sistem yang dirancang. ',1368933477),(20,'bc695d80db30ead183a5d260c5629469',' Course ini akan membahas dan mengupas tuntas tentang Mobile Programming ',1368933477),(21,'8cca556829eb09f5c9775d3ca294c859','<p>The default category for questions shared in context \'Rekayasa Perangkat Lunak\'.</p>',1312654648),(22,'f07215fdf8dcd916fe4f931896841abb','1. Apa kepanjangan RPL ?\r\n2. Siapa Dosen RPL ?\r\n3. Semester Berapa kuliah RPL ?',1312654793),(23,'80cfda824e7dda26f14f52117d9eb3ff','1. Siapa Dosen RPL<br />2. Apa Kepanjanga RPl ?<br />3. Semester berapa kul RPL ?<br />',1312655014),(24,'6d55edd5eee0a3cf30a6e1c6e55a4528','1. Pak Jay<div>2. Rekayasa Perangkat Lunak</div><div>3. Semester 5</div>',1312655014),(25,'45199e7c126d32aa8f033100c14d1a1c','General news and announcements',1324226606),(26,'78a4ce173d91c7da46906fb706e6b2e4','<p>General news and announcements</p>',1324226599),(27,'1b3dfaea00e626d290ea95ab74e043d9','kita masuk jam 9.00 ga jadi jam 8.00 okeeeeeeeeeeeeeeyyy ',1324226445),(28,'c91b728b3de3655f83ad9407a443a944','woooooooooooooiiiii,,,hari ni PBO ga masuk,,bu tari pergi ke Jakarta <img alt=\"smile\" width=\"15\" height=\"15\" src=\"http://localhost/moodle/pix/s/smiley.gif\" /> ',1312708537),(29,'88b50574586cc8c20ee602295cb9c4d0','General news and announcements',1324226654),(30,'36258142c7a06838f008ce5ce4bd50ce','General news and announcements',1322016109),(31,'6a6d36b9679a56ec1c26a70f9b059039','<p>General news and announcements</p>',1322015946),(32,'1b30fdf73da37f4b05ae01a40fe48606','<p>1. Jelaskan Pengertian Mobile Programming ?<br />2. Apakah Android dan J2ME termasuk Mobile Programming ?<br />3. Sebutkan Alasan Mobile Programming begitu berkembang saat ini ?<br /> </p>',1366621518),(33,'63edcdc03e62fa57e6dee7a7772cf00b','<p>1. Jelaskan Kegunaan kita belajar RPL ?<br />\r\n2. Apa kepanjangan RPL ?</p>',1313306341),(34,'b7638a8740cc79d6fcaedef65a59aadd','hari ini MP ga masuk ',1316356622),(35,'5fabee8a9e43a61ce73b4e8c5e5e44e9','<p> 1. Jelaskan Kegunaan kita belajar RPL ?<br />\r\n 2. Apa kepanjangan RPL ?<br />\r\n1. Jelaskan Kegunaan kita belajar RPL ?<br />\r\n 2. Apa kepanjangan RPL ?<br />\r\n1. Jelaskan Kegunaan kita belajar RPL ?<br />\r\n 2. Apa kepanjangan RPL ?<br />\r\n1. Jelaskan Kegunaan kita belajar RPL ?<br />\r\n 2. Apa kepanjangan RPL ?<br />\r\n1. Jelaskan Kegunaan kita belajar RPL ?<br />\r\n 2. Apa kepanjangan RPL ?<br />\r\n1. Jelaskan Kegunaan kita belajar RPL ?<br />\r\n 2. Apa kepanjangan RPL ?<br />\r\n1. Jelaskan Kegunaan kita belajar RPL ?<br />\r\n 2. Apa kepanjangan RPL ?<br />\r\n1. Jelaskan Kegunaan kita belajar RPL ?<br />\r\n 2. Apa kepanjangan RPL ?<br />\r\n1. Jelaskan Kegunaan kita belajar RPL ?<br />\r\n 2. Apa kepanjangan RPL ?<br />\r\n1. Jelaskan Kegunaan kita belajar RPL ?<br />\r\n 2. Apa kepanjangan RPL ?<br />\r\n1. Jelaskan Kegunaan kita belajar RPL ?<br />\r\n 2. Apa kepanjangan RPL ?<br />\r\n1. Jelaskan Kegunaan kita belajar RPL ?<br />\r\n 2. Apa kepanjangan RPL ?1. Jelaskan Kegunaan kita belajar RPL ?<br />\r\n 2. Apa kepanjangan RPL ?<br />\r\n1. Jelaskan Kegunaan kita belajar RPL ?<br />\r\n 2. Apa kepanjangan RPL ?<br />\r\n1. Jelaskan Kegunaan kita belajar RPL ?<br />\r\n 2. Apa kepanjangan RPL ?<br />\r\n1. Jelaskan Kegunaan kita belajar RPL ?<br />\r\n 2. Apa kepanjangan RPL ?<br />\r\n1. Jelaskan Kegunaan kita belajar RPL ?<br />\r\n 2. Apa kepanjangan RPL ?<br />\r\n1. Jelaskan Kegunaan kita belajar RPL ?<br />\r\n 2. Apa kepanjangan RPL ?</p>',1324190691),(36,'55e8fb64cb70f5bd313e158e30c73aac','<p>1. Sebutkan Pengertian Sistem Informasi ?<br />2. Apa yang dimaksud dengan Sistem ?<br />3. Apa pengertian Informasi ?<br /> </p>',1313963203),(37,'2d5e1acad5a90ee7b494222f22dd9e80','<p>1. Semeter berapakah kita belajar RPL di TIF UIN ?<br />\r\n2. Apa syarat Matkul RPL ? </p>',1313963002),(38,'577c318756e3697b8bbf09df66c3889b','<p>1. APAKAh kita bisa berjalan diatas air ?<br />\r\n2. Siapakan nama ibu anda ?</p>',1313963025),(39,'78bac889a09966c5061d92311f948c81','<p> 1. Buatlah 1 buah Inheritence ?<br />\r\n 2. Buatlah sebuah konstruktor ?<br />\r\n 3. Buat lah sebuah Objek ?</p>',1313963113),(40,'0674802587ee3d50dffdc44d29d4bac4','Sistem Informasi adalah aplikasi komputer untuk mendukung operasi dari suatu organisasi: operasi, instalasi, dan perawatan komputer, perangkat lunak, dan data. Sistem Informasi Manajemen adalah kunci dari bidang yang menekankan finansial dan personal manajemen. Sistem Informasi Penjualan adalah suatu sistem informasi yang mengorganisasikan serangkaian prosedur dan metode yang dirancang untuk menghasilkan, menganalisa, menyebarkan dan memperoleh informasi guna mendukung pengambilan keputusan mengenai penjualan.',1314294053),(41,'91b0fae387c5f89039e07dc87c035fc9','Pengertian dan peraturan matakuliah',1316361721),(42,'a6e85e07bb3a8e545f94d8d04f5a80cf','General news and announcements',1316361752),(43,'dd395f8d53048c16544c4e7ab76843a9','<p>General news and announcements</p>',1316361756),(44,'39c1d0f2331b389836d15c9ae622e57e','We at Mobileprogramming LLC, structure a mobile application as a multi-layered application consisting of user experience, business, and data layers. The process starts with the definition of the mobile application, understanding key components, learning scenarios where it will be used, learning key patterns and technology considerations.<br />\r\n<br />\r\nAs mobile technology keeps the customers stay connected for almost all the time, enterprises are moving beyond the desktop world to keep attuned to their customer needs. Mobileprogramming help customers across verticals such as&nbsp; Healthcare, Education, Insurance and Financial Services and have implemented solutions across various platforms like Windows Mobile, iPhone/iPad, Android, Symbian, BlackBerry, J2ME, BREW, Palm and Web OS.<br />\r\n<br />\r\nWe at Mobileprogramming LLC, structure a mobile application as a multi-layered application consisting of user experience, business, and data layers. The process starts with the definition of the mobile application, understanding key components, learning scenarios where it will be used, learning key patterns and technology considerations.<br />\r\n<br />\r\nAs mobile technology keeps the customers stay connected for almost all the time, enterprises are moving beyond the desktop world to keep attuned to their customer needs. Mobileprogramming help customers across verticals such as&nbsp; Healthcare, Education, Insurance and Financial Services and have implemented solutions across various platforms like Windows Mobile, iPhone/iPad, Android, Symbian, BlackBerry, J2ME, BREW, Palm and Web OS.',1324221855),(45,'c41d4bad87a1129144241e4a59811d9e','mencoba untuk testing',1322018399),(46,'f521622df3c42979f721ac076f0eb44c','\r\n<p style=\"margin-bottom: 6pt; text-align: justify;\"><span lang=\"IN\" style=\"color: black;\">Android adalah sebuah sistem operasi<span>&nbsp;</span>untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.</span></p>\r\n<p style=\"margin-bottom: 6pt; text-align: justify;\"><span lang=\"EN-GB\" style=\"color: black;\">Pada saat perilisan perdana Android, 5 November 2007, Android bersama Open Handset Alliance menyatakan mendukung pengembangan open source pada perangkat mobile.</span><span lang=\"EN-GB\" style=\"color: black;\"> </span><span lang=\"EN-GB\" style=\"color: black;\">Di lain pihak, Google merilis kode–kode Android di bawah lisensi Apache, sebuah lisensi perangkat lunak dan </span><span lang=\"IN\" style=\"color: black;\">open platform</span><span lang=\"EN-GB\" style=\"color: black;\"> perangkat seluler</span><span lang=\"IN\" style=\"color: black;\">.</span></p>\r\n<p style=\"margin-bottom: 6pt; text-align: justify; line-height: normal;\" class=\"MsoNormal\"><span new=\"\">Di dunia ini terdapat dua jenis distributor sistem operasi Android. Pertama yang mendapat dukungan penuh dari Google atau Google Mail Services (GMS) dan kedua adalah yang benar–benar bebas distribusinya tanpa dukungan langsung Google atau dikenal sebagai Open Handset Distribution (OHD)</span><span lang=\"IN\" new=\"\">.</span><span lang=\"IN\" new=\"\"></span></p>\r\n<p style=\"margin-bottom: 6pt; text-align: justify; line-height: normal;\" class=\"MsoNormal\"><span new=\"\">Sekitar September 2007 Google mengenalkan Nexus One, salah satu jenis smartphone yang menggunakan Android sebagai sistem operasinya</span><span lang=\"IN\" new=\"\">.</span><span new=\"\"> Telepon seluler ini diproduksi oleh HTC Corporation dan tersedia di pasaran pada 5 Januari 2010).Pada 9 Desember 2008, diumumkan anggota baru yang bergabung dalam program kerja Android ARM Holdings, Atheros Communications, diproduksi oleh Asustek Computer Inc, Garmin Ltd, Softbank, Sony Ericsson, Toshiba Corp, dan Vodafone Group Plc. Seiring pembentukan Open Handset Alliance, OHA mengumumkan produk perdana mereka, Android, perangkat mobile yang merupakan modifikasi kernel Linux 2.6. Sejak Android dirilis telah dilakukan berbagai pembaruan berupa perbaikan bug dan penambahan fitur baru.</span><span lang=\"IN\" new=\"\"></span></p>\r\n<p style=\"margin-bottom: 6pt; text-align: justify; line-height: normal;\" class=\"MsoNormal\"><span lang=\"IN\" new=\"\">Pasa masa saat ini kebanyakan vendor-vendor smartphone sudah memproduksi smart phone berbasis android, vendor-vendor itu antara lain HTC, Motorola, Samsung, LG, HKC, Huawei, Archos, </span><span new=\"\">Webstation Camangi</span><span lang=\"IN\" new=\"\">, Dell, Nexus, </span><span new=\"\">SciPhone</span><span lang=\"IN\" new=\"\">, </span><span new=\"\">WayteQ</span><span lang=\"IN\" new=\"\">, </span><span new=\"\">Sony Ericsson</span><span lang=\"IN\" new=\"\">, </span><span new=\"\">LG</span><span lang=\"IN\" new=\"\">, Acer, </span><span new=\"\">Philips</span><span lang=\"IN\" new=\"\">, T-Mobile,Nexian, IMO, Asus dan masih banyak lagi vendor smart phone didunia yang memproduksi android. Hal ini karena android itu adalah sistem operasi yang opens source sehingga bebas didistribusikan dan dipakai oleh vendor manapun.</span></p> ',1366619109),(47,'4902c81a6525bd458e95833c4062d157','Sejarah Android<br />\r\nAndroid adalah sebuah sistem operasi&nbsp; untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.<br />\r\nPada saat perilisan perdana Android, 5 November 2007, Android bersama Open Handset Alliance menyatakan mendukung pengembangan open source pada perangkat mobile. Di lain pihak, Google merilis kode–kode Android di bawah lisensi Apache, sebuah lisensi perangkat lunak dan open platform perangkat seluler.<br />\r\nDi dunia ini terdapat dua jenis distributor sistem operasi Android. Pertama yang mendapat dukungan penuh dari Google atau Google Mail Services (GMS) dan kedua adalah yang benar–benar bebas distribusinya tanpa dukungan langsung Google atau dikenal sebagai Open Handset Distribution (OHD).<br />\r\nSekitar September 2007 Google mengenalkan Nexus One, salah satu jenis smartphone yang menggunakan Android sebagai sistem operasinya. Telepon seluler ini diproduksi oleh HTC Corporation dan tersedia di pasaran pada 5 Januari 2010).Pada 9 Desember 2008, diumumkan anggota baru yang bergabung dalam program kerja Android ARM Holdings, Atheros Communications, diproduksi oleh Asustek Computer Inc, Garmin Ltd, Softbank, Sony Ericsson, Toshiba Corp, dan Vodafone Group Plc. Seiring pembentukan Open Handset Alliance, OHA mengumumkan produk perdana mereka, Android, perangkat mobile yang merupakan modifikasi kernel Linux 2.6. Sejak Android dirilis telah dilakukan berbagai pembaruan berupa perbaikan bug dan penambahan fitur baru.<br />\r\nPasa masa saat ini kebanyakan vendor-vendor smartphone sudah memproduksi smart phone berbasis android, vendor-vendor itu antara lain HTC, Motorola, Samsung, LG, HKC, Huawei, Archos, Webstation Camangi, Dell, Nexus, SciPhone, WayteQ, Sony Ericsson, LG, Acer, Philips, T-Mobile,Nexian, IMO, Asus dan masih banyak lagi vendor smart phone didunia yang memproduksi android. Hal ini karena android itu adalah sistem operasi yang opens source sehingga bebas didistribusikan dan dipakai oleh vendor manapun.<br />\r\nTidak hanya menjadi sistem operasi di smartphone, saat ini Android menjadi pesaing utama dari Apple pada sistem operasi Table PC. Pesatnya pertumbuhan Android selain faktor yang disebutkan diatas adalah karena Android itu sendiri adalah platform yang sangat lengkap baik itu sistem operasinya, Aplikasi dan Tool Pengembangan, Market aplikasi android serta dukungan yang sangat tinggi dari komunitas Open Source di dunia, sehingga android terus berkembang pesat baik dari segi teknologi maupun dari segi jumlah device yang ada di dunia.<br />\r\n<br />\r\nAndroid: Platform Masa Depan<br />\r\nAndroid dipuji sebagai &quot;platform mobile pertama yang Lengkap, Terbuka , dan Bebas”. <br />\r\n•	Lengkap (Complete Platform): Para desainer dapat melakukan pendekatan yang komprehensif ketika mereka sedang mengembangkan platform Android. Android merupakan sistem operasi yang aman dan banyak menyediakan tools dalam membangun software&nbsp; dan memungkinkan untuk peluang pengembangan aplikasi .<br />\r\n•	Terbuka (Open Source Platform): Platform Android disediakan melalui lisensi open source. Pengembang dapat dengan bebas untuk mengembangkan aplikasi.Android sendiri menggunakan Linux Kernel 2.6. <br />\r\n•	Free (Free Platform) : Android adalah platform/aplikasi yang bebas untuk develop.Tidak ada lisensi atau biaya royalti untuk dikembangkan pada platform Android. Tidak ada biaya keanggotaan diperlukan.Tidak diperlukan biaya pengujian. Tidak ada kontrak yang diperlukan. Android dapat didistribusikan dan diperdagangkan dalam bentuk apapun.<br />\r\n<br />\r\nAndroid merupakan generasi baru platform mobile, platform yang memberikan pengembang untuk melakukan pengembangan sesuai dengan yang diharapkannya. Sistem operasi yang mendasari Android dilisensikan di bawah GNU, General Public Lisensi Versi 2 (GPLv2), yang sering dikenal dengan istilah &quot;copyleft&quot; lisensi di mana setiap perbaikan pihak ketiga harus terus jatuh di bawah terms. Android didistribusikan di bawah Lisensi Apache Software (ASL/Apache2), yang memungkinkan untuk distribusi kedua dan seterusnya. Komersialisasi pengembang (produsen handset khususnya) dapat memilih untuk meningkatkan platform tanpa harus memberikan perbaikan mereka ke masyarakat open source. Sebaliknya, pengembang dapat keuntungan dari perangkat tambahan seperti perbaikan dan mendistribusikan ulang pekerjaan mereka di bawah lisensi apapun yang mereka inginkan. Pengembang aplikasi Android diperbolehkan untuk mendistribusikan aplikasi mereka di bawah skema lisensi apapun yang mereka inginkan.<br />\r\nPengembang memiliki beberapa pilihan ketika membuat aplikasi yang berbasis android. Kebanyakan pengembang menggunakan Eclipse yang tersedia secara bebas untuk merancang dan mengembangkan aplikasi Android. Eclipse adalah IDE yang paling populer untuk pengembangan Android, karena memiliki Android plug-in yang tersedia untuk memfasilitasi pengembangan Android. Selain itu Eclipse juga mendapat dukungan langsung dari Google untuk menjadi IDE pengembangan aplikasi Android, ini terbukti dengan adanya penambahan plugins untuk eclipse untuk membuat project android dimana source software langsung dari situs resminya Google. Tetapi hal diatas tidak menutup kemungkinan untuk menggunakan IDE yang lain seperti Netbeans untuk melakukan pengembangan android.<br />\r\nAplikasi Android dapat dikembangkan pada sistem operasi berikut:<br />\r\n•	Windows XP Vista/Seven.<br />\r\n•	Mac OS X (Mac OS X 10.4.8 atau lebih baru.<br />\r\n•	Linux.<br />\r\n<br />\r\nThe Dalvik Virtual Machine (DVM)<br />\r\nSalah satu elemen kunci dari Android adalah Dalvik Virtual Machine (DVM). Android berjalan di dalam Dalvik Virtual Machine (DVM) bukan di Java Virtual Machine (JVM), sebenarnya banyak persamaannya dengan Java virtual machine (VM) seperti Java ME (Java Mobile Edition), tetapi Android menggunakan Virtual Machine sendiri yang menurut saya dikustomisasi dan dirancang untuk memastikan bahwa beberapa feature-feature berjalan lebih efisien pada perangkat mobile.<br />\r\nDalvik Virtual Machine(DVM) adalah “register bases” sementara Java Virtual Machine (JVM) adalah “stack based”, DVM didesain dan ditulis oleh Dan Bornsten dan beberapa engineers Google lainnya. Jadi bisa kita katakan “Dalvik equals(Java) == False”. Dalvik Virtual Machine menggunakan kernel Linux untuk menangani fungsionalitas tingkat rendah termasuk keamanan, threading, dan proses serta manajemen memori. Ini memungkinkan kita untuk menulis Aplikasi C / C + sama halnya seperti pada OS Linux kebanyakan. Meskipun dalam kenyataanya kita harus banyak memahami Arsitektur dan proses sistem dari kernel linux yang digunakan dalam Android tersebut.<br />\r\nSemua hardware yang berbasis Android dijalankan dengan menggunakan Virtual Machine untuk eksekusi aplikasi, pengembang&nbsp; tidak perlu khawatir tentang implementasi perangkat keras tertentu. Dalvik Virtual Machine mengeksekusi executable file, sebuah format yang dioptimalkan untuk memastikan memori yang digunakan sangat kecil. The executable file diciptakan dengan mengubah kelas bahasa java dan dikompilasi menggunakan tools yang disediakan dalam SDK Android. <br />\r\n<br />\r\nAndroid SDK (Software Development Kit)<br />\r\nAndroid SDK adalah tools API (Application Programming Interface) yang diperlukan untuk mulai mengembangkan aplikasi pada platform Android menggunakan bahasa pemrograman Java. Android merupakan subset perangkat lunak untuk ponsel yang meliputi sistem operasi, middleware dan aplikasi kunci yang di release oleh Google. saat ini disediakan Android SDK (Software Development Kit) sebagai alat bantu dan API untuk mulai mengembangkan aplikasi pada platform Android menggunakan bahasa pemrograman Java. Sebagai platform aplikasi-netral, Android memberi Anda kesempatan untuk membuat Aplikasi yang kita butuhkan yang bukan merupakan aplikasi bawaan Handphone/Smarthpone. Beberapa fitur-fitur Android yang paling penting adalah :<br />\r\n•	Framework Aplikasi yang mendukung penggantian komponen dan reusable.<br />\r\n•	Mesin Virtual Dalvik dioptimalkan untuk perangkat mobile<br />\r\n•	Integrated browser berdasarkan engine open source WebKit<br />\r\n•	Grafis yang dioptimalkan dan didukung oleh libraries grafis 2D, grafis 3D berdasarkan spesifikasi opengl ES 1,0 (Opsional akselerasi hardware)<br />\r\n•	SQLite untuk penyimpanan data<br />\r\n•	Media Support yang mendukung audio, video, dan gambar (MPEG4, H.264, MP3, AAC, AMR, JPG, PNG, GIF), GSM Telephony (tergantung hardware)<br />\r\n•	Bluetooth, EDGE, 3G, dan WiFi (tergantung hardware)<br />\r\n•	Kamera, GPS, kompas, dan accelerometer (tergantung hardware)<br />\r\n•	Lingkungan Development yang lengkap dan kaya termasuk perangkat emulator, tools untuk debugging, profil dan kinerja memori, dan plugin untuk IDE Eclipse.<br />\r\nUntuk source SDK Android ini dapat dilihat dan diunduh langsung di situs resmi pengembang SDK Android di http://www.developer.android.com atau SDK Android juga terdapat dalam CD yang di includkan dalam buku ini baik versi windows maupun versi linux, karena SDK Android sifatnya gratis serta bebas didistribusikan.<br />\r\n<br />\r\nAndroid OS<br />\r\nSebagaimana yang telah disebutkan di atas, Android adalah sistem operasi yang berbasis linux atau open source. Selain Android SDK untuk pengembangan aplikasi, android juga tersedia bebas dalam bentuk operating sistem, hal ini sebenarnya yang menyebabkan vendor-vendor smartphone berlomba-lomba untuk memproduksi smartphone dan tablet PC berbasis android, Android OS dapat di download dari situs resmi google di alamat situs http://www.code.google.com. Inilah yang menjadi peluang besar bagi vendor-vendor smartphone dan tablet PC untuk memproduksi smartphone dan Table PC Android. Android OS 3.0 yang dapat di download di situs resminya tersebut sudah banyak digunakan oleh table pc yang banyak beredar di pasaran. Dan sekarang Android sudah menyebar bukan hanya di smarthphone tetapi juga di tablet/gadget pc.<br />\r\nArsitekrur Android<br />\r\nSecara garis besar Arsitektur Android dapat dijelaskan dan digambarkan sebagai berikut:<br />\r\n•	Applications dan Widgets<br />\r\nApplications dan Widgets ini adalah layer dimana kita berhubungan dengan aplikasi saja, dimana biasanya kita download aplikasi kemudian kita lakukan instlasi dan jalankan aplikasi tersebut. Di layer terdapat aplikasi inti termasuk klien email, program SMS, kalender, peta, browser, kontak, dan lain-lain. Semua aplikasi ditulis menggunakan bahasa pemrograman Java.<br />\r\n•	Applications Frameworks<br />\r\nAndroid adalah “Open Development Platform” yaitu&nbsp; Android menawarkan kepada pengembang atau memberi kemampuan kepada pengembang untuk membangun aplikasi yang bagus dan inovatif . Pengembang bebas untuk mengakses perangkat keras, akses informasi resources, menjalankan service background, mengatur alarm, dan menambahkan status notifications, dan sebagainya. Pengembang memiliki akses penuh menuju API framework seperti yang dilakukan oleh aplikasi yang kategori inti. Arsitektur aplikasi dirancang supaya kita dengan mudah dapat menggunakan kembali komponen yang sudah digunakan (reuse). <br />\r\nSehingga bisa kita simpulkan Applications Frameworks ini adalah layer dimana para pembuat aplikasi melakukan pengembangan/pembuatan aplikasi yang akan dijalankan di sistem operasi Android, karena pada layer inilah aplikasi dapat dirancang dan dibuat, seperti content-providers yang berupa sms dan panggilan telepon.<br />\r\nKomponen-komponen yang termasuk didalam Applications Frameworks adalah sebagai berikut :<br />\r\na)	Views<br />\r\nb)	Content Provider<br />\r\nc)	Resource Manager<br />\r\nd)	Notification Manager<br />\r\ne)	Activity Manager<br />\r\n•	Libraries<br />\r\nLibraries ini adalah layer dimana fitur-fitur Android berada, biasanya para pembuat aplikasi mengakses libraries untuk menjalankan aplikasinya. Berjalan di atas kernel, Layer ini&nbsp; meliputi berbagai library&nbsp; C/C++ inti seperti&nbsp; Libc dan SSL, serta:<br />\r\n	libraries media untuk pemutaran media audio dan video<br />\r\n	libraries untuk manajemen tampilan<br />\r\n	libraries Graphics mencakup SGL dan OpenGL untuk grafis 2D dan 3D<br />\r\n	libraries SQLite untuk dukungan database.<br />\r\n	libraries SSL dan WebKit terintegrasi dengan web browser dan security<br />\r\n	libraries LiveWebcore mencakup modern web browser dengan engine embeded web view<br />\r\n	libraries 3D yang mencakup implementasi OpenGL ES 1.0 API’s<br />\r\n•	Android Run Time<br />\r\nLayer yang membuat aplikasi Android dapat dijalankan dimana dalam prosesnya menggunakan Implementasi Linux. Dalvik Virtual Machine (DVM) merupakan mesin yang membentuk dasar kerangka aplikasi Android. Di dalam Android Run Time dibagi menjadi dua bagian yaitu :<br />\r\n	Core Libraries : Aplikasi Android dibangun dalam bahasa java, sementara Dalvik sebagai virtual mesinnya bukan Virtual Machine Java, sehingga diperlukan sebuah libraries yang berfungsi untuk menterjemahkan bahasa java/c yang ditangani oleh Core Libraries.<br />\r\n	Dalvik Virtual Machine : Virtual mesin berbasis register yang dioptimalkan untuk menjalankan fungsi-fungsi secara efisien, dimana merupakan pengembangan yang mampu membuat linux kernel untuk melakukan threading dan manajemen tingkat rendah.<br />\r\n•	Linux Kernel<br />\r\nLinux kernel adalah layer dimana inti dari operating sistem dari Android itu berada. Berisi file-file system yang mengatur sistem processing, memory, resource, drivers, dan sistem-sistem operasi android lainnya. Linux kernel yang digunakan android adalah linux kernel release 2.6.&nbsp; jika anda ingin mempelajari linux kernel ini, anda dapat mengunduh linux kernel secara gratis di situs www.kernel.org.<br />\r\n',1322018348),(48,'73b08d654a0b3fd8b2ac53f2ff77671d','<h2 style=\"margin: 10pt 0in 6pt; text-indent: 0in; line-height: normal;\"><span lang=\"EN-GB\" style=\"font-size: 13pt;\">Android: Platform</span><span lang=\"IN\" style=\"font-size: 13pt;\"> Masa Depan</span></h2> ',1322016621),(49,'7c5cdb7714354d10facce2cad3bd9c54','Sejarah Android<br />\r\nAndroid adalah sebuah sistem operasi&nbsp; untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.<br />\r\nPada saat perilisan perdana Android, 5 November 2007, Android bersama Open Handset Alliance menyatakan mendukung pengembangan open source pada perangkat mobile. Di lain pihak, Google merilis kode–kode Android di bawah lisensi Apache, sebuah lisensi perangkat lunak dan open platform perangkat seluler.<br />\r\nDi dunia ini terdapat dua jenis distributor sistem operasi Android. Pertama yang mendapat dukungan penuh dari Google atau Google Mail Services (GMS) dan kedua adalah yang benar–benar bebas distribusinya tanpa dukungan langsung Google atau dikenal sebagai Open Handset Distribution (OHD).<br />\r\nSekitar September 2007 Google mengenalkan Nexus One, salah satu jenis smartphone yang menggunakan Android sebagai sistem operasinya. Telepon seluler ini diproduksi oleh HTC Corporation dan tersedia di pasaran pada 5 Januari 2010).Pada 9 Desember 2008, diumumkan anggota baru yang bergabung dalam program kerja Android ARM Holdings, Atheros Communications, diproduksi oleh Asustek Computer Inc, Garmin Ltd, Softbank, Sony Ericsson, Toshiba Corp, dan Vodafone Group Plc. Seiring pembentukan Open Handset Alliance, OHA mengumumkan produk perdana mereka, Android, perangkat mobile yang merupakan modifikasi kernel Linux 2.6. Sejak Android dirilis telah dilakukan berbagai pembaruan berupa perbaikan bug dan penambahan fitur baru.<br />\r\nPasa masa saat ini kebanyakan vendor-vendor smartphone sudah memproduksi smart phone berbasis android, vendor-vendor itu antara lain HTC, Motorola, Samsung, LG, HKC, Huawei, Archos, Webstation Camangi, Dell, Nexus, SciPhone, WayteQ, Sony Ericsson, LG, Acer, Philips, T-Mobile,Nexian, IMO, Asus dan masih banyak lagi vendor smart phone didunia yang memproduksi android. Hal ini karena android itu adalah sistem operasi yang opens source sehingga bebas didistribusikan dan dipakai oleh vendor manapun.<br />\r\nTidak hanya menjadi sistem operasi di smartphone, saat ini Android menjadi pesaing utama dari Apple pada sistem operasi Table PC. Pesatnya pertumbuhan Android selain faktor yang disebutkan diatas adalah karena Android itu sendiri adalah platform yang sangat lengkap baik itu sistem operasinya, Aplikasi dan Tool Pengembangan, Market aplikasi android serta dukungan yang sangat tinggi dari komunitas Open Source di dunia, sehingga android terus berkembang pesat baik dari segi teknologi maupun dari segi jumlah device yang ada di dunia.<br />\r\n',1322017012),(50,'60d93fd1b29b5f0eee9c7d77bd12f932','<br /> ',1322016712),(51,'0a5ec8a54028b41eba7ba209174941d8','PENGENALAN ANDROID<br />\r\n<br />\r\nSejarah Android<br />\r\nAndroid adalah sebuah sistem operasi&nbsp; untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.<br />\r\nPada saat perilisan perdana Android, 5 November 2007, Android bersama Open Handset Alliance menyatakan mendukung pengembangan open source pada perangkat mobile. Di lain pihak, Google merilis kode–kode Android di bawah lisensi Apache, sebuah lisensi perangkat lunak dan open platform perangkat seluler.<br />\r\nDi dunia ini terdapat dua jenis distributor sistem operasi Android. Pertama yang mendapat dukungan penuh dari Google atau Google Mail Services (GMS) dan kedua adalah yang benar–benar bebas distribusinya tanpa dukungan langsung Google atau dikenal sebagai Open Handset Distribution (OHD).<br />\r\nSekitar September 2007 Google mengenalkan Nexus One, salah satu jenis smartphone yang menggunakan Android sebagai sistem operasinya. Telepon seluler ini diproduksi oleh HTC Corporation dan tersedia di pasaran pada 5 Januari 2010).Pada 9 Desember 2008, diumumkan anggota baru yang bergabung dalam program kerja Android ARM Holdings, Atheros Communications, diproduksi oleh Asustek Computer Inc, Garmin Ltd, Softbank, Sony Ericsson, Toshiba Corp, dan Vodafone Group Plc. Seiring pembentukan Open Handset Alliance, OHA mengumumkan produk perdana mereka, Android, perangkat mobile yang merupakan modifikasi kernel Linux 2.6. Sejak Android dirilis telah dilakukan berbagai pembaruan berupa perbaikan bug dan penambahan fitur baru.<br />\r\nPasa masa saat ini kebanyakan vendor-vendor smartphone sudah memproduksi smart phone berbasis android, vendor-vendor itu antara lain HTC, Motorola, Samsung, LG, HKC, Huawei, Archos, Webstation Camangi, Dell, Nexus, SciPhone, WayteQ, Sony Ericsson, LG, Acer, Philips, T-Mobile,Nexian, IMO, Asus dan masih banyak lagi vendor smart phone didunia yang memproduksi android. Hal ini karena android itu adalah sistem operasi yang opens source sehingga bebas didistribusikan dan dipakai oleh vendor manapun.<br />\r\nTidak hanya menjadi sistem operasi di smartphone, saat ini Android menjadi pesaing utama dari Apple pada sistem operasi Table PC. Pesatnya pertumbuhan Android selain faktor yang disebutkan diatas adalah karena Android itu sendiri adalah platform yang sangat lengkap baik itu sistem operasinya, Aplikasi dan Tool Pengembangan, Market aplikasi android serta dukungan yang sangat tinggi dari komunitas Open Source di dunia, sehingga android terus berkembang pesat baik dari segi teknologi maupun dari segi jumlah device yang ada di dunia.<br />\r\n<br />\r\nAndroid: Platform Masa Depan<br />\r\nAndroid dipuji sebagai &quot;platform mobile pertama yang Lengkap, Terbuka , dan Bebas”. <br />\r\n•	Lengkap (Complete Platform): Para desainer dapat melakukan pendekatan yang komprehensif ketika mereka sedang mengembangkan platform Android. Android merupakan sistem operasi yang aman dan banyak menyediakan tools dalam membangun software&nbsp; dan memungkinkan untuk peluang pengembangan aplikasi .<br />\r\n•	Terbuka (Open Source Platform): Platform Android disediakan melalui lisensi open source. Pengembang dapat dengan bebas untuk mengembangkan aplikasi.Android sendiri menggunakan Linux Kernel 2.6. <br />\r\n•	Free (Free Platform) : Android adalah platform/aplikasi yang bebas untuk develop.Tidak ada lisensi atau biaya royalti untuk dikembangkan pada platform Android. Tidak ada biaya keanggotaan diperlukan.Tidak diperlukan biaya pengujian. Tidak ada kontrak yang diperlukan. Android dapat didistribusikan dan diperdagangkan dalam bentuk apapun.<br />\r\n<br />\r\nAndroid merupakan generasi baru platform mobile, platform yang memberikan pengembang untuk melakukan pengembangan sesuai dengan yang diharapkannya. Sistem operasi yang mendasari Android dilisensikan di bawah GNU, General Public Lisensi Versi 2 (GPLv2), yang sering dikenal dengan istilah &quot;copyleft&quot; lisensi di mana setiap perbaikan pihak ketiga harus terus jatuh di bawah terms. Android didistribusikan di bawah Lisensi Apache Software (ASL/Apache2), yang memungkinkan untuk distribusi kedua dan seterusnya. Komersialisasi pengembang (produsen handset khususnya) dapat memilih untuk meningkatkan platform tanpa harus memberikan perbaikan mereka ke masyarakat open source. Sebaliknya, pengembang dapat keuntungan dari perangkat tambahan seperti perbaikan dan mendistribusikan ulang pekerjaan mereka di bawah lisensi apapun yang mereka inginkan. Pengembang aplikasi Android diperbolehkan untuk mendistribusikan aplikasi mereka di bawah skema lisensi apapun yang mereka inginkan.<br />\r\nPengembang memiliki beberapa pilihan ketika membuat aplikasi yang berbasis android. Kebanyakan pengembang menggunakan Eclipse yang tersedia secara bebas untuk merancang dan mengembangkan aplikasi Android. Eclipse adalah IDE yang paling populer untuk pengembangan Android, karena memiliki Android plug-in yang tersedia untuk memfasilitasi pengembangan Android. Selain itu Eclipse juga mendapat dukungan langsung dari Google untuk menjadi IDE pengembangan aplikasi Android, ini terbukti dengan adanya penambahan plugins untuk eclipse untuk membuat project android dimana source software langsung dari situs resminya Google. Tetapi hal diatas tidak menutup kemungkinan untuk menggunakan IDE yang lain seperti Netbeans untuk melakukan pengembangan android.<br />\r\nAplikasi Android dapat dikembangkan pada sistem operasi berikut:<br />\r\n•	Windows XP Vista/Seven.<br />\r\n•	Mac OS X (Mac OS X 10.4.8 atau lebih baru.<br />\r\n•	Linux.<br />\r\n<br />\r\nThe Dalvik Virtual Machine (DVM)<br />\r\nSalah satu elemen kunci dari Android adalah Dalvik Virtual Machine (DVM). Android berjalan di dalam Dalvik Virtual Machine (DVM) bukan di Java Virtual Machine (JVM), sebenarnya banyak persamaannya dengan Java virtual machine (VM) seperti Java ME (Java Mobile Edition), tetapi Android menggunakan Virtual Machine sendiri yang menurut saya dikustomisasi dan dirancang untuk memastikan bahwa beberapa feature-feature berjalan lebih efisien pada perangkat mobile.<br />\r\nDalvik Virtual Machine(DVM) adalah “register bases” sementara Java Virtual Machine (JVM) adalah “stack based”, DVM didesain dan ditulis oleh Dan Bornsten dan beberapa engineers Google lainnya. Jadi bisa kita katakan “Dalvik equals(Java) == False”. Dalvik Virtual Machine menggunakan kernel Linux untuk menangani fungsionalitas tingkat rendah termasuk keamanan, threading, dan proses serta manajemen memori. Ini memungkinkan kita untuk menulis Aplikasi C / C + sama halnya seperti pada OS Linux kebanyakan. Meskipun dalam kenyataanya kita harus banyak memahami Arsitektur dan proses sistem dari kernel linux yang digunakan dalam Android tersebut.<br />\r\nSemua hardware yang berbasis Android dijalankan dengan menggunakan Virtual Machine untuk eksekusi aplikasi, pengembang&nbsp; tidak perlu khawatir tentang implementasi perangkat keras tertentu. Dalvik Virtual Machine mengeksekusi executable file, sebuah format yang dioptimalkan untuk memastikan memori yang digunakan sangat kecil. The executable file diciptakan dengan mengubah kelas bahasa java dan dikompilasi menggunakan tools yang disediakan dalam SDK Android. <br />\r\n<br />\r\nAndroid SDK (Software Development Kit)<br />\r\nAndroid SDK adalah tools API (Application Programming Interface) yang diperlukan untuk mulai mengembangkan aplikasi pada platform Android menggunakan bahasa pemrograman Java. Android merupakan subset perangkat lunak untuk ponsel yang meliputi sistem operasi, middleware dan aplikasi kunci yang di release oleh Google. saat ini disediakan Android SDK (Software Development Kit) sebagai alat bantu dan API untuk mulai mengembangkan aplikasi pada platform Android menggunakan bahasa pemrograman Java. Sebagai platform aplikasi-netral, Android memberi Anda kesempatan untuk membuat Aplikasi yang kita butuhkan yang bukan merupakan aplikasi bawaan Handphone/Smarthpone. Beberapa fitur-fitur Android yang paling penting adalah :<br />\r\n•	Framework Aplikasi yang mendukung penggantian komponen dan reusable.<br />\r\n•	Mesin Virtual Dalvik dioptimalkan untuk perangkat mobile<br />\r\n•	Integrated browser berdasarkan engine open source WebKit<br />\r\n•	Grafis yang dioptimalkan dan didukung oleh libraries grafis 2D, grafis 3D berdasarkan spesifikasi opengl ES 1,0 (Opsional akselerasi hardware)<br />\r\n•	SQLite untuk penyimpanan data<br />\r\n•	Media Support yang mendukung audio, video, dan gambar (MPEG4, H.264, MP3, AAC, AMR, JPG, PNG, GIF), GSM Telephony (tergantung hardware)<br />\r\n•	Bluetooth, EDGE, 3G, dan WiFi (tergantung hardware)<br />\r\n•	Kamera, GPS, kompas, dan accelerometer (tergantung hardware)<br />\r\n•	Lingkungan Development yang lengkap dan kaya termasuk perangkat emulator, tools untuk debugging, profil dan kinerja memori, dan plugin untuk IDE Eclipse.<br />\r\nUntuk source SDK Android ini dapat dilihat dan diunduh langsung di situs resmi pengembang SDK Android di http://www.developer.android.com atau SDK Android juga terdapat dalam CD yang di includkan dalam buku ini baik versi windows maupun versi linux, karena SDK Android sifatnya gratis serta bebas didistribusikan.<br />\r\n',1324222014),(52,'0029af129eae19273dcec9a162be8a50','Sebagaimana yang telah disebutkan di atas, Android adalah sistem operasi yang berbasis linux atau open source. Selain Android SDK untuk pengembangan aplikasi, android juga tersedia bebas dalam bentuk operating sistem, hal ini sebenarnya yang menyebabkan vendor-vendor smartphone berlomba-lomba untuk memproduksi smartphone dan tablet PC berbasis android, Android OS dapat di download dari situs resmi google di alamat situs http://www.code.google.com. Inilah yang menjadi peluang besar bagi vendor-vendor smartphone dan tablet PC untuk memproduksi smartphone dan Table PC Android. Android OS 3.0 yang dapat di download di situs resminya tersebut sudah banyak digunakan oleh table pc yang banyak beredar di pasaran. Dan sekarang Android sudah menyebar bukan hanya di smarthphone tetapi juga di tablet/gadget pc.',1324222077),(53,'1258ba83c7e35640fb2a7737b9e239ef','PENGENALAN ANDROID<br />\r\n<br />\r\nSejarah Android<br />\r\nAndroid adalah sebuah sistem operasi&nbsp; untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.<br />\r\nPada saat perilisan perdana Android, 5 November 2007, Android bersama Open Handset Alliance menyatakan mendukung pengembangan open source pada perangkat mobile. Di lain pihak, Google merilis kode–kode Android di bawah lisensi Apache, sebuah lisensi perangkat lunak dan open platform perangkat seluler.<br />\r\nDi dunia ini terdapat dua jenis distributor sistem operasi Android. Pertama yang mendapat dukungan penuh dari Google atau Google Mail Services (GMS) dan kedua adalah yang benar–benar bebas distribusinya tanpa dukungan langsung Google atau dikenal sebagai Open Handset Distribution (OHD).',1324222029),(54,'2b3bc0658f5c40fb973da95f547c7af0','PENGENALAN ANDROID<br />\r\n<br />\r\nSejarah Android<br />\r\nAndroid adalah sebuah sistem operasi&nbsp; untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.<br />\r\n<br />\r\nPada saat perilisan perdana Android, 5 November 2007, Android bersama Open Handset Alliance menyatakan mendukung pengembangan open source pada perangkat mobile. Di lain pihak, Google merilis kode–kode Android di bawah lisensi Apache, sebuah lisensi perangkat lunak dan open platform perangkat seluler.<br />\r\n<br />\r\nDi dunia ini terdapat dua jenis distributor sistem operasi Android. Pertama yang mendapat dukungan penuh dari Google atau Google Mail Services (GMS) dan kedua adalah yang benar–benar bebas distribusinya tanpa dukungan langsung Google atau dikenal sebagai Open Handset Distribution (OHD).',1324222061),(55,'39a1235c4b7cab5ffd1622e18fa8fd58','Sebagaimana yang telah disebutkan di atas, Android adalah sistem operasi yang berbasis linux atau open source. Selain Android SDK untuk pengembangan aplikasi, android juga tersedia bebas dalam bentuk operating sistem, hal ini sebenarnya yang menyebabkan vendor-vendor smartphone berlomba-lomba untuk memproduksi smartphone dan tablet PC berbasis android, Android OS dapat di download dari situs resmi google di alamat situs http://www.code.google.com. <br />\r\n<br />\r\nInilah yang menjadi peluang besar bagi vendor-vendor smartphone dan tablet PC untuk memproduksi smartphone dan Table PC Android. Android OS 3.0 yang dapat di download di situs resminya tersebut sudah banyak digunakan oleh table pc yang banyak beredar di pasaran. Dan sekarang Android sudah menyebar bukan hanya di smarthphone tetapi juga di tablet/gadget pc.',1324222092),(56,'b87868de76c2771567059c05b4d539c8','Sebagaimana yang telah disebutkan di atas, Android adalah sistem operasi yang berbasis linux atau open source. Selain Android SDK untuk pengembangan aplikasi, android juga tersedia bebas dalam bentuk operating sistem, hal ini sebenarnya yang menyebabkan vendor-vendor smartphone berlomba-lomba untuk memproduksi smartphone dan tablet PC berbasis android, Android OS dapat di download dari situs resmi google di alamat situs http://www.code.google.com. <br />\r\n<br />\r\nInilah yang menjadi peluang besar bagi vendor-vendor smartphone dan tablet PC untuk memproduksi smartphone dan Table PC Android. Android OS 3.0 yang dapat di download di situs resminya tersebut sudah banyak digunakan oleh table pc yang banyak beredar di pasaran. Dan sekarang Android sudah menyebar bukan hanya di smarthphone tetapi juga di tablet/gadget pc.<br />\r\n<br />\r\nLinux kernel adalah layer dimana inti dari operating sistem dari Android itu berada. Berisi file-file system yang mengatur sistem processing, memory, resource, drivers, dan sistem-sistem operasi android lainnya. Linux kernel yang digunakan android adalah linux kernel release 2.6.&nbsp; jika anda ingin mempelajari linux kernel ini, anda dapat mengunduh linux kernel secara gratis di situs www.kernel.org.<br />\r\n <br />\r\n',1324222122),(57,'06fa9821240bb2d5a41d4a459609d94e','Sebagaimana yang telah disebutkan di atas, Android adalah sistem operasi yang berbasis linux atau open source. Selain Android SDK untuk pengembangan aplikasi, android juga tersedia bebas dalam bentuk operating sistem, hal ini sebenarnya yang menyebabkan vendor-vendor smartphone berlomba-lomba untuk memproduksi smartphone dan tablet PC berbasis android, Android OS dapat di download dari situs resmi google di alamat situs http://www.code.google.com. <br />\r\n<br />\r\nInilah yang menjadi peluang besar bagi vendor-vendor smartphone dan tablet PC untuk memproduksi smartphone dan Table PC Android. Android OS 3.0 yang dapat di download di situs resminya tersebut sudah banyak digunakan oleh table pc yang banyak beredar di pasaran. Dan sekarang Android sudah menyebar bukan hanya di smarthphone tetapi juga di tablet/gadget pc.<br />\r\n<br />\r\nLinux kernel adalah layer dimana inti dari operating sistem dari Android itu berada. Berisi file-file system yang mengatur sistem processing, memory, resource, drivers, dan sistem-sistem operasi android lainnya. Linux kernel yang digunakan android adalah linux kernel release 2.6.&nbsp; jika anda ingin mempelajari linux kernel ini, anda dapat mengunduh linux kernel secara gratis di situs www.kernel.org.<br />\r\n <br />\r\nAplikasi Android ditulis dalam bahasa pemrograman java. Kode java dikompilasi bersama dengan data file resource yang dibutuhkan oleh aplikasi, dimana prosesnya&nbsp; dipackage oleh tools yang dinamakan “apt tools”&nbsp; ke dalam paket Android sehingga menghasilkan file dengan ekstensi apk. File apk itulah yang kita sebut dengan aplikasi, dan nantinya dapat di install di perangkat mobile.',1324222150),(58,'1617174f5eaf2fcfeb1ac25b8e2dc2b9','Sebagaimana yang telah disebutkan di atas, Android adalah sistem operasi yang berbasis linux atau open source. Selain Android SDK untuk pengembangan aplikasi, android juga tersedia bebas dalam bentuk operating sistem, hal ini sebenarnya yang menyebabkan vendor-vendor smartphone berlomba-lomba untuk memproduksi smartphone dan tablet PC berbasis android, Android OS dapat di download dari situs resmi google di alamat situs http://www.code.google.com. \r\n\r\nInilah yang menjadi peluang besar bagi vendor-vendor smartphone dan tablet PC untuk memproduksi smartphone dan Table PC Android. Android OS 3.0 yang dapat di download di situs resminya tersebut sudah banyak digunakan oleh table pc yang banyak beredar di pasaran. Dan sekarang Android sudah menyebar bukan hanya di smarthphone tetapi juga di tablet/gadget pc.\r\n\r\nLinux kernel adalah layer dimana inti dari operating sistem dari Android itu berada. Berisi file-file system yang mengatur sistem processing, memory, resource, drivers, dan sistem-sistem operasi android lainnya. Linux kernel yang digunakan android adalah linux kernel release 2.6.  jika anda ingin mempelajari linux kernel ini, anda dapat mengunduh linux kernel secara gratis di situs www.kernel.org.\r\n \r\nAplikasi Android ditulis dalam bahasa pemrograman java. Kode java dikompilasi bersama dengan data file resource yang dibutuhkan oleh aplikasi, dimana prosesnya  dipackage oleh tools yang dinamakan “apt tools”  ke dalam paket Android sehingga menghasilkan file dengan ekstensi apk. File apk itulah yang kita sebut dengan aplikasi, dan nantinya dapat di install di perangkat mobile.',1324222168),(59,'2de18a4df9c6c32ef1798c440162465a','<p>Sebagaimana yang telah disebutkan di atas, Android adalah sistem operasi yang berbasis linux atau open source. Selain Android SDK untuk pengembangan aplikasi, android juga tersedia bebas dalam bentuk operating sistem, hal ini sebenarnya yang menyebabkan vendor-vendor smartphone berlomba-lomba untuk memproduksi smartphone dan tablet PC berbasis android, Android OS dapat di download dari situs resmi google di alamat situs <a href=\"http://www.code.google.com\" target=\"_blank\">http://www.code.google.com</a>. <br />\r\n<br />\r\nInilah yang menjadi peluang besar bagi vendor-vendor smartphone dan tablet PC untuk memproduksi smartphone dan Table PC Android. Android OS 3.0 yang dapat di download di situs resminya tersebut sudah banyak digunakan oleh table pc yang banyak beredar di pasaran. Dan sekarang Android sudah menyebar bukan hanya di smarthphone tetapi juga di tablet/gadget pc.<br />\r\n<br />\r\nLinux kernel adalah layer dimana inti dari operating sistem dari Android itu berada. Berisi file-file system yang mengatur sistem processing, memory, resource, drivers, dan sistem-sistem operasi android lainnya. Linux kernel yang digunakan android adalah linux kernel release 2.6.  jika anda ingin mempelajari linux kernel ini, anda dapat mengunduh linux kernel secara gratis di situs <a href=\"http://www.kernel.org\" target=\"_blank\">www.kernel.org</a>.<br />\r\n <br />\r\nAplikasi Android ditulis dalam bahasa pemrograman java. Kode java dikompilasi bersama dengan data file resource yang dibutuhkan oleh aplikasi, dimana prosesnya  dipackage oleh tools yang dinamakan “apt tools”  ke dalam paket Android sehingga menghasilkan file dengan ekstensi apk. File apk itulah yang kita sebut dengan aplikasi, dan nantinya dapat di install di perangkat mobile.</p>',1324222190),(60,'19da3309abc54d2c8f1f91b76c74773f','<p>Sebagaimana yang telah disebutkan di atas, Android adalah sistem operasi yang berbasis linux atau open source. Selain Android SDK untuk pengembangan aplikasi, android juga tersedia bebas dalam bentuk operating sistem, hal ini sebenarnya yang menyebabkan vendor-vendor smartphone berlomba-lomba untuk memproduksi smartphone dan tablet PC berbasis android, Android OS dapat di download dari situs resmi google di alamat situs http://www.code.google.com.</p>\n\n<p>Inilah yang menjadi peluang besar bagi vendor-vendor smartphone dan tablet PC untuk memproduksi smartphone dan Table PC Android. Android OS 3.0 yang dapat di download di situs resminya tersebut sudah banyak digunakan oleh table pc yang banyak beredar di pasaran. Dan sekarang Android sudah menyebar bukan hanya di smarthphone tetapi juga di tablet/gadget pc.</p>\n\n<p>Linux kernel adalah layer dimana inti dari operating sistem dari Android itu berada. Berisi file-file system yang mengatur sistem processing, memory, resource, drivers, dan sistem-sistem operasi android lainnya. Linux kernel yang digunakan android adalah linux kernel release 2.6.  jika anda ingin mempelajari linux kernel ini, anda dapat mengunduh linux kernel secara gratis di situs www.kernel.org.</p>\n\n<p>Aplikasi Android ditulis dalam bahasa pemrograman java. Kode java dikompilasi bersama dengan data file resource yang dibutuhkan oleh aplikasi, dimana prosesnya  dipackage oleh tools yang dinamakan “apt tools”  ke dalam paket Android sehingga menghasilkan file dengan ekstensi apk. File apk itulah yang kita sebut dengan aplikasi, dan nantinya dapat di install di perangkat mobile.</p>\n',1324222208),(61,'a1b503d3ac89aba172fbe5f9ad5b11ed','<p>Sebagaimana yang telah disebutkan di atas, Android adalah sistem operasi yang berbasis linux atau open source. Selain Android SDK untuk pengembangan aplikasi, android juga tersedia bebas dalam bentuk operating sistem, hal ini sebenarnya yang menyebabkan vendor-vendor smartphone berlomba-lomba untuk memproduksi smartphone dan tablet PC berbasis android, Android OS dapat di download dari situs resmi google di alamat situs http://www.code.google.com.</p>\n\n<p>Inilah yang menjadi peluang besar bagi vendor-vendor smartphone dan tablet PC untuk memproduksi smartphone dan Table PC Android. Android OS 3.0 yang dapat di download di situs resminya tersebut sudah banyak digunakan oleh table pc yang banyak beredar di pasaran. Dan sekarang Android sudah menyebar bukan hanya di smarthphone tetapi juga di tablet/gadget pc.</p>\n\n<p>Linux kernel adalah layer dimana inti dari operating sistem dari Android itu berada. Berisi file-file system yang mengatur sistem processing, memory, resource, drivers, dan sistem-sistem operasi android lainnya. Linux kernel yang digunakan android adalah linux kernel release 2.6.  jika anda ingin mempelajari linux kernel ini, anda dapat mengunduh linux kernel secara gratis di situs www.kernel.org.</p>\n\n<p>Aplikasi Android ditulis dalam bahasa pemrograman java. Kode java dikompilasi bersama dengan data file resource yang dibutuhkan oleh aplikasi, dimana prosesnya  dipackage oleh tools yang dinamakan “apt tools”  ke dalam paket Android sehingga menghasilkan file dengan ekstensi apk. File apk itulah yang kita sebut dengan aplikasi, dan nantinya dapat di install di perangkat mobile.</p>\n',1324222257),(62,'6dc4e65bab0ef6b55a9ac2a85df45b27','PENGENALAN ANDROID<br />\r\n<br />\r\nSejarah Android<br />\r\nAndroid adalah sebuah sistem operasi&nbsp; untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.<br />\r\n<br />\r\nPada saat perilisan perdana Android, 5 November 2007, Android bersama Open Handset Alliance menyatakan mendukung pengembangan open source pada perangkat mobile. Di lain pihak, Google merilis kode–kode Android di bawah lisensi Apache, sebuah lisensi perangkat lunak dan open platform perangkat seluler.<br />\r\n',1324222345),(63,'3513f691bbacfa1bbc78a8cab3991c47','PENGENALAN ANDROID<br />\r\n<br />\r\nAndroid adalah sebuah sistem operasi&nbsp; untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.<br />\r\n<br />\r\nPada saat perilisan perdana Android, 5 November 2007, Android bersama Open Handset Alliance menyatakan mendukung pengembangan open source pada perangkat mobile. Di lain pihak, Google merilis kode–kode Android di bawah lisensi Apache, sebuah lisensi perangkat lunak dan open platform perangkat seluler.<br />\r\n',1324222428),(64,'981f7b571e1e03cb8c5635ca4f5cc858','PENGENALAN ANDROID<br />\r\n<br />\r\nAndroid adalah sebuah sistem operasi&nbsp; untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.<br />\r\n',1324222411),(65,'9dba33ec8971cfdfecdfe870537f4c84','PENGENALAN ANDROID<br />\r\n<br />\r\nAndroid adalah sebuah sistem operasi&nbsp; untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.<br />\r\n<br />\r\nPada saat perilisan perdana Android, 5 November 2007, Android bersama Open Handset Alliance menyatakan mendukung pengembangan open source pada perangkat mobile. Di lain pihak, Google merilis kode–kode Android di bawah lisensi Apache, sebuah lisensi perangkat lunak dan open platform perangkat seluler.',1324222447),(66,'05d6682b96b7d29c4ea236cb697d9568','PENGENALAN ANDROID<br />\r\n<br />\r\nAndroid adalah sebuah sistem operasi&nbsp; untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.<br />\r\nPada saat perilisan perdana Android, 5 November 2007, Android bersama Open Handset Alliance menyatakan mendukung pengembangan open source pada perangkat mobile. Di lain pihak, Google merilis kode–kode Android di bawah lisensi Apache, sebuah lisensi perangkat lunak dan open platform perangkat seluler.',1324222458),(67,'2fa79bcd35f49b523808e654fa4480fd','PENGENALAN ANDROID<br />\r\n<br />\r\nAndroid adalah sebuah sistem operasi&nbsp; untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.<br />\r\nPada saat perilisan perdana Android, 5 November 2007, Android bersama Open Handset Alliance menyatakan mendukung pengembangan open source pada perangkat mobile. Di lain pihak, Google merilis kode–kode Android di bawah lisensi Apache.',1324222471),(68,'870ceff9240e9e2c1a55e2243890ba1b','PENGENALAN ANDROID<br />\r\n<br />\r\nAndroid adalah sebuah sistem operasi&nbsp; untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia. Pada saat perilisan perdana Android, 5 November 2007, Android bersama Open Handset Alliance menyatakan mendukung pengembangan open source pada perangkat mobile. Di lain pihak, Google merilis kode–kode Android di bawah lisensi Apache.',1324222484),(69,'3f3edbe07430c17acba8200913c5e7cb','dskjsdfkldsfkldfsdfskldfsdfs',1324222513),(70,'f431032b4ef9dc67d9bdc2d5727ec902','dskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadskdskjsdfkldsfkldfsdfskldfsdfsklllllllfdfkdkjfkdskfdskfkdskfkdsfkfdskdfkdsfkdskfkdskfdskfkdsfkdskfkdsfkkdsfkdskfkdsfkj kfdk k f kfkkfkf dieikd skk kdkfksadfklafkadsk',1324222541),(71,'56f92e06ade3e45ee3847b3c1198ce55','Android adalah sebuah sistem operasi&nbsp; untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.<br />\r\nPada saat perilisan perdana Android, 5 November 2007, Android bersama Open Handset Alliance menyatakan mendukung pengembangan open source pada perangkat mobile. Di lain pihak, Google merilis kode–kode Android di bawah lisensi Apache, sebuah lisensi perangkat lunak dan open platform perangkat seluler.<br />\r\nDi dunia ini terdapat dua jenis distributor sistem operasi Android. Pertama yang mendapat dukungan penuh dari Google atau Google Mail Services (GMS) dan kedua adalah yang benar–benar bebas distribusinya tanpa dukungan langsung Google atau dikenal sebagai Open Handset Distribution (OHD).<br />\r\nSekitar September 2007 Google mengenalkan Nexus One, salah satu jenis smartphone yang menggunakan Android sebagai sistem operasinya. Telepon seluler ini diproduksi oleh HTC Corporation dan tersedia di pasaran pada 5 Januari 2010).Pada 9 Desember 2008, diumumkan anggota baru yang bergabung dalam program kerja Android ARM Holdings, Atheros Communications, diproduksi oleh Asustek Computer Inc, Garmin Ltd, Softbank, Sony Ericsson, Toshiba Corp, dan Vodafone Group Plc. Seiring pembentukan Open Handset Alliance, OHA mengumumkan produk perdana mereka, Android, perangkat mobile yang merupakan modifikasi kernel Linux 2.6. Sejak Android dirilis telah dilakukan berbagai pembaruan berupa perbaikan bug dan penambahan fitur baru.<br />\r\nPasa masa saat ini kebanyakan vendor-vendor smartphone sudah memproduksi smart phone berbasis android, vendor-vendor itu antara lain HTC, Motorola, Samsung, LG, HKC, Huawei, Archos, Webstation Camangi, Dell, Nexus, SciPhone, WayteQ, Sony Ericsson, LG, Acer, Philips, T-Mobile,Nexian, IMO, Asus dan masih banyak lagi vendor smart phone didunia yang memproduksi android. Hal ini karena android itu adalah sistem operasi yang opens source sehingga bebas didistribusikan dan dipakai oleh vendor manapun.<br />\r\nTidak hanya menjadi sistem operasi di smartphone, saat ini Android menjadi pesaing utama dari Apple pada sistem operasi Table PC. Pesatnya pertumbuhan Android selain faktor yang disebutkan diatas adalah karena Android itu sendiri adalah platform yang sangat lengkap baik itu sistem operasinya, Aplikasi dan Tool Pengembangan, Market aplikasi android serta dukungan yang sangat tinggi dari komunitas Open Source di dunia, sehingga android terus berkembang pesat baik dari segi teknologi maupun dari segi jumlah device yang ada di dunia.<br />\r\n<br />\r\nAndroid: Platform Masa Depan<br />\r\nAndroid dipuji sebagai &quot;platform mobile pertama yang Lengkap, Terbuka , dan Bebas”. <br />\r\n•	Lengkap (Complete Platform): Para desainer dapat melakukan pendekatan yang komprehensif ketika mereka sedang mengembangkan platform Android. Android merupakan sistem operasi yang aman dan banyak menyediakan tools dalam membangun software&nbsp; dan memungkinkan untuk peluang pengembangan aplikasi .<br />\r\n•	Terbuka (Open Source Platform): Platform Android disediakan melalui lisensi open source. Pengembang dapat dengan bebas untuk mengembangkan aplikasi.Android sendiri menggunakan Linux Kernel 2.6. <br />\r\n•	Free (Free Platform) : Android adalah platform/aplikasi yang bebas untuk develop.Tidak ada lisensi atau biaya royalti untuk dikembangkan pada platform Android. Tidak ada biaya keanggotaan diperlukan.Tidak diperlukan biaya pengujian. Tidak ada kontrak yang diperlukan. Android dapat didistribusikan dan diperdagangkan dalam bentuk apapun.<br />\r\n<br />\r\nAndroid merupakan generasi baru platform mobile, platform yang memberikan pengembang untuk melakukan pengembangan sesuai dengan yang diharapkannya. Sistem operasi yang mendasari Android dilisensikan di bawah GNU, General Public Lisensi Versi 2 (GPLv2), yang sering dikenal dengan istilah &quot;copyleft&quot; lisensi di mana setiap perbaikan pihak ketiga harus terus jatuh di bawah terms. Android didistribusikan di bawah Lisensi Apache Software (ASL/Apache2), yang memungkinkan untuk distribusi kedua dan seterusnya. Komersialisasi pengembang (produsen handset khususnya) dapat memilih untuk meningkatkan platform tanpa harus memberikan perbaikan mereka ke masyarakat open source. Sebaliknya, pengembang dapat keuntungan dari perangkat tambahan seperti perbaikan dan mendistribusikan ulang pekerjaan mereka di bawah lisensi apapun yang mereka inginkan. Pengembang aplikasi Android diperbolehkan untuk mendistribusikan aplikasi mereka di bawah skema lisensi apapun yang mereka inginkan.<br />\r\nPengembang memiliki beberapa pilihan ketika membuat aplikasi yang berbasis android. Kebanyakan pengembang menggunakan Eclipse yang tersedia secara bebas untuk merancang dan mengembangkan aplikasi Android. Eclipse adalah IDE yang paling populer untuk pengembangan Android, karena memiliki Android plug-in yang tersedia untuk memfasilitasi pengembangan Android. Selain itu Eclipse juga mendapat dukungan langsung dari Google untuk menjadi IDE pengembangan aplikasi Android, ini terbukti dengan adanya penambahan plugins untuk eclipse untuk membuat project android dimana source software langsung dari situs resminya Google. Tetapi hal diatas tidak menutup kemungkinan untuk menggunakan IDE yang lain seperti Netbeans untuk melakukan pengembangan android.<br />\r\nAplikasi Android dapat dikembangkan pada sistem operasi berikut:<br />\r\n•	Windows XP Vista/Seven.<br />\r\n•	Mac OS X (Mac OS X 10.4.8 atau lebih baru.<br />\r\n•	Linux.<br />\r\n<br />\r\nThe Dalvik Virtual Machine (DVM)<br />\r\nSalah satu elemen kunci dari Android adalah Dalvik Virtual Machine (DVM). Android berjalan di dalam Dalvik Virtual Machine (DVM) bukan di Java Virtual Machine (JVM), sebenarnya banyak persamaannya dengan Java virtual machine (VM) seperti Java ME (Java Mobile Edition), tetapi Android menggunakan Virtual Machine sendiri yang menurut saya dikustomisasi dan dirancang untuk memastikan bahwa beberapa feature-feature berjalan lebih efisien pada perangkat mobile.<br />\r\nDalvik Virtual Machine(DVM) adalah “register bases” sementara Java Virtual Machine (JVM) adalah “stack based”, DVM didesain dan ditulis oleh Dan Bornsten dan beberapa engineers Google lainnya. Jadi bisa kita katakan “Dalvik equals(Java) == False”. Dalvik Virtual Machine menggunakan kernel Linux untuk menangani fungsionalitas tingkat rendah termasuk keamanan, threading, dan proses serta manajemen memori. Ini memungkinkan kita untuk menulis Aplikasi C / C + sama halnya seperti pada OS Linux kebanyakan. Meskipun dalam kenyataanya kita harus banyak memahami Arsitektur dan proses sistem dari kernel linux yang digunakan dalam Android tersebut.<br />\r\nSemua hardware yang berbasis Android dijalankan dengan menggunakan Virtual Machine untuk eksekusi aplikasi, pengembang&nbsp; tidak perlu khawatir tentang implementasi perangkat keras tertentu. Dalvik Virtual Machine mengeksekusi executable file, sebuah format yang dioptimalkan untuk memastikan memori yang digunakan sangat kecil. The executable file diciptakan dengan mengubah kelas bahasa java dan dikompilasi menggunakan tools yang disediakan dalam SDK Android. <br />\r\n',1324222581),(72,'d20defcaa0167c3e4c1f9daeb51d570f','<p>Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.<br />\r\nPada saat perilisan perdana Android, 5 November 2007, Android bersama Open Handset Alliance menyatakan mendukung pengembangan open source pada perangkat mobile. Di lain pihak, Google merilis kode–kode Android di bawah lisensi Apache, sebuah lisensi perangkat lunak dan open platform perangkat seluler.<br />\r\nDi dunia ini terdapat dua jenis distributor sistem operasi Android. Pertama yang mendapat dukungan penuh dari Google atau Google Mail Services (GMS) dan kedua adalah yang benar–benar bebas distribusinya tanpa dukungan langsung Google atau dikenal sebagai Open Handset Distribution (OHD).<br />\r\nSekitar September 2007 Google mengenalkan Nexus One, salah satu jenis smartphone yang menggunakan Android sebagai sistem operasinya. Telepon seluler ini diproduksi oleh HTC Corporation dan tersedia di pasaran pada 5 Januari 2010).Pada 9 Desember 2008, diumumkan anggota baru yang bergabung dalam program kerja Android ARM Holdings, Atheros Communications, diproduksi oleh Asustek Computer Inc, Garmin Ltd, Softbank, Sony Ericsson, Toshiba Corp, dan Vodafone Group Plc. Seiring pembentukan Open Handset Alliance, OHA mengumumkan produk perdana mereka, Android, perangkat mobile yang merupakan modifikasi kernel Linux 2.6. Sejak Android dirilis telah dilakukan berbagai pembaruan berupa perbaikan bug dan penambahan fitur baru.<br />\r\nPasa masa saat ini kebanyakan vendor-vendor smartphone sudah memproduksi smart phone berbasis android, vendor-vendor itu antara lain HTC, Motorola, Samsung, LG, HKC, Huawei, Archos, Webstation Camangi, Dell, Nexus, SciPhone, WayteQ, Sony Ericsson, LG, Acer, Philips, T-Mobile,Nexian, IMO, Asus dan masih banyak lagi vendor smart phone didunia yang memproduksi android. Hal ini karena android itu adalah sistem operasi yang opens source sehingga bebas didistribusikan dan dipakai oleh vendor manapun.<br />\r\nTidak hanya menjadi sistem operasi di smartphone, saat ini Android menjadi pesaing utama dari Apple pada sistem operasi Table PC. Pesatnya pertumbuhan Android selain faktor yang disebutkan diatas adalah karena Android itu sendiri adalah platform yang sangat lengkap baik itu sistem operasinya, Aplikasi dan Tool Pengembangan, Market aplikasi android serta dukungan yang sangat tinggi dari komunitas Open Source di dunia, sehingga android terus berkembang pesat baik dari segi teknologi maupun dari segi jumlah device yang ada di dunia.<br />\r\n<br />\r\nAndroid: Platform Masa Depan<br />\r\nAndroid dipuji sebagai \"platform mobile pertama yang Lengkap, Terbuka , dan Bebas”. <br />\r\n•	Lengkap (Complete Platform): Para desainer dapat melakukan pendekatan yang komprehensif ketika mereka sedang mengembangkan platform Android. Android merupakan sistem operasi yang aman dan banyak menyediakan tools dalam membangun software  dan memungkinkan untuk peluang pengembangan aplikasi .<br />\r\n•	Terbuka (Open Source Platform): Platform Android disediakan melalui lisensi open source. Pengembang dapat dengan bebas untuk mengembangkan aplikasi.Android sendiri menggunakan Linux Kernel 2.6. <br />\r\n•	Free (Free Platform) : Android adalah platform/aplikasi yang bebas untuk develop.Tidak ada lisensi atau biaya royalti untuk dikembangkan pada platform Android. Tidak ada biaya keanggotaan diperlukan.Tidak diperlukan biaya pengujian. Tidak ada kontrak yang diperlukan. Android dapat didistribusikan dan diperdagangkan dalam bentuk apapun.<br />\r\n<br />\r\nAndroid merupakan generasi baru platform mobile, platform yang memberikan pengembang untuk melakukan pengembangan sesuai dengan yang diharapkannya. Sistem operasi yang mendasari Android dilisensikan di bawah GNU, General Public Lisensi Versi 2 (GPLv2), yang sering dikenal dengan istilah \"copyleft\" lisensi di mana setiap perbaikan pihak ketiga harus terus jatuh di bawah terms. Android didistribusikan di bawah Lisensi Apache Software (ASL/Apache2), yang memungkinkan untuk distribusi kedua dan seterusnya. Komersialisasi pengembang (produsen handset khususnya) dapat memilih untuk meningkatkan platform tanpa harus memberikan perbaikan mereka ke masyarakat open source. Sebaliknya, pengembang dapat keuntungan dari perangkat tambahan seperti perbaikan dan mendistribusikan ulang pekerjaan mereka di bawah lisensi apapun yang mereka inginkan. Pengembang aplikasi Android diperbolehkan untuk mendistribusikan aplikasi mereka di bawah skema lisensi apapun yang mereka inginkan.<br />\r\nPengembang memiliki beberapa pilihan ketika membuat aplikasi yang berbasis android. Kebanyakan pengembang menggunakan Eclipse yang tersedia secara bebas untuk merancang dan mengembangkan aplikasi Android. Eclipse adalah IDE yang paling populer untuk pengembangan Android, karena memiliki Android plug-in yang tersedia untuk memfasilitasi pengembangan Android. Selain itu Eclipse juga mendapat dukungan langsung dari Google untuk menjadi IDE pengembangan aplikasi Android, ini terbukti dengan adanya penambahan plugins untuk eclipse untuk membuat project android dimana source software langsung dari situs resminya Google. Tetapi hal diatas tidak menutup kemungkinan untuk menggunakan IDE yang lain seperti Netbeans untuk melakukan pengembangan android.<br />\r\nAplikasi Android dapat dikembangkan pada sistem operasi berikut:<br />\r\n•	Windows XP Vista/Seven.<br />\r\n•	Mac OS X (Mac OS X 10.4.8 atau lebih baru.<br />\r\n•	Linux.<br />\r\n<br />\r\nThe Dalvik Virtual Machine (DVM)<br />\r\nSalah satu elemen kunci dari Android adalah Dalvik Virtual Machine (DVM). Android berjalan di dalam Dalvik Virtual Machine (DVM) bukan di Java Virtual Machine (JVM), sebenarnya banyak persamaannya dengan Java virtual machine (VM) seperti Java ME (Java Mobile Edition), tetapi Android menggunakan Virtual Machine sendiri yang menurut saya dikustomisasi dan dirancang untuk memastikan bahwa beberapa feature-feature berjalan lebih efisien pada perangkat mobile.<br />\r\nDalvik Virtual Machine(DVM) adalah “register bases” sementara Java Virtual Machine (JVM) adalah “stack based”, DVM didesain dan ditulis oleh Dan Bornsten dan beberapa engineers Google lainnya. Jadi bisa kita katakan “Dalvik equals(Java) == False”. Dalvik Virtual Machine menggunakan kernel Linux untuk menangani fungsionalitas tingkat rendah termasuk keamanan, threading, dan proses serta manajemen memori. Ini memungkinkan kita untuk menulis Aplikasi C / C + sama halnya seperti pada OS Linux kebanyakan. Meskipun dalam kenyataanya kita harus banyak memahami Arsitektur dan proses sistem dari kernel linux yang digunakan dalam Android tersebut.<br />\r\nSemua hardware yang berbasis Android dijalankan dengan menggunakan Virtual Machine untuk eksekusi aplikasi, pengembang  tidak perlu khawatir tentang implementasi perangkat keras tertentu. Dalvik Virtual Machine mengeksekusi executable file, sebuah format yang dioptimalkan untuk memastikan memori yang digunakan sangat kecil. The executable file diciptakan dengan mengubah kelas bahasa java dan dikompilasi menggunakan tools yang disediakan dalam SDK Android. <br />\r\n</p>',1324222630),(73,'d971d8bcb43192e60d86a0afc280f646','<p>Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia. Pada saat perilisan perdana Android, 5 November 2007, Android bersama Open Handset Alliance menyatakan mendukung pengembangan open source pada perangkat mobile. Di lain pihak, Google merilis kode–kode Android di bawah lisensi Apache, sebuah lisensi perangkat lunak dan open platform perangkat seluler. Di dunia ini terdapat dua jenis distributor sistem operasi Android. Pertama yang mendapat dukungan penuh dari Google atau Google Mail Services (GMS) dan kedua adalah yang benar–benar bebas distribusinya tanpa dukungan langsung Google atau dikenal sebagai Open Handset Distribution (OHD). Sekitar September 2007 Google mengenalkan Nexus One, salah satu jenis smartphone yang menggunakan Android sebagai sistem operasinya. Telepon seluler ini diproduksi oleh HTC Corporation dan tersedia di pasaran pada 5 Januari 2010).Pada 9 Desember 2008, diumumkan anggota baru yang bergabung dalam program kerja Android ARM Holdings, Atheros Communications, diproduksi oleh Asustek Computer Inc, Garmin Ltd, Softbank, Sony Ericsson, Toshiba Corp, dan Vodafone Group Plc. Seiring pembentukan Open Handset Alliance, OHA mengumumkan produk perdana mereka, Android, perangkat mobile yang merupakan modifikasi kernel Linux 2.6. Sejak Android dirilis telah dilakukan berbagai pembaruan berupa perbaikan bug dan penambahan fitur baru. Pasa masa saat ini kebanyakan vendor-vendor smartphone sudah memproduksi smart phone berbasis android, vendor-vendor itu antara lain HTC, Motorola, Samsung, LG, HKC, Huawei, Archos, Webstation Camangi, Dell, Nexus, SciPhone, WayteQ, Sony Ericsson, LG, Acer, Philips, T-Mobile,Nexian, IMO, Asus dan masih banyak lagi vendor smart phone didunia yang memproduksi android. Hal ini karena android itu adalah sistem operasi yang opens source sehingga bebas didistribusikan dan dipakai oleh vendor manapun.<br />\r\nTidak hanya menjadi sistem operasi di smartphone, saat ini Android menjadi pesaing utama dari Apple pada sistem operasi Table PC. Pesatnya pertumbuhan Android selain faktor yang disebutkan diatas adalah karena Android itu sendiri adalah platform yang sangat lengkap baik itu sistem operasinya, Aplikasi dan Tool Pengembangan, Market aplikasi android serta dukungan yang sangat tinggi dari komunitas Open Source di dunia, sehingga android terus berkembang pesat baik dari segi teknologi maupun dari segi jumlah device yang ada di dunia.<br />\r\n<br />\r\nAndroid: Platform Masa Depan<br />\r\nAndroid dipuji sebagai \"platform mobile pertama yang Lengkap, Terbuka , dan Bebas”. <br />\r\n•	Lengkap (Complete Platform): Para desainer dapat melakukan pendekatan yang komprehensif ketika mereka sedang mengembangkan platform Android. Android merupakan sistem operasi yang aman dan banyak menyediakan tools dalam membangun software  dan memungkinkan untuk peluang pengembangan aplikasi .<br />\r\n•	Terbuka (Open Source Platform): Platform Android disediakan melalui lisensi open source. Pengembang dapat dengan bebas untuk mengembangkan aplikasi.Android sendiri menggunakan Linux Kernel 2.6. <br />\r\n•	Free (Free Platform) : Android adalah platform/aplikasi yang bebas untuk develop.Tidak ada lisensi atau biaya royalti untuk dikembangkan pada platform Android. Tidak ada biaya keanggotaan diperlukan.Tidak diperlukan biaya pengujian. Tidak ada kontrak yang diperlukan. Android dapat didistribusikan dan diperdagangkan dalam bentuk apapun.<br />\r\n<br />\r\nAndroid merupakan generasi baru platform mobile, platform yang memberikan pengembang untuk melakukan pengembangan sesuai dengan yang diharapkannya. Sistem operasi yang mendasari Android dilisensikan di bawah GNU, General Public Lisensi Versi 2 (GPLv2), yang sering dikenal dengan istilah \"copyleft\" lisensi di mana setiap perbaikan pihak ketiga harus terus jatuh di bawah terms. Android didistribusikan di bawah Lisensi Apache Software (ASL/Apache2), yang memungkinkan untuk distribusi kedua dan seterusnya. Komersialisasi pengembang (produsen handset khususnya) dapat memilih untuk meningkatkan platform tanpa harus memberikan perbaikan mereka ke masyarakat open source. Sebaliknya, pengembang dapat keuntungan dari perangkat tambahan seperti perbaikan dan mendistribusikan ulang pekerjaan mereka di bawah lisensi apapun yang mereka inginkan. Pengembang aplikasi Android diperbolehkan untuk mendistribusikan aplikasi mereka di bawah skema lisensi apapun yang mereka inginkan.<br />\r\nPengembang memiliki beberapa pilihan ketika membuat aplikasi yang berbasis android. Kebanyakan pengembang menggunakan Eclipse yang tersedia secara bebas untuk merancang dan mengembangkan aplikasi Android. Eclipse adalah IDE yang paling populer untuk pengembangan Android, karena memiliki Android plug-in yang tersedia untuk memfasilitasi pengembangan Android. Selain itu Eclipse juga mendapat dukungan langsung dari Google untuk menjadi IDE pengembangan aplikasi Android, ini terbukti dengan adanya penambahan plugins untuk eclipse untuk membuat project android dimana source software langsung dari situs resminya Google. Tetapi hal diatas tidak menutup kemungkinan untuk menggunakan IDE yang lain seperti Netbeans untuk melakukan pengembangan android.<br />\r\nAplikasi Android dapat dikembangkan pada sistem operasi berikut:<br />\r\n•	Windows XP Vista/Seven.<br />\r\n•	Mac OS X (Mac OS X 10.4.8 atau lebih baru.<br />\r\n•	Linux.<br />\r\n<br />\r\nThe Dalvik Virtual Machine (DVM)<br />\r\nSalah satu elemen kunci dari Android adalah Dalvik Virtual Machine (DVM). Android berjalan di dalam Dalvik Virtual Machine (DVM) bukan di Java Virtual Machine (JVM), sebenarnya banyak persamaannya dengan Java virtual machine (VM) seperti Java ME (Java Mobile Edition), tetapi Android menggunakan Virtual Machine sendiri yang menurut saya dikustomisasi dan dirancang untuk memastikan bahwa beberapa feature-feature berjalan lebih efisien pada perangkat mobile.<br />\r\nDalvik Virtual Machine(DVM) adalah “register bases” sementara Java Virtual Machine (JVM) adalah “stack based”, DVM didesain dan ditulis oleh Dan Bornsten dan beberapa engineers Google lainnya. Jadi bisa kita katakan “Dalvik equals(Java) == False”. Dalvik Virtual Machine menggunakan kernel Linux untuk menangani fungsionalitas tingkat rendah termasuk keamanan, threading, dan proses serta manajemen memori. Ini memungkinkan kita untuk menulis Aplikasi C / C + sama halnya seperti pada OS Linux kebanyakan. Meskipun dalam kenyataanya kita harus banyak memahami Arsitektur dan proses sistem dari kernel linux yang digunakan dalam Android tersebut.<br />\r\nSemua hardware yang berbasis Android dijalankan dengan menggunakan Virtual Machine untuk eksekusi aplikasi, pengembang  tidak perlu khawatir tentang implementasi perangkat keras tertentu. Dalvik Virtual Machine mengeksekusi executable file, sebuah format yang dioptimalkan untuk memastikan memori yang digunakan sangat kecil. The executable file diciptakan dengan mengubah kelas bahasa java dan dikompilasi menggunakan tools yang disediakan dalam SDK Android. <br />\r\n</p>',1324222669),(74,'79c3e1cd613fb354ac90d825cf555c26','<p>Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.</p>',1324222712),(75,'f37f7ddb12488b6e0e1ae4cd7bade0f9','<p>Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.<br />\r\nPada saat perilisan perdana Android, 5 November 2007, Android bersama Open Handset Alliance menyatakan mendukung pengembangan open source pada perangkat mobile. Di lain pihak, Google merilis kode–kode Android di bawah lisensi Apache, sebuah lisensi perangkat lunak dan open platform perangkat seluler.</p>',1324222733),(76,'d57730084c5532817a496057f5c93c64','<p>Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.<br />\r\n<br />\r\nkdkdkdk<br />\r\nPada saat perilisan perdana Android, 5 November 2007, Android bersama Open Handset Alliance menyatakan mendukung pengembangan open source pada perangkat mobile. Di lain pihak, Google merilis kode–kode Android di bawah lisensi Apache, sebuah lisensi perangkat lunak dan open platform perangkat seluler.</p>',1324222752),(77,'c103060c4930e3804b9ce848849e5787','<p>Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.</p>\n\n<p>kdskjdskldsfkl</p>\n',1324222807),(78,'806493ca6b35f95e531ce2f5ea29065a','<p>Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.</p>\n\n<p>Pada saat perilisan perdana Android, 5 November 2007, Android bersama Open Handset Alliance menyatakan mendukung pengembangan open source pada perangkat mobile. Di lain pihak, Google merilis kode–kode Android di bawah lisensi Apache, sebuah lisensi perangkat lunak dan open platform perangkat seluler.</p>\n\n<p>kdskjdskldsfkl</p>\n',1324222827),(79,'1906c5815e592a67efefed32b1ba3444','<p>Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.</p>\n\n<p>Pada saat perilisan perdana Android, 5 November 2007, Android bersama Open Handset Alliance menyatakan mendukung pengembangan open source pada perangkat mobile. Di lain pihak, Google merilis kode–kode Android di bawah lisensi Apache, sebuah lisensi perangkat lunak dan open platform perangkat seluler.</p>\n\n<p>kdskjdskldsfkl</p>\n',1324222856),(80,'bd0cd6f54a9ee9829ab2a0c43f9ef787','<p>Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.</p>\n\n<p>kdskjdskldsfkl</p>\n',1324222871),(81,'a52928bf4e3a64e6570bef018307883a','<p>Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.\nPada saat perilisan perdana Android, 5 November 2007, Android bersama Open Handset Alliance menyatakan mendukung pengembangan open source pada perangkat mobile. Di lain pihak, Google merilis kode–kode Android di bawah lisensi Apache, sebuah lisensi perangkat lunak dan open platform perangkat seluler.\nDi dunia ini terdapat dua jenis distributor sistem operasi Android. Pertama yang mendapat dukungan penuh dari Google atau Google Mail Services (GMS) dan kedua adalah yang benar–benar bebas distribusinya tanpa dukungan langsung Google atau dikenal sebagai Open Handset Distribution (OHD).\nSekitar September 2007 Google mengenalkan Nexus One, salah satu jenis smartphone yang menggunakan Android sebagai sistem operasinya. Telepon seluler ini diproduksi oleh HTC Corporation dan tersedia di pasaran pada 5 Januari 2010).Pada 9 Desember 2008, diumumkan anggota baru yang bergabung dalam program kerja Android ARM Holdings, Atheros Communications, diproduksi oleh Asustek Computer Inc, Garmin Ltd, Softbank, Sony Ericsson, Toshiba Corp, dan Vodafone Group Plc. Seiring pembentukan Open Handset Alliance, OHA mengumumkan produk perdana mereka, Android, perangkat mobile yang merupakan modifikasi kernel Linux 2.6. Sejak Android dirilis telah dilakukan berbagai pembaruan berupa perbaikan bug dan penambahan fitur baru.\nPasa masa saat ini kebanyakan vendor-vendor smartphone sudah memproduksi smart phone berbasis android, vendor-vendor itu antara lain HTC, Motorola, Samsung, LG, HKC, Huawei, Archos, Webstation Camangi, Dell, Nexus, SciPhone, WayteQ, Sony Ericsson, LG, Acer, Philips, T-Mobile,Nexian, IMO, Asus dan masih banyak lagi vendor smart phone didunia yang memproduksi android. Hal ini karena android itu adalah sistem operasi yang opens source sehingga bebas didistribusikan dan dipakai oleh vendor manapun.\nTidak hanya menjadi sistem operasi di smartphone, saat ini Android menjadi pesaing utama dari Apple pada sistem operasi Table PC. Pesatnya pertumbuhan Android selain faktor yang disebutkan diatas adalah karena Android itu sendiri adalah platform yang sangat lengkap baik itu sistem operasinya, Aplikasi dan Tool Pengembangan, Market aplikasi android serta dukungan yang sangat tinggi dari komunitas Open Source di dunia, sehingga android terus berkembang pesat baik dari segi teknologi maupun dari segi jumlah device yang ada di dunia.</p>\n',1324223727),(82,'7937382f751d6313886b1659c879f209','<p>Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.</p>\n',1324223748),(83,'c532fc2f0f515d4241dbbf28fe8e8be7','<p>Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.\nPada saat perilisan perdana Android, 5 November 2007, Android bersama Open Handset Alliance menyatakan mendukung pengembangan open source pada perangkat mobile. Di lain pihak, Google merilis kode–kode Android di bawah lisensi Apache, sebuah lisensi perangkat lunak dan open platform perangkat seluler.\nDi dunia ini terdapat dua jenis distributor sistem operasi Android. Pertama yang mendapat dukungan penuh dari Google atau Google Mail Services (GMS) dan kedua adalah yang benar–benar bebas distribusinya tanpa dukungan langsung Google atau dikenal sebagai Open Handset Distribution (OHD).\nSekitar September 2007 Google mengenalkan Nexus One, salah satu jenis smartphone yang menggunakan Android sebagai sistem operasinya. Telepon seluler ini diproduksi oleh HTC Corporation dan tersedia di pasaran pada 5 Januari 2010).Pada 9 Desember 2008, diumumkan anggota baru yang bergabung dalam program kerja Android ARM Holdings, Atheros Communications, diproduksi oleh Asustek Computer Inc, Garmin Ltd, Softbank, Sony Ericsson, Toshiba Corp, dan Vodafone Group Plc. Seiring pembentukan Open Handset Alliance, OHA mengumumkan produk perdana mereka, Android, perangkat mobile yang merupakan modifikasi kernel Linux 2.6. Sejak Android dirilis telah dilakukan berbagai pembaruan berupa perbaikan bug dan penambahan fitur baru.\nPasa masa saat ini kebanyakan vendor-vendor smartphone sudah memproduksi smart phone berbasis android, vendor-vendor itu antara lain HTC, Motorola, Samsung, LG, HKC, Huawei, Archos, Webstation Camangi, Dell, Nexus, SciPhone, WayteQ, Sony Ericsson, LG, Acer, Philips, T-Mobile,Nexian, IMO, Asus dan masih banyak lagi vendor smart phone didunia yang memproduksi android. Hal ini karena android itu adalah sistem operasi yang opens source sehingga bebas didistribusikan dan dipakai oleh vendor manapun.\nTidak hanya menjadi sistem operasi di smartphone, saat ini Android menjadi pesaing utama dari Apple pada sistem operasi Table PC. Pesatnya pertumbuhan Android selain faktor yang disebutkan diatas adalah karena Android itu sendiri adalah platform yang sangat lengkap baik itu sistem operasinya, Aplikasi dan Tool Pengembangan, Market aplikasi android serta dukungan yang sangat tinggi dari komunitas Open Source di dunia, sehingga android terus berkembang pesat baik dari segi teknologi maupun dari segi jumlah device yang ada di dunia.</p>\n',1324223790),(84,'c964cff27dbc3c4832af4cdfe70336c3','<p>Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone.</p>\n',1324223817),(85,'0b87364a98c57ee23b8f33213abb91bb','<p>Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone.</p>\n\n<p>Pada saat perilisan data\n1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n11\n12\n13\n14\n15\n16</p>\n',1324223886),(86,'a9b3afd905dcab588147800d90e425b0','<p>Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone.</p>\n\n<p>Android dipuji sebagai \"platform mobile pertama yang Lengkap, Terbuka , dan Bebas”. \n1.• Lengkap (Complete Platform): Para desainer dapat melakukan pendekatan yang komprehensif ketika mereka sedang mengembangkan platform Android. Android merupakan sistem operasi yang aman dan banyak menyediakan tools dalam membangun software  dan memungkinkan untuk peluang pengembangan aplikasi .\n2\n3\n4\n5\n6\n7\n8\n9\n10\n11\n12\n13\n14\n15\n16</p>\n',1324223936),(87,'6579b377306d2f3fe1322aa8fd56dc47','<p>Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone.</p>\n\n<p>Android dipuji sebagai \"platform mobile pertama yang Lengkap, Terbuka , dan Bebas”. \n1.Lengkap (Complete Platform): Para desainer dapat melakukan pendekatan yang komprehensif ketika mereka sedang mengembangkan platform Android. Android merupakan sistem operasi yang aman dan banyak menyediakan tools dalam membangun software  dan memungkinkan untuk peluang pengembangan aplikasi .\n2\n3\n4\n5\n6\n7\n8\n9\n10\n11\n12\n13\n14\n15\n16</p>\n',1324223951),(88,'6c0dc96b986156e7a358412a7c2b3a45','<p>Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone.</p>\n\n<p>Android dipuji sebagai \"platform mobile pertama yang Lengkap, Terbuka , dan Bebas”. \n1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n11\n12\n13\n14\n15\n16</p>\n',1324223968),(89,'c9d10b2964ee4b00593bf8056fd5339d','<p>Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone.</p>\n\n<p>1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n11\n12\n13\n14\n15\n16</p>\n',1324277434),(90,'75a79acd447d970cefb61e09e8f56815','Salah satu elemen kunci dari Android adalah Dalvik Virtual Machine (DVM). Android berjalan di dalam Dalvik Virtual Machine (DVM) bukan di Java Virtual Machine (JVM), sebenarnya banyak persamaannya dengan Java virtual machine (VM) seperti Java ME (Java Mobile Edition), tetapi Android menggunakan Virtual Machine sendiri yang menurut saya dikustomisasi dan dirancang untuk memastikan bahwa beberapa feature-feature berjalan lebih efisien pada perangkat mobile.<br />\r\nDalvik Virtual Machine(DVM) adalah “register bases” sementara Java Virtual Machine (JVM) adalah “stack based”, DVM didesain dan ditulis oleh Dan Bornsten dan beberapa engineers Google lainnya. Jadi bisa kita katakan “Dalvik equals(Java) == False”. Dalvik Virtual Machine menggunakan kernel Linux untuk menangani fungsionalitas tingkat rendah termasuk keamanan, threading, dan proses serta manajemen memori. Ini memungkinkan kita untuk menulis Aplikasi C / C + sama halnya seperti pada OS Linux kebanyakan. Meskipun dalam kenyataanya kita harus banyak memahami Arsitektur dan proses sistem dari kernel linux yang digunakan dalam Android tersebut.<br />\r\nSemua hardware yang berbasis Android dijalankan dengan menggunakan Virtual Machine untuk eksekusi aplikasi, pengembang&nbsp; tidak perlu khawatir tentang implementasi perangkat keras tertentu. Dalvik Virtual Machine mengeksekusi executable file, sebuah format yang dioptimalkan untuk memastikan memori yang digunakan sangat kecil. The executable file diciptakan dengan mengubah kelas bahasa java dan dikompilasi menggunakan tools yang disediakan dalam SDK Android. <br />\r\n',1324224040),(91,'341ba0b19877c7755631d1014ec851b7','<p>Salah satu elemen kunci dari Android adalah Dalvik Virtual Machine (DVM). Android berjalan di dalam Dalvik Virtual Machine (DVM) bukan di Java Virtual Machine (JVM), sebenarnya banyak persamaannya dengan Java virtual machine (VM) seperti Java ME (Java Mobile Edition), tetapi Android menggunakan Virtual Machine sendiri yang menurut saya dikustomisasi dan dirancang untuk memastikan bahwa beberapa feature-feature berjalan lebih efisien pada perangkat mobile.<br />\r\nDalvik Virtual Machine(DVM) adalah “register bases” sementara Java Virtual Machine (JVM) adalah “stack based”, DVM didesain dan ditulis oleh Dan Bornsten dan beberapa engineers Google lainnya. Jadi bisa kita katakan “Dalvik equals(Java) == False”. Dalvik Virtual Machine menggunakan kernel Linux untuk menangani fungsionalitas tingkat rendah termasuk keamanan, threading, dan proses serta manajemen memori. Ini memungkinkan kita untuk menulis Aplikasi C / C + sama halnya seperti pada OS Linux kebanyakan. Meskipun dalam kenyataanya kita harus banyak memahami Arsitektur dan proses sistem dari kernel linux yang digunakan dalam Android tersebut.<br />\r\nSemua hardware yang berbasis Android dijalankan dengan menggunakan Virtual Machine untuk eksekusi aplikasi, pengembang  tidak perlu khawatir tentang implementasi perangkat keras tertentu. Dalvik Virtual Machine mengeksekusi executable file, sebuah format yang dioptimalkan untuk memastikan memori yang digunakan sangat kecil. The executable file diciptakan dengan mengubah kelas bahasa java dan dikompilasi menggunakan tools yang disediakan dalam SDK Android. <br />\r\n</p>',1324224112),(92,'40d2402822644b12fe8a57dde1ebf917','Salah satu elemen kunci dari Android adalah Dalvik Virtual Machine (DVM). Android berjalan di dalam Dalvik Virtual Machine (DVM) bukan di Java Virtual Machine (JVM), sebenarnya banyak persamaannya dengan Java virtual machine (VM) seperti Java ME (Java Mobile Edition), tetapi Android menggunakan Virtual Machine sendiri yang menurut saya dikustomisasi dan dirancang untuk memastikan bahwa beberapa feature-feature berjalan lebih efisien pada perangkat mobile.',1324224145),(93,'841e560662f3a2ee52215e48efbeefd3','Salah satu elemen kunci dari Android adalah Dalvik Virtual Machine (DVM). Android berjalan di dalam Dalvik Virtual Machine (DVM) bukan di Java Virtual Machine (JVM), sebenarnya banyak persamaannya dengan Java virtual machine (VM) seperti Java ME (Java Mobile Edition), tetapi Android menggunakan Virtual Machine sendiri yang menurut saya dikustomisasi dan dirancang untuk memastikan bahwa beberapa feature-feature berjalan lebih efisien pada perangkat mobile.<br />\r\n<br />\r\n1<br />\r\n2<br />\r\n3<br />\r\n4<br />\r\n5<br />\r\n6<br />\r\n7<br />\r\n8<br />\r\n9<br />\r\n10<br />\r\n11<br />\r\n12<br />\r\n13<br />\r\n14<br />\r\n15<br />\r\n16<br />\r\n17<br />\r\n18<br />\r\n19<br />\r\n20<br />\r\n',1324224178),(94,'2985c6d58d797f0d99181806a8e4d911',' untuk dapat melakukan devlopment android<br /> ',1324224276),(95,'09a719949bff3a5038a4fa2d5e3bcc2e','Adapun versi android yang sudah pernah dirilis adalah seperti berikut :<br />\r\nAndroid 1.5<br />\r\nAndroid 1.7<br />\r\nAndroid 2.0<br />\r\nAndroid 2.1<br />\r\nAndroid 2.2<br />\r\nAndroid 2.3<br />\r\nAndroid 2.3.1<br />\r\nAndroid 3.0<br />\r\n',1324224522),(96,'7d6f96d5145b23254c2b8fe4073902d5','Iphone adalah salah produk unggulan dari Apple Corp.',1324224794),(97,'178db2bd9e4dc209003250904d31b654','Dunia Tablet Computer',1324224866),(98,'ae134031ce940969cfd180215dce042a','Ipad adalah tablet unggulan dari Apple yang sangat banyak dijumpai oleh masyarakat dunia',1324224929),(99,'384f7d6f0f7bb68114427e9980802e89','<p>The default category for questions shared in context \'Mobile Programming\'.</p>',1324224985),(100,'0ba36f8ee77795bde2019d24825775d5','<p>Buatlah aplikasi client server berbasis android ataupun iphone dengan menggunakan database server mysql </p>',1324225511),(101,'6607cba0cc691511c83d568e376de8fc','<p>1. Apa yg anda ketehui dengan DVM android ?<br />2. Versi berapakah android yang berjalan di tablet ?<br /> </p>',1324225729),(102,'1500e8c0ebb161a3f1be74cd49083514','Worshop Training Ses I dilakukan 25 Februari 2012 ',1324226417),(103,'b58a5b550deb90fed75ae588b1badf20','Worshop Training Ses I dilakukan 25 Februari 2012 ',1324226421),(104,'8792a4ba589468d64248f13d3cbfd53e',' Worshop Training Ses I dilakukan 25 Februari 2012 ',1324226596),(105,'555284aee54a08ffc97520883f6b5d77',' Worshop Training Ses I dilakukan 25 Februari 2012 ',1324226599);

/*Table structure for table `mdl_capabilities` */

DROP TABLE IF EXISTS `mdl_capabilities`;

CREATE TABLE `mdl_capabilities` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `captype` varchar(50) NOT NULL DEFAULT '',
  `contextlevel` bigint(10) unsigned NOT NULL DEFAULT '0',
  `component` varchar(100) NOT NULL DEFAULT '',
  `riskbitmask` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_capa_nam_uix` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=231 DEFAULT CHARSET=utf8 COMMENT='this defines all capabilities';

/*Data for the table `mdl_capabilities` */

insert  into `mdl_capabilities`(`id`,`name`,`captype`,`contextlevel`,`component`,`riskbitmask`) values (1,'moodle/site:doanything','admin',10,'moodle',62),(2,'moodle/legacy:guest','legacy',10,'moodle',0),(3,'moodle/legacy:user','legacy',10,'moodle',0),(4,'moodle/legacy:student','legacy',10,'moodle',16),(5,'moodle/legacy:teacher','legacy',10,'moodle',24),(6,'moodle/legacy:editingteacher','legacy',10,'moodle',28),(7,'moodle/legacy:coursecreator','legacy',10,'moodle',28),(8,'moodle/legacy:admin','legacy',10,'moodle',62),(9,'moodle/site:config','write',10,'moodle',62),(10,'moodle/site:readallmessages','read',10,'moodle',8),(11,'moodle/site:sendmessage','write',10,'moodle',16),(12,'moodle/site:approvecourse','write',10,'moodle',4),(13,'moodle/site:import','write',50,'moodle',28),(14,'moodle/site:backup','write',50,'moodle',28),(15,'moodle/backup:userinfo','read',50,'moodle',8),(16,'moodle/site:restore','write',50,'moodle',28),(17,'moodle/restore:createuser','write',10,'moodle',24),(18,'moodle/restore:userinfo','write',50,'moodle',30),(19,'moodle/restore:rolldates','write',50,'moodle',0),(20,'moodle/site:manageblocks','write',80,'moodle',20),(21,'moodle/site:accessallgroups','read',50,'moodle',0),(22,'moodle/site:viewfullnames','read',50,'moodle',0),(23,'moodle/site:viewreports','read',50,'moodle',8),(24,'moodle/site:trustcontent','write',50,'moodle',4),(25,'moodle/site:uploadusers','write',10,'moodle',24),(26,'moodle/site:langeditmaster','write',10,'moodle',6),(27,'moodle/site:langeditlocal','write',10,'moodle',6),(28,'moodle/user:create','write',10,'moodle',24),(29,'moodle/user:delete','write',10,'moodle',8),(30,'moodle/user:update','write',10,'moodle',24),(31,'moodle/user:viewdetails','read',50,'moodle',0),(32,'moodle/user:viewhiddendetails','read',50,'moodle',8),(33,'moodle/user:loginas','write',50,'moodle',30),(34,'moodle/role:assign','write',50,'moodle',28),(35,'moodle/role:override','write',50,'moodle',28),(36,'moodle/role:safeoverride','write',50,'moodle',16),(37,'moodle/role:manage','write',10,'moodle',28),(38,'moodle/role:unassignself','write',50,'moodle',0),(39,'moodle/role:viewhiddenassigns','read',50,'moodle',0),(40,'moodle/role:switchroles','read',50,'moodle',12),(41,'moodle/category:manage','write',40,'moodle',4),(42,'moodle/category:viewhiddencategories','read',40,'moodle',0),(43,'moodle/course:create','write',40,'moodle',4),(44,'moodle/course:request','write',10,'moodle',0),(45,'moodle/course:delete','write',50,'moodle',32),(46,'moodle/course:update','write',50,'moodle',4),(47,'moodle/course:view','read',50,'moodle',0),(48,'moodle/course:bulkmessaging','write',50,'moodle',16),(49,'moodle/course:viewhiddenuserfields','read',50,'moodle',8),(50,'moodle/course:viewhiddencourses','read',50,'moodle',0),(51,'moodle/course:visibility','write',50,'moodle',0),(52,'moodle/course:managefiles','write',50,'moodle',4),(53,'moodle/course:manageactivities','write',50,'moodle',4),(54,'moodle/course:managemetacourse','write',50,'moodle',12),(55,'moodle/course:activityvisibility','write',50,'moodle',0),(56,'moodle/course:viewhiddenactivities','write',50,'moodle',0),(57,'moodle/course:viewparticipants','read',50,'moodle',0),(58,'moodle/course:changefullname','write',50,'moodle',4),(59,'moodle/course:changeshortname','write',50,'moodle',4),(60,'moodle/course:changeidnumber','write',50,'moodle',4),(61,'moodle/course:changecategory','write',50,'moodle',4),(62,'moodle/course:changesummary','write',50,'moodle',4),(63,'moodle/site:viewparticipants','read',10,'moodle',0),(64,'moodle/course:viewscales','read',50,'moodle',0),(65,'moodle/course:managescales','write',50,'moodle',0),(66,'moodle/course:managegroups','write',50,'moodle',0),(67,'moodle/course:reset','write',50,'moodle',32),(68,'moodle/blog:view','read',50,'moodle',0),(69,'moodle/blog:create','write',10,'moodle',16),(70,'moodle/blog:manageentries','write',50,'moodle',16),(71,'moodle/calendar:manageownentries','write',50,'moodle',16),(72,'moodle/calendar:managegroupentries','write',50,'moodle',16),(73,'moodle/calendar:manageentries','write',50,'moodle',16),(74,'moodle/user:editprofile','write',30,'moodle',24),(75,'moodle/user:editownprofile','write',10,'moodle',16),(76,'moodle/user:changeownpassword','write',10,'moodle',0),(77,'moodle/user:readuserposts','read',30,'moodle',0),(78,'moodle/user:readuserblogs','read',30,'moodle',0),(79,'moodle/user:viewuseractivitiesreport','read',30,'moodle',8),(80,'moodle/question:managecategory','write',50,'moodle',20),(81,'moodle/question:add','write',50,'moodle',20),(82,'moodle/question:editmine','write',50,'moodle',20),(83,'moodle/question:editall','write',50,'moodle',20),(84,'moodle/question:viewmine','read',50,'moodle',0),(85,'moodle/question:viewall','read',50,'moodle',0),(86,'moodle/question:usemine','read',50,'moodle',0),(87,'moodle/question:useall','read',50,'moodle',0),(88,'moodle/question:movemine','write',50,'moodle',0),(89,'moodle/question:moveall','write',50,'moodle',0),(90,'moodle/question:config','write',10,'moodle',2),(91,'moodle/site:doclinks','read',10,'moodle',0),(92,'moodle/course:sectionvisibility','write',50,'moodle',0),(93,'moodle/course:useremail','write',50,'moodle',0),(94,'moodle/course:viewhiddensections','write',50,'moodle',0),(95,'moodle/course:setcurrentsection','write',50,'moodle',0),(96,'moodle/site:mnetlogintoremote','read',10,'moodle',0),(97,'moodle/grade:viewall','read',50,'moodle',8),(98,'moodle/grade:view','read',50,'moodle',0),(99,'moodle/grade:viewhidden','read',50,'moodle',8),(100,'moodle/grade:import','write',50,'moodle',12),(101,'moodle/grade:export','read',50,'moodle',8),(102,'moodle/grade:manage','write',50,'moodle',12),(103,'moodle/grade:edit','write',50,'moodle',12),(104,'moodle/grade:manageoutcomes','write',50,'moodle',0),(105,'moodle/grade:manageletters','write',50,'moodle',0),(106,'moodle/grade:hide','write',50,'moodle',0),(107,'moodle/grade:lock','write',50,'moodle',0),(108,'moodle/grade:unlock','write',50,'moodle',0),(109,'moodle/my:manageblocks','write',10,'moodle',0),(110,'moodle/notes:view','read',50,'moodle',0),(111,'moodle/notes:manage','write',50,'moodle',16),(112,'moodle/tag:manage','write',10,'moodle',16),(113,'moodle/tag:create','write',10,'moodle',16),(114,'moodle/tag:edit','write',10,'moodle',16),(115,'moodle/tag:editblocks','write',10,'moodle',0),(116,'moodle/block:view','read',80,'moodle',0),(117,'mod/assignment:view','read',70,'mod/assignment',0),(118,'mod/assignment:submit','write',70,'mod/assignment',0),(119,'mod/assignment:grade','write',70,'mod/assignment',4),(120,'mod/chat:chat','write',70,'mod/chat',16),(121,'mod/chat:readlog','read',70,'mod/chat',0),(122,'mod/chat:deletelog','write',70,'mod/chat',0),(123,'mod/choice:choose','write',70,'mod/choice',0),(124,'mod/choice:readresponses','read',70,'mod/choice',0),(125,'mod/choice:deleteresponses','write',70,'mod/choice',0),(126,'mod/choice:downloadresponses','read',70,'mod/choice',0),(127,'mod/data:viewentry','read',70,'mod/data',0),(128,'mod/data:writeentry','write',70,'mod/data',16),(129,'mod/data:comment','write',70,'mod/data',16),(130,'mod/data:viewrating','read',70,'mod/data',0),(131,'mod/data:rate','write',70,'mod/data',0),(132,'mod/data:approve','write',70,'mod/data',16),(133,'mod/data:manageentries','write',70,'mod/data',16),(134,'mod/data:managecomments','write',70,'mod/data',16),(135,'mod/data:managetemplates','write',70,'mod/data',20),(136,'mod/data:viewalluserpresets','read',70,'mod/data',0),(137,'mod/data:manageuserpresets','write',70,'mod/data',20),(138,'mod/forum:viewdiscussion','read',70,'mod/forum',0),(139,'mod/forum:viewhiddentimedposts','read',70,'mod/forum',0),(140,'mod/forum:startdiscussion','write',70,'mod/forum',16),(141,'mod/forum:replypost','write',70,'mod/forum',16),(142,'mod/forum:addnews','write',70,'mod/forum',16),(143,'mod/forum:replynews','write',70,'mod/forum',16),(144,'mod/forum:viewrating','read',70,'mod/forum',0),(145,'mod/forum:viewanyrating','read',70,'mod/forum',0),(146,'mod/forum:rate','write',70,'mod/forum',0),(147,'mod/forum:createattachment','write',70,'mod/forum',16),(148,'mod/forum:deleteownpost','read',70,'mod/forum',0),(149,'mod/forum:deleteanypost','read',70,'mod/forum',0),(150,'mod/forum:splitdiscussions','read',70,'mod/forum',0),(151,'mod/forum:movediscussions','read',70,'mod/forum',0),(152,'mod/forum:editanypost','write',70,'mod/forum',16),(153,'mod/forum:viewqandawithoutposting','read',70,'mod/forum',0),(154,'mod/forum:viewsubscribers','read',70,'mod/forum',0),(155,'mod/forum:managesubscriptions','read',70,'mod/forum',16),(156,'mod/forum:initialsubscriptions','read',70,'mod/forum',0),(157,'mod/forum:throttlingapplies','write',70,'mod/forum',16),(158,'mod/glossary:write','write',70,'mod/glossary',16),(159,'mod/glossary:manageentries','write',70,'mod/glossary',16),(160,'mod/glossary:managecategories','write',70,'mod/glossary',16),(161,'mod/glossary:comment','write',70,'mod/glossary',16),(162,'mod/glossary:managecomments','write',70,'mod/glossary',16),(163,'mod/glossary:import','write',70,'mod/glossary',16),(164,'mod/glossary:export','read',70,'mod/glossary',0),(165,'mod/glossary:approve','write',70,'mod/glossary',16),(166,'mod/glossary:rate','write',70,'mod/glossary',0),(167,'mod/glossary:viewrating','read',70,'mod/glossary',0),(168,'mod/hotpot:attempt','read',70,'mod/hotpot',0),(169,'mod/hotpot:viewreport','read',70,'mod/hotpot',0),(170,'mod/hotpot:grade','read',70,'mod/hotpot',0),(171,'mod/hotpot:deleteattempt','read',70,'mod/hotpot',0),(172,'mod/lams:participate','write',70,'mod/lams',0),(173,'mod/lams:manage','write',70,'mod/lams',0),(174,'mod/lesson:edit','write',70,'mod/lesson',4),(175,'mod/lesson:manage','write',70,'mod/lesson',0),(176,'mod/quiz:view','read',70,'mod/quiz',0),(177,'mod/quiz:attempt','write',70,'mod/quiz',16),(178,'mod/quiz:reviewmyattempts','read',70,'mod/quiz',0),(179,'mod/quiz:manage','write',70,'mod/quiz',16),(180,'mod/quiz:preview','write',70,'mod/quiz',0),(181,'mod/quiz:grade','write',70,'mod/quiz',16),(182,'mod/quiz:viewreports','read',70,'mod/quiz',8),(183,'mod/quiz:deleteattempts','write',70,'mod/quiz',32),(184,'mod/quiz:ignoretimelimits','read',70,'mod/quiz',0),(185,'mod/quiz:emailconfirmsubmission','read',70,'mod/quiz',0),(186,'mod/quiz:emailnotifysubmission','read',70,'mod/quiz',0),(187,'mod/scorm:viewreport','read',70,'mod/scorm',0),(188,'mod/scorm:skipview','write',70,'mod/scorm',0),(189,'mod/scorm:savetrack','write',70,'mod/scorm',0),(190,'mod/scorm:viewscores','read',70,'mod/scorm',0),(191,'mod/scorm:deleteresponses','read',70,'mod/scorm',0),(192,'mod/survey:participate','read',70,'mod/survey',0),(193,'mod/survey:readresponses','read',70,'mod/survey',0),(194,'mod/survey:download','read',70,'mod/survey',0),(195,'mod/wiki:participate','write',70,'mod/wiki',16),(196,'mod/wiki:manage','write',70,'mod/wiki',16),(197,'mod/wiki:overridelock','write',70,'mod/wiki',0),(198,'mod/workshop:participate','write',70,'mod/workshop',16),(199,'mod/workshop:manage','write',70,'mod/workshop',16),(200,'block/online_users:viewlist','read',80,'block/online_users',0),(201,'block/rss_client:createprivatefeeds','write',80,'block/rss_client',0),(202,'block/rss_client:createsharedfeeds','write',80,'block/rss_client',16),(203,'block/rss_client:manageownfeeds','write',80,'block/rss_client',0),(204,'block/rss_client:manageanyfeeds','write',80,'block/rss_client',16),(205,'enrol/authorize:managepayments','write',10,'enrol/authorize',8),(206,'enrol/authorize:uploadcsv','write',10,'enrol/authorize',4),(207,'gradeexport/ods:view','read',50,'gradeexport/ods',8),(208,'gradeexport/ods:publish','read',50,'gradeexport/ods',8),(209,'gradeexport/txt:view','read',50,'gradeexport/txt',8),(210,'gradeexport/txt:publish','read',50,'gradeexport/txt',8),(211,'gradeexport/xls:view','read',50,'gradeexport/xls',8),(212,'gradeexport/xls:publish','read',50,'gradeexport/xls',8),(213,'gradeexport/xml:view','read',50,'gradeexport/xml',8),(214,'gradeexport/xml:publish','read',50,'gradeexport/xml',8),(215,'gradeimport/csv:view','write',50,'gradeimport/csv',0),(216,'gradeimport/xml:view','write',50,'gradeimport/xml',0),(217,'gradeimport/xml:publish','write',50,'gradeimport/xml',0),(218,'gradereport/grader:view','read',50,'gradereport/grader',8),(219,'gradereport/outcomes:view','read',50,'gradereport/outcomes',8),(220,'gradereport/overview:view','read',50,'gradereport/overview',8),(221,'gradereport/user:view','read',50,'gradereport/user',8),(222,'coursereport/log:view','read',50,'coursereport/log',8),(223,'coursereport/log:viewlive','read',50,'coursereport/log',8),(224,'coursereport/log:viewtoday','read',50,'coursereport/log',8),(225,'coursereport/outline:view','read',50,'coursereport/outline',8),(226,'coursereport/participation:view','read',50,'coursereport/participation',8),(227,'coursereport/stats:view','read',50,'coursereport/stats',8),(228,'report/courseoverview:view','read',10,'report/courseoverview',8),(229,'report/security:view','read',10,'report/security',2),(230,'report/unittest:view','read',10,'report/unittest',32);

/*Table structure for table `mdl_chat` */

DROP TABLE IF EXISTS `mdl_chat`;

CREATE TABLE `mdl_chat` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `keepdays` bigint(11) NOT NULL DEFAULT '0',
  `studentlogs` smallint(4) NOT NULL DEFAULT '0',
  `chattime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `schedule` smallint(4) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_chat_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Each of these is a chat room';

/*Data for the table `mdl_chat` */

/*Table structure for table `mdl_chat_messages` */

DROP TABLE IF EXISTS `mdl_chat_messages`;

CREATE TABLE `mdl_chat_messages` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `chatid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `system` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `timestamp` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_chatmess_use_ix` (`userid`),
  KEY `mdl_chatmess_gro_ix` (`groupid`),
  KEY `mdl_chatmess_timcha_ix` (`timestamp`,`chatid`),
  KEY `mdl_chatmess_cha_ix` (`chatid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all the actual chat messages';

/*Data for the table `mdl_chat_messages` */

/*Table structure for table `mdl_chat_users` */

DROP TABLE IF EXISTS `mdl_chat_users`;

CREATE TABLE `mdl_chat_users` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `chatid` bigint(11) NOT NULL DEFAULT '0',
  `userid` bigint(11) NOT NULL DEFAULT '0',
  `groupid` bigint(11) NOT NULL DEFAULT '0',
  `version` varchar(16) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `firstping` bigint(10) unsigned NOT NULL DEFAULT '0',
  `lastping` bigint(10) unsigned NOT NULL DEFAULT '0',
  `lastmessageping` bigint(10) unsigned NOT NULL DEFAULT '0',
  `sid` varchar(32) NOT NULL DEFAULT '',
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_chatuser_use_ix` (`userid`),
  KEY `mdl_chatuser_las_ix` (`lastping`),
  KEY `mdl_chatuser_gro_ix` (`groupid`),
  KEY `mdl_chatuser_cha_ix` (`chatid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Keeps track of which users are in which chat rooms';

/*Data for the table `mdl_chat_users` */

/*Table structure for table `mdl_choice` */

DROP TABLE IF EXISTS `mdl_choice`;

CREATE TABLE `mdl_choice` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `format` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `publish` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `showresults` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `display` smallint(4) unsigned NOT NULL DEFAULT '0',
  `allowupdate` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `showunanswered` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `limitanswers` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `timeopen` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timeclose` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_choi_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Available choices are stored here';

/*Data for the table `mdl_choice` */

/*Table structure for table `mdl_choice_answers` */

DROP TABLE IF EXISTS `mdl_choice_answers`;

CREATE TABLE `mdl_choice_answers` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `choiceid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `optionid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_choiansw_use_ix` (`userid`),
  KEY `mdl_choiansw_cho_ix` (`choiceid`),
  KEY `mdl_choiansw_opt_ix` (`optionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='choices performed by users';

/*Data for the table `mdl_choice_answers` */

/*Table structure for table `mdl_choice_options` */

DROP TABLE IF EXISTS `mdl_choice_options`;

CREATE TABLE `mdl_choice_options` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `choiceid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `text` text,
  `maxanswers` bigint(10) unsigned DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_choiopti_cho_ix` (`choiceid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='available options to choice';

/*Data for the table `mdl_choice_options` */

/*Table structure for table `mdl_config` */

DROP TABLE IF EXISTS `mdl_config`;

CREATE TABLE `mdl_config` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_conf_nam_uix` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=431 DEFAULT CHARSET=utf8 COMMENT='Moodle configuration variables';

/*Data for the table `mdl_config` */

insert  into `mdl_config`(`id`,`name`,`value`) values (1,'unicodedb','1'),(2,'statsrolesupgraded','1311276074'),(3,'auth','email'),(4,'auth_pop3mailbox','INBOX'),(5,'enrol','manual'),(6,'enrol_plugins_enabled','manual'),(7,'style','default'),(8,'template','default'),(9,'theme','wood'),(10,'filter_multilang_converted','1'),(428,'registerauth','email'),(12,'guestloginbutton','1'),(13,'alternateloginurl',''),(14,'forgottenpasswordurl',''),(15,'auth_instructions',''),(16,'allowemailaddresses',''),(17,'denyemailaddresses',''),(18,'verifychangedemail','1'),(19,'recaptchapublickey',''),(20,'recaptchaprivatekey',''),(21,'nodefaultuserrolelists','0'),(22,'autologinguests','0'),(23,'hiddenuserfields',''),(24,'allowuserswitchrolestheycantassign','0'),(25,'enablecourserequests','0'),(26,'courserequestnotify',''),(27,'timezone','99'),(28,'forcetimezone','99'),(29,'country','0'),(30,'geoipfile','C:\\xampp\\htdocs\\moodledata/geoip/GeoLiteCity.dat'),(31,'googlemapkey',''),(32,'autolang','1'),(33,'lang','en_utf8'),(34,'langmenu','1'),(35,'langlist',''),(36,'langcache','1'),(37,'locale',''),(38,'latinexcelexport','0'),(39,'cachetext','60'),(40,'filteruploadedfiles','0'),(41,'filtermatchoneperpage','0'),(42,'filtermatchonepertext','0'),(43,'filterall','0'),(44,'filter_multilang_force_old','0'),(45,'filter_mediaplugin_enable_mp3','1'),(46,'filter_mediaplugin_enable_swf','1'),(47,'filter_mediaplugin_enable_mov','1'),(48,'filter_mediaplugin_enable_wmv','1'),(49,'filter_mediaplugin_enable_mpg','1'),(50,'filter_mediaplugin_enable_avi','1'),(51,'filter_mediaplugin_enable_flv','1'),(52,'filter_mediaplugin_enable_ram','1'),(53,'filter_mediaplugin_enable_rpm','1'),(54,'filter_mediaplugin_enable_rm','1'),(55,'filter_mediaplugin_enable_youtube','1'),(56,'filter_mediaplugin_enable_ogg','1'),(57,'filter_mediaplugin_enable_ogv','1'),(58,'filter_tex_latexpreamble','\\usepackage[latin1]{inputenc}\n\\usepackage{amsmath}\n\\usepackage{amsfonts}\n\\RequirePackage{amsmath,amssymb,latexsym}\n'),(59,'filter_tex_latexbackground','#FFFFFF'),(60,'filter_tex_density','120'),(61,'filter_tex_pathlatex','\"c:\\texmf\\miktex\\bin\\latex.exe\" '),(62,'filter_tex_pathdvips','\"c:\\texmf\\miktex\\bin\\dvips.exe\" '),(63,'filter_tex_pathconvert','\"c:\\imagemagick\\convert.exe\" '),(64,'filter_tex_convertformat','gif'),(65,'filter_censor_badwords',''),(66,'protectusernames','1'),(67,'forcelogin','0'),(68,'forceloginforprofiles','1'),(69,'opentogoogle','0'),(70,'maxbytes','0'),(71,'messaging','1'),(72,'allowobjectembed','0'),(73,'enabletrusttext','0'),(74,'maxeditingtime','1800'),(75,'fullnamedisplay','language'),(76,'extendedusernamechars','0'),(77,'sitepolicy',''),(78,'bloglevel','4'),(79,'usetags','1'),(80,'keeptagnamecase','1'),(81,'profilesforenrolledusersonly','1'),(82,'cronclionly','0'),(83,'cronremotepassword',''),(84,'passwordpolicy','1'),(85,'minpasswordlength','8'),(86,'minpassworddigits','1'),(87,'minpasswordlower','1'),(88,'minpasswordupper','1'),(89,'minpasswordnonalphanum','1'),(90,'disableuserimages','0'),(91,'emailchangeconfirmation','1'),(92,'enablenotes','1'),(93,'loginhttps','0'),(94,'cookiesecure','0'),(95,'cookiehttponly','0'),(96,'regenloginsession','1'),(97,'excludeoldflashclients','10.0.12'),(98,'restrictmodulesfor','none'),(99,'restrictbydefault','0'),(100,'displayloginfailures',''),(101,'notifyloginfailures',''),(102,'notifyloginthreshold','10'),(103,'runclamonupload','0'),(104,'pathtoclam',''),(105,'quarantinedir',''),(106,'clamfailureonupload','donothing'),(107,'themelist',''),(108,'allowuserthemes','0'),(109,'allowcoursethemes','0'),(110,'allowcategorythemes','0'),(111,'allowuserblockhiding','1'),(112,'showblocksonmodpages','0'),(113,'hideactivitytypenavlink','0'),(114,'calendar_adminseesall','0'),(115,'calendar_site_timeformat','0'),(116,'calendar_startwday','0'),(117,'calendar_weekend','65'),(118,'calendar_lookahead','21'),(119,'calendar_maxevents','10'),(120,'enablecalendarexport','1'),(121,'calendar_exportsalt','XUTGyzTlMuYSp0ESLE3xblfokfVAD4TlWvEG4vB8NxXj8cON4k2asbivGO4m'),(122,'htmleditor','1'),(123,'editorbackgroundcolor','#ffffff'),(124,'editorfontfamily','Trebuchet MS,Verdana,Arial,Helvetica,sans-serif'),(125,'editorfontsize',''),(126,'editorfontlist','Trebuchet:Trebuchet MS,Verdana,Arial,Helvetica,sans-serif;Arial:arial,helvetica,sans-serif;Courier New:courier new,courier,monospace;Georgia:georgia,times new roman,times,serif;Tahoma:tahoma,arial,helvetica,sans-serif;Times New Roman:times new roman,times,serif;Verdana:verdana,arial,helvetica,sans-serif;Impact:impact;Wingdings:wingdings'),(127,'editorkillword','1'),(128,'editorhidebuttons',''),(129,'emoticons',':-){:}smiley{;}:){:}smiley{;}:-D{:}biggrin{;};-){:}wink{;}:-/{:}mixed{;}V-.{:}thoughtful{;}:-P{:}tongueout{;}B-){:}cool{;}^-){:}approve{;}8-){:}wideeyes{;}:o){:}clown{;}:-({:}sad{;}:({:}sad{;}8-.{:}shy{;}:-I{:}blush{;}:-X{:}kiss{;}8-o{:}surprise{;}P-|{:}blackeye{;}8-[{:}angry{;}xx-P{:}dead{;}|-.{:}sleepy{;}}-]{:}evil{;}(h){:}heart{;}(heart){:}heart{;}(y){:}yes{;}(n){:}no{;}(martin){:}martin{;}( ){:}egg'),(130,'formatstringstriptags','1'),(131,'docroot','http://docs.moodle.org'),(132,'doctonewwindow','0'),(133,'mymoodleredirect','0'),(134,'mycoursesperpage','21'),(135,'enableajax','1'),(136,'disablecourseajax','1'),(137,'gdversion','2'),(138,'zip',''),(139,'unzip',''),(140,'pathtodu',''),(141,'aspellpath',''),(142,'smtphosts',''),(143,'smtpuser',''),(144,'smtppass',''),(145,'smtpmaxbulk','1'),(146,'noreplyaddress','noreply@localhost'),(147,'digestmailtime','17'),(148,'sitemailcharset','0'),(149,'allowusermailcharset','0'),(150,'mailnewline','LF'),(151,'supportpage',''),(152,'dbsessions','0'),(153,'sessiontimeout','7200'),(154,'sessioncookie',''),(155,'sessioncookiepath','/'),(156,'sessioncookiedomain',''),(157,'enablerssfeeds','0'),(158,'debug','0'),(159,'debugdisplay','1'),(160,'xmlstrictheaders','0'),(161,'debugsmtp','0'),(162,'perfdebug','7'),(163,'enablestats','0'),(164,'statsfirstrun','none'),(165,'statsmaxruntime','0'),(166,'statsruntimedays','31'),(167,'statsruntimestarthour','0'),(168,'statsruntimestartminute','0'),(169,'statsuserthreshold','0'),(170,'statscatdepth','1'),(171,'framename','_top'),(172,'slasharguments','1'),(173,'getremoteaddrconf','0'),(174,'proxyhost',''),(175,'proxyport','0'),(176,'proxytype','HTTP'),(177,'proxyuser',''),(178,'proxypassword',''),(179,'longtimenosee','120'),(180,'deleteunconfirmed','168'),(181,'deleteincompleteusers','0'),(182,'loglifetime','0'),(183,'disablegradehistory','0'),(184,'gradehistorylifetime','0'),(185,'extramemorylimit','128M'),(186,'cachetype',''),(187,'rcache','0'),(188,'rcachettl','10'),(189,'intcachemax','10'),(190,'memcachedhosts',''),(191,'memcachedpconn','0'),(192,'enableglobalsearch','0'),(193,'smartpix','0'),(194,'enablehtmlpurifier','0'),(195,'enablegroupings','0'),(196,'experimentalsplitrestore','0'),(197,'enableimsccimport','0'),(198,'enablesafebrowserintegration','0'),(199,'mnet_dispatcher_mode','off'),(200,'mnet_localhost_id','1'),(201,'mnet_all_hosts_id','2'),(202,'version','2007101591.02'),(203,'release','1.9.11+ (Build: 20110420)'),(204,'assignment_type_online_version','2005042900'),(205,'hotpot_showtimes','0'),(206,'hotpot_excelencodings',''),(207,'hotpot_initialdisable','1'),(208,'journal_showrecentactivity','1'),(209,'journal_initialdisable','1'),(210,'lams_initialdisable','1'),(211,'quiz_review','16777215'),(212,'quiz_attemptonlast','0'),(213,'quiz_attempts','0'),(214,'quiz_grademethod',''),(215,'quiz_decimalpoints','2'),(216,'quiz_maximumgrade','10'),(217,'quiz_password',''),(218,'quiz_popup','0'),(219,'quiz_questionsperpage','0'),(220,'quiz_shuffleanswers','1'),(221,'quiz_shufflequestions','0'),(222,'quiz_subnet',''),(223,'quiz_timelimit','0'),(224,'quiz_optionflags','1'),(225,'quiz_penaltyscheme','1'),(226,'quiz_delay1','0'),(227,'quiz_delay2','0'),(228,'quiz_fix_review','0'),(229,'quiz_fix_attemptonlast','0'),(230,'quiz_fix_attempts','0'),(231,'quiz_fix_grademethod','0'),(232,'quiz_fix_decimalpoints','0'),(233,'quiz_fix_password','0'),(234,'quiz_fix_popup','0'),(235,'quiz_fix_questionsperpage','0'),(236,'quiz_fix_shuffleanswers','0'),(237,'quiz_fix_shufflequestions','0'),(238,'quiz_fix_subnet','0'),(239,'quiz_fix_timelimit','0'),(240,'quiz_fix_adaptive','0'),(241,'quiz_fix_penaltyscheme','0'),(242,'quiz_fix_delay1','0'),(243,'quiz_fix_delay2','0'),(244,'resource_hide_repository','1'),(245,'workshop_initialdisable','1'),(246,'qtype_calculated_version','2006032200'),(247,'qtype_essay_version','2006032200'),(248,'qtype_match_version','2006032200'),(249,'qtype_multianswer_version','2008050800'),(250,'qtype_multichoice_version','2007081700'),(251,'qtype_numerical_version','2006121500'),(252,'qtype_randomsamatch_version','2006042800'),(253,'qtype_shortanswer_version','2006032200'),(254,'qtype_truefalse_version','2006032200'),(255,'backup_version','2009111300'),(256,'backup_release','1.9.7'),(257,'blocks_version','2007081300'),(258,'enrol_authorize_version','2006112903'),(259,'enrol_paypal_version','2006092200'),(260,'gradeexport_ods_version','2007092701'),(261,'gradeexport_txt_version','2007092700'),(262,'gradeexport_xls_version','2007092700'),(263,'gradeexport_xml_version','2007092700'),(264,'gradeimport_csv_version','2007072500'),(265,'gradeimport_xml_version','2007092700'),(266,'gradereport_grader_version','2007091700'),(267,'gradereport_outcomes_version','2007073000'),(268,'gradereport_overview_version','2009022500'),(269,'gradereport_user_version','2007092500'),(270,'coursereport_log_version','2007101504'),(271,'coursereport_outline_version','2007101501'),(272,'coursereport_participation_version','2007101501'),(273,'coursereport_stats_version','2007101501'),(274,'report_courseoverview_version','2007101503'),(275,'report_security_version','2007101500'),(276,'report_unittest_version','2007101501'),(277,'adminblocks_initialised','1'),(278,'siteidentifier','KPLce5eUxsyb19u187UewGBRURIAAqLalocalhost'),(279,'rolesactive','1'),(280,'guestroleid','6'),(281,'creatornewroleid','3'),(282,'notloggedinroleid','6'),(283,'defaultuserroleid','7'),(284,'defaultcourseroleid','5'),(285,'nonmetacoursesyncroleids',''),(286,'defaultrequestcategory','1'),(287,'gradebookroles','5'),(288,'enableoutcomes','0'),(289,'grade_profilereport','user'),(290,'grade_aggregationposition','1'),(291,'grade_includescalesinaggregation','1'),(292,'grade_hiddenasdate','0'),(293,'gradepublishing','0'),(294,'grade_export_displaytype','1'),(295,'grade_export_decimalpoints','2'),(296,'grade_navmethod','0'),(297,'gradeexport',''),(298,'unlimitedgrades','0'),(299,'grade_hideforcedsettings','1'),(300,'grade_aggregation','11'),(301,'grade_aggregation_flag','0'),(302,'grade_aggregations_visible','0,10,11,12,2,4,6,8,13'),(303,'grade_aggregateonlygraded','1'),(304,'grade_aggregateonlygraded_flag','2'),(305,'grade_aggregateoutcomes','0'),(306,'grade_aggregateoutcomes_flag','2'),(307,'grade_aggregatesubcats','0'),(308,'grade_aggregatesubcats_flag','2'),(309,'grade_keephigh','0'),(310,'grade_keephigh_flag','3'),(311,'grade_droplow','0'),(312,'grade_droplow_flag','2'),(313,'grade_displaytype','1'),(314,'grade_decimalpoints','2'),(315,'grade_item_advanced','iteminfo,idnumber,gradepass,plusfactor,multfactor,display,decimals,hiddenuntil,locktime'),(316,'grade_report_studentsperpage','100'),(317,'grade_report_quickgrading','1'),(318,'grade_report_showquickfeedback','0'),(319,'grade_report_fixedstudents','0'),(320,'grade_report_meanselection','1'),(321,'grade_report_showcalculations','0'),(322,'grade_report_showeyecons','0'),(323,'grade_report_showaverages','1'),(324,'grade_report_showlocks','0'),(325,'grade_report_showranges','0'),(326,'grade_report_showuserimage','1'),(327,'grade_report_showuseridnumber','0'),(328,'grade_report_showactivityicons','1'),(329,'grade_report_shownumberofgrades','0'),(330,'grade_report_averagesdisplaytype','inherit'),(331,'grade_report_rangesdisplaytype','inherit'),(332,'grade_report_averagesdecimalpoints','inherit'),(333,'grade_report_rangesdecimalpoints','inherit'),(334,'grade_report_overview_showrank','0'),(335,'grade_report_overview_showtotalsifcontainhidden','0'),(336,'grade_report_user_showrank','0'),(337,'grade_report_user_showpercentage','2'),(338,'grade_report_user_showhiddenitems','1'),(339,'grade_report_user_showtotalsifcontainhidden','0'),(340,'assignment_maxbytes','1048576'),(341,'assignment_itemstocount','1'),(342,'assignment_showrecentsubmissions','1'),(343,'chat_method','header_js'),(344,'chat_refresh_userlist','10'),(345,'chat_old_ping','35'),(346,'chat_refresh_room','5'),(347,'chat_normal_updatemode','jsupdate'),(348,'chat_serverhost','localhost'),(349,'chat_serverip','127.0.0.1'),(350,'chat_serverport','9111'),(351,'chat_servermax','100'),(352,'data_enablerssfeeds','0'),(353,'forum_displaymode','-1'),(354,'forum_replytouser','1'),(355,'forum_shortpost','300'),(356,'forum_longpost','600'),(357,'forum_manydiscussions','100'),(358,'forum_maxbytes','512000'),(359,'forum_trackreadposts','1'),(360,'forum_oldpostdays','14'),(361,'forum_usermarksread','0'),(362,'forum_cleanreadtime','1'),(363,'forum_enablerssfeeds','0'),(364,'forum_enabletimedposts','0'),(365,'forum_logblocked','1'),(366,'forum_ajaxrating','0'),(367,'glossary_entbypage','10'),(368,'glossary_dupentries','0'),(369,'glossary_allowcomments','0'),(370,'glossary_linkbydefault','1'),(371,'glossary_defaultapproval','1'),(372,'glossary_enablerssfeeds','0'),(373,'glossary_linkentries','0'),(374,'glossary_casesensitive','0'),(375,'glossary_fullmatch','0'),(376,'lams_serverurl',''),(377,'lams_serverid',''),(378,'lams_serverkey',''),(379,'resource_framesize','130'),(380,'resource_websearch','http://google.com/'),(381,'resource_defaulturl','http://'),(382,'resource_secretphrase','x79cKFRr6bQd0bXZBQUT'),(383,'resource_popup',''),(384,'resource_popupresizable','checked'),(385,'resource_popupscrollbars','checked'),(386,'resource_popupdirectories','checked'),(387,'resource_popuplocation','checked'),(388,'resource_popupmenubar','checked'),(389,'resource_popuptoolbar','checked'),(390,'resource_popupstatus','checked'),(391,'resource_popupwidth','620'),(392,'resource_popupheight','450'),(393,'resource_autofilerename','1'),(394,'resource_blockdeletingfile','1'),(395,'scorm_grademethod','1'),(396,'scorm_maxgrade','100'),(397,'scorm_maxattempts','0'),(398,'scorm_whatgrade','0'),(399,'scorm_framewidth','100%'),(400,'scorm_frameheight','500'),(401,'scorm_popup','0'),(402,'scorm_resizable','0'),(403,'scorm_scrollbars','0'),(404,'scorm_directories','0'),(405,'scorm_location','0'),(406,'scorm_menubar','0'),(407,'scorm_toolbar','0'),(408,'scorm_status','0'),(409,'scorm_skipview','0'),(410,'scorm_hidebrowse','0'),(411,'scorm_hidetoc','0'),(412,'scorm_hidenav','0'),(413,'scorm_auto','0'),(414,'scorm_updatefreq','0'),(415,'block_course_list_adminview','all'),(416,'block_course_list_hideallcourseslink','0'),(417,'block_online_users_timetosee','5'),(418,'defaultallowedmodules',''),(419,'coursemanager','3'),(420,'frontpage','1'),(421,'frontpageloggedin','1'),(422,'maxcategorydepth','0'),(423,'coursesperpage','20'),(424,'allowvisiblecoursesinhiddencategories','0'),(425,'defaultfrontpageroleid','0'),(426,'supportname','Thio Pratama Putra Thio'),(427,'supportemail','tiodrenalin@gmail.com'),(429,'textfilters','filter/mediaplugin'),(430,'session_error_counter','1');

/*Table structure for table `mdl_config_plugins` */

DROP TABLE IF EXISTS `mdl_config_plugins`;

CREATE TABLE `mdl_config_plugins` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `plugin` varchar(100) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_confplug_plunam_uix` (`plugin`,`name`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='Moodle modules and plugins configuration variables';

/*Data for the table `mdl_config_plugins` */

insert  into `mdl_config_plugins`(`id`,`plugin`,`name`,`value`) values (1,'moodlecourse','format','weeks'),(2,'moodlecourse','numsections','10'),(3,'moodlecourse','hiddensections','0'),(4,'moodlecourse','newsitems','5'),(5,'moodlecourse','showgrades','1'),(6,'moodlecourse','showreports','0'),(7,'moodlecourse','maxbytes','67108864'),(8,'moodlecourse','metacourse','0'),(9,'qtype_random','selectmanual','0'),(10,'blocks/section_links','numsections1','22'),(11,'blocks/section_links','incby1','2'),(12,'blocks/section_links','numsections2','40'),(13,'blocks/section_links','incby2','5');

/*Table structure for table `mdl_context` */

DROP TABLE IF EXISTS `mdl_context`;

CREATE TABLE `mdl_context` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `contextlevel` bigint(10) unsigned NOT NULL DEFAULT '0',
  `instanceid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) DEFAULT NULL,
  `depth` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_cont_conins_uix` (`contextlevel`,`instanceid`),
  KEY `mdl_cont_ins_ix` (`instanceid`),
  KEY `mdl_cont_pat_ix` (`path`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 COMMENT='one of these must be set';

/*Data for the table `mdl_context` */

insert  into `mdl_context`(`id`,`contextlevel`,`instanceid`,`path`,`depth`) values (1,10,0,'/1',1),(2,50,1,'/1/2',2),(3,40,1,'/1/3',2),(4,80,1,'/1/2/4',3),(5,80,2,'/1/2/5',3),(6,80,3,'/1/2/6',3),(7,80,4,'/1/2/7',3),(8,80,5,'/1/8',2),(9,80,6,'/1/9',2),(10,50,2,'/1/3/10',3),(11,80,7,'/1/3/10/11',4),(12,80,8,'/1/3/10/12',4),(13,80,9,'/1/3/10/13',4),(14,80,10,'/1/3/10/14',4),(15,80,11,'/1/3/10/15',4),(16,80,12,'/1/3/10/16',4),(17,70,1,'/1/3/10/17',4),(18,80,13,'/1/3/10/18',4),(19,80,14,'/1/3/10/19',4),(20,50,3,'/1/3/20',3),(21,80,15,'/1/3/20/21',4),(22,80,16,'/1/3/20/22',4),(23,80,17,'/1/3/20/23',4),(24,80,18,'/1/3/20/24',4),(25,80,19,'/1/3/20/25',4),(26,80,20,'/1/3/20/26',4),(27,70,2,'/1/3/20/27',4),(28,80,21,'/1/3/20/28',4),(29,80,22,'/1/3/20/29',4),(62,70,17,'/1/3/20/62',4),(52,70,7,'/1/3/10/52',4),(32,50,4,'/1/3/32',3),(33,80,23,'/1/3/32/33',4),(34,80,24,'/1/3/32/34',4),(35,80,25,'/1/3/32/35',4),(36,80,26,'/1/3/32/36',4),(37,80,27,'/1/3/32/37',4),(38,80,28,'/1/3/32/38',4),(39,70,5,'/1/3/32/39',4),(40,80,29,'/1/3/32/40',4),(41,80,30,'/1/3/32/41',4),(42,50,5,'/1/3/42',3),(43,80,31,'/1/3/42/43',4),(44,80,32,'/1/3/42/44',4),(45,80,33,'/1/3/42/45',4),(46,80,34,'/1/3/42/46',4),(47,80,35,'/1/3/42/47',4),(48,80,36,'/1/3/42/48',4),(49,70,6,'/1/3/42/49',4),(50,80,37,'/1/3/42/50',4),(51,80,38,'/1/3/42/51',4),(53,70,8,'/1/3/10/53',4),(54,70,9,'/1/3/10/54',4),(55,70,10,'/1/3/10/55',4),(56,70,11,'/1/3/10/56',4),(57,70,12,'/1/3/10/57',4),(58,70,13,'/1/3/10/58',4),(59,70,14,'/1/3/10/59',4),(60,70,15,'/1/3/10/60',4),(61,70,16,'/1/3/10/61',4),(63,70,18,'/1/3/20/63',4),(64,70,19,'/1/3/20/64',4),(93,70,48,'/1/3/20/93',4),(66,70,21,'/1/3/20/66',4),(67,70,22,'/1/3/20/67',4),(68,70,23,'/1/3/20/68',4),(69,70,24,'/1/3/20/69',4),(70,70,25,'/1/3/20/70',4),(71,70,26,'/1/3/20/71',4),(72,70,27,'/1/3/20/72',4),(73,70,28,'/1/3/32/73',4),(102,70,57,'/1/3/42/102',4),(104,80,39,'/1/2/104',3),(76,70,31,'/1/3/32/76',4),(77,70,32,'/1/3/32/77',4),(78,70,33,'/1/3/32/78',4),(79,70,34,'/1/3/32/79',4),(80,70,35,'/1/3/32/80',4),(81,70,36,'/1/3/32/81',4),(82,70,37,'/1/3/42/82',4),(83,70,38,'/1/3/42/83',4),(84,70,39,'/1/3/42/84',4),(85,70,40,'/1/3/42/85',4),(86,70,41,'/1/3/42/86',4),(87,70,42,'/1/3/42/87',4),(88,70,43,'/1/3/32/88',4),(89,70,44,'/1/3/20/89',4),(90,70,45,'/1/3/20/90',4),(91,70,46,'/1/3/10/91',4),(92,70,47,'/1/3/10/92',4),(94,70,49,'/1/3/20/94',4),(106,80,40,'/1/2/106',3),(105,30,6,'/1/105',2),(101,70,56,'/1/3/32/101',4),(103,70,58,'/1/3/42/103',4),(107,70,59,'/1/2/107',3),(108,40,2,'/1/108',2),(109,70,60,'/1/3/10/109',4),(110,30,2,'/1/110',2),(111,30,9,'/1/111',2),(112,70,61,'/1/3/10/112',4),(113,30,7,'/1/113',2),(133,70,67,'/1/3/32/133',4),(126,70,64,'/1/3/32/126',4),(128,30,3,'/1/128',2),(134,70,68,'/1/3/32/134',4),(131,30,5,'/1/131',2),(132,70,66,'/1/3/32/132',4),(130,30,4,'/1/130',2),(129,30,10,'/1/129',2),(135,70,69,'/1/3/32/135',4),(136,70,70,'/1/3/32/136',4),(137,30,11,'/1/137',2),(138,70,71,'/1/3/32/138',4),(139,70,72,'/1/3/32/139',4),(140,70,73,'/1/3/32/140',4),(141,30,13,'/1/141',2),(142,80,49,'/1/142',2),(143,80,50,'/1/143',2);

/*Table structure for table `mdl_context_temp` */

DROP TABLE IF EXISTS `mdl_context_temp`;

CREATE TABLE `mdl_context_temp` (
  `id` bigint(10) unsigned NOT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `depth` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Used by build_context_path() in upgrade and cron to keep con';

/*Data for the table `mdl_context_temp` */

/*Table structure for table `mdl_course` */

DROP TABLE IF EXISTS `mdl_course`;

CREATE TABLE `mdl_course` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` bigint(10) unsigned NOT NULL DEFAULT '0',
  `sortorder` bigint(10) unsigned NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '',
  `fullname` varchar(254) NOT NULL DEFAULT '',
  `shortname` varchar(100) NOT NULL DEFAULT '',
  `idnumber` varchar(100) NOT NULL DEFAULT '',
  `summary` text,
  `format` varchar(10) NOT NULL DEFAULT 'topics',
  `showgrades` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `modinfo` longtext,
  `newsitems` mediumint(5) unsigned NOT NULL DEFAULT '1',
  `teacher` varchar(100) NOT NULL DEFAULT 'Teacher',
  `teachers` varchar(100) NOT NULL DEFAULT 'Teachers',
  `student` varchar(100) NOT NULL DEFAULT 'Student',
  `students` varchar(100) NOT NULL DEFAULT 'Students',
  `guest` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `startdate` bigint(10) unsigned NOT NULL DEFAULT '0',
  `enrolperiod` bigint(10) unsigned NOT NULL DEFAULT '0',
  `numsections` mediumint(5) unsigned NOT NULL DEFAULT '1',
  `marker` bigint(10) unsigned NOT NULL DEFAULT '0',
  `maxbytes` bigint(10) unsigned NOT NULL DEFAULT '0',
  `showreports` smallint(4) unsigned NOT NULL DEFAULT '0',
  `visible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hiddensections` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `groupmode` smallint(4) unsigned NOT NULL DEFAULT '0',
  `groupmodeforce` smallint(4) unsigned NOT NULL DEFAULT '0',
  `defaultgroupingid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(30) NOT NULL DEFAULT '',
  `theme` varchar(50) NOT NULL DEFAULT '',
  `cost` varchar(10) NOT NULL DEFAULT '',
  `currency` varchar(3) NOT NULL DEFAULT 'USD',
  `timecreated` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  `metacourse` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `requested` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `restrictmodules` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `expirynotify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `expirythreshold` bigint(10) unsigned NOT NULL DEFAULT '0',
  `notifystudents` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enrollable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enrolstartdate` bigint(10) unsigned NOT NULL DEFAULT '0',
  `enrolenddate` bigint(10) unsigned NOT NULL DEFAULT '0',
  `enrol` varchar(20) NOT NULL DEFAULT '',
  `defaultrole` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_cour_cat_ix` (`category`),
  KEY `mdl_cour_idn_ix` (`idnumber`),
  KEY `mdl_cour_sho_ix` (`shortname`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Central course table';

/*Data for the table `mdl_course` */

insert  into `mdl_course`(`id`,`category`,`sortorder`,`password`,`fullname`,`shortname`,`idnumber`,`summary`,`format`,`showgrades`,`modinfo`,`newsitems`,`teacher`,`teachers`,`student`,`students`,`guest`,`startdate`,`enrolperiod`,`numsections`,`marker`,`maxbytes`,`showreports`,`visible`,`hiddensections`,`groupmode`,`groupmodeforce`,`defaultgroupingid`,`lang`,`theme`,`cost`,`currency`,`timecreated`,`timemodified`,`metacourse`,`requested`,`restrictmodules`,`expirynotify`,`expirythreshold`,`notifystudents`,`enrollable`,`enrolstartdate`,`enrolenddate`,`enrol`,`defaultrole`) values (1,0,0,'','TIF-LEARNING','TIF','','','site',1,'a:1:{i:59;O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:2:\"cm\";i:59;s:3:\"mod\";s:5:\"forum\";s:7:\"section\";s:1:\"0\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:9:\"Site+news\";}}',3,'Teacher','Teachers','Student','Students',0,0,0,0,0,0,0,1,0,0,0,0,'','','','USD',0,1311276328,0,0,0,0,0,0,1,0,0,'',0),(2,1,100,'','Rekayasa Perangkat Lunak','RPL','RPL123',' Di Course ini kita akan membahas bagaimana kita merancang dan membangun sebuah perangkat lunak yang termanagement. ','topics',1,'a:15:{i:1;O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"1\";s:2:\"cm\";i:1;s:3:\"mod\";s:5:\"forum\";s:7:\"section\";s:1:\"0\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:10:\"News+forum\";}i:7;O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"3\";s:2:\"cm\";i:7;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:14:\"Pengertian+RPL\";}i:8;O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"4\";s:2:\"cm\";i:8;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:11:\"Sejarah+RPL\";}i:9;O:8:\"stdClass\":11:{s:2:\"id\";s:1:\"5\";s:2:\"cm\";i:9;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:9:\"f/pdf.gif\";s:4:\"name\";s:7:\"RPL+pdf\";}i:10;O:8:\"stdClass\":11:{s:2:\"id\";s:1:\"6\";s:2:\"cm\";i:10;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:9:\"f/pdf.gif\";s:4:\"name\";s:9:\"RPL+pdf_2\";}i:11;O:8:\"stdClass\":11:{s:2:\"id\";s:1:\"7\";s:2:\"cm\";i:11;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:10:\"f/word.gif\";s:4:\"name\";s:10:\"RPL+Ginger\";}i:12;O:8:\"stdClass\":11:{s:2:\"id\";s:1:\"8\";s:2:\"cm\";i:12;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:10:\"f/docx.gif\";s:4:\"name\";s:10:\"RPL+Bab+II\";}i:13;O:8:\"stdClass\":11:{s:2:\"id\";s:1:\"9\";s:2:\"cm\";i:13;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"2\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:16:\"f/powerpoint.gif\";s:4:\"name\";s:7:\"RPL+PPT\";}i:14;O:8:\"stdClass\":11:{s:2:\"id\";s:2:\"10\";s:2:\"cm\";i:14;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"2\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:16:\"f/powerpoint.gif\";s:4:\"name\";s:12:\"RPL+PPT+ke+2\";}i:15;O:8:\"stdClass\":11:{s:2:\"id\";s:2:\"11\";s:2:\"cm\";i:15;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"2\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:11:\"f/video.gif\";s:4:\"name\";s:9:\"RPL+Movie\";}i:16;O:8:\"stdClass\":11:{s:2:\"id\";s:2:\"12\";s:2:\"cm\";i:16;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"2\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:11:\"f/video.gif\";s:4:\"name\";s:14:\"RPL+Movie+ke+2\";}i:46;O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:2:\"cm\";i:46;s:3:\"mod\";s:10:\"assignment\";s:7:\"section\";s:1:\"2\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:11:\"Tugas+RPL-1\";}i:47;O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"6\";s:2:\"cm\";i:47;s:3:\"mod\";s:10:\"assignment\";s:7:\"section\";s:1:\"2\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:19:\"Tugas+RPL+Offline-1\";}i:60;O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"1\";s:2:\"cm\";i:60;s:3:\"mod\";s:4:\"quiz\";s:7:\"section\";s:1:\"2\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:13:\"QUIZ+1+RPL%60\";}i:61;O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"7\";s:2:\"cm\";i:61;s:3:\"mod\";s:10:\"assignment\";s:7:\"section\";s:1:\"2\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:12:\"TUGAS++3+RPL\";}}',5,'Teacher','Teachers','Student','Students',0,1311436800,0,10,0,67108864,0,1,0,0,0,0,'','','','USD',1311431983,1312653165,0,0,0,0,864000,0,1,0,0,'',0),(3,1,99,'','Pemrogram Berorientasi Objek','PBO','PBO234',' Pada Course ini kita akan membahas bagaimana membuat sebuah perangkat lunak yang berorientasikan Objek. ','topics',1,'a:15:{i:2;O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"2\";s:2:\"cm\";i:2;s:3:\"mod\";s:5:\"forum\";s:7:\"section\";s:1:\"0\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:10:\"News+forum\";}i:17;O:8:\"stdClass\":11:{s:2:\"id\";s:2:\"13\";s:2:\"cm\";i:17;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:11:\"f/video.gif\";s:4:\"name\";s:11:\"PBO+Movie-1\";}i:18;O:8:\"stdClass\":11:{s:2:\"id\";s:2:\"14\";s:2:\"cm\";i:18;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:11:\"f/video.gif\";s:4:\"name\";s:11:\"PBO+Movie-2\";}i:19;O:8:\"stdClass\":10:{s:2:\"id\";s:2:\"15\";s:2:\"cm\";i:19;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:14:\"Pengertian+PBO\";}i:21;O:8:\"stdClass\":11:{s:2:\"id\";s:2:\"17\";s:2:\"cm\";i:21;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:10:\"f/docx.gif\";s:4:\"name\";s:10:\"PBO+WORD-1\";}i:22;O:8:\"stdClass\":11:{s:2:\"id\";s:2:\"18\";s:2:\"cm\";i:22;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:10:\"f/docx.gif\";s:4:\"name\";s:10:\"PBO+WORD-2\";}i:48;O:8:\"stdClass\":10:{s:2:\"id\";s:2:\"38\";s:2:\"cm\";i:48;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:15:\"Dasar-dasar+PBO\";}i:49;O:8:\"stdClass\":10:{s:2:\"id\";s:2:\"39\";s:2:\"cm\";i:49;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:5:\"Objek\";}i:23;O:8:\"stdClass\":11:{s:2:\"id\";s:2:\"19\";s:2:\"cm\";i:23;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"2\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:9:\"f/pdf.gif\";s:4:\"name\";s:9:\"PBO+PDF-1\";}i:24;O:8:\"stdClass\":11:{s:2:\"id\";s:2:\"20\";s:2:\"cm\";i:24;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"2\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:9:\"f/pdf.gif\";s:4:\"name\";s:9:\"PBO+PDF-2\";}i:25;O:8:\"stdClass\":11:{s:2:\"id\";s:2:\"21\";s:2:\"cm\";i:25;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"2\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:9:\"f/pdf.gif\";s:4:\"name\";s:9:\"PBO+PDF-3\";}i:26;O:8:\"stdClass\":11:{s:2:\"id\";s:2:\"22\";s:2:\"cm\";i:26;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"2\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:16:\"f/powerpoint.gif\";s:4:\"name\";s:9:\"PBO+PPT-1\";}i:27;O:8:\"stdClass\":11:{s:2:\"id\";s:2:\"23\";s:2:\"cm\";i:27;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"2\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:10:\"f/pptx.gif\";s:4:\"name\";s:9:\"PBO+PPT-2\";}i:44;O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"3\";s:2:\"cm\";i:44;s:3:\"mod\";s:10:\"assignment\";s:7:\"section\";s:1:\"2\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:19:\"Tugas+PBO+Offline-1\";}i:45;O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"4\";s:2:\"cm\";i:45;s:3:\"mod\";s:10:\"assignment\";s:7:\"section\";s:1:\"2\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:11:\"Tugas+PBO-2\";}}',5,'Teacher','Teachers','Student','Students',0,1311436800,0,10,0,67108864,0,1,0,0,0,0,'','','','USD',1311432437,1312653544,0,0,0,0,864000,0,1,0,0,'',0),(4,1,98,'','Mobile Programming','MP','MP345',' Course ini akan membahas dan mengupas tuntas tentang Mobile Programming ','topics',1,'a:19:{i:5;O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"3\";s:2:\"cm\";i:5;s:3:\"mod\";s:5:\"forum\";s:7:\"section\";s:1:\"0\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:10:\"News+forum\";}i:72;O:8:\"stdClass\":11:{s:2:\"id\";s:2:\"56\";s:2:\"cm\";i:72;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"0\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:10:\"f/word.gif\";s:4:\"name\";s:23:\"Paper+Iphone+Arsitektur\";}i:73;O:8:\"stdClass\":11:{s:2:\"id\";s:2:\"57\";s:2:\"cm\";i:73;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"0\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:10:\"f/word.gif\";s:4:\"name\";s:23:\"Paper+Iphone+Arsitektur\";}i:28;O:8:\"stdClass\":10:{s:2:\"id\";s:2:\"24\";s:2:\"cm\";i:28;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:18:\"Pengenalan+Android\";}i:31;O:8:\"stdClass\":11:{s:2:\"id\";s:2:\"27\";s:2:\"cm\";i:31;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:11:\"f/video.gif\";s:4:\"name\";s:10:\"MP+Movie-1\";}i:32;O:8:\"stdClass\":11:{s:2:\"id\";s:2:\"28\";s:2:\"cm\";i:32;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:11:\"f/video.gif\";s:4:\"name\";s:10:\"MP+Movie-2\";}i:33;O:8:\"stdClass\":11:{s:2:\"id\";s:2:\"29\";s:2:\"cm\";i:33;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:10:\"f/docx.gif\";s:4:\"name\";s:9:\"MP+Word-1\";}i:34;O:8:\"stdClass\":11:{s:2:\"id\";s:2:\"30\";s:2:\"cm\";i:34;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:10:\"f/docx.gif\";s:4:\"name\";s:9:\"MP+Word-2\";}i:56;O:8:\"stdClass\":10:{s:2:\"id\";s:2:\"46\";s:2:\"cm\";i:56;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:36:\"The+Dalvik+Virtual+Machine+%28DVM%29\";}i:64;O:8:\"stdClass\":10:{s:2:\"id\";s:2:\"50\";s:2:\"cm\";i:64;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:303:\"onclick%3D%22this.target%3D%27resource50%27%3B+return+openpopup%28%27%2Fmod%2Fresource%2Fview.php%3Finpopup%3Dtrue%26amp%3Bid%3D64%27%2C%27resource50%27%2C%27resizable%3D1%2Cscrollbars%3D1%2Cdirectories%3D1%2Clocation%3D1%2Cmenubar%3D1%2Ctoolbar%3D1%2Cstatus%3D1%2Cwidth%3D620%2Cheight%3D450%27%29%3B%22\";s:4:\"name\";s:18:\"Arsitektur+Android\";}i:66;O:8:\"stdClass\":10:{s:2:\"id\";s:2:\"52\";s:2:\"cm\";i:66;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:13:\"Versi+Android\";}i:67;O:8:\"stdClass\":10:{s:2:\"id\";s:2:\"53\";s:2:\"cm\";i:67;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:22:\"IPhone+Devlopment+Apps\";}i:68;O:8:\"stdClass\":10:{s:2:\"id\";s:2:\"54\";s:2:\"cm\";i:68;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:29:\"Tablet+Devlopment+Application\";}i:69;O:8:\"stdClass\":10:{s:2:\"id\";s:2:\"55\";s:2:\"cm\";i:69;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:27:\"Ipad+Devlopment+Application\";}i:70;O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"8\";s:2:\"cm\";i:70;s:3:\"mod\";s:10:\"assignment\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:9:\"Tugas+UTS\";}i:71;O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"9\";s:2:\"cm\";i:71;s:3:\"mod\";s:10:\"assignment\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:9:\"Tugas+MID\";}i:35;O:8:\"stdClass\":11:{s:2:\"id\";s:2:\"31\";s:2:\"cm\";i:35;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"2\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:9:\"f/pdf.gif\";s:4:\"name\";s:8:\"MP+Pdf-1\";}i:36;O:8:\"stdClass\":11:{s:2:\"id\";s:2:\"32\";s:2:\"cm\";i:36;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"2\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:9:\"f/pdf.gif\";s:4:\"name\";s:8:\"MP+Pdf-2\";}i:43;O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"2\";s:2:\"cm\";i:43;s:3:\"mod\";s:10:\"assignment\";s:7:\"section\";s:1:\"2\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:10:\"Tugas+MP-1\";}}',5,'Teacher','Teachers','Student','Students',0,1311436800,0,10,0,67108864,0,1,0,0,0,0,'','','','USD',1311433361,1312653579,0,0,0,0,864000,0,1,0,0,'',0),(5,1,97,'','Sistem Informasi','Si','Si456',' Sistem informasi merupakan sebuah Bidang yang mengkaji tentang bagaimana sebuah informasi dapat terdistribusi dengan sebuah sistem yang dirancang. ','topics',1,'a:9:{i:6;O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"4\";s:2:\"cm\";i:6;s:3:\"mod\";s:5:\"forum\";s:7:\"section\";s:1:\"0\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:10:\"News+forum\";}i:37;O:8:\"stdClass\":10:{s:2:\"id\";s:2:\"33\";s:2:\"cm\";i:37;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:27:\"Pengertian+Sistem+Informasi\";}i:38;O:8:\"stdClass\":10:{s:2:\"id\";s:2:\"34\";s:2:\"cm\";i:38;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:9:\"Konsep+SI\";}i:39;O:8:\"stdClass\":11:{s:2:\"id\";s:2:\"35\";s:2:\"cm\";i:39;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:9:\"f/pdf.gif\";s:4:\"name\";s:8:\"SI+Pdf-1\";}i:40;O:8:\"stdClass\":11:{s:2:\"id\";s:2:\"36\";s:2:\"cm\";i:40;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:10:\"f/docx.gif\";s:4:\"name\";s:9:\"SI+Word-1\";}i:41;O:8:\"stdClass\":11:{s:2:\"id\";s:2:\"37\";s:2:\"cm\";i:41;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"icon\";s:11:\"f/video.gif\";s:4:\"name\";s:10:\"SI+Movie-1\";}i:42;O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"1\";s:2:\"cm\";i:42;s:3:\"mod\";s:10:\"assignment\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:10:\"Tugas+SI-1\";}i:57;O:8:\"stdClass\":10:{s:2:\"id\";s:2:\"47\";s:2:\"cm\";i:57;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:16:\"metode+waterfall\";}i:58;O:8:\"stdClass\":10:{s:2:\"id\";s:2:\"48\";s:2:\"cm\";i:58;s:3:\"mod\";s:8:\"resource\";s:7:\"section\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:9:\"groupmode\";s:1:\"0\";s:10:\"groupingid\";s:1:\"0\";s:16:\"groupmembersonly\";s:1:\"0\";s:5:\"extra\";s:0:\"\";s:4:\"name\";s:5:\"Fuzzy\";}}',5,'Teacher','Teachers','Student','Students',0,1311436800,0,10,0,67108864,0,1,0,0,0,0,'','','','USD',1311433591,1313696800,0,0,0,0,864000,0,1,0,0,'',0);

/*Table structure for table `mdl_course_allowed_modules` */

DROP TABLE IF EXISTS `mdl_course_allowed_modules`;

CREATE TABLE `mdl_course_allowed_modules` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `module` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_courallomodu_cou_ix` (`course`),
  KEY `mdl_courallomodu_mod_ix` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='allowed modules foreach course';

/*Data for the table `mdl_course_allowed_modules` */

/*Table structure for table `mdl_course_categories` */

DROP TABLE IF EXISTS `mdl_course_categories`;

CREATE TABLE `mdl_course_categories` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `parent` bigint(10) unsigned NOT NULL DEFAULT '0',
  `sortorder` bigint(10) unsigned NOT NULL DEFAULT '0',
  `coursecount` bigint(10) unsigned NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  `depth` bigint(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `theme` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_courcate_par_ix` (`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Course categories';

/*Data for the table `mdl_course_categories` */

insert  into `mdl_course_categories`(`id`,`name`,`description`,`parent`,`sortorder`,`coursecount`,`visible`,`timemodified`,`depth`,`path`,`theme`) values (1,'Teknik Informatika','',0,0,4,1,0,1,'/1',NULL),(2,'Agama','',0,999,0,1,0,1,'/2',NULL);

/*Table structure for table `mdl_course_display` */

DROP TABLE IF EXISTS `mdl_course_display`;

CREATE TABLE `mdl_course_display` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `display` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_courdisp_couuse_ix` (`course`,`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='Stores info about how to display the course';

/*Data for the table `mdl_course_display` */

insert  into `mdl_course_display`(`id`,`course`,`userid`,`display`) values (1,2,2,0),(2,3,2,0),(3,2,3,0),(4,4,2,1),(5,5,2,0),(6,5,3,0),(7,4,3,0),(8,4,4,0),(9,3,4,0),(10,2,4,0),(11,4,5,0),(12,5,5,0),(13,2,6,0),(14,3,8,0),(15,4,7,0),(16,5,9,0),(17,5,10,0),(18,4,10,0),(19,3,10,0),(20,2,10,0),(21,5,11,0),(22,4,11,0),(23,6,2,1),(24,2,5,0),(25,3,3,0),(26,4,12,0);

/*Table structure for table `mdl_course_meta` */

DROP TABLE IF EXISTS `mdl_course_meta`;

CREATE TABLE `mdl_course_meta` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `child_course` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_courmeta_par_ix` (`parent_course`),
  KEY `mdl_courmeta_chi_ix` (`child_course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='to store meta-courses relations';

/*Data for the table `mdl_course_meta` */

/*Table structure for table `mdl_course_modules` */

DROP TABLE IF EXISTS `mdl_course_modules`;

CREATE TABLE `mdl_course_modules` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `module` bigint(10) unsigned NOT NULL DEFAULT '0',
  `instance` bigint(10) unsigned NOT NULL DEFAULT '0',
  `section` bigint(10) unsigned NOT NULL DEFAULT '0',
  `idnumber` varchar(100) DEFAULT NULL,
  `added` bigint(10) unsigned NOT NULL DEFAULT '0',
  `score` smallint(4) NOT NULL DEFAULT '0',
  `indent` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `visibleold` tinyint(1) NOT NULL DEFAULT '1',
  `groupmode` smallint(4) NOT NULL DEFAULT '0',
  `groupingid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `groupmembersonly` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_courmodu_vis_ix` (`visible`),
  KEY `mdl_courmodu_cou_ix` (`course`),
  KEY `mdl_courmodu_mod_ix` (`module`),
  KEY `mdl_courmodu_ins_ix` (`instance`),
  KEY `mdl_courmodu_idncou_ix` (`idnumber`,`course`),
  KEY `mdl_courmodu_gro_ix` (`groupingid`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='course_modules table retrofitted from MySQL';

/*Data for the table `mdl_course_modules` */

insert  into `mdl_course_modules`(`id`,`course`,`module`,`instance`,`section`,`idnumber`,`added`,`score`,`indent`,`visible`,`visibleold`,`groupmode`,`groupingid`,`groupmembersonly`) values (1,2,5,1,1,NULL,1311431990,0,0,1,1,0,0,0),(2,3,5,2,13,NULL,1311432450,0,0,1,1,0,0,0),(17,3,13,13,14,'',1311438974,0,0,1,1,0,0,0),(7,2,13,3,2,'',1311435876,0,0,1,1,0,0,0),(5,4,5,3,24,NULL,1311433391,0,0,1,1,0,0,0),(6,5,5,4,35,NULL,1311433598,0,0,1,1,0,0,0),(8,2,13,4,2,'',1311435912,0,0,1,1,0,0,0),(9,2,13,5,2,'',1311436952,0,0,1,1,0,0,0),(10,2,13,6,2,'',1311436987,0,0,1,1,0,0,0),(11,2,13,7,2,'',1311437029,0,0,1,1,0,0,0),(12,2,13,8,2,'',1311437060,0,0,1,1,0,0,0),(13,2,13,9,3,'',1311437106,0,0,1,1,0,0,0),(14,2,13,10,3,'',1311437134,0,0,1,1,0,0,0),(15,2,13,11,3,'',1311437162,0,0,1,1,0,0,0),(16,2,13,12,3,'',1311437189,0,0,1,1,0,0,0),(18,3,13,14,14,'',1311439017,0,0,1,1,0,0,0),(19,3,13,15,14,'',1311439106,0,0,1,1,0,0,0),(48,3,13,38,14,'',1311605169,0,0,1,1,0,0,0),(21,3,13,17,14,'',1311440089,0,0,1,1,0,0,0),(22,3,13,18,14,'',1311440154,0,0,1,1,0,0,0),(23,3,13,19,15,'',1311440218,0,0,1,1,0,0,0),(24,3,13,20,15,'',1311440246,0,0,1,1,0,0,0),(25,3,13,21,15,'',1311440271,0,0,1,1,0,0,0),(26,3,13,22,15,'',1311440293,0,0,1,1,0,0,0),(27,3,13,23,15,'',1311440320,0,0,1,1,0,0,0),(28,4,13,24,25,'',1311447185,0,0,1,1,0,0,0),(57,5,13,47,36,'',1311615837,0,0,1,1,0,0,0),(59,1,5,5,12,NULL,1312650735,0,0,1,1,0,0,0),(31,4,13,27,25,'',1311449145,0,0,1,1,0,0,0),(32,4,13,28,25,'',1311449174,0,0,1,1,0,0,0),(33,4,13,29,25,'',1311449210,0,0,1,1,0,0,0),(34,4,13,30,25,'',1311449231,0,0,1,1,0,0,0),(35,4,13,31,26,'',1311449259,0,0,1,1,0,0,0),(36,4,13,32,26,'',1311449282,0,0,1,1,0,0,0),(37,5,13,33,36,'',1311449416,0,0,1,1,0,0,0),(38,5,13,34,36,'',1311449529,0,0,1,1,0,0,0),(39,5,13,35,36,'',1311449756,0,0,1,1,0,0,0),(40,5,13,36,36,'',1311449787,0,0,1,1,0,0,0),(41,5,13,37,36,'',1311449837,0,0,1,1,0,0,0),(42,5,1,1,36,'',1311450806,0,0,1,1,0,0,0),(43,4,1,2,26,'',1311450946,0,0,1,1,0,0,0),(44,3,1,3,15,'',1311451100,0,0,1,1,0,0,0),(45,3,1,4,15,'',1311451543,0,0,1,1,0,0,0),(46,2,1,5,3,'',1311451628,0,0,1,1,0,0,0),(47,2,1,6,3,'',1311451689,0,0,1,1,0,0,0),(49,3,13,39,14,'',1311606287,0,0,1,1,0,0,0),(60,2,12,1,3,'',1312654284,0,0,1,1,0,0,0),(56,4,13,46,25,'',1311615653,0,0,1,1,0,0,0),(58,5,13,48,36,'',1311615878,0,0,1,1,0,0,0),(61,2,1,7,3,'',1313862445,0,0,1,1,0,0,0),(67,4,13,53,25,'',1324224794,0,0,1,1,0,0,0),(64,4,13,50,25,'',1322017205,0,0,1,1,0,0,0),(66,4,13,52,25,'',1324224438,0,0,1,1,0,0,0),(68,4,13,54,25,'',1324224866,0,0,1,1,0,0,0),(69,4,13,55,25,'',1324224929,0,0,1,1,0,0,0),(70,4,1,8,25,'',1324225481,0,0,1,1,0,0,0),(71,4,1,9,25,'',1324225729,0,0,1,1,0,0,0),(72,4,13,56,24,'',1324226137,0,0,1,1,0,0,0),(73,4,13,57,24,'',1324226141,0,0,1,1,0,0,0);

/*Table structure for table `mdl_course_request` */

DROP TABLE IF EXISTS `mdl_course_request`;

CREATE TABLE `mdl_course_request` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(254) NOT NULL DEFAULT '',
  `shortname` varchar(15) NOT NULL DEFAULT '',
  `summary` text NOT NULL,
  `reason` text NOT NULL,
  `requester` bigint(10) unsigned NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_courrequ_sho_ix` (`shortname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='course requests';

/*Data for the table `mdl_course_request` */

/*Table structure for table `mdl_course_sections` */

DROP TABLE IF EXISTS `mdl_course_sections`;

CREATE TABLE `mdl_course_sections` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `section` bigint(10) unsigned NOT NULL DEFAULT '0',
  `summary` text,
  `sequence` text,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl_coursect_cousec_ix` (`course`,`section`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='to define the sections for each course';

/*Data for the table `mdl_course_sections` */

insert  into `mdl_course_sections`(`id`,`course`,`section`,`summary`,`sequence`,`visible`) values (1,2,0,NULL,'1',1),(2,2,1,'','7,8,9,10,11,12',1),(3,2,2,'','13,14,15,16,46,47,60,61',1),(4,2,3,'',NULL,1),(5,2,4,'',NULL,1),(6,2,5,'',NULL,1),(7,2,6,'',NULL,1),(8,2,7,'',NULL,1),(9,2,8,'',NULL,1),(10,2,9,'',NULL,1),(11,2,10,'',NULL,1),(12,1,0,'','59',1),(13,3,0,NULL,'2',1),(14,3,1,'','17,18,19,21,22,48,49',1),(15,3,2,'','23,24,25,26,27,44,45',1),(16,3,3,'',NULL,1),(17,3,4,'',NULL,1),(18,3,5,'',NULL,1),(19,3,6,'',NULL,1),(20,3,7,'',NULL,1),(21,3,8,'',NULL,1),(22,3,9,'',NULL,1),(23,3,10,'',NULL,1),(24,4,0,NULL,'5,72,73',1),(25,4,1,'','28,31,32,33,34,56,64,66,67,68,69,70,71',1),(26,4,2,'','35,36,43',1),(27,4,3,'','',1),(28,4,4,'',NULL,1),(29,4,5,'',NULL,1),(30,4,6,'',NULL,1),(31,4,7,'',NULL,1),(32,4,8,'',NULL,1),(33,4,9,'',NULL,1),(34,4,10,'',NULL,1),(35,5,0,NULL,'6',1),(36,5,1,'','37,38,39,40,41,42,57,58',1),(37,5,2,'',NULL,1),(38,5,3,'',NULL,1),(39,5,4,'',NULL,1),(40,5,5,'',NULL,1),(41,5,6,'',NULL,1),(42,5,7,'',NULL,1),(43,5,8,'',NULL,1),(44,5,9,'',NULL,1),(45,5,10,'',NULL,1);

/*Table structure for table `mdl_data` */

DROP TABLE IF EXISTS `mdl_data`;

CREATE TABLE `mdl_data` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `comments` smallint(4) unsigned NOT NULL DEFAULT '0',
  `timeavailablefrom` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timeavailableto` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timeviewfrom` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timeviewto` bigint(10) unsigned NOT NULL DEFAULT '0',
  `requiredentries` int(8) unsigned NOT NULL DEFAULT '0',
  `requiredentriestoview` int(8) unsigned NOT NULL DEFAULT '0',
  `maxentries` int(8) unsigned NOT NULL DEFAULT '0',
  `rssarticles` smallint(4) unsigned NOT NULL DEFAULT '0',
  `singletemplate` text,
  `listtemplate` text,
  `listtemplateheader` text,
  `listtemplatefooter` text,
  `addtemplate` text,
  `rsstemplate` text,
  `rsstitletemplate` text,
  `csstemplate` text,
  `jstemplate` text,
  `asearchtemplate` text,
  `approval` smallint(4) unsigned NOT NULL DEFAULT '0',
  `scale` bigint(10) NOT NULL DEFAULT '0',
  `assessed` bigint(10) unsigned NOT NULL DEFAULT '0',
  `defaultsort` bigint(10) unsigned NOT NULL DEFAULT '0',
  `defaultsortdir` smallint(4) unsigned NOT NULL DEFAULT '0',
  `editany` smallint(4) unsigned NOT NULL DEFAULT '0',
  `notification` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_data_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='all database activities';

/*Data for the table `mdl_data` */

/*Table structure for table `mdl_data_comments` */

DROP TABLE IF EXISTS `mdl_data_comments`;

CREATE TABLE `mdl_data_comments` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `recordid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `format` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `created` bigint(10) unsigned NOT NULL DEFAULT '0',
  `modified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_datacomm_rec_ix` (`recordid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='to comment data records';

/*Data for the table `mdl_data_comments` */

/*Table structure for table `mdl_data_content` */

DROP TABLE IF EXISTS `mdl_data_content`;

CREATE TABLE `mdl_data_content` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `fieldid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `recordid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `content` longtext,
  `content1` longtext,
  `content2` longtext,
  `content3` longtext,
  `content4` longtext,
  PRIMARY KEY (`id`),
  KEY `mdl_datacont_rec_ix` (`recordid`),
  KEY `mdl_datacont_fie_ix` (`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='the content introduced in each record/fields';

/*Data for the table `mdl_data_content` */

/*Table structure for table `mdl_data_fields` */

DROP TABLE IF EXISTS `mdl_data_fields`;

CREATE TABLE `mdl_data_fields` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `dataid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `param1` text,
  `param2` text,
  `param3` text,
  `param4` text,
  `param5` text,
  `param6` text,
  `param7` text,
  `param8` text,
  `param9` text,
  `param10` text,
  PRIMARY KEY (`id`),
  KEY `mdl_datafiel_typdat_ix` (`type`,`dataid`),
  KEY `mdl_datafiel_dat_ix` (`dataid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='every field available';

/*Data for the table `mdl_data_fields` */

/*Table structure for table `mdl_data_ratings` */

DROP TABLE IF EXISTS `mdl_data_ratings`;

CREATE TABLE `mdl_data_ratings` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `recordid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `rating` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_datarati_rec_ix` (`recordid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='to rate data records';

/*Data for the table `mdl_data_ratings` */

/*Table structure for table `mdl_data_records` */

DROP TABLE IF EXISTS `mdl_data_records`;

CREATE TABLE `mdl_data_records` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `groupid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `dataid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timecreated` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  `approved` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_datareco_dat_ix` (`dataid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='every record introduced';

/*Data for the table `mdl_data_records` */

/*Table structure for table `mdl_enrol_authorize` */

DROP TABLE IF EXISTS `mdl_enrol_authorize`;

CREATE TABLE `mdl_enrol_authorize` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `paymentmethod` enum('cc','echeck') NOT NULL DEFAULT 'cc',
  `refundinfo` smallint(4) unsigned NOT NULL DEFAULT '0',
  `ccname` varchar(255) NOT NULL DEFAULT '',
  `courseid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `transid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `status` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timecreated` bigint(10) unsigned NOT NULL DEFAULT '0',
  `settletime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `amount` varchar(10) NOT NULL DEFAULT '',
  `currency` varchar(3) NOT NULL DEFAULT 'USD',
  PRIMARY KEY (`id`),
  KEY `mdl_enroauth_cou_ix` (`courseid`),
  KEY `mdl_enroauth_use_ix` (`userid`),
  KEY `mdl_enroauth_sta_ix` (`status`),
  KEY `mdl_enroauth_tra_ix` (`transid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Holds all known information about authorize.net transactions';

/*Data for the table `mdl_enrol_authorize` */

/*Table structure for table `mdl_enrol_authorize_refunds` */

DROP TABLE IF EXISTS `mdl_enrol_authorize_refunds`;

CREATE TABLE `mdl_enrol_authorize_refunds` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `amount` varchar(10) NOT NULL DEFAULT '',
  `transid` bigint(20) unsigned DEFAULT '0',
  `settletime` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_enroauthrefu_tra_ix` (`transid`),
  KEY `mdl_enroauthrefu_ord_ix` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Authorize.net refunds';

/*Data for the table `mdl_enrol_authorize_refunds` */

/*Table structure for table `mdl_enrol_paypal` */

DROP TABLE IF EXISTS `mdl_enrol_paypal`;

CREATE TABLE `mdl_enrol_paypal` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `business` varchar(255) NOT NULL DEFAULT '',
  `receiver_email` varchar(255) NOT NULL DEFAULT '',
  `receiver_id` varchar(255) NOT NULL DEFAULT '',
  `item_name` varchar(255) NOT NULL DEFAULT '',
  `courseid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `memo` varchar(255) NOT NULL DEFAULT '',
  `tax` varchar(255) NOT NULL DEFAULT '',
  `option_name1` varchar(255) NOT NULL DEFAULT '',
  `option_selection1_x` varchar(255) NOT NULL DEFAULT '',
  `option_name2` varchar(255) NOT NULL DEFAULT '',
  `option_selection2_x` varchar(255) NOT NULL DEFAULT '',
  `payment_status` varchar(255) NOT NULL DEFAULT '',
  `pending_reason` varchar(255) NOT NULL DEFAULT '',
  `reason_code` varchar(30) NOT NULL DEFAULT '',
  `txn_id` varchar(255) NOT NULL DEFAULT '',
  `parent_txn_id` varchar(255) NOT NULL DEFAULT '',
  `payment_type` varchar(30) NOT NULL DEFAULT '',
  `timeupdated` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Holds all known information about PayPal transactions';

/*Data for the table `mdl_enrol_paypal` */

/*Table structure for table `mdl_event` */

DROP TABLE IF EXISTS `mdl_event`;

CREATE TABLE `mdl_event` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `format` smallint(4) unsigned NOT NULL DEFAULT '0',
  `courseid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `groupid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `repeatid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `modulename` varchar(20) NOT NULL DEFAULT '',
  `instance` bigint(10) unsigned NOT NULL DEFAULT '0',
  `eventtype` varchar(20) NOT NULL DEFAULT '',
  `timestart` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timeduration` bigint(10) unsigned NOT NULL DEFAULT '0',
  `visible` smallint(4) NOT NULL DEFAULT '1',
  `uuid` varchar(36) NOT NULL DEFAULT '',
  `sequence` bigint(10) unsigned NOT NULL DEFAULT '1',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_even_cou_ix` (`courseid`),
  KEY `mdl_even_use_ix` (`userid`),
  KEY `mdl_even_tim_ix` (`timestart`),
  KEY `mdl_even_tim2_ix` (`timeduration`),
  KEY `mdl_even_grocouvisuse_ix` (`groupid`,`courseid`,`visible`,`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='For everything with a time associated to it';

/*Data for the table `mdl_event` */

insert  into `mdl_event`(`id`,`name`,`description`,`format`,`courseid`,`groupid`,`userid`,`repeatid`,`modulename`,`instance`,`eventtype`,`timestart`,`timeduration`,`visible`,`uuid`,`sequence`,`timemodified`) values (1,'Tugas SI-1','1. Sebutkan Pengertian Sistem Informasi ?<br />2. Apa yang dimaksud dengan Sistem ?<br />3. Apa pengertian Informasi ?<br /> ',0,5,0,0,0,'assignment',1,'due',1312055400,0,1,'',1,1311450806),(2,'Tugas MP-1','1. Jelaskan Pengertian Mobile Programming ?<br />2. Apakah Android dan J2ME termasuk Mobile Programming ?<br />3. Sebutkan Alasan Mobile Programming begitu berkembang saat ini ?<br /> ',0,4,0,0,0,'assignment',2,'due',1312055400,0,1,'',1,1311450946),(3,'Tugas PBO Offline-1',' 1. Sebutkan Konsep PBO ?\r\n 2. Apa Kepanjanga PBO ?\r\n 3. Apa Pengertian PBO ?',0,3,0,0,0,'assignment',3,'due',1312055700,0,1,'',1,1311608267),(4,'Tugas PBO-2',' 1. Buatlah 1 buah Inheritence ?\r\n 2. Buatlah sebuah konstruktor ?\r\n 3. Buat lah sebuah Objek ?',0,3,0,0,0,'assignment',4,'due',1312056000,0,1,'',1,1311608401),(5,'Tugas RPL-1',' 1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?\r\n1. Jelaskan Kegunaan kita belajar RPL ?\r\n 2. Apa kepanjangan RPL ?',0,2,0,0,0,'assignment',5,'due',1312056300,0,1,'',1,1313826799),(6,'Tugas RPL Offline-1','1. Semeter berapakah kita belajar RPL di TIF UIN ?<br />2. Apa syarat Matkul RP: ?<br /> ',0,2,0,0,0,'assignment',6,'due',1312056300,0,1,'',1,1311451689),(7,'TUGAS  3 RPL','1. APAKAh kita bisa berjalan diatas air ?\r\n2. Siapakan nama ibu anda ?',0,2,0,0,0,'assignment',7,'due',1314467100,0,1,'',1,1313862445),(8,'Tugas UTS','Buatlah aplikasi client server berbasis android ataupun iphone dengan menggunakan database server mysql ',0,4,0,0,0,'assignment',8,'due',1324830000,0,1,'',1,1324225481),(9,'Tugas MID','1. Apa yg anda ketehui dengan DVM android ?<br />2. Versi berapakah android yang berjalan di tablet ?<br /> ',0,4,0,0,0,'assignment',9,'due',1324830300,0,1,'',1,1324225729);

/*Table structure for table `mdl_events_handlers` */

DROP TABLE IF EXISTS `mdl_events_handlers`;

CREATE TABLE `mdl_events_handlers` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `eventname` varchar(166) NOT NULL DEFAULT '',
  `handlermodule` varchar(166) NOT NULL DEFAULT '',
  `handlerfile` varchar(255) NOT NULL DEFAULT '',
  `handlerfunction` mediumtext,
  `schedule` varchar(255) DEFAULT NULL,
  `status` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_evenhand_evehan_uix` (`eventname`,`handlermodule`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='This table is for storing which components requests what typ';

/*Data for the table `mdl_events_handlers` */

/*Table structure for table `mdl_events_queue` */

DROP TABLE IF EXISTS `mdl_events_queue`;

CREATE TABLE `mdl_events_queue` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `eventdata` longtext NOT NULL,
  `stackdump` mediumtext,
  `userid` bigint(10) unsigned DEFAULT NULL,
  `timecreated` bigint(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_evenqueu_use_ix` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='This table is for storing queued events. It stores only one ';

/*Data for the table `mdl_events_queue` */

/*Table structure for table `mdl_events_queue_handlers` */

DROP TABLE IF EXISTS `mdl_events_queue_handlers`;

CREATE TABLE `mdl_events_queue_handlers` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `queuedeventid` bigint(10) unsigned NOT NULL,
  `handlerid` bigint(10) unsigned NOT NULL,
  `status` bigint(10) DEFAULT NULL,
  `errormessage` mediumtext,
  `timemodified` bigint(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_evenqueuhand_que_ix` (`queuedeventid`),
  KEY `mdl_evenqueuhand_han_ix` (`handlerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='This is the list of queued handlers for processing. The even';

/*Data for the table `mdl_events_queue_handlers` */

/*Table structure for table `mdl_forum` */

DROP TABLE IF EXISTS `mdl_forum`;

CREATE TABLE `mdl_forum` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `type` enum('single','news','general','social','eachuser','teacher','qanda') NOT NULL DEFAULT 'general',
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `assessed` bigint(10) unsigned NOT NULL DEFAULT '0',
  `assesstimestart` bigint(10) unsigned NOT NULL DEFAULT '0',
  `assesstimefinish` bigint(10) unsigned NOT NULL DEFAULT '0',
  `scale` bigint(10) NOT NULL DEFAULT '0',
  `maxbytes` bigint(10) unsigned NOT NULL DEFAULT '0',
  `forcesubscribe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `trackingtype` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `rsstype` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `rssarticles` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  `warnafter` bigint(10) unsigned NOT NULL DEFAULT '0',
  `blockafter` bigint(10) unsigned NOT NULL DEFAULT '0',
  `blockperiod` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_foru_cou_ix` (`course`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Forums contain and structure discussion';

/*Data for the table `mdl_forum` */

insert  into `mdl_forum`(`id`,`course`,`type`,`name`,`intro`,`assessed`,`assesstimestart`,`assesstimefinish`,`scale`,`maxbytes`,`forcesubscribe`,`trackingtype`,`rsstype`,`rssarticles`,`timemodified`,`warnafter`,`blockafter`,`blockperiod`) values (1,2,'news','News forum','General news and announcements',0,0,0,1,0,1,1,0,0,1311431990,0,0,0),(2,3,'news','News forum','General news and announcements',0,0,0,1,0,1,1,0,0,1311432450,0,0,0),(3,4,'news','News forum','General news and announcements',0,0,0,1,0,1,1,0,0,1311433391,0,0,0),(4,5,'news','News forum','General news and announcements',0,0,0,1,0,1,1,0,0,1311433598,0,0,0),(5,1,'news','Site news','General news and announcements',0,0,0,0,0,0,1,0,0,1312650735,0,0,0);

/*Table structure for table `mdl_forum_discussions` */

DROP TABLE IF EXISTS `mdl_forum_discussions`;

CREATE TABLE `mdl_forum_discussions` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `forum` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `firstpost` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '-1',
  `assessed` tinyint(1) NOT NULL DEFAULT '1',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  `usermodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timestart` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timeend` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_forudisc_use_ix` (`userid`),
  KEY `mdl_forudisc_for_ix` (`forum`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Forums are composed of discussions';

/*Data for the table `mdl_forum_discussions` */

insert  into `mdl_forum_discussions`(`id`,`course`,`forum`,`name`,`firstpost`,`userid`,`groupid`,`assessed`,`timemodified`,`usermodified`,`timestart`,`timeend`) values (1,1,5,'Berita RPL',1,2,-1,1,1312660003,2,0,0),(2,1,5,'BERITA PBO',2,2,-1,1,1312660752,2,0,0),(3,4,3,'PEMBERITAHUAN',4,7,-1,1,1312704520,7,0,0),(4,4,3,'Android Devlopment',5,7,-1,1,1322016107,7,0,0),(5,1,5,'WORKSHOP en TRAINING ANDROID',6,2,-1,1,1324226499,2,0,0),(6,1,5,'Seminar WebApps',7,2,-1,1,1324226635,2,0,0);

/*Table structure for table `mdl_forum_posts` */

DROP TABLE IF EXISTS `mdl_forum_posts`;

CREATE TABLE `mdl_forum_posts` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `discussion` bigint(10) unsigned NOT NULL DEFAULT '0',
  `parent` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `created` bigint(10) unsigned NOT NULL DEFAULT '0',
  `modified` bigint(10) unsigned NOT NULL DEFAULT '0',
  `mailed` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `format` tinyint(2) NOT NULL DEFAULT '0',
  `attachment` varchar(100) NOT NULL DEFAULT '',
  `totalscore` smallint(4) NOT NULL DEFAULT '0',
  `mailnow` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_forupost_use_ix` (`userid`),
  KEY `mdl_forupost_cre_ix` (`created`),
  KEY `mdl_forupost_mai_ix` (`mailed`),
  KEY `mdl_forupost_dis_ix` (`discussion`),
  KEY `mdl_forupost_par_ix` (`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='All posts are stored in this table';

/*Data for the table `mdl_forum_posts` */

insert  into `mdl_forum_posts`(`id`,`discussion`,`parent`,`userid`,`created`,`modified`,`mailed`,`subject`,`message`,`format`,`attachment`,`totalscore`,`mailnow`) values (1,1,0,2,1312660003,1312660003,0,'Berita RPL','kita masuk jam 9.00 ga jadi jam 8.00 okeeeeeeeeeeeeeeyyy ',1,'',0,0),(2,2,0,2,1312660752,1312660752,0,'BERITA PBO','woooooooooooooiiiii,,,hari ni PBO ga masuk,,bu tari pergi ke Jakarta :) ',1,'',0,0),(4,3,0,7,1312704520,1312704520,0,'PEMBERITAHUAN','hari ini MP ga masuk ',1,'',0,0),(5,4,0,7,1322016107,1322016107,0,'Android Devlopment','<!--[if gte mso 9]><xml>\r\n <o:OfficeDocumentSettings>\r\n  <o:RelyOnVML/>\r\n  <o:AllowPNG/>\r\n  <o:TargetScreenSize>800x600</o:TargetScreenSize>\r\n </o:OfficeDocumentSettings>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves/>\r\n  <w:TrackFormatting/>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF/>\r\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\r\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>AR-SA</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n   <w:SplitPgBreakAndParaMark/>\r\n   <w:EnableOpenTypeKerning/>\r\n   <w:DontFlipMirrorIndents/>\r\n   <w:OverrideTableStyleHps/>\r\n  </w:Compatibility>\r\n  <m:mathPr>\r\n   <m:mathFont m:val=\"Cambria Math\"/>\r\n   <m:brkBin m:val=\"before\"/>\r\n   <m:brkBinSub m:val=\"&#45;-\"/>\r\n   <m:smallFrac m:val=\"off\"/>\r\n   <m:dispDef/>\r\n   <m:lMargin m:val=\"0\"/>\r\n   <m:rMargin m:val=\"0\"/>\r\n   <m:defJc m:val=\"centerGroup\"/>\r\n   <m:wrapIndent m:val=\"1440\"/>\r\n   <m:intLim m:val=\"subSup\"/>\r\n   <m:naryLim m:val=\"undOvr\"/>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"true\"\r\n  DefSemiHidden=\"true\" DefQFormat=\"false\" DefPriority=\"99\"\r\n  LatentStyleCount=\"267\">\r\n  <w:LsdException Locked=\"false\" Priority=\"0\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Normal\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"heading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 9\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 9\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"35\" QFormat=\"true\" Name=\"caption\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"10\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Title\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" Name=\"Default Paragraph Font\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"11\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtitle\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"22\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Strong\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"20\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"59\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Table Grid\"/>\r\n  <w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Placeholder Text\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"No Spacing\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Revision\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"34\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"List Paragraph\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"29\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"30\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"19\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"21\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"31\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"32\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"33\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Book Title\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"37\" Name=\"Bibliography\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" QFormat=\"true\" Name=\"TOC Heading\"/>\r\n </w:LatentStyles>\r\n</xml><![endif]--><!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:\"Table Normal\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:\"\";\r\n	mso-padding-alt:0in 5.4pt 0in 5.4pt;\r\n	mso-para-margin:0in;\r\n	mso-para-margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:10.0pt;\r\n	font-family:\"Calibri\",\"sans-serif\";\r\n	mso-bidi-font-family:\"Times New Roman\";}\r\n</style>\r\n<![endif]-->\r\n<p style=\"margin-bottom: 6pt; text-align: justify;\"><span lang=\"IN\" style=\"color: black;\">Android adalah sebuah sistem operasi<span>&nbsp;</span>untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.</span></p>\r\n<p style=\"margin-bottom: 6pt; text-align: justify;\"><span lang=\"EN-GB\" style=\"color: black;\">Pada saat perilisan perdana Android, 5 November 2007, Android bersama Open Handset Alliance menyatakan mendukung pengembangan open source pada perangkat mobile.</span><span lang=\"EN-GB\" style=\"color: black;\"> </span><span lang=\"EN-GB\" style=\"color: black;\">Di lain pihak, Google merilis kode–kode Android di bawah lisensi Apache, sebuah lisensi perangkat lunak dan </span><span lang=\"IN\" style=\"color: black;\">open platform</span><span lang=\"EN-GB\" style=\"color: black;\"> perangkat seluler</span><span lang=\"IN\" style=\"color: black;\">.</span></p>\r\n<p style=\"margin-bottom: 6pt; text-align: justify; line-height: normal;\" class=\"MsoNormal\"><span style=\"font-size: 12pt; font-family: \"times new roman\",\"serif\"; color: black;\">Di dunia ini terdapat dua jenis distributor sistem operasi Android. Pertama yang mendapat dukungan penuh dari Google atau Google Mail Services (GMS) dan kedua adalah yang benar–benar bebas distribusinya tanpa dukungan langsung Google atau dikenal sebagai Open Handset Distribution (OHD)</span><span lang=\"IN\" style=\"font-size: 12pt; font-family: \"times new roman\",\"serif\"; color: black;\">.</span><span lang=\"IN\" style=\"font-size: 12pt; font-family: \"times new roman\",\"serif\";\"></span></p>\r\n<p style=\"margin-bottom: 6pt; text-align: justify; line-height: normal;\" class=\"MsoNormal\"><span style=\"font-size: 12pt; font-family: \"times new roman\",\"serif\"; color: black;\">Sekitar September 2007 Google mengenalkan Nexus One, salah satu jenis smartphone yang menggunakan Android sebagai sistem operasinya</span><span lang=\"IN\" style=\"font-size: 12pt; font-family: \"times new roman\",\"serif\"; color: black;\">.</span><span style=\"font-size: 12pt; font-family: \"times new roman\",\"serif\"; color: black;\"> Telepon seluler ini diproduksi oleh HTC Corporation dan tersedia di pasaran pada 5 Januari 2010).Pada 9 Desember 2008, diumumkan anggota baru yang bergabung dalam program kerja Android ARM Holdings, Atheros Communications, diproduksi oleh Asustek Computer Inc, Garmin Ltd, Softbank, Sony Ericsson, Toshiba Corp, dan Vodafone Group Plc. Seiring pembentukan Open Handset Alliance, OHA mengumumkan produk perdana mereka, Android, perangkat mobile yang merupakan modifikasi kernel Linux 2.6. Sejak Android dirilis telah dilakukan berbagai pembaruan berupa perbaikan bug dan penambahan fitur baru.</span><span lang=\"IN\" style=\"font-size: 12pt; font-family: \"times new roman\",\"serif\"; color: black;\"></span></p>\r\n<p style=\"margin-bottom: 6pt; text-align: justify; line-height: normal;\" class=\"MsoNormal\"><span lang=\"IN\" style=\"font-size: 12pt; font-family: \"times new roman\",\"serif\";\">Pasa masa saat ini kebanyakan vendor-vendor smartphone sudah memproduksi smart phone berbasis android, vendor-vendor itu antara lain HTC, Motorola, Samsung, LG, HKC, Huawei, Archos, </span><span style=\"font-size: 12pt; font-family: \"times new roman\",\"serif\";\">Webstation Camangi</span><span lang=\"IN\" style=\"font-size: 12pt; font-family: \"times new roman\",\"serif\";\">, Dell, Nexus, </span><span style=\"font-size: 12pt; font-family: \"times new roman\",\"serif\";\">SciPhone</span><span lang=\"IN\" style=\"font-size: 12pt; font-family: \"times new roman\",\"serif\";\">, </span><span style=\"font-size: 12pt; font-family: \"times new roman\",\"serif\";\">WayteQ</span><span lang=\"IN\" style=\"font-size: 12pt; font-family: \"times new roman\",\"serif\";\">, </span><span style=\"font-size: 12pt; font-family: \"times new roman\",\"serif\";\">Sony Ericsson</span><span lang=\"IN\" style=\"font-size: 12pt; font-family: \"times new roman\",\"serif\";\">, </span><span style=\"font-size: 12pt; font-family: \"times new roman\",\"serif\";\">LG</span><span lang=\"IN\" style=\"font-size: 12pt; font-family: \"times new roman\",\"serif\";\">, Acer, </span><span style=\"font-size: 12pt; font-family: \"times new roman\",\"serif\";\">Philips</span><span lang=\"IN\" style=\"font-size: 12pt; font-family: \"times new roman\",\"serif\";\">, T-Mobile,Nexian, IMO, Asus dan masih banyak lagi vendor smart phone didunia yang memproduksi android. Hal ini karena android itu adalah sistem operasi yang opens source sehingga bebas didistribusikan dan dipakai oleh vendor manapun.</span></p> ',1,'',0,0),(6,5,0,2,1324226358,1324226499,0,'WORKSHOP en TRAINING ANDROID',' Worshop Training Ses I dilakukan 25 Februari 2012 ',1,'',0,0),(7,6,0,2,1324226635,1324226635,0,'Seminar WebApps','Pada Januari 2012 ',1,'',0,0);

/*Table structure for table `mdl_forum_queue` */

DROP TABLE IF EXISTS `mdl_forum_queue`;

CREATE TABLE `mdl_forum_queue` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `discussionid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `postid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_foruqueu_use_ix` (`userid`),
  KEY `mdl_foruqueu_dis_ix` (`discussionid`),
  KEY `mdl_foruqueu_pos_ix` (`postid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='For keeping track of posts that will be mailed in digest for';

/*Data for the table `mdl_forum_queue` */

/*Table structure for table `mdl_forum_ratings` */

DROP TABLE IF EXISTS `mdl_forum_ratings`;

CREATE TABLE `mdl_forum_ratings` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `post` bigint(10) unsigned NOT NULL DEFAULT '0',
  `time` bigint(10) unsigned NOT NULL DEFAULT '0',
  `rating` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_forurati_use_ix` (`userid`),
  KEY `mdl_forurati_pos_ix` (`post`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='forum_ratings table retrofitted from MySQL';

/*Data for the table `mdl_forum_ratings` */

/*Table structure for table `mdl_forum_read` */

DROP TABLE IF EXISTS `mdl_forum_read`;

CREATE TABLE `mdl_forum_read` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `forumid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `discussionid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `postid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `firstread` bigint(10) unsigned NOT NULL DEFAULT '0',
  `lastread` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_foruread_usefor_ix` (`userid`,`forumid`),
  KEY `mdl_foruread_usedis_ix` (`userid`,`discussionid`),
  KEY `mdl_foruread_usepos_ix` (`userid`,`postid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tracks each users read posts';

/*Data for the table `mdl_forum_read` */

/*Table structure for table `mdl_forum_subscriptions` */

DROP TABLE IF EXISTS `mdl_forum_subscriptions`;

CREATE TABLE `mdl_forum_subscriptions` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `forum` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_forusubs_use_ix` (`userid`),
  KEY `mdl_forusubs_for_ix` (`forum`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Keeps track of who is subscribed to what forum';

/*Data for the table `mdl_forum_subscriptions` */

insert  into `mdl_forum_subscriptions`(`id`,`userid`,`forum`) values (1,2,5);

/*Table structure for table `mdl_forum_track_prefs` */

DROP TABLE IF EXISTS `mdl_forum_track_prefs`;

CREATE TABLE `mdl_forum_track_prefs` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `forumid` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_forutracpref_usefor_ix` (`userid`,`forumid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tracks each users untracked forums';

/*Data for the table `mdl_forum_track_prefs` */

/*Table structure for table `mdl_glossary` */

DROP TABLE IF EXISTS `mdl_glossary`;

CREATE TABLE `mdl_glossary` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `allowduplicatedentries` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `displayformat` varchar(50) NOT NULL DEFAULT 'dictionary',
  `mainglossary` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `showspecial` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `showalphabet` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `showall` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `allowcomments` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `allowprintview` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `usedynalink` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `defaultapproval` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `globalglossary` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `entbypage` smallint(3) unsigned NOT NULL DEFAULT '10',
  `editalways` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `rsstype` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `rssarticles` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `assessed` bigint(10) unsigned NOT NULL DEFAULT '0',
  `assesstimestart` bigint(10) unsigned NOT NULL DEFAULT '0',
  `assesstimefinish` bigint(10) unsigned NOT NULL DEFAULT '0',
  `scale` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_glos_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='all glossaries';

/*Data for the table `mdl_glossary` */

/*Table structure for table `mdl_glossary_alias` */

DROP TABLE IF EXISTS `mdl_glossary_alias`;

CREATE TABLE `mdl_glossary_alias` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `entryid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_glosalia_ent_ix` (`entryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='entries alias';

/*Data for the table `mdl_glossary_alias` */

/*Table structure for table `mdl_glossary_categories` */

DROP TABLE IF EXISTS `mdl_glossary_categories`;

CREATE TABLE `mdl_glossary_categories` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `glossaryid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `usedynalink` tinyint(2) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl_gloscate_glo_ix` (`glossaryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='all categories for glossary entries';

/*Data for the table `mdl_glossary_categories` */

/*Table structure for table `mdl_glossary_comments` */

DROP TABLE IF EXISTS `mdl_glossary_comments`;

CREATE TABLE `mdl_glossary_comments` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `entryid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `entrycomment` text NOT NULL,
  `format` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_gloscomm_use_ix` (`userid`),
  KEY `mdl_gloscomm_ent_ix` (`entryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='comments on glossary entries';

/*Data for the table `mdl_glossary_comments` */

/*Table structure for table `mdl_glossary_entries` */

DROP TABLE IF EXISTS `mdl_glossary_entries`;

CREATE TABLE `mdl_glossary_entries` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `glossaryid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `concept` varchar(255) NOT NULL DEFAULT '',
  `definition` text NOT NULL,
  `format` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `attachment` varchar(100) NOT NULL DEFAULT '',
  `timecreated` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  `teacherentry` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `sourceglossaryid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `usedynalink` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `casesensitive` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `fullmatch` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `approved` tinyint(2) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl_glosentr_use_ix` (`userid`),
  KEY `mdl_glosentr_con_ix` (`concept`),
  KEY `mdl_glosentr_glo_ix` (`glossaryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='all glossary entries';

/*Data for the table `mdl_glossary_entries` */

/*Table structure for table `mdl_glossary_entries_categories` */

DROP TABLE IF EXISTS `mdl_glossary_entries_categories`;

CREATE TABLE `mdl_glossary_entries_categories` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `categoryid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `entryid` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_glosentrcate_cat_ix` (`categoryid`),
  KEY `mdl_glosentrcate_ent_ix` (`entryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='categories of each glossary entry';

/*Data for the table `mdl_glossary_entries_categories` */

/*Table structure for table `mdl_glossary_formats` */

DROP TABLE IF EXISTS `mdl_glossary_formats`;

CREATE TABLE `mdl_glossary_formats` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `popupformatname` varchar(50) NOT NULL DEFAULT '',
  `visible` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `showgroup` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `defaultmode` varchar(50) NOT NULL DEFAULT '',
  `defaulthook` varchar(50) NOT NULL DEFAULT '',
  `sortkey` varchar(50) NOT NULL DEFAULT '',
  `sortorder` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Setting of the display formats';

/*Data for the table `mdl_glossary_formats` */

insert  into `mdl_glossary_formats`(`id`,`name`,`popupformatname`,`visible`,`showgroup`,`defaultmode`,`defaulthook`,`sortkey`,`sortorder`) values (1,'continuous','continuous',1,1,'','','',''),(2,'dictionary','dictionary',1,1,'','','',''),(3,'encyclopedia','encyclopedia',1,1,'','','',''),(4,'entrylist','entrylist',1,1,'','','',''),(5,'faq','faq',1,1,'','','',''),(6,'fullwithauthor','fullwithauthor',1,1,'','','',''),(7,'fullwithoutauthor','fullwithoutauthor',1,1,'','','','');

/*Table structure for table `mdl_glossary_ratings` */

DROP TABLE IF EXISTS `mdl_glossary_ratings`;

CREATE TABLE `mdl_glossary_ratings` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `entryid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `time` bigint(10) unsigned NOT NULL DEFAULT '0',
  `rating` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_glosrati_use_ix` (`userid`),
  KEY `mdl_glosrati_ent_ix` (`entryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains user ratings for entries';

/*Data for the table `mdl_glossary_ratings` */

/*Table structure for table `mdl_grade_categories` */

DROP TABLE IF EXISTS `mdl_grade_categories`;

CREATE TABLE `mdl_grade_categories` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) unsigned NOT NULL,
  `parent` bigint(10) unsigned DEFAULT NULL,
  `depth` bigint(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL DEFAULT '',
  `aggregation` bigint(10) NOT NULL DEFAULT '0',
  `keephigh` bigint(10) NOT NULL DEFAULT '0',
  `droplow` bigint(10) NOT NULL DEFAULT '0',
  `aggregateonlygraded` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `aggregateoutcomes` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `aggregatesubcats` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `timecreated` bigint(10) unsigned NOT NULL,
  `timemodified` bigint(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradcate_cou_ix` (`courseid`),
  KEY `mdl_gradcate_par_ix` (`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='This table keeps information about categories, used for grou';

/*Data for the table `mdl_grade_categories` */

insert  into `mdl_grade_categories`(`id`,`courseid`,`parent`,`depth`,`path`,`fullname`,`aggregation`,`keephigh`,`droplow`,`aggregateonlygraded`,`aggregateoutcomes`,`aggregatesubcats`,`timecreated`,`timemodified`) values (1,3,NULL,1,'/1/','?',11,0,0,1,0,0,1311432665,1311432665),(2,2,NULL,1,'/2/','?',11,0,0,1,0,0,1311432748,1311432748),(3,4,NULL,1,'/3/','?',11,0,0,1,0,0,1311447186,1311447186),(4,5,NULL,1,'/4/','?',11,0,0,1,0,0,1311449416,1311449416),(5,1,NULL,1,'/5/','?',11,0,0,1,0,0,1312704432,1312704432);

/*Table structure for table `mdl_grade_categories_history` */

DROP TABLE IF EXISTS `mdl_grade_categories_history`;

CREATE TABLE `mdl_grade_categories_history` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` bigint(10) unsigned NOT NULL DEFAULT '0',
  `oldid` bigint(10) unsigned NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `timemodified` bigint(10) unsigned DEFAULT NULL,
  `loggeduser` bigint(10) unsigned DEFAULT NULL,
  `courseid` bigint(10) unsigned NOT NULL,
  `parent` bigint(10) unsigned DEFAULT NULL,
  `depth` bigint(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL DEFAULT '',
  `aggregation` bigint(10) NOT NULL DEFAULT '0',
  `keephigh` bigint(10) NOT NULL DEFAULT '0',
  `droplow` bigint(10) NOT NULL DEFAULT '0',
  `aggregateonlygraded` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `aggregateoutcomes` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `aggregatesubcats` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_gradcatehist_act_ix` (`action`),
  KEY `mdl_gradcatehist_old_ix` (`oldid`),
  KEY `mdl_gradcatehist_cou_ix` (`courseid`),
  KEY `mdl_gradcatehist_par_ix` (`parent`),
  KEY `mdl_gradcatehist_log_ix` (`loggeduser`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='History of grade_categories';

/*Data for the table `mdl_grade_categories_history` */

insert  into `mdl_grade_categories_history`(`id`,`action`,`oldid`,`source`,`timemodified`,`loggeduser`,`courseid`,`parent`,`depth`,`path`,`fullname`,`aggregation`,`keephigh`,`droplow`,`aggregateonlygraded`,`aggregateoutcomes`,`aggregatesubcats`) values (1,1,1,'system',1311432665,2,3,NULL,0,NULL,'?',11,0,0,1,0,0),(2,2,1,'system',1311432665,2,3,NULL,1,'/1/','?',11,0,0,1,0,0),(3,1,2,'system',1311432748,2,2,NULL,0,NULL,'?',11,0,0,1,0,0),(4,2,2,'system',1311432748,2,2,NULL,1,'/2/','?',11,0,0,1,0,0),(5,1,3,'system',1311447186,2,4,NULL,0,NULL,'?',11,0,0,1,0,0),(6,2,3,'system',1311447186,2,4,NULL,1,'/3/','?',11,0,0,1,0,0),(7,1,4,'system',1311449416,2,5,NULL,0,NULL,'?',11,0,0,1,0,0),(8,2,4,'system',1311449416,2,5,NULL,1,'/4/','?',11,0,0,1,0,0),(9,1,5,'system',1312704432,2,1,NULL,0,NULL,'?',11,0,0,1,0,0),(10,2,5,'system',1312704432,2,1,NULL,1,'/5/','?',11,0,0,1,0,0),(11,1,6,'system',1316361789,2,6,NULL,0,NULL,'?',11,0,0,1,0,0),(12,2,6,'system',1316361789,2,6,NULL,1,'/6/','?',11,0,0,1,0,0),(13,3,6,'coursedelete',1316361789,2,6,NULL,1,'/6/','?',11,0,0,1,0,0);

/*Table structure for table `mdl_grade_grades` */

DROP TABLE IF EXISTS `mdl_grade_grades`;

CREATE TABLE `mdl_grade_grades` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemid` bigint(10) unsigned NOT NULL,
  `userid` bigint(10) unsigned NOT NULL,
  `rawgrade` decimal(10,5) DEFAULT NULL,
  `rawgrademax` decimal(10,5) NOT NULL DEFAULT '100.00000',
  `rawgrademin` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `rawscaleid` bigint(10) unsigned DEFAULT NULL,
  `usermodified` bigint(10) unsigned DEFAULT NULL,
  `finalgrade` decimal(10,5) DEFAULT NULL,
  `hidden` bigint(10) unsigned NOT NULL DEFAULT '0',
  `locked` bigint(10) unsigned NOT NULL DEFAULT '0',
  `locktime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `exported` bigint(10) unsigned NOT NULL DEFAULT '0',
  `overridden` bigint(10) unsigned NOT NULL DEFAULT '0',
  `excluded` bigint(10) unsigned NOT NULL DEFAULT '0',
  `feedback` mediumtext,
  `feedbackformat` bigint(10) unsigned NOT NULL DEFAULT '0',
  `information` mediumtext,
  `informationformat` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timecreated` bigint(10) unsigned DEFAULT NULL,
  `timemodified` bigint(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradgrad_useite_uix` (`userid`,`itemid`),
  KEY `mdl_gradgrad_locloc_ix` (`locked`,`locktime`),
  KEY `mdl_gradgrad_ite_ix` (`itemid`),
  KEY `mdl_gradgrad_use_ix` (`userid`),
  KEY `mdl_gradgrad_raw_ix` (`rawscaleid`),
  KEY `mdl_gradgrad_use2_ix` (`usermodified`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='grade_grades  This table keeps individual grades for each us';

/*Data for the table `mdl_grade_grades` */

insert  into `mdl_grade_grades`(`id`,`itemid`,`userid`,`rawgrade`,`rawgrademax`,`rawgrademin`,`rawscaleid`,`usermodified`,`finalgrade`,`hidden`,`locked`,`locktime`,`exported`,`overridden`,`excluded`,`feedback`,`feedbackformat`,`information`,`informationformat`,`timecreated`,`timemodified`) values (1,11,4,'0.00000','10.00000','0.00000',NULL,4,'0.00000',0,0,0,0,0,0,NULL,0,NULL,0,1312655013,1312655013),(2,2,4,NULL,'100.00000','0.00000',NULL,NULL,'78.38710',0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL),(3,6,3,'77.00000','100.00000','0.00000',NULL,7,'77.00000',0,0,0,0,0,0,NULL,1,NULL,0,1313945049,1313945316),(4,3,3,NULL,'100.00000','0.00000',NULL,NULL,'77.00000',0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL),(5,6,2,NULL,'100.00000','0.00000',NULL,2,NULL,0,0,0,0,0,0,NULL,0,NULL,0,1313048744,NULL),(6,3,2,NULL,'100.00000','0.00000',NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL),(7,6,5,'89.00000','100.00000','0.00000',NULL,7,'89.00000',0,0,0,0,0,0,NULL,1,NULL,0,1313945101,1313945297),(8,3,5,NULL,'100.00000','0.00000',NULL,NULL,'89.00000',0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL),(9,9,3,'92.00000','100.00000','0.00000',NULL,6,'92.00000',0,0,0,0,0,0,NULL,1,NULL,0,1313945002,1313945192),(10,2,3,NULL,'100.00000','0.00000',NULL,NULL,'90.00000',0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL),(11,6,4,'81.00000','100.00000','0.00000',NULL,7,'81.00000',0,0,0,0,0,0,NULL,1,NULL,0,1313944825,1313945306),(12,3,4,NULL,'100.00000','0.00000',NULL,NULL,'81.00000',0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL),(13,13,3,'90.00000','100.00000','0.00000',NULL,6,'90.00000',0,0,0,0,0,0,NULL,1,NULL,0,1313945034,1313945248),(14,9,4,'78.00000','100.00000','0.00000',NULL,6,'78.00000',0,0,0,0,0,0,NULL,1,NULL,0,1313944614,1313945182),(15,10,4,'71.00000','100.00000','0.00000',NULL,6,'71.00000',0,0,0,0,0,0,NULL,1,NULL,0,1313944676,1313945209),(16,10,3,'88.00000','100.00000','0.00000',NULL,6,'88.00000',0,0,0,0,0,0,NULL,1,NULL,0,1313945015,1313945219),(17,13,4,'94.00000','100.00000','0.00000',NULL,6,'94.00000',0,0,0,0,0,0,NULL,1,NULL,0,1313944651,1313945238),(18,7,4,'95.00000','100.00000','0.00000',NULL,8,'95.00000',0,0,0,0,0,0,NULL,1,NULL,0,1313944741,1313945354),(19,1,4,NULL,'100.00000','0.00000',NULL,NULL,'93.50000',0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL),(20,8,4,'92.00000','100.00000','0.00000',NULL,8,'92.00000',0,0,0,0,0,0,NULL,1,NULL,0,1313944801,1313945372),(21,5,5,'85.00000','100.00000','0.00000',NULL,9,'85.00000',0,0,0,0,0,0,NULL,1,NULL,0,1313945122,1313945416),(22,4,5,NULL,'100.00000','0.00000',NULL,NULL,'85.00000',0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL),(23,5,3,'93.00000','100.00000','0.00000',NULL,9,'93.00000',0,0,0,0,0,0,NULL,1,NULL,0,1313945069,1313945424),(24,4,3,NULL,'100.00000','0.00000',NULL,NULL,'93.00000',0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL),(25,9,10,'94.00000','100.00000','0.00000',NULL,6,'94.00000',0,0,0,0,0,0,NULL,1,NULL,0,1313962815,1313962993),(26,2,10,NULL,'100.00000','0.00000',NULL,NULL,'95.00000',0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL),(27,10,10,'95.00000','100.00000','0.00000',NULL,6,'95.00000',0,0,0,0,0,0,NULL,1,NULL,0,1313962845,1313963019),(28,13,10,'96.00000','100.00000','0.00000',NULL,6,'96.00000',0,0,0,0,0,0,NULL,1,NULL,0,1313962864,1313963040),(29,7,10,'84.00000','100.00000','0.00000',NULL,8,'84.00000',0,0,0,0,0,0,NULL,1,NULL,0,1313962885,1313963109),(30,1,10,NULL,'100.00000','0.00000',NULL,NULL,'84.50000',0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL),(31,8,10,'85.00000','100.00000','0.00000',NULL,8,'85.00000',0,0,0,0,0,0,NULL,1,NULL,0,1313962899,1313963126),(32,6,10,'99.00000','100.00000','0.00000',NULL,7,'99.00000',0,0,0,0,0,0,NULL,1,NULL,0,1313962919,1313963176),(33,3,10,NULL,'100.00000','0.00000',NULL,NULL,'99.00000',0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL),(34,5,10,'98.00000','100.00000','0.00000',NULL,9,'98.00000',0,0,0,0,0,0,NULL,1,NULL,0,1313962932,1313963217),(35,4,10,NULL,'100.00000','0.00000',NULL,NULL,'98.00000',0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL);

/*Table structure for table `mdl_grade_grades_history` */

DROP TABLE IF EXISTS `mdl_grade_grades_history`;

CREATE TABLE `mdl_grade_grades_history` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` bigint(10) unsigned NOT NULL DEFAULT '0',
  `oldid` bigint(10) unsigned NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `timemodified` bigint(10) unsigned DEFAULT NULL,
  `loggeduser` bigint(10) unsigned DEFAULT NULL,
  `itemid` bigint(10) unsigned NOT NULL,
  `userid` bigint(10) unsigned NOT NULL,
  `rawgrade` decimal(10,5) DEFAULT NULL,
  `rawgrademax` decimal(10,5) NOT NULL DEFAULT '100.00000',
  `rawgrademin` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `rawscaleid` bigint(10) unsigned DEFAULT NULL,
  `usermodified` bigint(10) unsigned DEFAULT NULL,
  `finalgrade` decimal(10,5) DEFAULT NULL,
  `hidden` bigint(10) unsigned NOT NULL DEFAULT '0',
  `locked` bigint(10) unsigned NOT NULL DEFAULT '0',
  `locktime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `exported` bigint(10) unsigned NOT NULL DEFAULT '0',
  `overridden` bigint(10) unsigned NOT NULL DEFAULT '0',
  `excluded` bigint(10) unsigned NOT NULL DEFAULT '0',
  `feedback` mediumtext,
  `feedbackformat` bigint(10) unsigned NOT NULL DEFAULT '0',
  `information` mediumtext,
  `informationformat` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_gradgradhist_act_ix` (`action`),
  KEY `mdl_gradgradhist_old_ix` (`oldid`),
  KEY `mdl_gradgradhist_ite_ix` (`itemid`),
  KEY `mdl_gradgradhist_use_ix` (`userid`),
  KEY `mdl_gradgradhist_raw_ix` (`rawscaleid`),
  KEY `mdl_gradgradhist_use2_ix` (`usermodified`),
  KEY `mdl_gradgradhist_log_ix` (`loggeduser`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='History table';

/*Data for the table `mdl_grade_grades_history` */

insert  into `mdl_grade_grades_history`(`id`,`action`,`oldid`,`source`,`timemodified`,`loggeduser`,`itemid`,`userid`,`rawgrade`,`rawgrademax`,`rawgrademin`,`rawscaleid`,`usermodified`,`finalgrade`,`hidden`,`locked`,`locktime`,`exported`,`overridden`,`excluded`,`feedback`,`feedbackformat`,`information`,`informationformat`) values (1,1,1,'mod/quiz',1312655013,4,11,4,'0.00000','10.00000','0.00000',NULL,4,'0.00000',0,0,0,0,0,0,NULL,0,NULL,0),(2,1,2,'system',1312655013,4,2,4,NULL,'100.00000','0.00000',NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(3,2,2,'aggregation',1312655013,4,2,4,NULL,'100.00000','0.00000',NULL,NULL,'0.00000',0,0,0,0,0,0,NULL,0,NULL,0),(4,1,3,'mod/assignment',1313048442,3,6,3,NULL,'100.00000','0.00000',NULL,3,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(5,1,4,'system',1313048442,3,3,3,NULL,'100.00000','0.00000',NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(6,1,5,'mod/assignment',1313048744,2,6,2,NULL,'100.00000','0.00000',NULL,2,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(7,1,6,'system',1313048744,2,3,2,NULL,'100.00000','0.00000',NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(8,1,7,'mod/assignment',1313049580,5,6,5,NULL,'100.00000','0.00000',NULL,5,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(9,1,8,'system',1313049580,5,3,5,NULL,'100.00000','0.00000',NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(10,1,9,'mod/assignment',1313306359,3,9,3,NULL,'100.00000','0.00000',NULL,3,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(11,1,10,'system',1313306359,3,2,3,NULL,'100.00000','0.00000',NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(12,1,11,'mod/assignment',1313685926,2,6,4,'84.00000','100.00000','0.00000',NULL,2,'84.00000',0,0,0,0,0,0,NULL,1,NULL,0),(13,1,12,'system',1313685926,2,3,4,NULL,'100.00000','0.00000',NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(14,2,12,'aggregation',1313685926,2,3,4,NULL,'100.00000','0.00000',NULL,NULL,'84.00000',0,0,0,0,0,0,NULL,0,NULL,0),(15,2,7,'mod/assignment',1312397322,5,6,5,NULL,'100.00000','0.00000',NULL,5,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(16,1,13,'mod/assignment',1313862735,6,13,3,'0.00000','100.00000','0.00000',NULL,6,'0.00000',0,0,0,0,0,0,NULL,0,NULL,0),(17,2,10,'aggregation',1313862735,6,2,3,NULL,'100.00000','0.00000',NULL,NULL,'0.00000',0,0,0,0,0,0,NULL,0,NULL,0),(18,1,14,'mod/assignment',1313945182,6,9,4,'78.00000','100.00000','0.00000',NULL,6,'78.00000',0,0,0,0,0,0,NULL,1,NULL,0),(19,2,2,'aggregation',1313945182,6,2,4,NULL,'100.00000','0.00000',NULL,NULL,'70.90909',0,0,0,0,0,0,NULL,0,NULL,0),(20,2,9,'mod/assignment',1313945192,6,9,3,'92.00000','100.00000','0.00000',NULL,6,'92.00000',0,0,0,0,0,0,NULL,1,NULL,0),(21,2,10,'aggregation',1313945192,6,2,3,NULL,'100.00000','0.00000',NULL,NULL,'46.00000',0,0,0,0,0,0,NULL,0,NULL,0),(22,1,15,'mod/assignment',1313945209,6,10,4,'71.00000','100.00000','0.00000',NULL,6,'71.00000',0,0,0,0,0,0,NULL,1,NULL,0),(23,2,2,'aggregation',1313945209,6,2,4,NULL,'100.00000','0.00000',NULL,NULL,'70.95238',0,0,0,0,0,0,NULL,0,NULL,0),(24,1,16,'mod/assignment',1313945219,6,10,3,'88.00000','100.00000','0.00000',NULL,6,'88.00000',0,0,0,0,0,0,NULL,1,NULL,0),(25,2,10,'aggregation',1313945219,6,2,3,NULL,'100.00000','0.00000',NULL,NULL,'60.00000',0,0,0,0,0,0,NULL,0,NULL,0),(26,1,17,'mod/assignment',1313945238,6,13,4,'94.00000','100.00000','0.00000',NULL,6,'94.00000',0,0,0,0,0,0,NULL,1,NULL,0),(27,2,2,'aggregation',1313945238,6,2,4,NULL,'100.00000','0.00000',NULL,NULL,'78.38710',0,0,0,0,0,0,NULL,0,NULL,0),(28,2,13,'mod/assignment',1313945248,6,13,3,'90.00000','100.00000','0.00000',NULL,6,'90.00000',0,0,0,0,0,0,NULL,1,NULL,0),(29,2,10,'aggregation',1313945248,6,2,3,NULL,'100.00000','0.00000',NULL,NULL,'90.00000',0,0,0,0,0,0,NULL,0,NULL,0),(30,2,7,'mod/assignment',1313945297,7,6,5,'89.00000','100.00000','0.00000',NULL,7,'89.00000',0,0,0,0,0,0,NULL,1,NULL,0),(31,2,8,'aggregation',1313945297,7,3,5,NULL,'100.00000','0.00000',NULL,NULL,'89.00000',0,0,0,0,0,0,NULL,0,NULL,0),(32,2,11,'mod/assignment',1313945306,7,6,4,'81.00000','100.00000','0.00000',NULL,7,'81.00000',0,0,0,0,0,0,NULL,1,NULL,0),(33,2,12,'aggregation',1313945306,7,3,4,NULL,'100.00000','0.00000',NULL,NULL,'81.00000',0,0,0,0,0,0,NULL,0,NULL,0),(34,2,3,'mod/assignment',1313945316,7,6,3,'77.00000','100.00000','0.00000',NULL,7,'77.00000',0,0,0,0,0,0,NULL,1,NULL,0),(35,2,4,'aggregation',1313945316,7,3,3,NULL,'100.00000','0.00000',NULL,NULL,'77.00000',0,0,0,0,0,0,NULL,0,NULL,0),(36,1,18,'mod/assignment',1313945354,8,7,4,'95.00000','100.00000','0.00000',NULL,8,'95.00000',0,0,0,0,0,0,NULL,1,NULL,0),(37,1,19,'system',1313945354,8,1,4,NULL,'100.00000','0.00000',NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(38,2,19,'aggregation',1313945354,8,1,4,NULL,'100.00000','0.00000',NULL,NULL,'95.00000',0,0,0,0,0,0,NULL,0,NULL,0),(39,1,20,'mod/assignment',1313945372,8,8,4,'92.00000','100.00000','0.00000',NULL,8,'92.00000',0,0,0,0,0,0,NULL,1,NULL,0),(40,2,19,'aggregation',1313945372,8,1,4,NULL,'100.00000','0.00000',NULL,NULL,'93.50000',0,0,0,0,0,0,NULL,0,NULL,0),(41,1,21,'mod/assignment',1313945416,9,5,5,'85.00000','100.00000','0.00000',NULL,9,'85.00000',0,0,0,0,0,0,NULL,1,NULL,0),(42,1,22,'system',1313945416,9,4,5,NULL,'100.00000','0.00000',NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(43,2,22,'aggregation',1313945416,9,4,5,NULL,'100.00000','0.00000',NULL,NULL,'85.00000',0,0,0,0,0,0,NULL,0,NULL,0),(44,1,23,'mod/assignment',1313945424,9,5,3,'93.00000','100.00000','0.00000',NULL,9,'93.00000',0,0,0,0,0,0,NULL,1,NULL,0),(45,1,24,'system',1313945424,9,4,3,NULL,'100.00000','0.00000',NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(46,2,24,'aggregation',1313945424,9,4,3,NULL,'100.00000','0.00000',NULL,NULL,'93.00000',0,0,0,0,0,0,NULL,0,NULL,0),(47,1,25,'mod/assignment',1313962993,6,9,10,'94.00000','100.00000','0.00000',NULL,6,'94.00000',0,0,0,0,0,0,NULL,1,NULL,0),(48,1,26,'system',1313962993,6,2,10,NULL,'100.00000','0.00000',NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(49,2,26,'aggregation',1313962993,6,2,10,NULL,'100.00000','0.00000',NULL,NULL,'94.00000',0,0,0,0,0,0,NULL,0,NULL,0),(50,1,27,'mod/assignment',1313963019,6,10,10,'95.00000','100.00000','0.00000',NULL,6,'95.00000',0,0,0,0,0,0,NULL,1,NULL,0),(51,2,26,'aggregation',1313963019,6,2,10,NULL,'100.00000','0.00000',NULL,NULL,'94.50000',0,0,0,0,0,0,NULL,0,NULL,0),(52,1,28,'mod/assignment',1313963040,6,13,10,'96.00000','100.00000','0.00000',NULL,6,'96.00000',0,0,0,0,0,0,NULL,1,NULL,0),(53,2,26,'aggregation',1313963040,6,2,10,NULL,'100.00000','0.00000',NULL,NULL,'95.00000',0,0,0,0,0,0,NULL,0,NULL,0),(54,1,29,'mod/assignment',1313963109,8,7,10,'84.00000','100.00000','0.00000',NULL,8,'84.00000',0,0,0,0,0,0,NULL,1,NULL,0),(55,1,30,'system',1313963109,8,1,10,NULL,'100.00000','0.00000',NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(56,2,30,'aggregation',1313963109,8,1,10,NULL,'100.00000','0.00000',NULL,NULL,'84.00000',0,0,0,0,0,0,NULL,0,NULL,0),(57,1,31,'mod/assignment',1313963126,8,8,10,'85.00000','100.00000','0.00000',NULL,8,'85.00000',0,0,0,0,0,0,NULL,1,NULL,0),(58,2,30,'aggregation',1313963126,8,1,10,NULL,'100.00000','0.00000',NULL,NULL,'84.50000',0,0,0,0,0,0,NULL,0,NULL,0),(59,1,32,'mod/assignment',1313963176,7,6,10,'99.00000','100.00000','0.00000',NULL,7,'99.00000',0,0,0,0,0,0,NULL,1,NULL,0),(60,1,33,'system',1313963176,7,3,10,NULL,'100.00000','0.00000',NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(61,2,33,'aggregation',1313963176,7,3,10,NULL,'100.00000','0.00000',NULL,NULL,'99.00000',0,0,0,0,0,0,NULL,0,NULL,0),(62,1,34,'mod/assignment',1313963217,9,5,10,'98.00000','100.00000','0.00000',NULL,9,'98.00000',0,0,0,0,0,0,NULL,1,NULL,0),(63,1,35,'system',1313963217,9,4,10,NULL,'100.00000','0.00000',NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(64,2,35,'aggregation',1313963217,9,4,10,NULL,'100.00000','0.00000',NULL,NULL,'98.00000',0,0,0,0,0,0,NULL,0,NULL,0);

/*Table structure for table `mdl_grade_import_newitem` */

DROP TABLE IF EXISTS `mdl_grade_import_newitem`;

CREATE TABLE `mdl_grade_import_newitem` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemname` varchar(255) NOT NULL DEFAULT '',
  `importcode` bigint(10) unsigned NOT NULL,
  `importer` bigint(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradimponewi_imp_ix` (`importer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='temporary table for storing new grade_item names from grade ';

/*Data for the table `mdl_grade_import_newitem` */

/*Table structure for table `mdl_grade_import_values` */

DROP TABLE IF EXISTS `mdl_grade_import_values`;

CREATE TABLE `mdl_grade_import_values` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemid` bigint(10) unsigned DEFAULT NULL,
  `newgradeitem` bigint(10) unsigned DEFAULT NULL,
  `userid` bigint(10) unsigned NOT NULL,
  `finalgrade` decimal(10,5) DEFAULT NULL,
  `feedback` mediumtext,
  `importcode` bigint(10) unsigned NOT NULL,
  `importer` bigint(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradimpovalu_ite_ix` (`itemid`),
  KEY `mdl_gradimpovalu_new_ix` (`newgradeitem`),
  KEY `mdl_gradimpovalu_imp_ix` (`importer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Temporary table for importing grades';

/*Data for the table `mdl_grade_import_values` */

/*Table structure for table `mdl_grade_items` */

DROP TABLE IF EXISTS `mdl_grade_items`;

CREATE TABLE `mdl_grade_items` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) unsigned DEFAULT NULL,
  `categoryid` bigint(10) unsigned DEFAULT NULL,
  `itemname` varchar(255) DEFAULT NULL,
  `itemtype` varchar(30) NOT NULL DEFAULT '',
  `itemmodule` varchar(30) DEFAULT NULL,
  `iteminstance` bigint(10) unsigned DEFAULT NULL,
  `itemnumber` bigint(10) unsigned DEFAULT NULL,
  `iteminfo` mediumtext,
  `idnumber` varchar(255) DEFAULT NULL,
  `calculation` mediumtext,
  `gradetype` smallint(4) NOT NULL DEFAULT '1',
  `grademax` decimal(10,5) NOT NULL DEFAULT '100.00000',
  `grademin` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `scaleid` bigint(10) unsigned DEFAULT NULL,
  `outcomeid` bigint(10) unsigned DEFAULT NULL,
  `gradepass` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `multfactor` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `plusfactor` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `aggregationcoef` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `display` bigint(10) NOT NULL DEFAULT '0',
  `decimals` tinyint(1) unsigned DEFAULT NULL,
  `hidden` bigint(10) NOT NULL DEFAULT '0',
  `locked` bigint(10) NOT NULL DEFAULT '0',
  `locktime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `needsupdate` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) unsigned DEFAULT NULL,
  `timemodified` bigint(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_graditem_locloc_ix` (`locked`,`locktime`),
  KEY `mdl_graditem_itenee_ix` (`itemtype`,`needsupdate`),
  KEY `mdl_graditem_gra_ix` (`gradetype`),
  KEY `mdl_graditem_idncou_ix` (`idnumber`,`courseid`),
  KEY `mdl_graditem_cou_ix` (`courseid`),
  KEY `mdl_graditem_cat_ix` (`categoryid`),
  KEY `mdl_graditem_sca_ix` (`scaleid`),
  KEY `mdl_graditem_out_ix` (`outcomeid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='This table keeps information about gradeable items (ie colum';

/*Data for the table `mdl_grade_items` */

insert  into `mdl_grade_items`(`id`,`courseid`,`categoryid`,`itemname`,`itemtype`,`itemmodule`,`iteminstance`,`itemnumber`,`iteminfo`,`idnumber`,`calculation`,`gradetype`,`grademax`,`grademin`,`scaleid`,`outcomeid`,`gradepass`,`multfactor`,`plusfactor`,`aggregationcoef`,`sortorder`,`display`,`decimals`,`hidden`,`locked`,`locktime`,`needsupdate`,`timecreated`,`timemodified`) values (1,3,NULL,NULL,'course',NULL,1,NULL,NULL,NULL,NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',1,0,NULL,0,0,0,0,1311432665,1311432665),(2,2,NULL,NULL,'course',NULL,2,NULL,NULL,NULL,NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',1,0,NULL,0,0,0,0,1311432748,1311432748),(3,4,NULL,NULL,'course',NULL,3,NULL,NULL,NULL,NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',1,0,NULL,0,0,0,0,1311447186,1311447186),(4,5,NULL,NULL,'course',NULL,4,NULL,NULL,NULL,NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',1,0,NULL,0,0,0,0,1311449416,1311449416),(5,5,4,'Tugas SI-1','mod','assignment',1,0,NULL,'',NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',2,0,NULL,0,0,0,0,1311450806,1311450806),(6,4,3,'Tugas MP-1','mod','assignment',2,0,NULL,'',NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',2,0,NULL,0,0,0,0,1311450946,1311450946),(7,3,1,'Tugas PBO Offline-1','mod','assignment',3,0,NULL,'',NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',2,0,NULL,0,0,0,0,1311451100,1311451100),(8,3,1,'Tugas PBO-2','mod','assignment',4,0,NULL,'',NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',3,0,NULL,0,0,0,0,1311451543,1311451543),(9,2,2,'Tugas RPL-1','mod','assignment',5,0,NULL,'',NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',2,0,NULL,0,0,0,0,1311451628,1311451628),(10,2,2,'Tugas RPL Offline-1','mod','assignment',6,0,NULL,'',NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',3,0,NULL,0,0,0,0,1311451689,1311451689),(11,2,2,'QUIZ 1 RPL`','mod','quiz',1,0,NULL,'',NULL,1,'10.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',4,0,NULL,0,0,0,0,1312654284,1312654284),(12,1,NULL,NULL,'course',NULL,5,NULL,NULL,NULL,NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',1,0,NULL,0,0,0,1,1312704432,1312704432),(13,2,2,'TUGAS  3 RPL','mod','assignment',7,0,NULL,'',NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',5,0,NULL,0,0,0,0,1313862445,1313862445),(15,4,3,'Tugas UTS','mod','assignment',8,0,NULL,'',NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',3,0,NULL,0,0,0,0,1324225481,1324225481),(16,4,3,'Tugas MID','mod','assignment',9,0,NULL,'',NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',4,0,NULL,0,0,0,0,1324225729,1324225729);

/*Table structure for table `mdl_grade_items_history` */

DROP TABLE IF EXISTS `mdl_grade_items_history`;

CREATE TABLE `mdl_grade_items_history` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` bigint(10) unsigned NOT NULL DEFAULT '0',
  `oldid` bigint(10) unsigned NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `timemodified` bigint(10) unsigned DEFAULT NULL,
  `loggeduser` bigint(10) unsigned DEFAULT NULL,
  `courseid` bigint(10) unsigned DEFAULT NULL,
  `categoryid` bigint(10) unsigned DEFAULT NULL,
  `itemname` varchar(255) DEFAULT NULL,
  `itemtype` varchar(30) NOT NULL DEFAULT '',
  `itemmodule` varchar(30) DEFAULT NULL,
  `iteminstance` bigint(10) unsigned DEFAULT NULL,
  `itemnumber` bigint(10) unsigned DEFAULT NULL,
  `iteminfo` mediumtext,
  `idnumber` varchar(255) DEFAULT NULL,
  `calculation` mediumtext,
  `gradetype` smallint(4) NOT NULL DEFAULT '1',
  `grademax` decimal(10,5) NOT NULL DEFAULT '100.00000',
  `grademin` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `scaleid` bigint(10) unsigned DEFAULT NULL,
  `outcomeid` bigint(10) unsigned DEFAULT NULL,
  `gradepass` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `multfactor` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `plusfactor` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `aggregationcoef` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `hidden` bigint(10) NOT NULL DEFAULT '0',
  `locked` bigint(10) NOT NULL DEFAULT '0',
  `locktime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `needsupdate` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_graditemhist_act_ix` (`action`),
  KEY `mdl_graditemhist_old_ix` (`oldid`),
  KEY `mdl_graditemhist_cou_ix` (`courseid`),
  KEY `mdl_graditemhist_cat_ix` (`categoryid`),
  KEY `mdl_graditemhist_sca_ix` (`scaleid`),
  KEY `mdl_graditemhist_out_ix` (`outcomeid`),
  KEY `mdl_graditemhist_log_ix` (`loggeduser`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='History of grade_items';

/*Data for the table `mdl_grade_items_history` */

insert  into `mdl_grade_items_history`(`id`,`action`,`oldid`,`source`,`timemodified`,`loggeduser`,`courseid`,`categoryid`,`itemname`,`itemtype`,`itemmodule`,`iteminstance`,`itemnumber`,`iteminfo`,`idnumber`,`calculation`,`gradetype`,`grademax`,`grademin`,`scaleid`,`outcomeid`,`gradepass`,`multfactor`,`plusfactor`,`aggregationcoef`,`sortorder`,`hidden`,`locked`,`locktime`,`needsupdate`) values (1,1,1,'system',1311432665,2,3,NULL,NULL,'course',NULL,1,NULL,NULL,NULL,NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',1,0,0,0,1),(2,1,2,'system',1311432748,2,2,NULL,NULL,'course',NULL,2,NULL,NULL,NULL,NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',1,0,0,0,1),(3,1,3,'system',1311447186,2,4,NULL,NULL,'course',NULL,3,NULL,NULL,NULL,NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',1,0,0,0,1),(4,1,4,'system',1311449416,2,5,NULL,NULL,'course',NULL,4,NULL,NULL,NULL,NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',1,0,0,0,1),(5,1,5,NULL,1311450806,2,5,4,'Tugas SI-1','mod','assignment',1,0,NULL,'',NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',2,0,0,0,1),(6,1,6,NULL,1311450946,2,4,3,'Tugas MP-1','mod','assignment',2,0,NULL,'',NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',2,0,0,0,1),(7,1,7,NULL,1311451100,2,3,1,'Tugas PBO Offline-1','mod','assignment',3,0,NULL,'',NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',2,0,0,0,1),(8,1,8,NULL,1311451543,2,3,1,'Tugas PBO-2','mod','assignment',4,0,NULL,'',NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',3,0,0,0,1),(9,1,9,NULL,1311451628,2,2,2,'Tugas RPL-1','mod','assignment',5,0,NULL,'',NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',2,0,0,0,1),(10,1,10,NULL,1311451689,2,2,2,'Tugas RPL Offline-1','mod','assignment',6,0,NULL,'',NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',3,0,0,0,1),(11,1,11,NULL,1312654284,6,2,2,'QUIZ 1 RPL`','mod','quiz',1,0,NULL,'',NULL,1,'10.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',4,0,0,0,1),(12,1,12,'system',1312704432,2,1,NULL,NULL,'course',NULL,5,NULL,NULL,NULL,NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',1,0,0,0,1),(13,1,13,NULL,1313862445,6,2,2,'TUGAS  3 RPL','mod','assignment',7,0,NULL,'',NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',5,0,0,0,1),(14,1,14,'system',1316361789,2,6,NULL,NULL,'course',NULL,6,NULL,NULL,NULL,NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',1,0,0,0,1),(15,3,14,'coursedelete',1316361789,2,6,NULL,NULL,'course',NULL,6,NULL,NULL,NULL,NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',1,0,0,0,1),(16,1,15,NULL,1324225481,2,4,3,'Tugas UTS','mod','assignment',8,0,NULL,'',NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',3,0,0,0,1),(17,1,16,NULL,1324225729,2,4,3,'Tugas MID','mod','assignment',9,0,NULL,'',NULL,1,'100.00000','0.00000',NULL,NULL,'0.00000','1.00000','0.00000','0.00000',4,0,0,0,1);

/*Table structure for table `mdl_grade_letters` */

DROP TABLE IF EXISTS `mdl_grade_letters`;

CREATE TABLE `mdl_grade_letters` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) unsigned NOT NULL,
  `lowerboundary` decimal(10,5) NOT NULL,
  `letter` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_gradlett_conlow_ix` (`contextid`,`lowerboundary`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Repository for grade letters, for courses and other moodle e';

/*Data for the table `mdl_grade_letters` */

/*Table structure for table `mdl_grade_outcomes` */

DROP TABLE IF EXISTS `mdl_grade_outcomes`;

CREATE TABLE `mdl_grade_outcomes` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) unsigned DEFAULT NULL,
  `shortname` varchar(255) NOT NULL DEFAULT '',
  `fullname` text NOT NULL,
  `scaleid` bigint(10) unsigned DEFAULT NULL,
  `description` text,
  `timecreated` bigint(10) unsigned DEFAULT NULL,
  `timemodified` bigint(10) unsigned DEFAULT NULL,
  `usermodified` bigint(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradoutc_cousho_uix` (`courseid`,`shortname`),
  KEY `mdl_gradoutc_cou_ix` (`courseid`),
  KEY `mdl_gradoutc_sca_ix` (`scaleid`),
  KEY `mdl_gradoutc_use_ix` (`usermodified`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='This table describes the outcomes used in the system. An out';

/*Data for the table `mdl_grade_outcomes` */

/*Table structure for table `mdl_grade_outcomes_courses` */

DROP TABLE IF EXISTS `mdl_grade_outcomes_courses`;

CREATE TABLE `mdl_grade_outcomes_courses` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) unsigned NOT NULL,
  `outcomeid` bigint(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradoutccour_couout_uix` (`courseid`,`outcomeid`),
  KEY `mdl_gradoutccour_cou_ix` (`courseid`),
  KEY `mdl_gradoutccour_out_ix` (`outcomeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='stores what outcomes are used in what courses.';

/*Data for the table `mdl_grade_outcomes_courses` */

/*Table structure for table `mdl_grade_outcomes_history` */

DROP TABLE IF EXISTS `mdl_grade_outcomes_history`;

CREATE TABLE `mdl_grade_outcomes_history` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` bigint(10) unsigned NOT NULL DEFAULT '0',
  `oldid` bigint(10) unsigned NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `timemodified` bigint(10) unsigned DEFAULT NULL,
  `loggeduser` bigint(10) unsigned DEFAULT NULL,
  `courseid` bigint(10) unsigned DEFAULT NULL,
  `shortname` varchar(255) NOT NULL DEFAULT '',
  `fullname` text NOT NULL,
  `scaleid` bigint(10) unsigned DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `mdl_gradoutchist_act_ix` (`action`),
  KEY `mdl_gradoutchist_old_ix` (`oldid`),
  KEY `mdl_gradoutchist_cou_ix` (`courseid`),
  KEY `mdl_gradoutchist_sca_ix` (`scaleid`),
  KEY `mdl_gradoutchist_log_ix` (`loggeduser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='History table';

/*Data for the table `mdl_grade_outcomes_history` */

/*Table structure for table `mdl_grade_settings` */

DROP TABLE IF EXISTS `mdl_grade_settings`;

CREATE TABLE `mdl_grade_settings` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradsett_counam_uix` (`courseid`,`name`),
  KEY `mdl_gradsett_cou_ix` (`courseid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='gradebook settings';

/*Data for the table `mdl_grade_settings` */

/*Table structure for table `mdl_groupings` */

DROP TABLE IF EXISTS `mdl_groupings`;

CREATE TABLE `mdl_groupings` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `configdata` text,
  `timecreated` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_grou_cou2_ix` (`courseid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='A grouping is a collection of groups. WAS: groups_groupings';

/*Data for the table `mdl_groupings` */

/*Table structure for table `mdl_groupings_groups` */

DROP TABLE IF EXISTS `mdl_groupings_groups`;

CREATE TABLE `mdl_groupings_groups` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupingid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `groupid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timeadded` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_grougrou_gro_ix` (`groupingid`),
  KEY `mdl_grougrou_gro2_ix` (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Link a grouping to a group (note, groups can be in multiple ';

/*Data for the table `mdl_groupings_groups` */

/*Table structure for table `mdl_groups` */

DROP TABLE IF EXISTS `mdl_groups`;

CREATE TABLE `mdl_groups` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) unsigned NOT NULL,
  `name` varchar(254) NOT NULL DEFAULT '',
  `description` text,
  `enrolmentkey` varchar(50) DEFAULT NULL,
  `picture` bigint(10) unsigned NOT NULL DEFAULT '0',
  `hidepicture` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `timecreated` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_grou_cou_ix` (`courseid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Each record represents a group.';

/*Data for the table `mdl_groups` */

/*Table structure for table `mdl_groups_members` */

DROP TABLE IF EXISTS `mdl_groups_members`;

CREATE TABLE `mdl_groups_members` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timeadded` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_groumemb_gro_ix` (`groupid`),
  KEY `mdl_groumemb_use_ix` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Link a user to a group.';

/*Data for the table `mdl_groups_members` */

/*Table structure for table `mdl_hotpot` */

DROP TABLE IF EXISTS `mdl_hotpot`;

CREATE TABLE `mdl_hotpot` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `summary` text NOT NULL,
  `timeopen` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timeclose` bigint(10) unsigned NOT NULL DEFAULT '0',
  `location` smallint(4) unsigned NOT NULL DEFAULT '0',
  `reference` varchar(255) NOT NULL DEFAULT '',
  `outputformat` smallint(4) unsigned NOT NULL DEFAULT '1',
  `navigation` smallint(4) unsigned NOT NULL DEFAULT '1',
  `studentfeedback` smallint(4) unsigned NOT NULL DEFAULT '0',
  `studentfeedbackurl` varchar(255) NOT NULL DEFAULT '',
  `forceplugins` smallint(4) unsigned NOT NULL DEFAULT '0',
  `shownextquiz` smallint(4) unsigned NOT NULL DEFAULT '0',
  `review` smallint(4) NOT NULL DEFAULT '0',
  `grade` bigint(10) NOT NULL DEFAULT '0',
  `grademethod` smallint(4) NOT NULL DEFAULT '1',
  `attempts` mediumint(6) NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL DEFAULT '',
  `subnet` varchar(255) NOT NULL DEFAULT '',
  `clickreporting` smallint(4) unsigned NOT NULL DEFAULT '0',
  `timecreated` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='details about Hot Potatoes quizzes';

/*Data for the table `mdl_hotpot` */

/*Table structure for table `mdl_hotpot_attempts` */

DROP TABLE IF EXISTS `mdl_hotpot_attempts`;

CREATE TABLE `mdl_hotpot_attempts` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `hotpot` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `starttime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `endtime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `score` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `penalties` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `attempt` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `timestart` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timefinish` bigint(10) unsigned NOT NULL DEFAULT '0',
  `status` smallint(4) unsigned NOT NULL DEFAULT '1',
  `clickreportid` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_hotpatte_use_ix` (`userid`),
  KEY `mdl_hotpatte_hot_ix` (`hotpot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='details about Hot Potatoes quiz attempts';

/*Data for the table `mdl_hotpot_attempts` */

/*Table structure for table `mdl_hotpot_details` */

DROP TABLE IF EXISTS `mdl_hotpot_details`;

CREATE TABLE `mdl_hotpot_details` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `attempt` bigint(10) unsigned NOT NULL DEFAULT '0',
  `details` text,
  PRIMARY KEY (`id`),
  KEY `mdl_hotpdeta_att_ix` (`attempt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='raw details (as XML) of Hot Potatoes quiz attempts';

/*Data for the table `mdl_hotpot_details` */

/*Table structure for table `mdl_hotpot_questions` */

DROP TABLE IF EXISTS `mdl_hotpot_questions`;

CREATE TABLE `mdl_hotpot_questions` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `type` smallint(4) unsigned NOT NULL DEFAULT '0',
  `text` bigint(10) unsigned NOT NULL DEFAULT '0',
  `hotpot` bigint(10) unsigned NOT NULL DEFAULT '0',
  `md5key` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_hotpques_md5_ix` (`md5key`),
  KEY `mdl_hotpques_hot_ix` (`hotpot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='details about questions in Hot Potatoes quiz attempts';

/*Data for the table `mdl_hotpot_questions` */

/*Table structure for table `mdl_hotpot_responses` */

DROP TABLE IF EXISTS `mdl_hotpot_responses`;

CREATE TABLE `mdl_hotpot_responses` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `attempt` bigint(10) unsigned NOT NULL DEFAULT '0',
  `question` bigint(10) unsigned NOT NULL DEFAULT '0',
  `score` mediumint(6) NOT NULL DEFAULT '0',
  `weighting` mediumint(6) NOT NULL DEFAULT '0',
  `correct` varchar(255) NOT NULL DEFAULT '',
  `wrong` varchar(255) NOT NULL DEFAULT '',
  `ignored` varchar(255) NOT NULL DEFAULT '',
  `hints` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `clues` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `checks` mediumint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_hotpresp_att_ix` (`attempt`),
  KEY `mdl_hotpresp_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='details about responses in Hot Potatoes quiz attempts';

/*Data for the table `mdl_hotpot_responses` */

/*Table structure for table `mdl_hotpot_strings` */

DROP TABLE IF EXISTS `mdl_hotpot_strings`;

CREATE TABLE `mdl_hotpot_strings` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `string` text NOT NULL,
  `md5key` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_hotpstri_md5_ix` (`md5key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='strings used in Hot Potatoes questions and responses';

/*Data for the table `mdl_hotpot_strings` */

/*Table structure for table `mdl_journal` */

DROP TABLE IF EXISTS `mdl_journal`;

CREATE TABLE `mdl_journal` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `introformat` tinyint(2) NOT NULL DEFAULT '0',
  `days` mediumint(5) unsigned NOT NULL DEFAULT '7',
  `assessed` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_jour_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='data for each journal';

/*Data for the table `mdl_journal` */

/*Table structure for table `mdl_journal_entries` */

DROP TABLE IF EXISTS `mdl_journal_entries`;

CREATE TABLE `mdl_journal_entries` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `journal` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `modified` bigint(10) unsigned NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `format` tinyint(2) NOT NULL DEFAULT '0',
  `rating` bigint(10) DEFAULT '0',
  `entrycomment` text,
  `teacher` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timemarked` bigint(10) unsigned NOT NULL DEFAULT '0',
  `mailed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_jourentr_use_ix` (`userid`),
  KEY `mdl_jourentr_jou_ix` (`journal`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='All the journal entries of all people';

/*Data for the table `mdl_journal_entries` */

/*Table structure for table `mdl_label` */

DROP TABLE IF EXISTS `mdl_label`;

CREATE TABLE `mdl_label` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_labe_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines labels';

/*Data for the table `mdl_label` */

/*Table structure for table `mdl_lams` */

DROP TABLE IF EXISTS `mdl_lams`;

CREATE TABLE `mdl_lams` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `introduction` text NOT NULL,
  `learning_session_id` bigint(20) DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_lams_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='LAMS activity';

/*Data for the table `mdl_lams` */

/*Table structure for table `mdl_lesson` */

DROP TABLE IF EXISTS `mdl_lesson`;

CREATE TABLE `mdl_lesson` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `practice` smallint(3) unsigned NOT NULL DEFAULT '0',
  `modattempts` smallint(3) unsigned NOT NULL DEFAULT '0',
  `usepassword` smallint(3) unsigned NOT NULL DEFAULT '0',
  `password` varchar(32) NOT NULL DEFAULT '',
  `dependency` bigint(10) unsigned NOT NULL DEFAULT '0',
  `conditions` text NOT NULL,
  `grade` smallint(3) NOT NULL DEFAULT '0',
  `custom` smallint(3) unsigned NOT NULL DEFAULT '0',
  `ongoing` smallint(3) unsigned NOT NULL DEFAULT '0',
  `usemaxgrade` smallint(3) NOT NULL DEFAULT '0',
  `maxanswers` smallint(3) unsigned NOT NULL DEFAULT '4',
  `maxattempts` smallint(3) unsigned NOT NULL DEFAULT '5',
  `review` smallint(3) unsigned NOT NULL DEFAULT '0',
  `nextpagedefault` smallint(3) unsigned NOT NULL DEFAULT '0',
  `feedback` smallint(3) unsigned NOT NULL DEFAULT '1',
  `minquestions` smallint(3) unsigned NOT NULL DEFAULT '0',
  `maxpages` smallint(3) unsigned NOT NULL DEFAULT '0',
  `timed` smallint(3) unsigned NOT NULL DEFAULT '0',
  `maxtime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `retake` smallint(3) unsigned NOT NULL DEFAULT '1',
  `activitylink` bigint(10) unsigned NOT NULL DEFAULT '0',
  `mediafile` varchar(255) NOT NULL DEFAULT '',
  `mediaheight` bigint(10) unsigned NOT NULL DEFAULT '100',
  `mediawidth` bigint(10) unsigned NOT NULL DEFAULT '650',
  `mediaclose` smallint(3) unsigned NOT NULL DEFAULT '0',
  `slideshow` smallint(3) unsigned NOT NULL DEFAULT '0',
  `width` bigint(10) unsigned NOT NULL DEFAULT '640',
  `height` bigint(10) unsigned NOT NULL DEFAULT '480',
  `bgcolor` varchar(7) NOT NULL DEFAULT '#FFFFFF',
  `displayleft` smallint(3) unsigned NOT NULL DEFAULT '0',
  `displayleftif` smallint(3) unsigned NOT NULL DEFAULT '0',
  `progressbar` smallint(3) unsigned NOT NULL DEFAULT '0',
  `highscores` smallint(3) unsigned NOT NULL DEFAULT '0',
  `maxhighscores` bigint(10) unsigned NOT NULL DEFAULT '0',
  `available` bigint(10) unsigned NOT NULL DEFAULT '0',
  `deadline` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_less_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines lesson';

/*Data for the table `mdl_lesson` */

/*Table structure for table `mdl_lesson_answers` */

DROP TABLE IF EXISTS `mdl_lesson_answers`;

CREATE TABLE `mdl_lesson_answers` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `pageid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `jumpto` bigint(11) NOT NULL DEFAULT '0',
  `grade` smallint(3) unsigned NOT NULL DEFAULT '0',
  `score` bigint(10) NOT NULL DEFAULT '0',
  `flags` smallint(3) unsigned NOT NULL DEFAULT '0',
  `timecreated` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  `answer` text,
  `response` text,
  PRIMARY KEY (`id`),
  KEY `mdl_lessansw_les_ix` (`lessonid`),
  KEY `mdl_lessansw_pag_ix` (`pageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines lesson_answers';

/*Data for the table `mdl_lesson_answers` */

/*Table structure for table `mdl_lesson_attempts` */

DROP TABLE IF EXISTS `mdl_lesson_attempts`;

CREATE TABLE `mdl_lesson_attempts` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `pageid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `answerid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `retry` smallint(3) unsigned NOT NULL DEFAULT '0',
  `correct` bigint(10) unsigned NOT NULL DEFAULT '0',
  `useranswer` text,
  `timeseen` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_lessatte_use_ix` (`userid`),
  KEY `mdl_lessatte_les_ix` (`lessonid`),
  KEY `mdl_lessatte_pag_ix` (`pageid`),
  KEY `mdl_lessatte_ans_ix` (`answerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines lesson_attempts';

/*Data for the table `mdl_lesson_attempts` */

/*Table structure for table `mdl_lesson_branch` */

DROP TABLE IF EXISTS `mdl_lesson_branch`;

CREATE TABLE `mdl_lesson_branch` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `pageid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `retry` bigint(10) unsigned NOT NULL DEFAULT '0',
  `flag` smallint(3) unsigned NOT NULL DEFAULT '0',
  `timeseen` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_lessbran_use_ix` (`userid`),
  KEY `mdl_lessbran_les_ix` (`lessonid`),
  KEY `mdl_lessbran_pag_ix` (`pageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='branches for each lesson/user';

/*Data for the table `mdl_lesson_branch` */

/*Table structure for table `mdl_lesson_default` */

DROP TABLE IF EXISTS `mdl_lesson_default`;

CREATE TABLE `mdl_lesson_default` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `practice` smallint(3) unsigned NOT NULL DEFAULT '0',
  `modattempts` smallint(3) unsigned NOT NULL DEFAULT '0',
  `usepassword` smallint(3) unsigned NOT NULL DEFAULT '0',
  `password` varchar(32) NOT NULL DEFAULT '',
  `conditions` text NOT NULL,
  `grade` smallint(3) NOT NULL DEFAULT '0',
  `custom` smallint(3) unsigned NOT NULL DEFAULT '0',
  `ongoing` smallint(3) unsigned NOT NULL DEFAULT '0',
  `usemaxgrade` smallint(3) unsigned NOT NULL DEFAULT '0',
  `maxanswers` smallint(3) unsigned NOT NULL DEFAULT '4',
  `maxattempts` smallint(3) unsigned NOT NULL DEFAULT '5',
  `review` smallint(3) unsigned NOT NULL DEFAULT '0',
  `nextpagedefault` smallint(3) unsigned NOT NULL DEFAULT '0',
  `feedback` smallint(3) unsigned NOT NULL DEFAULT '1',
  `minquestions` smallint(3) unsigned NOT NULL DEFAULT '0',
  `maxpages` smallint(3) unsigned NOT NULL DEFAULT '0',
  `timed` smallint(3) unsigned NOT NULL DEFAULT '0',
  `maxtime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `retake` smallint(3) unsigned NOT NULL DEFAULT '1',
  `mediaheight` bigint(10) unsigned NOT NULL DEFAULT '100',
  `mediawidth` bigint(10) unsigned NOT NULL DEFAULT '650',
  `mediaclose` smallint(3) unsigned NOT NULL DEFAULT '0',
  `slideshow` smallint(3) unsigned NOT NULL DEFAULT '0',
  `width` bigint(10) unsigned NOT NULL DEFAULT '640',
  `height` bigint(10) unsigned NOT NULL DEFAULT '480',
  `bgcolor` varchar(7) DEFAULT '#FFFFFF',
  `displayleft` smallint(3) unsigned NOT NULL DEFAULT '0',
  `displayleftif` smallint(3) unsigned NOT NULL DEFAULT '0',
  `progressbar` smallint(3) unsigned NOT NULL DEFAULT '0',
  `highscores` smallint(3) unsigned NOT NULL DEFAULT '0',
  `maxhighscores` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines lesson_default';

/*Data for the table `mdl_lesson_default` */

/*Table structure for table `mdl_lesson_grades` */

DROP TABLE IF EXISTS `mdl_lesson_grades`;

CREATE TABLE `mdl_lesson_grades` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `grade` double unsigned NOT NULL DEFAULT '0',
  `late` smallint(3) unsigned NOT NULL DEFAULT '0',
  `completed` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_lessgrad_use_ix` (`userid`),
  KEY `mdl_lessgrad_les_ix` (`lessonid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines lesson_grades';

/*Data for the table `mdl_lesson_grades` */

/*Table structure for table `mdl_lesson_high_scores` */

DROP TABLE IF EXISTS `mdl_lesson_high_scores`;

CREATE TABLE `mdl_lesson_high_scores` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `gradeid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `nickname` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_lesshighscor_use_ix` (`userid`),
  KEY `mdl_lesshighscor_les_ix` (`lessonid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='high scores for each lesson';

/*Data for the table `mdl_lesson_high_scores` */

/*Table structure for table `mdl_lesson_pages` */

DROP TABLE IF EXISTS `mdl_lesson_pages`;

CREATE TABLE `mdl_lesson_pages` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `prevpageid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `nextpageid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `qtype` smallint(3) unsigned NOT NULL DEFAULT '0',
  `qoption` smallint(3) unsigned NOT NULL DEFAULT '0',
  `layout` smallint(3) unsigned NOT NULL DEFAULT '1',
  `display` smallint(3) unsigned NOT NULL DEFAULT '1',
  `timecreated` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `contents` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_lesspage_les_ix` (`lessonid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines lesson_pages';

/*Data for the table `mdl_lesson_pages` */

/*Table structure for table `mdl_lesson_timer` */

DROP TABLE IF EXISTS `mdl_lesson_timer`;

CREATE TABLE `mdl_lesson_timer` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `starttime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `lessontime` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_lesstime_use_ix` (`userid`),
  KEY `mdl_lesstime_les_ix` (`lessonid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='lesson timer for each lesson';

/*Data for the table `mdl_lesson_timer` */

/*Table structure for table `mdl_log` */

DROP TABLE IF EXISTS `mdl_log`;

CREATE TABLE `mdl_log` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `module` varchar(20) NOT NULL DEFAULT '',
  `cmid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `action` varchar(40) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `info` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_log_coumodact_ix` (`course`,`module`,`action`),
  KEY `mdl_log_tim_ix` (`time`),
  KEY `mdl_log_act_ix` (`action`),
  KEY `mdl_log_usecou_ix` (`userid`,`course`),
  KEY `mdl_log_cmi_ix` (`cmid`)
) ENGINE=MyISAM AUTO_INCREMENT=1724 DEFAULT CHARSET=utf8 COMMENT='Every action is logged as far as possible';

/*Data for the table `mdl_log` */

insert  into `mdl_log`(`id`,`time`,`userid`,`ip`,`course`,`module`,`cmid`,`action`,`url`,`info`) values (1,1311276281,2,'127.0.0.1',1,'user',0,'update','view.php?id=2&course=1',''),(2,1311276336,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(3,1311276639,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(4,1311430915,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(5,1311430915,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(6,1311430980,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(7,1311431061,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(8,1311431310,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(9,1311431983,2,'127.0.0.1',1,'course',0,'new','view.php?id=2','Rekayasa Perangkat Lunak (ID 2)'),(10,1311431990,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(11,1311431994,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(12,1311432008,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(13,1311432008,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(14,1311432437,2,'127.0.0.1',1,'course',0,'new','view.php?id=3','Pemrogram Berorientasi Objek (ID 3)'),(15,1311432449,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(16,1311432665,2,'127.0.0.1',3,'course',0,'add mod','../mod/resource/view.php?id=3','resource 1'),(17,1311432665,2,'127.0.0.1',3,'resource',3,'add','view.php?id=3','1'),(18,1311432666,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(19,1311432708,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(20,1311432716,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(21,1311432747,2,'127.0.0.1',2,'course',0,'add mod','../mod/resource/view.php?id=4','resource 2'),(22,1311432747,2,'127.0.0.1',2,'resource',4,'add','view.php?id=4','2'),(23,1311432748,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(24,1311432793,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(25,1311432851,2,'127.0.0.1',3,'course',0,'update','edit.php?id=3','3'),(26,1311432852,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(27,1311432903,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(28,1311432993,2,'127.0.0.1',1,'user',0,'update','view.php?id=-1&course=1',''),(29,1311433043,3,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','3'),(30,1311433044,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(31,1311433058,3,'127.0.0.1',1,'library',0,'mailer','http://localhost/moodle/course/enrol.php?id=2&confirm=1&sesskey=hWvkYVbdkH','ERROR: Could not instantiate mail function.'),(32,1311433058,3,'127.0.0.1',2,'course',0,'enrol','view.php?id=2','2'),(33,1311433058,3,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(34,1311433064,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(35,1311433068,3,'127.0.0.1',1,'user',0,'logout','view.php?id=3&course=1','3'),(36,1311433084,3,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','3'),(37,1311433089,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(38,1311433097,3,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(39,1311433100,3,'127.0.0.1',1,'user',0,'logout','view.php?id=3&course=1','3'),(40,1311433142,2,'127.0.0.1',3,'course',0,'update','edit.php?id=3','3'),(41,1311433143,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(42,1311433164,3,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','3'),(43,1311433164,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(44,1311433168,3,'127.0.0.1',1,'user',0,'logout','view.php?id=3&course=1','3'),(45,1311433176,3,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','3'),(46,1311433181,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(47,1311433248,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(48,1311433361,2,'127.0.0.1',1,'course',0,'new','view.php?id=4','Mobile Programming (ID 4)'),(49,1311433383,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(50,1311433389,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(51,1311433396,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(52,1311433591,2,'127.0.0.1',1,'course',0,'new','view.php?id=5','Sistem Informasi (ID 5)'),(53,1311433596,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(54,1311433602,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(55,1311433616,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(56,1311433627,2,'127.0.0.1',2,'course',4,'delete mod','view.php?id=2','resource 2'),(57,1311433627,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(58,1311435876,2,'127.0.0.1',2,'course',0,'add mod','../mod/resource/view.php?id=7','resource 3'),(59,1311435876,2,'127.0.0.1',2,'resource',7,'add','view.php?id=7','3'),(60,1311435877,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(61,1311435912,2,'127.0.0.1',2,'course',0,'add mod','../mod/resource/view.php?id=8','resource 4'),(62,1311435912,2,'127.0.0.1',2,'resource',8,'add','view.php?id=8','4'),(63,1311435912,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(64,1311436102,2,'127.0.0.1',2,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=2&wdir=%2FPDF&action=upload','C:\\xampp\\htdocs\\moodledata/2/PDF/enkri.pdf'),(65,1311436163,2,'127.0.0.1',2,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=2&wdir=%2FPPT&action=upload','C:\\xampp\\htdocs\\moodledata/2/PPT/presentasi.ppt'),(66,1311436217,2,'127.0.0.1',2,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=2&wdir=%2FWORD&action=upload','C:\\xampp\\htdocs\\moodledata/2/WORD/CARAUPGRADEGALMINKEGINGERBREAD.doc'),(67,1311436264,2,'127.0.0.1',2,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=2&wdir=%2FMOVIE&action=upload','C:\\xampp\\htdocs\\moodledata/2/MOVIE/barca.mp4'),(68,1311436287,2,'127.0.0.1',2,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=2&wdir=%2FMOVIE&action=upload','C:\\xampp\\htdocs\\moodledata/2/MOVIE/kelok9.mp4'),(69,1311436341,2,'127.0.0.1',2,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=2&wdir=%2FPDF&action=upload','C:\\xampp\\htdocs\\moodledata/2/PDF/FUZZY.pdf'),(70,1311436753,2,'127.0.0.1',2,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=2&wdir=%2FPPT&action=upload','C:\\xampp\\htdocs\\moodledata/2/PPT/Oreintasi_KP-TA.ppt'),(71,1311436776,2,'127.0.0.1',2,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=2&wdir=%2FWORD&action=upload','C:\\xampp\\htdocs\\moodledata/2/WORD/BAB_II.docx'),(72,1311436952,2,'127.0.0.1',2,'course',0,'add mod','../mod/resource/view.php?id=9','resource 5'),(73,1311436952,2,'127.0.0.1',2,'resource',9,'add','view.php?id=9','5'),(74,1311436953,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(75,1311436987,2,'127.0.0.1',2,'course',0,'add mod','../mod/resource/view.php?id=10','resource 6'),(76,1311436987,2,'127.0.0.1',2,'resource',10,'add','view.php?id=10','6'),(77,1311436989,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(78,1311437029,2,'127.0.0.1',2,'course',0,'add mod','../mod/resource/view.php?id=11','resource 7'),(79,1311437029,2,'127.0.0.1',2,'resource',11,'add','view.php?id=11','7'),(80,1311437030,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(81,1311437060,2,'127.0.0.1',2,'course',0,'add mod','../mod/resource/view.php?id=12','resource 8'),(82,1311437060,2,'127.0.0.1',2,'resource',12,'add','view.php?id=12','8'),(83,1311437061,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(84,1311437079,2,'127.0.0.1',2,'resource',0,'view all','index.php?id=2',''),(85,1311437081,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(86,1311437106,2,'127.0.0.1',2,'course',0,'add mod','../mod/resource/view.php?id=13','resource 9'),(87,1311437106,2,'127.0.0.1',2,'resource',13,'add','view.php?id=13','9'),(88,1311437107,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(89,1311437134,2,'127.0.0.1',2,'course',0,'add mod','../mod/resource/view.php?id=14','resource 10'),(90,1311437134,2,'127.0.0.1',2,'resource',14,'add','view.php?id=14','10'),(91,1311437134,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(92,1311437162,2,'127.0.0.1',2,'course',0,'add mod','../mod/resource/view.php?id=15','resource 11'),(93,1311437162,2,'127.0.0.1',2,'resource',15,'add','view.php?id=15','11'),(94,1311437163,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(95,1311437189,2,'127.0.0.1',2,'course',0,'add mod','../mod/resource/view.php?id=16','resource 12'),(96,1311437189,2,'127.0.0.1',2,'resource',16,'add','view.php?id=16','12'),(97,1311437189,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(98,1311437203,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(99,1311437205,3,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(100,1311437211,3,'127.0.0.1',2,'resource',15,'view','view.php?id=15','11'),(101,1311438204,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(102,1311438547,2,'127.0.0.1',3,'course',3,'delete mod','view.php?id=3','resource 1'),(103,1311438547,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(104,1311438836,2,'127.0.0.1',3,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=3&wdir=%2FMOVIE&action=upload','C:\\xampp\\htdocs\\moodledata/3/MOVIE/barca.mp4'),(105,1311438846,2,'127.0.0.1',3,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=3&wdir=%2FMOVIE&action=upload','C:\\xampp\\htdocs\\moodledata/3/MOVIE/kelok9.mp4'),(106,1311438866,2,'127.0.0.1',3,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=3&wdir=%2FPDF&action=upload','C:\\xampp\\htdocs\\moodledata/3/PDF/PBO_Dasar.pdf'),(107,1311438876,2,'127.0.0.1',3,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=3&wdir=%2FPDF&action=upload','C:\\xampp\\htdocs\\moodledata/3/PDF/Perancangan_Berorientasi_Objek.pdf'),(108,1311438896,2,'127.0.0.1',3,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=3&wdir=%2FPDF&action=upload','C:\\xampp\\htdocs\\moodledata/3/PDF/Rational_Unified_Process_2.pdf'),(109,1311438911,2,'127.0.0.1',3,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=3&wdir=%2FPPT&action=upload','C:\\xampp\\htdocs\\moodledata/3/PPT/Keamanan_Komputer99.ppt'),(110,1311438922,2,'127.0.0.1',3,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=3&wdir=%2FPPT&action=upload','C:\\xampp\\htdocs\\moodledata/3/PPT/Presentation_kk.pptx'),(111,1311438938,2,'127.0.0.1',3,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=3&wdir=%2FWORD&action=upload','C:\\xampp\\htdocs\\moodledata/3/WORD/BAB_II.docx'),(112,1311438945,2,'127.0.0.1',3,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=3&wdir=%2FWORD&action=upload','C:\\xampp\\htdocs\\moodledata/3/WORD/BAB_III.docx'),(113,1311438974,2,'127.0.0.1',3,'course',0,'add mod','../mod/resource/view.php?id=17','resource 13'),(114,1311438974,2,'127.0.0.1',3,'resource',17,'add','view.php?id=17','13'),(115,1311438974,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(116,1311439017,2,'127.0.0.1',3,'course',0,'add mod','../mod/resource/view.php?id=18','resource 14'),(117,1311439017,2,'127.0.0.1',3,'resource',18,'add','view.php?id=18','14'),(118,1311439018,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(119,1311439106,2,'127.0.0.1',3,'course',0,'add mod','../mod/resource/view.php?id=19','resource 15'),(120,1311439106,2,'127.0.0.1',3,'resource',19,'add','view.php?id=19','15'),(121,1311439107,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(122,1311440039,2,'127.0.0.1',3,'course',0,'add mod','../mod/resource/view.php?id=20','resource 16'),(123,1311440039,2,'127.0.0.1',3,'resource',20,'add','view.php?id=20','16'),(124,1311440040,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(125,1311440089,2,'127.0.0.1',3,'course',0,'add mod','../mod/resource/view.php?id=21','resource 17'),(126,1311440089,2,'127.0.0.1',3,'resource',21,'add','view.php?id=21','17'),(127,1311440090,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(128,1311440154,2,'127.0.0.1',3,'course',0,'add mod','../mod/resource/view.php?id=22','resource 18'),(129,1311440154,2,'127.0.0.1',3,'resource',22,'add','view.php?id=22','18'),(130,1311440154,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(131,1311440170,2,'127.0.0.1',3,'course',0,'update mod','../mod/resource/view.php?id=21','resource 17'),(132,1311440170,2,'127.0.0.1',3,'resource',21,'update','view.php?id=21','17'),(133,1311440172,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(134,1311440218,2,'127.0.0.1',3,'course',0,'add mod','../mod/resource/view.php?id=23','resource 19'),(135,1311440218,2,'127.0.0.1',3,'resource',23,'add','view.php?id=23','19'),(136,1311440218,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(137,1311440246,2,'127.0.0.1',3,'course',0,'add mod','../mod/resource/view.php?id=24','resource 20'),(138,1311440246,2,'127.0.0.1',3,'resource',24,'add','view.php?id=24','20'),(139,1311440246,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(140,1311440271,2,'127.0.0.1',3,'course',0,'add mod','../mod/resource/view.php?id=25','resource 21'),(141,1311440271,2,'127.0.0.1',3,'resource',25,'add','view.php?id=25','21'),(142,1311440271,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(143,1311440293,2,'127.0.0.1',3,'course',0,'add mod','../mod/resource/view.php?id=26','resource 22'),(144,1311440293,2,'127.0.0.1',3,'resource',26,'add','view.php?id=26','22'),(145,1311440293,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(146,1311440320,2,'127.0.0.1',3,'course',0,'add mod','../mod/resource/view.php?id=27','resource 23'),(147,1311440320,2,'127.0.0.1',3,'resource',27,'add','view.php?id=27','23'),(148,1311440322,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(149,1311440441,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(150,1311440479,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(151,1311440738,2,'127.0.0.1',4,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=4&wdir=%2FMOVIE&action=upload','C:\\xampp\\htdocs\\moodledata/4/MOVIE/barca.mp4'),(152,1311440746,2,'127.0.0.1',4,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=4&wdir=%2FMOVIE&action=upload','C:\\xampp\\htdocs\\moodledata/4/MOVIE/kelok9.mp4'),(153,1311440766,2,'127.0.0.1',4,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=4&wdir=%2FPDF&action=upload','C:\\xampp\\htdocs\\moodledata/4/PDF/mLearn.pdf'),(154,1311440779,2,'127.0.0.1',4,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=4&wdir=%2FPDF&action=upload','C:\\xampp\\htdocs\\moodledata/4/PDF/enkri_witc_ecc.pdf'),(155,1311440797,2,'127.0.0.1',4,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=4&wdir=%2FPPT&action=upload','C:\\xampp\\htdocs\\moodledata/4/PPT/ALUR_PELAYANAN.pptx'),(156,1311440823,2,'127.0.0.1',4,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=4&wdir=%2FPPT&action=upload','C:\\xampp\\htdocs\\moodledata/4/PPT/Presentation_kk.pptx'),(157,1311440843,2,'127.0.0.1',4,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=4&wdir=%2FWORD&action=upload','C:\\xampp\\htdocs\\moodledata/4/WORD/BAB_I.docx'),(158,1311440852,2,'127.0.0.1',4,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=4&wdir=%2FWORD&action=upload','C:\\xampp\\htdocs\\moodledata/4/WORD/BAB_III.docx'),(159,1311440861,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(160,1311446821,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(161,1311446822,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(162,1311446983,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(163,1311447006,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(164,1311447010,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(165,1311447013,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(166,1311447019,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(167,1311447036,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(168,1311447042,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(169,1311447185,2,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=28','resource 24'),(170,1311447185,2,'127.0.0.1',4,'resource',28,'add','view.php?id=28','24'),(171,1311447187,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(172,1311448723,2,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=29','resource 25'),(173,1311448723,2,'127.0.0.1',4,'resource',29,'add','view.php?id=29','25'),(174,1311448723,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(175,1311448750,2,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=30','resource 26'),(176,1311448750,2,'127.0.0.1',4,'resource',30,'add','view.php?id=30','26'),(177,1311448751,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(178,1311449136,2,'127.0.0.1',4,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=4&wdir=%2FMOVIE&action=upload','C:\\xampp\\htdocs\\moodledata/4/MOVIE/Rossi_vs_Lorenzo.mp4'),(179,1311449145,2,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=31','resource 27'),(180,1311449145,2,'127.0.0.1',4,'resource',31,'add','view.php?id=31','27'),(181,1311449145,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(182,1311449174,2,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=32','resource 28'),(183,1311449174,2,'127.0.0.1',4,'resource',32,'add','view.php?id=32','28'),(184,1311449174,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(185,1311449210,2,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=33','resource 29'),(186,1311449210,2,'127.0.0.1',4,'resource',33,'add','view.php?id=33','29'),(187,1311449210,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(188,1311449231,2,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=34','resource 30'),(189,1311449231,2,'127.0.0.1',4,'resource',34,'add','view.php?id=34','30'),(190,1311449232,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(191,1311449259,2,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=35','resource 31'),(192,1311449259,2,'127.0.0.1',4,'resource',35,'add','view.php?id=35','31'),(193,1311449259,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(194,1311449282,2,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=36','resource 32'),(195,1311449282,2,'127.0.0.1',4,'resource',36,'add','view.php?id=36','32'),(196,1311449282,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(197,1311449296,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(198,1311449304,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(199,1311449416,2,'127.0.0.1',5,'course',0,'add mod','../mod/resource/view.php?id=37','resource 33'),(200,1311449416,2,'127.0.0.1',5,'resource',37,'add','view.php?id=37','33'),(201,1311449418,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(202,1311449529,2,'127.0.0.1',5,'course',0,'add mod','../mod/resource/view.php?id=38','resource 34'),(203,1311449529,2,'127.0.0.1',5,'resource',38,'add','view.php?id=38','34'),(204,1311449529,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(205,1311449542,2,'127.0.0.1',5,'course',0,'update mod','../mod/resource/view.php?id=38','resource 34'),(206,1311449542,2,'127.0.0.1',5,'resource',38,'update','view.php?id=38','34'),(207,1311449542,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(208,1311449600,2,'127.0.0.1',5,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=5&wdir=%2FMOVIE&action=upload','C:\\xampp\\htdocs\\moodledata/5/MOVIE/kelok9.mp4'),(209,1311449608,2,'127.0.0.1',5,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=5&wdir=%2FMOVIE&action=upload','C:\\xampp\\htdocs\\moodledata/5/MOVIE/Rossi_vs_Lorenzo.mp4'),(210,1311449713,2,'127.0.0.1',5,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=5&wdir=%2FPDF&action=upload','C:\\xampp\\htdocs\\moodledata/5/PDF/SISTEM_INFORMASI.pdf'),(211,1311449743,2,'127.0.0.1',5,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=5&wdir=%2FWORD&action=upload','C:\\xampp\\htdocs\\moodledata/5/WORD/BAB_III.docx'),(212,1311449756,2,'127.0.0.1',5,'course',0,'add mod','../mod/resource/view.php?id=39','resource 35'),(213,1311449756,2,'127.0.0.1',5,'resource',39,'add','view.php?id=39','35'),(214,1311449756,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(215,1311449787,2,'127.0.0.1',5,'course',0,'add mod','../mod/resource/view.php?id=40','resource 36'),(216,1311449787,2,'127.0.0.1',5,'resource',40,'add','view.php?id=40','36'),(217,1311449787,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(218,1311449837,2,'127.0.0.1',5,'course',0,'add mod','../mod/resource/view.php?id=41','resource 37'),(219,1311449837,2,'127.0.0.1',5,'resource',41,'add','view.php?id=41','37'),(220,1311449838,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(221,1311449843,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(222,1311450606,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(223,1311450806,2,'127.0.0.1',5,'course',0,'add mod','../mod/assignment/view.php?id=42','assignment 1'),(224,1311450806,2,'127.0.0.1',5,'assignment',42,'add','view.php?id=42','1'),(225,1311450807,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(226,1311450816,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(227,1311450824,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(228,1311450946,2,'127.0.0.1',4,'course',0,'add mod','../mod/assignment/view.php?id=43','assignment 2'),(229,1311450946,2,'127.0.0.1',4,'assignment',43,'add','view.php?id=43','2'),(230,1311450946,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(231,1311450987,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(232,1311450993,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(233,1311451006,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(234,1311451038,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(235,1311451100,2,'127.0.0.1',3,'course',0,'add mod','../mod/assignment/view.php?id=44','assignment 3'),(236,1311451100,2,'127.0.0.1',3,'assignment',44,'add','view.php?id=44','3'),(237,1311451102,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(238,1311451543,2,'127.0.0.1',3,'course',0,'add mod','../mod/assignment/view.php?id=45','assignment 4'),(239,1311451543,2,'127.0.0.1',3,'assignment',45,'add','view.php?id=45','4'),(240,1311451544,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(241,1311451547,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(242,1311451553,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(243,1311451629,2,'127.0.0.1',2,'course',0,'add mod','../mod/assignment/view.php?id=46','assignment 5'),(244,1311451629,2,'127.0.0.1',2,'assignment',46,'add','view.php?id=46','5'),(245,1311451630,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(246,1311451689,2,'127.0.0.1',2,'course',0,'add mod','../mod/assignment/view.php?id=47','assignment 6'),(247,1311451689,2,'127.0.0.1',2,'assignment',47,'add','view.php?id=47','6'),(248,1311451690,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(249,1311451712,2,'127.0.0.1',2,'assignment',46,'view','view.php?id=46','5'),(250,1311451723,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(251,1311528074,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(252,1311528075,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(253,1311528399,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(254,1311528620,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(255,1311562164,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(256,1311562164,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(257,1311562217,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(258,1311562280,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(259,1311562284,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(260,1311562308,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(261,1311562339,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(262,1311562339,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(263,1311562444,2,'127.0.0.1',1,'user',0,'update','view.php?id=-1&course=1',''),(264,1311562594,2,'127.0.0.1',1,'user',0,'update','view.php?id=-1&course=1',''),(265,1311562638,3,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','3'),(266,1311562644,3,'127.0.0.1',1,'library',0,'mailer','http://localhost/moodle/course/enrol.php?id=5&confirm=1&sesskey=cTVbgod1DT','ERROR: Could not instantiate mail function.'),(267,1311562644,3,'127.0.0.1',5,'course',0,'enrol','view.php?id=5','5'),(268,1311562645,3,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(269,1311562648,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(270,1311562656,3,'127.0.0.1',1,'user',0,'logout','view.php?id=3&course=1','3'),(271,1311562675,3,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','3'),(272,1311562681,3,'127.0.0.1',1,'library',0,'mailer','http://localhost/moodle/course/enrol.php?id=4&confirm=1&sesskey=AQ4Z68XxKP','ERROR: Could not instantiate mail function.'),(273,1311562681,3,'127.0.0.1',4,'course',0,'enrol','view.php?id=4','4'),(274,1311562681,3,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(275,1311562692,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(276,1311562698,3,'127.0.0.1',1,'user',0,'logout','view.php?id=3&course=1','3'),(277,1311562731,4,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','4'),(278,1311562731,4,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(279,1311562738,4,'127.0.0.1',1,'library',0,'mailer','http://localhost/moodle/course/enrol.php?id=4&confirm=1&sesskey=QDVfYWHbvA','ERROR: Could not instantiate mail function.'),(280,1311562738,4,'127.0.0.1',4,'course',0,'enrol','view.php?id=4','4'),(281,1311562739,4,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(282,1311562741,4,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(283,1311562745,4,'127.0.0.1',1,'user',0,'logout','view.php?id=4&course=1','4'),(284,1311562754,4,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','4'),(285,1311562761,4,'127.0.0.1',1,'library',0,'mailer','http://localhost/moodle/course/enrol.php?id=3&confirm=1&sesskey=2Ys7bYEJro','ERROR: Could not instantiate mail function.'),(286,1311562761,4,'127.0.0.1',3,'course',0,'enrol','view.php?id=3','3'),(287,1311562761,4,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(288,1311562765,4,'127.0.0.1',1,'user',0,'logout','view.php?id=4&course=1','4'),(289,1311562785,4,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','4'),(290,1311562790,4,'127.0.0.1',1,'library',0,'mailer','http://localhost/moodle/course/enrol.php?id=2&confirm=1&sesskey=V0fIoX4CEZ','ERROR: Could not instantiate mail function.'),(291,1311562790,4,'127.0.0.1',2,'course',0,'enrol','view.php?id=2','2'),(292,1311562791,4,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(293,1311562796,4,'127.0.0.1',1,'user',0,'logout','view.php?id=4&course=1','4'),(294,1311562819,5,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','5'),(295,1311562823,5,'127.0.0.1',1,'library',0,'mailer','http://localhost/moodle/course/enrol.php?id=4&confirm=1&sesskey=0pK7DO99LE','ERROR: Could not instantiate mail function.'),(296,1311562823,5,'127.0.0.1',4,'course',0,'enrol','view.php?id=4','4'),(297,1311562824,5,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(298,1311562827,5,'127.0.0.1',1,'user',0,'logout','view.php?id=5&course=1','5'),(299,1311562844,5,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','5'),(300,1311562849,5,'127.0.0.1',1,'library',0,'mailer','http://localhost/moodle/course/enrol.php?id=5&confirm=1&sesskey=G31qApKgq1','ERROR: Could not instantiate mail function.'),(301,1311562849,5,'127.0.0.1',5,'course',0,'enrol','view.php?id=5','5'),(302,1311562850,5,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(303,1311604798,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(304,1311604798,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(305,1311604820,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(306,1311604856,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(307,1311605070,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(308,1311605085,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(309,1311605105,2,'127.0.0.1',3,'course',20,'delete mod','view.php?id=3','resource 16'),(310,1311605106,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(311,1311605169,2,'127.0.0.1',3,'course',0,'add mod','../mod/resource/view.php?id=48','resource 38'),(312,1311605169,2,'127.0.0.1',3,'resource',48,'add','view.php?id=48','38'),(313,1311605170,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(314,1311606208,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(315,1311606287,2,'127.0.0.1',3,'course',0,'add mod','../mod/resource/view.php?id=49','resource 39'),(316,1311606287,2,'127.0.0.1',3,'resource',49,'add','view.php?id=49','39'),(317,1311606288,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(318,1311608267,2,'127.0.0.1',3,'course',0,'update mod','../mod/assignment/view.php?id=44','assignment 3'),(319,1311608267,2,'127.0.0.1',3,'assignment',44,'update','view.php?id=44','3'),(320,1311608268,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(321,1311608299,2,'127.0.0.1',3,'assignment',44,'view','view.php?id=44','3'),(322,1311608357,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(323,1311608373,2,'127.0.0.1',3,'assignment',45,'view','view.php?id=45','4'),(324,1311608401,2,'127.0.0.1',3,'course',0,'update mod','../mod/assignment/view.php?id=45','assignment 4'),(325,1311608401,2,'127.0.0.1',3,'assignment',45,'update','view.php?id=45','4'),(326,1311608403,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(327,1311609647,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(328,1311609654,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(329,1311609683,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=30','resource 26'),(330,1311609683,2,'127.0.0.1',4,'resource',30,'update','view.php?id=30','26'),(331,1311609684,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(332,1311609702,2,'127.0.0.1',4,'resource',30,'view','view.php?id=30','26'),(333,1311609713,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(334,1311609718,2,'127.0.0.1',4,'course',30,'delete mod','view.php?id=4','resource 26'),(335,1311609719,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(336,1311609754,2,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=50','resource 40'),(337,1311609754,2,'127.0.0.1',4,'resource',50,'add','view.php?id=50','40'),(338,1311609755,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(339,1311609817,2,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=51','resource 41'),(340,1311609817,2,'127.0.0.1',4,'resource',51,'add','view.php?id=51','41'),(341,1311609819,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(342,1311609845,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=51','resource 41'),(343,1311609845,2,'127.0.0.1',4,'resource',51,'update','view.php?id=51','41'),(344,1311609845,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(345,1311609888,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(346,1311609903,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(347,1311609910,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(348,1311609927,2,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=52','resource 42'),(349,1311609927,2,'127.0.0.1',4,'resource',52,'add','view.php?id=52','42'),(350,1311609927,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(351,1311609991,2,'127.0.0.1',4,'course',52,'delete mod','view.php?id=4','resource 42'),(352,1311609993,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(353,1311610051,2,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=53','resource 43'),(354,1311610051,2,'127.0.0.1',4,'resource',53,'add','view.php?id=53','43'),(355,1311610052,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(356,1311610066,2,'127.0.0.1',4,'course',53,'delete mod','view.php?id=4','resource 43'),(357,1311610067,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(358,1311610089,2,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=54','resource 44'),(359,1311610089,2,'127.0.0.1',4,'resource',54,'add','view.php?id=54','44'),(360,1311610089,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(361,1311610104,2,'127.0.0.1',4,'course',54,'delete mod','view.php?id=4','resource 44'),(362,1311610104,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(363,1311610135,2,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=55','resource 45'),(364,1311610135,2,'127.0.0.1',4,'resource',55,'add','view.php?id=55','45'),(365,1311610136,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(366,1311615653,2,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=56','resource 46'),(367,1311615653,2,'127.0.0.1',4,'resource',56,'add','view.php?id=56','46'),(368,1311615653,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(369,1311615685,2,'127.0.0.1',4,'course',29,'delete mod','view.php?id=4','resource 25'),(370,1311615686,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(371,1311615781,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(372,1311615787,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(373,1311615837,2,'127.0.0.1',5,'course',0,'add mod','../mod/resource/view.php?id=57','resource 47'),(374,1311615837,2,'127.0.0.1',5,'resource',57,'add','view.php?id=57','47'),(375,1311615838,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(376,1311615878,2,'127.0.0.1',5,'course',0,'add mod','../mod/resource/view.php?id=58','resource 48'),(377,1311615878,2,'127.0.0.1',5,'resource',58,'add','view.php?id=58','48'),(378,1311615880,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(379,1311776391,5,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','5'),(380,1311776392,5,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(381,1311776397,5,'127.0.0.1',1,'user',0,'logout','view.php?id=5&course=1','5'),(382,1311776410,0,'127.0.0.1',0,'login',0,'error','index.php','gita'),(383,1311776420,4,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','4'),(384,1311776420,4,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(385,1311781068,4,'127.0.0.1',1,'user',0,'logout','view.php?id=4&course=1','4'),(386,1311781079,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(387,1311781080,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(388,1311781122,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(389,1311781123,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(390,1311781200,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(391,1311781914,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(392,1311781926,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(393,1311781932,2,'127.0.0.1',4,'course',51,'delete mod','view.php?id=4','resource 41'),(394,1311781932,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(395,1311781939,2,'127.0.0.1',4,'course',55,'delete mod','view.php?id=4','resource 45'),(396,1311781940,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(397,1311781950,2,'127.0.0.1',4,'course',50,'delete mod','view.php?id=4','resource 40'),(398,1311781950,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(399,1311863710,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(400,1311863716,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(401,1311863724,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(402,1311863730,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(403,1312344488,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(404,1312344489,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(405,1312344561,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(406,1312344579,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(407,1312344579,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(408,1312344586,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(409,1312344601,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(410,1312344624,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(411,1312344624,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(412,1312344626,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(413,1312440713,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(414,1312440714,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(415,1312440803,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(416,1312440820,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(417,1312618923,0,'127.0.0.1',0,'login',0,'error','index.php','yhooz'),(418,1312618929,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(419,1312618930,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(420,1312620052,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(421,1312620780,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(422,1312620791,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(423,1312620792,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(424,1312620810,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(425,1312620810,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(426,1312621049,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(427,1312621057,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(428,1312621135,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(429,1312621173,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(430,1312621179,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(431,1312621268,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(432,1312621275,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(433,1312621279,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(434,1312621341,2,'127.0.0.1',2,'course',0,'update','edit.php?id=2','2'),(435,1312621342,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(436,1312621469,2,'127.0.0.1',1,'user',0,'update','view.php?id=-1&course=1',''),(437,1312621569,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(438,1312621670,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(439,1312621689,6,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','6'),(440,1312621689,6,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(441,1312621705,6,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(442,1312621711,6,'127.0.0.1',1,'user',0,'logout','view.php?id=6&course=1','6'),(443,1312621740,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(444,1312621968,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(445,1312621994,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(446,1312621995,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(447,1312622062,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(448,1312622116,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(449,1312622135,0,'127.0.0.1',0,'login',0,'error','index.php','jasril'),(450,1312622155,6,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','6'),(451,1312622155,6,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(452,1312622211,6,'127.0.0.1',1,'user',0,'logout','view.php?id=6&course=1','6'),(453,1312622234,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(454,1312622234,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(455,1312622301,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(456,1312622576,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(457,1312622597,6,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','6'),(458,1312622598,6,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(459,1312622610,6,'127.0.0.1',1,'user',0,'logout','view.php?id=6&course=1','6'),(460,1312622616,1,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','1'),(461,1312622625,1,'127.0.0.1',1,'user',0,'login','view.php?id=1&course=1','1'),(462,1312622625,1,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(463,1312622652,2,'127.0.0.1',1,'user',0,'login','view.php?id=1&course=1','2'),(464,1312622652,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(465,1312622719,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(466,1312623018,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(467,1312623036,6,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','6'),(468,1312623037,6,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(469,1312623040,6,'127.0.0.1',1,'user',0,'logout','view.php?id=6&course=1','6'),(470,1312623073,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(471,1312650471,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(472,1312650473,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(473,1312650484,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(474,1312650651,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(475,1312650717,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(476,1312650718,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(477,1312650730,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(478,1312650731,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(479,1312651438,2,'127.0.0.1',5,'course',0,'update','edit.php?id=5','5'),(480,1312651439,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(481,1312652432,2,'127.0.0.1',1,'role',0,'assign','admin/roles/assign.php?contextid=1&roleid=3','Teacher'),(482,1312652447,2,'127.0.0.1',1,'role',0,'unassign','admin/roles/assign.php?contextid=1&roleid=3','Teacher'),(483,1312652460,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(484,1312652460,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(485,1312652472,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(486,1312652507,2,'127.0.0.1',1,'role',0,'assign','admin/roles/assign.php?contextid=1&roleid=3','Teacher'),(487,1312652531,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(488,1312652531,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(489,1312652598,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(490,1312652626,6,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','6'),(491,1312652627,6,'127.0.0.1',1,'user',0,'view','view.php?id=6&course=1','6'),(492,1312652644,6,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(493,1312652658,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(494,1312652667,6,'127.0.0.1',1,'user',0,'logout','view.php?id=6&course=1','6'),(495,1312652694,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(496,1312652694,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(497,1312652833,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(498,1312652872,2,'127.0.0.1',1,'role',0,'unassign','admin/roles/assign.php?contextid=1&roleid=3','Teacher'),(499,1312652884,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(500,1312652899,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(501,1312652900,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(502,1312652906,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(503,1312652931,2,'127.0.0.1',2,'role',0,'assign','admin/roles/assign.php?contextid=10&roleid=3','Teacher'),(504,1312652942,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(505,1312652967,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(506,1312652988,6,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','6'),(507,1312652989,6,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(508,1312652993,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(509,1312652999,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(510,1312653004,6,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(511,1312653011,6,'127.0.0.1',1,'user',0,'logout','view.php?id=6&course=1','6'),(512,1312653031,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(513,1312653031,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(514,1312653098,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(515,1312653144,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(516,1312653165,2,'127.0.0.1',2,'course',0,'update','edit.php?id=2','2'),(517,1312653166,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(518,1312653173,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(519,1312653369,2,'127.0.0.1',1,'user',0,'update','view.php?id=-1&course=1',''),(520,1312653414,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(521,1312653466,2,'127.0.0.1',1,'user',0,'update','view.php?id=-1&course=1',''),(522,1312653486,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(523,1312653487,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(524,1312653494,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(525,1312653512,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(526,1312653544,2,'127.0.0.1',3,'course',0,'update','edit.php?id=3','3'),(527,1312653544,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(528,1312653550,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(529,1312653579,2,'127.0.0.1',4,'course',0,'update','edit.php?id=4','4'),(530,1312653579,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(531,1312653583,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(532,1312653604,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(533,1312653605,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(534,1312653611,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(535,1312653633,2,'127.0.0.1',3,'role',0,'assign','admin/roles/assign.php?contextid=20&roleid=3','Teacher'),(536,1312653648,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(537,1312653671,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(538,1312653672,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(539,1312653680,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(540,1312653705,2,'127.0.0.1',4,'role',0,'assign','admin/roles/assign.php?contextid=32&roleid=3','Teacher'),(541,1312653716,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(542,1312653723,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(543,1312653749,8,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','8'),(544,1312653749,8,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(545,1312653753,8,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(546,1312653756,8,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(547,1312653765,8,'127.0.0.1',1,'user',0,'logout','view.php?id=8&course=1','8'),(548,1312653787,7,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','7'),(549,1312653787,7,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(550,1312653790,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(551,1312653793,7,'127.0.0.1',1,'user',0,'logout','view.php?id=7&course=1','7'),(552,1312653804,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(553,1312653805,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(554,1312653884,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(555,1312653965,2,'127.0.0.1',1,'user',0,'update','view.php?id=8&course=1',''),(556,1312653991,2,'127.0.0.1',1,'user',0,'update','view.php?id=7&course=1',''),(557,1312654022,2,'127.0.0.1',1,'user',0,'update','view.php?id=6&course=1',''),(558,1312654031,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(559,1312654178,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(560,1312654196,6,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','6'),(561,1312654196,6,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(562,1312654207,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(563,1312654210,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(564,1312654284,6,'127.0.0.1',2,'course',0,'add mod','../mod/quiz/view.php?id=60','quiz 1'),(565,1312654284,6,'127.0.0.1',2,'quiz',60,'add','view.php?id=60','1'),(566,1312654284,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(567,1312654291,6,'127.0.0.1',2,'quiz',60,'editquestions','view.php?id=60','1'),(568,1312654368,6,'127.0.0.1',2,'quiz',60,'editquestions','view.php?id=60','1'),(569,1312654371,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(570,1312654392,6,'127.0.0.1',2,'course',0,'update mod','../mod/quiz/view.php?id=60','quiz 1'),(571,1312654392,6,'127.0.0.1',2,'quiz',60,'update','view.php?id=60','1'),(572,1312654393,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(573,1312654442,6,'127.0.0.1',2,'quiz',60,'editquestions','view.php?id=60','1'),(574,1312654593,6,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(575,1312654619,4,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','4'),(576,1312654620,4,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(577,1312654623,4,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(578,1312654626,4,'127.0.0.1',2,'quiz',60,'view','view.php?id=60','1'),(579,1312654642,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(580,1312654648,6,'127.0.0.1',2,'quiz',60,'editquestions','view.php?id=60','1'),(581,1312654655,6,'127.0.0.1',2,'quiz',60,'editquestions','view.php?id=60','1'),(582,1312654665,6,'127.0.0.1',2,'quiz',60,'editquestions','view.php?id=60','1'),(583,1312654679,4,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(584,1312654682,4,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(585,1312654684,4,'127.0.0.1',2,'quiz',60,'view','view.php?id=60','1'),(586,1312654689,4,'127.0.0.1',2,'quiz',60,'attempt','review.php?attempt=1','1'),(587,1312654781,6,'127.0.0.1',2,'quiz',60,'editquestions','view.php?id=60','1'),(588,1312654786,6,'127.0.0.1',2,'quiz',60,'editquestions','view.php?id=60','1'),(589,1312654790,4,'127.0.0.1',2,'quiz',60,'view','view.php?id=60','1'),(590,1312654793,4,'127.0.0.1',2,'quiz',60,'continue attemp','review.php?attempt=1','1'),(591,1312654814,6,'127.0.0.1',2,'quiz',60,'view','view.php?id=60','1'),(592,1312654820,6,'127.0.0.1',2,'quiz',60,'preview','attempt.php?id=60','1'),(593,1312654825,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(594,1312654831,6,'127.0.0.1',2,'quiz',60,'view','view.php?id=60','1'),(595,1312654854,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(596,1312654858,6,'127.0.0.1',2,'quiz',60,'view','view.php?id=60','1'),(597,1312654862,6,'127.0.0.1',2,'quiz',60,'editquestions','view.php?id=60','1'),(598,1312654906,6,'127.0.0.1',2,'quiz',60,'editquestions','view.php?id=60','1'),(599,1312654916,4,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(600,1312654921,4,'127.0.0.1',2,'quiz',60,'view','view.php?id=60','1'),(601,1312654923,4,'127.0.0.1',2,'quiz',60,'continue attemp','review.php?attempt=1','1'),(602,1312655013,4,'127.0.0.1',2,'quiz',60,'continue attemp','review.php?attempt=1','1'),(603,1312655013,4,'127.0.0.1',2,'quiz',60,'close attempt','review.php?attempt=1','1'),(604,1312655014,4,'127.0.0.1',2,'quiz',60,'review','review.php?attempt=1','1'),(605,1312655021,4,'127.0.0.1',2,'quiz',60,'view','view.php?id=60','1'),(606,1312655026,4,'127.0.0.1',2,'quiz',60,'attempt','review.php?attempt=3','1'),(607,1312659006,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(608,1312659007,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(609,1312659139,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(610,1312659834,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(611,1312659834,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(612,1312659936,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(613,1312659941,2,'127.0.0.1',1,'forum',59,'view forum','view.php?id=59','5'),(614,1312660003,2,'127.0.0.1',1,'forum',59,'add discussion','discuss.php?d=1','1'),(615,1312660005,2,'127.0.0.1',1,'forum',59,'view forum','view.php?id=59','5'),(616,1312660013,2,'127.0.0.1',1,'forum',59,'view discussion','discuss.php?d=1','1'),(617,1312660017,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(618,1312660033,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(619,1312660037,0,'127.0.0.1',1,'forum',59,'view forum','view.php?id=59','5'),(620,1312660055,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(621,1312660055,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(622,1312660594,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(623,1312660680,2,'127.0.0.1',1,'forum',59,'view discussion','discuss.php?d=1','1'),(624,1312660715,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(625,1312660720,2,'127.0.0.1',1,'forum',59,'view forum','view.php?id=59','5'),(626,1312660752,2,'127.0.0.1',1,'forum',59,'add discussion','discuss.php?d=2','2'),(627,1312660755,2,'127.0.0.1',1,'forum',59,'view forum','view.php?id=59','5'),(628,1312702896,0,'127.0.0.1',1,'forum',59,'view discussion','discuss.php?d=2','2'),(629,1312702909,0,'127.0.0.1',1,'forum',59,'view discussion','discuss.php?d=1','1'),(630,1312702977,0,'127.0.0.1',1,'forum',59,'view discussion','discuss.php?d=2','2'),(631,1312703184,0,'127.0.0.1',1,'forum',59,'view forum','view.php?id=59','5'),(632,1312703189,0,'127.0.0.1',1,'forum',59,'view discussion','discuss.php?d=2','2'),(633,1312703404,0,'127.0.0.1',1,'forum',59,'view forum','view.php?id=59','5'),(634,1312703492,0,'127.0.0.1',1,'forum',0,'view forums','index.php?id=1',''),(635,1312703509,0,'127.0.0.1',1,'forum',59,'view forum','view.php?id=59','5'),(636,1312703682,0,'127.0.0.1',1,'forum',59,'view forum','view.php?id=59','5'),(637,1312703943,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(638,1312703944,2,'127.0.0.1',1,'user',0,'view','view.php?id=2&course=1','2'),(639,1312703954,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(640,1312704036,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(641,1312704233,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(642,1312704233,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(643,1312704386,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(644,1312704417,2,'127.0.0.1',1,'forum',59,'view forum','view.php?id=59','5'),(645,1312704442,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(646,1312704462,7,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','7'),(647,1312704463,7,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(648,1312704470,7,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(649,1312704478,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(650,1312704488,7,'127.0.0.1',4,'forum',5,'view forum','view.php?id=5','3'),(651,1312704520,7,'127.0.0.1',4,'forum',5,'add discussion','discuss.php?d=3','3'),(652,1312704523,7,'127.0.0.1',4,'forum',5,'view forum','view.php?id=5','3'),(653,1312704530,7,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(654,1312704532,7,'127.0.0.1',1,'user',0,'logout','view.php?id=7&course=1','7'),(655,1312704546,0,'127.0.0.1',1,'forum',59,'view forum','view.php?id=59','5'),(656,1312704571,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(657,1312704571,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(658,1312704592,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(659,1312704655,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(660,1312704656,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(661,1312704660,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(662,1312704809,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(663,1312708486,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(664,1312708536,2,'127.0.0.1',1,'forum',59,'view discussion','discuss.php?d=2','2'),(665,1312708541,2,'127.0.0.1',1,'forum',59,'view discussion','discuss.php?d=2','2'),(666,1312708552,2,'127.0.0.1',1,'forum',0,'search','search.php?id=1&search=',''),(667,1312708557,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(668,1313048036,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(669,1313048037,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(670,1313048102,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(671,1313048309,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(672,1313048323,7,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','7'),(673,1313048323,7,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(674,1313048398,7,'127.0.0.1',1,'user',0,'logout','view.php?id=7&course=1','7'),(675,1313048413,3,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','3'),(676,1313048414,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(677,1313048418,3,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(678,1313048421,3,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(679,1313048442,3,'127.0.0.1',4,'upload',0,'upload','http://localhost/moodle/mod/assignment/view.php?id=43','C:\\xampp\\htdocs\\moodledata/4/moddata/assignment/2/3/PBO_Dasar.pdf'),(680,1313048442,3,'127.0.0.1',4,'assignment',43,'upload','view.php?a=2','2'),(681,1313048445,3,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(682,1313048493,3,'127.0.0.1',4,'assignment',0,'view all','index.php?id=4',''),(683,1313048560,3,'127.0.0.1',4,'assignment',0,'view all','index.php?id=4',''),(684,1313048566,3,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(685,1313048569,3,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(686,1313048609,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(687,1313048611,3,'127.0.0.1',1,'user',0,'logout','view.php?id=3&course=1','3'),(688,1313048632,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(689,1313048632,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(690,1313048698,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(691,1313048711,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(692,1313048718,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(693,1313048724,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(694,1313048729,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(695,1313048733,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(696,1313048735,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(697,1313048744,2,'127.0.0.1',4,'upload',0,'upload','http://localhost/moodle/mod/assignment/view.php?id=43','C:\\xampp\\htdocs\\moodledata/4/moddata/assignment/2/2/Perancangan_Berorientasi_Objek.pdf'),(698,1313048744,2,'127.0.0.1',4,'assignment',43,'upload','view.php?a=2','2'),(699,1313048748,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(700,1313049073,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(701,1313049083,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(702,1313049100,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(703,1313049104,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(704,1313049111,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(705,1313049164,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(706,1313049182,3,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','3'),(707,1313049183,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(708,1313049185,3,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(709,1313049188,3,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(710,1313049228,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(711,1313049231,3,'127.0.0.1',1,'user',0,'logout','view.php?id=3&course=1','3'),(712,1313049246,7,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','7'),(713,1313049246,7,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(714,1313049250,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(715,1313049253,7,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(716,1313049257,7,'127.0.0.1',4,'assignment',0,'view all','index.php?id=4',''),(717,1313049262,7,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(718,1313049458,0,'127.0.0.1',0,'login',0,'error','index.php','yhooz'),(719,1313049464,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(720,1313049465,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(721,1313049528,5,'127.0.0.1',1,'user',0,'login','view.php?id=2&course=1','5'),(722,1313049528,5,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(723,1313049540,7,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(724,1313049543,7,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(725,1313049545,7,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(726,1313049548,7,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(727,1313049551,7,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(728,1313049554,7,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(729,1313049559,5,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(730,1313049562,5,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(731,1313049580,5,'127.0.0.1',4,'upload',0,'upload','http://localhost/moodle/mod/assignment/view.php?id=43','C:\\xampp\\htdocs\\moodledata/4/moddata/assignment/2/5/Sample.pdf'),(732,1313049580,5,'127.0.0.1',4,'assignment',43,'upload','view.php?a=2','2'),(733,1313049582,5,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(734,1313049597,7,'127.0.0.1',4,'assignment',0,'view all','index.php?id=4',''),(735,1313049600,7,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(736,1313050319,7,'127.0.0.1',4,'assignment',0,'view all','index.php?id=4',''),(737,1313050322,7,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(738,1313050424,7,'127.0.0.1',4,'assignment',0,'view all','index.php?id=4',''),(739,1313050427,7,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(740,1313097716,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(741,1313097717,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(742,1313097785,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(743,1313098072,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(744,1313098079,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(745,1313098083,2,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(746,1313098941,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(747,1313227017,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(748,1313227017,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(749,1313227506,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(750,1313227517,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(751,1313305297,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(752,1313305299,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(753,1313305415,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(754,1313305445,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(755,1313305450,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(756,1313306288,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(757,1313306295,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(758,1313306321,3,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','3'),(759,1313306323,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(760,1313306334,3,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(761,1313306340,3,'127.0.0.1',2,'assignment',46,'view','view.php?id=46','5'),(762,1313306359,3,'127.0.0.1',2,'upload',0,'upload','http://localhost/moodle/mod/assignment/view.php?id=46','C:\\xampp\\htdocs\\moodledata/2/moddata/assignment/5/3/enkri_witc_ecc.pdf'),(763,1313306359,3,'127.0.0.1',2,'assignment',46,'upload','view.php?a=5','5'),(764,1313306361,3,'127.0.0.1',2,'assignment',46,'view','view.php?id=46','5'),(765,1313570181,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(766,1313570181,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(767,1313570226,4,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','4'),(768,1313570226,4,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(769,1313570232,4,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(770,1313570234,4,'127.0.0.1',2,'resource',15,'view','view.php?id=15','11'),(771,1313570245,4,'127.0.0.1',2,'resource',15,'view','view.php?id=15','11'),(772,1313570299,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(773,1313570310,4,'127.0.0.1',2,'resource',9,'view','view.php?id=9','5'),(774,1313570350,4,'127.0.0.1',2,'resource',15,'view','view.php?id=15','11'),(775,1313570373,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(776,1313570378,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(777,1313570382,2,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(778,1313570391,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(779,1313570395,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(780,1313570398,2,'127.0.0.1',2,'resource',15,'view','view.php?id=15','11'),(781,1313570414,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(782,1313570417,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(783,1313570423,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(784,1313570426,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(785,1313570429,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(786,1313570432,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(787,1313570435,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(788,1313570486,2,'127.0.0.1',4,'forum',5,'view discussion','discuss.php?d=3','3'),(789,1313570641,4,'127.0.0.1',2,'resource',16,'view','view.php?id=16','12'),(790,1313684007,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(791,1313684007,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(792,1313684092,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(793,1313684110,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(794,1313684117,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(795,1313684121,2,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(796,1313684170,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(797,1313684176,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(798,1313684178,2,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(799,1313684536,2,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(800,1313685852,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(801,1313685854,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(802,1313685856,2,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(803,1313685888,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(804,1313685891,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(805,1313685894,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(806,1313685897,2,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(807,1313685926,2,'127.0.0.1',4,'assignment',43,'update grades','submissions.php?id=2&user=4','4'),(808,1313693118,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(809,1313693123,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(810,1313693136,2,'127.0.0.1',4,'forum',5,'view forum','view.php?id=5','3'),(811,1313693150,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(812,1313693182,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(813,1313693183,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(814,1313693186,2,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(815,1313693195,2,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(816,1313693241,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(817,1313693243,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(818,1313693245,2,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(819,1312397300,5,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','5'),(820,1312397301,5,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(821,1312397304,5,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(822,1312397306,5,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(823,1312397322,5,'127.0.0.1',4,'upload',0,'upload','http://localhost/moodle/mod/assignment/view.php?id=43','C:\\xampp\\htdocs\\moodledata/4/moddata/assignment/2/5/SISTEM_INFORMASI.pdf'),(824,1312397322,5,'127.0.0.1',4,'assignment',43,'upload','view.php?a=2','2'),(825,1312397325,5,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(826,1312397331,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(827,1312397333,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(828,1312397335,2,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(829,1313695488,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(830,1313695492,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(831,1313695494,2,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(832,1313695821,5,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(833,1313695830,5,'127.0.0.1',1,'user',0,'logout','view.php?id=5&course=1','5'),(834,1313695840,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(835,1313695921,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(836,1313696272,2,'127.0.0.1',1,'user',0,'update','view.php?id=-1&course=1',''),(837,1313696318,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(838,1313696318,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(839,1313696321,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(840,1313696334,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(841,1313696340,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(842,1313696356,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(843,1313696357,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(844,1313696360,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(845,1313696378,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(846,1313696433,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(847,1313696436,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(848,1313696442,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(849,1313696444,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(850,1313696479,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(851,1313696479,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(852,1313696482,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(853,1313696495,2,'127.0.0.1',5,'role',0,'assign','admin/roles/assign.php?contextid=42&roleid=3','Teacher'),(854,1313696523,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(855,1313696526,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(856,1313696549,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(857,1313696549,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(858,1313696553,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(859,1313696564,2,'127.0.0.1',5,'role',0,'unassign','admin/roles/assign.php?contextid=42&roleid=3','Teacher'),(860,1313696620,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(861,1313696627,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(862,1313696645,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(863,1313696666,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(864,1313696692,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(865,1313696692,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(866,1313696696,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(867,1313696716,2,'127.0.0.1',5,'role',0,'assign','admin/roles/assign.php?contextid=42&roleid=3','Teacher'),(868,1313696727,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(869,1313696800,2,'127.0.0.1',5,'course',0,'update','edit.php?id=5','5'),(870,1313696801,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(871,1313696808,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(872,1313701658,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(873,1313701661,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(874,1313701663,2,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(875,1313701728,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(876,1313701729,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(877,1313701731,2,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(878,1313701795,2,'127.0.0.1',4,'assignment',0,'view all','index.php?id=4',''),(879,1313701798,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(880,1313701799,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(881,1313701801,2,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(882,1313701892,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(883,1313701894,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(884,1313701896,2,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(885,1313702204,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(886,1313702206,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(887,1313702207,2,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(888,1313702882,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(889,1313702884,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(890,1313702886,2,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(891,1313826743,6,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','6'),(892,1313826743,6,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(893,1313826749,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(894,1313826754,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(895,1313826799,6,'127.0.0.1',2,'course',0,'update mod','../mod/assignment/view.php?id=46','assignment 5'),(896,1313826799,6,'127.0.0.1',2,'assignment',46,'update','view.php?id=46','5'),(897,1313826799,6,'127.0.0.1',2,'assignment',46,'view','view.php?id=46','5'),(898,1313843352,0,'127.0.0.1',0,'login',0,'error','index.php','jasril'),(899,1313843363,9,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','9'),(900,1313843363,9,'127.0.0.1',1,'user',0,'view','view.php?id=9&course=1','9'),(901,1313843367,9,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(902,1313843369,9,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(903,1313843372,9,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(904,1313843375,9,'127.0.0.1',5,'assignment',42,'view','view.php?id=42','1'),(905,1313843376,9,'127.0.0.1',5,'assignment',42,'view submission','submissions.php?id=42','1'),(906,1313843628,9,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(907,1313843630,9,'127.0.0.1',5,'assignment',42,'view','view.php?id=42','1'),(908,1313843633,9,'127.0.0.1',5,'assignment',42,'view submission','submissions.php?id=42','1'),(909,1313843656,9,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(910,1313843658,9,'127.0.0.1',1,'user',0,'logout','view.php?id=9&course=1','9'),(911,1313843678,6,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','6'),(912,1313843678,6,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(913,1313843680,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(914,1313843682,6,'127.0.0.1',2,'assignment',46,'view','view.php?id=46','5'),(915,1313843685,6,'127.0.0.1',2,'assignment',46,'view submission','submissions.php?id=46','5'),(916,1313843694,6,'127.0.0.1',2,'assignment',47,'view','view.php?id=47','6'),(917,1313843695,6,'127.0.0.1',2,'assignment',47,'view submission','submissions.php?id=47','6'),(918,1313844013,6,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(919,1313844015,6,'127.0.0.1',1,'user',0,'logout','view.php?id=6&course=1','6'),(920,1313844027,9,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','9'),(921,1313844027,9,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(922,1313844029,9,'127.0.0.1',5,'assignment',42,'view','view.php?id=42','1'),(923,1313844032,9,'127.0.0.1',5,'assignment',42,'view submission','submissions.php?id=42','1'),(924,1313844190,9,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(925,1313844191,9,'127.0.0.1',5,'assignment',42,'view','view.php?id=42','1'),(926,1313862249,6,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','6'),(927,1313862249,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(928,1313862252,6,'127.0.0.1',2,'assignment',46,'view','view.php?id=46','5'),(929,1313862254,6,'127.0.0.1',2,'assignment',46,'view submission','submissions.php?id=46','5'),(930,1313862265,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(931,1313862307,6,'127.0.0.1',2,'assignment',46,'view','view.php?id=46','5'),(932,1313862309,6,'127.0.0.1',2,'assignment',46,'view submission','submissions.php?id=46','5'),(933,1313862350,6,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(934,1313862353,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(935,1313862355,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(936,1313862445,6,'127.0.0.1',2,'course',0,'add mod','../mod/assignment/view.php?id=61','assignment 7'),(937,1313862445,6,'127.0.0.1',2,'assignment',61,'add','view.php?id=61','7'),(938,1313862446,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(939,1313862449,6,'127.0.0.1',2,'assignment',61,'view','view.php?id=61','7'),(940,1313862557,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(941,1313862560,6,'127.0.0.1',2,'assignment',61,'view','view.php?id=61','7'),(942,1313862561,6,'127.0.0.1',2,'assignment',61,'view submission','submissions.php?id=61','7'),(943,1313862735,6,'127.0.0.1',2,'assignment',61,'update grades','submissions.php?id=7&user=3','3'),(944,1313865612,6,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(945,1313867710,6,'127.0.0.1',2,'assignment',61,'update grades','submissions.php?id=7&user=3','3'),(946,1313944024,0,'127.0.0.1',0,'login',0,'error','index.php','jasril'),(947,1313944032,6,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','6'),(948,1313944032,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(949,1313944037,6,'127.0.0.1',2,'assignment',61,'view','view.php?id=61','7'),(950,1313944039,6,'127.0.0.1',2,'assignment',61,'view submission','submissions.php?id=61','7'),(951,1313944054,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(952,1313944056,6,'127.0.0.1',2,'assignment',61,'view','view.php?id=61','7'),(953,1313944058,6,'127.0.0.1',2,'assignment',61,'view submission','submissions.php?id=61','7'),(954,1313944164,6,'127.0.0.1',1,'user',0,'logout','view.php?id=6&course=1','6'),(955,1313944184,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(956,1313944185,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(957,1313944482,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(958,1313945148,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(959,1313945163,6,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','6'),(960,1313945163,6,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(961,1313945165,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(962,1313945167,6,'127.0.0.1',2,'assignment',46,'view','view.php?id=46','5'),(963,1313945169,6,'127.0.0.1',2,'assignment',46,'view submission','submissions.php?id=46','5'),(964,1313945182,6,'127.0.0.1',2,'assignment',46,'update grades','submissions.php?id=5&user=4','4'),(965,1313945192,6,'127.0.0.1',2,'assignment',46,'update grades','submissions.php?id=5&user=3','3'),(966,1313945195,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(967,1313945197,6,'127.0.0.1',2,'assignment',47,'view','view.php?id=47','6'),(968,1313945199,6,'127.0.0.1',2,'assignment',47,'view submission','submissions.php?id=47','6'),(969,1313945209,6,'127.0.0.1',2,'assignment',47,'update grades','submissions.php?id=6&user=4','4'),(970,1313945219,6,'127.0.0.1',2,'assignment',47,'update grades','submissions.php?id=6&user=3','3'),(971,1313945222,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(972,1313945223,6,'127.0.0.1',2,'assignment',61,'view','view.php?id=61','7'),(973,1313945226,6,'127.0.0.1',2,'assignment',61,'view submission','submissions.php?id=61','7'),(974,1313945238,6,'127.0.0.1',2,'assignment',61,'update grades','submissions.php?id=7&user=4','4'),(975,1313945248,6,'127.0.0.1',2,'assignment',61,'update grades','submissions.php?id=7&user=3','3'),(976,1313945252,6,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(977,1313945254,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(978,1313945257,6,'127.0.0.1',2,'assignment',61,'view','view.php?id=61','7'),(979,1313945258,6,'127.0.0.1',2,'assignment',61,'view submission','submissions.php?id=61','7'),(980,1313945261,6,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(981,1313945263,6,'127.0.0.1',1,'user',0,'logout','view.php?id=6&course=1','6'),(982,1313945276,7,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','7'),(983,1313945276,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(984,1313945282,7,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(985,1313945284,7,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(986,1313945297,7,'127.0.0.1',4,'assignment',43,'update grades','submissions.php?id=2&user=5','5'),(987,1313945306,7,'127.0.0.1',4,'assignment',43,'update grades','submissions.php?id=2&user=4','4'),(988,1313945316,7,'127.0.0.1',4,'assignment',43,'update grades','submissions.php?id=2&user=3','3'),(989,1313945319,7,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(990,1313945321,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(991,1313945324,7,'127.0.0.1',1,'user',0,'logout','view.php?id=7&course=1','7'),(992,1313945338,8,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','8'),(993,1313945338,8,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(994,1313945341,8,'127.0.0.1',3,'assignment',44,'view','view.php?id=44','3'),(995,1313945343,8,'127.0.0.1',3,'assignment',44,'view submission','submissions.php?id=44','3'),(996,1313945354,8,'127.0.0.1',3,'assignment',44,'update grades','submissions.php?id=3&user=4','4'),(997,1313945358,8,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(998,1313945360,8,'127.0.0.1',3,'assignment',45,'view','view.php?id=45','4'),(999,1313945362,8,'127.0.0.1',3,'assignment',45,'view submission','submissions.php?id=45','4'),(1000,1313945372,8,'127.0.0.1',3,'assignment',45,'update grades','submissions.php?id=4&user=4','4'),(1001,1313945374,8,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(1002,1313945377,8,'127.0.0.1',1,'user',0,'logout','view.php?id=8&course=1','8'),(1003,1313945400,9,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','9'),(1004,1313945400,9,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(1005,1313945403,9,'127.0.0.1',5,'assignment',42,'view','view.php?id=42','1'),(1006,1313945405,9,'127.0.0.1',5,'assignment',42,'view submission','submissions.php?id=42','1'),(1007,1313945416,9,'127.0.0.1',5,'assignment',42,'update grades','submissions.php?id=1&user=5','5'),(1008,1313945424,9,'127.0.0.1',5,'assignment',42,'update grades','submissions.php?id=1&user=3','3'),(1009,1313945500,9,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1010,1313945503,9,'127.0.0.1',1,'user',0,'logout','view.php?id=9&course=1','9'),(1011,1313945522,7,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','7'),(1012,1313945522,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1013,1313945524,7,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(1014,1313945525,7,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(1015,1313953273,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1016,1313953284,7,'127.0.0.1',1,'user',0,'logout','view.php?id=7&course=1','7'),(1017,1313953306,9,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','9'),(1018,1313953306,9,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(1019,1313953317,9,'127.0.0.1',5,'assignment',42,'view','view.php?id=42','1'),(1020,1313953319,9,'127.0.0.1',5,'assignment',42,'view submission','submissions.php?id=42','1'),(1021,1313953340,9,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1022,1313953343,9,'127.0.0.1',1,'user',0,'logout','view.php?id=9&course=1','9'),(1023,1313953359,8,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','8'),(1024,1313953360,8,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(1025,1313953364,8,'127.0.0.1',3,'assignment',44,'view','view.php?id=44','3'),(1026,1313953366,8,'127.0.0.1',3,'assignment',44,'view submission','submissions.php?id=44','3'),(1027,1313953415,8,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(1028,1313953417,8,'127.0.0.1',3,'assignment',45,'view','view.php?id=45','4'),(1029,1313953419,8,'127.0.0.1',3,'assignment',45,'view submission','submissions.php?id=45','4'),(1030,1313953435,8,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1031,1313953438,8,'127.0.0.1',1,'user',0,'logout','view.php?id=8&course=1','8'),(1032,1313953462,6,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','6'),(1033,1313953462,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(1034,1313953484,6,'127.0.0.1',2,'assignment',46,'view','view.php?id=46','5'),(1035,1313953486,6,'127.0.0.1',2,'assignment',46,'view submission','submissions.php?id=46','5'),(1036,1313953504,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(1037,1313953506,6,'127.0.0.1',2,'assignment',47,'view','view.php?id=47','6'),(1038,1313953508,6,'127.0.0.1',2,'assignment',47,'view submission','submissions.php?id=47','6'),(1039,1313953527,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(1040,1313953529,6,'127.0.0.1',2,'assignment',61,'view','view.php?id=61','7'),(1041,1313953531,6,'127.0.0.1',2,'assignment',61,'view submission','submissions.php?id=61','7'),(1042,1313962116,6,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1043,1313962119,6,'127.0.0.1',1,'user',0,'logout','view.php?id=6&course=1','6'),(1044,1313962132,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(1045,1313962132,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1046,1313962267,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1047,1313962326,2,'127.0.0.1',1,'user',0,'update','view.php?id=4&course=1',''),(1048,1313962452,2,'127.0.0.1',1,'user',0,'update','view.php?id=-1&course=1',''),(1049,1313962457,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(1050,1313962470,10,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','10'),(1051,1313962470,10,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1052,1313962508,10,'127.0.0.1',1,'library',0,'mailer','http://localhost/moodle/course/enrol.php?id=5&confirm=1&sesskey=nXC0FDem4Q','ERROR: Could not instantiate mail function.'),(1053,1313962508,10,'127.0.0.1',5,'course',0,'enrol','view.php?id=5','5'),(1054,1313962508,10,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(1055,1313962512,10,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1056,1313962515,10,'127.0.0.1',1,'user',0,'logout','view.php?id=10&course=1','10'),(1057,1313962525,10,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','10'),(1058,1313962525,10,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1059,1313962535,10,'127.0.0.1',1,'library',0,'mailer','http://localhost/moodle/course/enrol.php?id=4&confirm=1&sesskey=xnAAS2VKpl','ERROR: Could not instantiate mail function.'),(1060,1313962535,10,'127.0.0.1',4,'course',0,'enrol','view.php?id=4','4'),(1061,1313962535,10,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1062,1313962537,10,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1063,1313962543,10,'127.0.0.1',1,'library',0,'mailer','http://localhost/moodle/course/enrol.php?id=3&confirm=1&sesskey=xnAAS2VKpl','ERROR: Could not instantiate mail function.'),(1064,1313962543,10,'127.0.0.1',3,'course',0,'enrol','view.php?id=3','3'),(1065,1313962544,10,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(1066,1313962547,10,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1067,1313962553,10,'127.0.0.1',1,'library',0,'mailer','http://localhost/moodle/course/enrol.php?id=2&confirm=1&sesskey=xnAAS2VKpl','ERROR: Could not instantiate mail function.'),(1068,1313962553,10,'127.0.0.1',2,'course',0,'enrol','view.php?id=2','2'),(1069,1313962553,10,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(1070,1313962577,10,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1071,1313962615,10,'127.0.0.1',1,'user',0,'logout','view.php?id=10&course=1','10'),(1072,1313962640,8,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','8'),(1073,1313962641,8,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(1074,1313962646,8,'127.0.0.1',3,'assignment',45,'view','view.php?id=45','4'),(1075,1313962650,8,'127.0.0.1',3,'assignment',45,'view submission','submissions.php?id=45','4'),(1076,1313962656,8,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(1077,1313962658,8,'127.0.0.1',3,'assignment',45,'view','view.php?id=45','4'),(1078,1313962660,8,'127.0.0.1',3,'assignment',45,'view submission','submissions.php?id=45','4'),(1079,1313962664,8,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1080,1313962666,8,'127.0.0.1',1,'user',0,'logout','view.php?id=8&course=1','8'),(1081,1313962679,0,'127.0.0.1',0,'login',0,'error','index.php','harjay'),(1082,1313962686,10,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','10'),(1083,1313962686,10,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1084,1313962712,10,'127.0.0.1',1,'user',0,'logout','view.php?id=10&course=1','10'),(1085,1313962971,6,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','6'),(1086,1313962971,6,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1087,1313962973,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(1088,1313962975,6,'127.0.0.1',2,'assignment',46,'view','view.php?id=46','5'),(1089,1313962977,6,'127.0.0.1',2,'assignment',46,'view submission','submissions.php?id=46','5'),(1090,1313962993,6,'127.0.0.1',2,'assignment',46,'update grades','submissions.php?id=5&user=10','10'),(1091,1313962997,6,'127.0.0.1',2,'assignment',0,'view all','index.php?id=2',''),(1092,1313963000,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(1093,1313963002,6,'127.0.0.1',2,'assignment',47,'view','view.php?id=47','6'),(1094,1313963004,6,'127.0.0.1',2,'assignment',47,'view submission','submissions.php?id=47','6'),(1095,1313963019,6,'127.0.0.1',2,'assignment',47,'update grades','submissions.php?id=6&user=10','10'),(1096,1313963023,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(1097,1313963024,6,'127.0.0.1',2,'assignment',61,'view','view.php?id=61','7'),(1098,1313963026,6,'127.0.0.1',2,'assignment',61,'view submission','submissions.php?id=61','7'),(1099,1313963040,6,'127.0.0.1',2,'assignment',61,'update grades','submissions.php?id=7&user=10','10'),(1100,1313963050,6,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(1101,1313963052,6,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1102,1313963054,6,'127.0.0.1',1,'user',0,'logout','view.php?id=6&course=1','6'),(1103,1313963093,8,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','8'),(1104,1313963093,8,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(1105,1313963096,8,'127.0.0.1',3,'assignment',44,'view','view.php?id=44','3'),(1106,1313963098,8,'127.0.0.1',3,'assignment',44,'view submission','submissions.php?id=44','3'),(1107,1313963109,8,'127.0.0.1',3,'assignment',44,'update grades','submissions.php?id=3&user=10','10'),(1108,1313963111,8,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(1109,1313963113,8,'127.0.0.1',3,'assignment',45,'view','view.php?id=45','4'),(1110,1313963116,8,'127.0.0.1',3,'assignment',45,'view submission','submissions.php?id=45','4'),(1111,1313963126,8,'127.0.0.1',3,'assignment',45,'update grades','submissions.php?id=4&user=10','10'),(1112,1313963129,8,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(1113,1313963131,8,'127.0.0.1',3,'assignment',44,'view','view.php?id=44','3'),(1114,1313963133,8,'127.0.0.1',3,'assignment',44,'view submission','submissions.php?id=44','3'),(1115,1313963150,8,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1116,1313963152,8,'127.0.0.1',1,'user',0,'logout','view.php?id=8&course=1','8'),(1117,1313963163,7,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','7'),(1118,1313963163,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1119,1313963165,7,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(1120,1313963166,7,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(1121,1313963176,7,'127.0.0.1',4,'assignment',43,'update grades','submissions.php?id=2&user=10','10'),(1122,1313963188,7,'127.0.0.1',1,'user',0,'logout','view.php?id=7&course=1','7'),(1123,1313963199,9,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','9'),(1124,1313963200,9,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(1125,1313963203,9,'127.0.0.1',5,'assignment',42,'view','view.php?id=42','1'),(1126,1313963204,9,'127.0.0.1',5,'assignment',42,'view submission','submissions.php?id=42','1'),(1127,1313963217,9,'127.0.0.1',5,'assignment',42,'update grades','submissions.php?id=1&user=10','10'),(1128,1313963227,9,'127.0.0.1',1,'user',0,'logout','view.php?id=9&course=1','9'),(1129,1314265674,0,'127.0.0.1',0,'login',0,'error','index.php','admin'),(1130,1314293825,0,'127.0.0.1',1,'library',0,'mailer','http://localhost/moodle/login/signup.php','ERROR: Could not instantiate mail function.'),(1131,1314293895,1,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','1'),(1132,1314293969,1,'127.0.0.1',0,'login',0,'error','index.php','uxc.wilis@gmail.com'),(1133,1314294022,11,'127.0.0.1',1,'user',0,'login','view.php?id=1&course=1','11'),(1134,1314294033,11,'127.0.0.1',1,'library',0,'mailer','http://localhost/moodle/course/enrol.php?id=5&confirm=1&sesskey=hh3VBmXdA9','ERROR: Could not instantiate mail function.'),(1135,1314294033,11,'127.0.0.1',5,'course',0,'enrol','view.php?id=5','5'),(1136,1314294033,11,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(1137,1314294053,11,'127.0.0.1',5,'resource',37,'view','view.php?id=37','33'),(1138,1314294078,11,'127.0.0.1',1,'library',0,'mailer','http://localhost/moodle/course/enrol.php?id=4&confirm=1&sesskey=hh3VBmXdA9','ERROR: Could not instantiate mail function.'),(1139,1314294078,11,'127.0.0.1',4,'course',0,'enrol','view.php?id=4','4'),(1140,1314294078,11,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1141,1316355805,0,'127.0.0.1',1,'forum',0,'view forums','index.php?id=1',''),(1142,1316356084,0,'127.0.0.1',1,'library',0,'mailer','http://localhost/moodle/login/signup.php','ERROR: Could not instantiate mail function.'),(1143,1316356141,12,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','12'),(1144,1316356142,12,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1145,1316356156,12,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1146,1316356160,12,'127.0.0.1',1,'user',0,'logout','view.php?id=12&course=1','12'),(1147,1316356239,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(1148,1316356240,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1149,1316356255,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1150,1316356265,2,'127.0.0.1',4,'resource',31,'view','view.php?id=31','27'),(1151,1316356622,2,'127.0.0.1',4,'forum',5,'view discussion','discuss.php?d=3','3'),(1152,1316356760,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1153,1316356980,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1154,1316357098,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1155,1316357102,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1156,1316357108,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(1157,1316357115,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(1158,1316357115,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1159,1316357431,2,'127.0.0.1',1,'user',0,'view','view.php?id=7&course=1','7'),(1160,1316357470,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1161,1316361315,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1162,1316361428,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1163,1316361599,2,'127.0.0.1',5,'course',0,'view','view.php?id=5','5'),(1164,1316361680,2,'127.0.0.1',1,'course',0,'new','view.php?id=6','Reverse Engeneering (ID 6)'),(1181,1316372214,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(1180,1316361832,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(1167,1316361720,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1179,1316361822,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1178,1316361813,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1176,1316361801,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1177,1316361808,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1173,1316361771,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1174,1316361772,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1175,1316361789,2,'127.0.0.1',1,'course',0,'delete','view.php?id=6','Reverse Engeneering (ID 6)'),(1182,1316372215,2,'127.0.0.1',1,'user',0,'view','view.php?id=7&course=1','7'),(1183,1316372231,2,'127.0.0.1',4,'user',0,'view','view.php?id=7&course=4','7'),(1184,1316587870,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(1185,1316587870,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1186,1316587878,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1187,1316587897,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1188,1316587907,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(1189,1318342595,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(1190,1318342595,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1191,1318342616,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1192,1318342629,2,'127.0.0.1',4,'resource',56,'view','view.php?id=56','46'),(1193,1318343044,2,'127.0.0.1',4,'forum',5,'view forum','view.php?id=5','3'),(1194,1318343060,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1195,1318343071,2,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1196,1318343118,2,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1197,1318343181,2,'127.0.0.1',1,'user',0,'view','view.php?id=7&course=1','7'),(1198,1318353537,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1199,1318353542,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1200,1318353545,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1201,1318356571,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1202,1318484985,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(1203,1318484986,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1204,1318484995,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1205,1318485009,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(1206,1318485167,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(1207,1318485178,3,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','3'),(1208,1318485178,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1209,1318485181,3,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1210,1321977084,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(1211,1321977084,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1212,1321977098,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1213,1321979308,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1214,1321979314,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(1215,1321979324,0,'127.0.0.1',0,'login',0,'error','index.php','safaa'),(1216,1321979336,7,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','7'),(1217,1321979336,7,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1218,1321979348,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1219,1321979350,7,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1220,1321979402,7,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1221,1321979402,7,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1222,1321979402,7,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1223,1321979406,7,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1224,1321979413,7,'127.0.0.1',4,'resource',31,'view','view.php?id=31','27'),(1225,1321980246,7,'127.0.0.1',4,'resource',34,'view','view.php?id=34','30'),(1226,1321980250,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1227,1321980254,7,'127.0.0.1',4,'resource',33,'view','view.php?id=33','29'),(1228,1322013729,7,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','7'),(1229,1322013747,7,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1230,1322013767,7,'127.0.0.1',1,'user',0,'logout','view.php?id=7&course=1','7'),(1231,1322015806,7,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','7'),(1232,1322015806,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1233,1322015831,7,'127.0.0.1',4,'forum',5,'view forum','view.php?id=5','3'),(1234,1322015844,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1235,1322015856,7,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1236,1322015866,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1237,1322015877,7,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1238,1322015912,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1239,1322015920,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1240,1322015924,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1241,1322015929,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1242,1322015932,7,'127.0.0.1',4,'forum',5,'view forum','view.php?id=5','3'),(1243,1322016107,7,'127.0.0.1',4,'forum',5,'add discussion','discuss.php?d=4','4'),(1244,1322016109,7,'127.0.0.1',4,'forum',5,'view forum','view.php?id=5','3'),(1245,1322016113,7,'127.0.0.1',4,'user',0,'view','view.php?id=7&course=4','7'),(1246,1322016120,7,'127.0.0.1',4,'forum',5,'view discussion','discuss.php?d=4','4'),(1247,1322016129,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1248,1322016137,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1249,1322016139,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1250,1322016157,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1251,1322016164,7,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1252,1322016171,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1253,1322016178,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1254,1322016213,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1255,1322016240,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1256,1322016345,7,'127.0.0.1',4,'resource',36,'view','view.php?id=36','32'),(1257,1322016370,7,'127.0.0.1',4,'resource',35,'view','view.php?id=35','31'),(1258,1322016491,7,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=63','resource 49'),(1259,1322016491,7,'127.0.0.1',4,'resource',63,'add','view.php?id=63','49'),(1260,1322016491,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1261,1322016549,7,'127.0.0.1',1,'user',0,'logout','view.php?id=7&course=1','7'),(1262,1322016591,7,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','7'),(1263,1322016592,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1264,1322016594,7,'127.0.0.1',4,'resource',63,'view','view.php?id=63','49'),(1265,1322016608,7,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1266,1322016614,7,'127.0.0.1',4,'resource',63,'view','view.php?id=63','49'),(1267,1322016621,7,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1268,1322016625,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1269,1322016626,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1270,1322016654,7,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=63','resource 49'),(1271,1322016654,7,'127.0.0.1',4,'resource',63,'update','view.php?id=63','49'),(1272,1322016654,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1273,1322016709,7,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=63','resource 49'),(1274,1322016709,7,'127.0.0.1',4,'resource',63,'update','view.php?id=63','49'),(1275,1322016709,7,'127.0.0.1',4,'resource',63,'view','view.php?id=63','49'),(1276,1322016712,7,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1277,1322016715,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1278,1322017005,3,'127.0.0.1',1,'user',0,'login','view.php?id=7&course=1','3'),(1279,1322017006,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1280,1322017009,3,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1281,1322017012,3,'127.0.0.1',4,'resource',63,'view','view.php?id=63','49'),(1282,1322017149,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1283,1322017165,3,'127.0.0.1',1,'user',0,'logout','view.php?id=3&course=1','3'),(1284,1322017177,7,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','7'),(1285,1322017177,7,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1286,1322017181,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1287,1322017184,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1288,1322017205,7,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=64','resource 50'),(1289,1322017205,7,'127.0.0.1',4,'resource',64,'add','view.php?id=64','50'),(1290,1322017206,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1291,1322017254,7,'127.0.0.1',4,'course',63,'delete mod','view.php?id=4','resource 49'),(1292,1322017255,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1293,1322017295,7,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=64','resource 50'),(1294,1322017295,7,'127.0.0.1',4,'resource',64,'update','view.php?id=64','50'),(1295,1322017296,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1296,1322017319,7,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=65','resource 51'),(1297,1322017319,7,'127.0.0.1',4,'resource',65,'add','view.php?id=65','51'),(1298,1322017319,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1299,1322017381,7,'127.0.0.1',1,'user',0,'logout','view.php?id=7&course=1','7'),(1300,1322018204,7,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','7'),(1301,1322018204,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1302,1322018208,7,'127.0.0.1',4,'resource',64,'view','view.php?id=64','50'),(1303,1322018236,7,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1304,1322018236,7,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1305,1322018240,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1306,1322018272,7,'127.0.0.1',4,'resource',64,'view','view.php?id=64','50'),(1307,1322018326,7,'127.0.0.1',4,'resource',64,'view','view.php?id=64','50'),(1308,1322018328,7,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1309,1322018330,7,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1310,1322018348,7,'127.0.0.1',4,'resource',64,'view','view.php?id=64','50'),(1311,1322018366,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1312,1322018369,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1313,1322018382,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1314,1322018390,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1315,1322018399,7,'127.0.0.1',4,'resource',56,'view','view.php?id=56','46'),(1316,1322018569,7,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1317,1322018575,7,'127.0.0.1',4,'resource',32,'view','view.php?id=32','28'),(1318,1322019344,7,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1319,1322020049,7,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1320,1322020072,7,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(1321,1322020156,7,'127.0.0.1',1,'user',0,'view','view.php?id=3&course=1','3'),(1322,1322021133,7,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1323,1322021139,7,'127.0.0.1',1,'user',0,'logout','view.php?id=7&course=1','7'),(1324,1322021157,3,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','3'),(1325,1322021157,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1326,1322021173,3,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(1327,1322021204,3,'127.0.0.1',2,'user',0,'view all','index.php?id=2',''),(1328,1322021289,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1329,1322021408,3,'127.0.0.1',1,'user',0,'logout','view.php?id=3&course=1','3'),(1330,1322021417,5,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','5'),(1331,1322021417,5,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1332,1322021434,5,'127.0.0.1',1,'library',0,'mailer','http://localhost/moodle/course/enrol.php?id=2&confirm=1&sesskey=ORuG78ADYS','ERROR: Could not instantiate mail function.'),(1333,1322021434,5,'127.0.0.1',2,'course',0,'enrol','view.php?id=2','2'),(1334,1322021434,5,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(1335,1322021835,5,'127.0.0.1',2,'resource',11,'view','view.php?id=11','7'),(1336,1322021843,5,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(1337,1322021847,5,'127.0.0.1',2,'user',0,'view all','index.php?id=2',''),(1338,1322021867,5,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(1339,1322031034,3,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','3'),(1340,1322031035,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1341,1322031109,3,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1342,1324189845,12,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','12'),(1343,1324189845,12,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1344,1324189915,12,'127.0.0.1',1,'user',0,'logout','view.php?id=12&course=1','12'),(1345,1324190033,3,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','3'),(1346,1324190033,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1347,1324190060,3,'127.0.0.1',1,'library',0,'mailer','http://localhost/moodle/course/enrol.php?id=3&confirm=1&sesskey=gVeRcLN0ut','ERROR: Could not instantiate mail function.'),(1348,1324190060,3,'127.0.0.1',3,'course',0,'enrol','view.php?id=3','3'),(1349,1324190061,3,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(1350,1324190150,3,'127.0.0.1',1,'user',0,'logout','view.php?id=3&course=1','3'),(1351,1324190687,3,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','3'),(1352,1324190688,3,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(1353,1324190691,3,'127.0.0.1',2,'assignment',46,'view','view.php?id=46','5'),(1354,1324218550,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(1355,1324218551,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1356,1324218557,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1357,1324218560,2,'127.0.0.1',4,'resource',31,'view','view.php?id=31','27'),(1358,1324218687,2,'127.0.0.1',4,'resource',33,'view','view.php?id=33','29'),(1359,1324218831,2,'127.0.0.1',4,'resource',33,'view','view.php?id=33','29'),(1360,1324218839,2,'127.0.0.1',4,'resource',31,'view','view.php?id=31','27'),(1361,1324218870,2,'127.0.0.1',4,'resource',31,'view','view.php?id=31','27'),(1362,1324218919,2,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1363,1324218921,2,'127.0.0.1',4,'resource',31,'view','view.php?id=31','27'),(1364,1324218931,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1365,1324218994,2,'127.0.0.1',4,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=4&wdir=%2FMOVIE&action=upload','C:\\xampp\\htdocs\\moodledata/4/MOVIE/Rossi_vs_Lorenzo.mp4'),(1366,1324219058,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1367,1324219064,2,'127.0.0.1',4,'resource',33,'view','view.php?id=33','29'),(1368,1324219111,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1369,1324219199,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1370,1324219202,2,'127.0.0.1',4,'resource',31,'view','view.php?id=31','27'),(1371,1324220005,2,'127.0.0.1',4,'resource',31,'view','view.php?id=31','27'),(1372,1324220008,2,'127.0.0.1',4,'resource',33,'view','view.php?id=33','29'),(1373,1324220851,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1374,1324221530,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1375,1324221533,2,'127.0.0.1',4,'resource',31,'view','view.php?id=31','27'),(1376,1324221855,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1377,1324221915,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1378,1324221915,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1379,1324221915,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1380,1324221931,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1381,1324222008,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=64','resource 50'),(1382,1324222008,2,'127.0.0.1',4,'resource',64,'update','view.php?id=64','50'),(1383,1324222008,2,'127.0.0.1',4,'resource',64,'view','view.php?id=64','50'),(1384,1324222012,2,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1385,1324222014,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1386,1324222027,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1387,1324222027,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1388,1324222028,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1389,1324222029,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1390,1324222060,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1391,1324222060,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1392,1324222061,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1393,1324222071,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1394,1324222073,2,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1395,1324222077,2,'127.0.0.1',4,'resource',64,'view','view.php?id=64','50'),(1396,1324222092,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=64','resource 50'),(1397,1324222092,2,'127.0.0.1',4,'resource',64,'update','view.php?id=64','50'),(1398,1324222092,2,'127.0.0.1',4,'resource',64,'view','view.php?id=64','50'),(1399,1324222121,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=64','resource 50'),(1400,1324222121,2,'127.0.0.1',4,'resource',64,'update','view.php?id=64','50'),(1401,1324222122,2,'127.0.0.1',4,'resource',64,'view','view.php?id=64','50'),(1402,1324222150,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=64','resource 50'),(1403,1324222150,2,'127.0.0.1',4,'resource',64,'update','view.php?id=64','50'),(1404,1324222150,2,'127.0.0.1',4,'resource',64,'view','view.php?id=64','50'),(1405,1324222167,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=64','resource 50'),(1406,1324222167,2,'127.0.0.1',4,'resource',64,'update','view.php?id=64','50'),(1407,1324222168,2,'127.0.0.1',4,'resource',64,'view','view.php?id=64','50'),(1408,1324222179,2,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1409,1324222181,2,'127.0.0.1',4,'resource',64,'view','view.php?id=64','50'),(1410,1324222190,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=64','resource 50'),(1411,1324222190,2,'127.0.0.1',4,'resource',64,'update','view.php?id=64','50'),(1412,1324222190,2,'127.0.0.1',4,'resource',64,'view','view.php?id=64','50'),(1413,1324222207,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=64','resource 50'),(1414,1324222207,2,'127.0.0.1',4,'resource',64,'update','view.php?id=64','50'),(1415,1324222208,2,'127.0.0.1',4,'resource',64,'view','view.php?id=64','50'),(1416,1324222249,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=64','resource 50'),(1417,1324222249,2,'127.0.0.1',4,'resource',64,'update','view.php?id=64','50'),(1418,1324222257,2,'127.0.0.1',4,'resource',64,'view','view.php?id=64','50'),(1419,1324222274,2,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1420,1324222276,2,'127.0.0.1',4,'resource',64,'view','view.php?id=64','50'),(1421,1324222280,2,'127.0.0.1',4,'resource',64,'view','view.php?id=64','50'),(1422,1324222284,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1423,1324222307,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=64','resource 50'),(1424,1324222307,2,'127.0.0.1',4,'resource',64,'update','view.php?id=64','50'),(1425,1324222326,2,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1426,1324222328,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1427,1324222344,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1428,1324222344,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1429,1324222345,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1430,1324222363,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1431,1324222363,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1432,1324222363,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1433,1324222365,2,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1434,1324222381,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1435,1324222411,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1436,1324222411,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1437,1324222411,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1438,1324222427,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1439,1324222427,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1440,1324222428,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1441,1324222446,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1442,1324222446,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1443,1324222446,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1444,1324222458,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1445,1324222458,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1446,1324222458,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1447,1324222471,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1448,1324222471,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1449,1324222471,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1450,1324222483,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1451,1324222483,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1452,1324222484,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1453,1324222487,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1454,1324222501,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1455,1324222513,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1456,1324222513,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1457,1324222513,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1458,1324222540,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1459,1324222540,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1460,1324222540,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1461,1324222581,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1462,1324222581,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1463,1324222581,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1464,1324222629,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1465,1324222629,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1466,1324222630,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1467,1324222669,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1468,1324222669,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1469,1324222669,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1470,1324222711,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1471,1324222711,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1472,1324222712,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1473,1324222733,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1474,1324222733,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1475,1324222733,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1476,1324222751,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1477,1324222751,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1478,1324222752,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1479,1324222765,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1480,1324222765,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1481,1324222765,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1482,1324222775,2,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1483,1324222779,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1484,1324222807,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1485,1324222807,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1486,1324222807,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1487,1324222826,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1488,1324222826,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1489,1324222827,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1490,1324222856,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1491,1324222856,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1492,1324222856,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1493,1324222871,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1494,1324222871,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1495,1324222871,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1496,1324223726,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1497,1324223726,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1498,1324223727,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1499,1324223748,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1500,1324223748,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1501,1324223748,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1502,1324223789,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1503,1324223789,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1504,1324223789,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1505,1324223817,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1506,1324223817,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1507,1324223817,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1508,1324223886,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1509,1324223886,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1510,1324223886,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1511,1324223936,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1512,1324223936,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1513,1324223936,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1514,1324223951,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1515,1324223951,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1516,1324223951,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1517,1324223968,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1518,1324223968,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1519,1324223968,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1520,1324223982,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=28','resource 24'),(1521,1324223982,2,'127.0.0.1',4,'resource',28,'update','view.php?id=28','24'),(1522,1324223982,2,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1523,1324223996,2,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1524,1324224004,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1525,1324224040,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=56','resource 46'),(1526,1324224040,2,'127.0.0.1',4,'resource',56,'update','view.php?id=56','46'),(1527,1324224040,2,'127.0.0.1',4,'resource',56,'view','view.php?id=56','46'),(1528,1324224076,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=56','resource 46'),(1529,1324224076,2,'127.0.0.1',4,'resource',56,'update','view.php?id=56','46'),(1530,1324224076,2,'127.0.0.1',4,'resource',56,'view','view.php?id=56','46'),(1531,1324224112,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=56','resource 46'),(1532,1324224112,2,'127.0.0.1',4,'resource',56,'update','view.php?id=56','46'),(1533,1324224144,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=56','resource 46'),(1534,1324224144,2,'127.0.0.1',4,'resource',56,'update','view.php?id=56','46'),(1535,1324224145,2,'127.0.0.1',4,'resource',56,'view','view.php?id=56','46'),(1536,1324224178,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=56','resource 46'),(1537,1324224178,2,'127.0.0.1',4,'resource',56,'update','view.php?id=56','46'),(1538,1324224178,2,'127.0.0.1',4,'resource',56,'view','view.php?id=56','46'),(1539,1324224208,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=56','resource 46'),(1540,1324224208,2,'127.0.0.1',4,'resource',56,'update','view.php?id=56','46'),(1541,1324224209,2,'127.0.0.1',4,'resource',56,'view','view.php?id=56','46'),(1542,1324224211,2,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1543,1324224214,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1544,1324224276,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=65','resource 51'),(1545,1324224276,2,'127.0.0.1',4,'resource',65,'update','view.php?id=65','51'),(1546,1324224276,2,'127.0.0.1',4,'resource',65,'view','view.php?id=65','51'),(1547,1324224280,2,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1548,1324224282,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1549,1324224384,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=65','resource 51'),(1550,1324224384,2,'127.0.0.1',4,'resource',65,'update','view.php?id=65','51'),(1551,1324224385,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1552,1324224438,2,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=66','resource 52'),(1553,1324224438,2,'127.0.0.1',4,'resource',66,'add','view.php?id=66','52'),(1554,1324224438,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1555,1324224522,2,'127.0.0.1',4,'course',0,'update mod','../mod/resource/view.php?id=66','resource 52'),(1556,1324224522,2,'127.0.0.1',4,'resource',66,'update','view.php?id=66','52'),(1557,1324224522,2,'127.0.0.1',4,'resource',66,'view','view.php?id=66','52'),(1558,1324224532,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1559,1324224561,2,'127.0.0.1',4,'course',65,'delete mod','view.php?id=4','resource 51'),(1560,1324224561,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1561,1324224680,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1562,1324224696,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1563,1324224711,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1564,1324224730,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1565,1324224794,2,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=67','resource 53'),(1566,1324224794,2,'127.0.0.1',4,'resource',67,'add','view.php?id=67','53'),(1567,1324224794,2,'127.0.0.1',4,'resource',67,'view','view.php?id=67','53'),(1568,1324224797,2,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1569,1324224819,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1570,1324224866,2,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=68','resource 54'),(1571,1324224866,2,'127.0.0.1',4,'resource',68,'add','view.php?id=68','54'),(1572,1324224866,2,'127.0.0.1',4,'resource',68,'view','view.php?id=68','54'),(1573,1324224881,2,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1574,1324224889,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1575,1324224929,2,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=69','resource 55'),(1576,1324224929,2,'127.0.0.1',4,'resource',69,'add','view.php?id=69','55'),(1577,1324224929,2,'127.0.0.1',4,'resource',69,'view','view.php?id=69','55'),(1578,1324224938,2,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1579,1324224961,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1580,1324225037,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1581,1324225102,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1582,1324225108,2,'127.0.0.1',4,'assignment',0,'view all','index.php?id=4',''),(1583,1324225123,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1584,1324225151,2,'127.0.0.1',4,'assignment',0,'view all','index.php?id=4',''),(1585,1324225153,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(1586,1324225181,2,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(1587,1324225215,2,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(1588,1324225218,2,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(1589,1324225232,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(1590,1324225235,2,'127.0.0.1',4,'assignment',0,'view all','index.php?id=4',''),(1591,1324225239,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1592,1324225261,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1593,1324225317,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1594,1324225320,2,'127.0.0.1',4,'assignment',0,'view all','index.php?id=4',''),(1595,1324225324,2,'127.0.0.1',4,'assignment',43,'view submission','submissions.php?id=43','2'),(1596,1324225342,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(1597,1324225344,2,'127.0.0.1',4,'assignment',0,'view all','index.php?id=4',''),(1598,1324225401,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1599,1324225481,2,'127.0.0.1',4,'course',0,'add mod','../mod/assignment/view.php?id=70','assignment 8'),(1600,1324225481,2,'127.0.0.1',4,'assignment',70,'add','view.php?id=70','8'),(1601,1324225482,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1602,1324225484,2,'127.0.0.1',4,'assignment',0,'view all','index.php?id=4',''),(1603,1324225511,2,'127.0.0.1',4,'assignment',70,'view','view.php?id=70','8'),(1604,1324225550,2,'127.0.0.1',4,'assignment',70,'view','view.php?id=70','8'),(1605,1324225553,2,'127.0.0.1',4,'assignment',0,'view all','index.php?id=4',''),(1606,1324225564,2,'127.0.0.1',4,'assignment',70,'view submission','submissions.php?id=70','8'),(1607,1324225567,2,'127.0.0.1',4,'user',0,'view','view.php?id=3&course=4','3'),(1608,1324225585,2,'127.0.0.1',4,'user',0,'view','view.php?id=3&course=4','3'),(1609,1324225589,2,'127.0.0.1',4,'user',0,'view all','index.php?id=4',''),(1610,1324225591,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1611,1324225593,2,'127.0.0.1',4,'assignment',0,'view all','index.php?id=4',''),(1612,1324225595,2,'127.0.0.1',4,'assignment',70,'view submission','submissions.php?id=70','8'),(1613,1324225604,2,'127.0.0.1',4,'assignment',70,'view submission','submissions.php?id=70','8'),(1614,1324225653,2,'127.0.0.1',4,'assignment',0,'view all','index.php?id=4',''),(1615,1324225655,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1616,1324225668,2,'127.0.0.1',4,'assignment',0,'view all','index.php?id=4',''),(1617,1324225729,2,'127.0.0.1',4,'course',0,'add mod','../mod/assignment/view.php?id=71','assignment 9'),(1618,1324225729,2,'127.0.0.1',4,'assignment',71,'add','view.php?id=71','9'),(1619,1324225729,2,'127.0.0.1',4,'assignment',71,'view','view.php?id=71','9'),(1620,1324225733,2,'127.0.0.1',4,'assignment',0,'view all','index.php?id=4',''),(1621,1324225774,2,'127.0.0.1',4,'assignment',71,'view','view.php?id=71','9'),(1622,1324225885,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1623,1324226047,2,'127.0.0.1',4,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=4&wdir=%2FWORD&action=upload','C:\\xampp\\htdocs\\moodledata/4/WORD/BAB_III.docx'),(1624,1324226064,2,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1625,1324226064,2,'127.0.0.1',4,'resource',0,'view all','index.php?id=4',''),(1626,1324226068,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1627,1324226068,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1628,1324226078,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1629,1324226127,2,'127.0.0.1',4,'upload',0,'upload','http://localhost/moodle/files/index.php?choose=id_reference_value&id=4&wdir=%2F&action=upload','C:\\xampp\\htdocs\\moodledata/4/1913-1750-1-PB.doc'),(1630,1324226137,2,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=72','resource 56'),(1631,1324226137,2,'127.0.0.1',4,'resource',72,'add','view.php?id=72','56'),(1632,1324226137,2,'127.0.0.1',4,'resource',72,'view','view.php?id=72','56'),(1633,1324226141,2,'127.0.0.1',4,'course',0,'add mod','../mod/resource/view.php?id=73','resource 57'),(1634,1324226141,2,'127.0.0.1',4,'resource',73,'add','view.php?id=73','57'),(1635,1324226141,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1636,1324226292,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1637,1324226309,2,'127.0.0.1',1,'forum',59,'view forum','view.php?id=59','5'),(1638,1324226358,2,'127.0.0.1',1,'forum',59,'add discussion','discuss.php?d=5','5'),(1639,1324226360,2,'127.0.0.1',1,'forum',59,'view forum','view.php?id=59','5'),(1640,1324226417,2,'127.0.0.1',1,'forum',59,'view discussion','discuss.php?d=5','5'),(1641,1324226428,2,'127.0.0.1',1,'forum',59,'update post','discuss.php?d=5#p6&parent=6','6'),(1642,1324226430,2,'127.0.0.1',1,'forum',59,'view discussion','discuss.php?d=5','5'),(1643,1324226436,2,'127.0.0.1',1,'forum',59,'view discussion','discuss.php?d=5','5'),(1644,1324226441,2,'127.0.0.1',1,'forum',59,'view forum','view.php?id=59','5'),(1645,1324226445,2,'127.0.0.1',1,'forum',59,'view discussion','discuss.php?d=1','1'),(1646,1324226479,2,'127.0.0.1',1,'forum',59,'view discussion','discuss.php?d=5','5'),(1647,1324226499,2,'127.0.0.1',1,'forum',59,'update post','discuss.php?d=5#p6&parent=6','6'),(1648,1324226502,2,'127.0.0.1',1,'forum',59,'view discussion','discuss.php?d=5','5'),(1649,1324226509,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1650,1324226509,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1651,1324226575,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1652,1324226596,2,'127.0.0.1',1,'forum',59,'view discussion','discuss.php?d=5','5'),(1653,1324226603,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1654,1324226604,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1655,1324226606,2,'127.0.0.1',1,'forum',59,'view forum','view.php?id=59','5'),(1656,1324226635,2,'127.0.0.1',1,'forum',59,'add discussion','discuss.php?d=6','6'),(1657,1324226637,2,'127.0.0.1',1,'forum',59,'view forum','view.php?id=59','5'),(1658,1324226654,2,'127.0.0.1',1,'forum',0,'view forums','index.php?id=1',''),(1659,1324226657,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1660,1324228467,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1661,1324228620,2,'127.0.0.1',1,'user',0,'view','view.php?id=7&course=1','7'),(1662,1324277369,3,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','3'),(1663,1324277369,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1664,1324277409,3,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1665,1324277434,3,'127.0.0.1',4,'resource',28,'view','view.php?id=28','24'),(1666,1324277451,3,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1667,1324277460,3,'127.0.0.1',1,'user',0,'logout','view.php?id=3&course=1','3'),(1668,1324387577,3,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','3'),(1669,1324387577,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1670,1324387581,3,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1671,1324387585,3,'127.0.0.1',4,'resource',33,'view','view.php?id=33','29'),(1672,1324387595,3,'127.0.0.1',4,'resource',34,'view','view.php?id=34','30'),(1673,1324387766,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1674,1324389430,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1675,1324389435,3,'127.0.0.1',1,'user',0,'logout','view.php?id=3&course=1','3'),(1676,1324389455,0,'127.0.0.1',0,'login',0,'error','index.php','administrator'),(1677,1329047114,3,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','3'),(1678,1329047115,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1679,1329117121,3,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','3'),(1680,1329117121,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1681,1329117129,3,'127.0.0.1',3,'course',0,'view','view.php?id=3','3'),(1682,1365141771,12,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','12'),(1683,1365141779,12,'127.0.0.1',1,'library',0,'mailer','http://localhost/moodle/course/enrol.php?id=4&confirm=1&sesskey=AIX0rpYS6H','ERROR: Could not instantiate mail function.'),(1684,1365141779,12,'127.0.0.1',4,'course',0,'enrol','view.php?id=4','4'),(1685,1365141779,12,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1686,1366618993,11,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','11'),(1687,1366618994,11,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1688,1366619109,11,'127.0.0.1',4,'forum',5,'view discussion','discuss.php?d=4','4'),(1689,1366619117,11,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1690,1366619325,11,'127.0.0.1',4,'user',0,'view','view.php?id=11&course=4','11'),(1691,1366619385,11,'127.0.0.1',0,'login',0,'error','index.php','uxc.wilis'),(1692,1366619405,11,'127.0.0.1',1,'user',0,'view','view.php?id=11&course=1','11'),(1693,1366619433,11,'127.0.0.1',0,'login',0,'error','index.php','uxc.wilis'),(1694,1366619437,11,'127.0.0.1',1,'user',0,'view','view.php?id=11&course=1','11'),(1695,1366619440,11,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1696,1366619453,11,'127.0.0.1',1,'user',0,'view','view.php?id=11&course=1','11'),(1697,1366619492,11,'127.0.0.1',0,'login',0,'error','index.php','uxc.wilis'),(1698,1366619509,11,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1699,1366619518,11,'127.0.0.1',1,'user',0,'logout','view.php?id=11&course=1','11'),(1700,1366619623,0,'127.0.0.1',0,'login',0,'error','index.php','uxc.wilis'),(1701,1366619625,0,'127.0.0.1',0,'login',0,'error','index.php','uxc.wilis'),(1702,1366619628,0,'127.0.0.1',0,'login',0,'error','index.php','uxc.wilis'),(1703,1366619630,0,'127.0.0.1',0,'login',0,'error','index.php','uxc.wilis'),(1704,1366619650,0,'127.0.0.1',0,'login',0,'error','index.php','uxc.wilis'),(1705,1366619654,0,'127.0.0.1',0,'login',0,'error','index.php','uxc.wilis'),(1706,1366620786,0,'127.0.0.1',0,'login',0,'error','index.php','uxc.wilis'),(1707,1366620871,0,'127.0.0.1',1,'library',0,'mailer','http://localhost/moodle/login/signup.php','ERROR: Could not instantiate mail function.'),(1708,1366620917,13,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','13'),(1709,1366620917,13,'127.0.0.1',1,'user',0,'view','view.php?id=9&course=1','9'),(1710,1366620939,13,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1711,1366620946,13,'127.0.0.1',1,'user',0,'view','view.php?id=13&course=1','13'),(1712,1366620957,13,'127.0.0.1',1,'blog',0,'view','index.php?filtertype=user&filterselect=13&postid=0&tagid=0&tag=','view blog entry'),(1713,1366621248,13,'127.0.0.1',1,'user',0,'logout','view.php?id=13&course=1','13'),(1714,1366621410,0,'127.0.0.1',1,'library',0,'mailer','http://localhost/moodle/login/signup.php','ERROR: Could not instantiate mail function.'),(1715,1366621475,0,'127.0.0.1',0,'login',0,'error','index.php','nazruddin.safaat'),(1716,1366621486,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(1717,1366621487,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(1718,1366621499,2,'127.0.0.1',4,'course',0,'view','view.php?id=4','4'),(1719,1366621516,2,'127.0.0.1',4,'assignment',0,'view all','index.php?id=4',''),(1720,1366621518,2,'127.0.0.1',4,'assignment',43,'view','view.php?id=43','2'),(1721,1368933485,0,'127.0.0.1',0,'login',0,'error','index.php','nazruddin.safaat'),(1722,1368933531,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(1723,1368933531,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1');

/*Table structure for table `mdl_log_display` */

DROP TABLE IF EXISTS `mdl_log_display`;

CREATE TABLE `mdl_log_display` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(20) NOT NULL DEFAULT '',
  `action` varchar(40) NOT NULL DEFAULT '',
  `mtable` varchar(30) NOT NULL DEFAULT '',
  `field` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_logdisp_modact_uix` (`module`,`action`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COMMENT='For a particular module/action, specifies a moodle table/fie';

/*Data for the table `mdl_log_display` */

insert  into `mdl_log_display`(`id`,`module`,`action`,`mtable`,`field`) values (1,'user','view','user','CONCAT(firstname,\' \',lastname)'),(2,'course','user report','user','CONCAT(firstname,\' \',lastname)'),(3,'course','view','course','fullname'),(4,'course','update','course','fullname'),(5,'course','enrol','course','fullname'),(6,'course','unenrol','course','fullname'),(7,'course','report log','course','fullname'),(8,'course','report live','course','fullname'),(9,'course','report outline','course','fullname'),(10,'course','report participation','course','fullname'),(11,'course','report stats','course','fullname'),(12,'message','write','user','CONCAT(firstname,\' \',lastname)'),(13,'message','read','user','CONCAT(firstname,\' \',lastname)'),(14,'message','add contact','user','CONCAT(firstname,\' \',lastname)'),(15,'message','remove contact','user','CONCAT(firstname,\' \',lastname)'),(16,'message','block contact','user','CONCAT(firstname,\' \',lastname)'),(17,'message','unblock contact','user','CONCAT(firstname,\' \',lastname)'),(18,'group','view','groups','name'),(19,'tag','update','tag','name'),(20,'assignment','view','assignment','name'),(21,'assignment','add','assignment','name'),(22,'assignment','update','assignment','name'),(23,'assignment','view submission','assignment','name'),(24,'assignment','upload','assignment','name'),(25,'chat','view','chat','name'),(26,'chat','add','chat','name'),(27,'chat','update','chat','name'),(28,'chat','report','chat','name'),(29,'chat','talk','chat','name'),(30,'choice','view','choice','name'),(31,'choice','update','choice','name'),(32,'choice','add','choice','name'),(33,'choice','report','choice','name'),(34,'choice','choose','choice','name'),(35,'choice','choose again','choice','name'),(36,'data','view','data','name'),(37,'data','add','data','name'),(38,'data','update','data','name'),(39,'data','record delete','data','name'),(40,'data','fields add','data_fields','name'),(41,'data','fields update','data_fields','name'),(42,'data','templates saved','data','name'),(43,'data','templates def','data','name'),(44,'forum','add','forum','name'),(45,'forum','update','forum','name'),(46,'forum','add discussion','forum_discussions','name'),(47,'forum','add post','forum_posts','subject'),(48,'forum','update post','forum_posts','subject'),(49,'forum','user report','user','CONCAT(firstname,\' \',lastname)'),(50,'forum','move discussion','forum_discussions','name'),(51,'forum','view subscribers','forum','name'),(52,'forum','view discussion','forum_discussions','name'),(53,'forum','view forum','forum','name'),(54,'forum','subscribe','forum','name'),(55,'forum','unsubscribe','forum','name'),(56,'glossary','add','glossary','name'),(57,'glossary','update','glossary','name'),(58,'glossary','view','glossary','name'),(59,'glossary','view all','glossary','name'),(60,'glossary','add entry','glossary','name'),(61,'glossary','update entry','glossary','name'),(62,'glossary','add category','glossary','name'),(63,'glossary','update category','glossary','name'),(64,'glossary','delete category','glossary','name'),(65,'glossary','add comment','glossary','name'),(66,'glossary','update comment','glossary','name'),(67,'glossary','delete comment','glossary','name'),(68,'glossary','approve entry','glossary','name'),(69,'glossary','view entry','glossary_entries','concept'),(70,'journal','view','journal','name'),(71,'journal','add entry','journal','name'),(72,'journal','update entry','journal','name'),(73,'journal','view responses','journal','name'),(74,'label','add','label','name'),(75,'label','update','label','name'),(76,'lesson','start','lesson','name'),(77,'lesson','end','lesson','name'),(78,'lesson','view','lesson_pages','title'),(79,'quiz','add','quiz','name'),(80,'quiz','update','quiz','name'),(81,'quiz','view','quiz','name'),(82,'quiz','report','quiz','name'),(83,'quiz','attempt','quiz','name'),(84,'quiz','submit','quiz','name'),(85,'quiz','review','quiz','name'),(86,'quiz','editquestions','quiz','name'),(87,'quiz','preview','quiz','name'),(88,'quiz','start attempt','quiz','name'),(89,'quiz','close attempt','quiz','name'),(90,'quiz','continue attempt','quiz','name'),(91,'resource','view','resource','name'),(92,'resource','update','resource','name'),(93,'resource','add','resource','name'),(94,'scorm','view','scorm','name'),(95,'scorm','review','scorm','name'),(96,'scorm','update','scorm','name'),(97,'scorm','add','scorm','name'),(98,'survey','add','survey','name'),(99,'survey','update','survey','name'),(100,'survey','download','survey','name'),(101,'survey','view form','survey','name'),(102,'survey','view graph','survey','name'),(103,'survey','view report','survey','name'),(104,'survey','submit','survey','name'),(105,'workshop','assessments','workshop','name'),(106,'workshop','close','workshop','name'),(107,'workshop','display','workshop','name'),(108,'workshop','resubmit','workshop','name'),(109,'workshop','set up','workshop','name'),(110,'workshop','submissions','workshop','name'),(111,'workshop','view','workshop','name'),(112,'workshop','update','workshop','name');

/*Table structure for table `mdl_message` */

DROP TABLE IF EXISTS `mdl_message`;

CREATE TABLE `mdl_message` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `useridfrom` bigint(10) unsigned NOT NULL DEFAULT '0',
  `useridto` bigint(10) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `format` smallint(4) unsigned NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `messagetype` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_mess_use_ix` (`useridfrom`),
  KEY `mdl_mess_use2_ix` (`useridto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all unread messages';

/*Data for the table `mdl_message` */

/*Table structure for table `mdl_message_contacts` */

DROP TABLE IF EXISTS `mdl_message_contacts`;

CREATE TABLE `mdl_message_contacts` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `contactid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `blocked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_messcont_usecon_uix` (`userid`,`contactid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maintains lists of relationships between users';

/*Data for the table `mdl_message_contacts` */

/*Table structure for table `mdl_message_read` */

DROP TABLE IF EXISTS `mdl_message_read`;

CREATE TABLE `mdl_message_read` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `useridfrom` bigint(10) unsigned NOT NULL DEFAULT '0',
  `useridto` bigint(10) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `format` smallint(4) unsigned NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timeread` bigint(10) NOT NULL DEFAULT '0',
  `messagetype` varchar(50) NOT NULL DEFAULT '',
  `mailed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_messread_use_ix` (`useridfrom`),
  KEY `mdl_messread_use2_ix` (`useridto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all messages that have been read';

/*Data for the table `mdl_message_read` */

/*Table structure for table `mdl_mnet_application` */

DROP TABLE IF EXISTS `mdl_mnet_application`;

CREATE TABLE `mdl_mnet_application` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `display_name` varchar(50) NOT NULL DEFAULT '',
  `xmlrpc_server_url` varchar(255) NOT NULL DEFAULT '',
  `sso_land_url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Information about applications on remote hosts';

/*Data for the table `mdl_mnet_application` */

insert  into `mdl_mnet_application`(`id`,`name`,`display_name`,`xmlrpc_server_url`,`sso_land_url`) values (1,'moodle','Moodle','/mnet/xmlrpc/server.php','/auth/mnet/land.php'),(2,'mahara','Mahara','/api/xmlrpc/server.php','/auth/xmlrpc/land.php');

/*Table structure for table `mdl_mnet_enrol_assignments` */

DROP TABLE IF EXISTS `mdl_mnet_enrol_assignments`;

CREATE TABLE `mdl_mnet_enrol_assignments` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `hostid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `courseid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `rolename` varchar(255) NOT NULL DEFAULT '',
  `enroltime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `enroltype` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_mnetenroassi_hoscou_ix` (`hostid`,`courseid`),
  KEY `mdl_mnetenroassi_use_ix` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Information about enrolments on courses on remote hosts';

/*Data for the table `mdl_mnet_enrol_assignments` */

/*Table structure for table `mdl_mnet_enrol_course` */

DROP TABLE IF EXISTS `mdl_mnet_enrol_course`;

CREATE TABLE `mdl_mnet_enrol_course` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `hostid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `remoteid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `cat_id` bigint(10) unsigned NOT NULL DEFAULT '0',
  `cat_name` varchar(255) NOT NULL DEFAULT '',
  `cat_description` mediumtext NOT NULL,
  `sortorder` bigint(10) unsigned NOT NULL DEFAULT '0',
  `fullname` varchar(254) NOT NULL DEFAULT '',
  `shortname` varchar(15) NOT NULL DEFAULT '',
  `idnumber` varchar(100) NOT NULL DEFAULT '',
  `summary` mediumtext NOT NULL,
  `startdate` bigint(10) unsigned NOT NULL DEFAULT '0',
  `cost` varchar(10) NOT NULL DEFAULT '',
  `currency` varchar(3) NOT NULL DEFAULT '',
  `defaultroleid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `defaultrolename` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetenrocour_hosrem_uix` (`hostid`,`remoteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Information about courses on remote hosts';

/*Data for the table `mdl_mnet_enrol_course` */

/*Table structure for table `mdl_mnet_host` */

DROP TABLE IF EXISTS `mdl_mnet_host`;

CREATE TABLE `mdl_mnet_host` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `wwwroot` varchar(255) NOT NULL DEFAULT '',
  `ip_address` varchar(39) NOT NULL DEFAULT '',
  `name` varchar(80) NOT NULL DEFAULT '',
  `public_key` mediumtext NOT NULL,
  `public_key_expires` bigint(10) unsigned NOT NULL DEFAULT '0',
  `transport` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `portno` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `last_connect_time` bigint(10) unsigned NOT NULL DEFAULT '0',
  `last_log_id` bigint(10) unsigned NOT NULL DEFAULT '0',
  `force_theme` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(100) DEFAULT NULL,
  `applicationid` bigint(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl_mnethost_app_ix` (`applicationid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Information about the local and remote hosts for RPC';

/*Data for the table `mdl_mnet_host` */

insert  into `mdl_mnet_host`(`id`,`deleted`,`wwwroot`,`ip_address`,`name`,`public_key`,`public_key_expires`,`transport`,`portno`,`last_connect_time`,`last_log_id`,`force_theme`,`theme`,`applicationid`) values (1,0,'http://localhost/moodle','127.0.0.1','','',0,0,0,0,0,0,NULL,1),(2,0,'','','All Hosts','',0,0,0,0,0,0,NULL,1);

/*Table structure for table `mdl_mnet_host2service` */

DROP TABLE IF EXISTS `mdl_mnet_host2service`;

CREATE TABLE `mdl_mnet_host2service` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `hostid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `serviceid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `publish` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subscribe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnethost_hosser_uix` (`hostid`,`serviceid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Information about the services for a given host';

/*Data for the table `mdl_mnet_host2service` */

/*Table structure for table `mdl_mnet_log` */

DROP TABLE IF EXISTS `mdl_mnet_log`;

CREATE TABLE `mdl_mnet_log` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `hostid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `remoteid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `time` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `coursename` varchar(40) NOT NULL DEFAULT '',
  `module` varchar(20) NOT NULL DEFAULT '',
  `cmid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `action` varchar(40) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `info` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_mnetlog_hosusecou_ix` (`hostid`,`userid`,`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Store session data from users migrating to other sites';

/*Data for the table `mdl_mnet_log` */

/*Table structure for table `mdl_mnet_rpc` */

DROP TABLE IF EXISTS `mdl_mnet_rpc`;

CREATE TABLE `mdl_mnet_rpc` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `function_name` varchar(40) NOT NULL DEFAULT '',
  `xmlrpc_path` varchar(80) NOT NULL DEFAULT '',
  `parent_type` varchar(6) NOT NULL DEFAULT '',
  `parent` varchar(20) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `help` mediumtext NOT NULL,
  `profile` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_mnetrpc_enaxml_ix` (`enabled`,`xmlrpc_path`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='Functions or methods that we may publish or subscribe to';

/*Data for the table `mdl_mnet_rpc` */

insert  into `mdl_mnet_rpc`(`id`,`function_name`,`xmlrpc_path`,`parent_type`,`parent`,`enabled`,`help`,`profile`) values (1,'user_authorise','auth/mnet/auth.php/user_authorise','auth','mnet',0,'Return user data for the provided token, compare with user_agent string.','a:3:{i:0;a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:44:\"$userdata Array of user info for remote host\";}i:1;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:45:\"token - The unique ID provided by remotehost.\";}i:2;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:30:\"useragent - User Agent string.\";}}'),(2,'keepalive_server','auth/mnet/auth.php/keepalive_server','auth','mnet',0,'Receives an array of usernames from a remote machine and prods their\\n sessions to keep them alive','a:2:{i:0;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:30:\"\\\"All ok\\\" or an error message\";}i:1;a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:29:\"array - An array of usernames\";}}'),(3,'kill_children','auth/mnet/auth.php/kill_children','auth','mnet',0,'The IdP uses this function to kill child sessions on other hosts','a:3:{i:0;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:39:\"A plaintext report of what has happened\";}i:1;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:39:\"username - Username for session to kill\";}i:2;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:47:\"useragent - SHA1 hash of user agent to look for\";}}'),(4,'refresh_log','auth/mnet/auth.php/refresh_log','auth','mnet',0,'Receives an array of log entries from an SP and adds them to the mnet_log\\n table','a:2:{i:0;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:30:\"\\\"All ok\\\" or an error message\";}i:1;a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:29:\"array - An array of usernames\";}}'),(5,'fetch_user_image','auth/mnet/auth.php/fetch_user_image','auth','mnet',0,'Returns the user\'s image as a base64 encoded string.','a:2:{i:0;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:17:\"The encoded image\";}i:1;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:29:\"username - The id of the user\";}}'),(6,'fetch_theme_info','auth/mnet/auth.php/fetch_theme_info','auth','mnet',0,'Returns the theme information and logo url as strings.','a:1:{i:0;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:14:\"The theme info\";}}'),(7,'update_enrolments','auth/mnet/auth.php/update_enrolments','auth','mnet',0,'Invoke this function _on_ the IDP to update it with enrolment info local to\\n the SP right after calling user_authorise()\\n \\n Normally called by the SP after calling','a:3:{i:0;a:2:{s:4:\"type\";s:7:\"boolean\";s:11:\"description\";N;}i:1;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:23:\"username - The username\";}i:2;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:77:\"courses - Assoc array of courses following the structure of mnet_enrol_course\";}}'),(8,'keepalive_client','auth/mnet/auth.php/keepalive_client','auth','mnet',0,'Poll the IdP server to let it know that a user it has authenticated is still\\n online','a:1:{i:0;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";N;}}'),(9,'kill_child','auth/mnet/auth.php/kill_child','auth','mnet',0,'TODO:Untested When the IdP requests that child sessions are terminated,\\n this function will be called on each of the child hosts. The machine that\\n calls the function (over xmlrpc) provides us with the mnethostid we need.','a:3:{i:0;a:2:{s:4:\"type\";s:7:\"boolean\";s:11:\"description\";s:15:\"True on success\";}i:1;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:39:\"username - Username for session to kill\";}i:2;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:47:\"useragent - SHA1 hash of user agent to look for\";}}'),(10,'available_courses','enrol/mnet/enrol.php/available_courses','enrol','mnet',0,'Does Foo','a:1:{i:0;a:2:{s:4:\"type\";s:7:\"boolean\";s:11:\"description\";s:47:\"Whether the user can login from the remote host\";}}'),(11,'user_enrolments','enrol/mnet/enrol.php/user_enrolments','enrol','mnet',0,'No description given.','a:2:{i:0;a:2:{s:4:\"type\";s:4:\"void\";s:11:\"description\";s:0:\"\";}i:1;s:6:\"userid\";}'),(12,'enrol_user','enrol/mnet/enrol.php/enrol_user','enrol','mnet',0,'Enrols user to course with the default role','a:3:{i:0;a:2:{s:4:\"type\";s:7:\"boolean\";s:11:\"description\";s:41:\"Whether the enrolment has been successful\";}i:1;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:37:\"user - The username of the remote use\";}i:2;a:2:{s:4:\"type\";s:3:\"int\";s:11:\"description\";s:37:\"courseid - The id of the local course\";}}'),(13,'unenrol_user','enrol/mnet/enrol.php/unenrol_user','enrol','mnet',0,'Unenrol a user from a course','a:3:{i:0;a:2:{s:4:\"type\";s:7:\"boolean\";s:11:\"description\";s:47:\"Whether the user can login from the remote host\";}i:1;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:23:\"username - The username\";}i:2;a:2:{s:4:\"type\";s:3:\"int\";s:11:\"description\";s:37:\"courseid - The id of the local course\";}}'),(14,'course_enrolments','enrol/mnet/enrol.php/course_enrolments','enrol','mnet',0,'Get a list of users from the client server who are enrolled in a course','a:3:{i:0;a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:39:\"Array of usernames who are homed on the\";}i:1;a:2:{s:4:\"type\";s:3:\"int\";s:11:\"description\";s:24:\"courseid - The Course ID\";}i:2;a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:47:\"roles - Comma-separated list of role shortnames\";}}');

/*Table structure for table `mdl_mnet_service` */

DROP TABLE IF EXISTS `mdl_mnet_service`;

CREATE TABLE `mdl_mnet_service` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `description` varchar(40) NOT NULL DEFAULT '',
  `apiversion` varchar(10) NOT NULL DEFAULT '',
  `offer` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='A service is a group of functions';

/*Data for the table `mdl_mnet_service` */

insert  into `mdl_mnet_service`(`id`,`name`,`description`,`apiversion`,`offer`) values (1,'sso_idp','','1',1),(2,'sso_sp','','1',1),(3,'mnet_enrol','','1',1);

/*Table structure for table `mdl_mnet_service2rpc` */

DROP TABLE IF EXISTS `mdl_mnet_service2rpc`;

CREATE TABLE `mdl_mnet_service2rpc` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `serviceid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `rpcid` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetserv_rpcser_uix` (`rpcid`,`serviceid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='Group functions or methods under a service';

/*Data for the table `mdl_mnet_service2rpc` */

insert  into `mdl_mnet_service2rpc`(`id`,`serviceid`,`rpcid`) values (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,8),(9,2,9),(10,3,10),(11,3,11),(12,3,12),(13,3,13),(14,3,14);

/*Table structure for table `mdl_mnet_session` */

DROP TABLE IF EXISTS `mdl_mnet_session`;

CREATE TABLE `mdl_mnet_session` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(100) NOT NULL DEFAULT '',
  `token` varchar(40) NOT NULL DEFAULT '',
  `mnethostid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `useragent` varchar(40) NOT NULL DEFAULT '',
  `confirm_timeout` bigint(10) unsigned NOT NULL DEFAULT '0',
  `session_id` varchar(40) NOT NULL DEFAULT '',
  `expires` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetsess_tok_uix` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Store session data from users migrating to other sites';

/*Data for the table `mdl_mnet_session` */

/*Table structure for table `mdl_mnet_sso_access_control` */

DROP TABLE IF EXISTS `mdl_mnet_sso_access_control`;

CREATE TABLE `mdl_mnet_sso_access_control` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `mnet_host_id` bigint(10) unsigned NOT NULL DEFAULT '0',
  `accessctrl` varchar(20) NOT NULL DEFAULT 'allow',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetssoaccecont_mneuse_uix` (`mnet_host_id`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Users by host permitted (or not) to login from a remote prov';

/*Data for the table `mdl_mnet_sso_access_control` */

/*Table structure for table `mdl_modules` */

DROP TABLE IF EXISTS `mdl_modules`;

CREATE TABLE `mdl_modules` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `version` bigint(10) NOT NULL DEFAULT '0',
  `cron` bigint(10) unsigned NOT NULL DEFAULT '0',
  `lastcron` bigint(10) unsigned NOT NULL DEFAULT '0',
  `search` varchar(255) NOT NULL DEFAULT '',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl_modu_nam_ix` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='modules available in the site';

/*Data for the table `mdl_modules` */

insert  into `mdl_modules`(`id`,`name`,`version`,`cron`,`lastcron`,`search`,`visible`) values (1,'assignment',2007101511,60,0,'',1),(2,'chat',2009031100,300,0,'',1),(3,'choice',2007101509,0,0,'',1),(4,'data',2007101515,60,0,'',1),(5,'forum',2007101513,60,0,'',1),(6,'glossary',2007101509,0,0,'',1),(7,'hotpot',2007101513,0,0,'',1),(8,'journal',2007101509,60,0,'',1),(9,'label',2007101510,0,0,'',1),(10,'lams',2007101509,0,0,'',1),(11,'lesson',2008112601,0,0,'',1),(12,'quiz',2007101511,0,0,'',1),(13,'resource',2007101511,0,0,'',1),(14,'scorm',2007110503,300,0,'',1),(15,'survey',2007101509,0,0,'',1),(16,'wiki',2007101509,3600,0,'',1),(17,'workshop',2007101510,60,0,'',1);

/*Table structure for table `mdl_post` */

DROP TABLE IF EXISTS `mdl_post`;

CREATE TABLE `mdl_post` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(20) NOT NULL DEFAULT '',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `courseid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `groupid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `moduleid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `coursemoduleid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(128) NOT NULL DEFAULT '',
  `summary` longtext,
  `content` longtext,
  `uniquehash` varchar(128) NOT NULL DEFAULT '',
  `rating` bigint(10) unsigned NOT NULL DEFAULT '0',
  `format` bigint(10) unsigned NOT NULL DEFAULT '0',
  `attachment` varchar(100) DEFAULT NULL,
  `publishstate` enum('draft','site','public') NOT NULL DEFAULT 'draft',
  `lastmodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  `created` bigint(10) unsigned NOT NULL DEFAULT '0',
  `usermodified` bigint(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_post_iduse_uix` (`id`,`userid`),
  KEY `mdl_post_las_ix` (`lastmodified`),
  KEY `mdl_post_mod_ix` (`module`),
  KEY `mdl_post_sub_ix` (`subject`),
  KEY `mdl_post_use_ix` (`usermodified`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Generic post table to hold data blog entries etc in differen';

/*Data for the table `mdl_post` */

/*Table structure for table `mdl_question` */

DROP TABLE IF EXISTS `mdl_question`;

CREATE TABLE `mdl_question` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` bigint(10) NOT NULL DEFAULT '0',
  `parent` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `questiontext` text NOT NULL,
  `questiontextformat` tinyint(2) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT '',
  `generalfeedback` text NOT NULL,
  `defaultgrade` bigint(10) unsigned NOT NULL DEFAULT '1',
  `penalty` double NOT NULL DEFAULT '0.1',
  `qtype` varchar(20) NOT NULL DEFAULT '',
  `length` bigint(10) unsigned NOT NULL DEFAULT '1',
  `stamp` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `timecreated` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  `createdby` bigint(10) unsigned DEFAULT NULL,
  `modifiedby` bigint(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_ques_cat_ix` (`category`),
  KEY `mdl_ques_par_ix` (`parent`),
  KEY `mdl_ques_cre_ix` (`createdby`),
  KEY `mdl_ques_mod_ix` (`modifiedby`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='The questions themselves';

/*Data for the table `mdl_question` */

insert  into `mdl_question`(`id`,`category`,`parent`,`name`,`questiontext`,`questiontextformat`,`image`,`generalfeedback`,`defaultgrade`,`penalty`,`qtype`,`length`,`stamp`,`version`,`hidden`,`timecreated`,`timemodified`,`createdby`,`modifiedby`) values (1,2,0,'Quiz Pendahuluan','1. Siapa Dosen RPL<br />2. Apa Kepanjanga RPl ?<br />3. Semester berapa kul RPL ?<br />',1,'','',1,0,'essay',1,'localhost+110806181520+3ppOvV','localhost+110806182146+U2Skpx',0,1312654520,1312654906,6,6);

/*Table structure for table `mdl_question_answers` */

DROP TABLE IF EXISTS `mdl_question_answers`;

CREATE TABLE `mdl_question_answers` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` bigint(10) unsigned NOT NULL DEFAULT '0',
  `answer` text NOT NULL,
  `fraction` double NOT NULL DEFAULT '0',
  `feedback` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_quesansw_que_ix` (`question`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Answers, with a fractional grade (0-1) and feedback';

/*Data for the table `mdl_question_answers` */

insert  into `mdl_question_answers`(`id`,`question`,`answer`,`fraction`,`feedback`) values (1,1,'',0,'');

/*Table structure for table `mdl_question_attempts` */

DROP TABLE IF EXISTS `mdl_question_attempts`;

CREATE TABLE `mdl_question_attempts` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `modulename` varchar(20) NOT NULL DEFAULT 'quiz',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Student attempts. This table gets extended by the modules';

/*Data for the table `mdl_question_attempts` */

insert  into `mdl_question_attempts`(`id`,`modulename`) values (1,'quiz'),(2,'quiz'),(3,'quiz');

/*Table structure for table `mdl_question_calculated` */

DROP TABLE IF EXISTS `mdl_question_calculated`;

CREATE TABLE `mdl_question_calculated` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` bigint(10) unsigned NOT NULL DEFAULT '0',
  `answer` bigint(10) unsigned NOT NULL DEFAULT '0',
  `tolerance` varchar(20) NOT NULL DEFAULT '0.0',
  `tolerancetype` bigint(10) NOT NULL DEFAULT '1',
  `correctanswerlength` bigint(10) NOT NULL DEFAULT '2',
  `correctanswerformat` bigint(10) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `mdl_quescalc_ans_ix` (`answer`),
  KEY `mdl_quescalc_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Options for questions of type calculated';

/*Data for the table `mdl_question_calculated` */

/*Table structure for table `mdl_question_categories` */

DROP TABLE IF EXISTS `mdl_question_categories`;

CREATE TABLE `mdl_question_categories` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contextid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `stamp` varchar(255) NOT NULL DEFAULT '',
  `parent` bigint(10) unsigned NOT NULL DEFAULT '0',
  `sortorder` bigint(10) unsigned NOT NULL DEFAULT '999',
  PRIMARY KEY (`id`),
  KEY `mdl_quescate_con_ix` (`contextid`),
  KEY `mdl_quescate_par_ix` (`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Categories are for grouping questions';

/*Data for the table `mdl_question_categories` */

insert  into `mdl_question_categories`(`id`,`name`,`contextid`,`info`,`stamp`,`parent`,`sortorder`) values (1,'Default for QUIZ 1 RPL`',109,'The default category for questions shared in context \'QUIZ 1 RPL`\'.','localhost+110806181131+1ru9jG',0,999),(2,'Default for Rekayasa Perangkat Lunak',10,'The default category for questions shared in context \'Rekayasa Perangkat Lunak\'.','localhost+110806181131+sCFrDr',0,999),(3,'Default for Teknik Informatika',3,'The default category for questions shared in context \'Teknik Informatika\'.','localhost+110806181131+mA7lkS',0,999),(4,'Default for System',1,'The default category for questions shared in context \'System\'.','localhost+110806181131+mm5CjO',0,999),(5,'Default for Mobile Programming',32,'The default category for questions shared in context \'Mobile Programming\'.','localhost+111218161625+JZlgkF',0,999);

/*Table structure for table `mdl_question_dataset_definitions` */

DROP TABLE IF EXISTS `mdl_question_dataset_definitions`;

CREATE TABLE `mdl_question_dataset_definitions` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` bigint(10) NOT NULL DEFAULT '0',
  `options` varchar(255) NOT NULL DEFAULT '',
  `itemcount` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_quesdatadefi_cat_ix` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Organises and stores properties for dataset items';

/*Data for the table `mdl_question_dataset_definitions` */

/*Table structure for table `mdl_question_dataset_items` */

DROP TABLE IF EXISTS `mdl_question_dataset_items`;

CREATE TABLE `mdl_question_dataset_items` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `definition` bigint(10) unsigned NOT NULL DEFAULT '0',
  `itemnumber` bigint(10) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_quesdataitem_def_ix` (`definition`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Individual dataset items';

/*Data for the table `mdl_question_dataset_items` */

/*Table structure for table `mdl_question_datasets` */

DROP TABLE IF EXISTS `mdl_question_datasets`;

CREATE TABLE `mdl_question_datasets` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` bigint(10) unsigned NOT NULL DEFAULT '0',
  `datasetdefinition` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_quesdata_quedat_ix` (`question`,`datasetdefinition`),
  KEY `mdl_quesdata_que_ix` (`question`),
  KEY `mdl_quesdata_dat_ix` (`datasetdefinition`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Many-many relation between questions and dataset definitions';

/*Data for the table `mdl_question_datasets` */

/*Table structure for table `mdl_question_match` */

DROP TABLE IF EXISTS `mdl_question_match`;

CREATE TABLE `mdl_question_match` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` bigint(10) unsigned NOT NULL DEFAULT '0',
  `subquestions` varchar(255) NOT NULL DEFAULT '',
  `shuffleanswers` smallint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl_quesmatc_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines fixed matching questions';

/*Data for the table `mdl_question_match` */

/*Table structure for table `mdl_question_match_sub` */

DROP TABLE IF EXISTS `mdl_question_match_sub`;

CREATE TABLE `mdl_question_match_sub` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` bigint(10) unsigned NOT NULL DEFAULT '0',
  `question` bigint(10) unsigned NOT NULL DEFAULT '0',
  `questiontext` text NOT NULL,
  `answertext` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_quesmatcsub_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines the subquestions that make up a matching question';

/*Data for the table `mdl_question_match_sub` */

/*Table structure for table `mdl_question_multianswer` */

DROP TABLE IF EXISTS `mdl_question_multianswer`;

CREATE TABLE `mdl_question_multianswer` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` bigint(10) unsigned NOT NULL DEFAULT '0',
  `sequence` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_quesmult_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Options for multianswer questions';

/*Data for the table `mdl_question_multianswer` */

/*Table structure for table `mdl_question_multichoice` */

DROP TABLE IF EXISTS `mdl_question_multichoice`;

CREATE TABLE `mdl_question_multichoice` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` bigint(10) unsigned NOT NULL DEFAULT '0',
  `layout` smallint(4) NOT NULL DEFAULT '0',
  `answers` varchar(255) NOT NULL DEFAULT '',
  `single` smallint(4) NOT NULL DEFAULT '0',
  `shuffleanswers` smallint(4) NOT NULL DEFAULT '1',
  `correctfeedback` text NOT NULL,
  `partiallycorrectfeedback` text NOT NULL,
  `incorrectfeedback` text NOT NULL,
  `answernumbering` varchar(10) NOT NULL DEFAULT 'abc',
  PRIMARY KEY (`id`),
  KEY `mdl_quesmult_que2_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Options for multiple choice questions';

/*Data for the table `mdl_question_multichoice` */

/*Table structure for table `mdl_question_numerical` */

DROP TABLE IF EXISTS `mdl_question_numerical`;

CREATE TABLE `mdl_question_numerical` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` bigint(10) unsigned NOT NULL DEFAULT '0',
  `answer` bigint(10) unsigned NOT NULL DEFAULT '0',
  `tolerance` varchar(255) NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`id`),
  KEY `mdl_quesnume_ans_ix` (`answer`),
  KEY `mdl_quesnume_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Options for numerical questions';

/*Data for the table `mdl_question_numerical` */

/*Table structure for table `mdl_question_numerical_units` */

DROP TABLE IF EXISTS `mdl_question_numerical_units`;

CREATE TABLE `mdl_question_numerical_units` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` bigint(10) unsigned NOT NULL DEFAULT '0',
  `multiplier` decimal(40,20) NOT NULL DEFAULT '1.00000000000000000000',
  `unit` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quesnumeunit_queuni_uix` (`question`,`unit`),
  KEY `mdl_quesnumeunit_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Optional unit options for numerical questions';

/*Data for the table `mdl_question_numerical_units` */

/*Table structure for table `mdl_question_randomsamatch` */

DROP TABLE IF EXISTS `mdl_question_randomsamatch`;

CREATE TABLE `mdl_question_randomsamatch` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` bigint(10) unsigned NOT NULL DEFAULT '0',
  `choose` bigint(10) unsigned NOT NULL DEFAULT '4',
  PRIMARY KEY (`id`),
  KEY `mdl_quesrand_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Info about a random short-answer matching question';

/*Data for the table `mdl_question_randomsamatch` */

/*Table structure for table `mdl_question_sessions` */

DROP TABLE IF EXISTS `mdl_question_sessions`;

CREATE TABLE `mdl_question_sessions` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `attemptid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `questionid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `newest` bigint(10) unsigned NOT NULL DEFAULT '0',
  `newgraded` bigint(10) unsigned NOT NULL DEFAULT '0',
  `sumpenalty` double NOT NULL DEFAULT '0',
  `manualcomment` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quessess_attque_uix` (`attemptid`,`questionid`),
  KEY `mdl_quessess_att_ix` (`attemptid`),
  KEY `mdl_quessess_que_ix` (`questionid`),
  KEY `mdl_quessess_new_ix` (`newest`),
  KEY `mdl_quessess_new2_ix` (`newgraded`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Gives ids of the newest open and newest graded states';

/*Data for the table `mdl_question_sessions` */

insert  into `mdl_question_sessions`(`id`,`attemptid`,`questionid`,`newest`,`newgraded`,`sumpenalty`,`manualcomment`) values (1,1,1,3,1,0,''),(2,2,1,2,2,0,''),(3,3,1,4,4,0,'');

/*Table structure for table `mdl_question_shortanswer` */

DROP TABLE IF EXISTS `mdl_question_shortanswer`;

CREATE TABLE `mdl_question_shortanswer` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` bigint(10) unsigned NOT NULL DEFAULT '0',
  `answers` varchar(255) NOT NULL DEFAULT '',
  `usecase` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_quesshor_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Options for short answer questions';

/*Data for the table `mdl_question_shortanswer` */

/*Table structure for table `mdl_question_states` */

DROP TABLE IF EXISTS `mdl_question_states`;

CREATE TABLE `mdl_question_states` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `attempt` bigint(10) unsigned NOT NULL DEFAULT '0',
  `question` bigint(10) unsigned NOT NULL DEFAULT '0',
  `originalquestion` bigint(10) unsigned NOT NULL DEFAULT '0',
  `seq_number` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `answer` text NOT NULL,
  `timestamp` bigint(10) unsigned NOT NULL DEFAULT '0',
  `event` smallint(4) unsigned NOT NULL DEFAULT '0',
  `grade` double NOT NULL DEFAULT '0',
  `raw_grade` double NOT NULL DEFAULT '0',
  `penalty` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_quesstat_att_ix` (`attempt`),
  KEY `mdl_quesstat_que_ix` (`question`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Stores user responses to an attempt, and percentage grades';

/*Data for the table `mdl_question_states` */

insert  into `mdl_question_states`(`id`,`attempt`,`question`,`originalquestion`,`seq_number`,`answer`,`timestamp`,`event`,`grade`,`raw_grade`,`penalty`) values (1,1,1,0,0,'',1312654689,0,0,0,0),(2,2,1,0,0,'',1312654819,0,0,0,0),(3,1,1,0,1,'1. Pak Jay<div>2. Rekayasa Perangkat Lunak</div><div>3. Semester 5</div>',1312655013,8,0,0,0),(4,3,1,0,0,'',1312655026,0,0,0,0);

/*Table structure for table `mdl_question_truefalse` */

DROP TABLE IF EXISTS `mdl_question_truefalse`;

CREATE TABLE `mdl_question_truefalse` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` bigint(10) unsigned NOT NULL DEFAULT '0',
  `trueanswer` bigint(10) unsigned NOT NULL DEFAULT '0',
  `falseanswer` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_questrue_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Options for True-False questions';

/*Data for the table `mdl_question_truefalse` */

/*Table structure for table `mdl_quiz` */

DROP TABLE IF EXISTS `mdl_quiz`;

CREATE TABLE `mdl_quiz` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `timeopen` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timeclose` bigint(10) unsigned NOT NULL DEFAULT '0',
  `optionflags` bigint(10) unsigned NOT NULL DEFAULT '0',
  `penaltyscheme` smallint(4) unsigned NOT NULL DEFAULT '0',
  `attempts` mediumint(6) NOT NULL DEFAULT '0',
  `attemptonlast` smallint(4) NOT NULL DEFAULT '0',
  `grademethod` smallint(4) NOT NULL DEFAULT '1',
  `decimalpoints` smallint(4) NOT NULL DEFAULT '2',
  `review` bigint(10) unsigned NOT NULL DEFAULT '0',
  `questionsperpage` bigint(10) NOT NULL DEFAULT '0',
  `shufflequestions` smallint(4) NOT NULL DEFAULT '0',
  `shuffleanswers` smallint(4) NOT NULL DEFAULT '0',
  `questions` text NOT NULL,
  `sumgrades` bigint(10) NOT NULL DEFAULT '0',
  `grade` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timelimit` bigint(10) unsigned NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL DEFAULT '',
  `subnet` varchar(255) NOT NULL DEFAULT '',
  `popup` smallint(4) NOT NULL DEFAULT '0',
  `delay1` bigint(10) NOT NULL DEFAULT '0',
  `delay2` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_quiz_cou_ix` (`course`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Main information about each quiz';

/*Data for the table `mdl_quiz` */

insert  into `mdl_quiz`(`id`,`course`,`name`,`intro`,`timeopen`,`timeclose`,`optionflags`,`penaltyscheme`,`attempts`,`attemptonlast`,`grademethod`,`decimalpoints`,`review`,`questionsperpage`,`shufflequestions`,`shuffleanswers`,`questions`,`sumgrades`,`grade`,`timecreated`,`timemodified`,`timelimit`,`password`,`subnet`,`popup`,`delay1`,`delay2`) values (1,2,'QUIZ 1 RPL`','',0,0,1,1,0,0,1,2,4652015,0,0,1,'1,0',1,10,0,1312654392,0,'','',0,0,0);

/*Table structure for table `mdl_quiz_attempts` */

DROP TABLE IF EXISTS `mdl_quiz_attempts`;

CREATE TABLE `mdl_quiz_attempts` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniqueid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `quiz` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `attempt` mediumint(6) NOT NULL DEFAULT '0',
  `sumgrades` double NOT NULL DEFAULT '0',
  `timestart` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timefinish` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  `layout` text NOT NULL,
  `preview` smallint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quizatte_uni_uix` (`uniqueid`),
  KEY `mdl_quizatte_use_ix` (`userid`),
  KEY `mdl_quizatte_qui_ix` (`quiz`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Stores various attempts on a quiz';

/*Data for the table `mdl_quiz_attempts` */

insert  into `mdl_quiz_attempts`(`id`,`uniqueid`,`quiz`,`userid`,`attempt`,`sumgrades`,`timestart`,`timefinish`,`timemodified`,`layout`,`preview`) values (1,1,1,4,1,0,1312654689,1312655013,1312655013,'1,0',0),(2,2,1,6,1,0,1312654819,0,1312654819,'1,0',1),(3,3,1,4,2,0,1312655026,0,1312655026,'1,0',0);

/*Table structure for table `mdl_quiz_feedback` */

DROP TABLE IF EXISTS `mdl_quiz_feedback`;

CREATE TABLE `mdl_quiz_feedback` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `quizid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `feedbacktext` text NOT NULL,
  `mingrade` double NOT NULL DEFAULT '0',
  `maxgrade` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_quizfeed_qui_ix` (`quizid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Feedback given to students based on their overall score on t';

/*Data for the table `mdl_quiz_feedback` */

insert  into `mdl_quiz_feedback`(`id`,`quizid`,`feedbacktext`,`mingrade`,`maxgrade`) values (2,1,'',0,11);

/*Table structure for table `mdl_quiz_grades` */

DROP TABLE IF EXISTS `mdl_quiz_grades`;

CREATE TABLE `mdl_quiz_grades` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `quiz` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `grade` double NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_quizgrad_use_ix` (`userid`),
  KEY `mdl_quizgrad_qui_ix` (`quiz`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Final quiz grade (may be best of several attempts)';

/*Data for the table `mdl_quiz_grades` */

insert  into `mdl_quiz_grades`(`id`,`quiz`,`userid`,`grade`,`timemodified`) values (1,1,4,0,1312655013);

/*Table structure for table `mdl_quiz_question_instances` */

DROP TABLE IF EXISTS `mdl_quiz_question_instances`;

CREATE TABLE `mdl_quiz_question_instances` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `quiz` bigint(10) unsigned NOT NULL DEFAULT '0',
  `question` bigint(10) unsigned NOT NULL DEFAULT '0',
  `grade` mediumint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_quizquesinst_qui_ix` (`quiz`),
  KEY `mdl_quizquesinst_que_ix` (`question`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='The grade for a question in a quiz';

/*Data for the table `mdl_quiz_question_instances` */

insert  into `mdl_quiz_question_instances`(`id`,`quiz`,`question`,`grade`) values (1,1,1,1);

/*Table structure for table `mdl_quiz_question_versions` */

DROP TABLE IF EXISTS `mdl_quiz_question_versions`;

CREATE TABLE `mdl_quiz_question_versions` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `quiz` bigint(10) unsigned NOT NULL DEFAULT '0',
  `oldquestion` bigint(10) unsigned NOT NULL DEFAULT '0',
  `newquestion` bigint(10) unsigned NOT NULL DEFAULT '0',
  `originalquestion` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_quizquesvers_qui_ix` (`quiz`),
  KEY `mdl_quizquesvers_old_ix` (`oldquestion`),
  KEY `mdl_quizquesvers_new_ix` (`newquestion`),
  KEY `mdl_quizquesvers_ori_ix` (`originalquestion`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='quiz_question_versions table retrofitted from MySQL';

/*Data for the table `mdl_quiz_question_versions` */

/*Table structure for table `mdl_resource` */

DROP TABLE IF EXISTS `mdl_resource`;

CREATE TABLE `mdl_resource` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '',
  `reference` varchar(255) NOT NULL DEFAULT '',
  `summary` text,
  `alltext` longtext NOT NULL,
  `popup` text NOT NULL,
  `options` varchar(255) NOT NULL DEFAULT '',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_reso_cou_ix` (`course`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='each record is one resource and its config data';

/*Data for the table `mdl_resource` */

insert  into `mdl_resource`(`id`,`course`,`name`,`type`,`reference`,`summary`,`alltext`,`popup`,`options`,`timemodified`) values (13,3,'PBO Movie-1','file','MOVIE/kelok9.mp4','','','','',1311438974),(14,3,'PBO Movie-2','file','MOVIE/barca.mp4','','','','',1311439017),(3,2,'Pengertian RPL','text','2','','Rekayasa perangkat lunak (RPL, atau dalam bahasa Inggris: Software Engineering atau SE) adalah satu bidang profesi yang mendalami cara-cara pengembangan perangkat lunak termasuk pembuatan, pemeliharaan, manajemen organisasi pengembanganan perangkat lunak dan manajemen kualitas.\r\n\r\nIEEE Computer Society mendefinisikan rekayasa perangkat lunak sebagai penerapan suatu pendekatan yang sistematis, disiplin dan terkuantifikasi atas pengembangan, penggunaan dan pemeliharaan perangkat lunak, serta studi atas pendekatan-pendekatan ini, yaitu penerapan pendekatan engineering atas perangkat lunak.','','',1311435875),(4,2,'Sejarah RPL','text','2','','Istilah software engineering, pertama kali digunakan pada akhir tahun 1950-an dan sekitar awal 1960-an. Pada tahun 1968, NATO menyelenggarakan konferensi tentang software engineering di Jerman dan kemudian dilanjutkan pada tahun 1969. Meski penggunaan kata software engineering masukan konferensi tersebut menimbulkan debat tajam tentang aspek engineering dari pengembangan perangkat lunak, banyak pihak yang menganggap konferensi tersebutlah yang menjadi awal tumbuhnya profesi rekayasa perangkat lunak','','',1311435912),(5,2,'RPL pdf','file','PDF/FUZZY.pdf','','','','',1311436952),(6,2,'RPL pdf_2','file','PDF/enkri.pdf','','','','',1311436987),(7,2,'RPL Ginger','file','WORD/CARAUPGRADEGALMINKEGINGERBREAD.doc','','','','',1311437029),(8,2,'RPL Bab II','file','WORD/BAB_II.docx','','','','',1311437060),(9,2,'RPL PPT','file','PPT/Oreintasi_KP-TA.ppt','','','','',1311437106),(10,2,'RPL PPT ke 2','file','PPT/presentasi.ppt','','','','',1311437134),(11,2,'RPL Movie','file','MOVIE/barca.mp4','','','','',1311437162),(12,2,'RPL Movie ke 2','file','MOVIE/kelok9.mp4','','','','',1311437189),(15,3,'Pengertian PBO','text','2','','OOP memodelkan obyek yang ada di dunia nyata (real-word objects) ke dalam softwareobyek dalam pemrograman. Oleh karena itu, di dalam OOP juga dikenal istilah seperti yang ada pada obyek dunia nyata, yaitu pewarisan (inheritance), dimana suatu obyek dapat mewariskan sifat-sifat yang dimilikinya kepada obyek turunannya. Secara umum, beberapa keuntungan yang dapat diperoleh pada OOP antara lain adalah simplicity, modularity, modifiability, extensibility, flexibility, maintainability, dan reasonability. Bahasa pemrograman yang mendukung OOP antara lain adalah: Smalltalk (murni OOP), C++, CLOS (Common Lisp Object System), Java, dan sebagainya. Dalam buku ini digunakan bahasa pemrograman C++ untuk memahami implementasi OOP.','','',1311439106),(38,3,'Dasar-dasar PBO','text','2','','untuk bisa berkecimpung dalam PBO kita harus paham dan mengerti konsep objek sebagai landasan utama untuk PBO,,,,','','',1311605169),(39,3,'Objek','text','2','','Objek merupakab bagian penting dalam sebuah PBO,,karena ini inti dari pmrograman berbasis objek','','',1311606286),(17,3,'PBO WORD-1','file','WORD/BAB_II.docx','','','','',1311440170),(18,3,'PBO WORD-2','file','WORD/BAB_III.docx','','','','',1311440154),(19,3,'PBO PDF-1','file','PDF/PBO_Dasar.pdf','','','','',1311440218),(20,3,'PBO PDF-2','file','PDF/Perancangan_Berorientasi_Objek.pdf','','','','',1311440246),(21,3,'PBO PDF-3','file','PDF/Rational_Unified_Process_2.pdf','','','','',1311440271),(22,3,'PBO PPT-1','file','PPT/Keamanan_Komputer99.ppt','','','','',1311440293),(23,3,'PBO PPT-2','file','PPT/Presentation_kk.pptx','','','','',1311440320),(24,4,'Pengenalan Android','text','4','','Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. Kemudian untuk mengembangkan Android, dibentuklah Open Handset Alliance, konsorsium dari 34 perusahaan peranti keras, peranti lunak, dan telekomunikasi, termasuk Google, HTC, Intel, Motorola, Qualcomm, T-Mobile, dan Nvidia.Android adalah sebuah sistem operasi  untuk perangkat mobile berbasis linux yang mencakup sistem operasi, middleware dan aplikas. Android menyediakan platform terbuka bagi para pengembang untuk menciptakan aplikasi mereka. Awalnya, Google Inc. membeli Android Inc. yang merupakan pendatang baru yang membuat peranti lunak untuk ponsel/smartphone. \r\n\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10\r\n11\r\n12\r\n13\r\n14\r\n15\r\n16\r\n\r\n','','',1324223982),(53,4,'IPhone Devlopment Apps','text','2','','Iphone adalah salah produk unggulan dari Apple Corp.','','',1324224794),(52,4,'Versi Android','text','2','','Adapun versi android yang sudah pernah dirilis adalah seperti berikut :\r\nAndroid 1.5\r\nAndroid 1.7\r\nAndroid 2.0\r\nAndroid 2.1\r\nAndroid 2.2\r\nAndroid 2.3\r\nAndroid 2.3.1\r\nAndroid 3.0\r\n','','',1324224522),(54,4,'Tablet Devlopment Application','text','2','','Dunia Tablet Computer','','',1324224866),(55,4,'Ipad Devlopment Application','text','2','','Ipad adalah tablet unggulan dari Apple yang sangat banyak dijumpai oleh masyarakat dunia','','',1324224929),(56,4,'Paper Iphone Arsitektur','file','1913-1750-1-PB.doc','','','','',1324226137),(57,4,'Paper Iphone Arsitektur','file','1913-1750-1-PB.doc','','','','',1324226141),(47,5,'metode waterfall','text','2','','metode ini paling sering digunakana dlam perancangan sebuah si.','','',1311615837),(48,5,'Fuzzy','text','2','','termasuk kedlam salah satu metode yang ada di si.','','',1311615878),(27,4,'MP Movie-1','file','MOVIE/Rossi_vs_Lorenzo.mp4','','','','',1311449145),(28,4,'MP Movie-2','file','MOVIE/barca.mp4','','','','',1311449174),(29,4,'MP Word-1','file','WORD/BAB_I.docx','','','','',1311449210),(30,4,'MP Word-2','file','WORD/BAB_III.docx','','','','',1311449231),(31,4,'MP Pdf-1','file','PDF/enkri_witc_ecc.pdf','','','','',1311449259),(32,4,'MP Pdf-2','file','PDF/mLearn.pdf','','','','',1311449282),(33,5,'Pengertian Sistem Informasi','text','2','','Sistem Informasi adalah aplikasi komputer untuk mendukung operasi dari suatu organisasi: operasi, instalasi, dan perawatan komputer, perangkat lunak, dan data. Sistem Informasi Manajemen adalah kunci dari bidang yang menekankan finansial dan personal manajemen. Sistem Informasi Penjualan adalah suatu sistem informasi yang mengorganisasikan serangkaian prosedur dan metode yang dirancang untuk menghasilkan, menganalisa, menyebarkan dan memperoleh informasi guna mendukung pengambilan keputusan mengenai penjualan.','','',1311449416),(34,5,'Konsep SI','text','2','','Sistem informasi adalah suatu sistem dalam suatu organisasi yang mempertemukan kebutuhan pengolahan transaksi harian yang mendukung fungsi operasi organisasi yang bersifat manajerial dengan kegiatan strategi dari suatu organisasi untuk dapat menyediakan kepada pihak luar tertentu dengan informasi yang diperlukan untuk pengambilan keputusan.\r\nSistem informasi dalam suatu organisasi dapat dikatakan sebagai suatu sistem yang menyediakan informasi bagi semua tingkatan dalam organisasi tersebut kapan saja diperlukan. Sistem ini menyimpan, mengambil, mengubah, mengolah dan mengkomunikasikan informasi yang diterima dengan menggunakan sistem informasi atau peralatan sistem lainnya','','',1311449542),(35,5,'SI Pdf-1','file','PDF/SISTEM_INFORMASI.pdf','','','','',1311449756),(36,5,'SI Word-1','file','WORD/BAB_III.docx','','','','',1311449787),(37,5,'SI Movie-1','file','MOVIE/Rossi_vs_Lorenzo.mp4','','','','',1311449837),(46,4,'The Dalvik Virtual Machine (DVM)','text','2','','Salah satu elemen kunci dari Android adalah Dalvik Virtual Machine (DVM). Android berjalan di dalam Dalvik Virtual Machine (DVM) bukan di Java Virtual Machine (JVM), sebenarnya banyak persamaannya dengan Java virtual machine (VM) seperti Java ME (Java Mobile Edition), tetapi Android menggunakan Virtual Machine sendiri yang menurut saya dikustomisasi dan dirancang untuk memastikan bahwa beberapa feature-feature berjalan lebih efisien pada perangkat mobile.\r\n\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10\r\n11\r\n12\r\n13\r\n14\r\n15\r\n16\r\n17\r\n18\r\n19\r\n20\r\n','','',1324224208),(50,4,'Arsitektur Android','text','4','','Sebagaimana yang telah disebutkan di atas, Android adalah sistem operasi yang berbasis linux atau open source. Selain Android SDK untuk pengembangan aplikasi, android juga tersedia bebas dalam bentuk operating sistem, hal ini sebenarnya yang menyebabkan vendor-vendor smartphone berlomba-lomba untuk memproduksi smartphone dan tablet PC berbasis android, Android OS dapat di download dari situs resmi google di alamat situs http://www.code.google.com.\r\n\r\nInilah yang menjadi peluang besar bagi vendor-vendor smartphone dan tablet PC untuk memproduksi smartphone dan Table PC Android. Android OS 3.0 yang dapat di download di situs resminya tersebut sudah banyak digunakan oleh table pc yang banyak beredar di pasaran. Dan sekarang Android sudah menyebar bukan hanya di smarthphone tetapi juga di tablet/gadget pc.\r\n\r\nLinux kernel adalah layer dimana inti dari operating sistem dari Android itu berada. Berisi file-file system yang mengatur sistem processing, memory, resource, drivers, dan sistem-sistem operasi android lainnya. Linux kernel yang digunakan android adalah linux kernel release 2.6.  jika anda ingin mempelajari linux kernel ini, anda dapat mengunduh linux kernel secara gratis di situs www.kernel.org.\r\n \r\n','resizable=1,scrollbars=1,directories=1,location=1,menubar=1,toolbar=1,status=1,width=620,height=450','',1324222307);

/*Table structure for table `mdl_role` */

DROP TABLE IF EXISTS `mdl_role`;

CREATE TABLE `mdl_role` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `shortname` varchar(100) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `sortorder` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_role_sor_uix` (`sortorder`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='moodle roles';

/*Data for the table `mdl_role` */

insert  into `mdl_role`(`id`,`name`,`shortname`,`description`,`sortorder`) values (1,'Administrator','admin','Administrators can usually do anything on the site, in all courses.',0),(2,'Course creator','coursecreator','Course creators can create new courses.',1),(3,'Teacher','editingteacher','Teachers can do anything within a course, including changing the activities and grading students.',2),(4,'Non-editing teacher','teacher','Non-editing teachers can teach in courses and grade students, but may not alter activities.',3),(5,'Student','student','Students generally have fewer privileges within a course.',4),(6,'Guest','guest','Guests have minimal privileges and usually can not enter text anywhere.',5),(7,'Authenticated user','user','All logged in users.',6);

/*Table structure for table `mdl_role_allow_assign` */

DROP TABLE IF EXISTS `mdl_role_allow_assign`;

CREATE TABLE `mdl_role_allow_assign` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `allowassign` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolealloassi_rolall_uix` (`roleid`,`allowassign`),
  KEY `mdl_rolealloassi_rol_ix` (`roleid`),
  KEY `mdl_rolealloassi_all_ix` (`allowassign`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='this defines what role can assign what role';

/*Data for the table `mdl_role_allow_assign` */

insert  into `mdl_role_allow_assign`(`id`,`roleid`,`allowassign`) values (1,1,1),(2,1,2),(3,1,4),(4,1,3),(5,1,5),(6,1,6),(7,2,4),(8,2,3),(9,2,5),(10,2,6),(11,3,4),(12,3,5),(13,3,6),(14,3,2),(15,3,3);

/*Table structure for table `mdl_role_allow_override` */

DROP TABLE IF EXISTS `mdl_role_allow_override`;

CREATE TABLE `mdl_role_allow_override` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `allowoverride` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolealloover_rolall_uix` (`roleid`,`allowoverride`),
  KEY `mdl_rolealloover_rol_ix` (`roleid`),
  KEY `mdl_rolealloover_all_ix` (`allowoverride`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='this defines what role can override what role';

/*Data for the table `mdl_role_allow_override` */

insert  into `mdl_role_allow_override`(`id`,`roleid`,`allowoverride`) values (1,1,1),(2,1,2),(3,1,4),(4,1,3),(5,1,5),(6,1,6),(7,1,7),(8,3,2),(9,3,3),(10,5,5),(11,3,5),(12,3,6);

/*Table structure for table `mdl_role_assignments` */

DROP TABLE IF EXISTS `mdl_role_assignments`;

CREATE TABLE `mdl_role_assignments` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `contextid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `timestart` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timeend` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  `modifierid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `enrol` varchar(20) NOT NULL DEFAULT '',
  `sortorder` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_roleassi_conroluse_uix` (`contextid`,`roleid`,`userid`),
  KEY `mdl_roleassi_sor_ix` (`sortorder`),
  KEY `mdl_roleassi_rol_ix` (`roleid`),
  KEY `mdl_roleassi_con_ix` (`contextid`),
  KEY `mdl_roleassi_use_ix` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='assigning roles to different context';

/*Data for the table `mdl_role_assignments` */

insert  into `mdl_role_assignments`(`id`,`roleid`,`contextid`,`userid`,`hidden`,`timestart`,`timeend`,`timemodified`,`modifierid`,`enrol`,`sortorder`) values (1,1,1,2,0,0,0,1311276220,0,'manual',0),(2,5,10,3,0,1311350400,0,1311433056,3,'manual',0),(3,5,42,3,0,1311523200,0,1311562643,3,'manual',0),(4,5,32,3,0,1311523200,0,1311562679,3,'manual',0),(5,5,32,4,0,1311523200,0,1311562737,4,'manual',0),(6,5,20,4,0,1311523200,0,1311562759,4,'manual',0),(7,5,10,4,0,1311523200,0,1311562789,4,'manual',0),(8,5,32,5,0,1311523200,0,1311562822,5,'manual',0),(9,5,42,5,0,1311523200,0,1311562848,5,'manual',0),(12,3,10,6,0,1312646400,0,1312652930,2,'manual',0),(13,3,20,8,0,1312646400,0,1312653633,2,'manual',0),(14,3,32,7,0,1312646400,0,1312653705,2,'manual',0),(16,3,42,9,0,1313683200,0,1313696716,2,'manual',0),(17,5,42,10,0,1313942400,0,1313962506,10,'manual',0),(18,5,32,10,0,1313942400,0,1313962534,10,'manual',0),(19,5,20,10,0,1313942400,0,1313962542,10,'manual',0),(20,5,10,10,0,1313942400,0,1313962552,10,'manual',0),(21,5,42,11,0,1314223200,0,1314294031,11,'manual',0),(22,5,32,11,0,1314223200,0,1314294077,11,'manual',0),(23,5,10,5,0,1322002800,0,1322021433,5,'manual',0),(24,5,20,3,0,1324162800,0,1324190058,3,'manual',0),(25,5,32,12,0,1365112800,0,1365141777,12,'manual',0);

/*Table structure for table `mdl_role_capabilities` */

DROP TABLE IF EXISTS `mdl_role_capabilities`;

CREATE TABLE `mdl_role_capabilities` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `roleid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `capability` varchar(255) NOT NULL DEFAULT '',
  `permission` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  `modifierid` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolecapa_rolconcap_uix` (`roleid`,`contextid`,`capability`),
  KEY `mdl_rolecapa_rol_ix` (`roleid`),
  KEY `mdl_rolecapa_con_ix` (`contextid`),
  KEY `mdl_rolecapa_mod_ix` (`modifierid`),
  KEY `mdl_rolecapa_cap_ix` (`capability`)
) ENGINE=MyISAM AUTO_INCREMENT=561 DEFAULT CHARSET=utf8 COMMENT='permission has to be signed, overriding a capability for a p';

/*Data for the table `mdl_role_capabilities` */

insert  into `mdl_role_capabilities`(`id`,`contextid`,`roleid`,`capability`,`permission`,`timemodified`,`modifierid`) values (1,1,1,'moodle/legacy:admin',1,1311276073,0),(2,1,2,'moodle/legacy:coursecreator',1,1311276073,0),(3,1,3,'moodle/legacy:editingteacher',1,1311276073,0),(4,1,4,'moodle/legacy:teacher',1,1311276073,0),(5,1,5,'moodle/legacy:student',1,1311276073,0),(6,1,6,'moodle/legacy:guest',1,1311276073,0),(7,1,7,'moodle/legacy:user',1,1311276073,0),(8,1,1,'moodle/site:doanything',1,1311276073,0),(9,1,1,'moodle/site:config',1,1311276073,0),(10,1,1,'moodle/site:readallmessages',1,1311276073,0),(11,1,3,'moodle/site:readallmessages',1,1311276073,0),(12,1,1,'moodle/site:sendmessage',1,1311276073,0),(13,1,7,'moodle/site:sendmessage',1,1311276073,0),(14,1,1,'moodle/site:approvecourse',1,1311276073,0),(15,1,3,'moodle/site:import',1,1311276073,0),(16,1,1,'moodle/site:import',1,1311276073,0),(17,1,3,'moodle/site:backup',1,1311276073,0),(18,1,1,'moodle/site:backup',1,1311276073,0),(19,1,1,'moodle/backup:userinfo',1,1311276073,0),(20,1,3,'moodle/site:restore',1,1311276073,0),(21,1,1,'moodle/site:restore',1,1311276073,0),(22,1,1,'moodle/restore:createuser',1,1311276073,0),(23,1,1,'moodle/restore:userinfo',1,1311276073,0),(24,1,2,'moodle/restore:rolldates',1,1311276073,0),(25,1,1,'moodle/restore:rolldates',1,1311276073,0),(26,1,3,'moodle/site:manageblocks',1,1311276073,0),(27,1,1,'moodle/site:manageblocks',1,1311276073,0),(28,1,4,'moodle/site:accessallgroups',1,1311276073,0),(29,1,3,'moodle/site:accessallgroups',1,1311276073,0),(30,1,1,'moodle/site:accessallgroups',1,1311276073,0),(31,1,4,'moodle/site:viewfullnames',1,1311276073,0),(32,1,3,'moodle/site:viewfullnames',1,1311276073,0),(33,1,1,'moodle/site:viewfullnames',1,1311276073,0),(34,1,4,'moodle/site:viewreports',1,1311276073,0),(35,1,3,'moodle/site:viewreports',1,1311276073,0),(36,1,1,'moodle/site:viewreports',1,1311276073,0),(37,1,3,'moodle/site:trustcontent',1,1311276073,0),(38,1,1,'moodle/site:trustcontent',1,1311276073,0),(39,1,1,'moodle/site:uploadusers',1,1311276073,0),(40,1,1,'moodle/site:langeditmaster',-1,1311276073,0),(41,1,1,'moodle/site:langeditlocal',1,1311276073,0),(42,1,1,'moodle/user:create',1,1311276073,0),(43,1,1,'moodle/user:delete',1,1311276073,0),(44,1,1,'moodle/user:update',1,1311276073,0),(45,1,6,'moodle/user:viewdetails',1,1311276073,0),(46,1,5,'moodle/user:viewdetails',1,1311276073,0),(47,1,4,'moodle/user:viewdetails',1,1311276073,0),(48,1,3,'moodle/user:viewdetails',1,1311276073,0),(49,1,1,'moodle/user:viewdetails',1,1311276073,0),(50,1,4,'moodle/user:viewhiddendetails',1,1311276073,0),(51,1,3,'moodle/user:viewhiddendetails',1,1311276073,0),(52,1,1,'moodle/user:viewhiddendetails',1,1311276073,0),(53,1,1,'moodle/user:loginas',1,1311276073,0),(54,1,3,'moodle/role:assign',1,1311276073,0),(55,1,1,'moodle/role:assign',1,1311276073,0),(56,1,1,'moodle/role:override',1,1311276073,0),(57,1,3,'moodle/role:safeoverride',1,1311276073,0),(58,1,1,'moodle/role:manage',1,1311276073,0),(59,1,4,'moodle/role:unassignself',1,1311276073,0),(60,1,3,'moodle/role:unassignself',1,1311276073,0),(61,1,2,'moodle/role:unassignself',1,1311276073,0),(62,1,1,'moodle/role:unassignself',1,1311276073,0),(63,1,4,'moodle/role:viewhiddenassigns',1,1311276073,0),(64,1,3,'moodle/role:viewhiddenassigns',1,1311276073,0),(65,1,1,'moodle/role:viewhiddenassigns',1,1311276073,0),(66,1,3,'moodle/role:switchroles',1,1311276073,0),(67,1,1,'moodle/role:switchroles',1,1311276073,0),(68,1,1,'moodle/category:manage',1,1311276073,0),(69,1,2,'moodle/category:viewhiddencategories',1,1311276073,0),(70,1,1,'moodle/category:viewhiddencategories',1,1311276073,0),(71,1,2,'moodle/course:create',1,1311276073,0),(72,1,1,'moodle/course:create',1,1311276073,0),(73,1,7,'moodle/course:request',1,1311276073,0),(74,1,1,'moodle/course:delete',1,1311276073,0),(75,1,3,'moodle/course:update',1,1311276073,0),(76,1,1,'moodle/course:update',1,1311276073,0),(77,1,6,'moodle/course:view',1,1311276073,0),(78,1,5,'moodle/course:view',1,1311276073,0),(79,1,4,'moodle/course:view',1,1311276073,0),(80,1,3,'moodle/course:view',1,1311276073,0),(81,1,4,'moodle/course:bulkmessaging',1,1311276073,0),(82,1,3,'moodle/course:bulkmessaging',1,1311276073,0),(83,1,1,'moodle/course:bulkmessaging',1,1311276073,0),(84,1,4,'moodle/course:viewhiddenuserfields',1,1311276073,0),(85,1,3,'moodle/course:viewhiddenuserfields',1,1311276073,0),(86,1,1,'moodle/course:viewhiddenuserfields',1,1311276073,0),(87,1,2,'moodle/course:viewhiddencourses',1,1311276073,0),(88,1,4,'moodle/course:viewhiddencourses',1,1311276073,0),(89,1,3,'moodle/course:viewhiddencourses',1,1311276073,0),(90,1,1,'moodle/course:viewhiddencourses',1,1311276073,0),(91,1,3,'moodle/course:visibility',1,1311276073,0),(92,1,1,'moodle/course:visibility',1,1311276073,0),(93,1,3,'moodle/course:managefiles',1,1311276073,0),(94,1,1,'moodle/course:managefiles',1,1311276073,0),(95,1,3,'moodle/course:manageactivities',1,1311276073,0),(96,1,1,'moodle/course:manageactivities',1,1311276073,0),(97,1,3,'moodle/course:managemetacourse',1,1311276073,0),(98,1,1,'moodle/course:managemetacourse',1,1311276073,0),(99,1,3,'moodle/course:activityvisibility',1,1311276073,0),(100,1,1,'moodle/course:activityvisibility',1,1311276073,0),(101,1,4,'moodle/course:viewhiddenactivities',1,1311276073,0),(102,1,3,'moodle/course:viewhiddenactivities',1,1311276073,0),(103,1,1,'moodle/course:viewhiddenactivities',1,1311276073,0),(104,1,5,'moodle/course:viewparticipants',1,1311276073,0),(105,1,4,'moodle/course:viewparticipants',1,1311276073,0),(106,1,3,'moodle/course:viewparticipants',1,1311276073,0),(107,1,1,'moodle/course:viewparticipants',1,1311276073,0),(108,1,3,'moodle/course:changefullname',1,1311276073,0),(109,1,1,'moodle/course:changefullname',1,1311276073,0),(110,1,3,'moodle/course:changeshortname',1,1311276073,0),(111,1,1,'moodle/course:changeshortname',1,1311276073,0),(112,1,3,'moodle/course:changeidnumber',1,1311276073,0),(113,1,1,'moodle/course:changeidnumber',1,1311276073,0),(114,1,3,'moodle/course:changecategory',1,1311276073,0),(115,1,1,'moodle/course:changecategory',1,1311276073,0),(116,1,3,'moodle/course:changesummary',1,1311276073,0),(117,1,1,'moodle/course:changesummary',1,1311276073,0),(118,1,1,'moodle/site:viewparticipants',1,1311276073,0),(119,1,5,'moodle/course:viewscales',1,1311276073,0),(120,1,4,'moodle/course:viewscales',1,1311276073,0),(121,1,3,'moodle/course:viewscales',1,1311276073,0),(122,1,1,'moodle/course:viewscales',1,1311276073,0),(123,1,3,'moodle/course:managescales',1,1311276073,0),(124,1,1,'moodle/course:managescales',1,1311276073,0),(125,1,3,'moodle/course:managegroups',1,1311276073,0),(126,1,1,'moodle/course:managegroups',1,1311276073,0),(127,1,3,'moodle/course:reset',1,1311276073,0),(128,1,1,'moodle/course:reset',1,1311276073,0),(129,1,6,'moodle/blog:view',1,1311276073,0),(130,1,7,'moodle/blog:view',1,1311276073,0),(131,1,5,'moodle/blog:view',1,1311276073,0),(132,1,4,'moodle/blog:view',1,1311276073,0),(133,1,3,'moodle/blog:view',1,1311276073,0),(134,1,1,'moodle/blog:view',1,1311276073,0),(135,1,7,'moodle/blog:create',1,1311276073,0),(136,1,1,'moodle/blog:create',1,1311276073,0),(137,1,4,'moodle/blog:manageentries',1,1311276073,0),(138,1,3,'moodle/blog:manageentries',1,1311276073,0),(139,1,1,'moodle/blog:manageentries',1,1311276073,0),(140,1,7,'moodle/calendar:manageownentries',1,1311276073,0),(141,1,1,'moodle/calendar:manageownentries',1,1311276073,0),(142,1,4,'moodle/calendar:managegroupentries',1,1311276073,0),(143,1,3,'moodle/calendar:managegroupentries',1,1311276073,0),(144,1,1,'moodle/calendar:managegroupentries',1,1311276073,0),(145,1,4,'moodle/calendar:manageentries',1,1311276073,0),(146,1,3,'moodle/calendar:manageentries',1,1311276073,0),(147,1,1,'moodle/calendar:manageentries',1,1311276073,0),(148,1,1,'moodle/user:editprofile',1,1311276073,0),(149,1,6,'moodle/user:editownprofile',-1000,1311276073,0),(150,1,7,'moodle/user:editownprofile',1,1311276073,0),(151,1,1,'moodle/user:editownprofile',1,1311276073,0),(152,1,6,'moodle/user:changeownpassword',-1000,1311276073,0),(153,1,7,'moodle/user:changeownpassword',1,1311276073,0),(154,1,1,'moodle/user:changeownpassword',1,1311276073,0),(155,1,5,'moodle/user:readuserposts',1,1311276073,0),(156,1,4,'moodle/user:readuserposts',1,1311276073,0),(157,1,3,'moodle/user:readuserposts',1,1311276073,0),(158,1,1,'moodle/user:readuserposts',1,1311276073,0),(159,1,5,'moodle/user:readuserblogs',1,1311276073,0),(160,1,4,'moodle/user:readuserblogs',1,1311276073,0),(161,1,3,'moodle/user:readuserblogs',1,1311276073,0),(162,1,1,'moodle/user:readuserblogs',1,1311276073,0),(163,1,3,'moodle/question:managecategory',1,1311276073,0),(164,1,1,'moodle/question:managecategory',1,1311276073,0),(165,1,3,'moodle/question:add',1,1311276073,0),(166,1,1,'moodle/question:add',1,1311276073,0),(167,1,3,'moodle/question:editmine',1,1311276073,0),(168,1,1,'moodle/question:editmine',1,1311276073,0),(169,1,3,'moodle/question:editall',1,1311276073,0),(170,1,1,'moodle/question:editall',1,1311276073,0),(171,1,3,'moodle/question:viewmine',1,1311276073,0),(172,1,1,'moodle/question:viewmine',1,1311276073,0),(173,1,3,'moodle/question:viewall',1,1311276073,0),(174,1,1,'moodle/question:viewall',1,1311276073,0),(175,1,3,'moodle/question:usemine',1,1311276073,0),(176,1,1,'moodle/question:usemine',1,1311276073,0),(177,1,3,'moodle/question:useall',1,1311276073,0),(178,1,1,'moodle/question:useall',1,1311276073,0),(179,1,3,'moodle/question:movemine',1,1311276073,0),(180,1,1,'moodle/question:movemine',1,1311276073,0),(181,1,3,'moodle/question:moveall',1,1311276073,0),(182,1,1,'moodle/question:moveall',1,1311276073,0),(183,1,1,'moodle/question:config',1,1311276073,0),(184,1,4,'moodle/site:doclinks',1,1311276073,0),(185,1,3,'moodle/site:doclinks',1,1311276073,0),(186,1,1,'moodle/site:doclinks',1,1311276073,0),(187,1,3,'moodle/course:sectionvisibility',1,1311276073,0),(188,1,1,'moodle/course:sectionvisibility',1,1311276073,0),(189,1,3,'moodle/course:useremail',1,1311276073,0),(190,1,1,'moodle/course:useremail',1,1311276073,0),(191,1,3,'moodle/course:viewhiddensections',1,1311276073,0),(192,1,1,'moodle/course:viewhiddensections',1,1311276073,0),(193,1,3,'moodle/course:setcurrentsection',1,1311276073,0),(194,1,1,'moodle/course:setcurrentsection',1,1311276073,0),(195,1,1,'moodle/site:mnetlogintoremote',1,1311276073,0),(196,1,4,'moodle/grade:viewall',1,1311276073,0),(197,1,3,'moodle/grade:viewall',1,1311276073,0),(198,1,1,'moodle/grade:viewall',1,1311276073,0),(199,1,5,'moodle/grade:view',1,1311276073,0),(200,1,4,'moodle/grade:viewhidden',1,1311276073,0),(201,1,3,'moodle/grade:viewhidden',1,1311276073,0),(202,1,1,'moodle/grade:viewhidden',1,1311276073,0),(203,1,3,'moodle/grade:import',1,1311276073,0),(204,1,1,'moodle/grade:import',1,1311276073,0),(205,1,4,'moodle/grade:export',1,1311276073,0),(206,1,3,'moodle/grade:export',1,1311276073,0),(207,1,1,'moodle/grade:export',1,1311276073,0),(208,1,3,'moodle/grade:manage',1,1311276073,0),(209,1,1,'moodle/grade:manage',1,1311276073,0),(210,1,3,'moodle/grade:edit',1,1311276073,0),(211,1,1,'moodle/grade:edit',1,1311276073,0),(212,1,3,'moodle/grade:manageoutcomes',1,1311276073,0),(213,1,1,'moodle/grade:manageoutcomes',1,1311276073,0),(214,1,3,'moodle/grade:manageletters',1,1311276073,0),(215,1,1,'moodle/grade:manageletters',1,1311276073,0),(216,1,3,'moodle/grade:hide',1,1311276073,0),(217,1,1,'moodle/grade:hide',1,1311276073,0),(218,1,3,'moodle/grade:lock',1,1311276073,0),(219,1,1,'moodle/grade:lock',1,1311276073,0),(220,1,3,'moodle/grade:unlock',1,1311276073,0),(221,1,1,'moodle/grade:unlock',1,1311276073,0),(222,1,7,'moodle/my:manageblocks',1,1311276073,0),(223,1,4,'moodle/notes:view',1,1311276073,0),(224,1,3,'moodle/notes:view',1,1311276073,0),(225,1,1,'moodle/notes:view',1,1311276073,0),(226,1,4,'moodle/notes:manage',1,1311276073,0),(227,1,3,'moodle/notes:manage',1,1311276073,0),(228,1,1,'moodle/notes:manage',1,1311276073,0),(229,1,4,'moodle/tag:manage',1,1311276073,0),(230,1,3,'moodle/tag:manage',1,1311276073,0),(231,1,1,'moodle/tag:manage',1,1311276073,0),(232,1,1,'moodle/tag:create',1,1311276073,0),(233,1,7,'moodle/tag:create',1,1311276073,0),(234,1,1,'moodle/tag:edit',1,1311276073,0),(235,1,7,'moodle/tag:edit',1,1311276073,0),(236,1,4,'moodle/tag:editblocks',1,1311276073,0),(237,1,3,'moodle/tag:editblocks',1,1311276073,0),(238,1,1,'moodle/tag:editblocks',1,1311276073,0),(239,1,6,'moodle/block:view',1,1311276073,0),(240,1,7,'moodle/block:view',1,1311276073,0),(241,1,5,'moodle/block:view',1,1311276073,0),(242,1,4,'moodle/block:view',1,1311276073,0),(243,1,3,'moodle/block:view',1,1311276073,0),(244,1,2,'moodle/block:view',1,1311276073,0),(245,1,6,'mod/assignment:view',1,1311276102,0),(246,1,5,'mod/assignment:view',1,1311276102,0),(247,1,4,'mod/assignment:view',1,1311276102,0),(248,1,3,'mod/assignment:view',1,1311276102,0),(249,1,1,'mod/assignment:view',1,1311276102,0),(250,1,5,'mod/assignment:submit',1,1311276102,0),(251,1,4,'mod/assignment:grade',1,1311276102,0),(252,1,3,'mod/assignment:grade',1,1311276102,0),(253,1,1,'mod/assignment:grade',1,1311276102,0),(254,1,5,'mod/chat:chat',1,1311276104,0),(255,1,4,'mod/chat:chat',1,1311276104,0),(256,1,3,'mod/chat:chat',1,1311276104,0),(257,1,1,'mod/chat:chat',1,1311276104,0),(258,1,5,'mod/chat:readlog',1,1311276104,0),(259,1,4,'mod/chat:readlog',1,1311276104,0),(260,1,3,'mod/chat:readlog',1,1311276104,0),(261,1,1,'mod/chat:readlog',1,1311276104,0),(262,1,4,'mod/chat:deletelog',1,1311276104,0),(263,1,3,'mod/chat:deletelog',1,1311276104,0),(264,1,1,'mod/chat:deletelog',1,1311276104,0),(265,1,5,'mod/choice:choose',1,1311276105,0),(266,1,4,'mod/choice:choose',1,1311276105,0),(267,1,3,'mod/choice:choose',1,1311276105,0),(268,1,1,'mod/choice:choose',1,1311276105,0),(269,1,4,'mod/choice:readresponses',1,1311276105,0),(270,1,3,'mod/choice:readresponses',1,1311276105,0),(271,1,1,'mod/choice:readresponses',1,1311276105,0),(272,1,4,'mod/choice:deleteresponses',1,1311276105,0),(273,1,3,'mod/choice:deleteresponses',1,1311276105,0),(274,1,1,'mod/choice:deleteresponses',1,1311276105,0),(275,1,4,'mod/choice:downloadresponses',1,1311276105,0),(276,1,3,'mod/choice:downloadresponses',1,1311276105,0),(277,1,1,'mod/choice:downloadresponses',1,1311276105,0),(278,1,6,'mod/data:viewentry',1,1311276107,0),(279,1,5,'mod/data:viewentry',1,1311276107,0),(280,1,4,'mod/data:viewentry',1,1311276107,0),(281,1,3,'mod/data:viewentry',1,1311276107,0),(282,1,1,'mod/data:viewentry',1,1311276107,0),(283,1,5,'mod/data:writeentry',1,1311276107,0),(284,1,4,'mod/data:writeentry',1,1311276107,0),(285,1,3,'mod/data:writeentry',1,1311276107,0),(286,1,1,'mod/data:writeentry',1,1311276107,0),(287,1,5,'mod/data:comment',1,1311276107,0),(288,1,4,'mod/data:comment',1,1311276107,0),(289,1,3,'mod/data:comment',1,1311276107,0),(290,1,1,'mod/data:comment',1,1311276107,0),(291,1,4,'mod/data:viewrating',1,1311276107,0),(292,1,3,'mod/data:viewrating',1,1311276107,0),(293,1,1,'mod/data:viewrating',1,1311276107,0),(294,1,4,'mod/data:rate',1,1311276107,0),(295,1,3,'mod/data:rate',1,1311276107,0),(296,1,1,'mod/data:rate',1,1311276107,0),(297,1,4,'mod/data:approve',1,1311276107,0),(298,1,3,'mod/data:approve',1,1311276107,0),(299,1,1,'mod/data:approve',1,1311276107,0),(300,1,4,'mod/data:manageentries',1,1311276107,0),(301,1,3,'mod/data:manageentries',1,1311276107,0),(302,1,1,'mod/data:manageentries',1,1311276107,0),(303,1,4,'mod/data:managecomments',1,1311276107,0),(304,1,3,'mod/data:managecomments',1,1311276107,0),(305,1,1,'mod/data:managecomments',1,1311276107,0),(306,1,3,'mod/data:managetemplates',1,1311276107,0),(307,1,1,'mod/data:managetemplates',1,1311276107,0),(308,1,4,'mod/data:viewalluserpresets',1,1311276107,0),(309,1,3,'mod/data:viewalluserpresets',1,1311276107,0),(310,1,1,'mod/data:viewalluserpresets',1,1311276107,0),(311,1,1,'mod/data:manageuserpresets',1,1311276107,0),(312,1,6,'mod/forum:viewdiscussion',1,1311276112,0),(313,1,5,'mod/forum:viewdiscussion',1,1311276112,0),(314,1,4,'mod/forum:viewdiscussion',1,1311276112,0),(315,1,3,'mod/forum:viewdiscussion',1,1311276112,0),(316,1,1,'mod/forum:viewdiscussion',1,1311276112,0),(317,1,4,'mod/forum:viewhiddentimedposts',1,1311276112,0),(318,1,3,'mod/forum:viewhiddentimedposts',1,1311276112,0),(319,1,1,'mod/forum:viewhiddentimedposts',1,1311276112,0),(320,1,5,'mod/forum:startdiscussion',1,1311276112,0),(321,1,4,'mod/forum:startdiscussion',1,1311276112,0),(322,1,3,'mod/forum:startdiscussion',1,1311276112,0),(323,1,1,'mod/forum:startdiscussion',1,1311276112,0),(324,1,5,'mod/forum:replypost',1,1311276112,0),(325,1,4,'mod/forum:replypost',1,1311276112,0),(326,1,3,'mod/forum:replypost',1,1311276112,0),(327,1,1,'mod/forum:replypost',1,1311276112,0),(328,1,4,'mod/forum:addnews',1,1311276112,0),(329,1,3,'mod/forum:addnews',1,1311276112,0),(330,1,1,'mod/forum:addnews',1,1311276112,0),(331,1,4,'mod/forum:replynews',1,1311276112,0),(332,1,3,'mod/forum:replynews',1,1311276112,0),(333,1,1,'mod/forum:replynews',1,1311276112,0),(334,1,5,'mod/forum:viewrating',1,1311276112,0),(335,1,4,'mod/forum:viewrating',1,1311276112,0),(336,1,3,'mod/forum:viewrating',1,1311276112,0),(337,1,1,'mod/forum:viewrating',1,1311276112,0),(338,1,4,'mod/forum:viewanyrating',1,1311276112,0),(339,1,3,'mod/forum:viewanyrating',1,1311276112,0),(340,1,1,'mod/forum:viewanyrating',1,1311276112,0),(341,1,4,'mod/forum:rate',1,1311276112,0),(342,1,3,'mod/forum:rate',1,1311276112,0),(343,1,1,'mod/forum:rate',1,1311276112,0),(344,1,5,'mod/forum:createattachment',1,1311276112,0),(345,1,4,'mod/forum:createattachment',1,1311276112,0),(346,1,3,'mod/forum:createattachment',1,1311276112,0),(347,1,1,'mod/forum:createattachment',1,1311276112,0),(348,1,5,'mod/forum:deleteownpost',1,1311276112,0),(349,1,4,'mod/forum:deleteownpost',1,1311276112,0),(350,1,3,'mod/forum:deleteownpost',1,1311276112,0),(351,1,1,'mod/forum:deleteownpost',1,1311276112,0),(352,1,4,'mod/forum:deleteanypost',1,1311276112,0),(353,1,3,'mod/forum:deleteanypost',1,1311276112,0),(354,1,1,'mod/forum:deleteanypost',1,1311276112,0),(355,1,4,'mod/forum:splitdiscussions',1,1311276112,0),(356,1,3,'mod/forum:splitdiscussions',1,1311276112,0),(357,1,1,'mod/forum:splitdiscussions',1,1311276112,0),(358,1,4,'mod/forum:movediscussions',1,1311276112,0),(359,1,3,'mod/forum:movediscussions',1,1311276112,0),(360,1,1,'mod/forum:movediscussions',1,1311276112,0),(361,1,4,'mod/forum:editanypost',1,1311276112,0),(362,1,3,'mod/forum:editanypost',1,1311276112,0),(363,1,1,'mod/forum:editanypost',1,1311276112,0),(364,1,4,'mod/forum:viewqandawithoutposting',1,1311276112,0),(365,1,3,'mod/forum:viewqandawithoutposting',1,1311276112,0),(366,1,1,'mod/forum:viewqandawithoutposting',1,1311276112,0),(367,1,4,'mod/forum:viewsubscribers',1,1311276112,0),(368,1,3,'mod/forum:viewsubscribers',1,1311276112,0),(369,1,1,'mod/forum:viewsubscribers',1,1311276112,0),(370,1,4,'mod/forum:managesubscriptions',1,1311276112,0),(371,1,3,'mod/forum:managesubscriptions',1,1311276112,0),(372,1,1,'mod/forum:managesubscriptions',1,1311276112,0),(373,1,4,'mod/forum:initialsubscriptions',1,1311276112,0),(374,1,3,'mod/forum:initialsubscriptions',1,1311276112,0),(375,1,5,'mod/forum:initialsubscriptions',1,1311276112,0),(376,1,5,'mod/glossary:write',1,1311276115,0),(377,1,4,'mod/glossary:write',1,1311276115,0),(378,1,3,'mod/glossary:write',1,1311276115,0),(379,1,1,'mod/glossary:write',1,1311276115,0),(380,1,4,'mod/glossary:manageentries',1,1311276115,0),(381,1,3,'mod/glossary:manageentries',1,1311276115,0),(382,1,1,'mod/glossary:manageentries',1,1311276115,0),(383,1,4,'mod/glossary:managecategories',1,1311276115,0),(384,1,3,'mod/glossary:managecategories',1,1311276115,0),(385,1,1,'mod/glossary:managecategories',1,1311276115,0),(386,1,5,'mod/glossary:comment',1,1311276115,0),(387,1,4,'mod/glossary:comment',1,1311276115,0),(388,1,3,'mod/glossary:comment',1,1311276115,0),(389,1,1,'mod/glossary:comment',1,1311276115,0),(390,1,4,'mod/glossary:managecomments',1,1311276115,0),(391,1,3,'mod/glossary:managecomments',1,1311276115,0),(392,1,1,'mod/glossary:managecomments',1,1311276115,0),(393,1,4,'mod/glossary:import',1,1311276115,0),(394,1,3,'mod/glossary:import',1,1311276115,0),(395,1,1,'mod/glossary:import',1,1311276115,0),(396,1,4,'mod/glossary:export',1,1311276115,0),(397,1,3,'mod/glossary:export',1,1311276115,0),(398,1,1,'mod/glossary:export',1,1311276115,0),(399,1,4,'mod/glossary:approve',1,1311276115,0),(400,1,3,'mod/glossary:approve',1,1311276115,0),(401,1,1,'mod/glossary:approve',1,1311276115,0),(402,1,4,'mod/glossary:rate',1,1311276115,0),(403,1,3,'mod/glossary:rate',1,1311276115,0),(404,1,1,'mod/glossary:rate',1,1311276115,0),(405,1,4,'mod/glossary:viewrating',1,1311276115,0),(406,1,3,'mod/glossary:viewrating',1,1311276115,0),(407,1,1,'mod/glossary:viewrating',1,1311276115,0),(408,1,5,'mod/hotpot:attempt',1,1311276118,0),(409,1,4,'mod/hotpot:attempt',1,1311276118,0),(410,1,3,'mod/hotpot:attempt',1,1311276118,0),(411,1,1,'mod/hotpot:attempt',1,1311276118,0),(412,1,4,'mod/hotpot:viewreport',1,1311276118,0),(413,1,3,'mod/hotpot:viewreport',1,1311276118,0),(414,1,1,'mod/hotpot:viewreport',1,1311276118,0),(415,1,4,'mod/hotpot:grade',1,1311276118,0),(416,1,3,'mod/hotpot:grade',1,1311276118,0),(417,1,1,'mod/hotpot:grade',1,1311276118,0),(418,1,3,'mod/hotpot:deleteattempt',1,1311276118,0),(419,1,1,'mod/hotpot:deleteattempt',1,1311276118,0),(420,1,5,'mod/lams:participate',1,1311276120,0),(421,1,4,'mod/lams:manage',1,1311276120,0),(422,1,3,'mod/lams:manage',1,1311276120,0),(423,1,1,'mod/lams:manage',1,1311276120,0),(424,1,3,'mod/lesson:edit',1,1311276124,0),(425,1,1,'mod/lesson:edit',1,1311276124,0),(426,1,4,'mod/lesson:manage',1,1311276124,0),(427,1,3,'mod/lesson:manage',1,1311276124,0),(428,1,1,'mod/lesson:manage',1,1311276124,0),(429,1,6,'mod/quiz:view',1,1311276131,0),(430,1,5,'mod/quiz:view',1,1311276131,0),(431,1,4,'mod/quiz:view',1,1311276131,0),(432,1,3,'mod/quiz:view',1,1311276131,0),(433,1,1,'mod/quiz:view',1,1311276131,0),(434,1,5,'mod/quiz:attempt',1,1311276131,0),(435,1,5,'mod/quiz:reviewmyattempts',1,1311276131,0),(436,1,3,'mod/quiz:manage',1,1311276131,0),(437,1,1,'mod/quiz:manage',1,1311276131,0),(438,1,4,'mod/quiz:preview',1,1311276131,0),(439,1,3,'mod/quiz:preview',1,1311276131,0),(440,1,1,'mod/quiz:preview',1,1311276131,0),(441,1,4,'mod/quiz:grade',1,1311276131,0),(442,1,3,'mod/quiz:grade',1,1311276131,0),(443,1,1,'mod/quiz:grade',1,1311276131,0),(444,1,4,'mod/quiz:viewreports',1,1311276131,0),(445,1,3,'mod/quiz:viewreports',1,1311276131,0),(446,1,1,'mod/quiz:viewreports',1,1311276131,0),(447,1,3,'mod/quiz:deleteattempts',1,1311276131,0),(448,1,1,'mod/quiz:deleteattempts',1,1311276131,0),(449,1,4,'mod/scorm:viewreport',1,1311276137,0),(450,1,3,'mod/scorm:viewreport',1,1311276137,0),(451,1,1,'mod/scorm:viewreport',1,1311276137,0),(452,1,5,'mod/scorm:skipview',1,1311276137,0),(453,1,5,'mod/scorm:savetrack',1,1311276137,0),(454,1,4,'mod/scorm:savetrack',1,1311276137,0),(455,1,3,'mod/scorm:savetrack',1,1311276137,0),(456,1,1,'mod/scorm:savetrack',1,1311276137,0),(457,1,5,'mod/scorm:viewscores',1,1311276137,0),(458,1,4,'mod/scorm:viewscores',1,1311276137,0),(459,1,3,'mod/scorm:viewscores',1,1311276137,0),(460,1,1,'mod/scorm:viewscores',1,1311276137,0),(461,1,4,'mod/scorm:deleteresponses',1,1311276137,0),(462,1,3,'mod/scorm:deleteresponses',1,1311276137,0),(463,1,1,'mod/scorm:deleteresponses',1,1311276137,0),(464,1,5,'mod/survey:participate',1,1311276139,0),(465,1,4,'mod/survey:participate',1,1311276139,0),(466,1,3,'mod/survey:participate',1,1311276139,0),(467,1,1,'mod/survey:participate',1,1311276139,0),(468,1,4,'mod/survey:readresponses',1,1311276139,0),(469,1,3,'mod/survey:readresponses',1,1311276139,0),(470,1,1,'mod/survey:readresponses',1,1311276139,0),(471,1,4,'mod/survey:download',1,1311276139,0),(472,1,3,'mod/survey:download',1,1311276139,0),(473,1,1,'mod/survey:download',1,1311276139,0),(474,1,5,'mod/wiki:participate',1,1311276141,0),(475,1,4,'mod/wiki:participate',1,1311276141,0),(476,1,3,'mod/wiki:participate',1,1311276141,0),(477,1,1,'mod/wiki:participate',1,1311276141,0),(478,1,4,'mod/wiki:manage',1,1311276141,0),(479,1,3,'mod/wiki:manage',1,1311276141,0),(480,1,1,'mod/wiki:manage',1,1311276141,0),(481,1,4,'mod/wiki:overridelock',1,1311276141,0),(482,1,3,'mod/wiki:overridelock',1,1311276141,0),(483,1,1,'mod/wiki:overridelock',1,1311276141,0),(484,1,5,'mod/workshop:participate',1,1311276145,0),(485,1,4,'mod/workshop:manage',1,1311276145,0),(486,1,3,'mod/workshop:manage',1,1311276145,0),(487,1,1,'mod/workshop:manage',1,1311276145,0),(488,1,7,'block/online_users:viewlist',1,1311276181,0),(489,1,6,'block/online_users:viewlist',1,1311276181,0),(490,1,5,'block/online_users:viewlist',1,1311276181,0),(491,1,4,'block/online_users:viewlist',1,1311276181,0),(492,1,3,'block/online_users:viewlist',1,1311276181,0),(493,1,1,'block/online_users:viewlist',1,1311276181,0),(494,1,4,'block/rss_client:createprivatefeeds',1,1311276182,0),(495,1,3,'block/rss_client:createprivatefeeds',1,1311276182,0),(496,1,1,'block/rss_client:createprivatefeeds',1,1311276182,0),(497,1,3,'block/rss_client:createsharedfeeds',1,1311276182,0),(498,1,1,'block/rss_client:createsharedfeeds',1,1311276182,0),(499,1,4,'block/rss_client:manageownfeeds',1,1311276182,0),(500,1,3,'block/rss_client:manageownfeeds',1,1311276182,0),(501,1,1,'block/rss_client:manageownfeeds',1,1311276182,0),(502,1,1,'block/rss_client:manageanyfeeds',1,1311276182,0),(503,1,1,'enrol/authorize:managepayments',1,1311276188,0),(504,1,1,'enrol/authorize:uploadcsv',1,1311276188,0),(505,1,4,'gradeexport/ods:view',1,1311276193,0),(506,1,3,'gradeexport/ods:view',1,1311276193,0),(507,1,1,'gradeexport/ods:view',1,1311276193,0),(508,1,1,'gradeexport/ods:publish',1,1311276193,0),(509,1,4,'gradeexport/txt:view',1,1311276193,0),(510,1,3,'gradeexport/txt:view',1,1311276193,0),(511,1,1,'gradeexport/txt:view',1,1311276193,0),(512,1,1,'gradeexport/txt:publish',1,1311276193,0),(513,1,4,'gradeexport/xls:view',1,1311276193,0),(514,1,3,'gradeexport/xls:view',1,1311276193,0),(515,1,1,'gradeexport/xls:view',1,1311276193,0),(516,1,1,'gradeexport/xls:publish',1,1311276193,0),(517,1,4,'gradeexport/xml:view',1,1311276193,0),(518,1,3,'gradeexport/xml:view',1,1311276193,0),(519,1,1,'gradeexport/xml:view',1,1311276193,0),(520,1,1,'gradeexport/xml:publish',1,1311276193,0),(521,1,3,'gradeimport/csv:view',1,1311276197,0),(522,1,1,'gradeimport/csv:view',1,1311276197,0),(523,1,3,'gradeimport/xml:view',1,1311276197,0),(524,1,1,'gradeimport/xml:view',1,1311276197,0),(525,1,1,'gradeimport/xml:publish',1,1311276197,0),(526,1,4,'gradereport/grader:view',1,1311276201,0),(527,1,3,'gradereport/grader:view',1,1311276201,0),(528,1,1,'gradereport/grader:view',1,1311276201,0),(529,1,4,'gradereport/outcomes:view',1,1311276202,0),(530,1,3,'gradereport/outcomes:view',1,1311276202,0),(531,1,1,'gradereport/outcomes:view',1,1311276202,0),(532,1,5,'gradereport/overview:view',1,1311276202,0),(533,1,1,'gradereport/overview:view',1,1311276202,0),(534,1,5,'gradereport/user:view',1,1311276202,0),(535,1,4,'gradereport/user:view',1,1311276202,0),(536,1,3,'gradereport/user:view',1,1311276202,0),(537,1,1,'gradereport/user:view',1,1311276202,0),(538,1,4,'coursereport/log:view',1,1311276207,0),(539,1,3,'coursereport/log:view',1,1311276207,0),(540,1,1,'coursereport/log:view',1,1311276207,0),(541,1,4,'coursereport/log:viewlive',1,1311276207,0),(542,1,3,'coursereport/log:viewlive',1,1311276207,0),(543,1,1,'coursereport/log:viewlive',1,1311276207,0),(544,1,4,'coursereport/log:viewtoday',1,1311276207,0),(545,1,3,'coursereport/log:viewtoday',1,1311276207,0),(546,1,1,'coursereport/log:viewtoday',1,1311276207,0),(547,1,4,'coursereport/outline:view',1,1311276207,0),(548,1,3,'coursereport/outline:view',1,1311276207,0),(549,1,1,'coursereport/outline:view',1,1311276207,0),(550,1,4,'coursereport/participation:view',1,1311276207,0),(551,1,3,'coursereport/participation:view',1,1311276207,0),(552,1,1,'coursereport/participation:view',1,1311276207,0),(553,1,4,'coursereport/stats:view',1,1311276207,0),(554,1,3,'coursereport/stats:view',1,1311276207,0),(555,1,1,'coursereport/stats:view',1,1311276207,0),(556,1,4,'report/courseoverview:view',1,1311276211,0),(557,1,3,'report/courseoverview:view',1,1311276211,0),(558,1,1,'report/courseoverview:view',1,1311276211,0),(559,1,1,'report/security:view',1,1311276211,0),(560,1,1,'report/unittest:view',1,1311276211,0);

/*Table structure for table `mdl_role_names` */

DROP TABLE IF EXISTS `mdl_role_names`;

CREATE TABLE `mdl_role_names` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `contextid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolename_rolcon_uix` (`roleid`,`contextid`),
  KEY `mdl_rolename_rol_ix` (`roleid`),
  KEY `mdl_rolename_con_ix` (`contextid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='role names in native strings';

/*Data for the table `mdl_role_names` */

/*Table structure for table `mdl_role_sortorder` */

DROP TABLE IF EXISTS `mdl_role_sortorder`;

CREATE TABLE `mdl_role_sortorder` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) unsigned NOT NULL,
  `roleid` bigint(10) unsigned NOT NULL,
  `contextid` bigint(10) unsigned NOT NULL,
  `sortoder` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolesort_userolcon_uix` (`userid`,`roleid`,`contextid`),
  KEY `mdl_rolesort_use_ix` (`userid`),
  KEY `mdl_rolesort_rol_ix` (`roleid`),
  KEY `mdl_rolesort_con_ix` (`contextid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='sort order of course managers in a course';

/*Data for the table `mdl_role_sortorder` */

/*Table structure for table `mdl_scale` */

DROP TABLE IF EXISTS `mdl_scale`;

CREATE TABLE `mdl_scale` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `scale` text NOT NULL,
  `description` text NOT NULL,
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_scal_cou_ix` (`courseid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Defines grading scales';

/*Data for the table `mdl_scale` */

insert  into `mdl_scale`(`id`,`courseid`,`userid`,`name`,`scale`,`description`,`timemodified`) values (1,0,0,'Separate and Connected ways of knowing','Mostly Separate Knowing,Separate and Connected,Mostly Connected Knowing','<h1> Ratings </h1>\n\n<p>Individual posts can be rated using a scale based on the theory of <strong>separate and connected knowing</strong>.\n\nThis theory may help you to look at human interactions in a new way. It describes two different ways that we can evaluate and learn about the things we see and hear.\n\nAlthough each of us may use these two methods in different amounts at different times, it may be useful to imagine two people as examples, one who is a mostly separate knower (Jim) and the other a mostly connected knower (Mary).\n</p>\n\n<ul>\n\n  <li>Jim likes to remain as \'objective\' as possible without including his feelings and emotions. When in a discussion with other people who may have different ideas, he likes to defend his own ideas, using logic to find holes in his opponent\'s ideas. He is critical of new ideas unless they are proven facts from reputable sources such as textbooks, respected teachers or his own direct experience. Jim is a very <strong>separate knower</strong>.\n\n  </li>\n\n  <li>Mary is more sensitive to other people. She is skilled at empathy and tends to listen and ask questions until she feels she can connect and &quot;understand things from their point of view&quot;. She learns by trying to share the experiences that led to the knowledge she finds in other people. When talking to others, she avoids confrontation and will often try to help the other person if she can see a way to do so, using logical suggestions. Mary is a very <strong>connected knower</strong>.</li>\n\n</ul>\n\n<p>Did you notice in these examples that the separate knower is male and the connected knower is female? Some studies have shown that statistically this tends to be the case, however individual people can be anywhere in the spectrum between these two extremes.\n\nFor a collaborative and effective group of learners it may be best if everyone were able to use BOTH ways of knowing.\n\nIn a particular situation like an online forum, a single post by a person may exhibit either of these characteristics, or even both. Someone who is generally very connected may post a very separate-sounding message, and vice versa. The purpose of rating each post using this scale is to:\n</p>\n\n<ol style=\"list-style:lower-alpha\">\n\n  <li> help you think about these issues when reading other posts </li>\n\n  <li> provide feedback to each author on how they are being seen by others </li>\n\n</ol>\n\nThe results are not used towards student assessment in any way, they are just to help improve communication and learning.\n\n<hr />\n<p>\nIn case you\'re interested, here are some references to papers by the authors who originally developed these ideas:\n</p>\n\n<ul>\n  <li>Belenky, M.F., Clinchy, B.M., Goldberger, N.R., &amp; Tarule, J.M. (1986). \n\n    Women\'s ways of knowing: the development of self, voice, and mind. New York, \n\n    NY: Basic Books.</li>\n\n  <li>Clinchy, B.M. (1989a). The development of thoughtfulness in college women: \n\n    Integrating reason and care. American Behavioural Scientist, 32(6), 647-657.</li>\n\n  <li>Clinchy, B.M. (1989b). On critical thinking &amp; connected knowing. Liberal \n\n    education, 75(5), 14-19.</li>\n\n  <li>Clinchy, B.M. (1996). Connected and separate knowing; Toward a marriage \n\n    of two minds. In N.R. Goldberger, Tarule, J.M., Clinchy, B.M. &amp;</li>\n\n  <li>Belenky, M.F. (Eds.), Knowledge, Difference, and Power; Essays inspired \n\n    by &#8220;Women&#8217;s Ways of Knowing&#8221; (pp. 205-247). New York, NY: \n\n    Basic Books.</li>\n\n  <li>Galotti, K. M., Clinchy, B. M., Ainsworth, K., Lavin, B., &amp; Mansfield, \n\n    A. F. (1999). A New Way of Assessing Ways of Knowing: The Attitudes Towards \n\n    Thinking and Learning Survey (ATTLS). Sex Roles, 40(9/10), 745-766.</li>\n\n  <li>Galotti, K. M., Reimer, R. L., &amp; Drebus, D. W. (2001). Ways of knowing \n\n    as learning styles: Learning MAGIC with a partner. Sex Roles, 44(7/8), 419-436. \n\n  </li>\n\n</ul>\n\n',1311450627);

/*Table structure for table `mdl_scale_history` */

DROP TABLE IF EXISTS `mdl_scale_history`;

CREATE TABLE `mdl_scale_history` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` bigint(10) unsigned NOT NULL DEFAULT '0',
  `oldid` bigint(10) unsigned NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `timemodified` bigint(10) unsigned DEFAULT NULL,
  `loggeduser` bigint(10) unsigned DEFAULT NULL,
  `courseid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `scale` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_scalhist_act_ix` (`action`),
  KEY `mdl_scalhist_old_ix` (`oldid`),
  KEY `mdl_scalhist_cou_ix` (`courseid`),
  KEY `mdl_scalhist_log_ix` (`loggeduser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='History table';

/*Data for the table `mdl_scale_history` */

/*Table structure for table `mdl_scorm` */

DROP TABLE IF EXISTS `mdl_scorm`;

CREATE TABLE `mdl_scorm` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `reference` varchar(255) NOT NULL DEFAULT '',
  `summary` text NOT NULL,
  `version` varchar(9) NOT NULL DEFAULT '',
  `maxgrade` double NOT NULL DEFAULT '0',
  `grademethod` tinyint(2) NOT NULL DEFAULT '0',
  `whatgrade` bigint(10) NOT NULL DEFAULT '0',
  `maxattempt` bigint(10) NOT NULL DEFAULT '1',
  `updatefreq` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `md5hash` varchar(32) NOT NULL DEFAULT '',
  `launch` bigint(10) unsigned NOT NULL DEFAULT '0',
  `skipview` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hidebrowse` tinyint(1) NOT NULL DEFAULT '0',
  `hidetoc` tinyint(1) NOT NULL DEFAULT '0',
  `hidenav` tinyint(1) NOT NULL DEFAULT '0',
  `auto` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `popup` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `options` varchar(255) NOT NULL DEFAULT '',
  `width` bigint(10) unsigned NOT NULL DEFAULT '100',
  `height` bigint(10) unsigned NOT NULL DEFAULT '600',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_scor_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='each table is one SCORM module and its configuration';

/*Data for the table `mdl_scorm` */

/*Table structure for table `mdl_scorm_scoes` */

DROP TABLE IF EXISTS `mdl_scorm_scoes`;

CREATE TABLE `mdl_scorm_scoes` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `scorm` bigint(10) unsigned NOT NULL DEFAULT '0',
  `manifest` varchar(255) NOT NULL DEFAULT '',
  `organization` varchar(255) NOT NULL DEFAULT '',
  `parent` varchar(255) NOT NULL DEFAULT '',
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `launch` varchar(255) NOT NULL DEFAULT '',
  `scormtype` varchar(5) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_scorscoe_sco_ix` (`scorm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='each SCO part of the SCORM module';

/*Data for the table `mdl_scorm_scoes` */

/*Table structure for table `mdl_scorm_scoes_data` */

DROP TABLE IF EXISTS `mdl_scorm_scoes_data`;

CREATE TABLE `mdl_scorm_scoes_data` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_scorscoedata_sco_ix` (`scoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains variable data get from packages';

/*Data for the table `mdl_scorm_scoes_data` */

/*Table structure for table `mdl_scorm_scoes_track` */

DROP TABLE IF EXISTS `mdl_scorm_scoes_track`;

CREATE TABLE `mdl_scorm_scoes_track` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `scormid` bigint(10) NOT NULL DEFAULT '0',
  `scoid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `attempt` bigint(10) unsigned NOT NULL DEFAULT '1',
  `element` varchar(255) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorscoetrac_usescosco_uix` (`userid`,`scormid`,`scoid`,`attempt`,`element`),
  KEY `mdl_scorscoetrac_use_ix` (`userid`),
  KEY `mdl_scorscoetrac_ele_ix` (`element`),
  KEY `mdl_scorscoetrac_sco_ix` (`scormid`),
  KEY `mdl_scorscoetrac_sco2_ix` (`scoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='to track SCOes';

/*Data for the table `mdl_scorm_scoes_track` */

/*Table structure for table `mdl_scorm_seq_mapinfo` */

DROP TABLE IF EXISTS `mdl_scorm_seq_mapinfo`;

CREATE TABLE `mdl_scorm_seq_mapinfo` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `objectiveid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `targetobjectiveid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `readsatisfiedstatus` tinyint(1) NOT NULL DEFAULT '1',
  `readnormalizedmeasure` tinyint(1) NOT NULL DEFAULT '1',
  `writesatisfiedstatus` tinyint(1) NOT NULL DEFAULT '0',
  `writenormalizedmeasure` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqmapi_scoidobj_uix` (`scoid`,`id`,`objectiveid`),
  KEY `mdl_scorseqmapi_sco_ix` (`scoid`),
  KEY `mdl_scorseqmapi_obj_ix` (`objectiveid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SCORM2004 objective mapinfo description';

/*Data for the table `mdl_scorm_seq_mapinfo` */

/*Table structure for table `mdl_scorm_seq_objective` */

DROP TABLE IF EXISTS `mdl_scorm_seq_objective`;

CREATE TABLE `mdl_scorm_seq_objective` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `primaryobj` tinyint(1) NOT NULL DEFAULT '0',
  `objectiveid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `satisfiedbymeasure` tinyint(1) NOT NULL DEFAULT '1',
  `minnormalizedmeasure` float(11,4) unsigned NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqobje_scoid_uix` (`scoid`,`id`),
  KEY `mdl_scorseqobje_sco_ix` (`scoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SCORM2004 objective description';

/*Data for the table `mdl_scorm_seq_objective` */

/*Table structure for table `mdl_scorm_seq_rolluprule` */

DROP TABLE IF EXISTS `mdl_scorm_seq_rolluprule`;

CREATE TABLE `mdl_scorm_seq_rolluprule` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `childactivityset` varchar(15) NOT NULL DEFAULT '',
  `minimumcount` bigint(10) unsigned NOT NULL DEFAULT '0',
  `minimumpercent` float(11,4) unsigned NOT NULL DEFAULT '0.0000',
  `conditioncombination` varchar(3) NOT NULL DEFAULT 'all',
  `action` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqroll_scoid_uix` (`scoid`,`id`),
  KEY `mdl_scorseqroll_sco_ix` (`scoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SCORM2004 sequencing rule';

/*Data for the table `mdl_scorm_seq_rolluprule` */

/*Table structure for table `mdl_scorm_seq_rolluprulecond` */

DROP TABLE IF EXISTS `mdl_scorm_seq_rolluprulecond`;

CREATE TABLE `mdl_scorm_seq_rolluprulecond` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `rollupruleid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `operator` varchar(5) NOT NULL DEFAULT 'noOp',
  `cond` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqroll_scorolid_uix` (`scoid`,`rollupruleid`,`id`),
  KEY `mdl_scorseqroll_sco2_ix` (`scoid`),
  KEY `mdl_scorseqroll_rol_ix` (`rollupruleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SCORM2004 sequencing rule';

/*Data for the table `mdl_scorm_seq_rolluprulecond` */

/*Table structure for table `mdl_scorm_seq_rulecond` */

DROP TABLE IF EXISTS `mdl_scorm_seq_rulecond`;

CREATE TABLE `mdl_scorm_seq_rulecond` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `ruleconditionsid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `refrencedobjective` varchar(255) NOT NULL DEFAULT '',
  `measurethreshold` float(11,4) NOT NULL DEFAULT '0.0000',
  `operator` varchar(5) NOT NULL DEFAULT 'noOp',
  `cond` varchar(30) NOT NULL DEFAULT 'always',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqrule_idscorul_uix` (`id`,`scoid`,`ruleconditionsid`),
  KEY `mdl_scorseqrule_sco2_ix` (`scoid`),
  KEY `mdl_scorseqrule_rul_ix` (`ruleconditionsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SCORM2004 rule condition';

/*Data for the table `mdl_scorm_seq_rulecond` */

/*Table structure for table `mdl_scorm_seq_ruleconds` */

DROP TABLE IF EXISTS `mdl_scorm_seq_ruleconds`;

CREATE TABLE `mdl_scorm_seq_ruleconds` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `conditioncombination` varchar(3) NOT NULL DEFAULT 'all',
  `ruletype` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `action` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqrule_scoid_uix` (`scoid`,`id`),
  KEY `mdl_scorseqrule_sco_ix` (`scoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SCORM2004 rule conditions';

/*Data for the table `mdl_scorm_seq_ruleconds` */

/*Table structure for table `mdl_sessions2` */

DROP TABLE IF EXISTS `mdl_sessions2`;

CREATE TABLE `mdl_sessions2` (
  `sesskey` varchar(64) NOT NULL DEFAULT '',
  `expiry` datetime NOT NULL,
  `expireref` varchar(250) DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `sessdata` longtext,
  PRIMARY KEY (`sesskey`),
  KEY `mdl_sess_exp_ix` (`expiry`),
  KEY `mdl_sess_exp2_ix` (`expireref`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Optional database session storage in new format, not used by';

/*Data for the table `mdl_sessions2` */

/*Table structure for table `mdl_stats_daily` */

DROP TABLE IF EXISTS `mdl_stats_daily`;

CREATE TABLE `mdl_stats_daily` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timeend` bigint(10) unsigned NOT NULL DEFAULT '0',
  `roleid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `stattype` enum('enrolments','activity','logins') NOT NULL DEFAULT 'activity',
  `stat1` bigint(10) unsigned NOT NULL DEFAULT '0',
  `stat2` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_statdail_cou_ix` (`courseid`),
  KEY `mdl_statdail_tim_ix` (`timeend`),
  KEY `mdl_statdail_rol_ix` (`roleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='to accumulate daily stats';

/*Data for the table `mdl_stats_daily` */

/*Table structure for table `mdl_stats_monthly` */

DROP TABLE IF EXISTS `mdl_stats_monthly`;

CREATE TABLE `mdl_stats_monthly` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timeend` bigint(10) unsigned NOT NULL DEFAULT '0',
  `roleid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `stattype` enum('enrolments','activity','logins') NOT NULL DEFAULT 'activity',
  `stat1` bigint(10) unsigned NOT NULL DEFAULT '0',
  `stat2` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_statmont_cou_ix` (`courseid`),
  KEY `mdl_statmont_tim_ix` (`timeend`),
  KEY `mdl_statmont_rol_ix` (`roleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='To accumulate monthly stats';

/*Data for the table `mdl_stats_monthly` */

/*Table structure for table `mdl_stats_user_daily` */

DROP TABLE IF EXISTS `mdl_stats_user_daily`;

CREATE TABLE `mdl_stats_user_daily` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `roleid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timeend` bigint(10) unsigned NOT NULL DEFAULT '0',
  `statsreads` bigint(10) unsigned NOT NULL DEFAULT '0',
  `statswrites` bigint(10) unsigned NOT NULL DEFAULT '0',
  `stattype` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_statuserdail_cou_ix` (`courseid`),
  KEY `mdl_statuserdail_use_ix` (`userid`),
  KEY `mdl_statuserdail_rol_ix` (`roleid`),
  KEY `mdl_statuserdail_tim_ix` (`timeend`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='To accumulate daily stats per course/user';

/*Data for the table `mdl_stats_user_daily` */

/*Table structure for table `mdl_stats_user_monthly` */

DROP TABLE IF EXISTS `mdl_stats_user_monthly`;

CREATE TABLE `mdl_stats_user_monthly` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `roleid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timeend` bigint(10) unsigned NOT NULL DEFAULT '0',
  `statsreads` bigint(10) unsigned NOT NULL DEFAULT '0',
  `statswrites` bigint(10) unsigned NOT NULL DEFAULT '0',
  `stattype` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_statusermont_cou_ix` (`courseid`),
  KEY `mdl_statusermont_use_ix` (`userid`),
  KEY `mdl_statusermont_rol_ix` (`roleid`),
  KEY `mdl_statusermont_tim_ix` (`timeend`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='To accumulate monthly stats per course/user';

/*Data for the table `mdl_stats_user_monthly` */

/*Table structure for table `mdl_stats_user_weekly` */

DROP TABLE IF EXISTS `mdl_stats_user_weekly`;

CREATE TABLE `mdl_stats_user_weekly` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `roleid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timeend` bigint(10) unsigned NOT NULL DEFAULT '0',
  `statsreads` bigint(10) unsigned NOT NULL DEFAULT '0',
  `statswrites` bigint(10) unsigned NOT NULL DEFAULT '0',
  `stattype` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_statuserweek_cou_ix` (`courseid`),
  KEY `mdl_statuserweek_use_ix` (`userid`),
  KEY `mdl_statuserweek_rol_ix` (`roleid`),
  KEY `mdl_statuserweek_tim_ix` (`timeend`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='To accumulate weekly stats per course/user';

/*Data for the table `mdl_stats_user_weekly` */

/*Table structure for table `mdl_stats_weekly` */

DROP TABLE IF EXISTS `mdl_stats_weekly`;

CREATE TABLE `mdl_stats_weekly` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timeend` bigint(10) unsigned NOT NULL DEFAULT '0',
  `roleid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `stattype` enum('enrolments','activity','logins') NOT NULL DEFAULT 'activity',
  `stat1` bigint(10) unsigned NOT NULL DEFAULT '0',
  `stat2` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_statweek_cou_ix` (`courseid`),
  KEY `mdl_statweek_tim_ix` (`timeend`),
  KEY `mdl_statweek_rol_ix` (`roleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='To accumulate weekly stats';

/*Data for the table `mdl_stats_weekly` */

/*Table structure for table `mdl_survey` */

DROP TABLE IF EXISTS `mdl_survey`;

CREATE TABLE `mdl_survey` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `template` bigint(10) unsigned NOT NULL DEFAULT '0',
  `days` mediumint(6) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `questions` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_surv_cou_ix` (`course`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Each record is one SURVEY module with its configuration';

/*Data for the table `mdl_survey` */

insert  into `mdl_survey`(`id`,`course`,`template`,`days`,`timecreated`,`timemodified`,`name`,`intro`,`questions`) values (1,0,0,0,985017600,985017600,'collesaname','collesaintro','25,26,27,28,29,30,43,44'),(2,0,0,0,985017600,985017600,'collespname','collespintro','31,32,33,34,35,36,43,44'),(3,0,0,0,985017600,985017600,'collesapname','collesapintro','37,38,39,40,41,42,43,44'),(4,0,0,0,985017600,985017600,'attlsname','attlsintro','65,67,68'),(5,0,0,0,985017600,985017600,'ciqname','ciqintro','69,70,71,72,73');

/*Table structure for table `mdl_survey_analysis` */

DROP TABLE IF EXISTS `mdl_survey_analysis`;

CREATE TABLE `mdl_survey_analysis` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `survey` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `notes` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_survanal_use_ix` (`userid`),
  KEY `mdl_survanal_sur_ix` (`survey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='text about each survey submission';

/*Data for the table `mdl_survey_analysis` */

/*Table structure for table `mdl_survey_answers` */

DROP TABLE IF EXISTS `mdl_survey_answers`;

CREATE TABLE `mdl_survey_answers` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `survey` bigint(10) unsigned NOT NULL DEFAULT '0',
  `question` bigint(10) unsigned NOT NULL DEFAULT '0',
  `time` bigint(10) unsigned NOT NULL DEFAULT '0',
  `answer1` text NOT NULL,
  `answer2` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_survansw_use_ix` (`userid`),
  KEY `mdl_survansw_sur_ix` (`survey`),
  KEY `mdl_survansw_que_ix` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='the answers to each questions filled by the users';

/*Data for the table `mdl_survey_answers` */

/*Table structure for table `mdl_survey_questions` */

DROP TABLE IF EXISTS `mdl_survey_questions`;

CREATE TABLE `mdl_survey_questions` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL DEFAULT '',
  `shorttext` varchar(30) NOT NULL DEFAULT '',
  `multi` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(50) NOT NULL DEFAULT '',
  `type` smallint(3) NOT NULL DEFAULT '0',
  `options` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='the questions conforming one survey';

/*Data for the table `mdl_survey_questions` */

insert  into `mdl_survey_questions`(`id`,`text`,`shorttext`,`multi`,`intro`,`type`,`options`) values (1,'colles1','colles1short','','',1,'scaletimes5'),(2,'colles2','colles2short','','',1,'scaletimes5'),(3,'colles3','colles3short','','',1,'scaletimes5'),(4,'colles4','colles4short','','',1,'scaletimes5'),(5,'colles5','colles5short','','',1,'scaletimes5'),(6,'colles6','colles6short','','',1,'scaletimes5'),(7,'colles7','colles7short','','',1,'scaletimes5'),(8,'colles8','colles8short','','',1,'scaletimes5'),(9,'colles9','colles9short','','',1,'scaletimes5'),(10,'colles10','colles10short','','',1,'scaletimes5'),(11,'colles11','colles11short','','',1,'scaletimes5'),(12,'colles12','colles12short','','',1,'scaletimes5'),(13,'colles13','colles13short','','',1,'scaletimes5'),(14,'colles14','colles14short','','',1,'scaletimes5'),(15,'colles15','colles15short','','',1,'scaletimes5'),(16,'colles16','colles16short','','',1,'scaletimes5'),(17,'colles17','colles17short','','',1,'scaletimes5'),(18,'colles18','colles18short','','',1,'scaletimes5'),(19,'colles19','colles19short','','',1,'scaletimes5'),(20,'colles20','colles20short','','',1,'scaletimes5'),(21,'colles21','colles21short','','',1,'scaletimes5'),(22,'colles22','colles22short','','',1,'scaletimes5'),(23,'colles23','colles23short','','',1,'scaletimes5'),(24,'colles24','colles24short','','',1,'scaletimes5'),(25,'collesm1','collesm1short','1,2,3,4','collesmintro',1,'scaletimes5'),(26,'collesm2','collesm2short','5,6,7,8','collesmintro',1,'scaletimes5'),(27,'collesm3','collesm3short','9,10,11,12','collesmintro',1,'scaletimes5'),(28,'collesm4','collesm4short','13,14,15,16','collesmintro',1,'scaletimes5'),(29,'collesm5','collesm5short','17,18,19,20','collesmintro',1,'scaletimes5'),(30,'collesm6','collesm6short','21,22,23,24','collesmintro',1,'scaletimes5'),(31,'collesm1','collesm1short','1,2,3,4','collesmintro',2,'scaletimes5'),(32,'collesm2','collesm2short','5,6,7,8','collesmintro',2,'scaletimes5'),(33,'collesm3','collesm3short','9,10,11,12','collesmintro',2,'scaletimes5'),(34,'collesm4','collesm4short','13,14,15,16','collesmintro',2,'scaletimes5'),(35,'collesm5','collesm5short','17,18,19,20','collesmintro',2,'scaletimes5'),(36,'collesm6','collesm6short','21,22,23,24','collesmintro',2,'scaletimes5'),(37,'collesm1','collesm1short','1,2,3,4','collesmintro',3,'scaletimes5'),(38,'collesm2','collesm2short','5,6,7,8','collesmintro',3,'scaletimes5'),(39,'collesm3','collesm3short','9,10,11,12','collesmintro',3,'scaletimes5'),(40,'collesm4','collesm4short','13,14,15,16','collesmintro',3,'scaletimes5'),(41,'collesm5','collesm5short','17,18,19,20','collesmintro',3,'scaletimes5'),(42,'collesm6','collesm6short','21,22,23,24','collesmintro',3,'scaletimes5'),(43,'howlong','','','',1,'howlongoptions'),(44,'othercomments','','','',0,NULL),(45,'attls1','attls1short','','',1,'scaleagree5'),(46,'attls2','attls2short','','',1,'scaleagree5'),(47,'attls3','attls3short','','',1,'scaleagree5'),(48,'attls4','attls4short','','',1,'scaleagree5'),(49,'attls5','attls5short','','',1,'scaleagree5'),(50,'attls6','attls6short','','',1,'scaleagree5'),(51,'attls7','attls7short','','',1,'scaleagree5'),(52,'attls8','attls8short','','',1,'scaleagree5'),(53,'attls9','attls9short','','',1,'scaleagree5'),(54,'attls10','attls10short','','',1,'scaleagree5'),(55,'attls11','attls11short','','',1,'scaleagree5'),(56,'attls12','attls12short','','',1,'scaleagree5'),(57,'attls13','attls13short','','',1,'scaleagree5'),(58,'attls14','attls14short','','',1,'scaleagree5'),(59,'attls15','attls15short','','',1,'scaleagree5'),(60,'attls16','attls16short','','',1,'scaleagree5'),(61,'attls17','attls17short','','',1,'scaleagree5'),(62,'attls18','attls18short','','',1,'scaleagree5'),(63,'attls19','attls19short','','',1,'scaleagree5'),(64,'attls20','attls20short','','',1,'scaleagree5'),(65,'attlsm1','attlsm1','45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64','attlsmintro',1,'scaleagree5'),(66,'-','-','-','-',0,'-'),(67,'attlsm2','attlsm2','63,62,59,57,55,49,52,50,48,47','attlsmintro',-1,'scaleagree5'),(68,'attlsm3','attlsm3','46,54,45,51,60,53,56,58,61,64','attlsmintro',-1,'scaleagree5'),(69,'ciq1','ciq1short','','',0,NULL),(70,'ciq2','ciq2short','','',0,NULL),(71,'ciq3','ciq3short','','',0,NULL),(72,'ciq4','ciq4short','','',0,NULL),(73,'ciq5','ciq5short','','',0,NULL);

/*Table structure for table `mdl_tag` */

DROP TABLE IF EXISTS `mdl_tag`;

CREATE TABLE `mdl_tag` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `rawname` varchar(255) NOT NULL DEFAULT '',
  `tagtype` varchar(255) DEFAULT NULL,
  `description` text,
  `descriptionformat` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `flag` smallint(4) unsigned DEFAULT '0',
  `timemodified` bigint(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_tag_nam_uix` (`name`),
  KEY `mdl_tag_use_ix` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tag table - this generic table will replace the old "tags" t';

/*Data for the table `mdl_tag` */

/*Table structure for table `mdl_tag_correlation` */

DROP TABLE IF EXISTS `mdl_tag_correlation`;

CREATE TABLE `mdl_tag_correlation` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `tagid` bigint(10) unsigned NOT NULL,
  `correlatedtags` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_tagcorr_tag_ix` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The rationale for the ''tag_correlation'' table is performance';

/*Data for the table `mdl_tag_correlation` */

/*Table structure for table `mdl_tag_instance` */

DROP TABLE IF EXISTS `mdl_tag_instance`;

CREATE TABLE `mdl_tag_instance` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `tagid` bigint(10) unsigned NOT NULL,
  `itemtype` varchar(255) NOT NULL DEFAULT '',
  `itemid` bigint(10) unsigned NOT NULL,
  `ordering` bigint(10) unsigned DEFAULT NULL,
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_taginst_iteitetag_uix` (`itemtype`,`itemid`,`tagid`),
  KEY `mdl_taginst_tag_ix` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='tag_instance table holds the information of associations bet';

/*Data for the table `mdl_tag_instance` */

/*Table structure for table `mdl_timezone` */

DROP TABLE IF EXISTS `mdl_timezone`;

CREATE TABLE `mdl_timezone` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `year` bigint(11) NOT NULL DEFAULT '0',
  `tzrule` varchar(20) NOT NULL DEFAULT '',
  `gmtoff` bigint(11) NOT NULL DEFAULT '0',
  `dstoff` bigint(11) NOT NULL DEFAULT '0',
  `dst_month` tinyint(2) NOT NULL DEFAULT '0',
  `dst_startday` smallint(3) NOT NULL DEFAULT '0',
  `dst_weekday` smallint(3) NOT NULL DEFAULT '0',
  `dst_skipweeks` smallint(3) NOT NULL DEFAULT '0',
  `dst_time` varchar(6) NOT NULL DEFAULT '00:00',
  `std_month` tinyint(2) NOT NULL DEFAULT '0',
  `std_startday` smallint(3) NOT NULL DEFAULT '0',
  `std_weekday` smallint(3) NOT NULL DEFAULT '0',
  `std_skipweeks` smallint(3) NOT NULL DEFAULT '0',
  `std_time` varchar(6) NOT NULL DEFAULT '00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Rules for calculating local wall clock time for users';

/*Data for the table `mdl_timezone` */

/*Table structure for table `mdl_user` */

DROP TABLE IF EXISTS `mdl_user`;

CREATE TABLE `mdl_user` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `auth` varchar(20) NOT NULL DEFAULT 'manual',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `policyagreed` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `mnethostid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `idnumber` varchar(255) NOT NULL DEFAULT '',
  `firstname` varchar(100) NOT NULL DEFAULT '',
  `lastname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `emailstop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `icq` varchar(15) NOT NULL DEFAULT '',
  `skype` varchar(50) NOT NULL DEFAULT '',
  `yahoo` varchar(50) NOT NULL DEFAULT '',
  `aim` varchar(50) NOT NULL DEFAULT '',
  `msn` varchar(50) NOT NULL DEFAULT '',
  `phone1` varchar(20) NOT NULL DEFAULT '',
  `phone2` varchar(20) NOT NULL DEFAULT '',
  `institution` varchar(40) NOT NULL DEFAULT '',
  `department` varchar(30) NOT NULL DEFAULT '',
  `address` varchar(70) NOT NULL DEFAULT '',
  `city` varchar(20) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `lang` varchar(30) NOT NULL DEFAULT 'en_utf8',
  `theme` varchar(50) NOT NULL DEFAULT '',
  `timezone` varchar(100) NOT NULL DEFAULT '99',
  `firstaccess` bigint(10) unsigned NOT NULL DEFAULT '0',
  `lastaccess` bigint(10) unsigned NOT NULL DEFAULT '0',
  `lastlogin` bigint(10) unsigned NOT NULL DEFAULT '0',
  `currentlogin` bigint(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(15) NOT NULL DEFAULT '',
  `secret` varchar(15) NOT NULL DEFAULT '',
  `picture` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `mailformat` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `maildigest` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `maildisplay` tinyint(2) unsigned NOT NULL DEFAULT '2',
  `htmleditor` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ajax` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `autosubscribe` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `trackforums` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  `trustbitmask` bigint(10) unsigned NOT NULL DEFAULT '0',
  `imagealt` varchar(255) DEFAULT NULL,
  `screenreader` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_user_mneuse_uix` (`mnethostid`,`username`),
  KEY `mdl_user_del_ix` (`deleted`),
  KEY `mdl_user_con_ix` (`confirmed`),
  KEY `mdl_user_fir_ix` (`firstname`),
  KEY `mdl_user_las_ix` (`lastname`),
  KEY `mdl_user_cit_ix` (`city`),
  KEY `mdl_user_cou_ix` (`country`),
  KEY `mdl_user_las2_ix` (`lastaccess`),
  KEY `mdl_user_ema_ix` (`email`),
  KEY `mdl_user_aut_ix` (`auth`),
  KEY `mdl_user_idn_ix` (`idnumber`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='One record for each person';

/*Data for the table `mdl_user` */

insert  into `mdl_user`(`id`,`auth`,`confirmed`,`policyagreed`,`deleted`,`mnethostid`,`username`,`password`,`idnumber`,`firstname`,`lastname`,`email`,`emailstop`,`icq`,`skype`,`yahoo`,`aim`,`msn`,`phone1`,`phone2`,`institution`,`department`,`address`,`city`,`country`,`lang`,`theme`,`timezone`,`firstaccess`,`lastaccess`,`lastlogin`,`currentlogin`,`lastip`,`secret`,`picture`,`url`,`description`,`mailformat`,`maildigest`,`maildisplay`,`htmleditor`,`ajax`,`autosubscribe`,`trackforums`,`timemodified`,`trustbitmask`,`imagealt`,`screenreader`) values (1,'manual',1,0,0,1,'guest','e5d788141fdf2cbfc6080e13378e2ed8','','Guest User',' ','root@localhost',0,'','','','','','','','','','','','','en_utf8','','99',1311276219,1314293895,1312622625,1314293895,'127.0.0.1','',0,'','This user is a special user that allows read-only access to some courses.',1,0,2,1,1,1,0,1311276219,0,NULL,0),(2,'manual',1,0,0,1,'nazruddin.safaat','e5d788141fdf2cbfc6080e13378e2ed8','','Nazruddin Safaat','Harahap','uxc.wilis@gmail.com',0,'','','','','','','','','','','Bandung','ID','en_utf8','','99',1311276281,1368933531,1366621486,1368933531,'127.0.0.1','',0,'','',1,0,1,1,1,1,0,1311276281,0,'',0),(3,'manual',1,0,0,1,'niko','e5d788141fdf2cbfc6080e13378e2ed8','','Niko Jiliandro','Niko','niko.jiliandro@gmail.com',0,'','','','','','','','','','','Pekanbaru','ID','en_utf8','','99',1311432993,1329117121,1329047114,1329117121,'127.0.0.1','',0,'','',1,0,2,1,0,1,0,1311432993,0,'',0),(4,'manual',1,0,0,1,'nia','e5d788141fdf2cbfc6080e13378e2ed8','','Kurnia Maulani','Nia','kurnia.maulani@yahoo.com',0,'','','','','','','','','','','Pekanbaru','ID','en_utf8','','99',1311562444,1313570641,1312654619,1313570226,'127.0.0.1','',0,'','',1,0,2,1,0,1,0,1313962326,0,'',0),(5,'manual',1,0,0,1,'gita','e5d788141fdf2cbfc6080e13378e2ed8','','Gita Gemala','Gita','gita.gemala@gmail.com',0,'','','','','','','','','','','Pekanbru','ID','en_utf8','','99',1311562594,1322021835,1312397300,1322021417,'127.0.0.1','',0,'','',1,0,2,1,0,1,0,1311562594,0,'',0),(6,'manual',1,0,0,1,'jasril','e5d788141fdf2cbfc6080e13378e2ed8','','Jasril,','ST, M.Sc','Jay@gmail.com',0,'','','','','','','','','','','Rumbai','ID','en_utf8','','99',1312621469,1313963040,1313953462,1313962971,'127.0.0.1','',0,'','',1,0,2,1,0,1,0,1312654022,0,'',0),(7,'manual',1,0,0,1,'safaat','e5d788141fdf2cbfc6080e13378e2ed8','','Nazruddin','Syafaat, ST, MT','syafaat@gmail.com',0,'','','','','','','','','','','Pekanbaru','ID','en_utf8','','99',1312653369,1322021133,1322017177,1322018204,'127.0.0.1','',0,'','',1,0,2,1,0,1,0,1312653991,0,'',0),(8,'manual',1,0,0,1,'lestari','e5d788141fdf2cbfc6080e13378e2ed8','','Lestari','Handayani, ST, M.Kom','lestari@gmail.com',0,'','','','','','','','','','','Pekanbaru','ID','en_utf8','','99',1312653466,1313963093,1313962640,1313963093,'127.0.0.1','',0,'','',1,0,2,1,0,1,0,1312653965,0,'',0),(9,'manual',1,0,0,1,'fitri','e5d788141fdf2cbfc6080e13378e2ed8','','Fitri','Wulandari, ST, M.Kom','fitri@gmail.com',0,'','','','','','','','','','','Pekanbaru','ID','en_utf8','','99',1313696272,1313963200,1313953306,1313963199,'127.0.0.1','',0,'','',1,0,2,1,0,1,0,1313696272,0,'',0),(10,'manual',1,0,0,1,'harjay','e5d788141fdf2cbfc6080e13378e2ed8','','Harry','Wijaya','harjay@gmail.com',0,'','','','','','','','','','','Payakumbuh','ID','en_utf8','','99',1313962452,1313962686,1313962525,1313962686,'127.0.0.1','',0,'','',1,0,2,1,0,1,0,1313962452,0,'',0),(11,'email',1,0,0,1,'uxc.wilis','e5d788141fdf2cbfc6080e13378e2ed8','','uxc','wilis','uxc.wilis@gmail.com',0,'','','','','','','','','','','bandung','ID','en_utf8','','99',1314293824,1366619509,1314294022,1366618993,'127.0.0.1','3XIPdKK5MSxkuuk',0,'',NULL,1,0,2,1,1,1,0,0,0,NULL,0),(12,'email',1,0,0,1,'wilis','e5d788141fdf2cbfc6080e13378e2ed8','','wilis','wilis','wilis@gmail.com',0,'','','','','','','','','','','wilis','ID','en_utf8','','99',1316356083,1365141779,1324189845,1365141771,'127.0.0.1','bWylWhDJShAYyKE',0,'',NULL,1,0,2,1,1,1,0,0,0,NULL,0),(13,'email',1,0,0,1,'bobby','e5d788141fdf2cbfc6080e13378e2ed8','','bobby','boby','bobby@gmail.com',0,'','','','','','','','','','','bandung','ID','en_utf8','','99',1366620870,1366620917,0,1366620917,'127.0.0.1','qpx99LaFemqy9hV',0,'',NULL,1,0,2,1,1,1,0,0,0,NULL,0),(14,'email',1,0,0,1,'rudi','e5d788141fdf2cbfc6080e13378e2ed8','','rudi','rudi','rudi@gmail.com',0,'','','','','','','','','','','pekanbaru','ID','en_utf8','','99',1366621409,0,0,0,'','Brirpo3i9x4cNl5',0,'',NULL,1,0,2,1,1,1,0,0,0,NULL,0);

/*Table structure for table `mdl_user_info_category` */

DROP TABLE IF EXISTS `mdl_user_info_category`;

CREATE TABLE `mdl_user_info_category` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sortorder` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Customisable fields categories';

/*Data for the table `mdl_user_info_category` */

insert  into `mdl_user_info_category`(`id`,`name`,`sortorder`) values (1,'Other fields',1);

/*Table structure for table `mdl_user_info_data` */

DROP TABLE IF EXISTS `mdl_user_info_data`;

CREATE TABLE `mdl_user_info_data` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `fieldid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_userinfodata_usefie_ix` (`userid`,`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Data for the customisable user fields';

/*Data for the table `mdl_user_info_data` */

/*Table structure for table `mdl_user_info_field` */

DROP TABLE IF EXISTS `mdl_user_info_field`;

CREATE TABLE `mdl_user_info_field` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `shortname` varchar(255) NOT NULL DEFAULT 'shortname',
  `name` longtext NOT NULL,
  `datatype` varchar(255) NOT NULL DEFAULT '',
  `description` longtext,
  `categoryid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `sortorder` bigint(10) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `visible` smallint(4) unsigned NOT NULL DEFAULT '0',
  `forceunique` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `signup` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `defaultdata` longtext,
  `param1` longtext,
  `param2` longtext,
  `param3` longtext,
  `param4` longtext,
  `param5` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Customisable user profile fields';

/*Data for the table `mdl_user_info_field` */

/*Table structure for table `mdl_user_lastaccess` */

DROP TABLE IF EXISTS `mdl_user_lastaccess`;

CREATE TABLE `mdl_user_lastaccess` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `courseid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timeaccess` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_userlast_usecou_uix` (`userid`,`courseid`),
  KEY `mdl_userlast_use_ix` (`userid`),
  KEY `mdl_userlast_cou_ix` (`courseid`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='To keep track of course page access times, used in online pa';

/*Data for the table `mdl_user_lastaccess` */

insert  into `mdl_user_lastaccess`(`id`,`userid`,`courseid`,`timeaccess`) values (1,2,2,1318485009),(2,2,3,1313570382),(3,3,2,1324190688),(4,2,4,1366621499),(5,2,5,1316361599),(6,3,5,1311562645),(7,3,4,1324387581),(8,4,4,1311562739),(9,4,3,1311562761),(10,4,2,1313570641),(11,5,4,1313049559),(12,5,5,1311562850),(13,6,2,1313963040),(14,8,3,1313963093),(15,7,4,1322020519),(16,9,5,1313963200),(17,10,5,1313962508),(18,10,4,1313962535),(19,10,3,1313962543),(20,10,2,1313962553),(21,11,5,1314294033),(22,11,4,1366619325),(24,5,2,1322021835),(25,3,3,1329117129),(26,12,4,1365141779);

/*Table structure for table `mdl_user_preferences` */

DROP TABLE IF EXISTS `mdl_user_preferences`;

CREATE TABLE `mdl_user_preferences` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_userpref_usenam_uix` (`userid`,`name`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='Allows modules to store arbitrary user preferences';

/*Data for the table `mdl_user_preferences` */

insert  into `mdl_user_preferences`(`id`,`userid`,`name`,`value`) values (1,2,'auth_forcepasswordchange','0'),(2,2,'email_bounce_count','1'),(3,2,'email_send_count','1'),(4,3,'auth_forcepasswordchange','0'),(5,3,'email_bounce_count','1'),(6,3,'email_send_count','1'),(7,4,'auth_forcepasswordchange','0'),(8,4,'email_bounce_count','1'),(9,4,'email_send_count','1'),(10,5,'auth_forcepasswordchange','0'),(11,5,'email_bounce_count','1'),(12,5,'email_send_count','1'),(13,2,'user_editadvanced_form_showadvanced','1'),(14,6,'auth_forcepasswordchange','0'),(15,6,'email_bounce_count','1'),(16,6,'email_send_count','1'),(17,2,'user_add_filter_form_showadvanced','1'),(18,7,'auth_forcepasswordchange','0'),(19,7,'email_bounce_count','1'),(20,7,'email_send_count','1'),(21,8,'auth_forcepasswordchange','0'),(22,8,'email_bounce_count','1'),(23,8,'email_send_count','1'),(24,2,'assignment_mailinfo','1'),(25,9,'auth_forcepasswordchange','0'),(26,9,'email_bounce_count','1'),(27,9,'email_send_count','1'),(28,6,'assignment_mailinfo','1'),(29,7,'assignment_mailinfo','1'),(30,8,'assignment_mailinfo','1'),(31,9,'assignment_mailinfo','1'),(32,10,'auth_forcepasswordchange','0'),(33,10,'email_bounce_count','1'),(34,10,'email_send_count','1'),(35,2,'mod_resource_mod_form_showadvanced','0'),(36,2,'assignment_perpage','10'),(37,2,'assignment_quickgrade','0'),(38,13,'blogpagesize','10');

/*Table structure for table `mdl_user_private_key` */

DROP TABLE IF EXISTS `mdl_user_private_key`;

CREATE TABLE `mdl_user_private_key` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `script` varchar(128) NOT NULL DEFAULT '',
  `value` varchar(128) NOT NULL DEFAULT '',
  `userid` bigint(10) unsigned NOT NULL,
  `instance` bigint(10) unsigned DEFAULT NULL,
  `iprestriction` varchar(255) DEFAULT NULL,
  `validuntil` bigint(10) unsigned DEFAULT NULL,
  `timecreated` bigint(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_userprivkey_scrval_ix` (`script`,`value`),
  KEY `mdl_userprivkey_use_ix` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='access keys used in cookieless scripts - rss, etc.';

/*Data for the table `mdl_user_private_key` */

/*Table structure for table `mdl_webdav_locks` */

DROP TABLE IF EXISTS `mdl_webdav_locks`;

CREATE TABLE `mdl_webdav_locks` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `expiry` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `recursive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `exclusivelock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created` bigint(10) unsigned NOT NULL DEFAULT '0',
  `modified` bigint(10) unsigned NOT NULL DEFAULT '0',
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_webdlock_tok_uix` (`token`),
  KEY `mdl_webdlock_pat_ix` (`path`),
  KEY `mdl_webdlock_exp_ix` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Resource locks for WebDAV users';

/*Data for the table `mdl_webdav_locks` */

/*Table structure for table `mdl_wiki` */

DROP TABLE IF EXISTS `mdl_wiki`;

CREATE TABLE `mdl_wiki` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `summary` text NOT NULL,
  `pagename` varchar(255) NOT NULL DEFAULT '',
  `wtype` enum('teacher','group','student') NOT NULL DEFAULT 'group',
  `ewikiprinttitle` smallint(4) unsigned NOT NULL DEFAULT '1',
  `htmlmode` smallint(4) unsigned NOT NULL DEFAULT '0',
  `ewikiacceptbinary` smallint(4) unsigned NOT NULL DEFAULT '0',
  `disablecamelcase` smallint(4) unsigned NOT NULL DEFAULT '0',
  `setpageflags` smallint(4) unsigned NOT NULL DEFAULT '1',
  `strippages` smallint(4) unsigned NOT NULL DEFAULT '1',
  `removepages` smallint(4) unsigned NOT NULL DEFAULT '1',
  `revertchanges` smallint(4) unsigned NOT NULL DEFAULT '1',
  `initialcontent` varchar(255) NOT NULL DEFAULT '',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_wiki_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Main wik table';

/*Data for the table `mdl_wiki` */

/*Table structure for table `mdl_wiki_entries` */

DROP TABLE IF EXISTS `mdl_wiki_entries`;

CREATE TABLE `mdl_wiki_entries` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `wikiid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `groupid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `pagename` varchar(255) NOT NULL DEFAULT '',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_wikientr_cou_ix` (`course`),
  KEY `mdl_wikientr_gro_ix` (`groupid`),
  KEY `mdl_wikientr_use_ix` (`userid`),
  KEY `mdl_wikientr_pag_ix` (`pagename`),
  KEY `mdl_wikientr_wik_ix` (`wikiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Holds entries for each wiki start instance';

/*Data for the table `mdl_wiki_entries` */

/*Table structure for table `mdl_wiki_locks` */

DROP TABLE IF EXISTS `mdl_wiki_locks`;

CREATE TABLE `mdl_wiki_locks` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `wikiid` bigint(10) unsigned NOT NULL,
  `pagename` varchar(160) NOT NULL DEFAULT '',
  `lockedby` bigint(10) unsigned NOT NULL DEFAULT '0',
  `lockedsince` bigint(10) unsigned NOT NULL DEFAULT '0',
  `lockedseen` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_wikilock_wikpag_uix` (`wikiid`,`pagename`),
  KEY `mdl_wikilock_loc_ix` (`lockedseen`),
  KEY `mdl_wikilock_wik_ix` (`wikiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores editing locks on Wiki pages';

/*Data for the table `mdl_wiki_locks` */

/*Table structure for table `mdl_wiki_pages` */

DROP TABLE IF EXISTS `mdl_wiki_pages`;

CREATE TABLE `mdl_wiki_pages` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `pagename` varchar(160) NOT NULL DEFAULT '',
  `version` bigint(10) unsigned NOT NULL DEFAULT '0',
  `flags` bigint(10) unsigned DEFAULT '0',
  `content` mediumtext,
  `author` varchar(100) DEFAULT 'ewiki',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `created` bigint(10) unsigned DEFAULT '0',
  `lastmodified` bigint(10) unsigned DEFAULT '0',
  `refs` mediumtext,
  `meta` mediumtext,
  `hits` bigint(10) unsigned DEFAULT '0',
  `wiki` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_wikipage_pagverwik_uix` (`pagename`,`version`,`wiki`),
  KEY `mdl_wikipage_wik_ix` (`wiki`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Holds the Wiki-Pages';

/*Data for the table `mdl_wiki_pages` */

/*Table structure for table `mdl_workshop` */

DROP TABLE IF EXISTS `mdl_workshop`;

CREATE TABLE `mdl_workshop` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `course` bigint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `wtype` smallint(3) unsigned NOT NULL DEFAULT '0',
  `nelements` smallint(3) unsigned NOT NULL DEFAULT '1',
  `nattachments` smallint(3) unsigned NOT NULL DEFAULT '0',
  `phase` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `format` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `gradingstrategy` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `resubmit` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `agreeassessments` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `hidegrades` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `anonymous` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `includeself` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `maxbytes` bigint(10) unsigned NOT NULL DEFAULT '100000',
  `submissionstart` bigint(10) unsigned NOT NULL DEFAULT '0',
  `assessmentstart` bigint(10) unsigned NOT NULL DEFAULT '0',
  `submissionend` bigint(10) unsigned NOT NULL DEFAULT '0',
  `assessmentend` bigint(10) unsigned NOT NULL DEFAULT '0',
  `releasegrades` bigint(10) unsigned NOT NULL DEFAULT '0',
  `grade` smallint(3) NOT NULL DEFAULT '0',
  `gradinggrade` smallint(3) NOT NULL DEFAULT '0',
  `ntassessments` smallint(3) unsigned NOT NULL DEFAULT '0',
  `assessmentcomps` smallint(3) unsigned NOT NULL DEFAULT '2',
  `nsassessments` smallint(3) unsigned NOT NULL DEFAULT '0',
  `overallocation` smallint(3) unsigned NOT NULL DEFAULT '0',
  `timemodified` bigint(10) unsigned NOT NULL DEFAULT '0',
  `teacherweight` smallint(3) unsigned NOT NULL DEFAULT '1',
  `showleaguetable` smallint(3) unsigned NOT NULL DEFAULT '0',
  `usepassword` smallint(3) unsigned NOT NULL DEFAULT '0',
  `password` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_work_cou_ix` (`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines workshop';

/*Data for the table `mdl_workshop` */

/*Table structure for table `mdl_workshop_assessments` */

DROP TABLE IF EXISTS `mdl_workshop_assessments`;

CREATE TABLE `mdl_workshop_assessments` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `submissionid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timecreated` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timegraded` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timeagreed` bigint(10) unsigned NOT NULL DEFAULT '0',
  `grade` double NOT NULL DEFAULT '0',
  `gradinggrade` smallint(3) NOT NULL DEFAULT '0',
  `teachergraded` smallint(3) unsigned NOT NULL DEFAULT '0',
  `mailed` smallint(3) unsigned NOT NULL DEFAULT '0',
  `resubmission` smallint(3) unsigned NOT NULL DEFAULT '0',
  `donotuse` smallint(3) unsigned NOT NULL DEFAULT '0',
  `generalcomment` text,
  `teachercomment` text,
  PRIMARY KEY (`id`),
  KEY `mdl_workasse_use_ix` (`userid`),
  KEY `mdl_workasse_mai_ix` (`mailed`),
  KEY `mdl_workasse_wor_ix` (`workshopid`),
  KEY `mdl_workasse_sub_ix` (`submissionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Info about assessments by teacher and students';

/*Data for the table `mdl_workshop_assessments` */

/*Table structure for table `mdl_workshop_comments` */

DROP TABLE IF EXISTS `mdl_workshop_comments`;

CREATE TABLE `mdl_workshop_comments` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `assessmentid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `timecreated` bigint(10) unsigned NOT NULL DEFAULT '0',
  `mailed` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `comments` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_workcomm_use_ix` (`userid`),
  KEY `mdl_workcomm_mai_ix` (`mailed`),
  KEY `mdl_workcomm_wor_ix` (`workshopid`),
  KEY `mdl_workcomm_ass_ix` (`assessmentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Defines comments';

/*Data for the table `mdl_workshop_comments` */

/*Table structure for table `mdl_workshop_elements` */

DROP TABLE IF EXISTS `mdl_workshop_elements`;

CREATE TABLE `mdl_workshop_elements` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `elementno` smallint(3) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `scale` smallint(3) unsigned NOT NULL DEFAULT '0',
  `maxscore` smallint(3) unsigned NOT NULL DEFAULT '1',
  `weight` smallint(3) unsigned NOT NULL DEFAULT '11',
  `stddev` double NOT NULL DEFAULT '0',
  `totalassessments` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_workelem_wor_ix` (`workshopid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Info about marking scheme of assignment';

/*Data for the table `mdl_workshop_elements` */

/*Table structure for table `mdl_workshop_grades` */

DROP TABLE IF EXISTS `mdl_workshop_grades`;

CREATE TABLE `mdl_workshop_grades` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `assessmentid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `elementno` bigint(10) unsigned NOT NULL DEFAULT '0',
  `feedback` text NOT NULL,
  `grade` smallint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_workgrad_wor_ix` (`workshopid`),
  KEY `mdl_workgrad_ass_ix` (`assessmentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Info about individual grades given to each element';

/*Data for the table `mdl_workshop_grades` */

/*Table structure for table `mdl_workshop_rubrics` */

DROP TABLE IF EXISTS `mdl_workshop_rubrics`;

CREATE TABLE `mdl_workshop_rubrics` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `elementno` bigint(10) unsigned NOT NULL DEFAULT '0',
  `rubricno` smallint(3) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_workrubr_wor_ix` (`workshopid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Info about the rubrics marking scheme';

/*Data for the table `mdl_workshop_rubrics` */

/*Table structure for table `mdl_workshop_stockcomments` */

DROP TABLE IF EXISTS `mdl_workshop_stockcomments`;

CREATE TABLE `mdl_workshop_stockcomments` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `elementno` bigint(10) unsigned NOT NULL DEFAULT '0',
  `comments` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_workstoc_wor_ix` (`workshopid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Info about the teacher comment bank';

/*Data for the table `mdl_workshop_stockcomments` */

/*Table structure for table `mdl_workshop_submissions` */

DROP TABLE IF EXISTS `mdl_workshop_submissions`;

CREATE TABLE `mdl_workshop_submissions` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `timecreated` bigint(10) unsigned NOT NULL DEFAULT '0',
  `mailed` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `gradinggrade` smallint(3) unsigned NOT NULL DEFAULT '0',
  `finalgrade` smallint(3) unsigned NOT NULL DEFAULT '0',
  `late` smallint(3) unsigned NOT NULL DEFAULT '0',
  `nassessments` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_worksubm_use_ix` (`userid`),
  KEY `mdl_worksubm_mai_ix` (`mailed`),
  KEY `mdl_worksubm_wor_ix` (`workshopid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Info about submitted work from teacher and students';

/*Data for the table `mdl_workshop_submissions` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
