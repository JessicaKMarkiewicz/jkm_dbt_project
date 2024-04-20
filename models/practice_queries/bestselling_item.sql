select
    name,
    count(id) as total_sold
from {{ ref('stg_order_lines') }}
group by name
order by total_sold desc
limit 1