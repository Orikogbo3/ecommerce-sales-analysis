CREATE DATABASE IF NOT EXISTS ecommerce_db;
USE ecommerce_db;

DESCRIBE ecommerce_db.ecommerce;
SELECT COUNT(*) FROM ecommerce;
DROP TABLE ecommerce;

CREATE TABLE ecommerce (
    Order_Date VARCHAR(20),
    Product_Name VARCHAR(100),
    Category VARCHAR(50),
    Region VARCHAR(20),
    Quantity INT,
    Sales INT,
    Profit DECIMAL(10,2),
    Profit_Margin VARCHAR(20),
    Order_Month INT,
    Order_Year INT,
    Yr_Month VARCHAR(20)
);

SELECT COUNT(*) FROM ecommerce_db.ecommerce;
SELECT * FROM ecommerce_db.ecommerce LIMIT 10;
USE ecommerce_db;
SELECT COUNT(*) FROM ecommerce;
# Total Sales and Tottla Profit 
select sum(Sales) As Total_Sales, sum(Profit) As Total_Profit
		from ecommerce_db.ecommerce;
        
SELECT Product_Name, Sum(Sales) AS Sales
from ecommerce_db.ecommerce
group by Product_Name order by Sales DESC limit 5;

Select Category, sum(Sales) AS Sales From ecommerce_db.ecommerce 
	group by Category order by Sales desc;
    
Select Region, sum(Sales) AS Sales From ecommerce_db.ecommerce 
	group by Region order by Sales desc;

select Yr_Month, sum(Sales) AS Sales from ecommerce_db.ecommerce 
	group by Yr_Month, Order_Year, Order_Month 
    order by Order_Year, Order_Month;

select * FROM ecommerce_db.ecommerce;

select sum(Sales) AS Sales from ecommerce_db.ecommerce;