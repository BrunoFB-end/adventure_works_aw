with 
    int_customers as (
        select *
        from {{ ref('int_customers__en') }}
    )
select *
from int_customers    