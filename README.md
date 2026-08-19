Student Table SQL Code Explanation

This SQL code creates a table named student, inserts student records into it, and retrieves students who scored 60 marks.

create table student(
    student_id int primary key,
    name varchar(20) not null,
    marks int
);
CREATE TABLE student creates a new table called student.
student_id INT PRIMARY KEY stores the unique ID of each student. A primary key cannot contain duplicate or NULL values.
name VARCHAR(20) NOT NULL stores the student's name with a maximum length of 20 characters. NOT NULL ensures that every student must have a name.
marks INT stores the marks obtained by the student.
insert into student(student_id,name,marks) values (1,'Rahul',60);
insert into student(student_id,name,marks) values (2,'Manthan',70);

These statements insert two records into the student table:

Student ID	Name	Marks
1	Rahul	60
2	Manthan	70
select * from student where marks=60;

This query retrieves all columns (*) from the student table where the student's marks are equal to 60.

Output:

student_id	name	marks
1	Rahul	60
