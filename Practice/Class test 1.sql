create database classtest4;

use classtest4;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50),
    phone VARCHAR(20)
);

INSERT INTO Customers (customer_id, name, email, phone) VALUES
(1, 'Aarav Sharma', 'aarav@email.com', '9876543210'),
(2, 'Priya Verma', 'priya@email.com', '9876543211'),
(3, 'Rohan Mehta', 'rohan@email.com', '9876543212'),
(4, 'Sneha Kapoor', 'sneha@email.com', '9876543213'),
(5, 'Karan Joshi', 'karan@email.com', '9876543214');

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount FLOAT
);

INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(101, 1, '2024-01-05', 500),
(102, 1, '2024-02-10', 750),
(103, 2, '2024-01-15', 300),
(104, 3, '2024-03-01', 1200),
(105, 3, '2024-03-20', 450),
(106, 6, '2024-04-02', 600);

select c.name, o.order_id 
from Customers c
Inner Join Orders o
On c.customer_id = o.customer_id;

CREATE TABLE Departments (
    dept_id   INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO Departments (dept_id, dept_name) VALUES
(1, 'Finance'),
(2, 'Human Resources'),
(3, 'IT'),
(4, 'Marketing'),
(5, 'Legal');

CREATE TABLE Employees (
    emp_id    INT PRIMARY KEY,
    emp_name  VARCHAR(50),
    dept_id   INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

INSERT INTO Employees (emp_id, emp_name, dept_id) VALUES
(1, 'Neha Joshi', 1),
(2, 'Arjun Rao', 1),
(3, 'Divya Pillai', 2),
(4, 'Rohan Das', 3),
(5, 'Meera Kulkarni', null );

select d.dept_name, e.emp_name
from Departments d
Inner Join Employees e
on d.dept_id = e.dept_id;

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

INSERT INTO Courses (course_id, course_name) VALUES
(1, 'Data Analytics'),
(2, 'Power BI'),
(3, 'Python for Data Science'),
(4, 'Machine Learning');

 
CREATE TABLE Students (
    student_id   INT PRIMARY KEY,
    student_name VARCHAR(50),
    course_id    INT,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

 
INSERT INTO Students (student_id, student_name, course_id) VALUES
(1, 'Ananya Singh', 1),
(2, 'Vikram Patel', 1),
(3, 'Isha Reddy', 3),
(4, 'Aditya Kapoor', NULL); 

select c.course_name, s.student_name
from Courses c
Inner Join students s
on c.course_id = c.course_id;

CREATE TABLE Categories (
    category_id   INT PRIMARY KEY,
    category_name VARCHAR(50)
);

INSERT INTO Categories (category_id, category_name) VALUES
(1, 'Electronics'),
(2, 'Groceries'),
(3, 'Furniture');

 
CREATE TABLE Products (
    product_id   INT PRIMARY KEY,
    product_name VARCHAR(50),
    category_id  INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

INSERT INTO Products (product_id, product_name, category_id) VALUES
(1, 'Laptop', 1),
(2, 'Smartphone', 1),
(3, 'Rice Bag', 2),
(4, 'Office Chair', 3),
(5, 'Bluetooth Speaker', 1);

select c.category_name, p.product_name
from Categories c
Inner Join Products p
on c.category_id = p.category_id;

 
CREATE TABLE Sales (
    sale_id    INT PRIMARY KEY,
    product_id INT,
    quantity   INT,
    sale_date  DATE,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Sales (sale_id, product_id, quantity, sale_date) VALUES
(1, 1, 3, '2025-04-01'),
(2, 2, 5, '2025-04-02'),
(3, 3, 20, '2025-04-03'),
(4, 1, 2, '2025-04-10');

SELECT o.order_id, c.customer_id, o.order_date, o.total_amount
FROM Orders o
INNER JOIN Customers c 
ON o.customer_id = c.customer_id;


 
 
