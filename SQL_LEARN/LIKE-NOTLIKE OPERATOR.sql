-- LIKE/NOT LIKE

#WILDCARD CHARACTERS
# UNDERSCORE(_) REPRESENTS ANY ONE CHARACTER.
# PERCENTILE(%) REPRESENTS ZERO OR ANY NUMBER OF CHARACTER.

USE COMPANY;
SELECT * FROM EMP_INFO;
# Write a SQL query to display all employees details who are getting 4-digit salaries.
SELECT * FROM EMP_INFO WHERE SAL LIKE '____';

# Write a SQL query to display all employees details who are not getting 4-digit salaries.
SELECT * FROM EMP_INFO WHERE SAL NOT LIKE '____';

# Write a SQL query to display all employee details whose salaries start with 5.
SELECT * FROM EMP_INFO WHERE SAL LIKE '5%';

# Write a SQL query to display all employee details whose name starts with 'S'.
SELECT * FROM EMP_INFO WHERE NAME LIKE 'S%';

# Write a SQL query to display all employee details whose name ends with 'A'.
SELECT * FROM EMP_INFO WHERE NAME LIKE '%A';

# Write a SQL query to display all employee details whose name ENDs with 'nka'.
SELECT * FROM EMP_INFO WHERE NAME LIKE '%NKA';

# Write a SQL query to display all employee details whose name starts with 'P ' and ends with 'a'.
SELECT * FROM EMP_INFO WHERE NAME LIKE 'P%A';

# Write a SQL query to display all employee details whose name contains a letter 'u' in between the first and last characters.
SELECT * FROM EMP_INFO WHERE NAME LIKE '%U%';

# Write a SQL query to display all employee names that have 8 characters, and the second character should be 'u'.
SELECT * FROM EMP_INFO WHERE NAME LIKE '_U______';

# Write a SQL query to display all employee details whose join in the year 2020.
SELECT * FROM EMP_INFO WHERE JDATE LIKE '2020%';

# Write a SQL query to display all employee details whose name starts with 'S' and exactly 4 characters long.
SELECT * FROM EMP_INFO WHERE NAME LIKE 'S___';
