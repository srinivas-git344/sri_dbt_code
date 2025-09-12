{{ config(
    materialized='view') 
    }}

WITH tb1  as(
 select
        id,
        order_date,
        user_id
        
    from {{source('datafeed_shared_schema','stg_orders_data')}})
     select * from tb1
