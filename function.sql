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

-- Numric Function 

SELECT ROUND(107.088,2)  FROM DUAL;

SELECT TRUNC(107.93843,3)  FROM DUAL;

-- Date Function

SELECT SYSDATE  FROM DUAL;

SELECT SYSTIMESTAMP  FROM DUAL;

SELECT ADD_MONTHS('11/20/2012',5) FROM DUAL;

SELECT ADD_MONTHS('11/20/2012',-5) FROM DUAL;

SELECT MONTHS_BETWEEN('11/20/2014','11/20/2013') FROM DUAL;

SELECT TRUNC(SYSTIMESTAMP,'YEAR') FROM DUAL;

SELECT TRUNC(SYSTIMESTAMP,'MONTH') FROM DUAL;

SELECT TRUNC(SYSTIMESTAMP) FROM DUAL;

SELECT TO_CHAR(SYSTIMESTAMP,'MONTH DD,YYYY') FROM DUAL;

SELECT TO_CHAR(SYSTIMESTAMP,'MM-DD-YYYY') FROM DUAL;

SELECT TO_CHAR(SYSTIMESTAMP,'DDTH "Of" MONTH,YYYY') FROM DUAL;

-- You should looking form more template format :)

SELECT TO_CHAR(123,'$999.000') FROM DUAL;

SELECT TO_DATE('2014-08-27','YYYY,MM,DD') FROM DUAL;

SELECT TO_DATE('2014/08/27','YYYY,MM,DD') FROM DUAL;

SELECT TO_DATE('3 of JUN,2012','DD "of" MM,YYYY') FROM DUAL;

-- Formate Element => http://prntscr.com/lslk3u

-- NULL VALUE 

SELECT ENAME,JOB,SAL,NVL(TO_CHAR(COMM),'NO COMMITION') AS COMMITION
FROM EMP
WHERE SAL > 2000;

SELECT ENAME,JOB,SAL,NVL(COMM,0) AS COMMITION
FROM EMP;

SELECT ENAME, LENGTH(ENAME) AS "NAME LENGTH", NVL(TO_CHAR(NULLIF(LENGTH(ENAME),5)),'LENGTH EQUAL Five')
FROM EMP;

SELECT ENAME, LENGTH(ENAME) AS "NAME LENGTH",
NVL(TO_CHAR(NULLIF(LENGTH(ENAME),5)),'LENGTH EQUAL Five') AS "FIVE ROW"
FROM EMP;



--  Document
--  https://www.techonthenet.com/oracle/functions.php 

