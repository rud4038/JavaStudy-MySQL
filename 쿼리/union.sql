/*union 결과를 밑으로 합쳐줌(중복 제거)
  unionall 은 중복제거 안함  둘다 사용할때 짝을 맞춰줘야 사용가능*/
select
	name,
    email,
    0 as score
from
	user_dtl
where
	name = '김준일'
union
select
	name,
    null as email,
    score
from
	score_mst
where
	score > 80;




