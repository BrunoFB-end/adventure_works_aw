with 
    int_metrics as (
        select *
        from {{ ref('int_sales__metrics') }}
    )
select *
from int_metrics    