-- 7.	Imagine you have a table named books with columns for book_id , title, and author. You accidentally listed the author of "The Hitchhiker's Guide to the Galaxy" as "Douglas Adams Jr."
-- Write a query statement to fix this mistake and set the correct author for that book to simply "Douglas Adams".

USE CUSTOMERS;
CREATE TABLE BOOKSS(
  BOOK_ID INT,
  TITLE VARCHAR(50),
  AUTHOR VARCHAR(30)
);
INSERT INTO BOOKSS (BOOK_ID,TITLE,AUTHOR) VALUES (1,'The Hitchhikers Guide to the Galaxy','Douglas Adams Jr');
SELECT * FROM BOOKSS;
SET SQL_SAFE_UPDATES=0;
UPDATE BOOKSS SET AUTHOR='Douglas Adams'  WHERE BOOK_ID=1;