/*
SQLyog Ultimate v9.20 
MySQL - 5.5.16-log : Database - air_transfer_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`air_transfer_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `air_transfer_db`;

/*Data for the table `bodies` */

insert  into `bodies`(`id`,`created`,`eng_name`,`rus_name`) values (1,NULL,'Thin','Худощавое'),(2,NULL,'Usual','Обычное'),(3,NULL,'Sports','Спортивное'),(4,NULL,'Sports','Мускулистое'),(5,NULL,'Dense','Плотное'),(6,NULL,'Full','Полное');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
