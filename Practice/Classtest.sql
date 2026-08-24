create database classtest2;

use classtest2;

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

SELECT c.name, o.order_id
FROM Customers c
INNER JOIN Orders o 
ON c.customer_id = o.customer_id;

SELECT c.name, o.order_id
FROM Customers c
INNER JOIN Orders o USING (customer_id);

SELECT c.name, o.order_id
FROM Customers c, Orders o
WHERE c.customer_id = o.customer_id;

SELECT C.name, o.order_id
FROM Customers c
LEFT JOIN Orders o 
ON c.customer_id = o.customer_id;

SELECT c.name, o.order_id
FROM Customers c
LEFT JOIN Orders o 
USING (customer_id);

SELECT c.name, o.order_id
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id
WHERE o.customer_id is null;

select c.name, o.order_id
from Customers c
Right Join Orders o 
on c.customer_id = o.customer_id;

SELECT c.name, o.order_id
FROM Customers c
RIGHT JOIN Orders o 
USING (customer_id);

SELECT c.name, o.order_id
from Customers c
Right Join Orders o
On c.customer_id = o.customer_id;

select c.name, o.order_id
from Customers c
left join Orders o
on c.customer_id = o.customer_id

Union all

select c.name, o.order_id
from Customers c
right join Orders o
on c.customer_id = o.customer_id;

select c.name, o.order_id
from Customers c
cross join Orders o;
