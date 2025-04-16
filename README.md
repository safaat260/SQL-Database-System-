# SQL-Database-System-
Fahim Safaat

create database college;
USE college;
create table student(
	id int primary key,
    studentName varchar(50),
    age int not null
);

show tables;

select * from student;

insert into student 
(id,studentName,age)
values
(232,'Uthso',23),
(231,'Sihab',24);

select * from student where age>23;

drop database if exists practice1;

select * from student where age>23 and id = 231;

select * from student where age>21 or id = 231;

insert into student 
(id,studentName,age)
values
(233,'Rohim',25),
(234,'Korim',26);

select * from student where age between 23 and 25;

select * from student where studentName in ("Rohim","Fohim");

select * from student where studentName in ("Rohim","Korim");

select * from student limit 3;

select * from student order by age ASC;

select * from student order by age DESC;

select avg(age) from student;

select max(age) from student;

select min(age) from student;

select sum(age) from student;

select count(age) from student;

insert into student 
(id,studentName,age)
values
(235,'Rohim',27),
(236,'Torim',28);

update student 
set studentName = 'Qohim'
where studentName = 'Torim';

delete from student where age>25;

SET SQL_SAFE_UPDATES = 0;

select * from student;
-- ADD Column
alter table student add column city varchar(50) not null; 
-- modify column
alter table student modify column city varchar(40); 
-- drop column
alter table student drop column city;
-- rename table
alter table student rename to stu;
-- change column
alter table student change age stu_age int;

create table student2(
		student_id int primary key,
        stu_name varchar(40));
        
show tables;

insert into student2
(student_id,stu_name)
values
(101,'adam'),
(102,'bob'),
(103,'casey');

select * from student2;

CREATE TABLE course (
    student_id INT,
    course VARCHAR(50)
);

INSERT INTO course (student_id, course) VALUES (102, 'english');
INSERT INTO course (student_id, course) VALUES (105, 'math');
INSERT INTO course (student_id, course) VALUES (103, 'science');
INSERT INTO course (student_id, course) VALUES (107, 'computer science');

select * from course;

-- inner join 
SELECT *
FROM student2
INNER JOIN course
ON student2.student_id = course.student_id;

-- right join 
SELECT *
FROM student2 as s
LEFT JOIN course as c
ON s.student_id = c.student_id;

-- left join 
SELECT *
FROM student2 as s
RIGHT JOIN course as c
ON s.student_id = c.student_id;

-- FULL OUTER JOIN simulation in MySQL
SELECT *
FROM student2 AS s
LEFT JOIN course AS c ON s.student_id = c.student_id

UNION

SELECT *
FROM student2 AS s
RIGHT JOIN course AS c ON s.student_id = c.student_id;
