-- create
CREATE TABLE t1 (a int, b int);

-- insert
INSERT INTO t1 VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 5);

-- select
SELECT * FROM t1;

-- update
UPDATE t1 SET a = 10 WHERE a = 1;

-- delete
DELETE FROM t1 WHERE a = 2;

-- drop
DROP TABLE t1;
