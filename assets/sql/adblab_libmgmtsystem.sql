-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.27-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for adblab_libmgmtsystem
DROP DATABASE IF EXISTS `adblab_libmgmtsystem`;
CREATE DATABASE IF NOT EXISTS `adblab_libmgmtsystem` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `adblab_libmgmtsystem`;

-- Dumping structure for table adblab_libmgmtsystem.authors
CREATE TABLE IF NOT EXISTS `authors` (
  `author_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_name` varchar(64) NOT NULL,
  `author_description` varchar(256) DEFAULT NULL,
  `author_country` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.authors: ~53 rows (approximately)
INSERT INTO `authors` (`author_id`, `author_name`, `author_description`, `author_country`) VALUES
	(1, 'John von Neumann', 'random text', 'USA'),
	(4, 'Kevin Warwick', NULL, NULL),
	(5, 'Antonin Sertillanges', NULL, NULL),
	(6, 'P. F. Collier', NULL, NULL),
	(7, 'Jose Rizal', NULL, NULL),
	(8, 'Stephen Mumford', NULL, NULL),
	(9, 'Jonathan Haidt', NULL, NULL),
	(10, 'Julia Driver', NULL, NULL),
	(11, 'Anthony Kenny', NULL, NULL),
	(12, 'David Haines', NULL, NULL),
	(13, 'Saint Mary\'s Press', NULL, NULL),
	(14, 'Timothy J. Keller', NULL, NULL),
	(15, 'Lev Kantorovich', NULL, NULL),
	(16, 'Mark Twain', NULL, NULL),
	(18, 'J.J Parker', NULL, NULL),
	(19, 'Sylvie Waskiewicz, PhD', NULL, NULL),
	(20, 'Jennifer Hasty', NULL, NULL),
	(21, 'Mark Carl Rom', NULL, NULL),
	(22, 'Tonja R. Conerly', NULL, NULL),
	(23, 'David Shapiro', NULL, NULL),
	(24, 'Steven A. Greenlaw', NULL, NULL),
	(25, 'Rajiv Ranjan', NULL, NULL),
	(26, 'Erin Huebener', NULL, NULL),
	(27, 'Angela Kluge', NULL, NULL),
	(28, 'Henrik Liljegren', NULL, NULL),
	(29, 'Daniel Leisawitz', NULL, NULL),
	(30, 'Giuseppe Longo', NULL, NULL),
	(31, 'Plato', NULL, NULL),
	(32, 'Francis Bailly', NULL, NULL),
	(33, 'Hermann Weyl', NULL, NULL),
	(34, 'Royal Eugene Collins', NULL, NULL),
	(35, 'Gilbert Strang', NULL, NULL),
	(36, 'Octave Levenspiel', NULL, NULL),
	(37, 'Mieczyslaw Pokorski', NULL, NULL),
	(38, 'Michael Pollan', NULL, NULL),
	(39, 'Roland Ennos', NULL, NULL),
	(40, 'William D. Cohan', NULL, NULL),
	(41, 'Lewis Mumford', NULL, NULL),
	(42, 'Phaidon Press', NULL, NULL),
	(43, 'Paul N. Hasluck', NULL, NULL),
	(44, 'T.J Clark', NULL, NULL),
	(45, 'Kristen Lubben', NULL, NULL),
	(46, 'Walter E. Todd', NULL, NULL),
	(47, 'Chelsea Curtis Fraser', NULL, NULL),
	(48, 'Ernst Kreidolf', NULL, NULL),
	(49, 'Mary H. Eastman', NULL, NULL),
	(50, 'Frank V. Webster', NULL, NULL),
	(51, 'Charles Allen', NULL, NULL),
	(52, 'J. Clarke', NULL, NULL),
	(53, 'Elihu Burritt', NULL, NULL),
	(54, 'Newton D. Baker', NULL, NULL),
	(55, 'E Walter Walters', NULL, NULL),
	(56, 'Lynn Marecek', NULL, NULL);

-- Dumping structure for table adblab_libmgmtsystem.catalog
CREATE TABLE IF NOT EXISTS `catalog` (
  `catalog_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `publisher_id` bigint(20) NOT NULL,
  `dewey_index_id` smallint(6) DEFAULT NULL,
  `catalog_type_id` smallint(6) DEFAULT NULL,
  `isbn` varchar(13) DEFAULT NULL,
  `title` varchar(265) NOT NULL,
  `item_description` varchar(512) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `no_of_pages` smallint(6) DEFAULT NULL,
  `item_language` varchar(64) DEFAULT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`catalog_id`),
  KEY `publisher_id` (`publisher_id`),
  KEY `dewey_index_id` (`dewey_index_id`),
  KEY `catalog_type_id` (`catalog_type_id`),
  CONSTRAINT `catalog_ibfk_1` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`publisher_id`),
  CONSTRAINT `catalog_ibfk_2` FOREIGN KEY (`dewey_index_id`) REFERENCES `dewey_indices` (`dewey_index_id`),
  CONSTRAINT `catalog_ibfk_3` FOREIGN KEY (`catalog_type_id`) REFERENCES `catalog_types` (`catalog_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.catalog: ~53 rows (approximately)
INSERT INTO `catalog` (`catalog_id`, `publisher_id`, `dewey_index_id`, `catalog_type_id`, `isbn`, `title`, `item_description`, `publish_date`, `no_of_pages`, `item_language`, `price`) VALUES
	(1, 1, 1, 1, NULL, 'The Computer and the Brain', 'A book about computers', '1958-01-01', 300, 'English', 300.00),
	(2, 2, 6, 1, '978-041556483', 'Artificial Intelligence: The Basics 1st Edition', 'About Artificial Intelligence', '2011-08-18', 192, 'English', 350.00),
	(3, 1, 2, 1, '0813206464', 'The Intellectual Life: Its Spirit, Conditions, Methods', NULL, '1992-08-28', 264, 'English', 300.00),
	(4, 1, 30, 1, NULL, 'Collier’s Encyclopedia', NULL, NULL, NULL, 'English-British', 680.00),
	(5, 1, 91, 5, NULL, 'Noli Me Tangere ( Manuscript)', NULL, '0000-00-00', NULL, 'Filipino-Spanish', 500.00),
	(6, 1, 100, 1, NULL, 'The Republic: Global Classics ( Kindle Edition)', NULL, NULL, NULL, 'English', 420.00),
	(7, 1, 110, 1, NULL, 'Metaphysics: A Very Short Introduction', NULL, NULL, NULL, 'English', NULL),
	(8, 1, 126, 1, NULL, 'The Happiness Hypothesis: Finding Modern Truth in Ancient Wisdom', NULL, NULL, NULL, 'English', NULL),
	(9, 1, 170, 1, NULL, 'Ethics: The Fundamental', NULL, NULL, NULL, NULL, NULL),
	(10, 1, 190, 1, NULL, 'A New History of Western Philosophy', NULL, NULL, NULL, NULL, NULL),
	(11, 1, 209, 1, NULL, 'Natural Theology: A Biblical and Historical Introduction and Defense', NULL, NULL, NULL, NULL, NULL),
	(12, 1, 220, 1, NULL, 'The Catholic Youth Bible®, 4th Edition', NULL, NULL, NULL, NULL, NULL),
	(13, 1, 212, 1, NULL, 'The Reason for God: Belief in an Age of Skepticism', NULL, NULL, NULL, NULL, NULL),
	(14, 3, 221, 1, NULL, 'The Diaries of Adam and Eve', NULL, NULL, NULL, NULL, NULL),
	(15, 1, 211, 1, NULL, 'Knowing God ', NULL, NULL, NULL, NULL, NULL),
	(16, 1, 301, 1, NULL, 'Introduction to Anthropology', NULL, NULL, NULL, NULL, NULL),
	(17, 1, 320, 1, NULL, 'Introduction to Political Science', NULL, NULL, NULL, NULL, NULL),
	(18, 1, 330, 1, NULL, 'Principles of Macroeconomics 3e', NULL, NULL, NULL, NULL, NULL),
	(19, 1, 330, 1, NULL, 'Principle of Microeconomics ', NULL, NULL, NULL, NULL, NULL),
	(20, 5, 400, 1, NULL, 'Basic Urdu', NULL, NULL, NULL, NULL, NULL),
	(21, 1, 463, 1, NULL, 'Libro Libre: Beginning Spanish', 'About learning spanish', '2018-10-03', 788, 'Spanish', 635.00),
	(22, 1, 400, 1, NULL, 'A grammar of Papuan Malay', 'Linguistic description of Papuan Malay,', '2017-02-05', 726, NULL, NULL),
	(23, 1, 400, 1, NULL, 'A grammar of Palula', NULL, '2016-03-10', 479, NULL, 600.00),
	(24, 1, 450, 1, NULL, ' Spunti: Italiano elementare 1', 'About Italian language learning', '2018-06-17', 643, 'Italian', 780.00),
	(25, 4, 480, 1, NULL, 'Mathematics And The Natural Sciences: The Physical Singularity Of Life', NULL, '2011-03-04', 1567, 'English', 1150.00),
	(26, 1, 480, 1, NULL, 'Philosophy of Mathematics and Natural Science', NULL, '2021-09-14', 962, NULL, 1780.00),
	(27, 1, 301, 1, NULL, 'American Government 3e', NULL, '2021-07-28', NULL, NULL, NULL),
	(28, 4, 480, 1, NULL, 'Mathematical Methods for Physicists and Engineers: Second Corrected Edition', NULL, '2012-06-11', 1170, NULL, 1250.00),
	(30, 1, 480, 1, NULL, 'Mathematics for Natural Scientists: Fundamentals and Basics', NULL, '2012-07-11', 1169, 'Engslish', 1200.00),
	(31, 1, 480, 1, NULL, 'Mathematical Methods For The Natural And Engineering Sciences (Second Edition)', NULL, '2016-03-30', 1378, 'English', 1200.00),
	(32, 1, 480, 1, NULL, 'Calculus Volume 1', NULL, '2016-03-30', 875, NULL, 1250.00),
	(33, 1, 480, 1, NULL, 'Calculus Volume 2', NULL, '2012-07-11', 829, NULL, 750.00),
	(34, 1, 480, 1, NULL, 'Intermediate Algebra 2e', NULL, '2022-07-14', 1395, NULL, 900.00),
	(35, 1, 480, 1, NULL, 'Chemical Reaction Engineering, 3rd Edition', NULL, '1998-08-13', 783, NULL, 750.00),
	(36, 1, 480, 1, NULL, 'Respiratory System Diseases', NULL, '2017-07-09', 803, NULL, 549.00),
	(37, 10, 480, 1, NULL, 'The Botany of Desire: A Plant\'s-Eye View of the World', NULL, '2001-06-12', 849, NULL, 600.00),
	(38, 1, 480, 1, NULL, 'The Age of Wood: Our Most Useful Material and the Construction of Civilization', NULL, '2021-12-07', 1492, NULL, 999.00),
	(39, 1, 480, 1, NULL, 'Power Failure: The Rise and Fall of an American Icon', NULL, '2022-11-15', 704, NULL, 899.00),
	(40, 1, 480, 1, NULL, 'The City in History: Its Origins, Its Transformations, and Its Prospects', NULL, '1968-08-23', 989, NULL, 600.00),
	(41, 7, 480, 1, NULL, 'Black: Architecture in Monochrome', NULL, '2017-08-09', 709, NULL, 459.00),
	(42, 1, 480, 1, NULL, 'Working with Hand Tools: Essential Techniques for Woodworking', NULL, '2014-10-28', 1203, NULL, 1200.00),
	(43, 1, 480, 1, NULL, 'The Painting of Modern Life: Paris in the Art of Manet and his Followers', NULL, '1999-10-18', 2120, NULL, 750.00),
	(44, 1, 480, 1, NULL, 'Magnum Contact Sheets', NULL, '2017-10-24', 843, NULL, 789.00),
	(45, 1, 480, 1, NULL, 'A Little Sunshine', NULL, '1917-12-31', 890, NULL, 999.00),
	(46, 1, 480, 1, NULL, 'Around the world in ten days', NULL, '0000-00-00', 1011, NULL, 1150.00),
	(47, 1, 480, 1, NULL, 'Alpenblumenmärchen', NULL, '0000-00-00', 897, NULL, 1299.00),
	(48, 1, 480, 1, NULL, 'Aunt Phillis\'s cabin', NULL, '0000-00-00', 689, NULL, 750.00),
	(49, 8, 480, 1, NULL, 'Airship Andy, or, The luck of a brave boy', NULL, '0000-00-00', 989, NULL, 1500.00),
	(50, 6, 480, 1, NULL, 'Levels of Pennsylvania', NULL, '0000-00-00', 587, NULL, 380.00),
	(51, 1, 480, 1, NULL, 'The wreck of the Orion', NULL, '0000-00-00', 654, NULL, 750.00),
	(52, 9, 480, 1, NULL, 'A walk from London to Land\'s End and back', NULL, '0000-00-00', 867, NULL, 759.00),
	(53, 1, 480, 1, NULL, 'Frontiers of freedom', NULL, '0000-00-00', 654, NULL, 499.00),
	(54, 1, 480, 1, NULL, 'Heroic airmen and their exploits', NULL, '0000-00-00', 676, NULL, 900.00);

-- Dumping structure for table adblab_libmgmtsystem.catalog_authors
CREATE TABLE IF NOT EXISTS `catalog_authors` (
  `catalog_id` bigint(20) NOT NULL,
  `author_id` bigint(20) NOT NULL,
  KEY `catalog_id` (`catalog_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `catalog_authors_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`catalog_id`),
  CONSTRAINT `catalog_authors_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.catalog_authors: ~50 rows (approximately)
INSERT INTO `catalog_authors` (`catalog_id`, `author_id`) VALUES
	(25, 30),
	(26, 33),
	(31, 39),
	(32, 35),
	(3, 5),
	(4, 6),
	(5, 7),
	(7, 8),
	(6, 31),
	(8, 9),
	(9, 10),
	(10, 11),
	(11, 12),
	(12, 13),
	(13, 14),
	(14, 16),
	(15, 18),
	(16, 20),
	(17, 21),
	(18, 23),
	(1, 1),
	(2, 4),
	(19, 24),
	(20, 25),
	(21, 26),
	(22, 27),
	(23, 28),
	(24, 29),
	(28, 34),
	(30, 15),
	(33, 35),
	(34, 56),
	(35, 36),
	(36, 37),
	(37, 38),
	(38, 39),
	(39, 40),
	(40, 41),
	(41, 42),
	(42, 43),
	(43, 44),
	(44, 45),
	(45, 46),
	(47, 48),
	(48, 49),
	(49, 50),
	(50, 51),
	(51, 52),
	(53, 54),
	(27, 19);

-- Dumping structure for table adblab_libmgmtsystem.catalog_types
CREATE TABLE IF NOT EXISTS `catalog_types` (
  `catalog_type_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `catalog_type` varchar(128) NOT NULL,
  `catalog_type_description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`catalog_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.catalog_types: ~6 rows (approximately)
INSERT INTO `catalog_types` (`catalog_type_id`, `catalog_type`, `catalog_type_description`) VALUES
	(1, 'Book', NULL),
	(2, 'Magazines', NULL),
	(3, 'Maps', NULL),
	(4, 'Periodicals', NULL),
	(5, 'Manuscripts', NULL),
	(6, 'Films', NULL);

-- Dumping structure for table adblab_libmgmtsystem.colleges
CREATE TABLE IF NOT EXISTS `colleges` (
  `college_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `college_name` varchar(128) DEFAULT NULL,
  `college_description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`college_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.colleges: ~8 rows (approximately)
INSERT INTO `colleges` (`college_id`, `college_name`, `college_description`) VALUES
	(1, 'COE', 'College of Engineering'),
	(2, 'CHASS', 'College of Humanities and Social Sciences'),
	(3, 'CS', 'College of Science'),
	(4, 'CN', 'College of Nursing'),
	(5, 'CPT', 'College of Physical Therapy'),
	(6, 'PLMBS', 'PLM- Business School'),
	(7, 'CED', 'College of Education'),
	(8, 'CA', 'College of Architecture');

-- Dumping structure for table adblab_libmgmtsystem.departments
CREATE TABLE IF NOT EXISTS `departments` (
  `department_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(128) DEFAULT NULL,
  `department_description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8004 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.departments: ~7 rows (approximately)
INSERT INTO `departments` (`department_id`, `department_name`, `department_description`) VALUES
	(1, 'Arch Dept', 'Architecture Department'),
	(2, 'IT Dept', 'Information Technology Department'),
	(3, 'CS Department', 'College of Science Departmen'),
	(4, 'CM Department', 'College of Medicine Department'),
	(5, 'Eng Department', 'Engineering Department'),
	(6, 'CN Department', 'College of Nursing'),
	(7, 'Fil Educ Department', 'Filipino Education Department');

-- Dumping structure for table adblab_libmgmtsystem.dewey_classes
CREATE TABLE IF NOT EXISTS `dewey_classes` (
  `dewey_class_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `dewey_class_category` varchar(64) NOT NULL,
  `dewey_class_description` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`dewey_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.dewey_classes: ~10 rows (approximately)
INSERT INTO `dewey_classes` (`dewey_class_id`, `dewey_class_category`, `dewey_class_description`) VALUES
	(1, 'Generalities', NULL),
	(2, 'Philosophy & Psychology', NULL),
	(3, 'Religion', NULL),
	(4, 'Social Sciences', NULL),
	(5, 'Language', NULL),
	(6, 'Natural Sciences & Mathematics', NULL),
	(7, 'Applied Sciences (Technology)', NULL),
	(8, 'The Arts', NULL),
	(9, 'Literature & Rhetoric', NULL),
	(10, 'Geography & History', NULL);

-- Dumping structure for table adblab_libmgmtsystem.dewey_indices
CREATE TABLE IF NOT EXISTS `dewey_indices` (
  `dewey_index_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `dewey_class_id` smallint(6) NOT NULL,
  `dewey_index` varchar(128) NOT NULL,
  `dewey_index_description` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`dewey_index_id`),
  KEY `dewey_class_id` (`dewey_class_id`),
  CONSTRAINT `dewey_indices_ibfk_1` FOREIGN KEY (`dewey_class_id`) REFERENCES `dewey_classes` (`dewey_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18446744073709551615 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.dewey_indices: ~435 rows (approximately)
INSERT INTO `dewey_indices` (`dewey_index_id`, `dewey_class_id`, `dewey_index`, `dewey_index_description`) VALUES
	(1, 1, '001', 'Knowledge'),
	(2, 1, '002', 'The book'),
	(3, 1, '003', 'Systems'),
	(4, 1, '004', 'Data processing Computer science'),
	(5, 1, '005', 'Computer programming, programs, data'),
	(6, 1, '006', 'Special computer methods'),
	(10, 1, '010', 'Bibliography'),
	(11, 1, '011', 'Bibliographies'),
	(12, 1, '012', 'Bibliographies of individuals'),
	(13, 1, '013', 'Bibliographies of works by specific classes of authors'),
	(14, 1, '014', 'Bibliographies of anonymous and pseudonymous works'),
	(15, 1, '015', 'Bibliographies of works from specific places'),
	(16, 1, '016', 'Bibliographies of works from specific subjects'),
	(17, 1, '017', 'General subject catalogs'),
	(18, 1, '018', 'Catalogs arranged by author & date '),
	(19, 1, '019', 'Dictionary catalogs'),
	(20, 1, '020', 'Library & information sciences'),
	(21, 1, '021', 'Library relationships'),
	(22, 1, '022', 'Administration of the physical plant '),
	(23, 1, '023', 'Personnel administration'),
	(24, 1, '024', 'Not assigned or no longer used'),
	(25, 1, '025', 'Library operations'),
	(26, 1, '026', 'Libraries for specific subjects'),
	(27, 1, '027', 'General libraries'),
	(28, 1, '028', 'Reading and use of other information media'),
	(29, 1, '029', 'Not assigned or no longer used'),
	(30, 1, '030', 'General encyclopedic works '),
	(31, 1, '031', 'General encyclopedic works — American'),
	(32, 1, '032', 'General encyclopedic works in English'),
	(33, 1, '033', 'General encyclopedic works in other Germanic languages'),
	(34, 1, '034', 'General encyclopedic works in French'),
	(35, 1, '035', 'General encyclopedic works in Italian, Romanian, Rhaeto-Romanic'),
	(36, 1, '036', 'General encyclopedic works in Spanish & Portuguese'),
	(37, 1, '037', 'General encyclopedic works in Slavic languages'),
	(38, 1, '038', 'General encyclopedic works in Scandinavian languages'),
	(39, 1, '039', 'General encyclopedic works in other languages'),
	(50, 1, '050', 'General serials & their indexes'),
	(51, 1, '051', 'General serials & their indexes American'),
	(52, 1, '052', 'General serials & their indexes In English'),
	(53, 1, '053', 'General serials & their indexes In other Germanic languages'),
	(54, 1, '054', 'General serials & their indexes In French, Provencal, Catalan'),
	(55, 1, '055', 'General serials & their indexes In Italian, Romanian, Rhaeto-Romanic '),
	(56, 1, '056', 'General serials & their indexes In Spanish & Portuguese '),
	(57, 1, '057', 'General serials & their indexes In Slavic languages'),
	(58, 1, '058', 'General serials & their indexes In Scandinavian languages'),
	(59, 1, '059', 'General serials & their indexes In other languages'),
	(60, 1, '060', 'General organization & museology'),
	(61, 1, '061', 'General organization & museology In North America'),
	(62, 1, '062', ' General organization & museology In British Isles In England'),
	(63, 1, '063', ' General organization & museology In central Europe In Germany'),
	(64, 1, '064', 'General organization & museology In France '),
	(65, 1, '065', 'General organization & museology In Italy & adjacent territories'),
	(66, 1, '066', 'General organization & museology In Iberian Peninsula & adjacent islands'),
	(67, 1, '067', 'General organization & museology In eastern Europe In Soviet Union'),
	(68, 1, '068', 'General organization & museology In other areas'),
	(69, 1, '069', 'Museology (Museum science)'),
	(70, 1, '070', 'News media, journalism, publishing'),
	(71, 1, '071', 'News media, journalism, publishing In North America'),
	(72, 1, '072', 'News media, journalism, publishing In British Isles In England'),
	(73, 1, '073', 'News media, journalism, publishing In central Europe In Germany'),
	(74, 1, '074', 'News media, journalism, publishing In France & Monaco'),
	(75, 1, '075', 'News media, journalism, publishing In Italy & adjacent territories'),
	(76, 1, '076', 'News media, journalism, publishing In Iberian Peninsula & adjacent islands'),
	(77, 1, '077', 'News media, journalism, publishing In eastern Europe In Soviet Union'),
	(78, 1, '078', 'News media, journalism, publishing In Scandinavia'),
	(79, 1, '079', 'News media, journalism, publishing In other languages '),
	(80, 1, '080', 'General collections '),
	(81, 1, '081', 'General collections American'),
	(82, 1, '082', 'General collections In English'),
	(83, 1, '083', 'General collections In other Germanic languages'),
	(84, 1, '084', 'General collections In French, Provencal, Catalan'),
	(85, 1, '085', 'General collections In Italian, Romanian, Rhaeto-Romanic '),
	(86, 1, '086', 'General collections In Spanish & Portuguese'),
	(87, 1, '087', 'General collections In Slavic languages'),
	(88, 1, '088', 'General collections In Scandinavian languages'),
	(89, 1, '089', 'General collections In other languages'),
	(90, 1, '090', 'Manuscripts & rare books'),
	(91, 1, '091', 'Manuscripts'),
	(92, 1, '092', 'Block books'),
	(93, 1, '093', 'Incunabula'),
	(94, 1, '094', 'Printed books'),
	(95, 1, '095', 'Books notable for bindings'),
	(96, 1, '096', 'Books notable for illustrations'),
	(97, 1, '097', 'Books notable for ownership or origin'),
	(98, 1, '098', 'Prohibited works, forgeries, hoaxes '),
	(99, 1, '099', 'Books notable for format'),
	(100, 2, '100', 'Philosophy & psychology '),
	(101, 2, '101', 'Theory of philosophy'),
	(102, 2, '102', 'Miscellany of philosophy'),
	(103, 2, '103', 'Dictionaries of philosophy'),
	(104, 2, '104', 'Not assigned or no longer used'),
	(105, 2, '105', 'Serial publications of philosophy'),
	(106, 2, '106', 'Organizations of philosophy'),
	(107, 2, '107', 'Education, research in philosophy'),
	(108, 2, '108', 'Kinds of persons in philosophy'),
	(109, 2, '109', 'Historical treatment of philosophy'),
	(110, 2, '110', 'Metaphysics '),
	(111, 2, '111', 'Ontology'),
	(112, 2, '112', 'Not assigned or no longer used'),
	(113, 2, '113', 'Cosmology (Philosophy of nature)'),
	(114, 2, '114', 'Space'),
	(115, 2, '115', 'Time'),
	(116, 2, '116', 'Change'),
	(117, 2, '117', 'Structure'),
	(118, 2, '118', 'Force & Energy'),
	(119, 2, '119', 'Number & quantity'),
	(120, 2, '120', 'Epistemology, causation, humankind'),
	(121, 2, '121', 'Epistemology (Theory of knowledge)'),
	(122, 2, '122', 'Causation'),
	(123, 2, '123', 'Determinism & indeterminism'),
	(124, 2, '124', 'Teleology'),
	(126, 2, '126', 'The self'),
	(127, 2, '127', 'The unconscious & the subconscious'),
	(128, 2, '128', 'Humankind '),
	(129, 2, '129', 'Origin & destiny of individual souls'),
	(130, 2, '130', 'Paranormal phenomena'),
	(131, 2, '131', 'Occult methods for achieving well-being'),
	(133, 2, '133', 'Parapsychology & occultism'),
	(135, 2, '135', 'Dreams & mysteries'),
	(137, 2, '137', 'Divinatory graphology'),
	(138, 2, '138', 'Physiognomy'),
	(139, 2, '139', 'Phrenology'),
	(140, 2, '140', 'Specific philosophical schools'),
	(141, 2, '141', 'Idealism & related systems'),
	(142, 2, '142', 'Critical philosophy'),
	(143, 2, '143', 'Intuitionism & Bergsonism '),
	(144, 2, '144', 'Humanism & related systems'),
	(145, 2, '145', 'Sensationalism'),
	(146, 2, '146', 'Naturalism & related systems'),
	(147, 2, '147', 'Pantheism & related systems'),
	(148, 2, '148', 'Liberalism, eclecticism, traditionalism '),
	(149, 2, '149', 'Other philosophical systems'),
	(150, 2, '150', 'Psychology'),
	(152, 2, '152', 'Perception, movement, emotions, drives '),
	(153, 2, '153', 'Mental processes & intelligence'),
	(154, 2, '154', 'Subconscious & altered states '),
	(155, 2, '155', 'Differential & developmental psychology'),
	(156, 2, '156', 'Comparative psychology'),
	(158, 2, '158', 'Applied psychology'),
	(160, 2, '160', 'Logic'),
	(161, 2, '161', 'Induction'),
	(162, 2, '162', 'Deduction'),
	(165, 2, '165', 'Fallacies & sources of error'),
	(166, 2, '166', 'Syllogisms'),
	(167, 2, '167', 'Hypotheses'),
	(168, 2, '168', 'Argument & persuasion'),
	(169, 2, '169', 'Analogy'),
	(170, 2, '170', 'Ethics (Moral philosophy)'),
	(171, 2, '171', 'Systems & doctrines'),
	(172, 2, '172', 'Political ethics'),
	(173, 2, '173', 'Ethics of family relationships'),
	(174, 2, '174', 'Economic & professional ethics'),
	(175, 2, '175', 'Ethics of recreation & leisure'),
	(176, 2, '176', 'Ethics of sex & reproduction'),
	(177, 2, '177', 'Ethics of social relations'),
	(178, 2, '178', 'Ethics of consumption'),
	(179, 2, '179', 'Other ethical norms'),
	(180, 2, '180', 'Ancient, medieval, Oriental philosophy'),
	(181, 2, '181', 'Oriental philosophy'),
	(182, 2, '182', 'Pre-Socratic Greek philosophies'),
	(183, 2, '183', 'Sophistic & Socratic philosophies'),
	(184, 2, '184', 'Platonic philosophy'),
	(185, 2, '185', 'Aristotelian philosophy'),
	(186, 2, '186', 'Skeptic and Neoplatonic philosophies'),
	(187, 2, '187', 'Epicurean philosophy'),
	(188, 2, '188', 'Stoic philosophy'),
	(189, 2, '189', 'Medieval Western philosophy'),
	(190, 2, '190', 'Modern Western philosophy'),
	(191, 2, '191', 'Modern Western philosophy United States & Canada'),
	(192, 2, '192', 'Modern Western philosophy British Isles'),
	(193, 2, '193', 'Modern Western philosophy Germany & Austria '),
	(194, 2, '194', ' Modern Western philosophy France'),
	(195, 2, '195', 'Modern Western philosophy Italy'),
	(196, 2, '196', 'Modern Western philosophy Spain & Portugal'),
	(197, 2, '197', 'Modern Western philosophy Soviet Union'),
	(198, 2, '198', 'Modern Western philosophy Scandinavia'),
	(199, 2, '199', 'Modern Western philosophy Other geographical areas'),
	(200, 3, '200', 'Religion '),
	(201, 3, '201', 'Philosophy of Christianity'),
	(202, 3, '202', 'Miscellany of Christianity'),
	(203, 3, '203', 'Dictionaries of Christianity'),
	(204, 3, '204', 'Special topics'),
	(205, 3, '205', 'Serial publications of Christianity'),
	(206, 3, '206', 'Organizations of Christianity'),
	(207, 3, '207', 'Education, research in Christianity'),
	(208, 3, '208', 'Kinds of persons in Christianity'),
	(209, 3, '209', ' History & geography of Christianity'),
	(210, 3, '210', 'Natural theology'),
	(211, 3, '211', 'Concepts of God'),
	(212, 3, '212', 'Existence, attributes of God'),
	(213, 3, '213', ' Creation '),
	(214, 3, '214', 'Theodicy'),
	(215, 3, '215', 'Science & religion '),
	(216, 3, '216', 'Good & evil'),
	(218, 3, '218', 'Humankind'),
	(220, 3, '220', 'Bible '),
	(221, 3, '221', 'Old Testament'),
	(222, 3, '222', 'Historical books of Old Testament'),
	(223, 3, '223', 'Poetic books of Old Testament'),
	(224, 3, '224', ' Prophetic books of Old Testament'),
	(225, 3, '225', 'New Testament'),
	(226, 3, '226', 'Gospels & Acts '),
	(227, 3, '227', 'Epistles'),
	(228, 3, '228', 'Revelation (Apocalypse)'),
	(229, 3, '229', 'Apocrypha & pseudepigrapha'),
	(230, 3, '230', 'Christian theology'),
	(231, 3, '231', 'God'),
	(232, 3, '232', 'Jesus Christ & his family'),
	(233, 3, '233', 'Humankind'),
	(234, 3, '234', 'Salvation (Soteriology) & grace'),
	(235, 3, '235', 'Spiritual beings'),
	(236, 3, '236', 'Eschatology'),
	(238, 3, '238', 'Creeds & catechisms'),
	(239, 3, '239', 'Apologetics & polemics'),
	(240, 3, '240', 'Christian moral & devotional theology'),
	(241, 3, '241', 'Moral theology'),
	(242, 3, '242', 'Devotional literature'),
	(243, 3, '243', 'Evangelistic writings for individuals'),
	(245, 3, '245', 'Texts of hymns'),
	(246, 3, '246', 'Use of art in Christianity'),
	(247, 3, '247', 'Church furnishings & articles'),
	(248, 3, '248', 'Christian experience, practice, life'),
	(249, 3, '249', 'Christian observances in family life'),
	(250, 3, '250', 'Christian orders & local church'),
	(251, 3, '251', 'Preaching (Homiletics)'),
	(252, 3, '252', 'Texts of sermons'),
	(253, 3, '253', '253 Pastoral office (Pastoral theology) '),
	(254, 3, '254', 'Parish goverment & administration'),
	(255, 3, '255', 'Religious congregations & orders'),
	(259, 3, '259', 'Activities of the local church'),
	(260, 3, '260', 'Christian social theology '),
	(261, 3, '261', 'Social theology'),
	(262, 3, '262', 'Ecclesiology'),
	(263, 3, '263', 'Times, places of religious observance'),
	(264, 3, '264', 'Public worship'),
	(265, 3, '265', 'Sacraments, other rites & acts'),
	(266, 3, '266', 'Missions'),
	(267, 3, '267', 'Associations for religious work'),
	(268, 3, '268', 'Religious education'),
	(269, 3, '269', 'Spiritual renewal'),
	(270, 3, '270', 'Christian church history '),
	(271, 3, '271', 'Religious orders in church history'),
	(272, 3, '272', 'Persecutions in church history'),
	(273, 3, '273', 'Heresies in church history'),
	(274, 3, '274', 'hristian church in Europe'),
	(275, 3, '275', 'Christian church in Asia'),
	(276, 3, '276', 'Christian church in Africa'),
	(277, 3, '277', 'Christian church in North America'),
	(278, 3, '278', 'Christian church in South America'),
	(279, 3, '279', 'Christian church in other areas'),
	(280, 3, '280', 'Christian denominations & sects '),
	(281, 3, '281', 'Early church & Eastern churches'),
	(282, 3, '282', 'Roman Catholic Church'),
	(283, 3, '283', 'Anglican churches'),
	(284, 3, '284', 'Protestants of Continental origin'),
	(285, 3, '285', 'Presbyterian, Reformed, Congregational'),
	(286, 3, '286', 'Baptist, Disciples of Christ, Adventist'),
	(287, 3, '287', 'Methodist churches; churches uniting Methodist and other denominations; Salvation Army'),
	(289, 3, '289', 'Other denominations & sects'),
	(290, 3, '290', 'Other & comparative religions'),
	(291, 3, '291', 'Comparative religion'),
	(292, 3, '292', 'Classical (Greek & Roman) religion'),
	(293, 3, '293', 'Germanic religion'),
	(294, 3, '294', 'Religions of Indic origin'),
	(295, 3, '295', ' Zoroastrianism (Mazdaism, Parseeism)'),
	(296, 3, '296', 'Judaism'),
	(297, 3, '297', 'Islam & religions originating in it'),
	(299, 3, '299', 'Other religions'),
	(300, 4, '300', 'Social Sciences'),
	(301, 4, '301', 'Sociology & anthropology'),
	(302, 4, '302', 'Social interaction'),
	(303, 4, '303', 'Social processes '),
	(304, 4, '304', 'Factors affecting social behavior '),
	(305, 4, '305', 'Social groups '),
	(306, 4, '306', 'Culture & institutions'),
	(307, 4, '307', 'Communities '),
	(310, 4, '310', 'General statistics, Almanacs'),
	(314, 4, '314', 'General statistics of Europe'),
	(315, 4, '315', 'General statistics of Asia'),
	(316, 4, '316', 'General statistics of Africa'),
	(317, 4, '317', 'General statistics of North America '),
	(318, 4, '318', 'General statistics of South America'),
	(319, 4, '319', 'General statistics of other parts of the world'),
	(320, 4, '320', 'Political science'),
	(321, 4, '321', 'Systems of governments & states'),
	(322, 4, '322', 'Relation of state to organized groups'),
	(323, 4, '323', 'Civil & political rights'),
	(324, 4, '324', 'The political process '),
	(325, 4, '325', 'International migration & colonization'),
	(326, 4, '326', ' Slavery & emancipation'),
	(327, 4, '327', 'International relations '),
	(328, 4, '328', 'The legislative process'),
	(330, 4, '330', 'Economics '),
	(331, 4, '331', 'Labor economics'),
	(332, 4, '332', 'Financial economics'),
	(333, 4, '333', 'Land economics'),
	(334, 4, '334', 'Cooperatives'),
	(335, 4, '335', 'Socialism & related systems '),
	(336, 4, '336', 'Public finance'),
	(337, 4, '337', 'International economics'),
	(338, 4, '338', 'Production '),
	(339, 4, '339', 'Macroeconomics & related topics'),
	(340, 4, '340', 'Law '),
	(341, 4, '341', 'International law'),
	(342, 4, '342', 'Constitutional & administrative law'),
	(343, 4, '343', 'Military, tax, trade, industrial law'),
	(344, 4, '344', 'Social, labor, welfare, & related law'),
	(345, 4, '345', 'Criminal law'),
	(346, 4, '346', 'Private law'),
	(347, 4, '347', 'Civil procedure & courts'),
	(348, 4, '348', 'Private lLaws (Statutes), regulations, casesaw'),
	(349, 4, '349', ' Laws of specific jurisdictions & areas'),
	(350, 4, '350', 'Public administration'),
	(351, 4, '351', 'Public administration of central'),
	(352, 4, '352', 'Public administration of local governments'),
	(353, 4, '353', 'Public administration of U.S. federal & state governments '),
	(354, 4, '354', 'Public administration of specific central governments'),
	(355, 4, '355', 'Military science'),
	(356, 4, '356', 'Foot forces & warfare'),
	(357, 4, '357', 'Mounted forces & warfare'),
	(358, 4, '358', 'Other specialized forces & services'),
	(359, 4, '359', 'Sea (Naval) forces & warfare '),
	(360, 4, '360', 'Social services; association'),
	(361, 4, '361', 'General social problems & welfare '),
	(362, 4, '362', 'Social welfare problems & welfare '),
	(363, 4, '363', 'Other social problems & services'),
	(364, 4, '364', 'Criminology '),
	(365, 4, '365', 'Penal & related institutions'),
	(366, 4, '366', 'Association'),
	(367, 4, '267', 'General clubs'),
	(368, 4, '368', 'Insurance'),
	(369, 4, '369', 'Miscellaneous kinds of associations'),
	(370, 4, '370', 'Education '),
	(371, 4, '371', 'School manaagement; special education'),
	(372, 4, '372', 'Elementary education '),
	(373, 4, '373', 'Secondary education '),
	(374, 4, '374', 'Education Adult edutation'),
	(375, 4, '375', 'Curricula'),
	(376, 4, '376', 'Education of women'),
	(377, 4, '377', 'Schools & religion'),
	(378, 4, '378', 'Higher education'),
	(379, 4, '379', 'Education Government regulation, control, support '),
	(380, 4, '380', 'Commerce, communications, transport '),
	(381, 4, '381', 'Commerce'),
	(382, 4, '382', 'International commerce (Foreign trade)'),
	(383, 4, '383', 'Postal communications'),
	(384, 4, '384', 'Communications; Telecommunications'),
	(385, 4, '385', 'Railroad transportation'),
	(386, 4, '386', 'Railroad transportation'),
	(387, 4, '387', 'Water, air, space transportation '),
	(388, 4, '388', 'Transportation; Ground transportation'),
	(389, 4, '389', 'Metrology & standardization'),
	(390, 4, '390', 'Customs, etiquette, folklore'),
	(391, 4, '391', 'Costume & personal appearance'),
	(392, 4, '392', 'Customs of life cycle & domestic life'),
	(393, 4, '393', 'Death customs'),
	(394, 4, '394', 'General customs '),
	(395, 4, '395', 'Etiquette (Manners)'),
	(398, 4, '398', 'Folklore '),
	(399, 4, '399', 'Customs of war & diplomacy'),
	(400, 5, '400', 'Language'),
	(401, 5, '401', 'Philosophy & theory'),
	(402, 5, '402', 'Miscellany'),
	(403, 5, '403', 'Dictionaries & encyclopedias'),
	(404, 5, '404', 'Special topics'),
	(405, 5, '405', 'Serial publications'),
	(406, 5, '406', 'Organizations & management'),
	(407, 5, '407', 'Education, research, related topics'),
	(408, 5, '408', 'Treatment of language with respect to kinds of persons'),
	(409, 5, '409', 'Treatment of language with respect to kinds of persons'),
	(410, 5, '410', 'Linguistics'),
	(411, 5, '411', 'Writing systems'),
	(412, 5, '412', 'Etymology, word origins'),
	(413, 5, '413', 'Dictionaries'),
	(414, 5, '414', 'Phonology'),
	(415, 5, '415', 'Structural systems (Grammar)'),
	(417, 5, '417', 'Dialectology & historicl linguistics'),
	(418, 5, '418', 'Standard usage; Applied linguistics'),
	(419, 5, '419', 'Verbal language not spoken or written'),
	(420, 5, '420', 'English & Old English'),
	(421, 5, '421', 'English writing system & phonology'),
	(422, 5, '422', 'English etymology, word origins'),
	(423, 5, '423', 'English dictionaries'),
	(424, 5, '424', 'N/A'),
	(425, 5, '425', 'English grammar'),
	(426, 5, '426', 'N/AA'),
	(427, 5, '427', 'English language variations'),
	(428, 5, '428', 'Standard English usage'),
	(429, 5, '429', 'Old English (Anglo-Saxon)'),
	(430, 5, '430', 'Old English (Anglo-Saxon)'),
	(431, 5, '431', 'German writing system & phonology'),
	(432, 5, '432', 'German etymology'),
	(433, 5, '433', 'German dictionaries'),
	(435, 5, '435', 'German grammar'),
	(437, 5, '437', 'German language variations'),
	(438, 5, '438', 'Standard German usage'),
	(439, 5, '439', 'Other Germanic languages'),
	(440, 5, '440', 'Romance languages; French'),
	(441, 5, '441', 'French writing system & phonology'),
	(442, 5, '442', 'French etymology'),
	(443, 5, '443', 'French dictionaries'),
	(445, 5, '445', 'French grammar'),
	(447, 5, '447', 'French grammar'),
	(448, 5, '448', 'Standard French usage'),
	(449, 5, '449', 'Provençal & Catalan'),
	(450, 5, '450', 'Italian, Romanian, Rhæto-Romanic'),
	(451, 5, '451', 'Italian writing system & phonology'),
	(452, 5, '452', 'Italian etymology'),
	(453, 5, '453', 'Italian dictionaries'),
	(455, 5, '455', 'Italian grammar'),
	(457, 5, '457', 'Italian language variations'),
	(458, 5, '458', 'Standard Italian usage'),
	(459, 5, '490', 'Other languages'),
	(460, 5, '460', 'Spanish & Portugese languages'),
	(461, 6, '500', 'Generalities about Natural Sciences and Mathematics'),
	(462, 6, '501', 'Philosophy and Theory'),
	(463, 6, '510', 'Mathematics'),
	(464, 6, '530', 'Physics'),
	(465, 6, '590', 'Zoological Sciences'),
	(466, 7, '660', 'Chemical Engineering'),
	(467, 7, '616', 'Diseases'),
	(468, 7, '635', 'Garden Crops'),
	(469, 7, '690', 'Buildings'),
	(470, 7, '607', 'Education, research, related topics'),
	(471, 8, '711', ' Area planning (Civic art)'),
	(472, 8, '720', 'Architecture'),
	(473, 8, '738', 'Ceramic arts'),
	(474, 8, '750', 'Painting & paintings'),
	(475, 8, '770', 'Photography & photographs '),
	(476, 9, '811', 'Poetry'),
	(477, 9, '831', 'German poetry'),
	(478, 9, '898', 'South American native literatures'),
	(479, 9, '810', 'American or Canadian  literature in English '),
	(480, 10, '970', 'General history of North America'),
	(481, 10, '914', 'Geography and travel ( Europe)');

-- Dumping structure for table adblab_libmgmtsystem.faculty
CREATE TABLE IF NOT EXISTS `faculty` (
  `faculty_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `department_id` smallint(6) NOT NULL,
  `position` varchar(128) DEFAULT NULL,
  `employement_type` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`),
  KEY `user_id` (`user_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `faculty_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.faculty: ~12 rows (approximately)
INSERT INTO `faculty` (`faculty_id`, `user_id`, `department_id`, `position`, `employement_type`) VALUES
	(2014200, 17, 3, 'CS Chairperson', 'Fullt Time'),
	(2015090, 16, 5, 'Eng. Chairperson', 'Full Time'),
	(2016190, 20, 2, 'IT Chairperson', 'Full Time'),
	(2016712, 19, 7, 'Professor', 'Full Time'),
	(2017010, 22, 7, 'Professor', 'Part Time'),
	(2018078, 12, 1, 'Arch Chairperson', 'Full Time'),
	(2018100, 13, 2, 'Professor', 'Full Time'),
	(2019001, 2, 2, 'Professor', 'Part Time'),
	(2020112, 18, 4, 'Professor', 'Full Time'),
	(2020123, 14, 7, 'Professor', 'Part Time'),
	(2020901, 15, 1, 'Professor', 'Part Time'),
	(2021091, 21, 6, 'Professor', 'Part Time');

-- Dumping structure for table adblab_libmgmtsystem.grace_periods
CREATE TABLE IF NOT EXISTS `grace_periods` (
  `grace_period_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `user_type_id` smallint(6) NOT NULL,
  `grace_length` smallint(6) NOT NULL,
  PRIMARY KEY (`grace_period_id`),
  KEY `user_type_id` (`user_type_id`),
  CONSTRAINT `grace_periods_ibfk_1` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.grace_periods: ~2 rows (approximately)
INSERT INTO `grace_periods` (`grace_period_id`, `user_type_id`, `grace_length`) VALUES
	(1, 1, 7),
	(2, 2, 30);

-- Dumping structure for table adblab_libmgmtsystem.inventory
CREATE TABLE IF NOT EXISTS `inventory` (
  `inventory_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `catalog_id` bigint(20) NOT NULL,
  `condition_id` smallint(6) NOT NULL,
  `date_added` date NOT NULL DEFAULT current_timestamp(),
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`inventory_id`),
  KEY `catalog_id` (`catalog_id`),
  KEY `condition_id` (`condition_id`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`catalog_id`),
  CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`condition_id`) REFERENCES `inventory_conditions` (`condition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.inventory: ~2 rows (approximately)
INSERT INTO `inventory` (`inventory_id`, `catalog_id`, `condition_id`, `date_added`, `is_available`) VALUES
	(1, 1, 5, '2001-01-22', 1),
	(2, 1, 1, '2023-01-22', 0);

-- Dumping structure for table adblab_libmgmtsystem.inventory_conditions
CREATE TABLE IF NOT EXISTS `inventory_conditions` (
  `condition_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `condition_criteria` varchar(128) NOT NULL,
  `condition_legend` varchar(16) NOT NULL,
  `condition_description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`condition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.inventory_conditions: ~8 rows (approximately)
INSERT INTO `inventory_conditions` (`condition_id`, `condition_criteria`, `condition_legend`, `condition_description`) VALUES
	(1, 'new', 'N', 'The item is new'),
	(2, 'as new', 'AN', 'The item is old but like new'),
	(3, 'very good', 'VG', 'The item is old and still in a very good condition'),
	(4, 'good', 'G', 'The item is old and in good condition'),
	(5, 'fair', 'F', 'The item is old and in fair condition'),
	(6, 'poor', 'P', 'The item is old and in poor condition'),
	(7, 'lost', 'L', 'The item is lost'),
	(8, 'not usable', 'NU', 'The item is existing but not usable');

-- Dumping structure for table adblab_libmgmtsystem.library_staffs
CREATE TABLE IF NOT EXISTS `library_staffs` (
  `staff_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `job_title` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `library_staffs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.library_staffs: ~8 rows (approximately)
INSERT INTO `library_staffs` (`staff_id`, `user_id`, `job_title`) VALUES
	(1, 28, 'Librarian Clerk'),
	(2, 31, 'Assitant Librarian'),
	(3, 26, 'Archivist'),
	(4, 31, 'Librarian Clerk'),
	(5, 29, 'Library Aide'),
	(6, 24, 'Archivist'),
	(7, 26, 'Library Clerk'),
	(8, 25, 'Assitant Librarian'),
	(9, 27, 'Library Clerk'),
	(10, 32, 'Library Manager');

-- Dumping structure for table adblab_libmgmtsystem.penalties
CREATE TABLE IF NOT EXISTS `penalties` (
  `penalty_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `transaction_id` bigint(20) NOT NULL,
  `penalty_type_id` smallint(6) NOT NULL,
  `penalty_amount` decimal(7,2) DEFAULT 0.00,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`penalty_id`),
  KEY `transaction_id` (`transaction_id`),
  KEY `penalty_type_id` (`penalty_type_id`),
  CONSTRAINT `penalties_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`transaction_id`),
  CONSTRAINT `penalties_ibfk_2` FOREIGN KEY (`penalty_type_id`) REFERENCES `penalty_types` (`penalty_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.penalties: ~0 rows (approximately)

-- Dumping structure for table adblab_libmgmtsystem.penalty_rates
CREATE TABLE IF NOT EXISTS `penalty_rates` (
  `penalty_type_id` smallint(6) NOT NULL DEFAULT 1,
  `user_type_id` smallint(6) NOT NULL,
  `rate` decimal(7,2) NOT NULL DEFAULT 0.00,
  KEY `penalty_type_id` (`penalty_type_id`),
  KEY `user_type_id` (`user_type_id`),
  CONSTRAINT `penalty_rates_ibfk_1` FOREIGN KEY (`penalty_type_id`) REFERENCES `penalty_types` (`penalty_type_id`),
  CONSTRAINT `penalty_rates_ibfk_2` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`user_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.penalty_rates: ~6 rows (approximately)
INSERT INTO `penalty_rates` (`penalty_type_id`, `user_type_id`, `rate`) VALUES
	(1, 1, 30.00),
	(1, 2, 50.00),
	(2, 1, 150.00),
	(2, 2, 250.00),
	(3, 1, 75.00),
	(3, 2, 100.00);

-- Dumping structure for table adblab_libmgmtsystem.penalty_types
CREATE TABLE IF NOT EXISTS `penalty_types` (
  `penalty_type_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `penalty_type` varchar(64) NOT NULL,
  `penalty_description` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`penalty_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.penalty_types: ~3 rows (approximately)
INSERT INTO `penalty_types` (`penalty_type_id`, `penalty_type`, `penalty_description`) VALUES
	(1, 'overdue', 'When the user returned the item late'),
	(2, 'damaged', 'When the user damaged an item'),
	(3, 'lost', 'When the user lost an item');

-- Dumping structure for table adblab_libmgmtsystem.programs
CREATE TABLE IF NOT EXISTS `programs` (
  `program_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `program_name` varchar(128) DEFAULT NULL,
  `program_description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`program_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.programs: ~23 rows (approximately)
INSERT INTO `programs` (`program_id`, `program_name`, `program_description`) VALUES
	(1, 'BSIT', 'Bachelor of Science in Information Technology'),
	(2, 'BSCPE', 'Bachelor of Science in Computer Engineering'),
	(3, 'BSCS', 'Bachelor of Science in Computer Science'),
	(4, 'BSEE', 'Bachelor of Science in Electrical Engineering'),
	(5, 'BSECE', 'Bachelor of Science in Electronics Engineering'),
	(6, 'BSCE', 'Bachelor of Science in Civil Engineering'),
	(7, 'BAC', 'Bachelor of Arts in Communication'),
	(8, 'BAC-PR', 'Bachelor of Arts in Communication Major in Public Relations'),
	(9, 'BA PR', 'Bachelor of Arts in Public Relations'),
	(10, 'BSSW', 'Bachelor of Science in Social Work '),
	(11, 'BSChem', 'Bachelor of Science in Chemistry'),
	(12, 'BSPSY', 'Bachelor of Science in Psychology'),
	(13, 'BSMath', 'Bachelor of Science in Mathematics'),
	(14, 'BSBio', 'Bachelor of Science in Biology'),
	(15, 'BSN', 'Bachelor of Science in Nursing'),
	(16, 'BSPT', 'Bachelor of Science in Physical Therapy'),
	(17, 'BS ACCTG', 'Bachelor of Science in Accountancy'),
	(18, 'BSBA BE', 'Bachelor of Science in Business Administration Major in Business Economics'),
	(19, 'BSBA FM', 'Bachelor of Science in Business Administration Major in Financial Management'),
	(20, 'BSBA MM', 'Bachelor of Science in Business Administration Major in Marketing Management'),
	(21, 'BSEEd', 'Bachelor of Elementary Education'),
	(22, 'BSEd-Eng', 'Bachelor of Secondary Education major in English'),
	(23, 'BS Arch', 'Bachelor of Science in Architecture');

-- Dumping structure for table adblab_libmgmtsystem.publishers
CREATE TABLE IF NOT EXISTS `publishers` (
  `publisher_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `publisher_name` varchar(128) NOT NULL,
  `publisher_description` varchar(256) DEFAULT NULL,
  `publisher_country` varchar(128) DEFAULT NULL,
  `publisher_city` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`publisher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.publishers: ~10 rows (approximately)
INSERT INTO `publishers` (`publisher_id`, `publisher_name`, `publisher_description`, `publisher_country`, `publisher_city`) VALUES
	(1, 'The PLM House', 'PLM\'s own publishing house', 'Philippines', 'Manila'),
	(2, 'Routledge', NULL, 'UK', 'Milton'),
	(3, '‎Finisterra Books', NULL, NULL, NULL),
	(4, 'IMPERIAL COLLEGE PRESS', NULL, NULL, NULL),
	(5, 'Bookland', NULL, NULL, NULL),
	(6, 'Hansebooks', NULL, NULL, NULL),
	(7, 'Phaidon Publishing', NULL, NULL, NULL),
	(8, 'CreateSpace Independent Publishing Platform', NULL, NULL, NULL),
	(9, 'British Library', NULL, NULL, NULL),
	(10, 'Random House Trade Paperbacks', NULL, NULL, NULL);

-- Dumping structure for view adblab_libmgmtsystem.read_departments
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `read_departments` (
	`department_id` SMALLINT(6) NOT NULL,
	`department_name` VARCHAR(128) NULL COLLATE 'utf8mb4_general_ci',
	`department_description` VARCHAR(256) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for table adblab_libmgmtsystem.students
CREATE TABLE IF NOT EXISTS `students` (
  `student_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `program_id` smallint(6) NOT NULL,
  `college_id` smallint(6) NOT NULL,
  `student_type` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `user_id` (`user_id`),
  KEY `program_id` (`program_id`),
  KEY `college_id` (`college_id`),
  CONSTRAINT `students_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `students_ibfk_2` FOREIGN KEY (`program_id`) REFERENCES `programs` (`program_id`),
  CONSTRAINT `students_ibfk_3` FOREIGN KEY (`college_id`) REFERENCES `colleges` (`college_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.students: ~10 rows (approximately)
INSERT INTO `students` (`student_id`, `user_id`, `program_id`, `college_id`, `student_type`) VALUES
	(202011218, 3, 18, 6, 'Regular'),
	(202011643, 9, 15, 4, 'Regular'),
	(202012113, 10, 23, 8, 'Regular'),
	(202012310, 7, 6, 1, 'Regular'),
	(202012536, 6, 10, 2, 'Regular'),
	(202012557, 4, 1, 1, 'Regular'),
	(202013076, 5, 3, 1, 'Regular'),
	(202013515, 1, 1, 1, 'Regular'),
	(202013789, 11, 5, 1, 'Regular'),
	(202140120, 8, 2, 1, 'Irregular');

-- Dumping structure for table adblab_libmgmtsystem.transactions
CREATE TABLE IF NOT EXISTS `transactions` (
  `transaction_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `borrower_id` bigint(20) NOT NULL,
  `staff_id` bigint(20) NOT NULL,
  `grace_period_id` smallint(6) NOT NULL,
  `date_issued` timestamp NOT NULL DEFAULT current_timestamp(),
  `expected_return_date` timestamp NULL DEFAULT NULL,
  `date_returned` timestamp NULL DEFAULT NULL,
  `is_returned` tinyint(1) NOT NULL DEFAULT 0,
  `is_penalized` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`transaction_id`),
  KEY `borrower_id` (`borrower_id`),
  KEY `staff_id` (`staff_id`),
  KEY `grace_period_id` (`grace_period_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`borrower_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `transactions_ibfk_3` FOREIGN KEY (`grace_period_id`) REFERENCES `grace_periods` (`grace_period_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.transactions: ~0 rows (approximately)

-- Dumping structure for table adblab_libmgmtsystem.transactions_inventory
CREATE TABLE IF NOT EXISTS `transactions_inventory` (
  `transaction_id` bigint(20) NOT NULL,
  `inventory_id` bigint(20) NOT NULL,
  KEY `transaction_id` (`transaction_id`),
  KEY `inventory_id` (`inventory_id`),
  CONSTRAINT `transactions_inventory_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`transaction_id`),
  CONSTRAINT `transactions_inventory_ibfk_2` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`inventory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.transactions_inventory: ~0 rows (approximately)

-- Dumping structure for table adblab_libmgmtsystem.users
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_type_id` smallint(6) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `middle_name` varchar(64) DEFAULT NULL,
  `last_name` varchar(64) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(32) NOT NULL,
  `civil_status` varchar(32) NOT NULL,
  `citizenship` varchar(32) NOT NULL,
  `mobile_no` varchar(32) DEFAULT NULL,
  `telephone_no` varchar(32) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_type_id` (`user_type_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.users: ~31 rows (approximately)
INSERT INTO `users` (`user_id`, `user_type_id`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `gender`, `civil_status`, `citizenship`, `mobile_no`, `telephone_no`, `address`) VALUES
	(1, 1, 'Mark Renan', 'De Jose', 'Dela Peña', '2001-04-28', 'Male', 'Single', 'Filipino', '09324561234', NULL, 'Manila, Philippines'),
	(2, 2, 'Kads', NULL, 'Mercado', '1995-01-01', 'Male', 'Single', 'Filipino', '09895461234', NULL, 'Philippines'),
	(3, 1, 'Louis ', NULL, 'Escoto', '2001-09-15', 'Female', 'Single', 'Filipino', '09145671244', NULL, 'Sampaloc, Manila'),
	(4, 1, 'Jenelle ', 'Sopeña', 'Pimentel', '2001-04-15', 'Female', 'Single', 'Filipino', '09991234567', NULL, 'Cavite City'),
	(5, 1, 'Rhiyen Lee', NULL, 'Soriano', '2001-11-18', 'Male', 'Single', 'Filipino', '09012390483', NULL, 'Tondo, Manila'),
	(6, 1, 'Catherine Nicole', 'M', 'Perez', '2002-01-18', 'Female', 'Single', 'Filipino', '09023456789', NULL, 'Tondo, Manila'),
	(7, 1, 'Mark Angelo', 'P', 'Ngo', '2001-10-22', 'Male', 'Single', 'Filipino', '09142969788', NULL, 'Tondo, Manila'),
	(8, 1, 'Mariah Carmella', 'Panlilio', 'Santander', '2001-01-15', 'Female', 'Single', 'Filipino', '09187923456', NULL, 'Bulacan City'),
	(9, 1, 'Chaylze', 'Rivo', 'Ignacio', '2001-05-13', 'Female', 'Single', 'Filipino', '09989743613', NULL, 'Pandacan, Manila'),
	(10, 1, 'Denzel', NULL, 'Lim', '2001-04-20', 'Male', 'Single', 'Filipino', '09971256731', NULL, 'Sta. Ana, Manila'),
	(11, 1, 'Lionel', NULL, 'Purugganan', '2002-11-17', 'Male', 'Single', 'Filipino', '09115673456', NULL, 'San Andres, Manila'),
	(12, 2, 'Lisa May', 'Batumbakal', 'Santos', '1990-02-10', 'Female', 'Married', 'Filipino', '09908975133', NULL, 'Paco, Manila'),
	(13, 2, 'Ariel Diony', 'Sisa', 'Sison', '1994-06-14', 'Male', 'Single', 'Filipino', '09783224127', NULL, 'Caloocan City'),
	(14, 2, 'Lorraine', 'Manupig', 'Fernandez', '1990-03-28', 'Female', 'Married', 'Filipino', '09876143166', NULL, 'Pasig City'),
	(15, 2, 'Mary Jane', 'Lopez', 'Aboda', '1995-06-19', 'Female', 'Single', 'Filipino', '09678901234', NULL, 'Quezon City'),
	(16, 2, 'Johnny', 'Kinta', 'Lourdes', '1991-01-30', 'Male', 'Married', 'Filipino', '09887651434', NULL, 'Vicente Cruz, Espana'),
	(17, 2, 'Lexie Cyruz', 'Dalintanaw', 'Moress', '1989-05-10', 'Male', 'Married', 'Fillipino', '09046168313', NULL, 'Calabash Rd, Sampaloc, Manila'),
	(18, 2, 'Jenieviv Rose', 'Martinez', 'Ibarra', '1993-08-04', 'Female', 'Single', 'Filipino', '09078762425', NULL, 'Pasay City'),
	(19, 2, 'Nicolaine Marcus', 'Ronto', 'Avenida', '1992-09-19', 'Male', 'Single', 'Filipino', '09076545241', NULL, 'Mandaluyong City'),
	(20, 2, 'Paul Joel', 'Dela Cruz', 'Ibanez', '1987-05-22', 'Male', 'Married', 'Filipino', '09088765313', NULL, 'Pasig City'),
	(21, 2, 'Ogie', 'Garcia', 'Escoto', '1987-10-08', 'Male', 'Married', 'Filipino', '09065141345', NULL, 'Sampaloc, Manila'),
	(22, 2, 'Jean', 'Rosario', 'Makalintal', '1985-06-15', 'Female', 'Widow', 'Filipino', '09029864450', NULL, 'Pasig City'),
	(23, 3, 'Maria Jaime', 'Marquez', 'De Guzman', '1990-04-20', 'Female', 'Single', 'Filipino', NULL, '713-456-21', 'Makati City'),
	(24, 3, 'Lorenz James', 'Manila', 'Cruz', '1992-10-22', 'Male', 'Single', 'Filipino', NULL, '712-345-12', 'Taguig City'),
	(25, 3, 'Camille', NULL, 'Mendoza', '2001-09-10', 'Female', 'Single', 'Filipino', NULL, NULL, 'Quiapo, Manila'),
	(26, 3, 'Reinalyn', NULL, 'Recto', '2002-11-30', 'Female', 'Single', 'Filipino', '09552558596', '800-526-14', 'Raxabagoo,Tondo'),
	(27, 3, 'Amielle', NULL, 'Nacabuan', '2002-01-13', 'Female', 'Single', 'Filipino', '09380818163', NULL, 'Quezon City'),
	(28, 3, 'Vince', 'Manzanares', 'Salvado', '2000-05-11', 'Male', 'Married', 'Chinese', '094851274598', '756-622-29', 'Paranaque City'),
	(29, 3, 'Mariella', 'Perez', 'Billion', '1999-06-25', 'Female', 'Single', 'Filipino', '09548735149', NULL, 'Makati City'),
	(30, 3, 'Jm', 'Pasadilla', 'Reambonanza', '1998-07-23', 'Male', 'Married', 'Filipino', '09853624579', '875-854-15', 'Sta Mesa, Manila'),
	(31, 3, 'Vhelle', NULL, 'Miranda', '2002-07-25', 'Female', 'Single', 'Filipino', '09354862513', '985-635-21', 'Tondo,Manila'),
	(32, 3, 'Jestine', NULL, 'Escovidal', '2004-12-12', 'Female', 'Single', 'Filipino', '09654286315', '800-9658-75', 'Sampaloc,Manila');

-- Dumping structure for table adblab_libmgmtsystem.user_types
CREATE TABLE IF NOT EXISTS `user_types` (
  `user_type_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(64) NOT NULL,
  `user_type_description` varchar(256) NOT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.user_types: ~3 rows (approximately)
INSERT INTO `user_types` (`user_type_id`, `user_type`, `user_type_description`) VALUES
	(1, 'student', 'Users of library who are students'),
	(2, 'faculty', 'Users of library who are faculty/teachers'),
	(3, 'staff', 'Library staff who will manage the system');

-- Dumping structure for view adblab_libmgmtsystem.read_departments
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `read_departments`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `read_departments` AS SELECT * FROM departments ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
