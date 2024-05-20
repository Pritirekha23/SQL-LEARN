# 6.	Imagine you have a table named books with columns for book_id (primary key auto-increment), title, author, and genre. You want to insert information for three new books:

# a.	Title: "The Lord of the Rings", Author: "J.R.R. Tolkien", Genre: "Fantasy"

# b.	Title: "Pride and Prejudice", Author: "Jane Austen", Genre: "Romance"

# c.	Title: "The Hitchhiker's Guide to the Galaxy", Author: "Douglas Adams", Genre: "Science Fiction"
# Write a query that can insert these three records with their corresponding values into the books table.


USE CUSTOMERS;

CREATE TABLE BOOKS(
  TITLE VARCHAR(50),
  AUTHOR VARCHAR(20),
  GENRE VARCHAR(20)
);
 

DESC BOOKS;

INSERT INTO BOOKS (TITLE,AUTHOR,GENRE) VALUES 
( "The Lord of the Rings", "J.R.R. Tolkien",  "Fantasy"),
("Pride and Prejudice", "Jane Austen",  "Romance"),
( "The Hitchhiker's Guide to the Galaxy", "Douglas Adams", "Science Fiction");
SELECT * FROM BOOKS;