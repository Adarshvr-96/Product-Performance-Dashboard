
# 🛍️ Customer Purchase Analysis Dashboard
<img width="1613" height="903" alt="Image" src="https://github.com/user-attachments/assets/c1ffa4a0-da50-457c-a289-452cbe244151" />

## 👤 Author Bio

Hello! I’m a data enthusiast with hands-on experience in SQL, Python, and Power BI.  
This project demonstrates how I applied these tools across the data analysis lifecycle:

- **SQL**: For querying and transforming raw data in SSMS (SQL Server Management Studio)  
  Example problem statements:
  - Identify high- and low-performing products
  - Segment customers by age and gender
  - Calculate total purchases from `Previous_Purchase + 1`
- **Python**: Used for initial exploratory data analysis (EDA) — checked for nulls, distribution, and outliers  
- **Power BI**: To build an interactive dashboard providing business insights

---

## 📑 Table of Contents

- [📊 Key Features](#-key-features)
- [📁 Files Included](#-files-included)
- [📌 How to Use](#-how-to-use)
- [📈 Business Insights from the Dashboard](#-business-insights-from-the-dashboard)
- [📊 Visuals Used & Their Purpose](#-visuals-used--their-purpose)
- [📌 Overall Recommendations](#-overall-recommendations)
- [🧠 Tools & Skills Used](#-tools--skills-used)
- [📌 About the Dataset](#-about-the-dataset)
- [📬 Contact](#-contact)
---

## 📊 Key Features

- Interactive slicers for Gender, Season, and Category
- Measures for:
  - Total Sales
  - Average Order Value
  - Average Customer Rating
- High-performing and low-performing product identification
- Visual comparisons across Gender, Age, Season, and Promo Code usage

---

## 📁 Files Included

- `PowerBI_Dashboard.pbix` – Power BI dashboard file
- `SQL_Query_Scripts.sql` – SQL scripts used for analysis
- `Python_EDA.ipynb` – Notebook for exploratory data analysis
- `README.md` – This documentation

---

## 📌 How to Use

1. **SQL**: Load the dataset into your SSMS environment, run the scripts to clean and aggregate the data
2. **Python**: Use the EDA notebook to analyze patterns and detect outliers
3. **Power BI**:
   - Open `PowerBI_Dashboard.pbix`
   - Refresh data connection from SQL
   - Interact using filters for Season, Gender, and Category

---

## 📈 Business Insights from the Dashboard

- **Seasonal Trends**: Winter & Spring had the highest total purchases
- **Gender Insights**: Male customers spent more across most categories
- **Promo Code Usage**: Sales were higher when no promo code was used, indicating the need to review promo strategies
- **Age Group Analysis**: Customers aged 26-55 are the most engaged
- **Top Products**: Blouse, Dress, Jewelry consistently performed well
- **Underperformers**: Jeans, Gloves, Backpack had low sales

---

## 📊 Visuals Used & Their Purpose

This section outlines the key visuals included in the Power BI dashboard, with each visual playing a specific role in uncovering insights from customer purchase data.

1. **Sales Distribution by Gender & Category**: 

<img width="500" height="389" alt="Image" src="https://github.com/user-attachments/assets/579f2f49-89c6-4814-a0e0-1ed931fec5ac" />

   - A clustered column chart comparing total sales by gender across product categories.
   - Helps identify gender preferences for specific categories (e.g., Clothing vs. Accessories).

2. **Seasonal Sales & Purchase Trends**: 

<img width="679" height="401" alt="Image" src="https://github.com/user-attachments/assets/b7d3faf8-4f2a-4da6-ad4c-99885b029d23" />

   - Combo chart showing sales per category per season (bars) and total purchase count (line).
   - Provides a clear view of seasonal demand and customer engagement.

4. **Top Selling Products**:
<img width="398" height="273" alt="Image" src="https://github.com/user-attachments/assets/585fdd4e-851e-47b4-826a-201616804dd2" />

   - Table listing top-performing products based on sales and order volume.
   - Useful for inventory decisions and promotion strategies.

5. **Underperforming Products**:
<img width="398" height="273" alt="Image" src="https://github.com/user-attachments/assets/d852fbf8-5e95-4de1-bdad-9b683dd12f7a" />

   - Highlights products with low sales and fewer orders.
   - Helps decision-makers identify which items to improve or phase out.

6. **Age Group Engagement by Gender**:
<img width="398" height="273" alt="Image" src="https://github.com/user-attachments/assets/d852fbf8-5e95-4de1-bdad-9b683dd12f7a" />

   - Stacked or clustered bar chart breaking down age groups by gender.
   - Identifies which demographics are most engaged.

7. **Sales Impact of Promo Code by Category**:
<img width="522" height="365" alt="Image" src="https://github.com/user-attachments/assets/7439154e-f958-4294-a857-9df003e8de22" />

   - Comparison bar chart showing sales with and without promo codes.
   - Assesses the effectiveness of promotions by product category.

---

## 📌 Overall Recommendations

- Target age group 26-55 with personalized campaigns
- Reevaluate promo codes – consider targeted promotions
- Boost underperforming items through bundling or discounts
- Focus on product categories performing well in Winter & Spring

---

## 🧠 Tools & Skills Used

- **SQL (SSMS)** – Joins, aggregates, creating views
- **Python (Pandas, Seaborn, Matplotlib)** – EDA & data cleaning
- **Power BI** – Dashboard building, DAX, slicers, tooltips

---

## 📌 About the Dataset

- Contains fields like: Age, Gender, Previous Purchases, Purchase Amount, Promo_Code_Used, Season, Item Purchased
- Covers 18–70 age range
- Useful for customer segmentation, product targeting, and promo strategy
- Link: 
---

## 📬 Contact

> Email: [adarshvr67@gmail.com]  
> linkedin: [https://www.linkedin.com/in/adarsh-vr96]
> Portfolio: [https://adarshvr-96.github.io/Portfolio/]

---
