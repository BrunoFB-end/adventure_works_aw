with 

source as (

    select * from {{ source('erp', 'sales_salesreason') }}

),

renamed as (

    select
        cast(salesreasonid as int) as salesreason_id
        , cast(name as varchar) as salesreason_name
        , cast(reasontype as varchar) as reason_type

    from source

)

select * from renamed
