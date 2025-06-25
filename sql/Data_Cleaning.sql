SELECT * FROM superstore;

-- Looking for full duplicate entries.
SELECT *, COUNT(*) AS duplicate_count
FROM superstore
GROUP BY Raw_id,Order_ID,Order_Date,Ship_Date,Ship_Mode,Customer_ID,Customer_Name,Segment,Country,City,State,Postal_Code,Region,Product_ID,Category,Sub_Category,Product_Name,Sales,Quantity,Discount,Profit
HAVING COUNT(*)>1;

-- Finding the null values.
SELECT * FROM superstore
WHERE sales IS NULL OR quantity IS NULL OR profit IS NULL OR customer_id IS NULL;

-- Finding Negetive values.
SELECT * FROM superstore
WHERE quantity<0 OR sales<0;
