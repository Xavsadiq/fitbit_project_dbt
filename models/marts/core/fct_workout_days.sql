with rr as (
    select date from {{ ref('stg_workouts__recommended_routine') }}
),

ppl as (
    select date from {{ ref('stg_workouts__ppl_skill_split') }}
),

combined as (
    (select date from rr)
    union all
    (select date from ppl)
)

select * from combined