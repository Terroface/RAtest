{{
    config(
        materialized = "table"
    )
}}

-- remove superflous columns
select
    id,
    tag_name
from
    `bigquery-public-data.stackoverflow.tags`