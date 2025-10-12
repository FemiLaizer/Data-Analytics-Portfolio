-- Provide employees that worked with more than one company
-- Show the top 10 employee with the highest number of order
 select a.primary_poc as staff, 
count(distinct(a.name)) as company_count,
sum(o.total) as total_order
from accounts a
join orders o
on a.id = o.account_id
group by staff
having count(distinct(name)) > 1
order by 3 desc
limit 10;