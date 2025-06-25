SELECT
    order_id,
    customer_id,
    order_date,
    total_amount,
    status
FROM {{ source('ecommerce', 'dagen_pipeline_ecompg2bq_ecommerce_orders') }}