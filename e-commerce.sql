SELECT TOP (1000) [User_ID]
      ,[Product_ID]
      ,[Category]
      ,[Price_Rs]
      ,[Discount]
      ,[Final_Price_Rs]
      ,[Payment_Method]
      ,[Purchase_Date]
  FROM [e-commerce_data].[dbo].[ecommerce]



SELECT Payment_Method, COUNT(*) AS Nu_of_PaymentMethod
FROM ecommerce 
GROUP BY Payment_Method

SELECT Category, COUNT(*) AS Nu_of_Category,
SUM(Final_Price_Rs) AS Total_Revenue
FROM ecommerce 
GROUP BY Category
ORDER BY Total_Revenue

SELECT FORMAT(Purchase_Date, 'MMMM') AS Purchase_Month,
MONTH(Purchase_Date) AS Month_Number,
SUM(Final_Price_Rs) AS Total_Revenue
FROM ecommerce 
GROUP BY FORMAT(Purchase_Date, 'MMMM'),MONTH(Purchase_Date)
ORDER BY Month_Number

SELECT FORMAT(Purchase_Date, 'MMMM') AS Purchase_Month,
MONTH(Purchase_Date) AS Month_Number,
Category,SUM(Final_Price_Rs) AS Total_Revenue
FROM ecommerce 
GROUP BY FORMAT(Purchase_Date, 'MMMM'),MONTH(Purchase_Date),Category
ORDER BY Month_Number

SELECT FORMAT(Purchase_Date, 'MMMM') AS Purchase_Month,
MONTH(Purchase_Date) AS Month_Number,Category,
COUNT(Price_Rs) AS Total_Sales
FROM ecommerce 
GROUP BY FORMAT(Purchase_Date, 'MMMM'),MONTH(Purchase_Date),Category
ORDER BY Month_Number

SELECT Category,COUNT(Price_Rs) AS Total_Sales
FROM ecommerce 
GROUP BY Category
ORDER BY Total_Sales

SELECT Category,
AVG(Price_Rs) AS AVG_Price
FROM ecommerce 
GROUP BY Category
ORDER BY Category

Select COUNT(User_ID) as Nu_of_users,
COUNT(Price_Rs) as Nu_of_sales
FROM ecommerce

Select COUNT(Price_Rs) as Nu_of_sales
FROM ecommerce

Select SUM(Final_Price_Rs) as Top_revenue
FROM ecommerce

Select Category, Payment_Method,
COUNT(Payment_Method) as Nu_payment
FROM ecommerce
GROUP BY Payment_Method,Category
ORDER BY Payment_Method

Select COUNT(Payment_Method) as Nu_payment,
SUM(Price_Rs) as Total_Revenue,
Payment_Method
FROM ecommerce
GROUP BY Payment_Method
ORDER BY Total_Revenue

