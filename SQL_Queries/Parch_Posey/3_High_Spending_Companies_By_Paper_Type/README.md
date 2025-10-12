# 🧠 SQL Project: High-Spending Companies by Paper Type

**Overview:**

This SQL project explores how to identify companies that spend the most on different paper types
(Standard, Gloss, and Poster). The goal is to calculate average quantities and spending amounts per
company and filter out those whose average spending exceeds $2000 for any paper type.

**SQL Concepts Demonstrated:**

- Aggregate Functions (AVG)
- Table Joins (JOIN)
- Conditional Filtering (WHERE)
- Data Formatting (ROUND)

**SQL Query Used:**

select *
from (select a.name as company_name,
			round(avg(standard_qty), 2) as avg_standard_paper,
			round(avg(standard_amt_usd), 2) as avg_standard_amt,
			round(avg(gloss_qty), 2) as avg_gloss_paper,
			round(avg(gloss_amt_usd), 2) as avg_gloss_amt,
			round(avg(poster_qty), 2) as avg_poster_paper,
			round(avg(poster_amt_usd), 2) as avg_poster_amt
	from accounts a
	join orders o
	on a.id = o.account_id
	group by a.name
	order by a.name) t1
where avg_standard_amt >= 2000 or
		avg_gloss_amt >= 2000 or 
		avg_poster_amt >= 2000

**Insights & Takeaway:**

The analysis highlights the top-spending companies for each paper type. By leveraging aggregation
and filtering, we can pinpoint high-value clients and better understand purchasing trends that can
influence sales strategy.

**Tools Used:**

- PostgreSQL
- DBeaver
- Udacity SQL Environment