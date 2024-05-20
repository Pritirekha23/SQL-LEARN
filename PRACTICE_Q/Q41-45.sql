CREATE DATABASE APP;
USE APP;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10, 2)
);

INSERT INTO employees (employee_id, name, department_id, salary) VALUES
(1, 'Alice', 1, 60000),
(2, 'Bob', 1, 55000),
(3, 'Charlie', 2, 70000),
(4, 'David', 2, 45000),
(5, 'Eve', 3, 40000),
(6, 'Frank', 3, 50000),
(7, 'Grace', 1, 62000),
(8, 'Hannah', 2, 72000),
(9, 'Ian', 3, 48000),
(10, 'Jack', 3, 51000),
(11, 'Kevin', 1, 63000),
(12, 'Laura', 2, 48000);

-- 41.	Write a query to calculate the average salary for each department using the GROUP BY clause on the department_id column and the AVG() function.
SELECT department_id,AVG(salary) FROM employees GROUP BY department_id;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_amount INT
);

INSERT INTO orders (order_id, customer_id, order_amount) VALUES
(1, 101, 250.50),
(2, 102, 300.00),
(3, 103, 150.75),
(4, 101, 450.25),
(5, 102, 200.00),
(6, 104, 600.50),
(7, 103, 320.00),
(8, 101, 700.00),
(9, 105, 130.00),
(10, 106, 540.00);

-- 42.	How do you find the maximum order amount for each customer using the GROUP BY clause on the customer_id column and the MAX() function?
SELECT customer_id, MAX(order_amount) 
FROM orders
GROUP BY customer_id;


CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    category_id INT,
    sales_quantity INT,
    sales_amount DECIMAL(10, 2)
);

INSERT INTO sales (sale_id, category_id, sales_quantity, sales_amount) VALUES
(1, 1, 50, 5000),
(2, 1, 200, 15000),
(3, 2, 150, 12000),
(4, 2, 90, 7000),
(5, 3, 110, 11000),
(6, 3, 60, 6000),
(7, 1, 180, 18000),
(8, 2, 75, 8000),
(9, 3, 140, 14000),
(10, 1, 90, 9000);

-- 43.	Write a query to find departments with an average salary greater than  50000 and with more than 5 employees using the GROUP BY clause on the department_id column, the AVG() and COUNT() functions, and the HAVING clause.
SELECT department_id, AVG(salary) , COUNT(*) 
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 50000 AND COUNT(*) > 5;



CREATE TABLE products (
    product_id INT PRIMARY KEY,
    category_id INT,
    product_name VARCHAR(50)
);

INSERT INTO products (product_id, category_id, product_name) VALUES
(1, 1, 'Product A'),
(2, 1, 'Product B'),
(3, 1, 'Product C'),
(4, 2, 'Product D'),
(5, 2, 'Product E'),
(6, 2, 'Product F'),
(7, 3, 'Product G'),
(8, 3, 'Product H'),
(9, 3, 'Product I'),
(10, 3, 'Product J'),
(11, 1, 'Product K'),
(12, 1, 'Product L'),
(13, 1, 'Product M'),
(14, 2, 'Product N'),
(15, 2, 'Product O'),
(16, 2, 'Product P'),
(17, 3, 'Product Q'),
(18, 3, 'Product R'),
(19, 3, 'Product S'),
(20, 3, 'Product T'),
(21, 1, 'Product U'),
(22, 1, 'Product V'),
(23, 1, 'Product W'),
(24, 2, 'Product X'),
(25, 2, 'Product Y'),
(26, 2, 'Product Z'),
(27, 3, 'Product AA'),
(28, 3, 'Product BB'),
(29, 3, 'Product CC'),
(30, 3, 'Product DD'),
(31, 1, 'Product EE'),
(32, 1, 'Product FF'),
(33, 1, 'Product GG'),
(34, 2, 'Product HH'),
(35, 2, 'Product II'),
(36, 2, 'Product JJ'),
(37, 3, 'Product KK'),
(38, 3, 'Product LL'),
(39, 3, 'Product MM'),
(40, 3, 'Product NN');






-- 44.	How do you find product categories with an average sales quantity
-- greater than 100 and with total sales amount exceeding  10000 using the 
 -- GROUP BY clause on the category_id column, the AVG() and SUM() functions, and the HAVING clause?
 
SELECT category_id, AVG(sales_quantity) AS average_sales_quantity, SUM(sales_amount) AS total_sales_amount
FROM sales
GROUP BY category_id
HAVING AVG(sales_quantity) > 100 AND SUM(sales_amount) > 10000;

--  45.	How do you find product categories with more than 50 products using the GROUP BY clause on the category_id column and the HAVING clause?

