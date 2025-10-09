-- Find the average quantity and average amount spent by each company on each paper
select a.name as company_name,
round(avg(o.standard_qty), 2) as avg_standard_paper,
case when round(avg(o.standard_amt_usd), 2) > 2000 then round(avg(o.standard_amt_usd), 2) else 0 end as avg_standard_amt,
round(avg(o.gloss_qty), 2) as avg_gloss_paper,
round(avg(o.gloss_amt_usd), 2) as avg_gloss_amt,
round(avg(o.poster_qty), 2) as avg_poster_paper,
round(avg(o.poster_amt_usd), 2) as avg_poster_amt
from accounts a
join orders o
on a.id = o.account_id
group by a.name
order by a.name