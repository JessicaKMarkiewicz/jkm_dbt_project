select 
    first_name,
    last_name,
    count(orders.id) as total_orders
from {{ ref('customers') }}
left join {{ ref('orders') }}
    on customers.id = orders.customer_id
where status = 'completed'
group by first_name, last_name
order by total_orders desc