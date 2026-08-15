-- Day 13 — UNION
-- Topics: UNION, UNION ALL
use practices;
select * from tips;

-- Create a result containing all Male and Female records using UNION.
select * from tips where sex="Male"
union 
select * from tips where sex="Female";

-- Combine Saturday and Sunday records using UNION.
select * from tips where day="Sat"
union 
select * from tips where day="Sun";

-- Combine Lunch and Dinner records using UNION.
select * from tips where time="Dinner"
union 
select * from tips where time="Lunch";

-- Combine smoker and non-smoker records using UNION.
select * from tips where smoker="Yes"
union 
select * from tips where smoker="No";

-- Repeat the previous question using UNION ALL.
select * from tips where smoker="Yes"
union all
select * from tips where smoker="No";
-- ------------------------------------
select * from tips where time="Dinner"
union all
select * from tips where time="Lunch";

-- Find the difference between the results of UNION and UNION ALL.
select * from tips
where day = 'Saturday'
union 
select * from tips
where total_bill > 20;
-- -----------------------------------
select * from tips
where day = 'Saturday'
union all
select * from tips
where total_bill > 20; 