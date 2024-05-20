# 20.	Write a query to find all products whose names start with 'P' or end with 'X'.

USE COM;
SELECT * FROM PRODUCTS;
SELECT * FROM PRODUCTS WHERE NAME LIKE 'P%X';

# 21.	How do you retrieve records from the customers table where the address contains 'Street' or 'Avenue'?

CREATE TABLE customers (
    customer_id INT ,
    name VARCHAR(50),
    address VARCHAR(50),
    PHONE_NUMBER BIGINT
);
# DROP TABLE customers;
INSERT INTO customers (customer_id, name, address, PHONE_NUMBER ) VALUES
(1, 'John Doe', '123 Main Street',6453628981),
(2, 'Jane Smith', '456 Elm Avenue',6534526498),
(3, 'Alice Johnson', '789 Oak Road',1237465987),
(4, 'Bob Brown', '101 Pine Street',3245436758),
(5, 'Carol White', '202 Maple Avenue',7865495676),
(6, 'David Black', '303 Birch Blvd',5467465874);

SELECT * FROM customers
WHERE address LIKE '%Street%' OR address LIKE '%Avenue%';

# 22.	How can you retrieve employees whose phone_number does not contain the pattern '123' anywhere within the number
SELECT * FROM customers
WHERE PHONE_NUMBER NOT LIKE '%123%';


# 23.	Write a query to find employees whose email is NOT NULL and who were hired before January 1, 2020.

