with
   
   sales_creditcard as (
    select *
    from {{ref("stg_erp__sales_creditcards")}}
  
   )
   
select * 
from sales_creditcard