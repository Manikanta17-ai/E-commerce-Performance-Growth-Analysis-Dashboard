# E-commerce-Performance-Growth-Analysis-Dashboard

![Screenshot 2025-03-22 185147](https://github.com/user-attachments/assets/c6eff50e-fc37-4e1b-9ff8-acc4e7ebdb4e)

**Project Overview**

I have analyzes the performance of e-commerce platforms (JioMart, Swiggy Instamart, and Blinkit) by examining sales trends, customer behavior, and platform performance. The goal is to provide data-driven insights that help optimize business strategies and improve growth.

# Dataset
**Source**: https://1drv.ms/x/c/a248c3697f20e322/EUcQMEj9g25Co2xSnyMUUxsB8ZCg2_-Wufajos37Q8v5XQ?e=dcQ85q

**Size**:1,00,000 rows *11 columns

**Columns**:
     - Order ID 
     - Customer ID
     - Platform
      - Order Time 
    -  Delivery Time(Minutes)
    -  Product Category 
    -  Order Value (₹)
    -  Customer Feedback
    -  Service Rating
    -  Delivery Delay
    -  Refund Request

# Business Requirements for E-commerce Growth Analysis

**1. Customer Satisfaction & Feedback Analysis**
   
Measure overall customer satisfaction across different platforms and product categories.

Identify common customer complaints and positive feedback trends.

**2. Order & Revenue Analysis**

Track total revenue, average order value, and number of orders for each platform.

Identify high-revenue and low-revenue product categories.

**3. Delivery Performance & Operational Efficiency**

Analyze average delivery time across different platforms.

Track the percentage of delayed deliveries.

Identify platforms with frequent refund requests.

**4. Platform-Specific Performance**

Compare the number of orders per platform.

Identify the most popular product categories for each platform.

**5. Customer Retention & Risk Assessment**

Analyze the percentage of repeat vs. new customers.

Identify customers with multiple refund requests to detect potential fraud or dissatisfaction.


# Project Workflow

I have followed a structured end-to-end data analysis approach, covering data extraction, preprocessing, visualization, and insights generation.

**1️⃣ Data Collection**:  https://1drv.ms/x/c/a248c3697f20e322/EUcQMEj9g25Co2xSnyMUUxsB8ZCg2_-Wufajos37Q8v5XQ?e=dcQ85q

**Source**: Raw data collected from JioMart, Swiggy Instamart, and Blinkit which is download from kaggle data sets.

**Format**: CSV file with multiple columns containing order details, customer behavior, and platform performance.


**2️⃣ Data Cleaning & Preprocessing (Python - Pandas, Jupyter Notebook)** : http://localhost:8888/lab/tree/Ecommerce_output.ipynb

**Handled Missing Values**: Filled or removed null values in columns like Order time, Product Category, and Refund Requested.

**Converted Data Types**: Standardized Order time, Delivery time for proper analysis.

**Calculated Key Metrics**: Created additional calculated fields such as Delivery Time (minutes) and Repeat Customers.

**Exported Cleaned Data**: Saved the cleaned dataset in a structured csv format for visualization in Power BI.


**3️⃣Data Extraction** : https://1drv.ms/u/c/a248c3697f20e322/EZwTnDq-rQJBvGgFeTAzTf4BgajTwbE4rRrIwBUdnTL0jw?e=dxB6Q3

**SQL Queries**: Used SQL to extract relevant information, filter missing values, and transform the dataset for analysis.


**4️⃣ Data Visualization & Dashboard Development (Power BI)** : https://1drv.ms/u/c/a248c3697f20e322/EZsF-cty2t1Cl7-Vth37ra4B4ZPGIDibny6dBk96Ss1msg?e=6FB9p7

**Designed Interactive Dashboard**: Created dynamic visuals to track sales, orders, refunds, and platform performance.

**DAX Measures**: Used Data Analysis Expressions (DAX) to compute key performance indicators (KPIs) such as:

Total Sales

Average Order Value (AOV)

Refund Rate (%)

Customer Retention Rate

Delivery Time Analysis

**Implemented Slicers**: Added Platform and Product Category slicers to filter data dynamically.


**5️⃣ Insights Generation & Business Recommendations**

**Identified Best-Performing Platforms**: Found the most profitable platform based on total revenue and customer retention.

**Optimized Product Categories**: Highlighted top-selling products to focus on demand-driven inventory management.

**Customer Behavior & Refund Risks**: Detected frequent refund customers to minimize financial risks.

**Customer Retention**: Analyzed new vs. repeat customers to measure loyalty.

**Refund & Risk Assessment**: Identified high-risk customers with frequent refund requests.

# Technologies Used

**SQL**: Data extraction and transformation

**Python (Pandas, Jupyter Notebook)**: Data cleaning and preprocessing

**Power BI**: Data modeling, visualization, and DAX calculations



# How to Explore This Project

**SQL Queries**: Open https://1drv.ms/u/c/a248c3697f20e322/EZwTnDq-rQJBvGgFeTAzTf4BgajTwbE4rRrIwBUdnTL0jw?e=dxB6Q3
 to view data extraction and transformations.

**Data Exploration**: Use http://localhost:8888/lab/tree/Ecommerce_output.ipynb to see the data cleaning process.

**Power BI Dashboard**: Open  https://1drv.ms/u/c/a248c3697f20e322/EZsF-cty2t1Cl7-Vth37ra4B4ZPGIDibny6dBk96Ss1msg?e=6FB9p7 in Power BI to interact with the report.

**Project Insights**: Refer to screenshots in the below Images  for key findings.

![Screenshot 2025-03-22 185147](https://github.com/user-attachments/assets/c6eff50e-fc37-4e1b-9ff8-acc4e7ebdb4e)

![Screenshot 2025-03-22 185236](https://github.com/user-attachments/assets/e60ed9c6-ef24-45a9-a357-be9c9798cbc0)

![Screenshot 2025-03-22 185324](https://github.com/user-attachments/assets/29998517-a34d-4c89-aec3-950d4377f7ea)

**Conclusion**

This project provides a data-driven approach to analyzing e-commerce performance, enabling businesses to make informed decisions that enhance growth and efficiency. By leveraging SQL, Python (Pandas), and Power BI, i successfully extracted, cleaned, and visualized key insights, making the data more actionable for stakeholders.

Key takeaways from this analysis include :

Identifying best-performing platforms and product categories to optimize sales strategies.

Understanding customer behavior to improve retention and minimize refund-related risks.

Detecting sales trends and  patterns to optimize marketing efforts.


With these insights, businesses can improve profitability, reduce operational risks, and enhance customer satisfaction in the highly competitive e-commerce market. This project demonstrates how data analytics can drive business growth, and I look forward to applying these methodologies to solve real-world challenges. 

# Connect with Me

If you found this project helpful, feel free to connect on LinkedIn or check out my other projects on GitHub!

**linkedin**: www.linkedin.com/in/crm18

**GitHub**: https://github.com/Manikanta17-ai

**email id**: reddymanikantachalla@gmail.com

