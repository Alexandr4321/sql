/*
DROP table IF EXISTS numbers//
create TABLE numbers(
		id int
)//
DROP PROCEDURE IF EXISTS nums_while//
CREATE PROCEDURE nums_while ()
BEGIN
  DECLARE i INT DEFAULT 1;
  WHILE i <= 10 DO
	INSERT INTO numbers VALUES (i);
  select id from numbers;
    SET i = i + 1;
  END WHILE;
END//

CALL nums_while()//
*/

select concat(cast(floor(123456/60/60/24) as char(3)),'  - day ,  ',
cast(floor(mod(123456/60/60/24,1)*24) as char(2)),' - hours , ',
cast(floor(mod(mod(123456/60/60/24,1)*24,1)*60) as char(2)),' - minutes , ',
cast(round(mod(mod(mod(123456/60/60/24,1)*24,1)*60,1)*60) as char(2)),' - seconds  ')
from dual//