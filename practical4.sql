-- CREATE DATABASE

CREATE DATABASE healthcare_management;
USE healthcare_management;


-- CREATE TABLES

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(50) NOT NULL,
    specialization VARCHAR(50),
    email VARCHAR(60) UNIQUE,
    phone VARCHAR(15) UNIQUE,
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(50) NOT NULL,
    age INT CHECK (age > 0),
    gender VARCHAR(10),
    contact_no VARCHAR(15) UNIQUE
);

CREATE TABLE hospital_rooms (
    room_id INT PRIMARY KEY,
    room_number INT UNIQUE NOT NULL,
    room_type VARCHAR(30) NOT NULL,
    patient_id INT,
    FOREIGN KEY (patient_id)
        REFERENCES patients(patient_id)
);

CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE NOT NULL,
    appointment_reason VARCHAR(100),
    FOREIGN KEY (patient_id)
        REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id)
        REFERENCES doctors(doctor_id)
);


-- INSERT DATA INTO DEPARTMENTS

INSERT INTO departments VALUES
(1, 'Cardiology'),
(2, 'Dermatology'),
(3, 'Pediatrics');


-- INSERT DATA INTO DOCTORS

INSERT INTO doctors VALUES
(101, 'Dr. Anjali Patil', 'Cardiologist',
 'anjali@healthcare.com', '9876500001', 1),

(102, 'Dr. Rohit Verma', 'Dermatologist',
 'rohit@healthcare.com', '9876500002', 2),

(103, 'Dr. Sneha Joshi', 'Pediatrician',
 'sneha@healthcare.com', '9876500003', 3);


-- INSERT DATA INTO PATIENTS

INSERT INTO patients VALUES
(201, 'Arjun Sharma', 28, 'Male', '9123400001'),
(202, 'Neha Gupta', 35, 'Female', '9123400002'),
(203, 'Rohan Deshmukh', 12, 'Male', '9123400003');


-- INSERT DATA INTO ROOMS

INSERT INTO hospital_rooms VALUES
(1, 101, 'General', 201),
(2, 102, 'Private', 202),
(3, 103, 'Children Ward', 203);


-- INSERT DATA INTO APPOINTMENTS

INSERT INTO appointments VALUES
(301, 201, 101, '2026-08-20', 'Heart checkup'),
(302, 202, 102, '2026-08-21', 'Skin allergy'),
(303, 203, 103, '2026-08-22', 'Regular health checkup');


-- SHOW ALL TABLES

SHOW TABLES;


-- DESCRIBE DOCTOR TABLE

DESCRIBE doctors;


-- SHOW APPOINTMENT TABLE STRUCTURE

SHOW CREATE TABLE appointments;


-- DISPLAY ALL DATA

SELECT * FROM departments;

SELECT * FROM doctors;

SELECT * FROM patients;

SELECT * FROM hospital_rooms;

SELECT * FROM appointments;
