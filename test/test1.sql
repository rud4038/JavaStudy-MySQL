create database delivery_db character set utf8mb4 collate utf8mb4_general_ci;
use delivery_db;
create table `delivery_db`.`delivery_mst`(
	`delivery_id` int not null auto_increment,
    `delivery_company` varchar(20) not null,
    `delivery_man` varchar(15) not null,
    `delivery_address` varchar(100) not null,
    `consignee_name` varchar(15) not null,
    `consignee_phone` varchar(14) not null,
    `consignee_message` text,
    primary key(`delivery_id`)
    );
    
insert into delivery_mst
values
	(0, '대한통운', '김준일', '부산광역시 연제구 중앙대로 1001 부산광역시청', '김춘식', '010-8282-5353', '안전하게 배송해주세요.');

select * from delivery_mst;