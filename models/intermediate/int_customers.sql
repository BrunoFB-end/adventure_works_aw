with 
  
    sales_customers as (
        select *
        from {{ ref('stg_erp__sales_customers') }}
    )
    , sales_stores as (
        select *
        from {{ ref('stg_erp__sales_stores') }}
    )
    , person_persons as (
        select *
        from {{ ref('stg_erp__person_persons') }}
    )
    , joined as (
        select
              sales_customers.customerid_pk
              , sales_customers.store_id
              , sales_stores.store_name
              , sales_customers.person_id
              , person_persons.person_type
              , person_persons.first_name
              , person_persons.last_name
              , person_persons.email_promotion
        from sales_customers
        inner join person_persons on sales_customers.person_id = person_persons.businessentityid_pk
        inner join sales_stores on sales_customers.store_id = sales_stores.store_id_pk

    )

select *
from joined