# 29.	Write a query to retrieve all employees from the employees table ordered by their department_id in ascending order and then by their hire_date in descending order.

USE COM;

SELECT * FROM EMPLOYEES;

SELECT * FROM EMPLOYEES ORDER BY DEPARTMENT_ID ASC , HIRE_DATE DESC;

#30.	How can you fetch records from the orders table ordered by customer_id in ascending order and then by order_date in descending order?4
SELECT * FROM orders ORDER BY customer_id  ASC,order_date DESC;

# 31.	Write a query to retrieve all unique years from the hire_date column in the employees table.
# SELECT DISTINCT EXTRACT(YEAR FROM hire_date) AS hire_year
# FROM employees
# ORDER BY hire_year ASC;