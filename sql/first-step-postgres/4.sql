-- JSONB

-- alter table first_step add column data jsonb;
ALTER TABLE recipes ADD COLUMN meta JSONB;

-- insert into
INSERT INTO recipes (title, meta) VALUES ('watermelon', '{"title": "watermelon", "image": "watermelon.jpg", "type": "fruit"}');

-- insert into nested json
INSERT INTO recipes (title, meta) VALUES ('GIN', '{"title": ["watermelon", "watermelon"], "image": "watermelon.jpg", "type": "fruit"}');

-- select first_step.data -> 'title' from first_step;
SELECT recipes.meta -> 'title' FROM recipes;

-- select data from json b array
SELECT recipes.meta -> 'title' -> 0 AS title, recipes.meta -> 'type' AS type FROM recipes;

-- json string to text
SELECT recipes.meta ->> 'title' AS title, recipes.meta ->> 'type' AS type FROM recipes;

-- update json
UPDATE recipes SET meta = meta || '{"image": "watermelon.jpg"}' WHERE title = 'watermelon';

-- update json nested
UPDATE recipes SET meta = meta || '{"title": ["watermelon", "watermelon"]}' WHERE title = 'watermelon';

-- contains / select all
SELECT * FROM recipes WHERE meta @> '{"title": "watermelon"}';
SELECT * FROM recipes WHERE meta -> 'type' ? 'fruit';

