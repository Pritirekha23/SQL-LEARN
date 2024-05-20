# 5.	Suppose you're working on a database and need to rename several tables at once. 
#  Your database contains tables named user_accounts and product_categories.
#  You want to rename them to users and categories, respectively. Write a single query to execute it.

USE ECOMM;

CREATE TABLE USER_ACCOUNT(
  ID INT,
  NAME VARCHAR(20)
);
CREATE TABLE PRODUCT_CATAGORIES(
  PID INT,
  PNAME VARCHAR(20),
  PRICE INT
);
RENAME TABLE USER_ACCOUNT TO USER,PRODUCT_CATAGORIES TO CATEGORIES;