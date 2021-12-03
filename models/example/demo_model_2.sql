
-- Use the `ref` function to select from other models

select *
from {{ ref('demo_model_1') }}
where id = 1
