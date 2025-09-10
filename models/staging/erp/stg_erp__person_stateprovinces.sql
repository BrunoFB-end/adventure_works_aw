with 

source as (

    select * from {{ source('erp', 'person_stateprovince') }}

),

renamed as (

    select
        cast(stateprovinceid as int) as stateprovinceid_pk
        , cast(stateprovincecode as varchar) as stateprovince_code
        , cast(countryregioncode as varchar) as countryregion_code
        -- isonlystateprovinceflag,
        , cast(name as varchar) as state_name
        -- territoryid,
        -- rowguid,
        -- modifieddate

    from source

)

select * from renamed
