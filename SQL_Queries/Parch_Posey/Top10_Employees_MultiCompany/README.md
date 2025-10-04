# 🧠 SQL Project: Top 10 Employees Working Across Multiple Companies

## 🎯 Objective

To identify employees who have worked with **more than one company** and
determine the **top 10 employees** based on their total sales or order
value.

------------------------------------------------------------------------

## 🧩 Dataset Description

The analysis uses two datasets: - **accounts** → Contains company and
contact details.\
Columns: `id`, `name`, `primary_poc` (employee), `website`, etc.\
- **orders** → Contains order and sales information.\
Columns: `id`, `account_id`, `total`, `occurred_at`, etc.

------------------------------------------------------------------------

## 🧠 Business Question

1.  Which employees have worked with **more than one company**?\
2.  Among them, who are the **top 10 employees** with the highest total
    order value?

------------------------------------------------------------------------

## 🧮 SQL Query

``` sql
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
```

------------------------------------------------------------------------

## 📊 Insights

-   The query identifies key employees who manage multiple client
    accounts.
-   Ranking by `total_sales` highlights top-performing employees in
    revenue contribution.
-   Useful for **performance evaluation**, **bonus allocation**, or
    **cross-company engagement tracking**.

------------------------------------------------------------------------

## 🧠 Key SQL Concepts Used

-   `JOIN` (combining data from multiple tables)
-   `COUNT(DISTINCT)` (finding unique companies)
-   `SUM()` (aggregating total order value)
-   `HAVING` (filtering aggregated results)
-   `ORDER BY` and `LIMIT` (ranking top results)

------------------------------------------------------------------------

## 🎥 Video Demo

A full live walkthrough of this SQL query and explanation is available
on my [LinkedIn page](#).
