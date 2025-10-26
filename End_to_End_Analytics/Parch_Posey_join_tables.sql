select *
from accounts a
full join orders o
on a.id = o.account_id
full join sales_reps s
on a.sales_rep_id = s.id 
full join web_events w
on a.id = w.account_id 
full join region r
on s.region_id = r.id 