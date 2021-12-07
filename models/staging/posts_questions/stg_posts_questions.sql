-- remove superflous columns and extract first tag
select
    id,
    creation_date,
    accepted_answer_id,
    answer_count,
    comment_count,
    score,
    view_count,
    left(tags,case when STRPOS(tags, '|') = 0 then LENGTH(tags) else STRPOS(tags, '|') - 1 end) as first_tag
from
    `bigquery-public-data.stackoverflow.posts_questions`