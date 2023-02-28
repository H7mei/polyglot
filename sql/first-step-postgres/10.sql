-- transactions
BEGIN;

INSERT INTO ingredients (title, type) VALUES ('whiskey', 'other');
INSERT INTO ingredients (title, type) VALUES ('simple syrup', 'other');

INSERT INTO recipes (title, body) VALUES ('old fashioned', 'mmmmmmm old fashioned');

INSERT INTO recipe_ingredients
  (recipe_id, ingredient_id)
VALUES
  (
    (SELECT recipe_id FROM recipes where title='old fashioned'),
    (SELECT id FROM ingredients where title='whiskey')
  ),
  (
    (SELECT recipe_id FROM recipes where title='old fashioned'),
    (SELECT id FROM ingredients where title='simple syrup')
  );

COMMIT;

-- use roolback to undo
ROLLBACK;

-- with variables
BEGIN WORK;

DO $$
DECLARE champagne INTEGER;
DECLARE orange_juice INTEGER;
DECLARE mimosa INTEGER;
BEGIN

INSERT INTO ingredients (title, type) VALUES ('champage', 'other') RETURNING id INTO champagne;
INSERT INTO ingredients (title, type) VALUES ('orange_juice', 'other') RETURNING id INTO orange_juice;

INSERT INTO recipes (title, body) VALUES ('mimosa', 'brunch anyone?') RETURNING recipe_id INTO mimosa;

INSERT INTO recipe_ingredients
  (recipe_id, ingredient_id)
VALUES
  (mimosa, champagne),
  (mimosa, orange_juice);

END $$;

COMMIT WORK;

-- example for using window functions
SELECT
  name, kind, vote_average, AVG(vote_average) OVER () AS all_average
FROM
  movies
LIMIT 50;

-- with partition by statement
SELECT
  name, kind, vote_average, AVG(vote_average) OVER (PARTITION BY kind) AS kind_average
FROM
  movies
LIMIT 50;

-- more
SELECT DISTINCT
  kind, AVG(vote_average) OVER (PARTITION BY kind) AS kind_vote_average
FROM movies;


-- self join
SELECT
  c1.category_id, c1.language AS de_lang, c1.name as de_name, c2.language AS en_lang, c2.name AS en_name
FROM
  category_names c1

LEFT JOIN
  category_names c2
ON
  c1.category_id = c2.category_id
AND
  c2.language = 'en'

WHERE
  c2.language IS NULL
AND
  c1.language = 'de'

LIMIT 50;