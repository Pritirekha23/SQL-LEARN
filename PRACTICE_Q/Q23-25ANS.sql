# 23.	Write a query to find employees whose email is NOT NULL and who were hired before January 1, 2020.

USE BOOK;
CREATE TABLE employees (
  employee_id INT,
  name VARCHAR(50),
  email VARCHAR(50),
  hire_date DATE
);
# DROP TABLE employees;
INSERT INTO employees (employee_id, name, email, hire_date)
VALUES
  (1, 'John', 'john.doe@email.com', '2019-06-15'),
  (2, 'Jane', 'jane.doe@email.com', '2020-02-01'),
  (3, 'Bob', NULL, '2022-12-20'),
  (4, 'Alice', 'alice@email.com', '2019-08-01'),
  (5, 'David', 'david@email.com', '2021-03-15'),
  (6, 'Carol', 'carol@email.com', '2019-11-11');

SELECT * FROM employees
WHERE email IS NOT NULL AND hire_date < '2020-01-01';

# 25.	Write a query to find employees whose email is NULL and who were hired after January 1, 2020.
SELECT * FROM employees
WHERE email IS  NULL AND hire_date >'2020-01-01';
