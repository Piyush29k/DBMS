
SQL*Plus: Release 21.0.0.0.0 - Production on Tue Jan 20 15:00:25 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Tue Jan 20 2026 14:29:52 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> CREATE DATABASE CollegeDB;
CREATE DATABASE CollegeDB
*
ERROR at line 1:
ORA-01501: CREATE DATABASE failed
ORA-01100: database already mounted


SQL> CREATE TABLE Student (
  2      RollNo INT,
  3      Name VARCHAR(50),
  4      Dept VARCHAR(20),
  5      Age INT,
  6      Phone VARCHAR(15)
  7  );

Table created.

SQL> CREATE TABLE Course (
  2      CourseID INT,
  3      CourseName VARCHAR(50),
  4      Credits INT
  5  );

Table created.

SQL> ALTER TABLE Student
  2  ADD City VARCHAR(30);

Table altered.

SQL> ALTER TABLE Student
  2  ADD Semester INT;

Table altered.

SQL> ALTER TABLE Student
  2  RENAME COLUMN Phone TO MobileNo;

Table altered.

SQL> ALTER TABLE Student
  2  CHANGE Phone MobileNo VARCHAR(15);
CHANGE Phone MobileNo VARCHAR(15)
*
ERROR at line 2:
ORA-01735: invalid ALTER TABLE option


SQL> DROP TABLE Course;

Table dropped.

SQL> INSERT INTO Student VALUES
  2  (101, 'Rahul', 'CSE', 20, '9876543210', 'Delhi', 3),
  3  (102, 'Anita', 'ECE', 21, '9123456780', 'Patna', 4),
  4  (103, 'Amit', 'CSE', 22, '9988776655', 'Mumbai', 5),
  5  (104, 'Neha', 'ME', 19, '8899776655', 'Pune', 2),
  6  (105, 'Ravi', 'CIVIL', 23, '7766554433', 'Bhopal', 6);
(101, 'Rahul', 'CSE', 20, '9876543210', 'Delhi', 3),
                                                   *
ERROR at line 2:
ORA-00933: SQL command not properly ended


SQL> SELECT * FROM Student;

no rows selected

SQL> SELECT RollNo, Name FROM Student;

no rows selected

SQL> SELECT * FROM Student
  2  WHERE Dept = 'CSE';

no rows selected

SQL> SELECT * FROM Student
  2  WHERE Age > 20;

no rows selected

SQL> INSERT INTO Student VALUES
  2  (101, 'Rahul', 'CSE', 20, '9876543210', 'Delhi', 3);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES
  2  (102, 'Anita', 'ECE', 21, '9123456780', 'Patna', 4);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES
  2  (103, 'Amit', 'CSE', 22, '9988776655', 'Mumbai', 5);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES
  2  (104, 'Neha', 'ME', 19, '8899776655', 'Pune', 2);

1 row created.

SQL>
SQL> INSERT INTO Student VALUES
  2  (105, 'Ravi', 'CIVIL', 23, '7766554433', 'Bhopal', 6);

1 row created.

SQL> SELECT * FROM Student;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
       101 Rahul
CSE                          20 9876543210      Delhi
         3

       102 Anita
ECE                          21 9123456780      Patna
         4

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------

       103 Amit
CSE                          22 9988776655      Mumbai
         5

       104 Neha
ME                           19 8899776655      Pune

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         2

       105 Ravi
CIVIL                        23 7766554433      Bhopal
         6


SQL> SELECT RollNo, Name FROM Student;

    ROLLNO NAME
---------- --------------------------------------------------
       101 Rahul
       102 Anita
       103 Amit
       104 Neha
       105 Ravi

SQL> SELECT * FROM Student
  2  WHERE Dept = 'CSE';

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
       101 Rahul
CSE                          20 9876543210      Delhi
         3

       103 Amit
CSE                          22 9988776655      Mumbai
         5

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------


SQL> SELECT * FROM Student
  2  WHERE Age > 20;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
       102 Anita
ECE                          21 9123456780      Patna
         4

       103 Amit
CSE                          22 9988776655      Mumbai
         5

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------

       105 Ravi
CIVIL                        23 7766554433      Bhopal
         6


SQL> SP2-0042: unknown command "W" - rest of line ignored.
SQL> UPDATE Student
  2  SET Dept = 'ECE'
  3  WHERE RollNo = 101;

1 row updated.

SQL> UPDATE Student
  2  SET City = 'Patna'
  3  WHERE Name = 'Rahul';

1 row updated.

SQL> UPDATE Student
  2  SET Age = Age + 1;

5 rows updated.

SQL> DELETE FROM Student
  2  WHERE RollNo = 105;

1 row deleted.

SQL> DELETE FROM Student;

4 rows deleted.

SQL> SELECT * FROM Student;

no rows selected

SQL>

