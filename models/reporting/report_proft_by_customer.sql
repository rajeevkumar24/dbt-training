select 
    customerid,
    segment,
    country,
    sum(orderprofit)
from {{ ref('stg_orders') }}
group by 
    customerid,
    segment,
    country