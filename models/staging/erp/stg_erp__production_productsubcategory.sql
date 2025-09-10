with 

source as (

    select * from {{ source('erp', 'production_productsubcategory') }}

),

renamed as (

    select
        cast(productsubcategoryid as int) as product_subcategory_id_pk
        , cast(productcategoryid as int) as product_category_id
        , cast(name as varchar) as subcategory_name
        -- rowguid,
        -- modifieddate

    from source

)

select * from renamed
