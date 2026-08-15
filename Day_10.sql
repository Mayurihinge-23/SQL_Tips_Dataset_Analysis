-- Day 10 — Conditional Logic + NULL Practice
-- NULL-related concepts and conditional filtering without inventing another dataset.

-- Check whether any total_bill values are NULL.
select total_bill from tips where total_bill is null;

-- Check whether any tip values are NULL.
select tip from tips where tip is null;

-- Check whether any sex values are NULL.
select sex from tips where sex is null;

-- Check whether any smoker values are NULL.
select smoker from tips where smoker is null;

-- Check whether any day values are NULL.
select day from tips where day is null;

-- Check whether any time values are NULL.
select time from tips where time is null;

-- Check whether any size values are NULL.
select size from tips where size is null;

-- Count the number of non-NULL tip values.
select count(*) is null from tips;

-- Display records where tip is not NULL.
select * from tips where tip is not null;

-- Display records where all major columns are not NULL.
select * from tips where total_bill is not null 
and tip is not null 
and sex is not null 
and smoker is not null 
and day is not null 
and time is not null 
and size is not null;

