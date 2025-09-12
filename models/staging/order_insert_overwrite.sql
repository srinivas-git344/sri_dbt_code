{{ config(
    materialized="incremental",
    incremental_strategy="insert_overwrite"
    ) 
    }}

 select * from {{source('datafeed_shared_schema','stg_orders_data')}} where id in(1,2,3,4,5)