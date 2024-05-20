-- 8.	Imagine you have a table named colors with columns for color_id and name. You want to change the name of the color with color_id of 1 to "Blue".

USE CUSTOMERS;
CREATE TABLE COLORS(
 COLOR_ID INT,
 NAME VARCHAR(20)
);
INSERT INTO COLORS(COLOR_ID,NAME) VALUES
(1,"RED"),
(2,"BLACK");

SELECT * FROM COLORS;
UPDATE COLORS SET NAME='BLUE'  WHERE COLOR_ID=1;