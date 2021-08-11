-- Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)
CREATE TABLE person (
  id SERIAL PRIMARY KEY,
  name VARCHAR(30), 
  age NUMERIC(2), 
  height_cm NUMERIC(4) , 
  city VARCHAR(30), 
  favorite_color VARCHAR(30)
  );

-- Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.
INSERT INTO person(name, age, height_cm, city, favorite_color)
VALUES ('Charlotte', 33, 152, 'Alhambra', 'pink');

INSERT INTO person(name, age, height_cm, city, favorite_color)
VALUES ('David', 37, 194, 'Rosemead', 'red');

INSERT INTO person(name, age, height_cm, city, favorite_color)
VALUES ('Evangeline', 25, 162, 'Huntington Beach', 'black');

INSERT INTO person(name, age, height_cm, city, favorite_color)
VALUES ('Riley', 19, 172, 'El Monte', 'orange');

INSERT INTO person(name, age, height_cm, city, favorite_color)
VALUES ('Andon', 43, 184, 'Irvine', 'blue');


-- Select all the people in the person table by height from tallest to shortest.
SELECT name, age, height_cm, city, favorite_color FROM person
ORDER BY height_cm ASC

-- Select all the people in the person table by height from shortest to tallest.
SELECT name, age, height_cm, city, favorite_color FROM person
ORDER BY height_cm DESC

-- Select all the people in the person table by age from oldest to youngest.
SELECT name, age, height_cm, city, favorite_color FROM person
ORDER BY age ASC

-- Select all the people in the person table older than age 20.
SELECT name, age, height_cm, city, favorite_color FROM person
WHERE age >20 

-- Select all the people in the person table that are exactly 18.
SELECT name, age, height_cm, city, favorite_color FROM person
WHERE age = 18

-- Select all the people in the person table that are less than 20 and older than 30.
SELECT name, age, height_cm, city, favorite_color FROM person
WHERE age < 20 OR age > 30;

-- Select all the people in the person table that are not 27 (use not equals).
SELECT name, age, height_cm, city, favorite_color FROM person
WHERE age <> 27;

-- Select all the people in the person table where their favorite color is not red.
SELECT name, age, height_cm, city, favorite_color FROM person
WHERE favorite_color <> 'red';

-- Select all the people in the person table where their favorite color is not red and is not blue.
SELECT name, age, height_cm, city, favorite_color FROM person
WHERE favorite_color <> 'red' AND favorite_color <> 'blue';

-- Select all the people in the person table where their favorite color is orange or green.
SELECT name, age, height_cm, city, favorite_color FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT name, age, height_cm, city, favorite_color FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

-- Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT name, age, height_cm, city, favorite_color FROM person
WHERE favorite_color IN ('yellow', 'purple');


