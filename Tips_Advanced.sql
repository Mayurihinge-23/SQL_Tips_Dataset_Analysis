-- SQL- TIPS DATASET ADVANCED QUERY 
use practices;
select * from tips;

-- Find avg of total bill based on day and time
select avg(total_bill),day,time from tips group by day,time;

-- Find out sum of total bill and tips based on smoker and gender order by tips desc
select sum(total_bill),sum(tip) from tips group by smoker,sex order by sum(tip) desc;

-- Find out top 5 tips in the data
select tip from tips limit 5;

-- Find out bottom 3 total_bill in the data
select total_bill from tips order by total_bill limit 3;

-- Find out highest size in the data
select max(size) from tips;

-- Find out highest total bill
select max(total_bill) from tips;

-- Find out highest tip by female and non smoker
select max(tip) from tips where sex="female" and smoker="yes";

-- Find out third highest tip by female and non smoker use limit and offset
select tip from tips where sex="female" and smoker="no"  order by tip desc limit 2,1;

-- Find out the entry where lowest tip was paid
select * from tips where tip=(select min(tip) from tips);
 
-- Find out 5th lowest tip paid by female, smoker , use limit and offset
select tip from tips where sex="female" and smoker="yes"  order by tip limit 4,1;

-- Find out top 5 tips in the data
select tip from tips order by tip desc limit 5;

-- Find out bottom 3 total_bill in the data
select* from tips order by total_bill limit 3;

-- find out 1st highest tip
select max(tip) from tips limit 1; 

-- find out 2nd highest tip
select max(tip) from tips where tip <(select max(tip) from tips);

-- 3rd highest tip
select max(tip) from tips where tip<(select max(tip) from tips where tip<(select max(tip) from tips));

-- Find out third highest tip by female and non smoker use limit 
select tip from tips where sex="female" and smoker="no" order by tip desc limit 2,1;









