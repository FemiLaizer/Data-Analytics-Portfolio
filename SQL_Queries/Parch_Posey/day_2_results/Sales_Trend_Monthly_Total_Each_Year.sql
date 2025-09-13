SELECT 
    DATE_TRUNC('month', occurred_at) AS month,
    SUM(o.total_amt_usd) AS total_sales
FROM orders o
GROUP BY month
ORDER BY month;
-- Sum of sales trend over time, useful for monthly revenue analysis.