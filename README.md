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
- Review the files in Excel and complete initial preprocessing using SQL Server Managemnt Studio.
- Use Power Query Editor for transformations and to create visualization.
### 2.	Data Cleaning
-	Remove duplicates using:
-	Handle missing values: this is done through Replacing NULLs in numeric fields with averages and replacing NULLs in categorical fields with "Unknown" or dropping any other column that has null values.
### 3.	Data Transformation
-	Convert Date column to Date format.
-	Create new calculated columns:

### 4.	Data Integration
-	Append all country sales datasets into a GlobalSales table:

 ## 5. Data Modelling in Power BI
•	Establish relationships between tables (Fact Table: GlobalSales, Dimension Tables: Customers, Products, Stores).
•	Implement Star Schema for optimized performance.

### 6. Dashboard Development & Visualization
Dashboard Elements
1.	Sales Overview This include	Total Revenue, Total Sales, Profit, average order valueYearly and Monthly Sales trends.
2.	Customer Analysis review and analyze the distribution of customers across the different regions and thir purchase patterns.
3.	Product Performance Create a filter for the	Best-selling & least-selling products and Category-wise performance.
4.	Geographical Sales Performance. Show a map visualization for Sales by Country & Store Location (Map Visualization)
5.	Time-Based Analysis: A visual showing the distribution of Sales trends from 2015–2024.

## 7. Publishing & Report Sharing
1.	Publish Dashboard to Power BI Service.
2.	Set up scheduled refresh for real-time updates.
3.	Share report links with stakeholders.
4.	Embed dashboard in company website / SharePoint.
5.	If possible also create a gateway for the report

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

## 10 Files in This Repository

- 📁 Data/ → Contains raw and cleaned sales data in CSV format.
- 📁 SQL Queries/ → SQL scripts for data cleaning and transformation.
- 📁 PowerBI Dashboard.pbix → The final Power BI dashboard file.
- Screenshot for PowerBI Dashboard
- 📄 README.md → This document explaining the project.
