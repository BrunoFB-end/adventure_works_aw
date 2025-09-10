with 

source as (

    select * from {{ source('erp', 'production_product') }}

),

renamed as (

    select
        cast(productid as int) as productid_pk
        ,cast(name as varchar) as product_name
        ,cast(productnumber as varchar) as product_number
        ,cast(productsubcategoryid as int) as product_subcategory_id
        -- makeflag,
        -- finishedgoodsflag,
        -- color,
        -- safetystocklevel,
        -- reorderpoint,
        -- standardcost,
        -- listprice,
        -- size,
        -- sizeunitmeasurecode,
        -- weightunitmeasurecode,
        -- weight,
        -- daystomanufacture,
        -- productline,
        -- class,
        -- style,
        -- productmodelid,
        -- sellstartdate,
        -- sellenddate,
        -- discontinueddate,
        -- rowguid,
        -- modifieddate

    from source

)

select * from renamed
