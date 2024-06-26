-- SCALAR FUNCTIONS

USE UNIVERSITY;
CREATE TABLE CRICKET_PLAYERS (
    ID INT PRIMARY KEY,
    NAME VARCHAR(20),
    COUNTRY VARCHAR(20),
    RUNS INT,
    BATTING_AVG FLOAT
);
INSERT INTO CRICKET_PLAYERS (ID, NAME, COUNTRY, RUNS, BATTING_AVG) VALUES
(101, 'SUNIL', 'INDIA', 15000, 45.636),
(102, 'YUSUF', 'INDIA', 5000, 38.89),
(103, 'GAUTAM', 'INDIA', 10000, 44.756),
(104, 'SACHIN', 'INDIA', 17500, 50.11),
(105, 'RUSSEL', 'WEST INDIES', 86, 41.8),
(106, 'ABD', 'SOUTH AFRICA', 74, 52.3),
(107, 'Kalish', 'SOUTH AFRICA', 91, 49.57);
SELECT * FROM CRICKET_PLAYERS;

SELECT NAME FROM CRICKET_PLAYERS;
SELECT NAME,lcase(NAME) FROM CRICKET_PLAYERS;
SELECT NAME,ucase(NAME) FROM CRICKET_PLAYERS;
SELECT NAME,length(NAME) FROM CRICKET_PLAYERS;
SELECT NAME,COUNTRY  FROM CRICKET_PLAYERS;
SELECT NAME,COUNTRY,mid(COUNTRY,1,3)  FROM CRICKET_PLAYERS;
SELECT NAME,COUNTRY,mid(COUNTRY,2,2)  FROM CRICKET_PLAYERS;
SELECT NAME,now()  FROM CRICKET_PLAYERS;

SELECT NAME,BATTING_AVG  FROM CRICKET_PLAYERS;

# FORMAT and round

SELECT NAME,BATTING_AVG,round(BATTING_AVG)  FROM CRICKET_PLAYERS;
SELECT NAME,BATTING_AVG,format(BATTING_AVG,0)  FROM CRICKET_PLAYERS;
# round will give data in int and format will give in string 

SELECT NAME,BATTING_AVG,round(BATTING_AVG,2)  FROM CRICKET_PLAYERS;
SELECT NAME,BATTING_AVG,format(BATTING_AVG,2)  FROM CRICKET_PLAYERS;
# if after point only 1 decimal is present then format will ad 0 to make it 2 decimal

SELECT NAME,RUNS FROM CRICKET_PLAYERS;

SELECT NAME,round(RUNS) FROM CRICKET_PLAYERS;
SELECT NAME,format(RUNS,0) FROM CRICKET_PLAYERS;
# format will add comman.


