with raw_customers as (
    select
        customer_id,
        first_name,
        last_name,
        email,
        country,
        signup_date
    from {{ source('raw', 'customers') }}
)

select
    customer_id,
    upper(first_name) as first_name,
    upper(last_name) as last_name,
    lower(email) as email,
    country,
    signup_date::date as signup_date
from raw_customers
