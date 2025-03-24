USE [Ecommerce]
GO

SELECT [Order_ID]
      ,[Customer_ID]
      ,[Platform]
      ,[Order_Time]
      ,[Delivery_Time_Minutes]
      ,[Product_Category]
      ,[Order_Value_INR]
      ,[Customer_Feedback]
      ,[Service_Rating]
      ,[Delivery_Delay]
      ,[Refund_Requested]
  FROM [dbo].[Ecommerce]

GO


select * from [dbo].[Ecommerce]; 

---1. Customer Satisfaction & Feedback Analysis
---1.1 Average service rating per platform & product category

SELECT 
    Platform, 
    Product_Category, 
    ROUND(AVG(Service_Rating), 2) AS Avg_Rating
FROM Ecommerce
GROUP BY Platform, Product_Category
ORDER BY Avg_Rating DESC;

---1.2 Sentiment analysis (Positive, Neutral, Negative) from Customer Feedback

SELECT 
    CASE 
        WHEN LOWER(Customer_Feedback) LIKE '%great%' OR LOWER(Customer_Feedback) LIKE '%excellent%' 
            OR LOWER(Customer_Feedback) LIKE '%quick%' OR LOWER(Customer_Feedback) LIKE '%amazing%' 
        THEN 'Positive'
        WHEN LOWER(Customer_Feedback) LIKE '%bad%' OR LOWER(Customer_Feedback) LIKE '%late%' 
            OR LOWER(Customer_Feedback) LIKE '%missing%' OR LOWER(Customer_Feedback) LIKE '%worst%' 
        THEN 'Negative'
        ELSE 'Neutral'
    END AS Sentiment,
    COUNT(*) AS Feedback_Count
FROM Ecommerce
GROUP BY Customer_Feedback
ORDER BY Feedback_Count DESC;

---2. Order & Revenue Analysis
---2.1 Total revenue, total orders, and average order value per platform

SELECT 
    Platform, 
    COUNT(Order_ID) AS Total_Orders, 
    SUM(Order_Value_INR) AS Total_Revenue, 
    ROUND(AVG(Order_Value_INR), 2) AS Avg_Order_Value
FROM Ecommerce
GROUP BY Platform
ORDER BY Total_Revenue DESC;

---2.2 Revenue by product category

SELECT 
    Product_Category, 
    SUM(Order_Value_INR) AS Total_Revenue
FROM Ecommerce
GROUP BY Product_Category
ORDER BY Total_Revenue DESC;

---3. Delivery Performance & Operational Efficiency
---3.1 Average delivery time per platform

SELECT 
    Platform, 
    ROUND(AVG(Delivery_Time_Minutes), 2) AS Avg_Delivery_Time
FROM Ecommerce
GROUP BY Platform
ORDER BY Avg_Delivery_Time ASC;

---3.2 Percentage of delayed deliveries per platform

SELECT 
    Platform, 
    COUNT(CASE WHEN Delivery_Delay = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS Percent_Delayed
FROM Ecommerce
GROUP BY Platform
ORDER BY Percent_Delayed DESC;

---3.3 Refund requests per platform

SELECT 
    Platform, 
    COUNT(CASE WHEN Refund_Requested = 'Yes' THEN 1 END) AS Refund_Count, 
    COUNT(Order_ID) AS Total_Orders,
    ROUND(COUNT(CASE WHEN Refund_Requested = 'Yes' THEN 1 END) * 100.0 / COUNT(Order_ID), 2) AS Refund_Percentage
FROM Ecommerce
GROUP BY Platform
ORDER BY Refund_Percentage DESC;

---4. Platform-Specific Performance
---4.1 Order distribution per platform

SELECT 
    Platform, 
    COUNT(Order_ID) AS Total_Orders
FROM Ecommerce
GROUP BY Platform
ORDER BY Total_Orders DESC;

---4.2 Most ordered product categories per platform

SELECT 
    Platform, 
    Product_Category, 
    COUNT(Order_ID) AS Order_Count
FROM Ecommerce
GROUP BY Platform, Product_Category
ORDER BY Platform, Order_Count DESC;

---5. Customer Retention & Risk Assessment
---5.1 Percentage of repeat vs. new customers

SELECT 
    Customer_ID, 
    COUNT(Order_ID) AS Order_Count,
    CASE 
        WHEN COUNT(Order_ID) > 1 THEN 'Repeat Customer'
        ELSE 'New Customer'
    END AS Customer_Type
FROM Ecommerce
GROUP BY Customer_ID
ORDER BY Order_Count ASC;         
---5.2 Identifying customers with multiple refund requests (Risky Customers)

SELECT 
    Customer_ID, 
    COUNT(CASE WHEN Refund_Requested = 'Yes' THEN 1 END) AS Refund_Count
FROM Ecommerce
GROUP BY Customer_ID
HAVING COUNT(CASE WHEN Refund_Requested = 'Yes' THEN 1 END) > 1
ORDER BY Refund_Count DESC;