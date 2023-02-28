-- Triggers and Procedures

-- function
CREATE OR REPLACE FUNCTION
  get_recipes_with_ingredients(low INT, high INT)
RETURNS
  SETOF VARCHAR
LANGUAGE
  plpgsql
AS
$$
BEGIN
  RETURN QUERY SELECT
    r.title
  FROM
    recipe_ingredients ri

  INNER JOIN
    recipes r
  ON
    r.recipe_id = ri.recipe_id

  GROUP BY
    r.title
  HAVING
    COUNT(r.title) between low and high;
END;
$$;

-- call
SELECT * FROM get_recipes_with_ingredients(2, 3);

-- delete
DROP FUNCTION get_recipes_with_ingredients;

-- see all functions
-- \df

-- procedure
CREATE PROCEDURE
  set_null_ingredient_images_to_default()
LANGUAGE
  SQL
AS
$$
  UPDATE
    ingredients
  SET
    image = 'default.jpg'
  WHERE
    image IS NULL;
$$;

-- call
CALL set_null_ingredient_images_to_default();

-- delete
DROP PROCEDURE set_null_ingredient_images_to_default;

-- see all procedures
-- \dp

-- trigger

-- create table
CREATE TABLE updated_recipes (
  id INT GENERATED ALWAYS AS IDENTITY,
  recipe_id INT,
  old_title VARCHAR (255),
  new_title VARCHAR (255),
  time_of_update TIMESTAMP
);

-- create trigger
CREATE OR REPLACE FUNCTION log_updated_recipe_name()
  RETURNS
    TRIGGER
  LANGUAGE
    plpgsql
AS
$$
BEGIN
  IF OLD.title <> NEW.title THEN
    INSERT INTO
      updated_recipes (recipe_id, old_title, new_title, time_of_update)
    VALUES
      (NEW.recipe_id, OLD.title, NEW.title, NOW());
  END IF;
  RETURN NEW;
END;
$$;

-- trigger action
CREATE OR REPLACE TRIGGER updated_recipe_trigger
AFTER UPDATE ON recipes FOR EACH ROW EXECUTE PROCEDURE log_updated_recipe_name();


-- language
/* 
plpgsql is the procedural language for PostgreSQL.
It is a procedural language that is based on the SQL language.

javascript, python, perl, php, ruby, java, c, c++, c#, etc.

javascript : https://plv8.github.io/
python : https://www.postgresql.org/docs/current/plpython.html
 */

