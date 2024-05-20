-- 32.	How do you fetch all unique values of the sum of quantity_sold and price from the sales table?
USE UNIVERSAL;
CREATE TABLE SALES (
  product_id INT,
  quantity_sold INT,
  price INT
);
drop table SALES;
INSERT INTO SALES  (product_id, quantity_sold, price) VALUES
(1, 2, 899),
(2, 3, 1999),
(3, 4, 1499),
(4, 1, 1049),
(5, 5, 2449);


SELECT DISTINCT(quantity_sold + price) AS total
FROM SALES ;