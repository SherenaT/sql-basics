-- Add 3 new artists to the artist table. (It already exists.)
-- Step 5: employee table
INSERT INTO artist(name)
VALUES ('Taylor Swift');

INSERT INTO artist(name)
VALUES ('Lifehouse');

INSERT INTO artist(name)
VALUES ('10cm');

-- Select 10 artists in reverse alphabetical order.
SELECT artist_id, name FROM artist
ORDER BY name DESC
LIMIT 10;

-- Select 5 artists in alphabetical order.
SELECT artist_id, name FROM artist
ORDER BY name ASC
LIMIT 5;

-- Select all artists that start with the word ‘Black’.
SELECT * FROM artist
WHERE name ~ '^Black';
-- SELECT name FROM artist
-- WHERE name LIKE 'Black%';

-- Select all artists that contain the word ‘Black’.
SELECT * FROM artist
WHERE name ~ 'Black';
-- SELECT name FROM artist
-- WHERE name LIKE '%Black%';