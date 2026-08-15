create database practices;
use practices;
select * from tips;

-- >DDL <------------
-- Display the structure of the tips table.
describe tips;

-- Add a new column customer_id of type INT.
alter table tips add column customer_id int;

-- Add a new column restaurant_name of type VARCHAR(50).
alter table tips add column restaurant_name VARCHAR(50);

-- Modify the restaurant_name column to VARCHAR(100).
alter table tips modify column restaurant_name VARCHAR(100);

-- Rename the column size to party_size.
alter table tips rename column size to party_size;

-- Remove the restaurant_name column.

-- Rename the table tips to restaurant_tips.
rename table tips to restaurant_tips;

-- Rename it back to tips.
rename table restaurant_tips to tips;

select * from tips;

-- >DML <------------

-- Insert one new record into the tips table.
insert into tips values(10.5,2.3,"Female","No","Sat","Lunch",3,101,"Nicola");

-- Insert 3 new records at once.
insert into tips values(13.5,2.3,"Male","Yes","Sat","
Dinner",3,102,"TamTara"),(12.1,4.3,"Female","No","Mon","Lunch",2,103,"Nicola"),(15.5,3,"Female","Yes","Thur","Dinner",3,104,"RamRaj");

-- Update the tip amount of a customer whose total_bill is 16.99 to 2.00.
-- Change all smoker = 'No' records to smoker = 'N'.
-- Change them back from 'N' to 'No'.
-- Increase the tip by 1 for customers whose total_bill is greater than 40.
-- Update the day from Sun to Sunday.
-- Delete the record where:
-- total_bill = 10.34
-- Delete all records where smoker = 'Yes'.
-- Delete records where size = 1.
