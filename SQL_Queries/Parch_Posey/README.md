# Parch & Posey SQL Project
Find below data I pulled using SQL queries. 
---

## Overview
This project uses the **Parch & Posey** database (a paper company dataset) to practice SQL for data analysis.  
It demonstrates how to query customer accounts, orders, sales reps, and regions to generate business insights.  

## Day 1 – Basic SQL Queries

**1. Total Orders**
- SQL: `SELECT COUNT(*) FROM orders;`
- Result: `7,913 orders` (see `day1_results/total_orders.csv`)

**2. First 10 Customers**
- SQL: `SELECT * FROM accounts LIMIT 10;`
- Result: Sample of 10 customers (see `day1_results/first_10_customers.csv`)

**3. Distinct Regions**
- SQL: `SELECT DISTINCT region FROM accounts;`
- Result: 4 unique regions (see `day1_results/regions.csv`)

**4. Top 5 Sales Reps by Orders**
- SQL: Query joining `sales_reps`, `accounts`, `orders`
- Result: Top performers ranked by total orders (see `day1_results/top_5_salesreps.csv`)

---

## Skills Demonstrated
- SQL basics: SELECT, COUNT, LIMIT, DISTINCT  
- Table joins for analysis  
- Exporting SQL query results for reporting  

---
