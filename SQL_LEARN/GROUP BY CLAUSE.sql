-- group by clause
USE  UNIVERSITY;
CREATE TABLE Student_Mentor_List (
    Sid INT PRIMARY KEY,
    Name VARCHAR(20),
    Branch VARCHAR(20),
    Mark INT,
    Mentor VARCHAR(20)
);
INSERT INTO Student_Mentor_List (Sid, Name, Branch, Mark, Mentor) VALUES
(101, 'Surendra', 'CSE', 75, 'Dr. Chand'),
(102, 'Priyanka', 'ECE', 66, 'Dr. Suleman'),
(103, 'Rahul', 'CSE', 71, 'Dr. Udit'),
(104, 'Zini', 'CE', 86, 'Dr. Suleman'),
(105, 'Jack', 'CSE', 82, 'Dr. Chand'),
(106, 'Scoot', 'ECE', 65, 'Dr. Suleman'),
(107, 'Dev', 'CE', 69, 'Dr. Udit'),
(108, 'Anjali', 'ECE', 79, 'Dr. Suleman');
SELECT * FROM Student_Mentor_List;

# QUESTIONS
-- ALL BRANCH NAME
SELECT BRANCH FROM  Student_Mentor_List GROUP BY BRANCH;
-- MENTOR BRANCH
SELECT MENTOR FROM  Student_Mentor_List GROUP BY MENTOR;
-- COUNT THE NUMBER OF STUDENT BRANCH WISE.
SELECT BRANCH,COUNT(NAME) FROM  Student_Mentor_List GROUP BY BRANCH;

-- HIGHEST MARK BRANCH WISE.
SELECT BRANCH,MAX(MARK) FROM  Student_Mentor_List GROUP BY BRANCH;

-- AVERAGE MARK BRANCH WISE
SELECT BRANCH,AVG(MARK) FROM  Student_Mentor_List GROUP BY BRANCH;

-- APPLY GROUPBY CLAUSE WITH MULTIPLE COLUMNS:
-- BRANCH NAME,METOR AND COUNT BY GROUPING WITH BRANCH AND MENTOR COLUMNS
SELECT BRANCH,MENTOR,COUNT(*) FROM Student_Mentor_List GROUP BY BRANCH,MENTOR;



