/*
	TCL
    1. COMMUT		- 트랜잭션 확정
    2. ROLLBACK		- 트랜잭션 취소
    3. SAVEPOINT	- 중간지점 저장
*/
set autocommit = 0;
select @@autocommit;

create database `transaction_study`;
use transaction_study;

create table `transaction_study`.`emp_mst`(
	`id` INT not null auto_increment,
    `name` varchar(15) default null,
    primary key (`id`)
);

select @@autocommit;


start transaction;
savepoint p1;
insert into emp_mst
values
	(0, '김준일'),
	(0, '신경수'),
	(0, '고희주'),
	(0, '장건녕');
select * from emp_mst;

savepoint p2;

update emp_mst
set
	`name` = '문승주'
where
	id = 5;
    
rollback to p2;
select * from emp_mst;
rollback to p1;
select * from emp_mst;
/*그냥 rollback 만 입력하면 트랜잭션 시작점으로 돌아감*/

commit;
/*마지막에 꼭 commit해야 데이터 저장됨*/











