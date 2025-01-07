CREATE DATABASE SCHOOL_MANAGEMENT;
USE SCHOOL_MANAGEMENT;
CREATE TABLE Parent_Guardian (
    parent_id INT PRIMARY KEY,
    name VARCHAR(255),
    phone_no VARCHAR(20)
);

CREATE TABLE Class (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(50),
    grade VARCHAR(20),
    section VARCHAR(20)
);

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(255),
    dob DATE,
    email VARCHAR(255),
    phone_no VARCHAR(20),
    address TEXT,
    gender VARCHAR(10),
    admission_date DATE,
    parent_id INT,
    class_id INT,
    FOREIGN KEY (parent_id) REFERENCES Parent_Guardian(parent_id),
	FOREIGN KEY (class_id) REFERENCES Class(class_id)
);

CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(255)
);

CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    staff_name VARCHAR(255),
    hire_date DATE,
    email VARCHAR(255),
    phone_no VARCHAR(20),
    address TEXT,
    gender VARCHAR(10),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

CREATE TABLE Subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(255),
    code VARCHAR(50),
    class_id INT,
    staff_id INT,
	FOREIGN KEY (class_id) REFERENCES Class(class_id),
	FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);


