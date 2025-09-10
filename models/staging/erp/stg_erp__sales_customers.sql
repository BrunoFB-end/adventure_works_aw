with 

source as (

    select * from {{ source('erp', 'sales_customer') }}

),

renamed as (

    select
        cast(customerid as int) as customerid_pk
        , cast(storeid as int) as store_id
        -- , cast(territoryid as int) as territory_id
        , cast(personid as int) as person_id
        -- rowguid,
        -- modifieddate

    from source

)

select * from renamed
