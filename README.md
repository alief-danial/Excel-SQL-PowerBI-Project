# Sales Dashboard Project (Excel to SQL to Power BI)

This project demonstrates an end-to-end Data Analytics workflow using **Excel**, **SQL**, and **Power BI**, designed to showcase skills in **data cleaning**, **data modeling**, **reporting**, and **dashboard creation**.

## 📊 Project Overview
- **Dataset Source**: [Mockaroo](https://mockaroo.com/)
- **Scenario**: Simulated Retail Sales Data (Product, Region, Date, Sales Quantity, Price)
- **Tools Used**: Excel, SQL (optional for DB queries), Power BI

## 🛠 Deliverables
### 1. Excel Deliverables
| Deliverable | Description |
|-------------|-------------|
| Data Cleaning Sheet | Documented raw data cleaning steps. |
| Lookup Sheet | Product Category Mapping using XLOOKUP/VLOOKUP. |
| Pivot Table Reports | Sales summaries (Product-wise, Region-wise, Monthly). |
| KPI Calculation Sheet | Manual formulas for Total Revenue, Average Order Value (AOV). |
| Sales Dashboard Sheet | Visual Dashboard with Bar, Line, Pie Charts & Slicers. |

### 2. SQL Queries (Optional Enhancement)
- Basic SELECT, WHERE, GROUP BY queries for Product Sales summaries.
- Exported result sets were linked back to Power BI.

### 3. Power BI Dashboard
- Interactive Dashboard for deeper analytics and filtering.
- Visualizations replicated from Excel but with enhanced interactivity.

## 📈 Key Metrics & Features
- **Total Revenue** by Product Category.
- **Top 5 Products by Sales** (Pie Chart).
- **Sales Trend over Time** (Line Chart).
- **Average Order Value (AOV)**.
- **Interactive Slicers** (Category, Date).
- Clean & minimal **Dashboard Layout (Grid aligned)**.

## 💡 Skills Demonstrated
- Data Cleaning & Preparation (Excel functions, Power Query).
- Lookup Functions (XLOOKUP/VLOOKUP).
- PivotTables & PivotCharts.
- Dashboard Design Principles (Clean, readable, interactive).
- Read-only Excel Presentation File Creation.
- SQL Query Writing (Views, Aggregations).
- Version Control using GitHub.

## 📂 File Structure
<pre> 📦 SalesDashboardProject 
  ┣ 📄 SalesDashboard_Working.xlsx 
  ┣ 📄 SalesDashboard_Presentation.xlsx (Read-Only) 
  ┣ 📄 PowerBI_Dashboard.pbix (optional) 
  ┣ 📄 SQL_Scripts.sql 
  ┣ 📄 README.md 
</pre>

## 🗂️ SQL Scripts Overview

The `SQL_Scripts.sql` file contains the **SQL Database Schema**, **Views**, and **Sample Queries** for the Sales Dashboard Project.

### 1. Database Table
- **Table Name**: `SalesDashboard_Project`
- **Columns**:
  | Column Name     | Data Type          | Description                        |
  |-----------------|-------------------|------------------------------------|
  | Order_ID         | int                | Unique ID for each order           |
  | Order_Date       | date               | Date of the transaction            |
  | Customer_Name    | nvarchar(100)      | Name of the customer               |
  | Product_Name     | nvarchar(100)      | Name of the product sold           |
  | Category         | nvarchar(50)       | Product category                   |
  | Quantity         | int                | Quantity sold                      |
  | Price            | decimal(18,2)      | Unit price                         |
  | Total_Sale       | decimal(18,2)      | Total Sale = Price × Quantity      |
  | Region           | nvarchar(50)       | Sales Region                       |

### 2. Views Created
| View Name                | Purpose                                  |
|--------------------------|------------------------------------------|
| `vw_Top5Products`         | Top 5 Products by Total Sales            |
| `vw_MonthlySalesTrend`    | Monthly Sales Trend (Year-Month)         |
| `vw_SalesByRegion`        | Total Sales Grouped by Region            |
| `vw_AverageOrderValue`    | Average Order Value (AOV)                |
| `vw_SalesByCategory`      | Total Sales Grouped by Category          |

### 3. Sample Query Combining Views
```sql
SELECT        
    *
FROM dbo.vw_AverageOrderValue
CROSS JOIN dbo.vw_MonthlySalesTrend
CROSS JOIN dbo.vw_SalesByCategory
CROSS JOIN dbo.vw_SalesByRegion
CROSS JOIN dbo.vw_Top5Products;

###4. Usage
Import data into SalesDashboard_Project table.

Use the predefined views for reporting dashboards.

Connect to Power BI or Excel using SQL Server Connection for live reporting.

🚀 How to View
Open SalesDashboard_Presentation.xlsx for a clean, read-only dashboard.

Optional: Open PowerBI_Dashboard.pbix in Power BI Desktop.

Explore PivotTables & KPIs in SalesDashboard_Working.xlsx for detailed steps.

Optional: Run SQL_Scripts.sql in SQL Server to recreate database tables and views.

✍ Author
Alief | Aspiring Data Analyst | LinkedIn Profile

📢 Note:
This is a mock project for portfolio purposes. Data is simulated and does not reflect real business information.

---

You can paste this entire thing into your `README.md`.  
Then push your `SQL_Scripts.sql` file to GitHub.

### Next:
1. Upload `SQL_Scripts.sql` file.
2. Commit message: `Add SQL Scripts for Database Schema & Views`.
3. After that, do you want me to guide how to create **Power BI .pbix** file structure for GitHub?

