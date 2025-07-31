-- Table Structure
CREATE TABLE SalesDashboard_Project (
    Order_ID int,
    Order_Date date,
    Customer_Name nvarchar(100),
    Product_Name nvarchar(100),
    Category nvarchar(50),
    Quantity int,
    Price decimal(18, 2),
    Total_Sale decimal(18, 2),
    Region nvarchar(50)
);

-- View All Data
SELECT * FROM SalesDashboard_Project;

-- View 1: Top 5 Products by Total Sales
CREATE VIEW vw_Top5Products AS
SELECT TOP 5 Product_Name, SUM(Total_Sale) AS Total_Sales
FROM SalesDashboard_Project
GROUP BY Product_Name
ORDER BY Total_Sales DESC;

-- View 2: Monthly Sales Trend
CREATE VIEW vw_MonthlySalesTrend AS
SELECT FORMAT(Order_Date, 'yyyy-MM') AS Month, SUM(Total_Sale) AS Monthly_Sales
FROM SalesDashboard_Project
GROUP BY FORMAT(Order_Date, 'yyyy-MM')
ORDER BY Month;

-- View 3: Sales by Region
CREATE VIEW vw_SalesByRegion AS
SELECT Region, SUM(Total_Sale) AS Total_Sales
FROM SalesDashboard_Project
GROUP BY Region
ORDER BY Total_Sales DESC;

-- View 4: Average Order Value (AOV)
CREATE VIEW vw_AverageOrderValue AS
SELECT 
    SUM(Total_Sale) * 1.0 / SUM(Quantity) AS Average_Order_Value
FROM SalesDashboard_Project;

-- View 5: Sales by Category
CREATE VIEW vw_SalesByCategory AS
SELECT Category, SUM(Total_Sale) AS Total_Sales
FROM SalesDashboard_Project
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Example Join of Views (For Power BI)
SELECT        
    *
FROM dbo.vw_AverageOrderValue
CROSS JOIN dbo.vw_MonthlySalesTrend
CROSS JOIN dbo.vw_SalesByCategory
CROSS JOIN dbo.vw_SalesByRegion
CROSS JOIN dbo.vw_Top5Products;

