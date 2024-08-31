CREATE TABLE student_kevin_39(
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    physics_marks INT,
    chemistry_marks INT,
    mathematics_marks INT
    );
    
INSERT INTO student_kevin_39 VALUES(1, 'Adam', 20, 20, 33);
INSERT INTO student_kevin_39 VALUES(2, 'kevin', 18, 9, 41);
INSERT INTO student_kevin_39 VALUES(3, 'jose', 22, 7, 31);
INSERT INTO student_kevin_39 VALUES(4, 'Duke', 13, 21, 20);
INSERT INTO student_kevin_39 VALUES(5, 'sabu', 13, 12, 35);
INSERT INTO student_kevin_39 VALUES(6, 'Fletcher', 14, 22, 23);
INSERT INTO student_kevin_39 VALUES(7, 'Georgina', 2, 10, 48);
INSERT INTO student_kevin_39 VALUES(8, 'Mary', 24, 14, 31);
INSERT INTO student_kevin_39 VALUES(9, 'Tom', 19, 15, 24);
INSERT INTO student_kevin_39 VALUES(10, 'Zack',8, 20, 36);
SELECT * FROM student_kevin_39;

SELECT AVG(physics_marks) FROM student_kevin_39;
SELECT MAX(mathematics_marks) AS highest_marks_maths
FROM student_kevin_39;
SELECT MIN(chemistry_marks) AS lowest_marks_chemistry FROM student_kevin_39;
SELECT COUNT(NAME)FROM student_kevin_39 WHERE physics_marks >=12;
SELECT COUNT(NAME)FROM student_kevin_39 WHERE physics_marks >=12
AND chemistry_marks >=12 AND mathematics_marks >=25;

ALTER TABLE student_kevin_39 ADD total_marks INT;
UPDATE student_kevin_39 SET total_marks = physics_marks + chemistry_marks + mathematics_marks;
ALTER TABLE student_kevin_39 ADD status VARCHAR(10);
UPDATE student_kevin_39 SET status = 'PASS' WHERE physics_marks >=12 AND chemistry_marks >=12 AND mathematics_marks >=25;
SELECT student_id,NAME,total_marks,status FROM student_kevin_39 ORDER BY(total_marks)ASC;
SELECT (COUNT(CASE WHEN mathematics_marks>=25 THEN 1 END)*100.00/COUNT(*))AS
PASS_PERCENTAGE_MATHS FROM STUDENT_kevin_39;
SELECT (COUNT(CASE WHEN physics_marks>= 12 AND chemistry_marks >= 12 AND mathematics_marks >= 25
THEN 1 END) * 100.00 / COUNT(*)) AS overall_pass_percentage FROM STUDENT_kevin_39;
SELECT AVG(physics_marks + chemistry_marks + mathematics_marks) AS class_average FROM
STUDENT_kevin_39;
SELECT COUNT(*) AS total_pass FROM student_kevin_39 WHERE physics_marks >= 12 AND
chemistry_marks >= 12 AND mathematics_marks >= 25;
commit;
