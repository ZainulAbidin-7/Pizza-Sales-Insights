-- KPI Requirement

select * from pizza_sales;

select Sum(total_price) As Total_Revenue from pizza_sales; -- Total Revenue

select Sum(total_price) / COUNT(DISTINCT order_id) As Avg_Ordervalue from pizza_sales;    -- Average Order Value

select SUM(quantity) As Total_Pizza_Sold from pizza_sales; -- Total Pizza Sold

select COUNT(Distinct order_id) AS Total_Orders from pizza_sales; -- Total orders Taken

select  CAST( CAST(Sum(quantity)AS decimal(10,2)) / CAST(Count(Distinct order_id)
As decimal(10,2)) As decimal(10,2)) As Avg_Pizzas_Per_Order 
from pizza_sales;  -- Average Pizza Sold Per Order

-- Chart Requirement

select * from pizza_sales;

select DATENAME(DW,order_date) as Order_day, Count(Distinct order_id) as Total_orders
from pizza_sales group by DATENAME(DW,order_date); -- Daily Trends

select DATENAME(MONTH,order_date) as Month_Names, Count(Distinct order_id) as Total_orders
from pizza_sales group by DATENAME(MONTH,order_date);  -- Monthly Trends

select pizza_category, SUM(total_price)  * 100 / (select SUM(total_price) from pizza_sales) As Total_Percentage 
from pizza_sales group by pizza_category; --Percentage of sales according to pizza category

select pizza_size, SUM(total_price)  * 100 / (select SUM(total_price) from pizza_sales) As Total_Percentage
from pizza_sales group by pizza_size order by pizza_size; --Percentage of sales according to pizza size


