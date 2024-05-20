-- ORDER BY CLAUSE

USE COM;
CREATE TABLE STUDENTS (
    SID INT,
    NAME VARCHAR(30),
    DEPT VARCHAR(30),
    MARK INT
);

INSERT INTO STUDENTS (SID, NAME, DEPT, MARK)
VALUES
    (101, 'SURENDRA', 'CSE', 75),
    (102, 'PRIYANKA', 'CSE', 81),
    (103, 'RAHUL', 'MECH', 68),
    (104, 'ZINI', 'CE', 75),
    (105, 'JACK', 'MECH', 91),
    (106, 'SCOOT', 'CE',87),
    (107, 'DEV', 'CSE',82),
    (108, 'ANJALI', 'MECH', 76),
    (109, 'SMRUTI', 'CSE', 63),
    (110, 'SALINA', 'ECE', 70);
    
SELECT * FROM STUDENTS;

    
# Write a SQL query to display all the student's details in ascending order based on name.
SELECT * FROM STUDENTS ORDER BY NAME ASC;

# Write a SQL query to display all the student's details in descending order based on name.
SELECT * FROM STUDENTS ORDER BY NAME DESC;

# Write a SQL query to display all the student's details in ascending order based on department.
SELECT * FROM STUDENTS ORDER BY DEPT ASC;

# Write a SQL query to display all the student's details in ascending order based on department and mark.
SELECT * FROM STUDENTS ORDER BY DEPT,MARK ASC;

# Write a SQL query to display all the student's details based on mark in descending order and department in ascending order.
SELECT * FROM STUDENTS ORDER BY MARK DESC,DEPT ASC;

# FIRST 3 STUDENTS BASED ON NAME IN ASCENDING ORDER.
SELECT * FROM STUDENTS ORDER BY NAME ASC LIMIT 3;