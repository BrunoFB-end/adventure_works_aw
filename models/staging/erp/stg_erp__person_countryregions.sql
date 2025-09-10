with 

source as (

    select * from {{ source('erp', 'person_countryregion') }}

),

renamed as (

    select
        cast(countryregioncode as varchar) as coutryregion_id
        , cast(name as varchar) as countryregion_name
        -- modifieddate

    from source

)

select * from renamed
