# Online_Book_Store
# 📚 Online Bookstore SQL Project

## 📌 Project Overview
This project is a **SQL-based database system** for managing an online bookstore. It includes database creation, table design, data handling, and analytical queries to extract meaningful insights from the data.

The project demonstrates strong knowledge of:
- SQL fundamentals  
- Database design  
- Data analysis using queries  

---

## 🗂️ Database Structure

The database **`OnlineBookstore`** consists of the following tables:

### 📘 Books
Stores information about books.
- `Book_ID` (Primary Key)
- `Title`
- `Author`
- `Genre`
- `Published_Year`
- `Price`
- `Stock`

### 👤 Customers
Stores customer details.
- `Customer_ID` (Primary Key)
- `Name`
- `Email`
- `Phone`
- `City`
- `Country`

### 🛒 Orders
Stores order transactions.
- `Order_ID` (Primary Key)
- `Customer_ID` (Foreign Key)
- `Book_ID` (Foreign Key)
- `Order_Date`
- `Quantity`
- `Total_Amount`

---

## ⚙️ Features Implemented

### 🔹 Database Operations
- Create database and tables  
- Define primary and foreign keys  
- Data import (CSV supported)

### 🔹 Data Analysis Queries
The project includes multiple SQL queries such as:

- 📖 Retrieve books by genre  
- 📅 Filter books by publication year  
- 🌍 Find customers by country  
- 🛒 Analyze orders by date  
- 📊 Calculate total stock and revenue  
- 💰 Identify most expensive books  
- 📈 Sales analysis by genre and author  
- 🧑‍💼 Customer order behavior  
- 🏆 Top customers and best-selling books  

---

## 📊 Sample Business Insights

- Total revenue generated from all orders  
- Most frequently ordered book  
- Top spending customer  
- Books with lowest stock  
- Sales distribution by genre  

---

## 🧠 Key SQL Concepts Used

- `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY`  
- Aggregate Functions (`SUM`, `AVG`, `COUNT`)  
- `JOIN` (INNER JOIN, LEFT JOIN)  
- `HAVING` clause  
- `DISTINCT`  
- `LIMIT`  
- `COALESCE`  

---

## 🚀 How to Run the Project

1. Open MySQL / PostgreSQL / any SQL environment  
2. Run the script:
   ```sql
   CREATE DATABASE OnlineBookstore;
   USE OnlineBookstore;


![Customer Info](https://github.com/AvishkarK07/Online_Book_Store/blob/main/code_output/Q1.png)
