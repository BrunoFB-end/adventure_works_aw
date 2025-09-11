with 

source as (

    select * from {{ source('erp', 'person_stateprovince') }}

),

renamed as (

    select
        cast(stateprovinceid as int) as stateprovince_id
        , cast(stateprovincecode as varchar) as stateprovince_code
        , cast(countryregioncode as varchar) as countryregion_code
        -- isonlystateprovinceflag,
        , cast(name as varchar) as state_name
        , cast(territoryid as int) as territory_id
        -- rowguid,
        -- modifieddate

    from source

)

select * from renamed
