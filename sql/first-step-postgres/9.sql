-- view
-- for bariers users or give acsess to users for some data

-- create view
CREATE VIEW
  english_category_names
AS
SELECT
  category_id, name, language
FROM
  category_names
WHERE
  language='en';

-- call view
SELECT * FROM english_category_names LIMIT 5;

-- inserting view
INSERT INTO english_category_names (category_id, name, language) VALUES (2, 'Brian Holt biopic', 'it');

-- update view
UPDATE english_category_names SET name = 'Brian Holt biopic' WHERE category_id = 2;

-- delete view
DELETE FROM english_category_names WHERE category_id = 2;

-- drop view
DROP VIEW english_category_names;


-- joining views
CREATE VIEW
  actors_roles_movies
AS
SELECT
  p.name AS person_name, c.role, m.name AS movie_name, p.id AS person_id, m.id AS movie_id
FROM
  people p

INNER JOIN
  casts c
ON
  p.id = c.person_id

INNER JOIN
  movies m
ON
  c.movie_id = m.id

WHERE
  c.role <> '';

-- call view
SELECT * FROM actors_roles_movies LIMIT 20;

-- expensive view
SELECT
  arm.person_name, ecn.name AS keyword, COUNT(*) as count
FROM
  actors_roles_movies arm

INNER JOIN
  movie_keywords mk
ON
  mk.movie_id = arm.movie_id

INNER JOIN
  english_category_names ecn
ON
  ecn.category_id = mk.category_id

-- WHERE arm.person_name = 'Julia Roberts'

GROUP BY
  arm.person_name, ecn.name

ORDER BY
  count DESC

LIMIT 20;


-- Materialized Views (performance)

-- create materialized view
CREATE MATERIALIZED VIEW
  actor_categories
AS

SELECT
  arm.person_name, ecn.name AS keyword, COUNT(*) as count
FROM
  actors_roles_movies arm

INNER JOIN
  movie_keywords mk
ON
  mk.movie_id = arm.movie_id

INNER JOIN
  english_category_names ecn
ON
  ecn.category_id = mk.category_id

GROUP BY
  arm.person_name, ecn.name

WITH NO DATA;

-- view (need to populate)
REFRESH MATERIALIZED VIEW actor_categories; -- (lock table)
-- or
REFRESH MATERIALIZED VIEW CONCURRENTLY actor_categories; -- (no lock table)

-- call materialized view
SELECT * FROM actor_categories LIMIT 20;
-- or 
SELECT * FROM actor_categories ORDER BY count DESC NULLS LAST LIMIT 10;



-- get more better performance use index
CREATE INDEX idx_actor_categories_count ON actor_categories(count DESC NULLS LAST);

-- query
EXPLAIN ANALYZE SELECT * FROM actor_categories ORDER BY count DESC NULLS LAST LIMIT 10;


-- using subquery

-- select with subquery
SELECT
  p.name
FROM
  casts c

INNER JOIN
  people p
ON
  c.person_id = p.id

WHERE
  c.movie_id = (
    SELECT
      id
    FROM
      movies
    WHERE
      name = 'Tron Legacy'
  );
-- () - subquery
/* 
SELECT id FROM movies WHERE name = 'Tron Legacy';
is run first and then
the parent query is run
 */

-- or (do with join more readable and faster than subquery)
SELECT
  p.name
FROM
  casts c

INNER JOIN
  people p
ON
  c.person_id = p.id

INNER JOIN
  movies m
ON
  c.movie_id = m.id
AND
  m.name='Tron Legacy';


-- create array from subquery
SELECT
  m.name,
  ARRAY(
    SELECT
      ecn.name
    FROM
      english_category_names ecn
    INNER JOIN
      movie_keywords mk
    ON
      mk.category_id = ecn.category_id
    WHERE
      m.id = mk.movie_id
    LIMIT 5
  ) AS keywords
FROM
  movies m
WHERE
  name ILIKE '%star wars%';
