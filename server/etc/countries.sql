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
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES ('Австралия','Australia',1,NULL),('Австрия','Austria',2,NULL),('Алжир','Algeria',3,NULL),('Ангола','Angola',4,NULL),('Антарктида','Antarctica',5,NULL),('Аргентина','Argentina',6,NULL),('Афганистан','Afghanistan',7,NULL),('Багамские острова','Bahamas',8,NULL),('Бангладеш','Bangladesh',9,NULL),('Беларусь','Belarus',10,NULL),('Белиз','Belize',11,NULL),('Бельгия','Belgium',12,NULL),('Болгария','Bulgaria',13,NULL),('Боливия','Bolivia',14,NULL),('Босния и Герцеговина','Bosnia And Herzegovina',15,NULL),('Бразилия','Brazil',16,NULL),('Британские Виргинские острова','British Virgin Islands',17,NULL),('Буркина-Фасо','Burkina Faso',18,NULL),('Вануату','Vanuatu',19,NULL),('Великобритания','United Kingdom',20,NULL),('Венесуэла','Venezuela',21,NULL),('Вьетнам','Vietnam',22,NULL),('Габон','Gabon',23,NULL),('Гаити','Haiti',24,NULL),('Гайана','Guyana',25,NULL),('Гана','Ghana',26,NULL),('Гватемала','Guatemala',27,NULL),('Германия','Germany',28,NULL),('Гондурас','Honduras',29,NULL),('Гонконг','Hong Kong',30,NULL),('Гренландия','Greenland',31,NULL),('Греция','Greece',32,NULL),('Гуам','Guam (USA)',33,NULL),('Дания','Denmark',34,NULL),('Демократическая республика Конго','Democratic Republic Of Congo',35,NULL),('Египет','Egypt',36,NULL),('Замбия','Zambia',37,NULL),('Западная Сахара','Western Sahara',38,NULL),('Зимбабве','Zimbabwe',39,NULL),('Израиль','Israel',40,NULL),('Индия','India',41,NULL),('Индонезия','Indonesia',42,NULL),('Ирак','Iraq',43,NULL),('Иран','Iran',44,NULL),('Ирландия','Ireland',45,NULL),('Исландия','Iceland',46,NULL),('Испания','Spain',47,NULL),('Италия','Italy',48,NULL),('Йемен','Yemen',49,NULL),('Кабо-Верде','Cape Verde',50,NULL),('Казахстан','Kazakhstan',51,NULL),('Камбоджа','Cambodia',52,NULL),('Камерун','Cameroon',53,NULL),('Канада','Canada',54,NULL),('Катар','Qatar',55,NULL),('Кения','Kenya',56,NULL),('Кирибати','Kiribati',57,NULL),('Китай','China',58,NULL),('Колумбия','Colombia',59,NULL),('Коморские острова','Comoros',60,NULL),('Коста-Рика','Costa Rica',61,NULL),('Кот д\' Ивуар','Cote D\' Ivoire',62,NULL),('Куба','Cuba',63,NULL),('Кувейт','Kuwait',64,NULL),('Кыргызстан','Kyrgyzstan',65,NULL),('Лаос','Laos',66,NULL),('Латвия','Latvia',67,NULL),('Лесото','Lesotho',68,NULL),('Либерия','Liberia',69,NULL),('Ливан','Lebanon',70,NULL),('Ливия','Libya',71,NULL),('Литва','Lithuania',72,NULL),('Мавритания','Mauritania',73,NULL),('Мадагаскар','Madagascar',74,NULL),('Малави','Malawi',75,NULL),('Малайзия','Malaysia',76,NULL),('Мали','Mali',77,NULL),('Марокко','Morocco',78,NULL),('Маршалловы острова','Marshall Islands',79,NULL),('Мексика','Mexico',80,NULL),('Микронезия','Federated States of Micronesia',81,NULL),('Мозамбик','Mozambique',82,NULL),('Монголия','Mongolia',83,NULL),('Мьянма','Myanmar',84,NULL),('Намибия','Namibia',85,NULL),('Непал','Nepal',86,NULL),('Нигер','Niger',87,NULL),('Нигерия','Nigeria',88,NULL),('Нидерланды','Netherlands',89,NULL),('Никарагуа','Nicaragua',90,NULL),('Новая Зеландия','New Zealand',91,NULL),('Новая Каледония','New Caledonia',92,NULL),('Норвегия','Norway',93,NULL),('Оман','Oman',94,NULL),('Остров Рождества','Christmas Island',95,NULL),('Острова Уоллис и Футуна','Wallis and Futuna Islands',96,NULL),('Пакистан','Pakistan',97,NULL),('Панама','Panama',98,NULL),('Папуа - Новая Гвинея','Papua New Guinea',99,NULL),('Парагвай','Paraguay',100,NULL),('Перу','Peru',101,NULL),('Польша','Poland',102,NULL),('Португалия','Portugal',103,NULL),('Пуэрто Рико','Puerto Rico',104,NULL),('Реюньон','Reunion',105,NULL),('Россия','Russian Federation',106,NULL),('Румыния','Romania',107,NULL),('Сан-Томе и Принсипи','Sao Tome and Principe',108,NULL),('Саудовская Аравия','Saudi Arabia',109,NULL),('Сенегал','Senegal',110,NULL),('Сент-Винсент и Гренадины','Saint Vincent and the Grenadines',111,NULL),('Сент-Люсия','Saint Lucia',112,NULL),('Сербия','Serbia',113,NULL),('Сингапур','Singapore',114,NULL),('Соломоновы острова','Solomon Islands',115,NULL),('Судан','Sudan',116,NULL),('Суринам','Suriname',117,NULL),('США','United States',118,NULL),('Сьерра-Леоне','Sierra Leone',119,NULL),('Таиланд','Thailand',120,NULL),('Тайвань','Taiwan',121,NULL),('Танзания','Tanzania',122,NULL),('Теркс и Кайкос','Turks and Caicos Islands',123,NULL),('Тунис','Tunisia',124,NULL),('Турция','Turkey',125,NULL),('Уганда','Uganda',126,NULL),('Узбекистан','Uzbekistan',127,NULL),('Украина','Ukraine',128,NULL),('Уругвай','Uruguay',129,NULL),('Фиджи','Fiji',130,NULL),('Филиппины','Philippines',131,NULL),('Финляндия','Finland',132,NULL),('Франция','France',133,NULL),('Французская Гвиана','French Guiana',134,NULL),('Французская Полинезия','French Polynesia',135,NULL),('Хорватия','Croatia',136,NULL),('Черногория','Montenegro',137,NULL),('Чехия','Czech Republic',138,NULL),('Чили','Chile',139,NULL),('Швейцария','Switzerland',140,NULL),('Швеция','Sweden',141,NULL),('Шри-Ланка','Sri Lanka',142,NULL),('Эквадор','Ecuador',143,NULL),('Эстония','Estonia',144,NULL),('Эфиопия','Ethiopia',145,NULL),('ЮАР','South Africa',146,NULL),('Южная Корея','Korea (South)',147,NULL),('Япония','Japan',148,NULL);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-12-27 19:25:58
