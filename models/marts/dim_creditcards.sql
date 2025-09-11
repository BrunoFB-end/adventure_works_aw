with
   int_sales_creditcards as (
    select *
    from {{ref("int_sales__creditcards")}}
   )

select *
from int_sales_creditcards