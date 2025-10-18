select a.primary_poc as employee_name,
    count(distinct(a.name)) as company_count,
    sum(o.total) as total_sales
from accounts a
join orders o
    on a.id = o.account_id
group by employee_name
having count(distinct(a.name)) > 1
order by total_sales desc
limit 10;