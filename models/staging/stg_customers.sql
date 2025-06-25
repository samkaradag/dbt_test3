SELECT
    customer_id,
    INITCAP(first_name) as first_name,
    INITCAP(last_name) as last_name,
    email,
    created_at
FROM {{ source('ecommerce', 'dagen_pipeline_ecompg2bq_ecommerce_customers') }}