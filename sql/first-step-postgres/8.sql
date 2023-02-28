-- Query Performance (relative)

-- expain analyze (add before SQL)
EXPLAIN
-- or
EXPLAIN ANALYZE

-- index scan is faster than seq scan

-- postgresql performance tuning

-- create unique index
CREATE TABLE american_addresses (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    street_address int NOT NULL,
    city VARCHAR(255) NOT NULL,
    state VARCHAR(255) NOT NULL,
    UNIQUE (street_address, city, state)
);

-- create index
CREATE INDEX idx_american_addresses_street_address ON american_addresses (street_address);
-- or
CREATE INDEX idx_american_addresses_city ON american_addresses (city);
-- or
CREATE INDEX idx_american_addresses_state ON american_addresses (state);

-- delete index
DROP INDEX idx_american_addresses_street_address;
-- or
DROP INDEX idx_american_addresses_city;
-- or
DROP INDEX idx_american_addresses_state;


-- index types
-- btree (binary tree)
/* 
  - default
  - good for equality and range queries
  - good for sorting
 */
-- example
CREATE INDEX idx_american_addresses_street_address ON american_addresses (street_address);

-- hash (hash index)
/* 
  - good for equality queries
  - good for hashing
 */
-- example
CREATE INDEX idx_american_addresses_street_address ON american_addresses (street_address) USING HASH;

-- gist (generalized search tree)
/* 
  - good for spatial data
 */
-- example
CREATE INDEX idx_american_addresses_street_address ON american_addresses (street_address) USING GIST;

-- gin (generalized inverted index)
/* 
  - good for full text search
 */
-- example
CREATE INDEX idx_american_addresses_street_address ON american_addresses (street_address) USING GIN;

-- sp-gist (space-partitioned generalized search tree)
/* 
  - good for indexing arrays
 */
-- example
CREATE INDEX idx_american_addresses_street_address ON american_addresses (street_address) USING SP-GIST;

-- brin (block range index)
/* 
  - good for large tables
  - good for range queries
 */
-- example
CREATE INDEX idx_american_addresses_street_address ON american_addresses (street_address) USING BRIN;

-- more info : https://sql.holt.courses/lessons/query-performance/create-an-index


-- create index example with data
 TABLE movie_reviews (
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  movie_id INTEGER,
  scores JSONB NOT NULL
);

INSERT INTO
  movie_reviews
  (movie_id, scores)
VALUES
  (21103, '{ "rotten_tomatoes": 94, "washington_post": 50, "nytimes": 45 }'),
  (97, '{ "rotten_tomatoes": 87, "washington_post": 40 }'),
  (18235, '{ "rolling_stone": 85, "washington_post": 60, "nytimes": 35 }'),
  (10625, '{ "rotten_tomatoes": 100, "washington_post": 100, "nytimes": 100, "rolling_stone": 100 }'),
  (85014, '{ "nytimes": 67 }'),
  (2493, '{ "rotten_tomatoes": 67, "rolling_stone": 89, "nytimes": 85 }'),
  (11362, '{ "rotten_tomatoes": 76, "washington_post": 14, "nytimes": 98 }'),
  (674, '{ "rotten_tomatoes": 78, "washington_post": 40, "nytimes": 77, "rolling_stone": 54 }');

-- create index
CREATE INDEX ON movie_reviews USING gin(scores);

-- query
EXPLAIN ANALYZE SELECT * FROM movie_reviews WHERE scores ? 'rolling_stone';

-- query
EXPLAIN ANALYZE SELECT *  FROM movie_reviews WHERE scores @> '{"nytimes": 98}';



-- GIN and Full Text Search

-- show every permutation of a string
SELECT SHOW_TRGM('star wars');

-- before
EXPLAIN ANALYZE SELECT * FROM movies WHERE name ILIKE '%star wars%';

-- index
CREATE INDEX ON movies USING gin(name gin_trgm_ops);

-- after
EXPLAIN ANALYZE SELECT * FROM movies WHERE name ILIKE '%star wars%';


-- use partial scan

-- see all 
SELECT DISTINCT language, COUNT(*) FROM category_names GROUP BY language;

-- create index only for english
CREATE INDEX idx_en_category_names ON category_names(language) WHERE language = 'en';

-- query
EXPLAIN ANALYZE SELECT * FROM category_names WHERE language='en' AND name ILIKE '%animation%' LIMIT 5;

-- query
EXPLAIN ANALYZE SELECT * FROM category_names WHERE language='de' AND name ILIKE '%animation%' LIMIT 5;


-- declarative value indexing

-- create index
CREATE INDEX idx_movies_profit ON movies (COALESCE((revenue - budget), 0));

-- query
EXPLAIN ANALYZE SELECT
  name, date, revenue, budget, COALESCE((revenue - budget), 0) AS profit
FROM
  movies
ORDER BY
  profit DESC
LIMIT 10;