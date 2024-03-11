create schema Mobile;
use Mobile;
select * from mobile;

-- Check Mobile features and price list --
select Phone_name, Price from mobile;

-- Find out the price of 5 most expensive phones--

select * from mobile
order by price desc
limit 5;

-- Find out the price of 5 most cheapest phones--
select * from mobile
order by price asc
limit 5;

-- List of top 5 Samsung Phones with price and all features--

select * from mobile where brands = "Samsung"
order by price desc
limit 5;

-- List of top 5 Android Phones with price and all features--

select * from mobile where Operating_System_Type = "Android"
order by price desc
limit 5;

-- List of top 5 Android Phones with lowest price and all features--

select * from mobile where Operating_System_Type = "Android"
order by price asc
limit 5;

-- List of top 5 IOS Phones with Highest price and all features--

select * from mobile where Operating_System_Type = "IOS"
order by price desc
limit 5;

-- List of top 5 IOS Phones with Lowest price and all features--

select * from mobile where Operating_System_Type = "IOS"
order by price asc
limit 5;

-- List of top 5 5g support Phones with Highest price and all features--

select * from mobile where 5g_availability = "Yes"
order by price desc
limit 5;

-- Total price of all mobile is to be found with brand name -- 

select brands, sum(price) from mobile group by brands;