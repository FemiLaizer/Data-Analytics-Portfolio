SELECT 
    DATE_TRUNC('year', occurred_at) AS year,
    SUM(o.total_amt_usd) AS total_sales
FROM orders o
GROUP BY year
ORDER BY year;
-- Sum of sales trend yearly revenue analysis.