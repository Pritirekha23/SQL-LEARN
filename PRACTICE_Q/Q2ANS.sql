# 2.You have a table named users with columns for user_id, username, and email. You need to add a new column named phone_number to store phone numbers for users. Write a query for that.

USE CUSTOMERS;
CREATE TABLE USERS(
  USERID VARCHAR(20),
  USER_NAME VARCHAR(20),
  USER_EMAIL VARCHAR(50)
);
DESC USERS;

# ADD A NEW COULMN NAMED AS PHONE NUMBER
ALTER TABLE USERS ADD PHONE_NUMBER INT;
