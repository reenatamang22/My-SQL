CREATE TABLE employees_
(   employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO employees_
VALUES
(11, 'Rahul', 'IT', 50000, 'Pune', 'rahul@gmail.com');



INSERT INTO employees_
VALUES
(13, 'Sneha', 'Finance', 60000, 'Mumbai', 'sneha@gmail.com'),
(14, 'Priya', 'IT', 55000, 'Pune', 'priya@gmail.com'),
(15, 'Akash', 'Sales', 45000, 'Nashik', 'akash@gmail.com');

select * from employees_;

select *,
row_number() Over(order by salary desc) as row_num from employees_;

select *,
ROW_NUMBER () OVER (PARTITION BY department
order by salary desc) as row_num from employees_ ;

select *,
rank() over(order by salary desc) as rank_num from employees_;

select *,
dense_rank() over (order by salary desc) as rank_num from employees_;

select *,
DENSE_RANK () OVER (PARTITION BY department
order by salary desc) as row_num from employees_ ;

select *,
DENSE_RANK () OVER (PARTITION BY department
order by salary desc) as rank_num from employees_ ;

select*,
NTILE(2) OVER (ORDER BY salary DESC) AS bucket
from employees_;

select*,
NTILE(3) OVER (ORDER BY salary DESC) AS bucket
from employees_;

