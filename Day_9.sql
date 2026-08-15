-- Day 9 — String & Numeric Functions
-- Topics: string functions, numeric functions

-- Display sex values in uppercase.
select upper(sex) from tips;

-- Display day values in lowercase.
select lower(day) from tips;

-- Find the length of each day value.
select length(day) from tips;

-- Round total_bill to the nearest whole number.
select round(total_bill) from tips;

-- Round tip to 1 decimal place.
select round(tip,1) from tips;

-- Calculate total_bill + tip for each record.
select total_bill, tip, total_bill + tip as total_amount from tips;

-- Calculate total_bill - tip for each record.
select total_bill, tip, total_bill - tip as total_amount from tips;

-- Calculate the tip percentage for each customer.
select tip,(tip/total_bill)*100 as tip_percentage from tips;

-- Round the tip percentage to 2 decimal places.
select tip,round((tip/total_bill)*100,2) as tip_percentage from tips;

-- Display the first 3 characters of each day.
select left(day,3) from tips;
