CREATE DATABASE IF NOT EXISTS customer_and_sales;

USE customer_and_sales;

CREATE TABLE IF NOT EXISTS Customers (
CustomerID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
CustomerName varchar(50),
Region varchar(50)
);


CREATE TABLE IF NOT EXISTS Products (
ProductID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
ProductName varchar(50),
Category varchar(50),
Price INT
);


CREATE TABLE IF NOT EXISTS Orders (
OrderID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
CustomerID INT,
OrderDate DATE
);


CREATE TABLE IF NOT EXISTS OrderDetails (
OrderDetailID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
OrderID INT,
ProductID INT ,
Quantity INT,
TotalPrice INT,
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);


CREATE TABLE IF NOT EXISTS Regions (
RegionID INT,
RegionName varchar(50)
);

ALTER TABLE Regions
ADD Longitude float;

ALTER TABLE Regions
ADD Latitude float;

INSERT INTO Customers ( CustomerID, CustomerName, Region)
VALUES 
(01, 'John', 'Mombasa'),
(02, 'Sarah', 'Nairobi'),
(03, 'Mike', 'Nakuru'),
(04, 'Emma', 'Kisumu'),
(05, 'David', 'Mombasa'),
(06, 'Lily', 'Nairobi'),
(07, 'James', 'Nakuru'),
(08, 'Anna', 'Kisumu'),
(09, 'Chris', 'Mombasa'),
(10, 'Jane', 'Nairobi'),
(11, 'Lily', 'Nairobi'),
(12, 'Mike', 'Nairobi'),
(13, 'Sam', 'Kisumu'),
(14, 'Joe', 'Nakuru'),
(15, 'Mark', 'Mombasa'),
(16, 'Adama', 'Kisumu'),
(17, 'Eric', 'Nairobi'),
(18, 'Paul', 'Mombasa'),
(19, 'Dan', 'Nairobi'),
(20, 'Dan', 'Mombasa'),
(21, 'James', 'Mombasa'),
(22, 'David', 'Nairobi'),
(23, 'Jake', 'Nairobi'),
(24, 'Paul', 'Nairobi'),
(25, 'Eddie', 'Kisumu'),
(26, 'Eddie', 'Nairobi'),
(27, 'Eddie', 'Kisumu'),
(28, 'John', 'Mombasa'),
(29, 'Adama', 'Kisumu'),
(30, 'Dan', 'Nairobi')
;


INSERT INTO Products ( ProductID, ProductName, Category, Price )
VALUES
(01, 'iPhone', 'Phones', 5000),
(02, 'MacBook', 'Laptops', 7000),
(03,  'TCL', 'TV', 4000),
(04, 'Sony Radio', 'Radio', 1000),
(05, 'Panasonic Radio', 'Radio', 850),
(06, 'Dell', 'Laptops', 1200),
(07, 'HP', 'Laptops', 1800),
(08, 'Samsung', 'Phones', 3500),
(09, 'Lenovo', 'Laptops', 1000),
(10, 'Asus', 'Laptops', 900),
(11, 'Sony Bravia', 'TV', 3300),
(12, 'Samsung TV', 'TV', 3500),
(13, 'Hisense', 'TV', 4200),
(14, 'Home Theatre', 'Radio', 4000),
(15, 'iTel', 'Phones', 2000),
(16, 'Infinix', 'Phones', 2100),
(17, 'Tecno', 'Phones', 2200),
(18, 'Huawei', 'Phones', 1800),
(19, 'Oppo', 'Phones', 2200)
;


INSERT INTO Orders (OrderID, CustomerID, OrderDate )
VALUES
(01, 10, '2024-01-10'),
(02, 09, '2024-01-12'),
(03, 08, '2024-01-12'),
(04, 07, '2024-01-12'),
(05, 06, '2024-01-16'),
(06, 05, '2024-01-17'),
(07, 04, '2024-01-19'),
(08, 03, '2024-01-21'),
(09, 02, '2024-01-25'),
(10, 01, '2024-01-28'),
(11, 21, '2024-02-01'),
(12, 22, '2024-02-04'),
(13, 23, '2024-02-05'),
(14, 24, '2024-02-07'),
(15, 25, '2024-02-10'),
(16, 26, '2024-02-14'),
(17, 27, '2024-02-17'),
(18, 28, '2024-02-21'),
(19, 29, '2024-02-25'),
(20, 30, '2024-02-25'),
(21, 20, '2024-03-02'),
(22, 19, '2024-03-05'),
(23, 18, '2024-03-07'),
(24, 17, '2024-03-10'),
(25, 16, '2024-03-12'),
(26, 15, '2024-03-15'),
(27, 14, '2024-03-18'),
(28, 13, '2024-03-21'),
(29, 12, '2024-03-25'),
(30, 11, '2024-03-27'),
(31, 01, '2024-04-05'),
(32, 29, '2024-04-05'),
(33, 17, '2024-04-07'),
(34, 03, '2024-04-10'),
(35, 19, '2024-04-14'),
(36, 11, '2024-04-23'),
(37, 19, '2024-04-27'),
(38, 07, '2024-05-07'),
(39, 11, '2024-05-07'),
(40, 19, '2024-05-07'),
(41, 23, '2024-05-15'),
(42, 17, '2024-05-18'),
(43, 03, '2024-05-19'),
(44, 23, '2024-05-23'),
(45, 07, '2024-05-28'),
(46, 29, '2024-06-03'),
(47, 24, '2024-06-04'),
(48, 16, '2024-06-04'),
(49, 01, '2024-06-07'),
(50, 11, '2024-06-10'),
(51, 18, '2024-06-15'),
(52, 17, '2024-06-16'),
(53, 07, '2024-06-17'),
(54, 19, '2024-06-21'),
(55, 23, '2024-06-24'),
(56, 28, '2024-06-25'),
(57, 20, '2024-06-29')
;

INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, TotalPrice )
VALUES
(01, 01, 15, 2, 4000),
(02, 02, 16, 1, 2100),
(03, 03, 18, 3, 5400),
(04, 04, 16, 3, 6300),
(05, 05, 18, 4, 7200),
(06, 06, 06, 2, 2400),
(07, 07, 08, 2, 7000),
(08, 08, 10, 3, 2700),
(09, 09, 09, 10, 10000),
(10, 10, 06, 4, 4800),
(11, 11, 01, 2, 10000),
(12, 12, 03, 1, 4000),
(13, 13, 05, 4, 3400),
(14, 14, 04, 3, 3000),
(15, 15, 02, 3, 21000),
(16, 16, 14, 2, 8000),
(17, 17, 12, 3, 10500),
(18, 18, 13, 3, 12600),
(19, 19, 12, 4, 14000),
(20, 20, 15, 5, 10000),
(21, 21, 16, 2, 4200),
(22, 22, 18, 4, 7200),
(23, 23, 13, 3, 12600),
(24, 24, 01, 3, 15000),
(25, 25, 05, 5, 4250),
(26, 26, 08, 3, 10500),
(27, 27, 02, 3, 21000),
(28, 28, 06, 1, 1200),
(29, 29, 13, 4, 16800),
(30, 30, 14, 2, 8000),
(31, 31, 01, 10, 50000),
(32, 31, 04, 11, 11000),
(32, 32, 05, 2, 1700),
(33, 33, 14, 3, 12000),
(34, 34, 15, 12, 24000),
(35, 35, 18, 4, 7200),
(36, 36, 03, 4, 12000),
(37, 37, 03, 2, 8000),
(38, 38, 02, 10, 70000),
(39, 39, 06, 5, 6000),
(40, 40, 03, 1, 4000),
(41, 41, 08, 4, 14000),
(42, 42, 09, 5, 5000),
(43, 43, 05, 3, 2550),
(44, 44, 03, 1, 4000),
(46, 46, 01, 5, 25000),
(47, 47, 04, 4, 4000),
(48, 48, 10, 10, 9000),
(49, 49, 13, 2, 8400),
(50, 50, 14, 1, 4000),
(51, 51, 12, 10, 35000),
(52, 52, 16, 4, 8400),
(53, 53, 14, 2, 8000),
(54, 54, 18, 1, 1800),
(55, 55, 01, 1, 5000),
(56, 56, 08, 04, 14000),
(57, 57, 14, 10, 40000)
;

INSERT INTO Regions ( RegionID, RegionName, Longitude, Latitude )
VALUES
(01, 'Nairobi', -1.2921, 36.8219),
(02, 'Mombasa', -4.0435, 39.6682),
(03, 'Kisumu', -0.0917, 34.7680),
(04, 'Nakuru', -0.3031, 36.0800)
;

-- Checking and confirming the tables

SELECT *
FROM Customers;

SELECT *
FROM Orders;

SELECT *
FROM Products;

SELECT *
FROM OrderDetails;

SELECT *
FROM Regions;


-- Total Sales for each product

SELECT Products.ProductName, SUM(OrderDetails.Quantity) AS Total_Sales
FROM Products
JOIN OrderDetails
	ON Products.ProductID = OrderDetails.ProductID
GROUP BY OrderDetails.ProductID
ORDER BY Total_Sales;

-- Customer orders by region

SELECT DISTINCT Customers.Region, SUM(DISTINCT Orders.CustomerID) AS Regional_Orders
FROM Customers
JOIN Orders
	ON Customers.CustomerID = Orders.CustomerID
GROUP BY Region
ORDER BY Regional_Orders;

-- Products that haven't been sold

SELECT ProductName
FROM Products
LEFT JOIN OrderDetails
	ON Products.ProductID = OrderDetails.ProductID
WHERE OrderDetails.ProductID IS NULL;

-- Combine Orders and Customers

SELECT *
FROM Orders
JOIN Customers
	ON Orders.CustomerID = Customers.CustomerID
;

-- Checking if there are Customers who didn't make any orders    

SELECT *
FROM Customers
LEFT JOIN Orders
	ON Orders.CustomerID = Customers.CustomerID
;
# all the customers made orders at one point since there are no nulls

-- Products not associated with any orders

SELECT *
FROM OrderDetails
RIGHT JOIN Products
	ON OrderDetails.ProductID = Products.ProductID
ORDER BY OrderDetails.ProductID;

-- Total Sales for each product

SELECT ProductName, SUM(OrderDetails.Quantity) Total_Sales
FROM Products
JOIN OrderDetails
	ON Products.ProductID = OrderDetails.ProductID
GROUP BY OrderDetails.ProductID
ORDER BY Total_Sales DESC;

-- Average Order Value For Each Customer

WITH Customer AS 
(
SELECT Orders.CustomerID, Customers.CustomerName
FROM Customers
JOIN Orders
	ON Customers.CustomerID = Orders.CustomerID
GROUP BY Orders.CustomerID
),
Order_Value AS
(
SELECT Orders.CustomerID, AVG(TotalPrice) AS AvgOrder_Value
FROM OrderDetails
JOIN Orders
	ON Orders.OrderID = OrderDetails.OrderID
GROUP BY Orders.CustomerID
)
SELECT Customer.CustomerName, Customer.CustomerID, Order_Value.AvgOrder_Value
FROM Customer
JOIN Order_Value
	ON Customer.CustomerID = Order_Value.CustomerID
GROUP BY Customer.CustomerID
ORDER BY AvgOrder_Value DESC;

-- Count Of Orders: Per Region, Customer, and Product

-- Per Region
SELECT Customers.Region, COUNT(OrderID) AS Orders
FROM Orders
JOIN Customers
	ON Orders.CustomerID = Customers.CustomerID
GROUP BY Customers.Region;

-- Per Customer
SELECT Customers.CustomerName, COUNT(OrderID) AS Orders
FROM Orders
JOIN Customers
	ON Orders.CustomerID = Customers.CustomerID
GROUP BY Customers.CustomerID;

-- Per Product
WITH Product AS
(
SELECT ProductName, ProductID
FROM Products
GROUP BY ProductID
),
Total_Orders AS 
(
SELECT COUNT(Quantity) AS Orders, ProductID
FROM OrderDetails
GROUP BY ProductID
)
SELECT Product.ProductName, Total_Orders.Orders
FROM Product
JOIN Total_Orders 
	ON Product.ProductID = Total_Orders.ProductID
GROUP BY Total_Orders.ProductID;

-- Customers who placed more than 4 orders

SELECT CustomerName, COUNT(Orders.OrderID) AS Total_Orders
FROM Customers
JOIN Orders
	ON Customers.CustomerID = Orders.CustomerID
GROUP BY Orders.CustomerID
HAVING Total_Orders >= 4
ORDER BY Total_Orders;

-- Top 5 Customers by total amount spent

SELECT CustomerName, Spent.TotalSpent
FROM Customers
JOIN Orders
	ON Orders.CustomerID = Customers.CustomerID
JOIN (
	SELECT SUM(TotalPrice) AS TotalSpent, Orders.CustomerID AS CustomerID
    FROM OrderDetails
	JOIN Orders
		ON Orders.OrderID = OrderDetails.OrderID
	GROUP BY Orders.CustomerID
    ORDER BY TotalSpent DESC
        ) AS Spent
	ON Spent.CustomerID = Customers.CustomerID
GROUP BY Orders.CustomerID
ORDER BY Spent.TotalSpent DESC
LIMIT 5
;

-- Products that have been ordered more than the average order quantity

CREATE VIEW MoreThanAvgProducts AS
SELECT ProductName, AVG(OrderDetails.Quantity) AS Avg_Orders
FROM Products
JOIN OrderDetails
	ON OrderDetails.ProductID = Products.ProductID
GROUP BY Products.ProductID
HAVING Avg_Orders > (
	SELECT AVG(Quantity)
    FROM OrderDetails
    )
;

-- UPDATE prices of products not bought by 20% off

UPDATE Products
SET Price = Price * 0.8
WHERE ProductID NOT IN (
	SELECT DISTINCT ProductID
    FROM OrderDetails
    )
;

-- Rank Customers By Their Total Spending

CREATE VIEW CustomerSpending AS
SELECT Orders.CustomerID, Customers.CustomerName, SUM(OrderDetails.TotalPrice) AS TotalSpent,
ROW_NUMBER() OVER (ORDER BY SUM(OrderDetails.TotalPrice) DESC) AS SpendingRank
FROM Orders
	JOIN OrderDetails
    ON Orders.OrderID = OrderDetails.OrderID
    JOIN Customers
    ON Orders.CustomerID = Customers.CustomerID
GROUP BY Orders.CustomerID, Customers.CustomerName
ORDER BY TotalSpent DESC;

-- Find month-over-month changes in sales for each product category

CREATE VIEW monthlychanges AS
SELECT Products.Category, MONTH(Orders.OrderDate) AS OrderMonth, SUM(OrderDetails.TotalPrice) AS MonthlySales,
LAG(SUM(OrderDetails.TotalPrice), 1) OVER(PARTITION BY Products.Category ORDER BY MONTH(Orders.OrderDate)) AS PreviousMonthSales,
(SUM(OrderDetails.TotalPrice) - LAG(SUM(OrderDetails.TotalPrice), 1) OVER(PARTITION BY Products.Category ORDER BY MONTH(Orders.OrderDate))) AS MonthOverMonthChange
FROM Orders
JOIN OrderDetails
	ON Orders.OrderID = OrderDetails.OrderID
JOIN Products
	ON OrderDetails.ProductID = Products.ProductID
GROUP BY Products.Category, OrderMonth
ORDER BY Products.Category, OrderMonth;

-- Partition orders by region and calculate the rank of customers in each region

CREATE VIEW RankOfCustomersByRegion AS
SELECT Customers.Region, Customers.CustomerName, Customers.CustomerID, SUM(OrderDetails.TotalPrice) AS Prices,
DENSE_RANK() OVER(PARTITION BY Customers.Region ORDER BY SUM(OrderDetails.TotalPrice) DESC) AS SpendingRank
FROM Orders
JOIN OrderDetails
	ON OrderDetails.OrderID = Orders.OrderID
JOIN Customers
	ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.Region, Orders.CustomerID, Customers.CustomerName
ORDER BY Customers.Region, SpendingRank;

-- Create Indexes for frequently queried columns such as CustomerID, ProductID, and OrderDate

CREATE INDEX idx_customerID
ON Customers (CustomerID);

CREATE INDEX idx_orderDate
ON Orders (OrderDate);

CREATE INDEX idx_productID
ON Products (ProductID);

-- Use EXPLAIN to analyze and optimize slow queries. Add or adjust indexes based on query performance

EXPLAIN SELECT *
FROM Customers;

EXPLAIN SELECT *
FROM Orders;

EXPLAIN SELECT *
FROM Products;

EXPLAIN SELECT *
FROM OrderDetails;

EXPLAIN SELECT *
FROM Regions;

-- Create a View that shows total sales by product category, region, and month

CREATE VIEW SalesByCategory AS
SELECT Products.Category, SUM(OrderDetails.TotalPrice) AS TotalSales
FROM Products
JOIN OrderDetails
	ON OrderDetails.ProductID = Products.ProductID
GROUP BY Products.Category
ORDER BY TotalSales DESC;

CREATE VIEW SalesByRegion AS
SELECT Customers.Region, SUM(OrderDetails.TotalPrice) AS TotalSales
FROM Orders
JOIN OrderDetails
	ON OrderDetails.OrderID = Orders.OrderID
JOIN Customers
	ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.Region
ORDER BY TotalSales DESC;

CREATE VIEW SalesByMonth AS
SELECT MONTH(Orders.OrderDate) AS `Month`, SUM(OrderDetails.TotalPrice) AS TotalSales
FROM Orders
JOIN OrderDetails
	ON OrderDetails.OrderID = Orders.OrderID
GROUP BY `Month`
ORDER BY TotalSales DESC;

SELECT * FROM SalesByRegion;

-- Create a View for  data that can be accessed by the finance team without giving them full database access

-- Write a Stored Procedure to automatically generate monthly sales reports by region
#### MAKE SURE YOU LOOK AT THIS STORED PROCEDURE BECAUSE IT HAS AN ISSUE

DELIMITER $$
CREATE PROCEDURE MonthlySalesReport ()
BEGIN
	SELECT MONTH(Orders.OrderDate) AS CurrentMonth , Customers.Region, SUM(OrderDetails.TotalPrice) AS TotalSales
    FROM Orders
    JOIN OrderDetails
		ON OrderDetails.OrderID = Orders.OrderID
	JOIN Customers
		ON Customers.CustomerID = Orders.OrderID
	GROUP BY CurrentMonth, Customers.Region
    ORDER BY CurrentMonth, TotalSales;
END $$
DELIMITER ;

CALL MonthlySalesReport();

-- A an event to send alert when a customer places an order that exceeds 10,000

DELIMITER $$
CREATE EVENT big_orders
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
	SELECT 
	CASE
    WHEN  Orders.TotalPrice >= 10000 THEN 'Big Order'
    END AS Alert
    FROM OrderDetails;
END $$
DELIMITER ;

-- Granting roles to different departments

CREATE ROLE analyst;

CREATE ROLE adminstrator;

-- Grant read-only access to analysts

GRANT SELECT ON Customers TO analyst;

GRANT SELECT ON Products TO analyst;

GRANT SELECT ON Orders TO analyst;

GRANT SELECT ON OrderDetails TO analyst;

GRANT SELECT ON Regions TO analyst;

-- Grant full access to adminstrators

GRANT ALL PRIVILEGES ON Customers TO adminstrator;

GRANT ALL PRIVILEGES ON Products TO adminstrator;

GRANT ALL PRIVILEGES ON Orders TO adminstrator;

GRANT ALL PRIVILEGES ON OrderDetails TO adminstrator;

GRANT ALL PRIVILEGES ON Regions TO adminstrator;









