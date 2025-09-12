with 

source as (

    select * from {{ source('erp', 'sales_salesorderheader') }}

),

renamed as (

    select
        cast(salesorderid as int) as salesorder_id
        -- revisionnumber,
        , cast(orderdate as date) as order_date
        -- duedate,
        -- shipdate,
        , cast(status as int) as order_status
        -- onlineorderflag,
        -- purchaseordernumber,
        -- accountnumber,
        , cast(customerid as int) as customer_id
        -- salespersonid,
        , cast(territoryid as int) as territory_id
        -- billtoaddressid,
        , cast(shiptoaddressid as int) as shiptoaddress_id
        -- shipmethodid,
        , cast(creditcardid as int) as creditcard_id
        -- creditcardapprovalcode,
        -- currencyrateid,
        , cast(subtotal as numeric(18,4)) as order_subtotal
        -- taxamt,
        -- freight,
        -- totaldue,
        -- comment,
        -- rowguid,
        -- modifieddate

    from source

)

select * from renamed
