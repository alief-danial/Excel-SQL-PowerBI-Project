# Sales Dashboard Project (Excel to SQL to Power BI)

This project demonstrates an end-to-end Data Analytics workflow using **Excel**, **SQL**, and **Power BI**, designed to showcase skills in **data cleaning**, **data modeling**, **reporting**, and **dashboard creation**.

## 📊 Project Overview
- **Dataset Source**: [Mockaroo](https://mockaroo.com/)
- **Scenario**: Simulated Retail Sales Data (Product, Region, Date, Sales Quantity, Price)
- **Tools Used**: Excel, SQL (Microsoft SQL Server), Power BI

## 🛠 Deliverables
### 1. Excel Deliverables
| Deliverable | Description |
|-------------|-------------|
| Data Cleaning Sheet | Documented raw data cleaning steps. |
| Lookup Sheet | Product Category Mapping using XLOOKUP/VLOOKUP. |
| Pivot Table Reports | Sales summaries (Product-wise, Region-wise, Monthly). |
| KPI Calculation Sheet | Manual formulas for Total Revenue, Average Order Value (AOV). |
| Sales Dashboard Sheet | Visual Dashboard with Bar, Line, Pie Charts & Slicers. |

### 2. SQL Queries & Views
| Deliverable | Description |
|-------------|-------------|
| SQL Database Schema | Table structure for Sales Data storage. |
| SQL Views | Pre-built Views for reporting: Top Products, Monthly Sales, AOV, Region-wise Sales, Category-wise Sales. |
| Sample Queries | SELECT queries for summaries & Power BI integration. |

### 3. Power BI Dashboard
| Deliverable | Description |
|-------------|-------------|
| Power BI Dashboard | Interactive Dashboard with filters, slicers, and drill-down features. |
| Data Connection | Live SQL Query or Excel Data Source used in Power BI. |

## 📈 Key Metrics & Features
- **Total Revenue** by Product Category.
- **Top 5 Products by Sales** (Pie Chart).
- **Sales Trend over Time** (Line Chart).
- **Average Order Value (AOV)**.
- **Interactive Slicers** (Category, Date).
- Clean & minimal **Dashboard Layout (Grid aligned)**.
- SQL Views to simplify reporting datasets.
- Power BI for interactive data exploration.

## 💡 Skills Demonstrated
- Data Cleaning & Preparation (Excel functions, Power Query).
- Lookup Functions (XLOOKUP/VLOOKUP).
- PivotTables & PivotCharts.
- Dashboard Design Principles (Clean, readable, interactive).
- SQL Query Writing (Views, Aggregations, Joins).
- Power BI Visualizations & Data Modeling.
- Version Control using GitHub.

## 📂 File Structure
<pre>
📦 SalesDashboardProject
 ┣ 📄 SalesDashboard_Working.xlsx
 ┣ 📄 SalesDashboard_Presentation.xlsx (Read-Only)
 ┣ 📄 SQL_Scripts.sql
 ┣ 📄 PowerBI_Dashboard.pbix (optional)
 ┗ 📄 README.md
</pre>

## 🗂️ SQL Scripts Overview
The `SQL_Scripts.sql` file contains the **Database Schema**, **Views**, and **Sample Queries**.

### 1. Table Structure: `SalesDashboard_Project`
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

### 3. Example Query: Combining Views (Master Query)
```sql
SELECT        
    *
FROM dbo.vw_AverageOrderValue
CROSS JOIN dbo.vw_MonthlySalesTrend
CROSS JOIN dbo.vw_SalesByCategory
CROSS JOIN dbo.vw_SalesByRegion
CROSS JOIN dbo.vw_Top5Products;

```

### 🚀 Usage Instructions
1. Import Data into SalesDashboard_Project table (via Flat File Import or Manual Entry).
2. Run SQL_Scripts.sql to create all necessary Views.
3. Use Views for Reporting — The predefined Views simplify data queries for dashboarding.
4. Connect Power BI or Excel to SQL Server Database for live data analysis.
5. Open Excel Dashboards to explore the manual KPI Calculations and PivotTable summaries.


### ✍ Author
Alief | Data Analyst | [LinkedIn Profile](https://www.linkedin.com/in/alieffadzil/)


### 📢 Note:
This is a mock project for portfolio purposes. Data is simulated and does not reflect real business information.


