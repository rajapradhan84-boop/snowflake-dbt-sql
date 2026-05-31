with orders as (
    select
        order_id,
        customer_id,
        order_date,
        total_amount
    from {{ ref('stg_orders') }}
),
customers as (
    select
        customer_id,
        first_name,
        last_name,
        country
    from {{ ref('dim_customers') }}
)

select
    o.order_id,
    o.customer_id,
    c.country,
    o.order_date,
    o.total_amount,
    concat(c.first_name, ' ', c.last_name) as customer_name
from orders o
left join customers c on o.customer_id = c.customer_id
