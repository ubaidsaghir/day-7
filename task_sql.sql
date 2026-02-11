CREATE TABLE employees(
emp_id SERIAL PRIMARY KEY,
fname VARCHAR(50) NOT NULL,
lname VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL UNIQUE,
dept VARCHAR(50),
salary DECIMAL(10,2) DEFAULT 30000.00,
hire_date DATE NOT NULL DEFAULT CURRENT_DATE
);
SELECT * FROM employees

INSERT INTO employees(
emp_id,fname,lname,email,dept,salary,hire_date)
VALUES(1,'Ubaid','Saghir','ubaidsaghir456@gmail.com','IT',70000,'01-02-2026'),
(2,'Adeel','Umer','adeelumer776@gmail.com','CS',40000,'02-02-2026'),
(3,'Hassan','Murtaza','hassanmurtaza446@gmail.com','Manager',80000,'03-02-2026'),
(4,'Abdullah','Ashan','abdullahashan99@gmail.com','Head',65000,'04-02-2026'),
(5,'Haris','Khan','hariskhan332@gmail.com','Senior Head',95000,'05-02-2026'),
(6,'Daniyal','Hussain','daniyalhussain117@gmail.com','Junior Manager',88000,'06-02-2026'),
(7,'Huzaifa','Ahsan','huzaifaahsan356@gmail.com','Manager',92000,'07-02-2026'),
(8,'Zain','Ilyas','zainilyas223@gmail.com','HR',75000,'08-02-2026'),
(9,'Muzamil','Khan','muzamilkhan689@gmail.com','MArketing',55000,'09-02-2026'),
(10,'Umar','Khan','umarkhan908@gmail.com','Finance',50000,'10-02-2026');


-- TASK 1 FORMAT-> Ubaid:Saghir:IT

SELECT  CONCAT_WS(':',emp_id,fname,lname,dept) AS fullname FROM employees
WHERE emp_id=1;

-- TASK 2 

SELECT CONCAT_WS (':',emp_id,CONCAT_WS(' ',fname,lname),dept,salary) FROM employees
WHERE emp_id=1;

-- TASK 3 

SELECT CONCAT_WS(':',emp_id,fname,UPPER(dept)) FROM employees;

-- TASK 4

SELECT CONCAT(LEFT(dept,1),CONCAT_WS('  ',emp_id,fname)) FROM employees;

-- TASK 5

SELECT CONCAT(LEFT(dept,2),'-',emp_id,'-',fname) FROM employees;

-- TASK 6

SELECT CONCAT_WS(' ',fname,lname) || '('||dept||')' FROM employees;

-- TASK 7

SELECT REPLACE(dept,'Manager','Mgr') FROM employees WHERE dept='Manager';

-- TASK 8

-- SELECT POSITION('g' IN dept) FROM employees WHERE dept='Manager';

-- TASK 9

SELECT SUBSTR (hire_date::text,1,4) FROM employees;


-- SECTION 7 ALTER Query
SELECT * FROM employees;
-- ADD COLUMN
ALTER TABLE employees
-- ADD COLUMN age INT DEFAULT 0;

-- DROP COLUMN
-- ALTER TABLE employees
-- DROP COLUMN age;

-- RENAME col

-- ALTER TABLE employees
-- RENAME COLUMN fname TO Name;


ALTER TABLE employees
ALTER COLUMN name
SET DEFAULT 'unknown';
