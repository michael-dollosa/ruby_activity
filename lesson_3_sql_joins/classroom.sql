--create table
CREATE TABLE classrooms (
  id INTEGER PRIMARY KEY,
  student_id INTEGER NOT NULL,
  section VARCHAR (3) NOT NULL,
  --commented out constraint (for practice purposes) since some student_id in this exercise is not present in students table (due to hardcoding insert data). 
  --CONSTRAINT fk_student_id FOREIGN KEY (student_id) REFERENCES students(id)
);

--populate table
INSERT INTO classrooms(id, student_id, section) 
VALUES (1, 1, 'A');
INSERT INTO classrooms(id, student_id, section) 
VALUES (2, 2, 'A');
INSERT INTO classrooms(id, student_id, section) 
VALUES (3, 3, 'B');
INSERT INTO classrooms(id, student_id, section) 
VALUES (4, 4, 'C');
INSERT INTO classrooms(id, student_id, section) 
VALUES (5, 5, 'B');
INSERT INTO classrooms(id, student_id, section) 
VALUES (6, 6, 'A');
INSERT INTO classrooms(id, student_id, section) 
VALUES (7, 7, 'C');
INSERT INTO classrooms(id, student_id, section) 
VALUES (8, 8, 'B');
INSERT INTO classrooms(id, student_id, section) 
VALUES (9, 9, 'B');
INSERT INTO classrooms(id, student_id, section) 
VALUES (10, 10, 'C');

--inner join
select * from students s
inner join classrooms c
on s.id = c.student_id;
--left join
select * from students s
left join classrooms c
on s.id = c.student_id;
--right join -- will display blank values from students cols since classroom values will be all be printed
select * from students s
right join classrooms c
on s.id = c.student_id;
--full join -- will display blank values from students cols since classroom values will be all be printed
select * from students s
full join classrooms c
on s.id = c.student_id;