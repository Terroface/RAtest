-- join and aggregate
select
    extract(month from q.creation_date) as question_month,
    count(q.id) as question_count, -- distinct superflous; unique per record
    count(accepted_answer_id) as accepted_answer_count, -- mostly unique, apart from 4 answer_ids. Don't have to be though
    answer_count,
    comment_count,
    owner_user_id,
    score,
    view_count,
    --tags, only uncomment to sense check
    first_tag
from
    {{ ref('stg_posts_questions') }} q