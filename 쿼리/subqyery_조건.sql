/*주어진 데이터가 아이디 밖에 없을 때(test,test2) */

select * from user_mst;
select * from user_dtl;


select
	*
from
	user_dtl ud
where
	id = (select id from user_mst where username = 'test2');

select
	*
from
	user_dtl
where
	id in (select id from user_mst where username like '%test%');     /*in 에 포함된것 출력*/
    
    
select
	*
from
	user_dtl ud
    left outer join user_mst um on (um.id = ud.id)
where
	um.username = 'test';

/*원하는 컬럼을 만들어서 조회하는 방법*/
select
	'아이디' as username,
    12 as `month`,
    14 as `day`; 
    
select
	*,
    '테스트' as test
from
	user_dtl;


insert into
	user_mst
values
	(0, 'aaa'),
	(0, 'bbb'),
	(0, 'ccc'),
	(0, 'ddd'),
	(0, 'eee');

/*ifnull 은 A가 null 이면 B를 반환, NULL이 아니면 A를 반환
  nullif 는 A와 B가 같으면 NULL을 반환 같지 않으면 A를 반환*/
  /*case end 에서 when은 조건 */
select
	*,
    ifnull(name, 1) as flag,
    nullif(name, null) as flag2,
    case 
		when ifnull(name, 1) = 1 then 1
		when ifnull(name, 1) = 2 then 2
		when ifnull(name, 1) = 3 then 3
		when ifnull(name, 1) = 4 then 4
        else 0 
	end as flag3,
    if(name is null, 1, 0) as flag4
from
	user_dtl;





    
    
    
