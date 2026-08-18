create database online_shopping;
create table Customers(
customer_id int primary key,
customer_name varchar(50),
city varchar(50),
sate varchar(50),
age int,
gender varchar(10)
);

insert into customers values
(101,'Arun Kumar','Chennai','Tamil Nadu',25,'Male'),
(102,'Priya Sharma','Bangalore','Karnataka',28,'Female'),
(103,'Rahul Singh','Mumbai','Maharashtra',32,'Male'),
(104,'Sneha Patel','Ahmedabad','Gujarat',24,'Female'),
(105,'Vijay Raj','Coimbatore','Tamil Nadu',35,'Male'),
(106,'Anjali Verma','Delhi','Delhi',27,'Female'),
(107,'Karthik S','Madurai','Tamil Nadu',30,'Male'),
(108,'Divya R','Hyderabad','Telangana',26,'Female'),
(109,'Rohit Mehta','Pune','Maharashtra',34,'Male'),
(110,'Meena Das','Kolkata','West Bengal',29,'Female'),
(111,'Suresh Babu','Chennai','Tamil Nadu',40,'Male'),
(112,'Nisha Kapoor','Jaipur','Rajasthan',23,'Female'),
(113,'Manoj Kumar','Bangalore','Karnataka',31,'Male'),
(114,'Pooja Shah','Surat','Gujarat',28,'Female'),
(115,'Ajay Rao','Mysore','Karnataka',36,'Male'),
(116,'Lakshmi Devi','Trichy','Tamil Nadu',33,'Female'),
(117,'Vikram Joshi','Mumbai','Maharashtra',27,'Male'),
(118,'Keerthi N','Hyderabad','Telangana',25,'Female'),
(119,'Sanjay Gupta','Delhi','Delhi',38,'Male'),
(120,'Riya Sen','Kolkata','West Bengal',22,'Female');

create table Products(
product_id int primary key,
product_name varchar(100),
category varchar(50),
brand varchar(50),
price decimal(10,2),
stock int,
rating decimal(3,1)
);

INSERT INTO Products VALUES
(201,'Laptop','Electronics','Dell',55000,15,4.5),
(202,'Smartphone','Electronics','Samsung',28000,25,4.3),
(203,'Running Shoes','Fashion','Nike',3500,40,4.2),
(204,'Headphones','Electronics','Boat',2500,50,4.1),
(205,'Office Chair','Furniture','Wakefit',7500,20,4.4),
(206,'Smart Watch','Electronics','Noise',6000,30,4.0),
(207,'T-Shirt','Fashion','Puma',800,60,4.2),
(208,'Backpack','Accessories','American Tourister',1500,35,4.3),
(209,'Television','Electronics','LG',42000,10,4.6),
(210,'Dining Table','Furniture','Urban Ladder',18000,8,4.5),
(211,'Jeans','Fashion','Levis',2200,45,4.1),
(212,'Air Conditioner','Electronics','Voltas',38000,12,4.4),
(213,'Keyboard','Electronics','Logitech',1800,55,4.3),
(214,'Handbag','Accessories','Lavie',3200,25,4.0),
(215,'Sofa','Furniture','Godrej',25000,6,4.5),
(216,'Kurti','Fashion','Biba',1600,40,4.2),
(217,'Tablet','Electronics','Lenovo',22000,18,4.4),
(218,'Sneakers','Fashion','Adidas',4500,30,4.5),
(219,'Refrigerator','Electronics','Whirlpool',35000,9,4.6),
(220,'Bookshelf','Furniture','Ikea',5500,14,4.3);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_status VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders VALUES
(1001,101,'2026-01-05','Delivered'),
(1002,102,'2026-01-08','Delivered'),
(1003,103,'2026-01-12','Delivered'),
(1004,104,'2026-01-15','Cancelled'),
(1005,105,'2026-01-20','Delivered'),
(1006,106,'2026-01-22','Shipped'),
(1007,107,'2026-01-25','Delivered'),
(1008,108,'2026-02-02','Delivered'),
(1009,109,'2026-02-05','Shipped'),
(1010,110,'2026-02-10','Delivered'),
(1011,111,'2026-02-14','Delivered'),
(1012,112,'2026-02-18','Cancelled'),
(1013,113,'2026-02-20','Delivered'),
(1014,114,'2026-02-25','Shipped'),
(1015,115,'2026-03-01','Delivered'),
(1016,116,'2026-03-05','Delivered'),
(1017,117,'2026-03-08','Shipped'),
(1018,118,'2026-03-10','Delivered'),
(1019,119,'2026-03-15','Delivered'),
(1020,120,'2026-03-20','Pending');

CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Order_Items VALUES
(1,1001,201,1),
(2,1001,204,1),
(3,1002,202,2),
(4,1003,203,1),
(5,1003,213,2),
(6,1004,204,1),
(7,1005,205,2),
(8,1006,206,1),
(9,1007,207,3),
(10,1008,208,2),
(11,1009,209,1),
(12,1010,210,1),
(13,1011,211,2),
(14,1012,212,1),
(15,1013,213,2),
(16,1014,214,1),
(17,1015,215,1),
(18,1016,216,2),
(19,1017,217,1),
(20,1018,218,1);


USE online_shopping;

-- =========================================
-- ONLINE SHOPPING SQL PROJECT QUERIES
-- =========================================

-- =========================================
-- BASIC SELECT QUERIES
-- =========================================

-- 1. Display all customers
SELECT * FROM Customers;

-- 2. Display all products
SELECT * FROM Products;

-- 3. Display all orders
SELECT * FROM Orders;

-- 4. Display all order items
SELECT * FROM Order_Items;

-- =========================================
-- WHERE CLAUSE
-- =========================================

-- 5. Customers from Chennai
SELECT customer_name, city
FROM Customers
WHERE city = 'Chennai';

-- 6. Female customers
SELECT customer_name, gender
FROM Customers
WHERE gender = 'Female';

-- 7. Products costing more than 20000
SELECT product_name, price
FROM Products
WHERE price > 20000;

-- 8. Delivered orders
SELECT *
FROM Orders
WHERE order_status = 'Delivered';

-- =========================================
-- ORDER BY
-- =========================================

-- 9. Products sorted by highest price
SELECT product_name, price
FROM Products
ORDER BY price DESC;

-- 10. Customers sorted by age
SELECT customer_name, age
FROM Customers
ORDER BY age ASC;

-- =========================================
-- AGGREGATE FUNCTIONS
-- =========================================

-- 11. Total customers
SELECT COUNT(*) AS Total_Customers
FROM Customers;

-- 12. Average product price
SELECT AVG(price) AS Average_Price
FROM Products;

-- 13. Highest priced product
SELECT MAX(price) AS Highest_Price
FROM Products;

-- 14. Lowest priced product
SELECT MIN(price) AS Lowest_Price
FROM Products;

-- 15. Total stock available
SELECT SUM(stock) AS Total_Stock
FROM Products;

-- =========================================
-- GROUP BY
-- =========================================

-- 16. Number of customers in each city
SELECT city, COUNT(*) AS Total_Customers
FROM Customers
GROUP BY city;

-- 17. Average price by category
SELECT category, AVG(price) AS Average_Price
FROM Products
GROUP BY category;

-- 18. Number of products in each category
SELECT category, COUNT(*) AS Product_Count
FROM Products
GROUP BY category;

-- =========================================
-- HAVING CLAUSE
-- =========================================

-- 19. Categories with more than 3 products
SELECT category, COUNT(*) AS Product_Count
FROM Products
GROUP BY category
HAVING COUNT(*) > 3;

-- 20. Cities with more than one customer
SELECT city, COUNT(*) AS Customer_Count
FROM Customers
GROUP BY city
HAVING COUNT(*) > 1;

-- =========================================
-- INNER JOIN
-- =========================================

-- 21. Customer names with their order status
SELECT c.customer_name,
       o.order_id,
       o.order_status
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id;

-- 22. Complete order details using all four tables
SELECT o.order_id,
       c.customer_name,
       p.product_name,
       oi.quantity,
       p.price,
       (oi.quantity * p.price) AS Total_Amount,
       o.order_status
FROM Orders o
JOIN Customers c
ON o.customer_id = c.customer_id
JOIN Order_Items oi
ON o.order_id = oi.order_id
JOIN Products p
ON oi.product_id = p.product_id;

-- 23. Products purchased by each customer
SELECT c.customer_name,
       p.product_name
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
JOIN Order_Items oi
ON o.order_id = oi.order_id
JOIN Products p
ON oi.product_id = p.product_id;

-- =========================================
-- LEFT JOIN
-- =========================================

-- 24. Show all customers with their orders
SELECT c.customer_name,
       o.order_id
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id;

-- =========================================
-- RIGHT JOIN
-- =========================================

-- 25. Show all products with order IDs
SELECT p.product_name,
       oi.order_id
FROM Order_Items oi
RIGHT JOIN Products p
ON oi.product_id = p.product_id;

-- =========================================
-- BUSINESS ANALYSIS QUERIES
-- =========================================

-- 26. Total amount for each order
SELECT o.order_id,
       SUM(oi.quantity * p.price) AS Total_Amount
FROM Orders o
JOIN Order_Items oi
ON o.order_id = oi.order_id
JOIN Products p
ON oi.product_id = p.product_id
GROUP BY o.order_id;


-- 27. Total spending by each customer
SELECT c.customer_name,
       SUM(oi.quantity * p.price) AS Total_Spent
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
JOIN Order_Items oi
ON o.order_id = oi.order_id
JOIN Products p
ON oi.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY Total_Spent DESC;


-- 28. Best-selling products
SELECT p.product_name,
       SUM(oi.quantity) AS Total_Sold
FROM Products p
JOIN Order_Items oi
ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY Total_Sold DESC;

-- 29. Customers who bought Electronics
SELECT DISTINCT c.customer_name
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
JOIN Order_Items oi
ON o.order_id = oi.order_id
JOIN Products p
ON oi.product_id = p.product_id
WHERE p.category = 'Electronics';

-- 30. Pending orders
SELECT c.customer_name,
       o.order_id
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
WHERE o.order_status = 'Pending';

-- =========================================
-- SUBQUERIES
-- =========================================

-- 31. Most expensive product
SELECT product_name, price
FROM Products
WHERE price = (
    SELECT MAX(price)
    FROM Products
);

-- 32. Products priced above average
SELECT product_name, price
FROM Products
WHERE price > (
    SELECT AVG(price)
    FROM Products
);


-- 33. Customers older than average age
SELECT customer_name, age
FROM Customers
WHERE age > (
    SELECT AVG(age)
    FROM Customers
);

-- 34. Products never ordered
SELECT product_name
FROM Products
WHERE product_id NOT IN (
    SELECT product_id
    FROM Order_Items
);

-- =========================================
-- ADVANCED QUERIES
-- =========================================

-- 35. Top 5 highest spending customers
SELECT c.customer_name,
       SUM(oi.quantity * p.price) AS Total_Spent
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
JOIN Order_Items oi
ON o.order_id = oi.order_id
JOIN Products p
ON oi.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY Total_Spent DESC
LIMIT 5;

-- 36. Top-rated products
SELECT product_name, rating
FROM Products
ORDER BY rating DESC
LIMIT 5;

-- 37. Low-stock products
SELECT product_name, stock
FROM Products
WHERE stock < 15;

-- 38. Revenue generated by each category
SELECT p.category,
       SUM(oi.quantity * p.price) AS Revenue
FROM Products p
JOIN Order_Items oi
ON p.product_id = oi.product_id
GROUP BY p.category
ORDER BY Revenue DESC;

-- 39. Monthly order count
SELECT MONTH(order_date) AS Month_Number,
       COUNT(order_id) AS Total_Orders
FROM Orders
GROUP BY MONTH(order_date);

-- 40. Average rating by category
SELECT category,
       AVG(rating) AS Average_Rating
FROM Products
GROUP BY category;
