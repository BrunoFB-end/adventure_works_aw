with 

source as (

    select * from {{ source('erp', 'sales_salesorderheadersalesreason') }}

),

renamed as (

    select
        salesorderid::varchar || '-' || salesreasonid::varchar as sk_salesreasons
        , cast(salesorderid as int) as salesorder_id
        , cast(salesreasonid as int) as salesreason_id

    from source

)

select * from renamed
