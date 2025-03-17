/*
Lab Performence 1

Create a new database name “university ”
 1.	Create a new table in the university database name “teacher”
 2.	The schema is ( Teacher_ID int , Name varchar ,Designation varchar, Departnebt varchar ,
 Credit_load int)
 3.	Insert 20 random value in the teacher table .
 4.	Average credit load of the teacher.
 5. Create a new table in the university database name “Student”.
 6. The schema is ( Student_ID int , Student_Name varchar ,Mobile_NO int,Semester int, cgpa double, Due double).
 7. Insert 25 random value in the Student table .
 8.	Find out the average due of the student.
 9.	Sorting the student table based on the CGPA.
 10.Add a new table of address to student table

 Lab final

 1.Create table course(course_id int, name varchar, semester varchar, student_id int,teacher_id int)
 2.insert 20 random values in course table
 3.perform inner join on student and course title
 4.perform right join on course and student table
 5.perform left join on teacher and course table
 6.perform full join on course and teacher table   

*/

//database create
CREATE DATABASE UNIVERSITY;

//table create
CREATE TABLE teacher(Teacher_Id int, Name varchar(32), Designation varchar(32) ,
Department varchar(32),Credit_load int) ;

//insert into table
INSERT INTO teacher (`Teacher_Id`, `Name`, `Designation`, `Department`, `Credit_load`) VALUES
(1000211, 'Shahriar Kabir', 'Professor', 'Mathematics', 15),
(1000212, 'Tanzina Alam', 'Associate Professor', 'Physics', 13),
(1000213, 'Rakib Hossain', 'Assistant Professor', 'Chemistry', 14),
(1000214, 'Nasrin Sultana', 'Lecturer', 'Biology', 12),
(1000215, 'Fahim Rahman', 'Senior Lecturer', 'Computer Science', 17),
(1000216, 'Tanvir Mahmud', 'Professor', 'Economics', 14),
(1000217, 'Arif Chowdhury', 'Assistant Professor', 'History', 13),
(1000218, 'Sadia Jahan', 'Associate Professor', 'Philosophy', 16),
(1000219, 'Shamim Hossain', 'Lecturer', 'Sociology', 15),
(1000220, 'Nabila Akter', 'Lecturer', 'Psychology', 12),
(1000221, 'Imran Hassan', 'Professor', 'Mathematics', 14),
(1000222, 'Moushumi Akhter', 'Associate Professor', 'Physics', 15),
(1000223, 'Jahidul Islam', 'Assistant Professor', 'Chemistry', 16),
(1000224, 'Shorna Zaman', 'Lecturer', 'Biology', 13),
(1000225, 'Mehedi Hasan', 'Senior Lecturer', 'Computer Science', 18),
(1000226, 'Tarek Anwar', 'Professor', 'Economics', 12),
(1000227, 'Hasib Mahmud', 'Assistant Professor', 'History', 14),
(1000228, 'Rumana Afroz', 'Associate Professor', 'Philosophy', 17),
(1000229, 'Sabbir Rahman', 'Lecturer', 'Sociology', 15),
(1000230, 'Farhana Yasmin', 'Lecturer', 'Psychology', 16);

SELECT * FROM teacher;

//Avarege find
SELECT AVG(Credit_load) FROM teacher;

//create new table
CREATE TABLE Student(
Student_ID INT PRIMARY KEY,
Student_Name VARCHAR(50),Mobile_No int,
Semester int, cgpa double, Due double
);

//insert into student
INSERT INTO Student
(Student_ID, Student_Name, Mobile_No , Semester, cgpa, Due)
VALUES
(118, "Shihab", 01711223344, 4, 3.72, 2000),
(119, "Tanjil", 01722334455, 4, 3.41, 3000),
(120, "Sakib", 01833445566, 4, 3.55, 5000),
(121, "Hossain", 01944556677, 4, 3.60, 7000),
(122, "Amin", 01355667788, 4, 3.20, 1000),
(123, "Jubair", 01466778899, 4, 3.85, 0),
(124, "Sami", 01577889900, 4, 3.47, 4000),
(125, "Asif", 01688990011, 4, 3.92, 12000),
(126, "Sabbir", 01799001122, 4, 3.99, 15000),
(127, "Kawsar", 01800112233, 4, 3.70, 2500),
(128, "Sufian", 01911223344, 4, 3.66, 2000),
(129, "Imran", 01122334455, 4, 3.40, 3000),
(130, "Rafsan", 01233445566, 4, 3.50, 7000),
(131, "Arman", 01344556677, 4, 3.52, 6000),
(132, "Hasan", 01455667788, 4, 3.31, 5000),
(133, "Naim", 01566778899, 4, 3.61, 8000),
(134, "Tamim", 01677889900, 4, 3.90, 3000),
(135, "Ridoy", 01788990011, 4, 3.22, 4000),
(136, "Adib", 01899001122, 4, 3.80, 9000),
(137, "Mahir", 01900112233, 4, 3.71, 4500),
(138, "Saif", 01111223344, 4, 3.36, 5000),
(139, "Robin", 01222334455, 4, 3.48, 6000);

SELECT * FROM Student;

//Avarege Due
SELECT AVG(due) FROM student;

//sort by CGPA
SELECT * FROM student ORDER BY CGPA DESC;

//add a new table
ALTER TABLE student ADD address VARCHAR(30);

UPDATE student SET address = 'Dhaka, Mymensingh' WHERE student_id = 118;
UPDATE student SET address = 'Chittagong, Tanjil' WHERE student_id = 119;
UPDATE student SET address = 'Rajshahi, Sakib' WHERE student_id = 120;
UPDATE student SET address = 'Sylhet, Hossain' WHERE student_id = 121;
UPDATE student SET address = 'Khulna, Amin' WHERE student_id = 122;
UPDATE student SET address = 'Barisal, Jubair' WHERE student_id = 123;
UPDATE student SET address = 'Comilla, Sami' WHERE student_id = 124;
UPDATE student SET address = 'Noakhali, Asif' WHERE student_id = 125;
UPDATE student SET address = 'Bogura, Sabbir' WHERE student_id = 126;
UPDATE student SET address = 'Rangpur, Kawsar' WHERE student_id = 127;
UPDATE student SET address = 'Narsingdi, Sufian' WHERE student_id = 128;
UPDATE student SET address = 'Madaripur, Imran' WHERE student_id = 129;
UPDATE student SET address = 'Tangail, Rafsan' WHERE student_id = 130;
UPDATE student SET address = 'Moulvibazar, Arman' WHERE student_id = 131;
UPDATE student SET address = 'Manikganj, Hasan' WHERE student_id = 132;
UPDATE student SET address = 'Meherpur, Naim' WHERE student_id = 133;
UPDATE student SET address = 'Jhenaidah, Tamim' WHERE student_id = 134;
UPDATE student SET address = 'Satkhira, Ridoy' WHERE student_id = 135;
UPDATE student SET address = 'Patuakhali, Adib' WHERE student_id = 136; 
UPDATE student SET address = 'Khulna, Mahir' WHERE student_id = 137;
UPDATE student SET address = 'Narail, Saif' WHERE student_id = 138;
UPDATE student SET address = 'Jessore, Robin' WHERE student_id = 139;

SELECT * FROM student;


