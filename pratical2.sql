CREATE TABLE Student_Marksheet (
    Roll_No INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Department VARCHAR(50),
    Marks INT
);

INSERT INTO Student_Marksheet
(Roll_No, Student_Name, Department, Marks)
VALUES
(101, 'Pranay Bondre', 'ECE', 87),
(102, 'Rahul Sharma', 'CSE', 82),
(103, 'Aman Verma', 'IT', 91);

SELECT * FROM Student_Marksheet;
