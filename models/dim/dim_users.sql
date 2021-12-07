-- remove superflous columns
select
    id,
    display_name,
    creation_date,
    last_access_date,
    location,
    reputation,
    up_votes,
    down_votes,
    views
from
    `bigquery-public-data.stackoverflow.users`