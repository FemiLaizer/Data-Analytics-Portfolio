SELECT 
    a.name AS customer,
    COUNT(o.id) AS total_orders
FROM orders o
JOIN accounts a 
    ON o.account_id = a.id
GROUP BY customer
ORDER BY total_orders DESC
LIMIT 10;
-- Shows top 10 customers by number of orders.