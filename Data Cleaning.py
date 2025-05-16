
import pandas as pd

sales_df = pd.read_excel("C:\\Users\\Yuvayash\\Downloads\\sales_data.xlsx")
customers_df = pd.read_excel("C:\\Users\\Yuvayash\\Downloads\\customers.xlsx")
products_df = pd.read_excel("C:\\Users\\Yuvayash\\Downloads\\products.xlsx")


merged_df = sales_df.merge(customers_df, on='Customer ID')
merged_df = merged_df.merge(products_df, on='Product ID')
# Create new columns

merged_df['Revenue'] = merged_df['Quantity'] * merged_df['Selling Price']
merged_df['Cost'] = merged_df['Quantity'] * merged_df['Cost Price']
merged_df['Profit'] = merged_df['Revenue'] - merged_df['Cost']

# Convert Date column to datetime
merged_df['Order Date'] = pd.to_datetime(merged_df['Date'])
merged_df['Month'] = merged_df['Order Date'].dt.to_period('M')

# Save to CSV
merged_df.to_csv("C:\\Users\\Yuvayash\\Downloads\\performanmce.csv", index=False)

