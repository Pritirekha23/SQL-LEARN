
# 10.	How can you calculate the remaining vacation days for employees, assuming columns total_vacation_days and used_vacation_days exist?
USE COMPANY;

CREATE TABLE EMP_VAC(
 ID INT,
 NAME VARCHAR(20),
 TOTAL_VACATION INT,
 USED_VACATION INT
);

INSERT INTO EMP_VAC (ID, NAME, TOTAL_VACATION, USED_VACATION) VALUES
 (1, 'John', 20, 10), 
 (2, 'Jane', 25, 20),
 (3, 'Bob', 40, 30), 
 (4, 'Alice', 25, 15),
 (5, 'Charlie', 30, 7);
 
 SELECT ID,NAME,  TOTAL_VACATION - USED_VACATION 'REMANINING_VACATION' FROM EMP_VAC;
