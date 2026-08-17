create database test1;

use test1;

create table test_table (
Student_id tinyint primary key,
Full_name varchar (100) not null,
Age tinyint check (Age >= 18),
Email varchar (100) unique,
Degree varchar (50) default "Data is not available"
);

select * from test_table;

insert into test_table (Student_id, Full_name, Age, Email, Degree) 
values (001, "Reena Tamang", 33, "reenatamang62@gmail.com", "B.Com"),
 (002, "Sagar Kamble", 30, "kamblesagar435@gmail.com", "B.Tech"), 
 (003, "Diksha Jadhav", 31, "jadhavdiksha47@gmail.com", "B.A");
 
select * from test_table;

alter table test_table
add column City varchar (50);
select * from test_table;

alter table test_table
modify Student_id int not null;

alter table test_table
drop column city;

select * from test_table;

alter table test_table
rename column Degree to Bachelor_Degree;

select * from  test_table;

alter table test_table
rename to demo_table; 

