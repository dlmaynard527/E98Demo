with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from jaffle_shop_customers
),

orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from jaffle_shop_orders

),

final as (

    select
        customers.customer_id,
        customers.first_name,
        customers.last_name

    from customers


)

select * from final