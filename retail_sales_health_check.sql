use projects
--Q1. Basic dataset health check
select * from [dbo].[Sample - Superstore]

select count(*) from [dbo].[Sample - Superstore]

--Q2. Check NULL values
SELECT
    COUNT(*) - COUNT(Order_ID) AS Order_ID_Missing,
    COUNT(*) - COUNT(Customer_ID) AS Customer_ID_Missing,
    COUNT(*) - COUNT(Sales) AS Sales_Missing,
    COUNT(*) - COUNT(Profit) AS Profit_Missing,
    COUNT(*) - COUNT(Category) AS Category_Missing
FROM [dbo].[Sample - Superstore];


--Q3. Check Date Range
select 
    min(order_date) as first_order_date,
    max(order_date) as last_order_date
from [dbo].[Sample - Superstore]

--Q4. Sales & Profit by Category
select 
    category,
    round(sum(sales),2) as total_sales,
    round(sum(profit),2) as total_profit 
from [dbo].[Sample - Superstore]
group by Category

--Q5. Sales & Profit by Sub-Category
select 
    Sub_Category,
    round(sum(sales),2) as total_sales,
    round(sum(profit),2) as total_profit 
from [dbo].[Sample - Superstore]
group by Sub_Category

--Q6. Sales & Profit by Region
select 
    Region,
    round(sum(sales),2) as total_sales,
    round(sum(profit),2) as total_profit 
from [dbo].[Sample - Superstore]
group by Region

--Q7. Create Discount Bands

 select   
    case
        when Discount=0 Then '0%'
        when Discount<=0.20 Then '1-20%'
        else '20%+'
    end as Discount_Category
from [dbo].[Sample - Superstore]

ALTER TABLE [dbo].[Sample - Superstore]
ADD Discount_Category VARCHAR(20);

UPDATE [dbo].[Sample - Superstore]
SET Discount_Category =
    CASE
        WHEN Discount = 0 THEN '0%'
        WHEN Discount > 0 AND Discount <= 0.20 THEN '1-20%'
        else  '20%+'
    END;
  
  
  --Q8. Profit by Discount Band
select 
    Discount_Category,
    round(sum(sales),2) as total_sales,
    round(sum(profit),2) as total_profit 
from [dbo].[Sample - Superstore]
group by Discount_Category


--Q9. Identify Loss-Making Sub-Categories
select 
    Sub_Category,
    round(sum(sales),2) as total_sales,
    round(sum(profit),2) as total_profit 
from [dbo].[Sample - Superstore]
group by Sub_Category
HAVING SUM(Profit) < 0


--Q10. High-Discount Sub-Categories with Negative Profit

SELECT
    Sub_Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM [dbo].[Sample - Superstore]
WHERE Discount > 0.20
GROUP BY Sub_Category
HAVING SUM(Profit) < 0
ORDER BY Total_Profit;