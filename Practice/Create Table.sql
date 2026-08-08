use test;

create table table3(
cust_id int primary key,
cust_name varchar (50) not null,
age tinyint,
email varchar (50) unique,
city varchar (100)
);

insert into table3 (cust_id, cust_name, age)
values (001, "Reena Tamang", 33);

select * from table3;

update table3
set city = "Pune"
where cust_id = 001;

select * from table3;

set SQL_SAFE_UPDATES = 0;

update table3
set cust_name = "Sagar"
where cust_id = 001
and city = "Pune";

select * from table3;

update table3
set age = 31,
city = "Pune"
where cust_id = 001
or cust_name = "Sagar";

select * from table3;

update table3
set salary = 
case 
when cust_id = 001 then 10000
when cust_id = 002 then 20000
when cust_id = 003 then 30000
else salary
end;

alter table table3
add column salary bigint;

select * from table3;

insert into table3 (cust_id, cust_name, age)
values (002, "Reena", 33), 
(003, "Diksha", 32),
(004, "Mohit", 15);

select * from table3;