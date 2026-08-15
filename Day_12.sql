-- Day 12 — Self Join
-- Topics: Self Join
use practices;

-- Perform a self join using total_bill and find records having the same bill amount.
select 
a.total_bill as total,
b.total_bill as same 
from tips a
join tips b
on a.total_bill=b.total_bill
and a.total_bill is not null;

-- Find pairs of records where one bill is higher than another bill.
select 
a.total_bill as bill_1,
b.total_bill as bill_2 
from tips a
join tips b
on a.total_bill>(b.total_bill);
