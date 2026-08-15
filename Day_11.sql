-- Day 11 — Subqueries
-- Topics: Single-row and multi-row subqueries
use practices;
select * from tips;

-- Find customers whose total_bill is greater than the average bill.
select * from tips where total_bill>(select avg(total_bill) from tips);

-- Find customers whose tip is greater than the average tip.
select * from tips where tip>(select avg(tip) from tips);

-- Find customers whose total_bill is equal to the highest bill.
select * from tips where total_bill=(select max(total_bill) from tips);

-- Find customers whose tip is equal to the highest tip.
select * from tips where tip=(select max(tip) from tips);

-- Find customers whose total_bill is less than the average bill.
select * from tips where total_bill <(select avg(total_bill) from tips);

-- Find the day having the highest average bill.
select day,avg(total_bill) as avg_bill from tips 
group by day
having avg(total_bill)=(select max(avg_bill) 
from (select avg(total_bill) as avg_bill from tips group by day) as avg); 

-- Find customers whose bill is greater than the maximum bill on Friday.
select * from tips where total_bill>(select max(total_bill) from tips where day="Friday");

-- Find customers whose tip is greater than the average tip of smokers
select * from tips where tip>(select avg(tip) from tips where smoker="Yes");