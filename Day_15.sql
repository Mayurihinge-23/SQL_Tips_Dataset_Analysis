-- Day 15 — Window Functions
-- Topics: OVER(), PARTITION BY, RANK(), DENSE_RANK(), ROW_NUMBER()
use practices;
select * from tips;

-- Assign a row number to every record.
with t1 as(select *,
row_number()
over()  from tips)
select * from t1;

-- Rank customers based on total_bill.
with t1 as(select *,
rank()
over(order by total_bill) from tips)
select * from t1;

-- Rank customers based on tip.
with t1 as(select *,
rank()
over(order by tip) from tips)
select * from t1;

-- Rank customers based on total_bill within each day.
with t1 as(select *,
rank()
over(partition by day order by total_bill) as bill_rank from tips)
select * from t1;

-- Rank customers based on tip within each day.
with t1 as(select *,
rank()
over(partition by day order by tip) as tip_rank from tips)
select * from t1;

-- Rank Male and Female customers separately based on total_bill.
with t1 as(select * ,
rank()
over(partition by sex order by total_bill) as bill_rank from tips)
select * from t1;

-- Rank smokers and non-smokers separately based on total_bill.
with t1 as(select * ,
rank()
over(partition by smoker order by total_bill) as bill_rank from tips)
select * from t1;

-- Find the top 3 bills for each day using RANK().
with t1 as(select * ,
rank()
over(partition by day order by total_bill ) as bill_rank from tips) 
select * from t1 where bill_rank<=3;

-- Assign ROW_NUMBER() to customers within each day.
with t1 as(select * ,
row_number()
over(partition by day order by total_bill ) as bill_rank from tips) 
select * from t1;

-- Find the average bill for each day using AVG() OVER(PARTITION BY day).
with t1 as(select *,
avg(total_bill)
over(partition by day) from tips)
select * from t1;