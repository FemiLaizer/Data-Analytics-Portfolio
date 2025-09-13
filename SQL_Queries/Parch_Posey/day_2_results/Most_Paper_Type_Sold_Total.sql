SELECT 
    SUM(o.standard_amt_usd) as standard_total_usd,
    SUM(o.poster_amt_usd) as poster_total_usd,
    SUM(o.gloss_amt_usd) as gloss_paper_count
FROM orders o
--Find which paper type has the most total amount sold.