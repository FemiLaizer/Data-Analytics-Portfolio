-- 1. Count how many orders exist
SELECT COUNT(*) AS total_orders FROM orders;

-- 2. Show first 10 customers
SELECT * FROM accounts LIMIT 10;

-- 3. List all distinct regions
SELECT DISTINCT region FROM accounts;

-- 4. Top 5 sales reps by number of orders
SELECT s.name AS sales_rep, COUNT(o.id) AS total_orders
FROM sales_reps s
JOIN accounts a ON s.id = a.sales_rep_id
JOIN orders o ON a.id = o.account_id
GROUP BY s.name
ORDER BY total_orders DESC
LIMIT 5;
