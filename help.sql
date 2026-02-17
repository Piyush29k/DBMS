-- ============================================================
-- DATABASE HELP FILE
-- Project: Student Management System
-- Tables: STUDENT, FACULTY, COURSE, ENROLLMENT
-- ============================================================


-- ============================================================
-- 1. VIEW ALL TABLES IN YOUR DATABASE
-- ============================================================

SELECT table_name 
FROM user_tables;


-- ============================================================
-- 2. VIEW STRUCTURE OF TABLES
-- ============================================================

DESC STUDENT;
DESC FACULTY;
DESC COURSE;
DESC ENROLLMENT;


-- ============================================================
-- 3. DISPLAY ALL RECORDS FROM TABLES
-- ============================================================

SELECT * FROM STUDENT;
SELECT * FROM FACULTY;
SELECT * FROM COURSE;
SELECT * FROM ENROLLMENT;


-- ============================================================
-- 4. COUNT TOTAL RECORDS
-- ============================================================

SELECT COUNT(*) AS TOTAL_STUDENTS FROM STUDENT;
SELECT COUNT(*) AS TOTAL_FACULTY FROM FACULTY;
SELECT COUNT(*) AS TOTAL_COURSES FROM COURSE;
SELECT COUNT(*) AS TOTAL_ENROLLMENTS FROM ENROLLMENT;


-- ============================================================
-- 5. DISPLAY STUDENTS BY DEPARTMENT
-- ============================================================

SELECT *
FROM STUDENT
WHERE DEPT_ID = 101;


-- ============================================================
-- 6. DISPLAY FEMALE STUDENTS
-- ============================================================

SELECT *
FROM STUDENT
WHERE GENDER = 'F';


-- ============================================================
-- 7. DISPLAY FAILED STUDENTS (GRADE = F)
-- ============================================================

SELECT *
FROM ENROLLMENT
WHERE GRADE = 'F';


-- ============================================================
-- 8. DISPLAY STUDENT WITH COURSE AND GRADE (JOIN QUERY)
-- ============================================================

SELECT 
    S.STUDENT_ID,
    S.NAME,
    C.COURSE_NAME,
    E.GRADE
FROM STUDENT S
JOIN ENROLLMENT E 
    ON S.STUDENT_ID = E.STUDENT_ID
JOIN COURSE C 
    ON E.COURSE_ID = C.COURSE_ID;


-- ============================================================
-- 9. DISPLAY TOP STUDENTS (GRADE A)
-- ============================================================

SELECT *
FROM ENROLLMENT
WHERE GRADE = 'A';


-- ============================================================
-- 10. SORT STUDENTS BY NAME (ASCENDING)
-- ============================================================

SELECT *
FROM STUDENT
ORDER BY NAME ASC;


-- ============================================================
-- 11. SORT COURSES BY CREDITS (DESCENDING)
-- ============================================================

SELECT *
FROM COURSE
ORDER BY CREDITS DESC;


-- ============================================================
-- 12. DISPLAY FIRST 3 STUDENTS
-- ============================================================

SELECT *
FROM STUDENT
FETCH FIRST 3 ROWS ONLY;


-- ============================================================
-- 13. CALCULATE STUDENT AGE
-- ============================================================

SELECT 
    NAME,
    FLOOR(MONTHS_BETWEEN(SYSDATE, DATE_OF_BIRTH)/12) AS AGE
FROM STUDENT;


-- ============================================================
-- 14. EXTRACT YEAR OF BIRTH
-- ============================================================

SELECT 
    NAME,
    EXTRACT(YEAR FROM DATE_OF_BIRTH) AS YEAR_OF_BIRTH
FROM STUDENT;


-- ============================================================
-- 15. EXTRACT FACULTY EMAIL DOMAIN
-- ============================================================

SELECT 
    NAME,
    SUBSTR(EMAIL, INSTR(EMAIL,'@') + 1) AS EMAIL_DOMAIN
FROM FACULTY;


-- ============================================================
-- 16. DELETE DATA (USE CAREFULLY)
-- ============================================================

-- DELETE FROM STUDENT;


-- ============================================================
-- 17. DROP TABLE (DANGEROUS - USE CAREFULLY)
-- ============================================================

-- DROP TABLE STUDENT;


-- ============================================================
-- END OF HELP FILE
-- ============================================================
