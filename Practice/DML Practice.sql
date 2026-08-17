create database dml_practice_db;

use dml_practice_db;

CREATE TABLE employees
(   employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO employees
VALUES
(101, 'Rahul', 'IT', 50000, 'Pune', 'rahul@gmail.com');

INSERT INTO employees(employee_id,
employee_name,department)
VALUES(102,'Amit','HR');

INSERT INTO employees
VALUES
(103, 'Sneha', 'Finance', 60000, 'Mumbai', 'sneha@gmail.com'),
(104, 'Priya', 'IT', 55000, 'Pune', 'priya@gmail.com'),
(105, 'Akash', 'Sales', 45000, 'Nashik', 'akash@gmail.com');

select * from employees;

INSERT INTO employees(employee_id,employee_name,department)
VALUES(106, 'Rohit', 'IT'),(107, 'Neha', 'HR'),(108, 'Karan', 'Finance');

select * from employees;

INSERT INTO employees(employee_id,employee_name,department)
SELECT 109,'Vikas','Marketing';

INSERT INTO employees(employee_id,employee_name,department,salary)
VALUES(112,'Raj','IT',40000 + 5000);

INSERT INTO employees(employee_id,employee_name,department,salary,city,email)
VALUES(113,'Anjali','HR',NULL,'Mumbai',NULL);

select * from employees;

UPDATE employees
SET salary = 60000
WHERE employee_id = 101;

select * from employees;

UPDATE employees
SET
    salary = 65000,
    city = 'Mumbai'
WHERE employee_id = 101;

select * from employees;

UPDATE employees
SET salary = 70000
WHERE department = 'IT'
AND city = 'Pune';

SELECT * FROM employees;

UPDATE employees
SET salary = salary + 3000
WHERE department = 'HR'
OR department = 'Finance';

SELECT * FROM employees;

UPDATE employees
SET salary = salary + 4000
WHERE department IN ('IT', 'Finance', 'Sales');

SELECT * FROM employees;

UPDATE employees
SET salary =
    CASE
        WHEN department = 'IT' THEN salary * 1.15
        WHEN department = 'HR' THEN salary * 1.10
        WHEN department = 'Sales' THEN salary * 1.12
        WHEN department = 'Finance' THEN salary * 1.08
        ELSE salary
    END;
    
 SELECT * FROM employees; 
 
delete from employees
where employee_id=105;

SELECT * FROM employees; 

set sql_safe_updates = 0;

delete from employees
where department = 'IT'
AND city ='Pune';

SELECT * FROM employees; 

delete FROM employees
where department IN ('Finance','Marketing');

SELECT * FROM employees; 

delete from employees
where department = 'IT'
or city ='Pune';

select * from employees;

delete from employees
where salary < 40000;

select * from employees;

delete from employees
where email is null;

select * from employees;

delete from employees
where salary =
    CASE
        WHEN department = 'IT' THEN 70000
        WHEN department = 'HR' THEN 50000
        WHEN department = 'Sales' THEN 45000
        WHEN department = 'Finance' THEN 60000
        ELSE salary
    END;
    
select * from employees;

select * from employees where employee_id =101;

update employees
set city="goa"
where employee_id=106;

select * from employees;

select distinct city 
from employees;

 select distinct city ,department
 from employees;
 
select employee_id
from employees
order by employee_id Desc;

select  salary
from employees
order by salary desc
limit 2;

select department
from  employees
order by department 
limit 5 offset 2;















