insert into student_mst
values
	(0, '김춘식'),
	(0, '손흥민');


insert into subject_mst
values
	(0, '컴퓨터 구조'),
	(0, '데이터베이스'),
	(0, '인공지능');
    
insert into score_mst
values
	(0, 1, 1, 95),
	(0, 2, 1, 84),
	(0, 1, 2, 89),
	(0, 2, 2, 92),
	(0, 1, 3, 100),
	(0, 2, 3, 88);
    
select
	sm.id as `순번`,
    sm2.id as `학번`,
    sm2.student_name as `이름`,
    sm3.id as `과목번호`,
    sm3.subject_name as `과목이름`,
    sm.score as `점수`
from
	score_mst sm
    left outer join student_mst sm2 on (sm2.id = sm.student_id)
    left outer join subject_mst sm3 on (sm3.id = sm.subject_id)
where
	sm3.id between 1 and 2;