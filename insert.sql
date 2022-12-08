
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

SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst;
	


