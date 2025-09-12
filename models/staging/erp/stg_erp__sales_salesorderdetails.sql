with 

source as (

    select * from {{ source('erp', 'sales_salesorderdetail') }}

),

renamed as (

    select
        salesorderid::varchar || '-' || salesorderdetailid::varchar as sk_orderdetail
        , cast(salesorderid as int) as salesorder_id
        , cast(salesorderdetailid as int) as salesorderdetail_id
        -- carriertrackingnumber,
        , cast(orderqty as int) as order_qty
        , cast(productid as int) as product_id
        -- specialofferid,
        , cast(unitprice as numeric(18,4)) as unit_price
        , cast(unitpricediscount as numeric(18,4)) as unitprice_discount
        -- rowguid,
        -- modifieddate

    from source

)

select * from renamed
