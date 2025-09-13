SELECT 
    sr.name AS sales_rep,
    SUM(o.total_amt_usd) AS revenue
FROM orders o
JOIN accounts a
    ON o.account_id = a.id
JOIN sales_reps sr
    ON a.sales_rep_id = sr.id
GROUP BY sales_rep
ORDER BY revenue DESC;
-- Find which sales rep brings in the most money.