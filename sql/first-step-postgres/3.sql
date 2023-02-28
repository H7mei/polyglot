-- relationships

-- inner join
SELECT recipes.title, recipes.body, recipes_photos.url
  FROM recipes_photos
  INNER JOIN
    recipes
  ON
    recipes_photos.recipe_id = recipes.recipe_id
  WHERE recipes_photos.recipe_id = 4;

-- full inner join
SELECT r.title, r.body, rp.url
  FROM recipes_photos rp
  INNER JOIN
    recipes r
  ON
    rp.recipe_id = r.recipe_id;

-- left join
-- right join
-- full join
-- cross join
-- self join
-- more joins

-- images 
-- https://commons.wikimedia.org/wiki/File:SQL_Joins.svg

-- natural join
SELECT * FROM recipes NATURAL JOIN recipes_photos;

-- cross join
SELECT * FROM recipes CROSS JOIN recipes_photos;

-- self join
SELECT * FROM recipes r1, recipes r2 WHERE r1.recipe_id = r2.recipe_id;

-- managing references
CREATE TABLE recipes (
  recipe_id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  body TEXT NOT NULL
);

CREATE TABLE recipes_photos (
  recipe_id INTEGER REFERENCES recipes(recipe_id),
  url TEXT NOT NULL
);

-- insert
INSERT INTO recipes (title, body) VALUES ('recipe 1', 'recipe 1 body');

-- insert recipes_photos
INSERT INTO recipes_photos (recipe_id, url) VALUES (1, 'recipe-1.jpg');

-- select
SELECT
  i.title AS ingredient_title,
  i.image AS ingredient_image,
  i.type AS ingredient_type,
  r.title AS recipe_title,
  r.body AS recipe_body,
  r.recipe_id AS rid,
  i.id AS iid
FROM
  recipe_ingredients ri
INNER JOIN
  ingredients i
ON
  i.id = ri.ingredient_id
INNER JOIN
  recipes r
ON
  r.recipe_id = ri.recipe_id;

-- constraints
ALTER TABLE ingredients
ADD CONSTRAINT type_enums
CHECK
  (type IN ('meat','fruit','vegetable','other'));

-- foreign key
ALTER TABLE recipe_ingredients
ADD CONSTRAINT recipe_ingredients_recipe_id_fkey
FOREIGN KEY (recipe_id)
REFERENCES recipes(recipe_id);

-- unique
ALTER TABLE ingredients
ADD CONSTRAINT ingredients_title_key
UNIQUE (title);

-- primary key
ALTER TABLE ingredients
ADD CONSTRAINT ingredients_pkey
PRIMARY KEY (id);

-- index
CREATE INDEX ingredients_title_idx ON ingredients (title);

-- drop constraint
ALTER TABLE ingredients
DROP CONSTRAINT ingredients_title_key;

-- drop index
DROP INDEX ingredients_title_idx;

-- alter table add new column set default null
ALTER TABLE ingredients
ADD COLUMN xc VARCHAR ( 255 ) DEFAULT NULL;

-- distinct
SELECT DISTINCT title FROM ingredients;

-- distinct example
SELECT DISTINCT ON (r.recipe_id)
  *
FROM
  recipes r
LEFT JOIN
  recipes_photos rp
ON
  r.recipe_id = rp.recipe_id;

-- group by
SELECT type, COUNT(*) FROM ingredients GROUP BY type;

-- colease
SELECT id, title, type, COALESCE(image, 'default.jpg') FROM ingredients WHERE type = 'fruit';


