-- Day 8 — CASE Statements
-- Topics: CASE, conditional columns
use practices;
select * from tips;

-- Create a column that labels bills:
-- < 15 → Low
-- 15–30 → Medium
-- > 30 → High
select *,
case 
when total_bill<15  then "low"
when total_bill>=15 and total_bill<=30  then "medium"
else "high"
end as bill_status
from tips;

-- Create a column that labels tips:
-- < 2 → Low Tip
-- 2–4 → Average Tip
-- > 4 → High Tip
select *,
case 
when tip<2  then "low tip"
when tip>=2 and tip<=4  then "Average tip"
else "high tip"
end as tip_status
from tips;

-- Create a column that labels party size:
-- 1–2 → Small
-- 3–4 → Medium
-- 5+ → Large
select *,
case 
when size<=2  then "Small"
when size<=4  then "Medium"
else "Large"
end as size_status
from tips;

-- Create a column that shows Smoker or Non-Smoker.
select *,
case 
when smoker="Yes" then "Smoker"
when smoker="No" then "Non-Smoker"
end as Smokers_or_not
from tips;

-- Count how many customers fall into each bill category.
-- < 15 → Low
-- 15–30 → Medium
-- > 30 → High
select
case
when total_bill<15 then "Low"
when total_bill between 15 and 30 then "Medium"
else "High"
end as bill_category,
count(*) as customer_count
from tips
group by 
case 
when total_bill<15 then "Low"
when total_bill between 15 and 30 then "Medium"
else "High"
end;

-- Find the average bill for each bill category.
-- < 15 → Low
-- 15–30 → Medium
-- > 30 → High
select
case
when total_bill<15 then "Low"
when total_bill between 15 and 30 then "Medium"
else "High"
end as bill_category,
avg(total_bill) as avg_count
from tips
group by 
case 
when total_bill<15 then "Low"
when total_bill between 15 and 30 then "Medium"
else "High"
end;