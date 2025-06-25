-- Table Creation
CREATE TABLE Superstore(
		Raw_ID INT PRIMARY KEY,
		Order_ID VARCHAR(30),
		Order_Date DATE,
		Ship_Date DATE,
		Ship_Mode VARCHAR(50),
		Customer_ID VARCHAR(30),
		Customer_Name VARCHAR(100),
		Segment VARCHAR(50),
		Country VARCHAR(50),
		City VARCHAR(100),
		State VARCHAR(100),
		Postal_Code VARCHAR(50),
		Region VARCHAR(50),
		Product_ID VARCHAR(50),
		Category VARCHAR(50),
		Sub_Category VARCHAR(50),
		Product_Name VARCHAR(200),
		Sales DECIMAL(10,2),
		Quantity INT,
		Discount DECIMAL(5,2),
		Profit DECIMAL(10,2)
);

SELECT * FROM Superstore;

-- Data Import
COPY 
superstore (Raw_ID,Order_ID,Order_Date,Ship_Date,Ship_Mode,Customer_ID,Customer_Name,Segment,Country,City,State,Postal_Code,Region,Product_ID,Category,Sub_Category,Product_Name,Sales,Quantity,Discount,Profit)
FROM 'G:\Data Analyst Resourse\Projects\Superstore SQL Project\Sample - Superstore UTF8 Fixed.txt'
DELIMITER','
CSV HEADER;

select count(*) from superstore;

