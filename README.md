# Online Shopping Sales Analysis Using SQL

## 📌 Project Introduction

This project focuses on analyzing an online shopping dataset using SQL.

The main objective of this project is to analyze **customers, products, orders, and payments** and extract meaningful insights using SQL queries.

This project also demonstrates my understanding of SQL concepts, starting from basic queries and progressing to advanced SQL techniques.

---

## 🎯 Project Objectives

The main objectives of this project are:

* Analyze customer information and purchasing behavior.
* Analyze products based on category, price, stock, and rating.
* Analyze customer orders and order status.
* Calculate total sales and order quantities.
* Analyze different payment methods and payment statuses.
* Identify high-value customers.
* Identify the best-selling products.
* Practice SQL joins between multiple tables.
* Use subqueries to solve analytical problems.
* Use aggregate functions, conditional statements, and window functions.

---

## 🗂️ Database Tables

This project contains four tables:

| Table       | Description                                                                               |
| ----------- | ----------------------------------------------------------------------------------------- |
| `Customers` | Contains customer details such as name, city, state, age, and gender.                     |
| `Products`  | Contains product details such as product name, category, brand, price, stock, and rating. |
| `Orders`    | Contains customer orders, purchased products, quantities, order dates, and order status.  |
| `Payments`  | Contains payment method, payment amount, payment status, and payment date.                |

---

## 🔗 Table Relationships

```text
Customers
    |
    | customer_id
    ↓
Orders
    |
    | product_id
    ↓
Products

Orders
    |
    | order_id
    ↓
Payments
```

---

## 📊 Dataset Information

The dataset contains:

* **20 Customers**
* **20 Products**
* **20 Orders**
* **20 Payment Records**

The dataset represents a small online shopping business.

### Product Categories

* Electronics
* Fashion
* Furniture
* Accessories

### Payment Methods

* UPI
* Credit Card
* Debit Card
* Cash on Delivery

### Order Status

* Delivered
* Shipped
* Pending
* Cancelled

---

## 💻 SQL Concepts Used

The project covers the following SQL concepts:

### Basic SQL

* SELECT
* DISTINCT
* WHERE
* ORDER BY
* LIMIT

### Aggregate Functions

* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()

### SQL Clauses

* GROUP BY
* HAVING

### Joins

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN

### Advanced SQL

* Subqueries
* CASE Statements
* Common Table Expressions (CTEs)
* Window Functions
* RANK()
* DENSE_RANK()
* ROW_NUMBER()

### Data Manipulation

* INSERT
* UPDATE
* DELETE

---

## 🔍 Analysis Questions

The following questions will be answered using SQL:

1. How many customers are there?
2. What are the different product categories?
3. What is the average product price?
4. Which product has the highest price?
5. Which products have low stock?
6. How many orders were delivered?
7. What is the total sales amount?
8. Which customer placed the most orders?
9. Which customer spent the most money?
10. Which product generated the highest revenue?
11. What is the total sales by product category?
12. Which payment method is used most frequently?
13. How many payments were successful?
14. Which customers have never placed an order?
15. Which products have a rating above the average rating?
16. Which customers spent more than the average customer spending?
17. How can products be ranked based on sales?
18. What are the top 3 products by revenue?
19. Which category generated the highest sales?
20. What are the monthly sales trends?

---

## 📁 Project Structure

```text
online-shopping-sql-project/
│
├── README.md
│
├── dataset/
│   └── online_shopping.sql
│
└── queries/
    ├── 01_basic_queries.sql
    ├── 02_aggregate_functions.sql
    ├── 03_group_by_having.sql
    ├── 04_joins.sql
    ├── 05_subqueries.sql
    ├── 06_case_statements.sql
    └── 07_window_functions.sql
```

---

## 🚀 Project Goal

The goal of this project is to demonstrate practical SQL skills by analyzing an online shopping database and solving real-world business questions using SQL.

This project progresses from **basic SQL queries to advanced SQL concepts** and is created as part of my SQL learning and portfolio development.
