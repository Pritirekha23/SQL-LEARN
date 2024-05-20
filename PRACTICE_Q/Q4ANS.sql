# 4.	Imagine you have a database named ecomm and a table named old_orders. Change the name  to archived_orders

CREATE DATABASE ECOMM;
CREATE TABLE OLD_ORDERS(
  ID INT,
  ONAME VARCHAR(20)
);

RENAME TABLE OLD_ORDERS TO ARCHIVED_ORDERS;
DESC ARCHIVED_ORDERS;