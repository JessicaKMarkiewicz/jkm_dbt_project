with order_lines as (
    select *
    from {{ ref('order_lines') }}
),

final as (
    select
        id,
        order_id,
        index as order_line_id,
        name,
        amount as price
    from order_lines
)

select *
from final
