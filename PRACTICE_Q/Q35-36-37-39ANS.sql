
-- 35.	Write a query to find the maximum salary of employees in the employees table.
USE COM;
SELECT * FROM EMPLOYEES;
SELECT max(SALARY) FROM EMPLOYEES;

-- 36.	Write a query to capitalize the first letter of each word in a given string.
SELECT ucase(NAME) FROM EMPLOYEES;

-- 37.	How can you round a given decimal number to two decimal places ?
-- BY USING round
USE UNIVERSITY;
SELECT NAME,BATTING_AVG,round(BATTING_AVG,2)  FROM CRICKET_PLAYERS;