-- create table
CREATE TABLE ingredients (
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  title VARCHAR ( 255 ) UNIQUE NOT NULL
);

-- insert
INSERT INTO ingredients (title) VALUES ('bell pepper');

-- select
SELECT * FROM ingredients;

-- drop table
DROP TABLE ingredients;

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
SELECT * FROM ingredients WHERE title = 'watermelon' AND image = 'watermelon.jpg';

-- or
SELECT * FROM ingredients WHERE title = 'watermelon' OR image = 'watermelon.jpg';

-- not
SELECT * FROM ingredients WHERE NOT title = 'watermelon';

-- like
SELECT * FROM ingredients WHERE title LIKE 'water%';

-- ilike
SELECT * FROM ingredients WHERE title ILIKE 'water%';

-- ilike with _ and %
SELECT * FROM ingredients WHERE title ILIKE 'w_ter%';

-- in
SELECT * FROM ingredients WHERE title IN ('watermelon', 'banana');

-- between
SELECT * FROM ingredients WHERE id BETWEEN 1 AND 3;

-- is null
SELECT * FROM ingredients WHERE image IS NULL;

-- is not null
SELECT * FROM ingredients WHERE image IS NOT NULL;

-- exists
SELECT * FROM ingredients WHERE EXISTS (SELECT 1 FROM ingredients);

-- not exists
SELECT * FROM ingredients WHERE NOT EXISTS (SELECT 1 FROM ingredients);

-- distinct
SELECT DISTINCT title FROM ingredients;

-- more
-- https://www.postgresql.org/docs/9.2/functions.html





