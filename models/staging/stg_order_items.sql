SELECT
    order_item_id,
    order_id,
    product_id,
    quantity,
    unit_price
FROM {{ source('ecommerce', 'dagen_pipeline_ecompg2bq_ecommerce_order_items') }}