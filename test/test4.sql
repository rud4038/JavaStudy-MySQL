START TRANSACTION;
INSERT INTO `상품`
VALUES(0, '오렌지사탕', 20);

savepoint p1;
UPDATE `상품`
SET
    `수량` = 200
WHERE
    `상품코드` = 2;
    
DELETE
FROM
    `상품`
WHERE
    `상품코드` = 2;
select * from `상품`;
rollback to p1;
select * from `상품`;
COMMIT;