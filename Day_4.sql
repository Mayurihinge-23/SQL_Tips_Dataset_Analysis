-- Day 4 — ORDER BY & LIMIT
-- Topics: ORDER BY, ASC, DESC, LIMIT
use practices;
select * from tips;

-- Display all records ordered by total_bill from lowest to highest.
select * from tips order by total_bill ;

-- Display all records ordered by total_bill from highest to lowest.
select * from tips order by total_bill desc;

-- Display customers ordered by tip from highest to lowest.
select * from tips order by tip desc ;

-- Display customers ordered by size from smallest to largest.
select * from tips order by total_bill ;

-- Find the highest 5 bills.
select total_bill as highest_bill from tips order by total_bill desc limit 5;

-- Find the lowest 5 bills.
select total_bill as lowest_bill from tips order by total_bill limit 5;

-- Find the top 10 highest tips.
select tip as highest_tip from tips order by tip desc limit 10;

-- Find the top 5 largest party sizes.
select size as party_size from tips order by size desc limit 5;

-- Display customers ordered by day alphabetically
select * from tips order by day;

-- Display records ordered by total_bill descending and tip ascending.
select * from tips order by total_bill desc,tip;
