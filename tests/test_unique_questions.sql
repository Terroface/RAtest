with agg as (
    select
        id,
        count(*) as records
    from
        {{ ref('stg_posts_questions') }}
    group by 1
)
select
    *
from
    agg
where
    records > 1
