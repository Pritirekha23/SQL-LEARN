
CREATE DATABASE COM;
USE COM;
CREATE TABLE EMPLOYEES (
    EMPLOYEE_ID INT ,
    NAME VARCHAR(50),
    SALARY INT,
    DEPARTMENT_ID INT,
    HIRE_DATE DATE,
    POSITIONS VARCHAR(50),
    EXPERIENCE INT,
    DEPARTMENT_NAME VARCHAR(20)
);

DROP TABLE EMPLOYEES;
INSERT INTO EMPLOYEES (EMPLOYEE_ID,NAME, SALARY, DEPARTMENT_ID, HIRE_DATE, POSITIONS,EXPERIENCE, DEPARTMENT_NAME) VALUES
(1,'Alice Johnson', 65000, 5, '2016-03-01','Manager', 8, 'Engineering'),
(2,'Bob Smith', 55000, 10, '2018-07-15','Super visior', 6, 'Finance'),
(3,'Carol White', 72000, 5, '2014-11-20','Team leader', 10, 'Operations'),
(4,'David Brown', 48000, 3, '2020-01-05','Super visior', 4, 'Engineering'),
(5,'Eve Davis', 75000, 7, '2017-06-30', 'Manager',7, 'IT'),
(6,'Frank Miller', 62000, 10, '2019-09-10','Manager', 5, 'Finance'),
(7,'Grace Wilson', 45000, 3, '2021-02-15','Team leader', 3, 'Engineering'),
(8,'Henry Taylor', 53000, 5, '2015-01-01','Team leader', 11, 'Engineering');

SELECT * FROM EMPLOYEES;

# 11.	Write a query to find employees who earn more than 60,000 and work in department 5.
SELECT * FROM EMPLOYEES WHERE (SALARY>60000 AND DEPARTMENT_ID=5);

# 12.	How can you retrieve employees whose salary is between 40,000 and 70,000 and who were hired after January 1, 2015?
SELECT * FROM EMPLOYEES WHERE (SALARY BETWEEN 40000 AND 70000 AND HIRE_DATE > '2015-01-01');

# 13.	Write a query to find all employees whose salary is greater than 50,000.
SELECT * FROM EMPLOYEES WHERE SALARY>50000;

#14.How do you retrieve records from the employees table where the hire_date is either before January 1, 2020, or the position is 'Manager'?
SELECT * FROM EMPLOYEES WHERE (HIRE_DATE='2020-01-02' OR POSITIONS='Manager');

# 15.	Write a query to find employees who earn more than 60,000 and work in either department 5 or department 10.
SELECT * FROM EMPLOYEES WHERE (SALARY>60000 AND( DEPARTMENT_ID=5 OR DEPARTMENT_ID=10));

# 16.	Write a query to find employees who earn between 50,000 and 80,000 and work in department 3.
SELECT * FROM EMPLOYEES WHERE (SALARY BETWEEN 50000 AND 80000 AND DEPARTMENT_ID=3);

# 17.	Write a query to find employees who earn not between 40,000 and 60,000 and have more than 5 years of experience.
SELECT * FROM EMPLOYEES WHERE (SALARY NOT BETWEEN 40000 AND 60000 AND EXPERIENCE>5);

# 18.	Write a query to find employees who have a salary greater than 60,000 and work in the 'Finance', 'Engineering', or 'Operations' departments.
SELECT * FROM EMPLOYEES WHERE (SALARY>60000 AND DEPARTMENT_NAME IN ('Finance', 'Engineering', 'Operations'));

#19.	Write a query to find employees who have a salary greater than 60,000 and do not work in the 'Finance', 'Engineering', or 'Operations' departments
SELECT * FROM EMPLOYEES WHERE (SALARY>60000 AND DEPARTMENT_NAME NOT IN ('Finance', 'Engineering', 'Operations'));
