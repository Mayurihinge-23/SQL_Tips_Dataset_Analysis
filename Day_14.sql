-- Day 14 — JOIN Practice
use practices;
select * from tips;

-- Create a customers table containing a unique customer ID and selected Tips columns.
create table customers(c_id int,c_name varchar(100),c_tip int,city varchar(20));
insert into customers values(1,"Ram",2,"Pune"),(2,"Ranjit",3,"Nagpur"),(3,"Savi",1,"Pune"),(4,"Om",3,"Mumbai"),(5,"Sai",2,"Delhi"),(6,"Raj",1,"Amravati");
select * from customers;
drop table bills;
-- Create a bill_details table containing customer ID, total bill, and tip.
create table bills(b_id int,b_name varchar(100),total_bill float,tip float,city varchar(20));
insert into bills values(1,"Ram",10.34,2.33,"Pune"),(2,"Sai",14.3,1.2,"Mumbai"),(3,"Raj",22.3,1.3,"Amravati"),(4,"Om",14.4,3,"Nagpur");
select * from bills;

-- Perform an INNER JOIN between the two tables.
select * from customers;
select * from bills;

select customers.c_name,customers.c_id,bills.city from customers 
inner join bills 
on customers.c_name=bills.b_name; 

-- Perform a LEFT JOIN between the two tables.
select customers.c_name,customers.c_id,bills.city from customers 
left join bills 
on customers.c_name=bills.b_name; 

-- Perform a RIGHT JOIN between the two tables.
select customers.c_name,customers.c_id,bills.city from customers 
right join bills 
on customers.c_name=bills.b_name; 

-- Perform a CROSS JOIN between small subsets of the tables.
select customers.c_name,customers.c_id,bills.b_id,bills.b_name from customers 
cross join bills 
on customers.c_name=bills.b_name; 

-- Join the tables and find customers whose bill is greater than 20.
select * from customers;
select * from bills;

select bills.b_id,bills.b_name,bills.total_bill from bills
inner join customers
on customers.c_id=bills.b_id
where bills.total_bill>20;

-- Join the tables and calculate the average tip.
select avg(tip) as avg_tip from bills
inner join customers
on customers.c_id=bills.b_id;
