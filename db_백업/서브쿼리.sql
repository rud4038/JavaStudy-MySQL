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


-- subquery_study 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS `subquery_study`;
CREATE DATABASE IF NOT EXISTS `subquery_study` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `subquery_study`;

-- 테이블 subquery_study.board_mst 구조 내보내기
DROP TABLE IF EXISTS `board_mst`;
CREATE TABLE IF NOT EXISTS `board_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `read_count` int NOT NULL,
  `writer_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 subquery_study.board_mst:~8 rows (대략적) 내보내기
DELETE FROM `board_mst`;
INSERT INTO `board_mst` (`id`, `title`, `content`, `read_count`, `writer_id`) VALUES
	(1, '제목1', '게시글 내용1', 0, 1),
	(2, '제목2', '게시글 내용2', 0, 1),
	(3, '제목3', '게시글 내용3', 0, 1),
	(4, '제목1', '게시글 내용1', 0, 2),
	(5, '제목2', '게시글 내용2', 0, 2),
	(6, '제목3', '게시글 내용3', 0, 2),
	(7, '제목4', '게시글 내용4', 0, 1),
	(8, '제목5', '게시글 내용5', 0, 1),
	(9, '제목6', '게시글 내용6', 0, 1),
	(10, '제목4', '게시글 내용4', 0, 2),
	(11, '제목5', '게시글 내용5', 0, 2);

-- 테이블 subquery_study.score_mst 구조 내보내기
DROP TABLE IF EXISTS `score_mst`;
CREATE TABLE IF NOT EXISTS `score_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `score` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 subquery_study.score_mst:~7 rows (대략적) 내보내기
DELETE FROM `score_mst`;
INSERT INTO `score_mst` (`id`, `name`, `score`) VALUES
	(1, '신경수', 100),
	(2, '고희주', 95),
	(3, '장건녕', 85),
	(4, '문승주', 80),
	(5, '이승아', 75),
	(6, '김수현', 65),
	(7, '문경원', 50);

-- 테이블 subquery_study.user_dtl 구조 내보내기
DROP TABLE IF EXISTS `user_dtl`;
CREATE TABLE IF NOT EXISTS `user_dtl` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 subquery_study.user_dtl:~0 rows (대략적) 내보내기
DELETE FROM `user_dtl`;
INSERT INTO `user_dtl` (`id`, `name`, `email`, `phone`) VALUES
	(1, '김준일', 'aaa@naver.com', '01044445555'),
	(2, '김준이', 'bbb@naver.com', '01033332222'),
	(3, NULL, NULL, NULL),
	(4, NULL, NULL, NULL),
	(5, NULL, NULL, NULL),
	(6, NULL, NULL, NULL),
	(7, NULL, NULL, NULL),
	(8, NULL, NULL, NULL);

-- 테이블 subquery_study.user_mst 구조 내보내기
DROP TABLE IF EXISTS `user_mst`;
CREATE TABLE IF NOT EXISTS `user_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 subquery_study.user_mst:~0 rows (대략적) 내보내기
DELETE FROM `user_mst`;
INSERT INTO `user_mst` (`id`, `username`) VALUES
	(1, 'test'),
	(2, 'test2'),
	(3, 'aaa'),
	(4, 'bbb'),
	(5, 'ccc'),
	(6, 'ddd'),
	(7, 'eee'),
	(8, 'ㅇ1');

-- 트리거 subquery_study.user_mst_after_insert 구조 내보내기
DROP TRIGGER IF EXISTS `user_mst_after_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `user_mst_after_insert` AFTER INSERT ON `user_mst` FOR EACH ROW BEGIN

	INSERT INTO

		user_dtl

		(id)

	VALUES 

		(NEW.id);

	

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- 트리거 subquery_study.user_mst_BEFORE_DELETE 구조 내보내기
DROP TRIGGER IF EXISTS `user_mst_BEFORE_DELETE`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `user_mst_BEFORE_DELETE` BEFORE DELETE ON `user_mst` FOR EACH ROW BEGIN
	delete 
	from 
		user_dtl
	where
		id = old.id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
