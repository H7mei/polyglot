-- msql sql sntax

-- create database
CREATE DATABASE first_step_mysql;

-- use database
USE first_step_mysql;

-- create table
CREATE TABLE ingredients (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR ( 255 ) UNIQUE NOT NULL
);

-- insert
INSERT INTO ingredients (title) VALUES ('bell pepper');

-- select
SELECT * FROM ingredients;

-- drop table
DROP TABLE ingredients;

-- or
DROP TABLE IF EXISTS ingredients;

-- alter table
ALTER TABLE ingredients ADD COLUMN description TEXT;

-- alter table
-- add
ALTER TABLE ingredients ADD COLUMN image VARCHAR ( 255 );

-- drop
ALTER TABLE ingredients DROP COLUMN image;

-- rename
ALTER TABLE ingredients RENAME COLUMN title TO name;

-- not null
ALTER TABLE ingredients
ADD COLUMN image VARCHAR ( 255 ),
ADD COLUMN type VARCHAR ( 50 ) NOT NULL DEFAULT 'vegetable';

-- on conflict
INSERT INTO ingredients (
  title, image, type
) VALUES
  ( 'watermelon', 'banana.jpg', 'this won''t be updated' )
ON CONFLICT (title) DO UPDATE SET image = excluded.image;

-- update
UPDATE ingredients SET image = 'watermelon.jpg' WHERE title = 'watermelon';

-- use returning
UPDATE ingredients SET image = 'watermelon.jpg' WHERE title = 'watermelon' RETURNING *;

-- delete
DELETE FROM ingredients WHERE title = 'watermelon';

-- use returning
DELETE FROM ingredients WHERE title = 'watermelon' RETURNING *;

-- select
SELECT * FROM ingredients;

-- order by
SELECT * FROM ingredients ORDER BY title;

-- order by desc
SELECT * FROM ingredients ORDER BY id DESC;

-- limit
SELECT * FROM ingredients LIMIT 1;

-- offset
SELECT * FROM ingredients OFFSET 1;

-- limit and offset
SELECT * FROM ingredients LIMIT 1 OFFSET 1;

-- where
SELECT * FROM ingredients WHERE title = 'watermelon';

-- and
SELECT * FROM ingredients WHERE title = 'watermelon' AND type = 'vegetable';

-- or
SELECT * FROM ingredients WHERE title = 'watermelon' OR type = 'vegetable';

-- like
SELECT * FROM ingredients WHERE title LIKE '%water%';

-- not like
SELECT * FROM ingredients WHERE title NOT LIKE '%water%';

-- in
SELECT * FROM ingredients WHERE title IN ('watermelon', 'banana');

-- not in
SELECT * FROM ingredients WHERE title NOT IN ('watermelon', 'banana');

-- between
SELECT * FROM ingredients WHERE id BETWEEN 1 AND 10;

-- not between
SELECT * FROM ingredients WHERE id NOT BETWEEN 1 AND 10;

-- is null
SELECT * FROM ingredients WHERE image IS NULL;

-- is not null
SELECT * FROM ingredients WHERE image IS NOT NULL;

-- exists
SELECT * FROM ingredients WHERE EXISTS (SELECT * FROM ingredients WHERE title = 'watermelon');

-- not exists
SELECT * FROM ingredients WHERE NOT EXISTS (SELECT * FROM ingredients WHERE title = 'watermelon');

-- distinct
SELECT DISTINCT type FROM ingredients;

-- count
SELECT COUNT(*) FROM ingredients;

-- sum
SELECT SUM(id) FROM ingredients;

-- avg
SELECT AVG(id) FROM ingredients;

-- min
SELECT MIN(id) FROM ingredients;

-- max
SELECT MAX(id) FROM ingredients;

-- group by
SELECT type, COUNT(type) FROM ingredients GROUP BY type;

-- having
SELECT type, COUNT(type) FROM ingredients GROUP BY type HAVING COUNT(type) >= 10;

-- concat
SELECT CONCAT(title, image) FROM ingredients;

-- concat_ws
SELECT CONCAT_WS(' ', title, image) FROM ingredients;

-- substring
SELECT SUBSTRING(title, 1, 3) FROM ingredients;

-- trim
SELECT TRIM(' ' FROM title) FROM ingredients;

-- ltrim
SELECT LTRIM(' ' FROM title) FROM ingredients;

-- rtrim
SELECT RTRIM(' ' FROM title) FROM ingredients;

-- lower
SELECT LOWER(title) FROM ingredients;

-- upper
SELECT UPPER(title) FROM ingredients;

-- length
SELECT LENGTH(title) FROM ingredients;

-- round
SELECT ROUND(1.2345, 2) FROM ingredients;

-- ceil
SELECT CEIL(1.2345) FROM ingredients;

-- floor
SELECT FLOOR(1.2345) FROM ingredients;

-- abs
SELECT ABS(-1.2345) FROM ingredients;

-- random
SELECT * FROM ingredients ORDER BY RAND() LIMIT 1;

-- date
SELECT NOW();
SELECT CURDATE();
SELECT CURTIME();
SELECT DATE('2018-01-01');
SELECT DATE_ADD('2018-01-01', INTERVAL 1 DAY);
SELECT DATEDIFF('2018-01-01', '2018-01-02');
SELECT DATE_FORMAT('2018-01-01', '%Y-%m-%d');
SELECT DATE_FORMAT(NOW(), '%Y-%m-%d');

