# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.31)
# Database: exam_log
# Generation Time: 2020-09-18 07:32:04 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table exam_input
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exam_input`;

CREATE TABLE `exam_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自動番号付与(AI)',
  `crnt_date` datetime NOT NULL COMMENT '入力日時',
  `todohuken` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '都道府県',
  `fname` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '氏名の一番目',
  `lname` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '氏名の二番目',
  `viewcnt` int(11) NOT NULL COMMENT '参加人数',
  `ip_addr` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'ユーザーIP Address',
  `referer` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'ユーザーReferer',
  `usr_agent` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'ユーザーAgent',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `exam_input` WRITE;
/*!40000 ALTER TABLE `exam_input` DISABLE KEYS */;

INSERT INTO `exam_input` (`id`, `crnt_date`, `todohuken`, `fname`, `lname`, `viewcnt`, `ip_addr`, `referer`, `usr_agent`)
VALUES
	(1,'2020-09-18 06:24:32','神奈川県','孫','燕洋',2,'127.0.0.1','http://127.0.0.1:8081/','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
	(2,'2020-09-18 06:26:20','神奈川県','陳','希',2,'127.0.0.1','http://127.0.0.1:8081/','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
	(3,'2020-09-18 06:26:53','北海道','外村','拓海',1,'127.0.0.1','http://127.0.0.1:8081/','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
	(4,'2020-09-18 06:27:30','大阪府','中西','雄大',3,'127.0.0.1','http://127.0.0.1:8081/','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
	(5,'2020-09-18 06:28:46','東京都','俣江','亮',3,'127.0.0.1','http://127.0.0.1:8081/','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
	(6,'2020-09-18 07:26:32','東京都','川原','江都子',5,'127.0.0.1','http://127.0.0.1:8081/','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36');

/*!40000 ALTER TABLE `exam_input` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
