CREATE DATABASE COMPANY;
USE COMPANY;

CREATE TABLE EMP_INFO(
  ID INT,
  NAME VARCHAR(20),
  JDATE DATE,
  SAL FLOAT
);

DESC EMP_INFO;

INSERT INTO EMP_INFO VALUES
(1,'Surendra','2019-10-22',25000),
(2,'Priyanka','2020-08-12',15500),
(3,'Rahul','2018-07-28',28000);

select * from EMP_INFO;

-- ADD 3300 TO ALL EMPLOYEE SALARY.
SET SQL_SAFE_UPDATES=0;
UPDATE EMP_INFO SET SAL=SAL+3300;

-- UPDATE THE SALARY OF PRIYANKA TO 200000.
UPDATE EMP_INFO SET SAL=200000 WHERE NAME='Priyanka';

-- UPDATE THE SALARIES OF THE EMPLOYEE WHO JOINED ON 2020-08-12  BY ADDING 1500.
UPDATE EMP_INFO SET SAL=SAL+1500 WHERE JDATE='2020-08-12 ';

-- ADD 2100 TO ALL THE EMPLOYESS, EXCEPT THOSE WHO ARE GETTING MORE THAN  50000
UPDATE EMP_INFO SET SAL=SAL+2100 WHERE SAL < 50000;

-- UPDATE SALARY AND NAME OF THE EMPLOYEE WHOSE ID IS 3(SAL BY ADDING 500 AND NAME SHOULD BE RAMA)
UPDATE EMP_INFO SET NAME='RAMA',SAL=SAL+500 WHERE  ID=3;

