USE SalesData

select *
FROM sales_Canada
Order by Transaction_ID ASC;


--- Creating a Global Sales table;

SELECT * INTO GlobalSales
FROM (
    SELECT * FROM sales_Canada
    UNION ALL
    SELECT * FROM sales_China
    UNION ALL
    SELECT * FROM sales_India
    UNION ALL
    SELECT * FROM sales_Nigeria
    UNION ALL
    SELECT * FROM sales_UK
    UNION ALL
    SELECT * FROM sales_US
	UNION ALL
    SELECT * FROM sales_Kenya
	UNION ALL
    SELECT * FROM sales_South_Africa
) AS CombinedSales;

--- Checking the new table created

SELECT * FROM GlobalSales;

--- Data Cleaning
--Check  for Null values

SELECT 
    SUM(CASE WHEN Transaction_ID IS NULL THEN 1 ELSE 0 END) AS Null_Transaction_ID,
    SUM(CASE WHEN Date IS NULL THEN 1 ELSE 0 END) AS Null_Date,
    SUM(CASE WHEN Country IS NULL THEN 1 ELSE 0 END) AS Null_Country,
    SUM(CASE WHEN Product_ID IS NULL THEN 1 ELSE 0 END) AS Null_Product_ID,
    SUM(CASE WHEN Product_Name IS NULL THEN 1 ELSE 0 END) AS Null_Product_Name,
    SUM(CASE WHEN Category IS NULL THEN 1 ELSE 0 END) AS Null_Category,
    SUM(CASE WHEN Price_per_Unit IS NULL THEN 1 ELSE 0 END) AS Null_Price_per_Unit,
    SUM(CASE WHEN Quantity_Purchased IS NULL THEN 1 ELSE 0 END) AS Null_Quantity_Purchased,
    SUM(CASE WHEN Cost_Price IS NULL THEN 1 ELSE 0 END) AS Null_Cost_Price,
    SUM(CASE WHEN Discount_Applied IS NULL THEN 1 ELSE 0 END) AS Null_Discount_Applied,
    SUM(CASE WHEN Payment_Method IS NULL THEN 1 ELSE 0 END) AS Null_Payment_Method,
    SUM(CASE WHEN Customer_Age_Group IS NULL THEN 1 ELSE 0 END) AS Null_Customer_Age_Group,
    SUM(CASE WHEN Customer_Gender IS NULL THEN 1 ELSE 0 END) AS Null_Customer_Gender,
    SUM(CASE WHEN Store_Location IS NULL THEN 1 ELSE 0 END) AS Null_Store_Location,
    SUM(CASE WHEN Sales_Rep IS NULL THEN 1 ELSE 0 END) AS Null_Sales_Rep
FROM GlobalSales;

-- Deleting Rows with Nulls

DELETE FROM GlobalSales
WHERE 
    Transaction_ID IS NULL OR 
    Date IS NULL OR 
    Country IS NULL OR 
    Product_ID IS NULL OR 
    Product_Name IS NULL OR 
    Category IS NULL OR 
    Price_per_Unit IS NULL OR 
    Quantity_Purchased IS NULL OR 
    Cost_Price IS NULL OR 
    Discount_Applied IS NULL OR 
    Payment_Method IS NULL OR 
    Customer_Age_Group IS NULL OR 
    Customer_Gender IS NULL OR 
    Store_Location IS NULL OR 
    Sales_Rep IS NULL;

-- Checking the cleaned dataset:

SELECT * FROM GlobalSales

-- Checking for the duplicate in the transaction ID
SELECT Transaction_ID, COUNT(*) AS duplicate_count
FROM GlobalSales
GROUP BY Transaction_ID
HAVING COUNT(*) > 1;


-- Dropping duplicate records:

WITH CTE AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY Transaction_ID ORDER BY (SELECT NULL)) AS row_num
    FROM GlobalSales
)
DELETE FROM CTE WHERE row_num > 1;

-- Checking for the duplicate in the transaction ID
SELECT Transaction_ID, COUNT(*) AS duplicate_count
FROM GlobalSales
GROUP BY Transaction_ID
HAVING COUNT(*) > 1;

select * FROM GlobalSales
-- Perfoming Aalysis
-- Sales Revenue Analysis per countries;

ALTER TABLE GlobalSales
ADD  
    Total_Revenue DECIMAL(18,2);

UPDATE GlobalSales 
SET Total_Revenue = (Price_per_Unit * Quantity_Purchased) - Discount_Applied;



SELECT * FROM GlobalSales


