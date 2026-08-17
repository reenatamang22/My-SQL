create database CompanyDB;

use CompanyDB;

create table Employees(
EmpID int primary key,
Emp_Name varchar (50) not null,
Department varchar (30),
Salary decimal,
DateOfJoining date
);

Alter table Employees 
add column DeptID int ;

alter table Employees
add constraint FK_key_for foreign key (DeptID) references Departments(DeptID);

alter table Employees
add column Email text (100);

select * from Employees;

ALTER TABLE Employees
MODIFY Salary decimal not null;

alter table Employees
modify Department varchar (50);

alter table Employees
rename column Emp_Name to FullName;

select * from Employees;

rename table Employees to Staff;

ALTER TABLE Staff
ADD CONSTRAINT uq_Email UNIQUE (Email);

Alter table Staff
add constraint check (Salary>0);

Alter table Staff 
drop column Email;

drop table Departments;

insert into Staff (EmpID, FullName, Department, Salary, DateOfJoining)
Values (101, "Reena Tamang", "IT", 20000, "2017-07-18"),
(102, "Diksha Jadhav", "Marketing", 40000, "2016-05-20"),
(103, "Nayan Laha", "HR", 50000, "2017-06-10");

update Staff 
set salary = 55000
where EmpID = 101;

insert into Staff (EmpID, FullName, Department, Salary, DateOfJoining)
values (104, "Pradnya Gaikwad", "Sales", 30000, "2018-08-03"),
(105, "Shekhar Kamthe", "Sales", 60000, "2020-09-10"),
(106, "Sagar Kamble", "IT", 50000,"2019-09-10");

select * from Staff;

Set SQL_SAFE_UPDATES = 0;

update staff
set salary = salary*1.1
where department = "Sales";

SELECT * FROM Staff;

DELETE FROM Staff
where EmpID = 105;

SELECT * FROM Staff;

delete from Staff
where DateOfJoining < "2020-01-01";

SELECT * FROM Staff;

CREATE INDEX Department_Index ON Staff (Department); 	

SELECT * FROM Staff;












