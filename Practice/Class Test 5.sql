create database classtest5;

use classtest5;

CREATE TABLE Customers (
    customer_id   INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

INSERT INTO Customers (customer_id, customer_name) 
VALUES
(1, 'Amit Sharma'),
(2, 'Priya Verma'),
(3, 'Rahul Nair'),
(4, 'Sneha Iyer'),
(5, 'Karan Mehta'); 

CREATE TABLE Orders (
    order_id    INT PRIMARY KEY,
    customer_id INT,
    order_date  DATE,
    amount      DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders (order_id, customer_id, order_date, amount) VALUES
(101, 1, '2025-01-05', 2500.00),
(102, 2, '2025-02-10', 1200.00),
(103, 3, '2025-01-15', 800.00),
(104, 4, '2025-03-01', 4500.00),
(105, 5, '2025-03-20', 999.00);

select c.customer_name, o.order_id 
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
    emp_id   INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id  INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);
 
INSERT INTO Employees (emp_id, emp_name, dept_id) VALUES
(1, 'Neha Joshi', 1),
(2, 'Arjun Rao', 1),
(3, 'Divya Pillai', 2),
(4, 'Rohan Das', 3),
(5, 'Meera Kulkarni', NULL);

select d.dept_name, e.emp_name
from Departments d
Inner Join Employees e
on d.dept_id = e.dept_id;

CREATE TABLE Courses (
    course_id   INT PRIMARY KEY,
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

SELECT o.order_id, c.customer_name, o.order_date, o.amount
FROM Orders o
INNER JOIN Customers c 
ON o.customer_id = c.customer_id;

 
CREATE TABLE Books (
    book_id    INT PRIMARY KEY,
    book_title VARCHAR(100)
);
 
INSERT INTO Books (book_id, book_title) VALUES
(1, 'The Alchemist'),
(2, 'Sapiens'),
(3, 'Atomic Habits'),
(4, 'Rich Dad Poor Dad');
 
CREATE TABLE BorrowRecords (
    record_id   INT PRIMARY KEY,
    book_id     INT,
    borrower    VARCHAR(50),
    borrow_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
 
INSERT INTO BorrowRecords (record_id, book_id, borrower, borrow_date) VALUES
(1, 1, 'Rohit', '2025-05-01'),
(2, 2, 'Sonal', '2025-05-03'),
(3, 1, 'Meena', '2025-05-10');

SELECT c.customer_id, c.customer_name, o.order_id, o.order_date, o.amount
FROM Customers c
LEFT JOIN Orders o 
ON c.customer_id = o.customer_id;

CREATE TABLE Suppliers (
    supplier_id   INT PRIMARY KEY,
    supplier_name VARCHAR(50)
);
 
INSERT INTO Suppliers (supplier_id, supplier_name) 
VALUES
(1, 'Reliance Distributors'),
(2, 'Tata Traders'),
(3, 'Global Supplies Co.');

SELECT c.customer_id, c.customer_name
FROM Customers c
LEFT JOIN Orders o 
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

CREATE TABLE Subjects (
    subject_id   INT PRIMARY KEY,
    subject_name VARCHAR(50)
);
 
INSERT INTO Subjects (subject_id, subject_name) VALUES
(1, 'Statistics'),
(2, 'SQL'),
(3, 'Excel');

select d.dept_name, e.emp_name
from Departments d
Left Join Employees e
on d.dept_id = e.dept_id;

SELECT p.product_name, s.sale_id, s.quantity, s.sale_date
FROM Products p
LEFT JOIN Sales s 
ON p.product_id = s.product_id;

SELECT b.book_title, br.borrower, br.borrow_date
FROM Books b
LEFT JOIN BorrowRecords br 
ON b.book_id = br.book_id;

SELECT e.emp_name, d.dept_name
FROM Employees e
RIGHT JOIN Departments d 
ON e.dept_id = d.dept_id;

SELECT s.student_name, c.course_name
FROM Students s
RIGHT JOIN Courses c 
ON s.course_id = c.course_id;

SELECT c.customer_id, c.customer_name, o.order_id, o.amount
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
UNION
SELECT c.customer_id, c.customer_name, o.order_id, o.amount
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;

SELECT p.product_name, s.supplier_name
FROM Products p
CROSS JOIN Suppliers s;

SELECT s.student_name, sub.subject_name
FROM Students s
CROSS JOIN Subjects sub;







 