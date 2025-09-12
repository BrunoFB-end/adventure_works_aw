with gross_sales as (
    select
        sum(order_qty * unit_price) as total_gross_sales
    from {{ ref('int_sales__metrics') }}
    where extract(year from order_date) = 2011
)

select *
from gross_sales
where round(total_gross_sales, 4) != 12646112.1607
