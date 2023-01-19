-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.27-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
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
CREATE DATABASE IF NOT EXISTS `adblab_libmgmtsystem` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `adblab_libmgmtsystem`;

-- Dumping structure for table adblab_libmgmtsystem.authors
CREATE TABLE IF NOT EXISTS `authors` (
  `author_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_name` varchar(64) NOT NULL,
  `author_description` varchar(256) DEFAULT NULL,
  `author_country` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.authors: ~0 rows (approximately)

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.catalog: ~0 rows (approximately)

-- Dumping structure for table adblab_libmgmtsystem.catalog_authors
CREATE TABLE IF NOT EXISTS `catalog_authors` (
  `catalog_id` bigint(20) NOT NULL,
  `author_id` bigint(20) NOT NULL,
  KEY `catalog_id` (`catalog_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `catalog_authors_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`catalog_id`),
  CONSTRAINT `catalog_authors_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.catalog_authors: ~0 rows (approximately)

-- Dumping structure for table adblab_libmgmtsystem.catalog_types
CREATE TABLE IF NOT EXISTS `catalog_types` (
  `catalog_type_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `catalog_type` varchar(128) NOT NULL,
  `catalog_type_description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`catalog_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.catalog_types: ~0 rows (approximately)

-- Dumping structure for table adblab_libmgmtsystem.colleges
CREATE TABLE IF NOT EXISTS `colleges` (
  `college_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `college_name` varchar(128) DEFAULT NULL,
  `college_description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`college_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.colleges: ~0 rows (approximately)

-- Dumping structure for table adblab_libmgmtsystem.departments
CREATE TABLE IF NOT EXISTS `departments` (
  `department_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(128) DEFAULT NULL,
  `department_description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.departments: ~0 rows (approximately)

-- Dumping structure for table adblab_libmgmtsystem.dewey_classes
CREATE TABLE IF NOT EXISTS `dewey_classes` (
  `dewey_class_id` smallint(6) NOT NULL,
  `dewey_class_category` varchar(64) NOT NULL,
  `dewey_class_description` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`dewey_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.dewey_classes: ~10 rows (approximately)
INSERT INTO `dewey_classes` (`dewey_class_id`, `dewey_class_category`, `dewey_class_description`) VALUES
	(0, 'Generalities', NULL),
	(1, 'Philosophy & Psychology', NULL),
	(2, 'Religion', NULL),
	(3, 'Social Sciences', NULL),
	(4, 'Language', NULL),
	(5, 'Natural Sciences & Mathematics', NULL),
	(6, 'Applied Sciences (Technology)', NULL),
	(7, 'The Arts', NULL),
	(8, 'Literature & Rhetoric', NULL),
	(9, 'Geography & History', NULL);

-- Dumping structure for table adblab_libmgmtsystem.dewey_indices
CREATE TABLE IF NOT EXISTS `dewey_indices` (
  `dewey_index_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `dewey_class_id` smallint(6) NOT NULL,
  `dewey_index` varchar(128) NOT NULL,
  `dewey_index_description` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`dewey_index_id`),
  KEY `dewey_class_id` (`dewey_class_id`),
  CONSTRAINT `dewey_indices_ibfk_1` FOREIGN KEY (`dewey_class_id`) REFERENCES `dewey_classes` (`dewey_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.dewey_indices: ~0 rows (approximately)

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

-- Dumping data for table adblab_libmgmtsystem.faculty: ~0 rows (approximately)

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.inventory: ~0 rows (approximately)

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

-- Dumping data for table adblab_libmgmtsystem.library_staffs: ~0 rows (approximately)

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.programs: ~0 rows (approximately)

-- Dumping structure for table adblab_libmgmtsystem.publishers
CREATE TABLE IF NOT EXISTS `publishers` (
  `publisher_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `publisher_name` varchar(128) NOT NULL,
  `publisher_description` varchar(256) DEFAULT NULL,
  `publisher_country` varchar(128) DEFAULT NULL,
  `publisher_city` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`publisher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.publishers: ~0 rows (approximately)

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

-- Dumping data for table adblab_libmgmtsystem.students: ~0 rows (approximately)

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.users: ~0 rows (approximately)

-- Dumping structure for table adblab_libmgmtsystem.user_types
CREATE TABLE IF NOT EXISTS `user_types` (
  `user_type_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(64) NOT NULL,
  `user_type_description` varchar(256) NOT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table adblab_libmgmtsystem.user_types: ~2 rows (approximately)
INSERT INTO `user_types` (`user_type_id`, `user_type`, `user_type_description`) VALUES
	(1, 'student', 'Users of library who are students'),
	(2, 'faculty', 'Users of library who are faculty/teachers'),
	(3, 'staff', 'Library staff who will manage the system');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
