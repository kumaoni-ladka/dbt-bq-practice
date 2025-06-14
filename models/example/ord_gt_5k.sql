with order_gt_5k as (
    select
        c.customer_id as customer_id,
        concat(c.first_name, ' ', c.last_name) as customer_name,
        c.email as customer_email,
        o.order_id as order_id,
        o.product_id as product_id,
        o.total_price as total_price
    from raw.customer c
    join raw.orders o on c.customer_id = o.customer_id
    where o.total_price >= 5000
)

select * from order_gt_5k