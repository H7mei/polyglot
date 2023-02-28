-- aggregation

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
