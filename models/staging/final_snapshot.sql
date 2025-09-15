{{config(materialized='table')}}

WITH source as(select * from {{ref('snap_customers_timestamp2')}}
)
select * from source
where dbt_valid_to is null