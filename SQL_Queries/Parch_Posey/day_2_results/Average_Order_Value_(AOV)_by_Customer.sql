SELECT case when total > 500 then 'over 500'
else '500 or less' end as total_group,
count(*) order_count
FROM orders
group by 1
--LIMIT 10;