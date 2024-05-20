# 1.	Write a MySQL query that retrieves information about customer orders, including the customer's name, city, product name, price, and order amount.

CREATE DATABASE CUSTOMERS;
USE CUSTOMERS;

CREATE TABLE CUSTOMER_ORDERS(
  CNAME VARCHAR(20),
  CCITY VARCHAR(20),
  PNAME VARCHAR(20),
  PPRICE INT,
  ORDERAMOUNT INT
);

INSERT INTO CUSTOMER_ORDERS (CNAME, CCITY, PNAME, PPRICE, ORDERAMOUNT)
VALUES ('John Doe', 'New York', 'Product 1', 100, 5),
       ('Jane Smith', 'Los Angeles', 'Product 2', 200, 3),
       ('Mike Johnson', 'Chicago', 'Product 3', 150, 4),
       ('Kargoo', 'England', 'Product 4', 350, 5),
       ('James kam', 'Chicago', 'Product 5', 400, 4);
       
SELECT * FROM CUSTOMER_ORDERS;