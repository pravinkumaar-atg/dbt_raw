
-- Use the `ref` function to select from other models

--select *
--from {{ ref('my_first_dbt_model') }}
--where id = 1


{{ config(materialized='table') }}

with cte as 
(
    select * from dbt_ds.raw_customers
)
select * from cte
