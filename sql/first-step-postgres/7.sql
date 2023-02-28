-- movie extercise

-- Which movie made the most money?
SELECT name, revenue FROM movies ORDER BY COALESCE(revenue, 0) DESC LIMIT 5;
-- or
SELECT name, revenue FROM movies ORDER By revenue DESC NULLS LAST LIMIT 5;

-- How much revenue did the movies Keanu Reeves act in make?
SELECT
  SUM(m.revenue) AS total
FROM
  movies m
INNER JOIN
  casts c
ON
  m.id = c.movie_id

INNER JOIN
  people p
ON
  c.person_id = p.id

WHERE
  p.name = 'Keanu Reeves';

-- another example
SELECT DISTINCT
  m.name, m.revenue
FROM
  movies m

INNER JOIN
  casts c
ON
  m.id = c.movie_id

INNER JOIN
  people p
ON
  c.person_id = p.id

WHERE
  p.name = 'Keanu Reeves'

ORDER BY
  m.revenue DESC NULLS LAST;

-- another example
SELECT
  p.name, j.name
FROM
  people p

INNER JOIN
  casts c
ON
  p.id = c.person_id

INNER JOIN
  jobs j
ON
  c.job_id = j.id

WHERE
  j.name ILIKE '%camera%';

-- Which 5 people were in the movies that had the most revenue?
SELECT
  p.name, COALESCE(SUM(m.revenue),0) AS total
FROM
  movies m

INNER JOIN
  casts c
ON
  m.id = c.movie_id

INNER JOIN
  people p
ON
  c.person_id = p.id

GROUP BY
  p.id, p.name

ORDER BY
  total DESC

LIMIT 5;

-- Which 10 movies have the most keywords?
SELECT
  m.name, COUNT(c.id) AS count
FROM
  movies m

INNER JOIN
  movie_keywords mk
ON
  mk.movie_id = m.id

INNER JOIN
  categories c
ON
  mk.category_id = c.id

GROUP BY
  m.id, m.name

ORDER BY
  count DESC

LIMIT 10;

-- Which category is associated with the most movies?
SELECT
  c.name, COUNT(mk.category_id) AS count
FROM
  movie_keywords mk

INNER JOIN
  categories c
ON
  c.id = mk.category_id

GROUP BY
  c.name, mk.category_id

ORDER BY
  count DESC

LIMIT 5;
-- or
SELECT
  c.name, COUNT(mk.category_id) AS count
FROM
  movie_keywords mk

INNER JOIN
  categories c
ON
  c.id = mk.category_id

GROUP BY
  c.name

ORDER BY
  count DESC

LIMIT 5;

