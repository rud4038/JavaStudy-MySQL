
/*
C(reate)R(ead)U(pdate)D(elete)

INSERT (추가) - C
SELECT (조회) - R
UPDATE (수정) - U
DELETE (삭제) - D
대소문자 구분 안하고 쓰기때문에 전부다 스네이크 표기법으로 씀
*/

INSERT INTO product_mst
/*(id, product_name,product_price) 생략가능(VALUES의 순서가 같을 때)*/ 
VALUES
(0, '스타벅스 블랙 머그컵3', 15000),
(0, '스타벅스 화이트 머그컵3', 20000),
(0, '스타벅스 블루 머그컵3', 25000);

SELECT /*순서 바꿔도 실행 된다.*/
	id,
	product_name,
	product_price 
FROM 
	product_mst;
	

INSERT INTO student_mst
VALUE
(0, '임지현', 1, 80),
(0, '신경수', 2, 90),
(0, '고희주', 3, 75),
(0, '문승주', 1, 85),
(0, '장건녕', 2, 95),
(0, '박수현', 3, 90),
(0, '황석민', 1, 80),
(0, '박준현', 2, 85),
(0, '이승아', 3, 90),
(0, '김수현', 1, 75);
/*----------------------------------------*/

SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	`name` LIKE '%수%'  /* 앞뒤로 머가오든 출력*/
	AND `name` not LIKE '%수';/* %문자 = 문자앞에 머가 오든 출력*/

	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	student_year not IN(1, 2);  /*not 키워드 옆에 씀, in 포함하는 것 출력*/
	

SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE 
	score not BETWEEN 80 AND 90; /* 사이에 있는 값들을 뽑아온다.*/ 
	

SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE 
	`name` IS not NULL; /*IS NULL null값인것만 출력, IS NULL 일떄 not 은 사이에 적어야한다.*/
	
/* ------------------------------*/	
UPDATE 
	student_mst 
SET
	score = 80 
WHERE
	`name` = '박준현';


/*
	2학년 중에 성적이 80~90 사이인 학생들의 점수를 100으로 바꿔라
*/
UPDATE 
	student_mst 
SET 
	score = 100 
WHERE
	student_year = 2 
	AND score BETWEEN 80 AND 90;
	
	
/*-------------------------------*/

DELETE 
FROM 
	student_mst
WHERE
	score < 80;
	

	


