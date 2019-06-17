-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: mysql    Database: wordpress
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_swedish_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_swedish_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2019-06-10 12:04:42','2019-06-10 12:04:42','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_swedish_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_swedish_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost:8080','yes'),(2,'home','http://localhost:8080','yes'),(3,'blogname','Summer Project WP','yes'),(4,'blogdescription','Just another WordPress site','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','aishahhassan21@gmail.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','0','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','/%postname%/','yes'),(29,'rewrite_rules','a:110:{s:8:\"staff/?$\";s:25:\"index.php?post_type=staff\";s:38:\"staff/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=staff&feed=$matches[1]\";s:33:\"staff/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=staff&feed=$matches[1]\";s:25:\"staff/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=staff&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"staff/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"staff/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"staff/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"staff/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"staff/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"staff/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"staff/([^/]+)/embed/?$\";s:38:\"index.php?staff=$matches[1]&embed=true\";s:26:\"staff/([^/]+)/trackback/?$\";s:32:\"index.php?staff=$matches[1]&tb=1\";s:46:\"staff/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?staff=$matches[1]&feed=$matches[2]\";s:41:\"staff/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?staff=$matches[1]&feed=$matches[2]\";s:34:\"staff/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?staff=$matches[1]&paged=$matches[2]\";s:41:\"staff/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?staff=$matches[1]&cpage=$matches[2]\";s:30:\"staff/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?staff=$matches[1]&page=$matches[2]\";s:22:\"staff/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"staff/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"staff/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"staff/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"staff/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"staff/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','starter-theme','yes'),(41,'stylesheet','starter-theme','yes'),(42,'comment_whitelist','1','yes'),(43,'blacklist_keys','','no'),(44,'comment_registration','0','yes'),(45,'html_type','text/html','yes'),(46,'use_trackback','0','yes'),(47,'default_role','subscriber','yes'),(48,'db_version','44719','yes'),(49,'uploads_use_yearmonth_folders','1','yes'),(50,'upload_path','','yes'),(51,'blog_public','0','yes'),(52,'default_link_category','2','yes'),(53,'show_on_front','posts','yes'),(54,'tag_base','','yes'),(55,'show_avatars','1','yes'),(56,'avatar_rating','G','yes'),(57,'upload_url_path','','yes'),(58,'thumbnail_size_w','150','yes'),(59,'thumbnail_size_h','150','yes'),(60,'thumbnail_crop','1','yes'),(61,'medium_size_w','300','yes'),(62,'medium_size_h','300','yes'),(63,'avatar_default','mystery','yes'),(64,'large_size_w','1024','yes'),(65,'large_size_h','1024','yes'),(66,'image_default_link_type','none','yes'),(67,'image_default_size','','yes'),(68,'image_default_align','','yes'),(69,'close_comments_for_old_posts','0','yes'),(70,'close_comments_days_old','14','yes'),(71,'thread_comments','1','yes'),(72,'thread_comments_depth','5','yes'),(73,'page_comments','0','yes'),(74,'comments_per_page','50','yes'),(75,'default_comments_page','newest','yes'),(76,'comment_order','asc','yes'),(77,'sticky_posts','a:0:{}','yes'),(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(79,'widget_text','a:0:{}','yes'),(80,'widget_rss','a:0:{}','yes'),(81,'uninstall_plugins','a:0:{}','no'),(82,'timezone_string','','yes'),(83,'page_for_posts','0','yes'),(84,'page_on_front','0','yes'),(85,'default_post_format','0','yes'),(86,'link_manager_enabled','0','yes'),(87,'finished_splitting_shared_terms','1','yes'),(88,'site_icon','0','yes'),(89,'medium_large_size_w','768','yes'),(90,'medium_large_size_h','0','yes'),(91,'wp_page_for_privacy_policy','3','yes'),(92,'show_comments_cookies_opt_in','0','yes'),(93,'initial_db_version','43764','yes'),(94,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(95,'fresh_site','0','yes'),(96,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(97,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(98,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(99,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(100,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(101,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes'),(102,'bedrock_autoloader','a:2:{s:7:\"plugins\";a:0:{}s:5:\"count\";i:0;}','no'),(103,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(104,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(105,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(106,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(107,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'nonce_key','*M<nC^@DN4.Xa,R$G$h>P^,*69/$Ik(M=J` h~jFnehWrn$J`S&[:kQ1k8+7Tq]f','no'),(110,'nonce_salt','.Nz9Mbv5aY?|Kub`Ti:IHklf5@_qZL}If?i9;zyka=_y+$1Eq(qT<Y+YuN4r_S0x','no'),(111,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(112,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(113,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(114,'cron','a:6:{i:1560427483;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1560427497;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1560427517;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1560430195;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1560498275;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),(115,'theme_mods_twentyseventeen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1560239965;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes'),(116,'auth_key','S5pt3ws2v[{:e$+~MGEYl%wdV9lMk(.QAUg|p)bELi2*V/9v21K[ lRR=3SAV{R~','no'),(117,'auth_salt','h:XoUp]$Ejqy}[D6Kf_!Uee`,qm(q!4iX6vy  2wL}M7j*k_CJ5mG:U)Z~M0A+7>','no'),(118,'logged_in_key','wn=%KIP2-q8~dt yhQE_1W! Nq!Hog[@{=!6i;t.G_)r@|^[z`^0qV_/lRSWYL/F','no'),(119,'logged_in_salt','BeZdw52r!O3a9$LE2^2W l5?}E+;YQ;{.2Zmmpy Z 4iYjnN2[+upA~L1o{QoO.z','no'),(121,'core_updater.lock','1560169807','no'),(123,'recovery_keys','a:0:{}','yes'),(124,'db_upgraded','','yes'),(126,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1560171021;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}','no'),(127,'_site_transient_timeout_theme_roots','1560172821','no'),(128,'_site_transient_theme_roots','a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}','no'),(129,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1560171021;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no'),(130,'_transient_is_multi_author','0','yes'),(131,'can_compress_scripts','1','no'),(132,'current_theme','BC Starter Theme','yes'),(133,'theme_mods_starter-theme','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1560239969;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"custom_css_post_id\";i:-1;}','yes'),(134,'theme_switched','','yes'),(137,'recently_activated','a:0:{}','yes'),(138,'acf_version','5.8.1','yes'),(139,'category_children','a:0:{}','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_swedish_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(3,5,'_edit_lock','1560238974:1'),(4,6,'_edit_lock','1560239268:1'),(5,2,'_edit_lock','1560240116:1'),(10,9,'_edit_lock','1560243788:1'),(11,10,'_edit_lock','1560244312:1'),(12,11,'_edit_lock','1560244336:1'),(13,13,'_edit_lock','1560244871:1'),(14,14,'_edit_lock','1560245179:1'),(15,15,'_edit_lock','1560248833:1'),(16,16,'_edit_lock','1560251720:1'),(17,17,'_edit_lock','1560251608:1'),(18,1,'_edit_lock','1560252078:1'),(19,19,'_edit_lock','1560252337:1'),(20,20,'_edit_lock','1560254459:1'),(21,21,'_edit_lock','1560254474:1'),(22,22,'_edit_lock','1560254408:1'),(23,22,'_edit_last','1'),(24,25,'_edit_lock','1560254430:1'),(25,25,'_edit_last','1'),(26,25,'_wp_trash_meta_status','publish'),(27,25,'_wp_trash_meta_time','1560254704'),(28,25,'_wp_desired_post_slug','group_5cff98595e2c9'),(29,26,'_wp_trash_meta_status','publish'),(30,26,'_wp_trash_meta_time','1560254704'),(31,26,'_wp_desired_post_slug','field_5cff985f16e3f'),(32,22,'_wp_trash_meta_status','publish'),(33,22,'_wp_trash_meta_time','1560254710'),(34,22,'_wp_desired_post_slug','group_5cff9821652ba'),(35,23,'_wp_trash_meta_status','publish'),(36,23,'_wp_trash_meta_time','1560254710'),(37,23,'_wp_desired_post_slug','field_5cff98297964f'),(38,24,'_wp_trash_meta_status','publish'),(39,24,'_wp_trash_meta_time','1560254710'),(40,24,'_wp_desired_post_slug','field_5cff984779650'),(41,27,'_edit_lock','1560415351:1'),(42,27,'_edit_last','1'),(43,31,'_edit_lock','1560255313:1'),(44,32,'_edit_lock','1560258436:1'),(45,32,'_edit_last','1'),(46,32,'job_title','Management Forester, Production Department'),(47,32,'_job_title','field_5cff9947d9b0d'),(48,32,'phone','358456789785'),(49,32,'_phone','field_5cff9a1ad9b0f'),(50,32,'email','bilan.astur@ecoforest.com'),(51,32,'_email','field_5cff99fdd9b0e'),(52,34,'_edit_lock','1560255859:1'),(53,34,'_edit_last','1'),(54,34,'job_title',''),(55,34,'_job_title','field_5cff9947d9b0d'),(56,34,'phone',''),(57,34,'_phone','field_5cff9a1ad9b0f'),(58,34,'email',''),(59,34,'_email','field_5cff99fdd9b0e'),(60,32,'_wp_old_slug','32'),(61,35,'_wp_attached_file','2019/06/Bilan-Astur.jpg'),(62,35,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:23:\"2019/06/Bilan-Astur.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Bilan-Astur-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(63,36,'_edit_lock','1560413910:1'),(64,39,'_edit_lock','1560325423:1'),(65,36,'_wp_page_template','page-employees.php'),(66,40,'_edit_lock','1560333330:1'),(67,40,'_edit_last','1'),(68,36,'_edit_last','1'),(69,36,'staff_list','a:2:{i:0;s:1:\"6\";i:1;s:1:\"5\";}'),(70,36,'_staff_list','field_5d00ae4f7b642'),(71,42,'staff_list','a:2:{i:0;s:1:\"6\";i:1;s:1:\"5\";}'),(72,42,'_staff_list','field_5d00ae4f7b642'),(73,45,'_wp_attached_file','2019/06/Bilan-Astur-1.jpg'),(74,45,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:25:\"2019/06/Bilan-Astur-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Bilan-Astur-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(75,47,'_wp_attached_file','2019/06/Ahupathi-Udgam.jpg'),(76,47,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:190;s:6:\"height\";i:266;s:4:\"file\";s:26:\"2019/06/Ahupathi-Udgam.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Ahupathi-Udgam-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(77,48,'_wp_attached_file','2019/06/Busayo-Adeolu.jpg'),(78,48,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:190;s:6:\"height\";i:266;s:4:\"file\";s:25:\"2019/06/Busayo-Adeolu.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Busayo-Adeolu-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(79,49,'_wp_attached_file','2019/06/Lucia-Martina.jpg'),(80,49,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:25:\"2019/06/Lucia-Martina.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Lucia-Martina-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(81,50,'_wp_attached_file','2019/06/Soma-Zsuska.jpg'),(82,50,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:23:\"2019/06/Soma-Zsuska.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Soma-Zsuska-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_swedish_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_swedish_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2019-06-10 12:04:42','2019-06-10 12:04:42','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2019-06-10 12:04:42','2019-06-10 12:04:42','',0,'http://localhost:8080/?p=1',0,'post','',1),(2,1,'2019-06-10 12:04:42','2019-06-10 12:04:42','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8080/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2019-06-10 12:04:42','2019-06-10 12:04:42','',0,'http://localhost:8080/?page_id=2',0,'page','',0),(3,1,'2019-06-10 12:04:42','2019-06-10 12:04:42','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:8080.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2019-06-10 12:04:42','2019-06-10 12:04:42','',0,'http://localhost:8080/?page_id=3',0,'page','',0),(4,1,'2019-06-10 12:04:58','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2019-06-10 12:04:58','0000-00-00 00:00:00','',0,'http://localhost:8080/?p=4',0,'post','',0),(5,1,'2019-06-11 07:44:35','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2019-06-11 07:44:35','0000-00-00 00:00:00','',0,'http://localhost:8080/?page_id=5',0,'page','',0),(6,1,'2019-06-11 07:49:55','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2019-06-11 07:49:55','0000-00-00 00:00:00','',0,'http://localhost:8080/?page_id=6',0,'page','',0),(9,1,'2019-06-11 08:55:32','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2019-06-11 08:55:32','0000-00-00 00:00:00','',0,'http://localhost:8080/?p=9',0,'post','',0),(10,1,'2019-06-11 09:03:26','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2019-06-11 09:03:26','0000-00-00 00:00:00','',0,'http://localhost:8080/?post_type=post_type&p=10',0,'post_type','',0),(11,1,'2019-06-11 09:12:15','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2019-06-11 09:12:15','0000-00-00 00:00:00','',0,'http://localhost:8080/?p=11',0,'post','',0),(12,1,'2019-06-11 09:12:59','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2019-06-11 09:12:59','0000-00-00 00:00:00','',0,'http://localhost:8080/?post_type=staff&p=12',0,'staff','',0),(13,1,'2019-06-11 09:13:19','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2019-06-11 09:13:19','0000-00-00 00:00:00','',0,'http://localhost:8080/?post_type=staff&p=13',0,'staff','',0),(14,1,'2019-06-11 09:21:09','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2019-06-11 09:21:09','0000-00-00 00:00:00','',0,'http://localhost:8080/?p=14',0,'post','',0),(15,1,'2019-06-11 10:29:28','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2019-06-11 10:29:28','0000-00-00 00:00:00','',0,'http://localhost:8080/?p=15',0,'post','',0),(16,1,'2019-06-11 11:13:43','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','closed','','','','','2019-06-11 11:13:43','0000-00-00 00:00:00','',0,'http://localhost:8080/?post_type=staff&p=16',0,'staff','',0),(17,1,'2019-06-11 11:15:29','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2019-06-11 11:15:29','0000-00-00 00:00:00','',0,'http://localhost:8080/?p=17',0,'post','',0),(18,1,'2019-06-11 11:24:21','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','closed','','','','','2019-06-11 11:24:21','0000-00-00 00:00:00','',0,'http://localhost:8080/?post_type=staff&p=18',0,'staff','',0),(19,1,'2019-06-11 11:24:36','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2019-06-11 11:24:36','0000-00-00 00:00:00','',0,'http://localhost:8080/?post_type=acf-field-group&p=19',0,'acf-field-group','',0),(20,1,'2019-06-11 11:25:51','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2019-06-11 11:25:51','0000-00-00 00:00:00','',0,'http://localhost:8080/?post_type=acf-field-group&p=20',0,'acf-field-group','',0),(21,1,'2019-06-11 12:01:13','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2019-06-11 12:01:13','0000-00-00 00:00:00','',0,'http://localhost:8080/?post_type=acf-field-group&p=21',0,'acf-field-group','',0),(22,1,'2019-06-11 12:02:28','2019-06-11 12:02:28','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','xxx','xxx','trash','closed','closed','','group_5cff9821652ba__trashed','','','2019-06-11 12:05:10','2019-06-11 12:05:10','',0,'http://localhost:8080/?post_type=acf-field-group&#038;p=22',0,'acf-field-group','',0),(23,1,'2019-06-11 12:02:28','2019-06-11 12:02:28','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','asdf','asdf','trash','closed','closed','','field_5cff98297964f__trashed','','','2019-06-11 12:05:10','2019-06-11 12:05:10','',22,'http://localhost:8080/?post_type=acf-field&#038;p=23',0,'acf-field','',0),(24,1,'2019-06-11 12:02:28','2019-06-11 12:02:28','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','dfe','dfe','trash','closed','closed','','field_5cff984779650__trashed','','','2019-06-11 12:05:10','2019-06-11 12:05:10','',22,'http://localhost:8080/?post_type=acf-field&#038;p=24',1,'acf-field','',0),(25,1,'2019-06-11 12:02:51','2019-06-11 12:02:51','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','lol','lol','trash','closed','closed','','group_5cff98595e2c9__trashed','','','2019-06-11 12:05:04','2019-06-11 12:05:04','',0,'http://localhost:8080/?post_type=acf-field-group&#038;p=25',0,'acf-field-group','',0),(26,1,'2019-06-11 12:02:52','2019-06-11 12:02:52','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','dsfs','dsfs','trash','closed','closed','','field_5cff985f16e3f__trashed','','','2019-06-11 12:05:04','2019-06-11 12:05:04','',25,'http://localhost:8080/?post_type=acf-field&#038;p=26',0,'acf-field','',0),(27,1,'2019-06-11 12:13:43','2019-06-11 12:13:43','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"user_role\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"author\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Staff information','staff-information','publish','closed','closed','','group_5cff993b0cc4c','','','2019-06-13 08:42:03','2019-06-13 08:42:03','',0,'http://localhost:8080/?post_type=acf-field-group&#038;p=27',0,'acf-field-group','',0),(28,1,'2019-06-11 12:13:43','2019-06-11 12:13:43','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Job Title','job_title','publish','closed','closed','','field_5cff9947d9b0d','','','2019-06-11 12:13:43','2019-06-11 12:13:43','',27,'http://localhost:8080/?post_type=acf-field&p=28',0,'acf-field','',0),(29,1,'2019-06-11 12:13:43','2019-06-11 12:13:43','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}','Phone','phone','publish','closed','closed','','field_5cff9a1ad9b0f','','','2019-06-11 12:13:43','2019-06-11 12:13:43','',27,'http://localhost:8080/?post_type=acf-field&p=29',1,'acf-field','',0),(30,1,'2019-06-11 12:13:43','2019-06-11 12:13:43','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:10:\"uploadedTo\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Profile Picture','profile_picture','publish','closed','closed','','field_5cff99fdd9b0e','','','2019-06-12 11:03:22','2019-06-12 11:03:22','',27,'http://localhost:8080/?post_type=acf-field&#038;p=30',2,'acf-field','',0),(31,1,'2019-06-11 12:13:56','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','closed','','','','','2019-06-11 12:13:56','0000-00-00 00:00:00','',0,'http://localhost:8080/?post_type=staff&p=31',0,'staff','',0),(32,1,'2019-06-11 12:18:14','2019-06-11 12:18:14','<img class=\"alignnone size-full wp-image-35\" src=\"http://localhost:8080/wp-content/uploads/2019/06/Bilan-Astur.jpg\" alt=\"\" width=\"225\" height=\"225\" />Bilan practices forestry, the science, art, and manages forests. He engages in a broad range of activities including ecological restoration and management of protectes areas. Also, he manages forests to provide a variety of objectives including direct extraction of raw material, outdoor recreation, conservation, hunting and aesthetics.','Bilan Astur','','publish','open','closed','','bilan-astur','','','2019-06-11 12:36:59','2019-06-11 12:36:59','',0,'http://localhost:8080/?post_type=staff&#038;p=32',0,'staff','',0),(33,1,'2019-06-11 12:35:59','2019-06-11 12:35:59','Bilan practices forestry, the science, art, and manages forests. He engages in a broad range of activities including ecological restoration and management of protectes areas. Also, he manages forests to provide a variety of objectives including direct extraction of raw material, outdoor recreation, conservation, hunting and aesthetics.','Bilan Astur','','inherit','closed','closed','','32-autosave-v1','','','2019-06-11 12:35:59','2019-06-11 12:35:59','',32,'http://localhost:8080/2019/06/11/32-autosave-v1/',0,'revision','',0),(34,1,'2019-06-11 12:26:21','0000-00-00 00:00:00','','Ahupathi Udgam','','draft','open','closed','','','','','2019-06-11 12:26:21','2019-06-11 12:26:21','',0,'http://localhost:8080/?post_type=staff&#038;p=34',0,'staff','',0),(35,1,'2019-06-11 12:33:56','2019-06-11 12:33:56','','Bilan Astur','','inherit','open','closed','','bilan-astur-2','','','2019-06-11 12:33:56','2019-06-11 12:33:56','',32,'http://localhost:8080/wp-content/uploads/2019/06/Bilan-Astur.jpg',0,'attachment','image/jpeg',0),(36,6,'2019-06-11 13:47:20','2019-06-11 13:47:20','<!-- wp:paragraph -->\n<p>View our amazing team member from all departments in the organisation.</p>\n<!-- /wp:paragraph -->','Staff Member Information','','publish','closed','closed','','staff-member-information','','','2019-06-12 07:50:30','2019-06-12 07:50:30','',0,'http://localhost:8080/?page_id=36',0,'page','',0),(37,1,'2019-06-11 13:47:07','2019-06-11 13:47:07','<!-- wp:paragraph -->\n<p>View our amazing team member from all departments in the organisation.</p>\n<!-- /wp:paragraph -->','Staaf Member Information','','inherit','closed','closed','','36-revision-v1','','','2019-06-11 13:47:07','2019-06-11 13:47:07','',36,'http://localhost:8080/36-revision-v1/',0,'revision','',0),(38,1,'2019-06-11 13:47:36','2019-06-11 13:47:36','<!-- wp:paragraph -->\n<p>View our amazing team member from all departments in the organisation.</p>\n<!-- /wp:paragraph -->','Staff Member Information','','inherit','closed','closed','','36-revision-v1','','','2019-06-11 13:47:36','2019-06-11 13:47:36','',36,'http://localhost:8080/36-revision-v1/',0,'revision','',0),(39,1,'2019-06-12 07:43:42','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2019-06-12 07:43:42','0000-00-00 00:00:00','',0,'http://localhost:8080/?page_id=39',0,'page','',0),(40,1,'2019-06-12 07:49:28','2019-06-12 07:49:28','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"page-employees.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Staff page','staff-page','publish','closed','closed','','group_5d00ae430fbda','','','2019-06-12 08:06:09','2019-06-12 08:06:09','',0,'http://localhost:8080/?post_type=acf-field-group&#038;p=40',0,'acf-field-group','',0),(41,1,'2019-06-12 07:49:28','2019-06-12 07:49:28','a:9:{s:4:\"type\";s:4:\"user\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"role\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:1;s:13:\"return_format\";s:6:\"object\";}','Staff list','staff_list','publish','closed','closed','','field_5d00ae4f7b642','','','2019-06-12 07:49:28','2019-06-12 07:49:28','',40,'http://localhost:8080/?post_type=acf-field&p=41',0,'acf-field','',0),(42,1,'2019-06-12 07:50:30','2019-06-12 07:50:30','<!-- wp:paragraph -->\n<p>View our amazing team member from all departments in the organisation.</p>\n<!-- /wp:paragraph -->','Staff Member Information','','inherit','closed','closed','','36-revision-v1','','','2019-06-12 07:50:30','2019-06-12 07:50:30','',36,'http://localhost:8080/36-revision-v1/',0,'revision','',0),(43,1,'2019-06-12 08:58:01','2019-06-12 08:58:01','a:9:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"department\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:8:\"modified\";i:1560326827;s:5:\"local\";s:4:\"json\";}','Department fields','department-fields','publish','open','open','','group_5d00a08c09ae2','','','2019-06-12 08:58:01','2019-06-12 08:58:01','',0,'http://localhost:8080/?p=43',0,'acf-field-group','',0),(44,1,'2019-06-12 08:58:01','2019-06-12 08:58:01','a:9:{s:4:\"type\";s:4:\"user\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"role\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:1;s:13:\"return_format\";s:6:\"object\";}','Employees','employees','publish','closed','closed','','field_5d00a09e4b857','','','2019-06-12 08:58:01','2019-06-12 08:58:01','',43,'http://localhost:8080/?post_type=acf-field&p=44',0,'acf-field','',0),(45,1,'2019-06-12 10:20:00','2019-06-12 10:20:00','','Bilan Astur','','inherit','open','closed','','bilan-astur-3','','','2019-06-12 10:20:00','2019-06-12 10:20:00','',0,'http://localhost:8080/wp-content/uploads/2019/06/Bilan-Astur-1.jpg',0,'attachment','image/jpeg',0),(46,1,'2019-06-12 10:22:48','2019-06-12 10:22:48','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"rows\";s:0:\"\";}','About the employee','about_the_employee','publish','closed','closed','','field_5d00d248e2f1b','','','2019-06-13 08:42:03','2019-06-13 08:42:03','',27,'http://localhost:8080/?post_type=acf-field&#038;p=46',3,'acf-field','',0),(47,1,'2019-06-13 08:45:03','2019-06-13 08:45:03','','Ahupathi Udgam','','inherit','open','closed','','ahupathi-udgam','','','2019-06-13 08:45:03','2019-06-13 08:45:03','',0,'http://localhost:8080/wp-content/uploads/2019/06/Ahupathi-Udgam.jpg',0,'attachment','image/jpeg',0),(48,1,'2019-06-13 08:51:39','2019-06-13 08:51:39','','Busayo Adeolu','','inherit','open','closed','','busayo-adeolu','','','2019-06-13 08:51:39','2019-06-13 08:51:39','',0,'http://localhost:8080/wp-content/uploads/2019/06/Busayo-Adeolu.jpg',0,'attachment','image/jpeg',0),(49,1,'2019-06-13 08:57:19','2019-06-13 08:57:19','','Lucia Martina','','inherit','open','closed','','lucia-martina','','','2019-06-13 08:57:19','2019-06-13 08:57:19','',0,'http://localhost:8080/wp-content/uploads/2019/06/Lucia-Martina.jpg',0,'attachment','image/jpeg',0),(50,1,'2019-06-13 09:02:21','2019-06-13 09:02:21','','Soma Zsuska','','inherit','open','closed','','soma-zsuska','','','2019-06-13 09:02:21','2019-06-13 09:02:21','',0,'http://localhost:8080/wp-content/uploads/2019/06/Soma-Zsuska.jpg',0,'attachment','image/jpeg',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(43,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_swedish_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_swedish_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_swedish_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Aisha'),(2,1,'first_name','Aisha'),(3,1,'last_name','Hassan'),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers','wp496_privacy'),(15,1,'show_welcome_panel','1'),(16,1,'session_tokens','a:1:{s:64:\"a619e8769df5dbb9591a297ade4f2e051e3e132db77787d592a01d6d6b688090\";a:4:{s:10:\"expiration\";i:1560516989;s:2:\"ip\";s:10:\"172.23.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36\";s:5:\"login\";i:1560344189;}}'),(17,1,'wp_user-settings','libraryContent=browse&mfold=o&editor=tinymce'),(18,1,'wp_user-settings-time','1560256451'),(19,1,'wp_dashboard_quick_press_last_post_id','4'),(20,1,'community-events-location','a:1:{s:2:\"ip\";s:10:\"172.23.0.0\";}'),(21,2,'nickname','Lucia Martina'),(22,2,'first_name','Lucia'),(23,2,'last_name','Martina'),(24,2,'description',''),(25,2,'rich_editing','true'),(26,2,'syntax_highlighting','true'),(27,2,'comment_shortcuts','false'),(28,2,'admin_color','fresh'),(29,2,'use_ssl','0'),(30,2,'show_admin_bar_front','true'),(31,2,'locale',''),(32,2,'wp_capabilities','a:1:{s:6:\"author\";b:1;}'),(33,2,'wp_user_level','2'),(34,2,'dismissed_wp_pointers',''),(35,3,'nickname','Soma Zsuska'),(36,3,'first_name','Soma'),(37,3,'last_name','Zsuska'),(38,3,'description',''),(39,3,'rich_editing','true'),(40,3,'syntax_highlighting','true'),(41,3,'comment_shortcuts','false'),(42,3,'admin_color','fresh'),(43,3,'use_ssl','0'),(44,3,'show_admin_bar_front','true'),(45,3,'locale',''),(46,3,'wp_capabilities','a:1:{s:6:\"author\";b:1;}'),(47,3,'wp_user_level','2'),(48,3,'dismissed_wp_pointers',''),(49,4,'nickname','Busayo Adeolu'),(50,4,'first_name','Busayo'),(51,4,'last_name','Adeolu'),(52,4,'description',''),(53,4,'rich_editing','true'),(54,4,'syntax_highlighting','true'),(55,4,'comment_shortcuts','false'),(56,4,'admin_color','fresh'),(57,4,'use_ssl','0'),(58,4,'show_admin_bar_front','true'),(59,4,'locale',''),(60,4,'wp_capabilities','a:1:{s:6:\"author\";b:1;}'),(61,4,'wp_user_level','2'),(62,4,'dismissed_wp_pointers',''),(63,5,'nickname','Ahupathi Udgam'),(64,5,'first_name','Ahupathi'),(65,5,'last_name','Udgam'),(66,5,'description',''),(67,5,'rich_editing','true'),(68,5,'syntax_highlighting','true'),(69,5,'comment_shortcuts','false'),(70,5,'admin_color','fresh'),(71,5,'use_ssl','0'),(72,5,'show_admin_bar_front','true'),(73,5,'locale',''),(74,5,'wp_capabilities','a:1:{s:6:\"author\";b:1;}'),(75,5,'wp_user_level','2'),(76,5,'dismissed_wp_pointers',''),(77,6,'nickname','Bilan Astur'),(78,6,'first_name','Bilan'),(79,6,'last_name','Astur'),(80,6,'description',''),(81,6,'rich_editing','true'),(82,6,'syntax_highlighting','true'),(83,6,'comment_shortcuts','false'),(84,6,'admin_color','midnight'),(85,6,'use_ssl','0'),(86,6,'show_admin_bar_front','true'),(87,6,'locale',''),(88,6,'wp_capabilities','a:1:{s:6:\"author\";b:1;}'),(89,6,'wp_user_level','2'),(90,6,'dismissed_wp_pointers',''),(91,1,'closedpostboxes_staff','a:0:{}'),(92,1,'metaboxhidden_staff','a:1:{i:0;s:7:\"slugdiv\";}'),(93,1,'closedpostboxes_acf-field-group','a:0:{}'),(94,1,'metaboxhidden_acf-field-group','a:1:{i:0;s:7:\"slugdiv\";}'),(95,6,'job_title','Founder/CEO of the Ecoforest'),(96,6,'_job_title','field_5cff9947d9b0d'),(97,6,'phone','358465489053'),(98,6,'_phone','field_5cff9a1ad9b0f'),(99,6,'email',''),(100,6,'_email','field_5cff99fdd9b0e'),(101,6,'profile_picture','45'),(102,6,'_profile_picture','field_5cff99fdd9b0e'),(103,4,'job_title','Management Forester'),(104,4,'_job_title','field_5cff9947d9b0d'),(105,4,'phone','358456789234'),(106,4,'_phone','field_5cff9a1ad9b0f'),(107,4,'profile_picture','48'),(108,4,'_profile_picture','field_5cff99fdd9b0e'),(109,6,'about_the_employee','Bilan practices forestry, the science, art, and manages forests. Foresters engage in a broad range of activities including ecological restoration and management of protected areas. He manage forests to provide a variety of objectives including direct extraction of raw material, outdoor recreation, conservation, hunting and aesthetics.'),(110,6,'_about_the_employee','field_5d00d248e2f1b'),(111,5,'job_title',' Founding Director and Sales Director of the Ecoforest Company'),(112,5,'_job_title','field_5cff9947d9b0d'),(113,5,'phone','358678935015'),(114,5,'_phone','field_5cff9a1ad9b0f'),(115,5,'profile_picture','47'),(116,5,'_profile_picture','field_5cff99fdd9b0e'),(117,5,'about_the_employee','Ahupathi is a founding Director of The Ecoforest Company. She has twenty years’ experience in the forestry industry giving her a wealth of knowledge. As the company’s Sales Director, she is responsible for forestry investment within the Company.'),(118,5,'_about_the_employee','field_5d00d248e2f1b'),(119,4,'about_the_employee','Busayo qualified as a Forester in 1996 and has been committed to her work within the industry ever since. With vast experience in state and private forestry sectors, Busayo is a vital part of the company’s team. '),(120,4,'_about_the_employee','field_5d00d248e2f1b'),(121,2,'job_title','Assistant Manager of the Production Department'),(122,2,'_job_title','field_5cff9947d9b0d'),(123,2,'phone','358497624901'),(124,2,'_phone','field_5cff9a1ad9b0f'),(125,2,'profile_picture','49'),(126,2,'_profile_picture','field_5cff99fdd9b0e'),(127,2,'about_the_employee','Lucia has over 15 years experience in the Forestry Sector as a graduate of the University of Central Lancashire with a BSc in Forestry. He also established a forestry on his home farm.'),(128,2,'_about_the_employee','field_5d00d248e2f1b'),(129,3,'job_title','Manager, Human Resources Department'),(130,3,'_job_title','field_5cff9947d9b0d'),(131,3,'phone','358479824501'),(132,3,'_phone','field_5cff9a1ad9b0f'),(133,3,'profile_picture','50'),(134,3,'_profile_picture','field_5cff99fdd9b0e'),(135,3,'about_the_employee','Soma graduated from Cock College of Commerce in 2007 with a certificate in Human Management & Administration. After working in the Customer Service industry for 7 years Soma decided to pursue a new career path and joined Ecoforest in May 2009.\r\n\r\nAs the manager in the Human resource department he is responsible for our recruitment of staff and is based in the Head Office.'),(136,3,'_about_the_employee','field_5d00d248e2f1b');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'Aisha','$P$BGOA1dH8dVXDNKvHtemjogoOTYWCbm1','aisha','aishahhassan21@gmail.com','','2019-06-10 12:04:42','',0,'Aisha'),(2,'Lucia Martina','$P$B6MM/d6kobGCrMSz3RbHoehGP2MNE6.','lucia-martina','lucia.martina@ecoforest.com','','2019-06-11 07:58:18','1560239898:$P$BLcktjMQJGX4VGOQ.vKolItziKU9Zd/',0,'Lucia Martina'),(3,'Soma Zsuska','$P$BFRItPeR9/xXn9nw7YG6oLevP5GwM1.','soma-zsuska','soma.zsuska@ecoforest.com','','2019-06-11 08:02:18','1560240138:$P$BJjGcz6lXCVEMu6dk5XFbPwepLt4h7.',0,'Soma Zsuska'),(4,'Busayo Adeolu','$P$B9olIfw4L1OoIian9DMLwsqKFIFF4J.','busayo-adeolu','busayo.adeolu@ecoforest.com','','2019-06-11 11:08:44','1560251324:$P$BnHsvzhRZbmbyQFgKIKR5a9fLr/K9K0',0,'Busayo Adeolu'),(5,'Ahupathi Udgam','$P$ByPZHg/RWljcEIfOjkBzElU4vwpLdW0','ahupathi-udgam','ahupathi.udgam@ecoforest.com','','2019-06-11 11:11:05','1560251465:$P$Be4AP4a6Xq3UchlRBbKWK/iEq5xsPn1',0,'Ahupathi Udgam'),(6,'Bilan Astur','$P$BsgY8cr6tjR2xRUg6.h0ImyTtjGmvz1','bilan-astur','bilan.astur@ecoforest.com','','2019-06-11 11:13:05','1560251586:$P$BvfuXQOLkCMjw0aq3k/bgknsvDNzG01',0,'Bilan Astur');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-13 11:44:41
