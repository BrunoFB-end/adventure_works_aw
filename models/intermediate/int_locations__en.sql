with 

    state_provinces as (
        select *
        from {{ ref('stg_erp__person_stateprovinces') }}
    )
    , coutryregions as (
        select *
        from {{ref('stg_erp__person_countryregions')}}
    )
    , addresses as (
        select *
        from {{ ref('stg_erp__person_addresses') }}
    )
    , joined as (
        select
            state_provinces.stateprovinceid_pk
            , state_provinces.countryregion_code
            , state_provinces.stateprovince_code
            , coutryregions.countryregion_name
            , state_provinces.state_name
            , addresses.address_id
            , addresses.address_city
        from state_provinces
        inner join coutryregions on state_provinces.countryregion_code = coutryregions.coutryregion_id
        inner join addresses on state_provinces.stateprovinceid_pk = addresses.state_province_id
    )
select *
from joined