-- 1. Count how many orders exist
SELECT COUNT(o.id) AS total_orders FROM orders o;
/* It can also be written as for short*/
SELECT COUNT(*) AS total_orders FROM orders;

-- 2. Show first 10 customers
SELECT * FROM accounts LIMIT 10;

-- 3. List all regions, their account id, account name and sales reps
select a.id account_id, a.name account_name,
r.name as unique_region_names, sr.name sales_rep_name 
from accounts a
join sales_reps sr
on a.sales_rep_id = sr.id
join region r
on sr.region_id = r.id
order by r.name;

-- 4. List all distinct regions
select DISTINCT r.name as unique_region_names 
from accounts a
join sales_reps sr
on a.sales_rep_id = sr.id
join region r
on sr.region_id = r.id
order by r.name;

-- 5. Top 5 sales reps by number of orders
SELECT s.name AS sales_rep, COUNT(o.id) AS total_orders
FROM sales_reps s
JOIN accounts a ON s.id = a.sales_rep_id
JOIN orders o ON a.id = o.account_id
GROUP BY s.name
ORDER BY total_orders DESC
LIMIT 5;
