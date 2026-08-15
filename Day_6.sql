-- Day 6 — GROUP BY
-- Topics: GROUP BY, aggregate functions

use practices;
select * from tips;

-- Find the number of customers for each sex.
select sex,count(sex) as total from tips group by sex;

-- Find the number of customers for each smoker category.
select smoker as category,count(smoker) as total_smokers from tips group by smoker;

-- Find the number of customers for each day.
select day,count(day) as total_days from tips group by day;

-- Find the number of customers for each time.
select time,count(time) as count_time  from tips group by time;

-- Find the average bill for each day.
select day,avg(total_bill) from tips group by day;

-- Find the average tip for each day.
select day,avg(tip) as avg_tip from tips group by day;

-- Find the total tips collected on each day.
select day,sum(tip) as total_tip from tips group by day;

-- Find the highest bill for each day.
select day,max(total_bill) as highest_bill from tips group by day;

-- Find the lowest bill for each day.
select day,min(total_bill) as lowest_bill from tips group by day;

-- Find the average party size for each day.
select day,avg(size) from tips group by day;

-- Find the average bill for smokers vs non-smokers.
select smoker,avg(total_bill) as avg_bill from tips group by smoker;

-- Find the average tip for Male vs Female customers.
select sex,avg(tip) as avg_tip from tips group by sex;
