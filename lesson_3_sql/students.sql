--create table
CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  FIRST_NAME VARCHAR (200) NOT NULL,
  MIDDLE_NAME VARCHAR (200) DEFAULT 'Blank',
  LAST_NAME VARCHAR (200) NOT NULL,
  AGE INTEGER NOT NULL,
  LOCATION VARCHAR (200) NOT NULL
);

--populate table
INSERT INTO students(ID, FIRST_NAME, LAST_NAME, AGE, LOCATION) 
VALUES (1, 'Jon', 'Doe', 23, 'Makati');
INSERT INTO students(ID, FIRST_NAME, LAST_NAME, AGE, LOCATION) 
VALUES (2, 'Jane', 'Daw', 17, 'Quezon');
INSERT INTO students(ID, FIRST_NAME, LAST_NAME, AGE, LOCATION) 
VALUES (3, 'Dun', 'Jow', 90, 'Heaven');
INSERT INTO students(ID, FIRST_NAME, LAST_NAME, AGE, LOCATION) 
VALUES (4, 'Don', 'Dyo', 12, 'Mandaluyong');
INSERT INTO students(ID, FIRST_NAME, LAST_NAME, AGE, LOCATION) 
VALUES (5, 'Jan', 'Bow', 35, 'Cavite');
INSERT INTO students(ID, FIRST_NAME, LAST_NAME, AGE, LOCATION) 
VALUES (6, 'Bon', 'Joe', 40, 'Baguio');

--update value of first record
UPDATE students SET (FIRST_NAME, MIDDLE_NAME, LAST_NAME, AGE, LOCATION) = ('Ivan', 'Ingram', 'Howard', 25, 'Bulacan')
WHERE ID = 1;

--delete last record
DELETE FROM students WHERE ID IN (SELECT MAX(ID) FROM students);