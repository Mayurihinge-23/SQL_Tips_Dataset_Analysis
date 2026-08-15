-- Day 5 — Aggregate Functions
-- Topics: COUNT, SUM, AVG, MIN, MAX
use practices;
select * from tips;

-- Find the total number of records.
select count(*) from tips;

-- Find the total of all total_bill values.
select sum(total_bill) as total_of_tb from tips;

-- Find the average total_bill.
select avg(total_bill) as avg_tb from tips;

-- Find the average tip.
select avg(tip) as avg_tip from tips;

-- Find the highest total_bill.
select max(total_bill) as highest_tb from tips;

-- Find the lowest total_bill.
select min(total_bill) as lowest_tb from tips;

-- Find the highest tip.
select max(tip) as highest_tip from tips;

-- Find the lowest tip.
select min(tip) as lowest_tip from tips;

-- Find the total number of customers represented by size.
select sum(size) from tips ;

-- Find the average party size.
select avg(size) as avg_size from tips ;

-- Find the total amount of tips collected.
select sum(tip) as collected_tip from tips ;

-- Find the difference between the highest and lowest bill.
select max(total_bill)-min(total_bill) as difference from tips;