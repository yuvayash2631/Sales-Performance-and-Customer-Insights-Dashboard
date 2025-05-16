# Project Title:  Sales-Performance-and-Customer-Insights-Dashboard

# Project Summary:
Developed an end-to-end sales analytics dashboard using Power BI, Python, SQL, and Excel to drive strategic decisions. Processed raw retail data, performed customer and product analysis, and built dynamic dashboards to reveal trends in revenue, profit, customer behavior, and product performance.

# Business Problem / Scenario:

A mid-sized retail company wants to:
Analyze monthly and quarterly sales trends
Identify top-performing products and regional growth
Segment customers based on behavior (RFM)
Evaluate the sales funnel and highlight optimization opportunities

# Tools & Technologies Used

#  Tool	                                             Usage
Excel	                                   Raw data files: sales, customers, products
Python (Pandas)	                         Data cleaning, feature engineering, merging
SQL (SQLite/PostgreSQL)	                 Store and query transformed data
Power BI	                               Build visual, interactive dashboard

# Data Sources
sales_data.xlsx
Order ID, Product ID, Customer ID, Date, Quantity, Unit Price, Region

customers.xlsx
Customer ID, Name, Age, Country, Join Date

products.xlsx
Product ID, Name, Category, Cost Price, Selling Price

# Step 1: Data Cleaning & Transformation (Python)


import pandas as pd

sales_df = pd.read_excel("C:\\Users\\Yuvayash\\Downloads\\sales_data.xlsx")
customers_df = pd.read_excel("C:\\Users\\Yuvayash\\Downloads\\customers.xlsx")
products_df = pd.read_excel("C:\\Users\\Yuvayash\\Downloads\\products.xlsx")


merged_df = sales_df.merge(customers_df, on='Customer ID')
merged_df = merged_df.merge(products_df, on='Product ID')
 Create new columns

merged_df['Revenue'] = merged_df['Quantity'] * merged_df['Selling Price']
merged_df['Cost'] = merged_df['Quantity'] * merged_df['Cost Price']
merged_df['Profit'] = merged_df['Revenue'] - merged_df['Cost']

 Convert Date column to datetime
merged_df['Order Date'] = pd.to_datetime(merged_df['Date'])
merged_df['Month'] = merged_df['Order Date'].dt.to_period('M')

 Save to CSV
merged_df.to_csv("C:\\Users\\Yuvayash\\Downloads\\performanmce.csv", index=False)

# Step 2: SQL Queries (SQLite/PostgreSQL)

CREATE DATABASE performance;
USE performance;
CREATE TABLE cleaned_sales_data (
    Order_ID VARCHAR(20) PRIMARY KEY,
    Product_ID VARCHAR(20),
    Customer_ID VARCHAR(20),
    Date DATE,
    Quantity INTEGER,
    Region VARCHAR(50),
    Name_x VARCHAR(100),        
    Age INTEGER,
    Country VARCHAR(50),
    Join_Date DATE,
    Name_y VARCHAR(100),       
    Category VARCHAR(50),
    Cost_Price REAL,
    Selling_Price REAL,
    Revenue REAL,
    Cost REAL,
    Profit REAL,
    Order_Date DATE,
    Month VARCHAR(7)             
);
INSERT INTO cleaned_sales_data (
    Order_ID, Product_ID, Customer_ID, Date, Quantity, Region,
    Name_x, Age, Country, Join_Date, Name_y, Category,
    Cost_Price, Selling_Price, Revenue, Cost, Profit,
    Order_Date, Month
) VALUES (
    'ORD001', 'PROD1001', 'CUST1234', '2024-05-10', 5, 'South',
    'Arun Kumar', 28, 'India', '2022-01-15', 'Bluetooth Speaker', 'Electronics',
    1200.00, 1500.00, 7500.00, 6000.00, 1500.00,
    '2024-05-10', '2024-05'
);

select * from cleaned_sales_data;


# Step 3: Power BI Dashboard Visuals

Visuals Created:
Line Chart – Monthly Revenue & Profit

Bar Chart – Top 10 Products by Revenue

Pie Chart – Sales by Region / Category

Card Metrics – Total Revenue, Average Order Value, Profit Margin

Customer Segmentation – Based on Recency, Frequency, Age

# Conclusion

This project successfully demonstrated how a data-driven approach can uncover valuable business insights from raw retail data. By integrating Python, SQL, Excel, and Power BI, we created a comprehensive and interactive dashboard that helped visualize sales performance trends, identify top-performing products, and segment customers based on behavior.

The analysis revealed critical insights such as:

Seasonal peaks in revenue and profit
High-performing product categories and regional strengths
A clear customer segmentation model highlighting loyal and high-value customers


![image](https://github.com/user-attachments/assets/3f1410d6-5048-4df3-8467-0aab4a73c2e9)






















