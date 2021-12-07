-- output
select
    extract(month from questions.creation_date) as question_month,
    questions.first_tag,
    count(questions.id) as question_count, -- distinct superflous; unique per record
    count(questions.accepted_answer_id) as accepted_answer_count, 
    -- number of questions with accepted answers
    -- mostly unique, apart from 4 answer_ids. Don't have to be unique, though
    sum(questions.answer_count) as answer_count,
    -- number of answers (accepted and not accepted ones)
    sum(questions.comment_count) as comment_count,
    sum(questions.score) as score_sum,
    sum(questions.view_count) as view_count
from
    {{ ref('stg_posts_questions') }} questions
group by 1,2
order by 1,2