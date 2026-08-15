-- Day 1 — SELECT, DISTINCT & Basic Queries
-- Topics: SELECT, FROM, DISTINCT, column selection
use practices;

-- Display all records from the tips table.
select tip from tips;

-- Display only total_bill and tip.
select total_bill,tip from tips;

-- Display sex, smoker, and day.
select sex,smoker,day from tips;

-- Display total_bill, tip, and size.
select  total_bill, tip,size from tips;

-- Display all records where only the required columns are selected.
select * from tips;
select day,time from tips;

-- Find all unique values of sex.
select distinct(sex) from tips;

-- Find all unique values of smoker.
select distinct(smoker) from tips;

-- Find all unique values of day.
select distinct(day) from tips;

-- Find all unique values of time.
select distinct(time) from tips;

-- Find all unique combinations of sex and smoker
select distinct sex,smoker from tips;
