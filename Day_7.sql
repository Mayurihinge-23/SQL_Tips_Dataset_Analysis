-- Day 7 — GROUP BY + HAVING
-- Topics: HAVING

use practices;
select * from tips;

-- Find days having more than 50 records.
select day from tips group by day having count(*) >50;

-- Find days where average total_bill is greater than 20.
select day from tips group by day having avg(total_bill) >20;

-- Find days where average tip is greater than 3.
select day from tips group by day having avg(tip) >3;

-- Find smoker categories having more than 90 records.
select smoker from tips group by smoker having count(*) >90;

-- Find days where total tips are greater than 200.
select day from tips group by day having sum(tip)>200;

-- Find party sizes that occur more than 10 times.
select size from tips group by size having count(tip)>10;

-- Find sex groups having an average bill greater than 18.
select sex from tips group by sex having avg(total_bill)>18;

-- Find time groups having an average tip greater than 2.5.
select time from tips group by time having avg(tip)>2.5;

-- Find days where the maximum bill is greater than 40.
select day from tips group by day having max(total_bill)>40;

-- Find days where the minimum bill is less than 10.
select day from tips group by day having min(total_bill)<10;
