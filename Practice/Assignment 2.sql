create database pizza_sales_analysis;

USE pizza_sales_analysis;

show databases;

CREATE TABLE order_(
ID int,
date_ DATE
);

alter table order_
add column time_ time AFTER date_ ;

rename table order_ to orders;
alter table orders
add primary key (ID);