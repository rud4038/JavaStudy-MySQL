-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.31 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- db_study2 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS `db_study2`;
CREATE DATABASE IF NOT EXISTS `db_study2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_study2`;

-- 테이블 db_study2.course_mst 구조 내보내기
DROP TABLE IF EXISTS `course_mst`;
CREATE TABLE IF NOT EXISTS `course_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study2.course_mst:~0 rows (대략적) 내보내기
DELETE FROM `course_mst`;
INSERT INTO `course_mst` (`id`, `class`) VALUES
	(3, 'c'),
	(1, 'java'),
	(2, 'python'),
	(4, 'web');

-- 테이블 db_study2.emp_mst 구조 내보내기
DROP TABLE IF EXISTS `emp_mst`;
CREATE TABLE IF NOT EXISTS `emp_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `manager` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study2.emp_mst:~0 rows (대략적) 내보내기
DELETE FROM `emp_mst`;
INSERT INTO `emp_mst` (`id`, `manager`) VALUES
	(1, '문성현'),
	(2, '윤대휘'),
	(3, '문자영'),
	(4, '정규민');

-- 테이블 db_study2.score_mst 구조 내보내기
DROP TABLE IF EXISTS `score_mst`;
CREATE TABLE IF NOT EXISTS `score_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL DEFAULT '0',
  `score` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study2.score_mst:~5 rows (대략적) 내보내기
DELETE FROM `score_mst`;
INSERT INTO `score_mst` (`id`, `course_id`, `score`) VALUES
	(1, 1, 80),
	(2, 3, 90),
	(3, 3, 70),
	(4, 2, 80),
	(5, 2, 90);

-- 테이블 db_study2.status_mst 구조 내보내기
DROP TABLE IF EXISTS `status_mst`;
CREATE TABLE IF NOT EXISTS `status_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study2.status_mst:~2 rows (대략적) 내보내기
DELETE FROM `status_mst`;
INSERT INTO `status_mst` (`id`, `status`) VALUES
	(1, '수강'),
	(2, '수료');

-- 테이블 db_study2.student_dtl 구조 내보내기
DROP TABLE IF EXISTS `student_dtl`;
CREATE TABLE IF NOT EXISTS `student_dtl` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_id` int NOT NULL DEFAULT '0',
  `manager_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study2.student_dtl:~0 rows (대략적) 내보내기
DELETE FROM `student_dtl`;
INSERT INTO `student_dtl` (`id`, `name_id`, `manager_id`) VALUES
	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 3),
	(4, 4, 4),
	(5, 5, 3);

-- 테이블 db_study2.student_mst 구조 내보내기
DROP TABLE IF EXISTS `student_mst`;
CREATE TABLE IF NOT EXISTS `student_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study2.student_mst:~0 rows (대략적) 내보내기
DELETE FROM `student_mst`;
INSERT INTO `student_mst` (`id`, `name`) VALUES
	(1, '신경수'),
	(2, '고희주'),
	(3, '장건녕'),
	(4, '문승주'),
	(5, '이승아');

-- 테이블 db_study2.study_mst 구조 내보내기
DROP TABLE IF EXISTS `study_mst`;
CREATE TABLE IF NOT EXISTS `study_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class_id` int NOT NULL DEFAULT '0',
  `name_id` int NOT NULL DEFAULT '0',
  `situation_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study2.study_mst:~0 rows (대략적) 내보내기
DELETE FROM `study_mst`;
INSERT INTO `study_mst` (`id`, `class_id`, `name_id`, `situation_id`) VALUES
	(1, 1, 1, 1),
	(2, 2, 1, 2),
	(3, 3, 1, 2),
	(4, 1, 2, 2),
	(5, 3, 2, 1),
	(6, 1, 3, 1),
	(7, 1, 4, 2);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
