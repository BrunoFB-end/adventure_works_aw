with 

source as (

    select * from {{ source('erp', 'sales_salesorderheadersalesreason') }}

),

renamed as (

    select
        cast(salesorderid as int) as salesorder_pk
        , cast(salesreasonid as int) as salesreason_id

    from source

)

select * from renamed
