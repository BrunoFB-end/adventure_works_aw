with
 
   int_locations as (
    select *
    from {{ ref('int_locations__en') }}
   )

select *
from int_locations 