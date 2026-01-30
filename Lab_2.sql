CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    office_location VARCHAR(50)
);
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    gender CHAR(1),
    contact_number VARCHAR(15),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    designation VARCHAR(30),
    email VARCHAR(50) UNIQUE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);
CREATE TABLE Course(
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    credits INT,
    department_id INT,
    faculty_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id),
    FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id)
);
CREATE TABLE Enrollment (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    semester VARCHAR(10),
    grade CHAR(2),
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);