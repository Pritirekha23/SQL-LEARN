CREATE DATABASE UNIVERSAL;
USE UNIVERSAL;

CREATE TABLE products (
  product_id INT,
  product_name VARCHAR(255),
  sales_count INT
);

INSERT INTO products (product_id, product_name, sales_count)
VALUES
  (1, 'Product A', 10),
  (2, 'Product B', 20),
  (3, 'Product C', 30),
  (4, 'Product D', 40),
  (5, 'Product E', 50),
  (6, 'Product F', 60),
  (7, 'Product G', 70),
  (8, 'Product H', 80),
  (9, 'Product I', 90),
  (10, 'Product J', 100),
  (11, 'Product K', 110),
  (12, 'Product L', 120),
  (13, 'Product M', 130),
  (14, 'Product N', 140),
  (15, 'Product O', 150);
  
  SELECT * FROM products;
  
  -- 27.	How can you fetch the bottom 5 least-popular products from the products table, ordered by sales_count ascending?
  SELECT * FROM products ORDER BY   sales_count ASC LIMIT 5;
  
  
  
  CREATE TABLE customers (
  customer_id INT,
  customer_name VARCHAR(255)
);

INSERT INTO customers (customer_id, customer_name)
VALUES
  (1, 'John Smith'),
  (2, 'Jane Doe'),
  (3, 'Bob Johnson'),
  (4, 'Alice Williams'),
  (5, 'Charlie Brown'),
  (6, 'Sarah Lee'),
  (7, 'David Kim'),
  (8, 'Emily Chen'),
  (9, 'James White'),
  (10, 'Lily Green'),
  (11, 'Michael Black'),
  (12, 'Jessica Blue'),
  (13, 'Daniel Red'),
  (14, 'Kimberly Yellow'),
  (15, 'Steven Orange'),
  (16, 'Amanda Purple'),
  (17, 'Brian Gray'),
  (18, 'Jessica Silver'),
  (19, 'Matthew Maroon'),
  (20, 'Laura Turquoise'),
  (21, 'Scott Pink'),
  (22, 'Emily Gold'),
  (23, 'Daniel Brown'),
  (24, 'Kimberly Green'),
  (25, 'Steven Blue'),
  (26, 'Amanda Red'),
  (27, 'Brian Yellow'),
  (28, 'Jessica Orange'),
  (29, 'Matthew Purple'),
  (30, 'Laura Maroon');
  
  
#   28.	How can you fetch records from the customers table, starting from the 21st record, with a limit of 10, ordered by customer_id ascending?
SELECT * FROM customers ORDER BY customer_id ASC LIMIT 20,10;
