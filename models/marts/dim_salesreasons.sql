with  
   int_sales as (
    select *
    from {{ref('int_sales__salesreasons')}}
   )
   
select *
from int_sales