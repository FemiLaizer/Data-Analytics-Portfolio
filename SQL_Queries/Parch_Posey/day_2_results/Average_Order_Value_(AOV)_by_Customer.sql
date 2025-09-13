SELECT 
    a.name AS customer,
    ROUND(AVG(o.total_amt_usd), 2) AS avg_order_value
FROM orders o
JOIN accounts a
    ON o.account_id = a.id
GROUP BY customer
ORDER BY avg_order_value DESC
LIMIT 10;
-- See top 10 customers with the highest AOV.