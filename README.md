
# 📚 Online Bookstore SQL Project

<img width="1000" height="500" alt="Screenshot 2025-09-14 211235" src="https://github.com/AvishkarK07/Online_Book_Store/blob/main/code_output/b1.webp"/>
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

## Book Store Data Queries

This repository contains SQL queries and corresponding visualizations for analyzing the Book store dataset.

## Queries and Visualizations

## 1) Retrieve all books in the "Fiction" genre:
![Customer Info](https://github.com/AvishkarK07/Online_Book_Store/blob/main/code_output/Q1.png)

## 2) Find books published after the year 1950:
![Customer Info](https://github.com/AvishkarK07/Online_Book_Store/blob/main/code_output/Q2.png)

## 3) list all customer from canada:
![Customer Info](https://github.com/AvishkarK07/Online_Book_Store/blob/main/code_output/Q3.png)

## 4) show orders placed in november 2023:
![Customer Info](https://github.com/AvishkarK07/Online_Book_Store/blob/main/code_output/Q4.png)

## 5) Retrive the total stock of books available:
![Customer Info](https://github.com/AvishkarK07/Online_Book_Store/blob/main/code_output/Q5.png)

## 6) Find the details of the most expansive books:
![Customer Info](https://github.com/AvishkarK07/Online_Book_Store/blob/main/code_output/Q6.png)

## 7) Show all customers who orderedmore than 1 quantity of a book:
![Customer Info](https://github.com/AvishkarK07/Online_Book_Store/blob/main/code_output/Q7.png)

## 8) Retrive all orders where the total amount exceeds $20

![Customer Info](https://github.com/AvishkarK07/Online_Book_Store/blob/main/code_output/Q7.png)

## 9) List all the geners avalible in the book table:   
![Customer Info](https://github.com/AvishkarK07/Online_Book_Store/blob/main/code_output/Q9.png)

## 10) Find the book with the lowest stock:
![Customer Info](https://github.com/AvishkarK07/Online_Book_Store/blob/main/code_output/Q10.png)

## 11) calculate the total revanue generated from all orders:
![Customer Info](https://github.com/AvishkarK07/Online_Book_Store/blob/main/code_output/Q11.png)

## 12) Retrive the total number of book sold by each genre:
![Customer Info](https://github.com/AvishkarK07/Online_Book_Store/blob/main/code_output/Q12.png)

## 13) Fing average price of books in the "Fantacy" genre:
![Customer Info](https://github.com/AvishkarK07/Online_Book_Store/blob/main/code_output/Q13.png)

## 14) List customer who have placed at least 2 orders:
![Customer Info](https://github.com/AvishkarK07/Online_Book_Store/blob/main/code_output/Q14.png)

## 15) Find the most frequentyl ordered book:
![Customer Info](https://github.com/AvishkarK07/Online_Book_Store/blob/main/code_output/Q15.png)

## 16) Show top 3 most expansive books of 'Fantasy' Genre :
![Customer Info](https://github.com/AvishkarK07/Online_Book_Store/blob/main/code_output/Q16.png)

## 17) Retrive the total Quantity of books sold by each author:
![Customer Info](https://github.com/AvishkarK07/Online_Book_Store/blob/main/code_output/Q17.png)

## 18) List the cities where customer who spent over $30 are located:
![Customer Info](https://github.com/AvishkarK07/Online_Book_Store/blob/main/code_output/Q18.png)

## 19) find the customer who spent the most on orders:
![Customer Info](https://github.com/AvishkarK07/Online_Book_Store/blob/main/code_output/Q19.png)

## 20) Calculate the stock remaining after fulfilling all orders:
![Customer Info](https://github.com/AvishkarK07/Online_Book_Store/blob/main/code_output/Q20.png)






