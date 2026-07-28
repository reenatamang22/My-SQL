Create database banking_db;
use banking_db;
create table Account_holders_data(
Account_holder_name varchar (100) not null,
Account_number int not null,
Email varchar (200),
Age tinyint not null

 );
 select * from Account_holders_data ;
 show databases;
 
 CREATE TABLE Customers
(
    CustomerID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);
drop table Customers;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    AccountCreationDate DATE
);
select * from Customers;

