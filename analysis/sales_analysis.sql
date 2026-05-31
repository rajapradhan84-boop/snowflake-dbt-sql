select
    country,
    count(distinct customer_id) as unique_customers,
    sum(total_amount) as total_revenue,
    avg(total_amount) as avg_order_value
from {{ ref('fct_sales') }}
group by country
order by total_revenue desc
