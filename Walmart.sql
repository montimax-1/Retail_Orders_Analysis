--Create database
Create Database Walmart_db


use Walmart_db


--Import dataset using Flat file


--Show all the columns from the table
Select * from walmart_data


--Show all the Unique cities_Category in the dataset

Select Distinct city_category from walmart_data


--Count the total_user in the dataset
Select Count(*) as Total_user from walmart_data 


 --update the product_id column to remove decimal places

Alter table walmart_data
alter Column Product_ID int;

Alter table walmart_data
alter Column Purchase int;

Select * from walmart_data

--Show User whose Product category is 1

Select * from walmart_data 
where Product_category = 1


--Totalk sale by city category

Select City_category, Sum(Purchase) as City_Total From walmart_data group by City_category;

--Show records where the martital_status is 0.
Select * from walmart_data where Marital_status = 0;


Select * from walmart_data



--count total number of user according to thier gender
Select Gender, Count(Gender) as total_No from walmart_data 
group by gender;


--Use ORDER BY column_name DESC for sorting.

Select * from walmart_data
order by Purchase Asc;


Select * from walmart_data
order by Purchase Desc;


--Find customers with high Purchase (Total > 10000).
Select * from walmart_data where Purchase > 10000;

--Find customers with low Purchase (Total < 100).

Select * from walmart_data where Purchase < 100;


--Highest_purhcase
Select Top 1 Purchase from walmart_data
order by purchase desc;













