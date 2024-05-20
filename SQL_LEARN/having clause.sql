-- HAVING CLAUSE

USE COM;
CREATE TABLE products (
   sl_no INT,
   name VARCHAR(255),
   price INT,
   brand VARCHAR(100)
);

INSERT INTO products (sl_no, name, price, brand) VALUES
(1, 'T Shirt',899, 'Jockey'),
(2, 'Jeans', 1999, 'Lee'),
(3, 'Polo Shirt', 1499, 'USPA'),
(4,'T Shirt',1049, 'Allen Solly'),
(5, 'Jeans', 2449,'USPA'),
(6, 'Polo Shirt', 1399, 'Jockey'),
(7,'T Shirt', 1299, 'Lee'),
(8, 'Jeans', 2199, 'Allen Solly'),
(9, 'Jacket', 5499, 'PUMA'),
(10, 'Polo Shirt',1199, 'Jockey'),
(11, 'Jeans', 2499, 'Lee'),
(12, 'Jacket', 4999, 'PUMA');

SELECT * FROM PRODUCTS;


-- BRANCD NAME,TOTAL QUANTITY SALES AND TOTAL SALES PRICE WHERE TOTAL SALES MUST BE GREATER THAN 5000.
SELECT brand,COUNT(brand),sum(price)
 FROM PRODUCTS 
 GROUP BY brand 
 HAVING sum(price)>5000 ;

SELECT brand,COUNT(brand) as total_quantity_sales,sum(price) as TOTAL_SALES_PRICE 
FROM PRODUCTS 
GROUP BY brand 
HAVING sum(price)>5000 ;

-- BRANCD NAME,TOTAL QUANTITY SALES AND TOTAL SALES PRICE WHERE TOTAL SALES MUST BE GREATER THAN 5000 and less than 10000
SELECT brand,COUNT(brand),sum(price)
 FROM PRODUCTS 
 GROUP BY brand 
 HAVING sum(price)>5000 and sum(price)<10000 ;
 
 -- product name , total number of product sales category wise having MORE THAN 2 quantity sales.
 SELECT NAME,COUNT(NAME) AS TOTAL_QUANTITY FROM  PRODUCTS 
 GROUP BY NAME
 HAVING  TOTAL_QUANTITY >2;