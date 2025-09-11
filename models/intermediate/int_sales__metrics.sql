with
    
    order_headers as (
        select * 
        from {{ ref('stg_erp__sales_salesorderheaders') }}
    )
    , order_details as (
        select *
        from {{ ref('stg_erp__sales_salesorderdetails') }}
    )
    , joined as (
        select
             order_details.sk_orderdetail
            , order_details.salesorder_id
            , order_details.salesorderdetail_id
            , order_details.product_id
            , order_headers.customer_id
            , order_headers.shiptoaddress_id
            , order_headers.creditcard_id
            , order_headers.territory_id
            , order_details.order_qty
            , order_details.unit_price
            , order_details.unitprice_discount
            , order_headers.order_date
            , order_headers.order_status
            , order_headers.order_subtotal  
        from order_details
        inner join order_headers on order_details.salesorder_id = order_headers.salesorder_id
    )
select *
from joined