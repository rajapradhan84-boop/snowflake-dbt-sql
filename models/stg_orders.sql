with raw_orders as (
    select
        order_id,
        customer_id,
        order_date,
        order_status,
        total_amount,
        created_at
    from {{ source('raw', 'orders') }}
)

select
    order_id,
    customer_id,
    order_date::date as order_date,
    order_status,
    total_amount::numeric as total_amount,
    created_at
from raw_orders
