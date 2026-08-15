-- Day 3 — BETWEEN, IN, LIKE & Aliases
-- Topics: BETWEEN, IN, NOT IN, LIKE, AS
use practices;
select * from tips;

-- Find bills between 10 and 20.
select * from tips where total_bill between 10 and 20; 

-- Find tips between 2 and 4.
select * from tips where tip between 2 and 4; 

-- Find customers with party sizes between 2 and 4.
select * from tips where size between 2 and 4;

-- Find customers whose day is Saturday, Sunday, or Friday.
select * from tips where day in("Sat","Sun","Fri");

-- Find customers whose time is Lunch or Dinner.
select * from tips where time in("Lunch","Dinner");

-- Find customers whose sex is Male or Female using IN.
select * from tips where sex in("Male","Female");

-- Find customers whose day is not Saturday or Sunday.
select * from tips where day not in("Sat","Sun");

-- Find customers whose day starts with the letter S.
select * from tips where day like "S%";

-- Find customers whose day ends with the letter y.
select * from tips where day like "%y";

-- Find customers whose sex contains the letter a.
select * from tips where sex like "%a%";

-- Display total_bill as Bill Amount.
select total_bill,total_bill as Bill_Amount from tips;

-- Display tip as Tip Amount.
select tip,tip as Tip_Amount from tips;

-- Display size as Number of People.
select size,size as Number_of_People from tips;
