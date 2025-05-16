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