with 

source as (

    select * from {{ source('erp', 'person_address') }}

),

renamed as (

    select
        cast(addressid as int) as address_id
        -- addressline1,
        -- addressline2,
        ,cast(city as varchar) as address_city
        ,cast(stateprovinceid as int) as state_province_id
        -- postalcode,
        -- spatiallocation,
        -- rowguid,
        -- modifieddate

    from source

)

select * from renamed
