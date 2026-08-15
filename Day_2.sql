-- Day 2 — WHERE, Comparison & Logical Operators
-- Topics: WHERE, =, >, <, >=, <=, <>, AND, OR, NOT
use practices;
select * from tips;

-- Find customers where total_bill is greater than 20.
select * from tips where total_bill>20;

-- Find customers where tip is greater than 5.
select * from tips where tip>5;

-- Find customers where size is greater than 4.
select * from tips where size>4;

-- Find customers where total_bill is less than 10.
select * from tips where total_bill<10;

-- Find customers where sex is Female.
select * from tips where sex="Female";

-- Find customers where smoker is Yes.
select * from tips where smoker="Yes";

-- Find customers who are Male and smokers.
select * from tips where sex="Male" and smoker="Yes";

-- Find customers who are Female and have a total_bill greater than 20.
select * from tips where sex="Female" and total_bill>20;

-- Find customers where day is Saturday or Sunday.
select * from tips where day in("Sun","Sat");

-- Find customers who are not smokers.
select * from tips where smoker="No";

-- Find customers whose total_bill is greater than 30 and tip is greater than 4.
select * from tips where total_bill>30 and  tip>4;

-- Find customers where size is 2 or 3.
select * from tips where size in (2,3);

-- Find customers whose total_bill is not equal to 10.34.
select * from tips where total_bill != 10.34;
select * from tips where total_bill not in(10.34);
