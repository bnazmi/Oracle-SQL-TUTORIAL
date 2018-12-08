-- Single Row Function's (SRFs)

SELECT 'MY NAME IS ' || ENAME 
FROM EMP;

SELECT CONCAT('MY NAME IS', ENAME ) AS "Employee Name"
from EMP;

SELECT UPPER('MY NAME IS' || ENAME) AS "Employee Name"
from EMP;

SELECT LOWER('MY NAME IS' || ENAME) AS "Employee Name"
from EMP;

SELECT CONCAT( 
    CONCAT(LOWER(ENAME), UPPER(' is the name ')),
    CONCAT(LOWER('and their job is: '),UPPER(JOB))
) AS "Function Call"
FROM EMP;

SELECT * 
FROM EMP
WHERE job = UPPER('manager');

SELECT INITCAP('hello my name is abdullah') AS "Statment Which First Charchter IS CAPTAl Latter"
from DUAL;

SELECT ENAME, LENGTH(ENAME) AS "Length Name"
FROM EMP
WHERE LENGTH(ENAME) = 6;

SELECT RPAD('Text',6,'$$') AS "TEXT Right PADDING"
FROM DUAL; 

SELECT LPAD('Text',6,'$$') AS "TEXT Left PADDING"
FROM DUAL; 

SELECT RTRIM('HELLO','o')
FROM DUAL; 

SELECT LTRIM('HhELLO','H')
FROM DUAL; 


SELECT RTRIM('hello','o') AS "Trim Charchter From Riht-hell"
FROM DUAL; 

SELECT RTRIM('hello','lo') AS "Trim Charchter From Riht-he"
FROM DUAL; 

SELECT LTRIM('hhello','h') AS "Trim Charchter From Left-ello"
FROM DUAL; 

--  Document
--  https://www.techonthenet.com/oracle/functions.php 
