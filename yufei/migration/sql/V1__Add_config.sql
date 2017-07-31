# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 10.138.111.15 (MySQL 5.6.34)
# Database: pandora
# Generation Time: 2017-07-26 09:18:22 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `time_created` datetime NOT NULL,
  `uuid` varchar(64) NOT NULL,
  `k` varchar(128) NOT NULL,
  `v` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE_KEY` (`k`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;

INSERT INTO `config` (`id`, `time_created`, `uuid`, `k`, `v`)
VALUES
	(1,'2015-10-26 15:25:41','1','contact-cn','联系方式：999'),
	(2,'2015-10-26 15:25:41','2','contact-en','contact: 999'),
	(3,'2015-12-30 15:25:41','3','last-score-percent','10'),
	(4,'2015-12-30 15:25:41','4','non-bid-record-days','547'),
	(5,'2015-12-30 15:25:41','5','auto-filter-interval-days','365'),
	(6,'2015-12-30 15:25:41','6','default-role-uuid','496800144467968'),
	(7,'2017-03-29 15:25:41','7','editSignatureAccountIds','00954113,00952225'),
	(8,'2017-03-29 15:25:41','8','viewSignatureAccountIds','00954113');

/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
