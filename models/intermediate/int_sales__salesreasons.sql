with

    sales_salesorderheadersalesreason as (
        select *
        from {{ref("stg_erp__sales_salesorderheadersalesreasons")}}
    )
    , sales_salesreason as (
        select *
        from {{ref('stg_erp__sales_salesreasons')}}
    )
    , joined as (
        select
            sales_salesorderheadersalesreason.salesorder_pk
            , sales_salesorderheadersalesreason.salesreason_id
            , sales_salesreason.salesreason_name
            , sales_salesreason.reason_type
        from sales_salesreason
        left join sales_salesorderheadersalesreason on sales_salesreason.salesreason_pk = sales_salesorderheadersalesreason.salesreason_id
        
    )

select *
from joined