SELECT
	course_id,
	SUM(score) AS `총합`,
	AVG(score) AS `평균`
FROM
	score_mst
GROUP BY
	course_id
HAVING
	`총합` > 100;
	
	

SELECT
	product_name,
	COUNT(product_name),    /* 중복된 값을 묶어줌*/
	SUM(stock),					/* 더하기*/
	MIN(stock),					/* 값들중 최소값*/
	MAX(stock),					/*값들중 최대값*/
	SUM(stock) / COUNT(1),  /* 평균*/
	AVG(stock)              /* 평균*/
FROM
	order_mst
GROUP BY
	product_name;


/*----------------------------------------------*/
SELECT
	product_name,
	SUM(price * stock) AS total_price
FROM
	order_mst
GROUP BY
	product_name;
/*----------------------------------------------*/
SELECT
	product_name,
	price * stock AS total_price
FROM
	order_mst;


/*----------------------------------------------*/
SELECT
	product_name,
	COUNT(product_name) AS order_count,
	SUM(stock) AS stock_sum,					
	MIN(stock),					
	MAX(stock) AS max_stock,					
	SUM(stock) / COUNT(1),  
	AVG(stock)              
FROM
	order_mst
WHERE
	stock > 50
GROUP BY
	product_name
HAVING 
	max_stock > 49
ORDER BY
	order_count DESC,
	stock_sum DESC
LIMIT 0, 3;        /*limit 숫자하나만 쓰면 위에서 부터 갯수, 두개 쓰면 첫번쨰 숫자 인덱스 부터 뒤에수 갯수만큼 출력*/
/*----------------------------------------------*/
SELECT
	*
FROM
	order_mst
LIMIT 3, 3;




















