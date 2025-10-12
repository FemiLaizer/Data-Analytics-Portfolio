-- Find the average quantity and average amount spent by each company on each paper
-- Show result where any of the amount for each paper is above 2000
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

