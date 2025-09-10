with 

source as (

    select * from {{ source('erp', 'sales_store') }}

),

renamed as (

    select
        cast(businessentityid as int) as store_id_pk
        , cast(name as varchar) as store_name
        -- , cast(salespersonid as int) as 
        -- demographics,
        -- rowguid,
        -- modifieddate

    from source

)

select * from renamed
