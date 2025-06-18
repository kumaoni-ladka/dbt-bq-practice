with latest_order as (
    select 
        customer_id,
        order_date,
        total_price
    from raw.orders
    where order_date = (select max(order_date) from raw.orders)
)

select * from latest_order