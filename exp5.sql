CREATE TABLE employee_exp5_csea_39(emp_id INT PRIMARY KEY,emp_name varchar(20),dept varchar(20),salary INT);
desc employee_exp5_csea_39;
INSERT INTO employee_exp5_csea_39 VALUES(1,'David Smith','HR',4000);
INSERT INTO employee_exp5_csea_39 VALUES(2,'Owen Chase','Marketing',8000);
INSERT INTO employee_exp5_csea_39 VALUES(3,'Charles Brown','Prouction',6000);
INSERT INTO employee_exp5_csea_39 VALUES(4,'Ankit Sharma','Sales',9500);
SELECT * FROM employee_exp5_csea_39;
SELECT * FROM employee_exp5_csea_39 WHERE salary>7000;
UPDATE employee_exp5_csea_39 SET salary=8200 WHERE emp_name='David Smith';
SELECT * FROM employee_exp5_csea_39;
INSERT INTO employee_exp5_csea_39 VALUES(6,'Daniel Harris','Production',6700);
SELECT * FROM employee_exp5_csea_39;
DELETE FROM employee_exp5_csea_39 WHERE emp_id=3;
SELECT * FROM employee_exp5_csea_39;
SELECT emp_name FROM employee_exp5_csea_39 WHERE emp_name NOT LIKE 'D%' AND emp_name NOT LIKE 'O%';
SELECT dept,SUM(salary) AS total_salary FROM employee_exp5_csea_39 GROUP BY dept;
UPDATE employee_exp5_csea_39 SET salary=salary+(0.05*salary) WHERE dept='Production';
SELECT * FROM employee_exp5_csea_39;
DELETE FROM employee_exp5_csea_39 WHERE salary<7000;
SELECT * FROM employee_exp5_csea_39;
SELECT emp_name,salary FROM employee_exp5_csea_39 WHERE salary=(SELECT MIN(salary) FROM employee_exp5_csea_39);
UPDATE employee_exp5_csea_39 SET salary = 8200 WHERE dept='Marketing';
SELECT * FROM employee_exp5_csea_39;
SELECT emp_name FROM employee_exp5_csea_39 WHERE emp_name like 'A%';
SELECT emp_name FROM employee_exp5_csea_39 WHERE emp_name like '%it%';

SELECT UPPER(dept) FROM employee_exp5_csea_39;

SELECT * FROM employee_exp5_csea_39 WHERE dept like 'M%r%' and dept like '%ket%';


	UPDATE employee_exp5_csea_39 SET salary=6000 WHERE emp_name='David Smith';
  SELECT * FROM employee_exp5_csea_39;
  commit;
