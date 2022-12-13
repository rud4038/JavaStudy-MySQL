INSERT INTO
	board_mst
VALUES
	(0, '제목1', '게시글 내용1', 0, 1),
	(0, '제목2', '게시글 내용2', 0, 1),
	(0, '제목3', '게시글 내용3', 0, 1),
	(0, '제목1', '게시글 내용1', 0, 2),
	(0, '제목2', '게시글 내용2', 0, 2),
	(0, '제목3', '게시글 내용3', 0, 2),
	(0, '제목4', '게시글 내용4', 0, 1),
	(0, '제목5', '게시글 내용5', 0, 1),
	(0, '제목6', '게시글 내용6', 0, 1),
	(0, '제목4', '게시글 내용4', 0, 2),
	(0, '제목5', '게시글 내용5', 0, 2),
	(0, '제목6', '게시글 내용6', 0, 2);
	

SELECT
	writer_id,
	COUNT(writer_id) AS '작성한 글 수'
FROM
	board_mst
GROUP BY
	writer_id;	
/*-----------------------------------*/

/*서브쿼리는 결과 1개만 가지고 와야함*/


SELECT
	*,
	(SELECT COUNT(1) FROM board_mst bm2 WHERE bm2.writer_id = bm.writer_id) AS writer_count
FROM
	board_mst bm;
/*-----------------------------------------*/


SELECT
	bm.id,
	bm.title,
	bm.content,
	bm.read_count,
	bm.writer_id,
	wc.writer_count
FROM
	board_mst bm
	LEFT OUTER JOIN (SELECT 
		writer_id, 
		COUNT(1)  AS writer_count
	FROM 
		board_mst 
	GROUP BY 
		writer_id) wc ON (wc.writer_id = bm.writer_id);
		
SET profiling = 1;/*처음 한번만 실행*/
SHOW PROFILES;/*쿼리 실행 시간 출력*/
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		