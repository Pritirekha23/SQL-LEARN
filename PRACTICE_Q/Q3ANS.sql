# 3.	Imagine you have a table named employees with columns for employee_id, first_name, last_name, and department (currently varchar(50) allowing null values). You want to:

# a.	Rename the department column to department_name.
# b.	Make the department_name column NOT NULL.

USE CUSTOMERS;

CREATE TABLE EMPLOYEES(
 EMPLOYEE_ID INT,
 FIRST_NAME VARCHAR(30),
 LAST_NAME VARCHAR(30),
 DEPARTMENT VARCHAR(50)
);
DESC EMPLOYEES;
# a)
ALTER TABLE EMPLOYEES RENAME COLUMN DEPARTMENT TO DEPARTMENT_NAME;

# b) 
ALTER TABLE EMPLOYEES MODIFY DEPARTMENT_NAME VARCHAR(50) NOT NULL;
