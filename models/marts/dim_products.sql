with 
    int_products as (
        select *
        from {{ ref('int_products__en') }}
    )
select *
from int_products    