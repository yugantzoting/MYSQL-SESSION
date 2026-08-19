create table student(
    student_id int primary key,
    name varchar(20) not null,
    marks int);

insert into student(student_id,name,marks) values (1,'Rahul',60);
insert into student(student_id,name,marks) values (2,'Manthan',70);

select * from student where marks=60;
