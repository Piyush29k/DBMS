-- ============================================================
-- DATABASE HELP FILE
-- Project: Student Management System
-- Tables: STUDENT, FACULTY, COURSE, ENROLLMENT, DEPARTMENT
-- ============================================================



-- ============================================================
-- 1. VIEW ALL TABLES IN DATABASE
-- ============================================================

SELECT table_name 
FROM user_tables;



-- ============================================================
-- 2. VIEW STRUCTURE OF ALL TABLES
-- ============================================================

DESC STUDENT;
DESC FACULTY;
DESC COURSE;
DESC ENROLLMENT;
DESC DEPARTMENT;



-- ============================================================
-- 3. DISPLAY ALL RECORDS FROM TABLES
-- ============================================================

SELECT * FROM STUDENT;
SELECT * FROM FACULTY;
SELECT * FROM COURSE;
SELECT * FROM ENROLLMENT;
SELECT * FROM DEPARTMENT;



-- ============================================================
-- 4. COUNT TOTAL RECORDS IN EACH TABLE
-- ============================================================

SELECT COUNT(*) AS TOTAL_STUDENTS FROM STUDENT;
SELECT COUNT(*) AS TOTAL_FACULTY FROM FACULTY;
SELECT COUNT(*) AS TOTAL_COURSES FROM COURSE;
SELECT COUNT(*) AS TOTAL_ENROLLMENTS FROM ENROLLMENT;
SELECT COUNT(*) AS TOTAL_DEPARTMENTS FROM DEPARTMENT;



-- ============================================================
-- 5. DISPLAY STUDENTS WITH THEIR DEPARTMENT NAME
-- ============================================================

SELECT 
    S.STUDENT_ID,
    S.NAME,
    D.DEPT_NAME
FROM STUDENT S
JOIN DEPARTMENT D
ON S.DEPT_ID = D.DEPT_ID;



-- ============================================================
-- 6. DISPLAY FACULTY WITH THEIR DEPARTMENT
-- ============================================================

SELECT 
    F.FACULTY_ID,
    F.NAME,
    D.DEPT_NAME
FROM FACULTY F
JOIN DEPARTMENT D
ON F.DEPT_ID = D.DEPT_ID;



-- ============================================================
-- 7. DISPLAY COURSES WITH DEPARTMENT NAME
-- ============================================================

SELECT 
    C.COURSE_ID,
    C.COURSE_NAME,
    D.DEPT_NAME
FROM COURSE C
JOIN DEPARTMENT D
ON C.DEPT_ID = D.DEPT_ID;



-- ============================================================
-- 8. DISPLAY FAILED STUDENTS (GRADE = F)
-- ============================================================

SELECT *
FROM ENROLLMENT
WHERE GRADE = 'F';



-- ============================================================
-- 9. DISPLAY STUDENT WITH COURSE AND GRADE
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
-- 10. SORT STUDENTS BY NAME
-- ============================================================

SELECT *
FROM STUDENT
ORDER BY NAME ASC;



-- ============================================================
-- 11. DISPLAY FIRST 3 STUDENTS
-- ============================================================

SELECT *
FROM STUDENT
FETCH FIRST 3 ROWS ONLY;



-- ============================================================
-- 12. CALCULATE STUDENT AGE
-- ============================================================

SELECT 
    NAME,
    FLOOR(MONTHS_BETWEEN(SYSDATE, DATE_OF_BIRTH)/12) AS AGE
FROM STUDENT;



-- ============================================================
-- 13. EXTRACT FACULTY EMAIL DOMAIN
-- ============================================================

SELECT 
    NAME,
    SUBSTR(EMAIL, INSTR(EMAIL,'@') + 1) AS EMAIL_DOMAIN
FROM FACULTY;



-- ============================================================
-- 14. DELETE DATA (USE CAREFULLY)
-- ============================================================

DELETE FROM STUDENT;



-- ============================================================
-- 15. DROP TABLE (DANGEROUS)
-- ============================================================

 DROP TABLE STUDENT;



-- ============================================================
-- END OF HELP FILE
-- ============================================================
