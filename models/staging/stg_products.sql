SELECT
    product_id,
    INITCAP(name) as name,
    description,
    price,
    stock_quantity,
    created_at
FROM {{ source('ecommerce', 'dagen_pipeline_ecompg2bq_ecommerce_products') }}