-- MySQL dump 10.13  Distrib 5.1.31, for Win32 (ia32)
--
-- Host: localhost    Database: air_transfer_db
-- ------------------------------------------------------
-- Server version	5.1.31-community

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
-- Table structure for table `airports`
--

DROP TABLE IF EXISTS `airports`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `airports` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `a_city_id` int(11) DEFAULT NULL,
  `a_country_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `city_eng` varchar(255) DEFAULT NULL,
  `country_eng` varchar(255) DEFAULT NULL,
  `engName` varchar(255) DEFAULT NULL,
  `gmt_offset` float DEFAULT NULL,
  `iata_code` varchar(255) DEFAULT NULL,
  `iso_code` varchar(255) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `runway_elevation` float DEFAULT NULL,
  `runway_length` float DEFAULT NULL,
  `city_rus` varchar(255) DEFAULT NULL,
  `country_rus` varchar(255) DEFAULT NULL,
  `name_rus` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `airports`
--

LOCK TABLES `airports` WRITE;
/*!40000 ALTER TABLE `airports` DISABLE KEYS */;
/*!40000 ALTER TABLE `airports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authentication_request`
--

DROP TABLE IF EXISTS `authentication_request`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `authentication_request` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `processed` bit(1) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3A9883C83B73E058` (`user_id`),
  CONSTRAINT `FK3A9883C83B73E058` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `authentication_request`
--

LOCK TABLES `authentication_request` WRITE;
/*!40000 ALTER TABLE `authentication_request` DISABLE KEYS */;
INSERT INTO `authentication_request` VALUES (1,'2011-12-18 16:13:53','','74720027953813a166014bf85dfa835a',1);
/*!40000 ALTER TABLE `authentication_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodies`
--

DROP TABLE IF EXISTS `bodies`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `bodies` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `country_eng` varchar(255) DEFAULT NULL,
  `country_rus` varchar(255) DEFAULT NULL,
  `eng_name` varchar(255) DEFAULT NULL,
  `rus_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `bodies`
--

LOCK TABLES `bodies` WRITE;
/*!40000 ALTER TABLE `bodies` DISABLE KEYS */;
INSERT INTO `bodies` VALUES (1,NULL,NULL,NULL,'Strong','Silniy'),(2,NULL,NULL,NULL,'Slim','Atletichnu');
/*!40000 ALTER TABLE `bodies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `countries` (
  `country_rus` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_eng` varchar(64) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES ('Австралия','Australia',1,NULL),('Австрия','Austria',2,NULL),('Алжир','Algeria',3,NULL),('Ангола','Angola',4,NULL),('Антарктида','Antarctica',5,NULL),('Аргентина','Argentina',6,NULL),('Афганистан','Afghanistan',7,NULL),('Багамские острова','Bahamas',8,NULL),('Бангладеш','Bangladesh',9,NULL),('Беларусь','Belarus',10,NULL),('Белиз','Belize',11,NULL),('Бельгия','Belgium',12,NULL),('Болгария','Bulgaria',13,NULL),('Боливия','Bolivia',14,NULL),('Босния и Герцеговина','Bosnia And Herzegovina',15,NULL),('Бразилия','Brazil',16,NULL),('Британские Виргинские острова','British Virgin Islands',17,NULL),('Буркина-Фасо','Burkina Faso',18,NULL),('Вануату','Vanuatu',19,NULL),('Великобритания','United Kingdom',20,NULL),('Венесуэла','Venezuela',21,NULL),('Вьетнам','Vietnam',22,NULL),('Габон','Gabon',23,NULL),('Гаити','Haiti',24,NULL),('Гайана','Guyana',25,NULL),('Гана','Ghana',26,NULL),('Гватемала','Guatemala',27,NULL),('Германия','Germany',28,NULL),('Гондурас','Honduras',29,NULL),('Гонконг','Hong Kong',30,NULL),('Гренландия','Greenland',31,NULL),('Греция','Greece',32,NULL),('Гуам','Guam (USA)',33,NULL),('Дания','Denmark',34,NULL),('Демократическая республика Конго','Democratic Republic Of Congo',35,NULL),('Египет','Egypt',36,NULL),('Замбия','Zambia',37,NULL),('Западная Сахара','Western Sahara',38,NULL),('Зимбабве','Zimbabwe',39,NULL),('Израиль','Israel',40,NULL),('Индия','India',41,NULL),('Индонезия','Indonesia',42,NULL),('Ирак','Iraq',43,NULL),('Иран','Iran',44,NULL),('Ирландия','Ireland',45,NULL),('Исландия','Iceland',46,NULL),('Испания','Spain',47,NULL),('Италия','Italy',48,NULL),('Йемен','Yemen',49,NULL),('Кабо-Верде','Cape Verde',50,NULL),('Казахстан','Kazakhstan',51,NULL),('Камбоджа','Cambodia',52,NULL),('Камерун','Cameroon',53,NULL),('Канада','Canada',54,NULL),('Катар','Qatar',55,NULL),('Кения','Kenya',56,NULL),('Кирибати','Kiribati',57,NULL),('Китай','China',58,NULL),('Колумбия','Colombia',59,NULL),('Коморские острова','Comoros',60,NULL),('Коста-Рика','Costa Rica',61,NULL),('Кот д\' Ивуар','Cote D\' Ivoire',62,NULL),('Куба','Cuba',63,NULL),('Кувейт','Kuwait',64,NULL),('Кыргызстан','Kyrgyzstan',65,NULL),('Лаос','Laos',66,NULL),('Латвия','Latvia',67,NULL),('Лесото','Lesotho',68,NULL),('Либерия','Liberia',69,NULL),('Ливан','Lebanon',70,NULL),('Ливия','Libya',71,NULL),('Литва','Lithuania',72,NULL),('Мавритания','Mauritania',73,NULL),('Мадагаскар','Madagascar',74,NULL),('Малави','Malawi',75,NULL),('Малайзия','Malaysia',76,NULL),('Мали','Mali',77,NULL),('Марокко','Morocco',78,NULL),('Маршалловы острова','Marshall Islands',79,NULL),('Мексика','Mexico',80,NULL),('Микронезия','Federated States of Micronesia',81,NULL),('Мозамбик','Mozambique',82,NULL),('Монголия','Mongolia',83,NULL),('Мьянма','Myanmar',84,NULL),('Намибия','Namibia',85,NULL),('Непал','Nepal',86,NULL),('Нигер','Niger',87,NULL),('Нигерия','Nigeria',88,NULL),('Нидерланды','Netherlands',89,NULL),('Никарагуа','Nicaragua',90,NULL),('Новая Зеландия','New Zealand',91,NULL),('Новая Каледония','New Caledonia',92,NULL),('Норвегия','Norway',93,NULL),('Оман','Oman',94,NULL),('Остров Рождества','Christmas Island',95,NULL),('Острова Уоллис и Футуна','Wallis and Futuna Islands',96,NULL),('Пакистан','Pakistan',97,NULL),('Панама','Panama',98,NULL),('Папуа - Новая Гвинея','Papua New Guinea',99,NULL),('Парагвай','Paraguay',100,NULL),('Перу','Peru',101,NULL),('Польша','Poland',102,NULL),('Португалия','Portugal',103,NULL),('Пуэрто Рико','Puerto Rico',104,NULL),('Реюньон','Reunion',105,NULL),('Россия','Russian Federation',106,NULL),('Румыния','Romania',107,NULL),('Сан-Томе и Принсипи','Sao Tome and Principe',108,NULL),('Саудовская Аравия','Saudi Arabia',109,NULL),('Сенегал','Senegal',110,NULL),('Сент-Винсент и Гренадины','Saint Vincent and the Grenadines',111,NULL),('Сент-Люсия','Saint Lucia',112,NULL),('Сербия','Serbia',113,NULL),('Сингапур','Singapore',114,NULL),('Соломоновы острова','Solomon Islands',115,NULL),('Судан','Sudan',116,NULL),('Суринам','Suriname',117,NULL),('США','United States',118,NULL),('Сьерра-Леоне','Sierra Leone',119,NULL),('Таиланд','Thailand',120,NULL),('Тайвань','Taiwan',121,NULL),('Танзания','Tanzania',122,NULL),('Теркс и Кайкос','Turks and Caicos Islands',123,NULL),('Тунис','Tunisia',124,NULL),('Турция','Turkey',125,NULL),('Уганда','Uganda',126,NULL),('Узбекистан','Uzbekistan',127,NULL),('Украина','Ukraine',128,NULL),('Уругвай','Uruguay',129,NULL),('Фиджи','Fiji',130,NULL),('Филиппины','Philippines',131,NULL),('Финляндия','Finland',132,NULL),('Франция','France',133,NULL),('Французская Гвиана','French Guiana',134,NULL),('Французская Полинезия','French Polynesia',135,NULL),('Хорватия','Croatia',136,NULL),('Черногория','Montenegro',137,NULL),('Чехия','Czech Republic',138,NULL),('Чили','Chile',139,NULL),('Швейцария','Switzerland',140,NULL),('Швеция','Sweden',141,NULL),('Шри-Ланка','Sri Lanka',142,NULL),('Эквадор','Ecuador',143,NULL),('Эстония','Estonia',144,NULL),('Эфиопия','Ethiopia',145,NULL),('ЮАР','South Africa',146,NULL),('Южная Корея','Korea (South)',147,NULL),('Япония','Japan',148,NULL);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `languages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `country_eng` varchar(255) DEFAULT NULL,
  `country_rus` varchar(255) DEFAULT NULL,
  `eng_name` varchar(255) DEFAULT NULL,
  `rus_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,NULL,NULL,NULL,'English','Angl'),(2,NULL,NULL,NULL,'Russian','Ruski');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professions`
--

DROP TABLE IF EXISTS `professions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `professions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `eng_name` varchar(255) DEFAULT NULL,
  `rus_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `professions`
--

LOCK TABLES `professions` WRITE;
/*!40000 ALTER TABLE `professions` DISABLE KEYS */;
INSERT INTO `professions` VALUES (1,NULL,'Student',''),(2,NULL,'Teacher','');
/*!40000 ALTER TABLE `professions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `profiles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `aboutMe` text,
  `appearance` varchar(255) DEFAULT NULL,
  `bithday` datetime DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `books` varchar(255) DEFAULT NULL,
  `cellPhone` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `currentCity` varchar(255) DEFAULT NULL,
  `currentCountry` varchar(255) DEFAULT NULL,
  `familyStatus` varchar(255) DEFAULT NULL,
  `firstLanguage` varchar(255) DEFAULT NULL,
  `fistName` varchar(255) DEFAULT NULL,
  `height` float DEFAULT NULL,
  `interest` varchar(255) DEFAULT NULL,
  `is_male` bit(1) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `lifeGoals` varchar(255) DEFAULT NULL,
  `movies` varchar(255) DEFAULT NULL,
  `music` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `secondLanguage` varchar(255) DEFAULT NULL,
  `siteUrl` varchar(255) DEFAULT NULL,
  `skypeId` varchar(255) DEFAULT NULL,
  `thirdLanguage` varchar(255) DEFAULT NULL,
  `width` float DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `is_female` bit(1) DEFAULT NULL,
  `body_id` bigint(20) DEFAULT NULL,
  `firstLanguage_id` bigint(20) DEFAULT NULL,
  `occupation_id` bigint(20) DEFAULT NULL,
  `secondLanguage_id` bigint(20) DEFAULT NULL,
  `thirdLanguage_id` bigint(20) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `currentCountry_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC442ABEA3B73E058` (`user_id`),
  KEY `FKC442ABEA7532745C` (`thirdLanguage_id`),
  KEY `FKC442ABEA47767CF8` (`body_id`),
  KEY `FKC442ABEAD37D2F73` (`firstLanguage_id`),
  KEY `FKC442ABEA49D2BB2F` (`secondLanguage_id`),
  KEY `FKC442ABEA6BAA1189` (`occupation_id`),
  KEY `FKC442ABEAE59FBCF5` (`currentCountry_id`),
  KEY `FKC442ABEA2423C2BC` (`country_id`),
  CONSTRAINT `FKC442ABEA2423C2BC` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  CONSTRAINT `FKC442ABEA3B73E058` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKC442ABEA47767CF8` FOREIGN KEY (`body_id`) REFERENCES `bodies` (`id`),
  CONSTRAINT `FKC442ABEA49D2BB2F` FOREIGN KEY (`secondLanguage_id`) REFERENCES `languages` (`id`),
  CONSTRAINT `FKC442ABEA6BAA1189` FOREIGN KEY (`occupation_id`) REFERENCES `professions` (`id`),
  CONSTRAINT `FKC442ABEA7532745C` FOREIGN KEY (`thirdLanguage_id`) REFERENCES `languages` (`id`),
  CONSTRAINT `FKC442ABEAD37D2F73` FOREIGN KEY (`firstLanguage_id`) REFERENCES `languages` (`id`),
  CONSTRAINT `FKC442ABEAE59FBCF5` FOREIGN KEY (`currentCountry_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (2,NULL,NULL,'sdfsdf',NULL,'body123','sdfsdf','sdfsf','sfsaf','country','wasdfsf','current country','asdfsd','first language',NULL,0,'sdfsdf','','sdfsd',NULL,'sfdsa','music','occupation','sdfsdf','secondLanguage','saqweasd','sdfsf','third language',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,123,123);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reset_password_link`
--

DROP TABLE IF EXISTS `reset_password_link`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `reset_password_link` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `processed` bit(1) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKFF6A102E3B73E058` (`user_id`),
  CONSTRAINT `FKFF6A102E3B73E058` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `reset_password_link`
--

LOCK TABLES `reset_password_link` WRITE;
/*!40000 ALTER TABLE `reset_password_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `reset_password_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_sessions`
--

DROP TABLE IF EXISTS `user_sessions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user_sessions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `jsession_id` varchar(255) DEFAULT NULL,
  `headers` text,
  `ip` varchar(255) DEFAULT NULL,
  `timeToLive` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK56C32A913B73E058` (`user_id`),
  CONSTRAINT `FK56C32A913B73E058` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user_sessions`
--

LOCK TABLES `user_sessions` WRITE;
/*!40000 ALTER TABLE `user_sessions` DISABLE KEYS */;
INSERT INTO `user_sessions` VALUES (1,'2011-12-18 16:16:29','125eryd86isb3',NULL,NULL,30,NULL,1),(2,'2011-12-18 16:16:49','mdysg63r5dwp',NULL,NULL,30,NULL,1),(3,'2011-12-18 17:26:04','rdvy6guowndb',NULL,NULL,30,NULL,1),(4,'2011-12-18 17:34:47','okyej78u0g0h',NULL,NULL,30,NULL,1),(5,'2011-12-18 17:50:36','1tfga0su382ze',NULL,NULL,30,NULL,1),(6,'2011-12-18 17:52:24','1dfsnaigwykd5',NULL,NULL,30,NULL,1),(7,'2011-12-18 17:55:23','nmkv8h8iuvbs',NULL,NULL,30,NULL,1),(8,'2011-12-18 17:57:24','80i140c5ol8g',NULL,NULL,30,NULL,1),(9,'2011-12-18 18:15:02','de3v21y5qs3g',NULL,NULL,30,NULL,1),(10,'2011-12-18 18:28:03','bwexupb7ohrm',NULL,NULL,30,NULL,1),(11,'2011-12-18 18:31:10','1dtb4lam1utxi',NULL,NULL,30,NULL,1),(12,'2011-12-18 18:39:12','1x6djiqpbupuq',NULL,NULL,30,NULL,1),(13,'2011-12-18 18:44:08','kvhf5blak19m',NULL,NULL,30,NULL,1),(14,'2011-12-18 19:05:15','1hnk6xxgy6owg',NULL,NULL,30,NULL,1),(15,'2011-12-18 21:37:19','13xzectpnlevb',NULL,NULL,30,NULL,1),(16,'2011-12-19 13:21:22','11cq2tvgwb8b0',NULL,NULL,30,NULL,1),(17,'2011-12-21 21:11:44','1cwj6560u5bx2',NULL,NULL,30,NULL,1),(18,'2011-12-21 21:13:24','70l4nkbt27iv',NULL,NULL,30,NULL,1),(19,'2011-12-21 23:16:30','b9s1k3stzxdy',NULL,NULL,30,NULL,1),(20,'2011-12-22 15:11:09','13acxwv5lqeg3',NULL,NULL,30,NULL,1),(21,'2011-12-22 15:52:40','1mt6w31f485hw',NULL,NULL,30,NULL,1),(22,'2011-12-22 16:32:17','zctd34rkperk',NULL,NULL,30,NULL,1),(23,'2011-12-22 17:14:39','zup0pw07ynwd',NULL,NULL,30,NULL,1),(24,'2011-12-22 17:32:55','z4xvv1650nr6',NULL,NULL,30,NULL,1),(25,'2011-12-22 17:54:44','az3tr5fa0l56',NULL,NULL,30,NULL,1),(26,'2011-12-22 17:57:32','1ih4xavcbk7ez',NULL,NULL,30,NULL,1);
/*!40000 ALTER TABLE `user_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `approved` bit(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2011-12-18 16:13:53','','123@123',NULL,'123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-12-22 16:27:36
