-- remove superflous columns and extract first tag
select
    id
    title,
    body,
    accepted_answer_id,
    answer_count,
    comment_count,
    creation_date,
    owner_user_id,
    score,
    view_count,
    --tags, only uncomment to sense check
    left(tags,case when STRPOS(tags, '|') = 0 then LENGTH(tags) else STRPOS(tags, '|') - 1 end) as first_tag
from
    `bigquery-public-data.stackoverflow.posts_questions`