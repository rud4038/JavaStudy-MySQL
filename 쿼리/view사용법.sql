/*
	뷰(VIEW)
    자주 조회하는 select문을 저장하는 방법
*/

create view course_view
as
	select
		sm.id as course_id,
        sm.class_id,
        cm.class as subject_name,
        sm.name_id,
        sd.name_id as student_name,
        situation_id
	from
		study_mst sm
		left outer join course_mst cm on(cm.id = sm.class_id)
        left outer join student_dtl sd on(sd.id = sm.name_id);
        
        
select
	*
from
	course_view
where
	course_id > 5





