SELECT * FROM superstore;

-- What is the total sales, total profit and total quantity sold overall?

SELECT
		SUM(sales) AS Total_sales,
		SUM(profit) AS Total_profit,
		SUM(quantity) AS Total_quantity
FROM superstore;

-- What are total sales and profit by each category and sub-category?

SELECT category, sub_category, SUM(sales), SUM(profit)
FROM superstore
GROUP BY Category, Sub_Category;

-- Which products are the most and least profitable?

SELECT product_name, SUM(profit) AS Total_profit
FROM superstore
GROUP BY Product_Name
ORDER BY Total_profit DESC;

SELECT product_name, SUM(profit) AS Total_profit
FROM superstore
GROUP BY Product_Name
ORDER BY Total_profit ASC;

-- What is the average profit margin for each category?

SELECT category, ROUND(SUM(profit)/SUM(sales),2) AS avg_profit_margin
FROM superstore
GROUP BY Category;

-- Which region generates the highest sales and profit?

SELECT region,
		SUM(sales) AS Total_sales,
		SUM(profit) AS total_profit
FROM superstore
GROUP BY region
ORDER BY Total_sales DESC;

-- Which states have the heighest and lowest total profit?

SELECT state,
		SUM(profit) AS total_profit
FROM superstore
GROUP BY state
ORDER BY total_profit DESC;

SELECT state,
		SUM(profit) AS total_profit
FROM superstore
GROUP BY state
ORDER BY total_profit ASC;

-- Which cities in each region have the higest sales?

SELECT region, city, SUM(sales) as Total_sales_by_city
FROM superstore
GROUP BY region, city
ORDER BY region, Total_sales_by_city DESC;

-- How many orders were placed from each region?

SELECT region, COUNT (order_id) AS total_order
FROM superstore
GROUP BY region;

-- What is the average shipping delay?

SELECT
		ROUND(AVG("ship_date"-"order_date"),2) AS Avg_shipping_delay
FROM superstore;

-- Which shipping mode is used most frequently?

SELECT ship_mode, COUNT(*) AS Usage_count
FROM superstore
GROUP BY ship_mode
ORDER BY Usage_count DESC;

-- Which segment generate most profit?

SELECT segment, SUM(profit) AS total_profit
FROM superstore
GROUP BY segment
ORDER BY total_profit DESC;

-- What is the trend of monthly sales over the years?

SELECT
		DATE_TRUNC('month',order_date) AS Month,
		SUM(sales) As total_sales
FROM superstore 
GROUP BY 
		DATE_TRUNC('month', order_date)
ORDER BY month;

-- What are the top 10 most sold proucts by quantity?

SELECT product_name, SUM(quantity) AS total_quantity
FROM superstore
GROUP BY product_name
ORDER BY total_quantity DESC LIMIT 10;

-- Which customers have generated higest total sales?

SELECT customer_name, SUM(sales) AS total_sales
FROM superstore
GROUP BY customer_name
ORDER BY total_sales DESC;

-- What is total profit by year?

SELECT
		DATE_TRUNC('year',order_date) AS Year,
		SUM(profit) As total_profit
FROM superstore 
GROUP BY 
		DATE_TRUNC('year', order_date)
ORDER BY year;
------------------------------------------------------------------------------------------------