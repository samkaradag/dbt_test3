with
    stg_customers as (
        select * from {{ ref('stg_customers') }}
    ),

    stg_products as (
        select * from {{ ref('stg_products') }}
    ),

    stg_order_items as (
        select * from {{ ref('stg_order_items') }}
    ),

    stg_orders as (
        select * from {{ ref('stg_orders') }}
    )

-- Add your transformations here
final as (
    select
        o.order_id,
        o.customer_id,
        o.order_date,
        o.total_amount,
        o.status,
        c.first_name,
        c.last_name,
        c.email,
        p.product_id,
        p.name as product_name,
        p.price as product_price,
        oi.quantity,
        oi.unit_price as item_unit_price
    from stg_orders o
    left join stg_customers c on o.customer_id = c.customer_id
    left join stg_order_items oi on o.order_id = oi.order_id
    left join stg_products p on oi.product_id = p.product_id
)

select * from final