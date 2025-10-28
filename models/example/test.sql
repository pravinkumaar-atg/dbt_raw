{{ config(materialized='table') }}

with cte as 
(
    select * from dbt_ds.raw_customers
)
select * from cte

