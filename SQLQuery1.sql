use Purchase

SELECT TOP 100 * FROM dbo.shopping;

---Check Table Structure---

EXEC sp_help shopping

SELECT COLUMN_NAME, DATA_TYPE, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'shopping'

EXEC sp_rename 'shopping.rating', 'Rating', 'COLUMN';
EXEC sp_rename 'shopping.amount_USD', 'Amount', 'COLUMN';
EXEC sp_rename 'shopping.Sub_status', 'Sub_Status', 'COLUMN';
EXEC sp_rename 'shopping.Discount_Applied', 'Discount', 'COLUMN';
EXEC sp_rename 'shopping.Promocode_used', 'Promocode_Used', 'COLUMN';


---CHECK FOR  NULL VALUES---
SELECT 
  COUNT(*) AS Total_Rows,
  SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS Age_Null_Count,
  SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS Gender_Null_Count
FROM shopping;

---BASIC SUMMARY STATS---
-----average purchase amount by gender-------

SELECT Gender, COUNT(*) AS COUNT,
             AVG(amount) AS avg_purchase_amount
FROM shopping
GROUP BY Gender

----TOP CATEGORY---

SELECT Category, AVG(rating) AS avg_rating
FROM shopping
GROUP BY Category
ORDER BY avg_rating DESC

---TOP ITEM---

SELECT Item_Purchased, AVG(rating) AS avg_rating
FROM shopping
GROUP BY Item_Purchased
ORDER BY avg_rating DESC

---SALES---

---Total and AVG Sales---
--Q Identify low performing products by total revenue --

SELECT Item_Purchased ,
SUM(Amount) AS total_sales,
COUNT(*) AS no_of_purchases,
AVG(Amount) AS AVG_Amount
FROM shopping
GROUP BY Item_Purchased
ORDER BY total_sales ASC

---Sales by category or Trends ---
--Q spot seasonal trends or weak categories --

SELECT 
    Category,
    Season,
	SUM(Amount) AS Total_sales
FROM shopping 
GROUP BY Category, Season
ORDER BY Total_sales DESC

--- Promo Code & Discount Impact ---
--Q Do promotions actually improve sales? --

SELECT 
   Promocode_Used, 
   SUM(Amount) AS Total_Sales,
   AVG(Amount) AS AVG_Sales
FROM shopping
GROUP BY Promocode_Used

--Q Do Discount actually improve sales?--

SELECT 
   Discount, 
   SUM(Amount) AS Total_Sales,
   AVG(Amount) AS AVG_Sales
FROM shopping
GROUP BY Discount

-- Rating Impact---
--Q Bad reviews could explain poor product performance? --

SELECT 
     Item_Purchased,
	 AVG(Rating) AS AVG_Rating,
	 COUNT(*) AS rating_count
FROM shopping
GROUP BY Item_Purchased
ORDER BY AVG_Rating ASC

---Customer Behavior Segmentation---
--Q how different segments engage with different categories--

SELECT 
  Gender,
  Age,
  Category,
  AVG(Amount) AS avg_spend
FROM shopping
GROUP BY 
Gender,
Age, 
Category

--- Shipping and Payment Impact ---

SELECT 
  Shipping_Type, 
  Payment_Method,
  COUNT(*) AS num_orders,
  AVG(Amount) AS avg_order_value
FROM shopping
GROUP BY Shipping_Type, Payment_Method
ORDER BY num_orders ASC;

--- For Powerbi--
--Category wise Sales Summary--

CREATE VIEW vw_CategorySalesSummary AS
SELECT 
    Category,
    COUNT(*) AS TotalOrders,
    SUM(Amount) AS TotalSales,
    AVG(Amount) AS AverageOrderValue
FROM shopping
GROUP BY Category;


---Rating by Item and Category---

CREATE VIEW vw_ItemRatingSummary AS
SELECT 
    Category,
    Item_Purchased,
    COUNT(*) AS ReviewCount,
    AVG(Rating) AS AvgRating
FROM shopping
GROUP BY Category, Item_Purchased;

Select Gender, Count(Promocode_Used) as count
from shopping
group by gender








