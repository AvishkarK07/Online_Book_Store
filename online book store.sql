CREATE DATABASE OnlineBookstore;
use OnlineBookstore;

-- Create Tables
DROP TABLE IF EXISTS Books;
CREATE TABLE Books (
    Book_ID SERIAL PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Published_Year INT,
    Price NUMERIC(10, 2),
    Stock INT
    );
    
DROP TABLE IF EXISTS customers;
CREATE TABLE Customers (
    Customer_ID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50),
    Country VARCHAR(150)
);

DROP TABLE IF EXISTS orders;
CREATE TABLE Orders (
    Order_ID SERIAL PRIMARY KEY,
    Customer_ID INT REFERENCES Customers(Customer_ID),
    Book_ID INT REFERENCES Books(Book_ID),
    Order_Date DATE,
    Quantity INT,
    Total_Amount NUMERIC(10, 2)
);

DROP TABLE IF EXISTS orders;
CREATE TABLE Orders (
    Order_ID SERIAL PRIMARY KEY,
    Customer_ID INT REFERENCES Customers(Customer_ID),
    Book_ID INT REFERENCES Books(Book_ID),
    Order_Date DATE,
    Quantity INT,
    Total_Amount NUMERIC(10, 2)
);

DROP TABLE IF EXISTS orders;
CREATE TABLE Orders (
    Order_ID SERIAL PRIMARY KEY,
    Customer_ID INT REFERENCES Customers(Customer_ID),
    Book_ID INT REFERENCES Books(Book_ID),
    Order_Date DATE,
    Quantity INT,
    Total_Amount NUMERIC(10, 2)
);

SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;

-- Import Data into Books Table

-- COPY Books(Book_ID, Title, Author, Genre, Published_Year, Price, Stock) 
-- FROM "D:\JS School\SQL\SQL project online book store\Books.csv" 
-- CSV HEADER;

-- LOAD DATA INFILE 'D:/JS School/SQL/SQL project online book store/Books.csv'
-- INTO TABLE Books
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- 1) Retrieve all books in the "Fiction" genre:

SELECT * FROM Books 
WHERE Genre='Fiction';

-- 2) Find books published after the year 1950:
SELECT * FROM Books 
WHERE Published_year>1950;

-- 3) list all customer from canada:
SELECT * from customers
WHERE country = 'Canada';

-- 4) show orders placed in november 2023:

SELECT * FROM orders
WHERE Order_Date between '2023-11-01' AND '2023-11-30'; 

-- 5) Retrive the total stock of books available:
SELECT SUM(stock) AS total_stock
FROM books;

-- 6) Find the details of the most expansive books:

SELECT * FROM BOOKS 
ORDER BY Price DESC
limit 1 ; 	 

-- 7) Show all customers who orderedmore than 1 quantity of a book:
SELECT * FROM orders
WHERE Quantity > 1;

-- 8) Retrive all orders where the total amount exceeds $20

SELECT * FROM orders
WHERE total_amount > 20;

-- 9) List all the geners avalible in the book table:
SELECT DISTINCT Genre FROM books;

-- 10) Find the book with the lowest stock:

SELECT * FROM books
ORDER BY stock 
LIMIT 1;

-- 11) calculate the total revanue generated from all orders:

SELECT SUM(Quantity * Total_Amount) AS Total_revanue
FROM orders;


-- 12) Retrive the total number of book sold by each genre:

SELECT b.Genre, SUM(o.Quantity) AS Total_Book_Sold
FROM orders o
JOIN books b ON O.Book_ID = b.Book_ID
GROUP BY b.Genre;

-- 13) Fing average price of books in the "Fantacy" genre:
SELECT Genre, AVG(PRICE) AS Average_price
FROM BOOKS
WHERE Genre ="Fantasy";

-- 14) List customer who have placed at least 2 orders:

SELECT o.Customer_ID , c.name, COUNT(o.Order_ID) AS Order_count
FROM orders o
JOIN customers c ON c.customer_ID = o.Customer_ID
GROUP BY o.Customer_id , c.name
HAVING COUNT(o.Order_id) >= 2;

-- 15) Find the most frequentyl ordered book:


SELECT  b.Title, o.book_id, count(o.Order_id) AS Order_count
FROM orders o
JOIN books b ON b.Book_ID = o.Book_id
GROUP BY o.book_id 
ORDER BY Order_count DESC
LIMIT 2 ;

-- 16) Show top 3 most expansive books of 'Fantasy' Genre :

SELECT * FROM BOOKS 
WHERE Genre = 'Fantasy'
ORDER BY Price DESC
LIMIT 3 ;

-- 17) Retrive the total Quantity of books sold by each author:

SELECT b.Author, sum(o.Quantity) AS Sold_by_each_Author
From Orders o 
JOIN Books b ON b.book_id = o.book_id
GROUP BY b.Author;

-- 18) List the cities where customer who spent over $30 are located:

SELECT Distinct(c.city), sum(o.Total_amount) AS Spent_over
FROM customers c 
JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.total_Amount > 30
GROUP BY c.city;

SELECT DISTINCT(c.city), total_amount
FROM orders o 
JOIN customers c ON c.customer_id = o.customer_id
WHERE o.total_amount > 30;


-- 19) find the customer who spent the most on orders:

SELECT c.customer_ID, c.name, SUM(o.Total_Amount) AS Total_Spent
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.name
ORDER BY Total_Spent DESC
limit 1 ;


-- 20) Calculate the stock remaining after fulfilling all orders:

SELECT * FROM ORDERS;
SELECT * FROM BOOKS;

SELECT b.book_id, b.title, b.stock, COALESCE(SUM(o.quantity),0) AS Order_Quantity,
b.stock - COALESCE(SUM(o.quantity),0) AS Remaining_Quantity
FROM  books b
LEFT JOIN orders o ON b.book_ID = o.book_ID
GROUP BY b.book_id;
































    