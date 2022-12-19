create view user_view
as
	SELECT
		`ID`,
		`USERNAME`,
		`PASSWORD`,
		`NAME`,
		`EMAIL`
	FROM
		`USER_MST`
	WHERE
		`ID` BETWEEN 1 AND 200;
	
select
	*
from
	user_view
where
	`USERNAME` like 'a%';