insert into
	score_mst
values
	(0, '신경수', 100),
	(0, '고희주', 95),
	(0, '장건녕', 85),
	(0, '문승주', 80),
	(0, '이승아', 75),
	(0, '김수현', 65),
	(0, '문경원', 50);
/*---------------------------------*/
select
	*,
    case
		when score > 100 or score < 0 then 'x'
		when score > 89 then 'A'
		when score > 79 then 'B'
		when score > 69 then 'C'
		when score > 59 then 'D'
        else 'F'
    end as grade
from
	score_mst;
/*----------------------------------------*/ 
select
	*,
    case
		when score > 100 or score < 0 then 'x'
		when score between 90 and 100 then 'A'
		when score between 80 and 89 then  'B'
		when score between 70 and 79 then  'C'
		when score between 60 and 69 then  'D'
        else 'F'
    end as grade
from
	score_mst;
/*-------------------------------------*/
    


/*
	grade
    90 ~ 100 A
    80 ~ 89 B
    70 ~ 79 C
    60 ~ 69 D
    0 ~ 59 F
*/

