with heart_rate as (
    select * from {{ ref('stg_fitbit__heart_rate') }}
),

workout_days as (
    select * from {{ ref('fct_workout_days') }}
),

final as (
    select 
        hr.*,
        if(date(hr.date) = date(wd.date), 1, 0) as workout_days
    from heart_rate hr
    left join workout_days wd
    on date(hr.date) = date(wd.date)
    order by hr.date desc
)

select * from final