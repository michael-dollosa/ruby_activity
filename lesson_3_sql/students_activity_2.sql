-- Use your previous table `students`
-- Display the count of all `students`
select count(*) from students;
-- Select all students with `location` is `Manila`
select * from students 
where location = 'Manila';
-- Display the average `age` of all `students`
select avg(age) from students;
-- Display all `students` by `age` descending order
select * from students
order by age desc;