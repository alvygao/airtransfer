-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 05 2012 г., 13:14
-- Версия сервера: 5.0.91
-- Версия PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `nmt223_airtransfer`
--

-- --------------------------------------------------------

--
-- Структура таблицы `professions`
--

CREATE TABLE IF NOT EXISTS `professions` (
  `profession_id` int(11) NOT NULL auto_increment,
  `profession_en` varchar(45) NOT NULL,
  `profession_ru` varchar(45) default NULL,
  `approved` set('0','1') NOT NULL default '1',
  `profession_area` int(11) NOT NULL default '0',
  `order` int(11) NOT NULL default '99999',
  PRIMARY KEY  (`profession_id`),
  UNIQUE KEY `profession_en_UNIQUE` (`profession_en`),
  UNIQUE KEY `profession_ru_UNIQUE` (`profession_ru`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Дамп данных таблицы `professions`
--

INSERT INTO `professions` (`profession_id`, `profession_en`, `profession_ru`, `approved`, `profession_area`, `order`) VALUES
(1, 'Anesthesiologist', 'анестезиолог', '1', 0, 99999),
(2, 'Internist', 'терапевт', '1', 0, 99999),
(3, 'Obstetricians/Gynecologist', 'акушер/гинеколог', '1', 0, 99999),
(4, 'Maxillofacial surgeon', 'челюстно-лицевой хирург', '1', 0, 99999),
(5, 'Orthodontist', 'ортодонт', '1', 0, 99999),
(6, 'Surgeon', 'хирург', '1', 0, 99999),
(7, 'Psychiatrist', 'психиатр', '1', 0, 99999),
(8, 'Chief executive', 'генеральный директор', '1', 0, 99999),
(9, 'Prosthodontist', 'ортопед', '1', 0, 99999),
(10, 'Family practitioner', 'семейный врач', '1', 0, 99999),
(11, 'General practitioner', 'врач общего профиля', '1', 0, 99999),
(12, 'Pediatrician', 'педиатр', '1', 0, 99999),
(13, 'Pilot', 'пилот гражданской авиации', '1', 0, 2),
(14, 'Airline co-pilot', 'второй пилот гражданской авиации', '1', 0, 2),
(15, 'Flight engineer', 'бортинженер', '1', 0, 2),
(16, 'Dentist', 'стоматолог', '1', 0, 99999),
(17, 'Air traffic controller', 'авиадиспетчер', '1', 0, 2),
(18, 'Engineering manager', 'главный инженер', '1', 0, 99999),
(19, 'Astronomer', 'астроном', '1', 0, 99999),
(20, 'Lawyer', 'юрист', '1', 0, 1),
(21, 'Judge', 'судья', '1', 0, 99999),
(22, 'Computer/information systems manager', 'менеджер компьютерных/информационных систем', '1', 0, 99999);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
