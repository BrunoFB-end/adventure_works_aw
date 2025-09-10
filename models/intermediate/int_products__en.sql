with 

    products as (
        select *
        from {{ ref('stg_erp__production_product') }}
    )
    , subcategories as (
        select *
        from {{ ref('stg_erp__production_productsubcategory') }}
    )
    , categories as (
        select *
        from {{ ref('stg_erp__production_productcategory') }}
    )
    , joined as(
        select
            products.productid_pk
            , products.product_name
            , products.product_number
            , products.product_subcategory_id
            , subcategories.subcategory_name
            , subcategories.product_category_id
            , categories.category_name
        from products
        left join subcategories on products.product_subcategory_id = subcategories.product_subcategory_id_pk
        left join categories on subcategories.product_category_id = categories.product_category_id_pk
    )

select *
from joined
