INSERT INTO 
	user_mst
VALUES 
	(0, 'aaa', '1234', '김준일', 'aaa@gmail.com', NOW(), NOW()),
	(0, 'bbb', '1234', '김준일', 'aaa@gmail.com', NOW(), NOW()),
	(0, 'ccc', '1234', '김준일', 'aaa@gmail.com', NOW(), NOW()),
	(0, 'ddd', '1234', '김준일', 'aaa@gmail.com', NOW(), NOW());


	
DELETE
FROM
	user_mst
WHERE
	id = 1;
	
	
SELECT
	nm.title,
	nm.content,
	wm.name,
	ni.img_name
FROM
	study_notice_mst nm
	LEFT OUTER JOIN study_writer_mst wm ON(wm.id = nm.writer_id)
	LEFT OUTER JOIN study_notice_img ni ON(ni.notice_id = nm.id);
	
	
	


/*ON은 조건 (1 은참 0 은 거짓 1 = 1 이라고 하면 cross 조인임 항상 참이므로) 
left join 은 오른쪽 값이 없더라도 왼쪽이 존재하면 다 출력*/	
SELECT
	*
FROM
	user_mst um
	LEFT OUTER JOIN user_dtl ud ON (ud.id = um.id); 
	
	
SELECT
	*
FROM
	order_mst om
	LEFT OUTER JOIN order_dtl od ON (od.order_id = om.id)
	LEFT OUTER JOIN user_mst um ON (um.id = om.user_id);
	
SELECT
	*
FROM 
	user_mst um
	LEFT OUTER JOIN order_mst om ON (om.user_id = um.id)
	LEFT OUTER JOIN order_dtl od ON (od.order_id = om.id);
	
	

INSERT INTO 
	course_mst
VALUE
	(0, 'java'),
	(0, 'python'),
	(0, 'c');
	
	/*----------------*/
INSERT INTO
	emp_mst
VALUE
	(0, '문성현'),
	(0, '윤대휘'),
	(0, '문자영'),
	(0, '정규민');
	
	/*---------------*/
INSERT INTO
	student_mst
VALUE
	(0, '신경수'),
	(0, '고희주'),
	(0, '장건녕'),
	(0, '문승주');
	
	/*-----------------*/
INSERT INTO
	status_mst
VALUE
	(0, '수강'),
	(0, '수료');
	
	/*-----------------*/
INSERT INTO
	student_dtl
VALUE
	(0, 1, 1),
	(0, 2, 2),
	(0, 3, 3),
	(0, 4, 4);
	
	/*-------------------*/
INSERT INTO
	study_mst
VALUE
	(0, 1, 1, 1),
	(0, 2, 1, 2),
	(0, 3, 1, 2),
	(0, 1, 2, 2),
	(0, 3, 2, 1),
	(0, 1, 3, 1),
	(0, 1, 4, 2);
	
	/*-----------------*/	
SELECT
	st.id AS '순번',
	cm.class AS '과목명',
	sm.`name` AS '수강자명',
	em.manager AS '담당자명',
	st2.`status` AS '상태'
FROM 
	study_mst st
	LEFT OUTER JOIN course_mst cm ON (cm.id = st.class_id)
	LEFT OUTER JOIN student_dtl sd ON (sd.id = st.name_id)
	LEFT OUTER JOIN student_mst sm ON (sm.id = sd.name_id)
	LEFT OUTER JOIN emp_mst em ON (em.id = sd.manager_id)
	LEFT OUTER JOIN status_mst st2 ON (st2.id = st.situation_id);


	
SELECT
	sm.id AS '순번',
	cm.class AS '과목명',
	sm.`name` AS '수강자명',
	em.manager AS '담당자명',
	st.`status` AS '상태'
FROM
	student_mst sm
	LEFT OUTER JOIN student_dtl sd ON (sd.name_id = sm.id)
	LEFT OUTER JOIN emp_mst em ON (em.id = sd.manager_id)
	LEFT OUTER JOIN study_mst sm2 ON (sm2.name_id = sm.id)
	LEFT OUTER JOIN status_mst st ON (st.id = sm2.situation_id)
	LEFT OUTER JOIN course_mst cm ON (cm.id = sm2.class_id)
ORDER BY
	sm.id,
	cm.id;

	
SELECT
	cm.id AS '순번',
	cm.class AS '과목명',
	sm2.`name` AS '수강자명',
	em.manager AS '담당자명',
	st.`status` AS '상태'
FROM
	course_mst cm
	LEFT OUTER JOIN study_mst sm ON (sm.class_id = cm.id)
	LEFT OUTER JOIN student_dtl sd ON (sd.id = sm.name_id)
	LEFT OUTER JOIN student_mst sm2 ON (sm2.id = sd.name_id)
	LEFT OUTER JOIN emp_mst em ON (em.id = sd.manager_id)
	LEFT OUTER JOIN status_mst st ON (st.id = sm.situation_id);


	

	

	

	
	
	
	
	