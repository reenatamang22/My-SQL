create database classtest7;

use classtest7;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    manager_id INT,
    city VARCHAR(50),
    hire_date DATE
);

INSERT INTO employees VALUES
(101, 'Asha', 'HR', 45000, NULL, 'Mumbai', '2019-03-01'),
(102, 'Ravi', 'Finance', 60000, 105, 'Pune', '2020-06-15'),
(103, 'Priya', 'IT', 75000, 106, 'Pune', '2018-11-20'),
(104, 'Kunal', 'Sales', 50000, 107, 'Delhi', '2021-01-10'),
(105, 'Meena', 'Finance', 90000, NULL, 'Pune', '2015-04-05'),
(106, 'Arjun', 'IT', 95000, NULL, 'Pune', '2016-07-22'),
(107, 'Sneha', 'Sales', 70000, NULL, 'Delhi', '2017-09-30'),
(108, 'Vikram', 'HR', 40000, 101, 'Mumbai', '2022-02-14'),
(109, 'Divya', 'IT', 62000, 106, 'Pune', '2019-12-01'),
(110, 'Rohan', 'Finance', 55000, 105, 'Pune', '2020-08-19');

select salary from employees
where salary = (select max(salary) from employees);

select emp_name,salary
from employees
where salary > (select salary from employees where emp_name = 'Priya');

select emp_name, department
from employees
where emp_id in (select emp_id from employees where department in ('Sales','Finance'));

select salary 
from employees
where salary > (select avg(salary) from employees);

select salary
from employees
where salary = (select salary from employees where emp_id = 105);

select salary
from employees
where salary = (select max(salary) from employees);

select emp_name 
from employees
where department=(select department from employees where emp_name ="Asha");

select emp_name from employees
where salary < (select salary from employees where emp_name = "Asha");

select emp_name from employees
where salary > (select min(salary) from employees);

select emp_name from employees
where hire_date > (select hire_date from employees where emp_id = 101);

select salary from employees
where salary > (select salary from employees where emp_name = 'Ravi');

select emp_name from employees
where department IN (select department from employees where city = "Mumbai");


