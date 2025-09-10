with 

source as (

    select * from {{ source('erp', 'person_person') }}

),

renamed as (

    select
        cast(businessentityid as int) as businessentityid_pk
        , cast(persontype as varchar) as person_type
        -- namestyle,
        -- title,
        , cast(firstname as varchar) as first_name
        -- middlename,
        , cast(lastname as varchar) as last_name
        -- suffix,
        , cast(emailpromotion as int) as email_promotion
        -- additionalcontactinfo,
        -- demographics,
        -- rowguid,
        -- modifieddate

    from source

)

select * from renamed
