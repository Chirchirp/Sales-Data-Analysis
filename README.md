# Sales-Data-Analysis
This project analyzes sales data from multiple countries to identify trends, track revenue, and understand customer behavior. The goal is to create a Power BI dashboard that provides meaningful insights for better decision-making

## 1. Objectives
•	Analyze sales performance across multiple countries.
•	Identify trends in revenue, profit, sales volume, and customer behavior.
•	Detect anomalies (missing values, duplicates, outliers) and ensure data quality.
•	Develop interactive dashboards in Power BI for insights for decision-making.
•	Provide recommendations for business growth and strategy based on the insights revealed.

## 2. Problem Statement
The company operates in multiple countries with stores in diffeerent locations and struggles to aggregate and analyze sales data efficiently. Lack of data visibility hinders strategic decision-making regarding pricing, product performance, and customer preferences. A centralized and interactive dashboard is required to provide real-time insights for business growth.

## 3. Data Collection & Preparation
The Data Sources used for the project is obtained from kaggle datasets and it entails below.
•	Sales data from Kenya, South Africa, Nigeria, China, UK, India, US, and Canada.
•	Data format: CSV files containing transactions from 2015 to 2024.

## 4. Data Preprocessing (ETL Process)
### 1.	Load Data
o	Review the files in Excel and complete initial preprocessing using SQL Server Managemnt Studio.
o	Use Power Query Editor for transformations and to create visualization.
### 2.	Data Cleaning
o	Remove duplicates using:
o	Handle missing values:
- Replace NULLs in numeric fields with averages.
- Replace NULLs in categorical fields with "Unknown".
### 3.	Data Transformation
o	Convert Date column to Date format.
o	Create new calculated columns:

### 4.	Data Integration
o	Append all country sales datasets into a GlobalSales table:

 ## 5. Data Modelling in Power BI
•	Establish relationships between tables (Fact Table: GlobalSales, Dimension Tables: Customers, Products, Stores).
•	Implement Star Schema for optimized performance.

### 6. Dashboard Development & Visualization
Dashboard Elements
1.	Sales Overview
o	Total Revenue, Total Sales, Profit.
o	Yearly and Monthly Sales trends.
2.	Customer Analysis
o	Age Group & Gender breakdown.
o	Purchase patterns by region.
3.	Product Performance
o	Best-selling & least-selling products.
o	Category-wise performance.
4.	Geographical Sales Performance
o	Sales by Country & Store Location (Map Visualization).
o	Regional revenue contribution.
5.	Time-Based Analysis
o	Sales trends from 2015–2024.
o	Seasonal patterns in sales.

## 7. Publishing & Report Sharing
1.	Publish Dashboard to Power BI Service.
2.	Set up scheduled refresh for real-time updates.
3.	Share report links with stakeholders.
4.	Embed dashboard in company website / SharePoint.

 ## 8. Business Insights & Recommendations
•	Increase marketing budget for high-performing regions.
•	 Discontinue or rebrand low-performing products.
•	Adjust pricing strategies based on sales trends.
•	Invest in customer retention programs for recurring buyers.

## 9. Final Deliverables
Power BI Dashboard
Key Performance Indicators (KPIs)
SQL Queries & Power BI DAX Code
Insights & Business Recommendations Report
Published Report Link for Stakeholders

## 10 📂 Files in This Repository

- 📁 Data/ → Contains raw and cleaned sales data in CSV format.
- 📁 SQL Queries/ → SQL scripts for data cleaning and transformation.
- 📁 PowerBI Dashboard.pbix → The final Power BI dashboard file.
- Screenshot for PowerBI Dashboard
- 📄 README.md → This document explaining the project.
