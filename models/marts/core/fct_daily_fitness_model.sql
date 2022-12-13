with heart_rate as (
    select * from {{ ref('stg_fitbit__heart_rate') }}
),

workout_days as (
    select * from {{ ref('fct_workout_days') }}
),

final as (
    select 
        hr.date,
        hr.resting_heart_rate,
        hr.out_of_range_minutes,
        hr.fat_burn_minutes,
        hr.cardio_minutes,
        hr.peak_minutes,
        coalesce(wd.type, "None") as workout_type
    from heart_rate hr
    left join workout_days wd
    on date(hr.date) = date(wd.date)
    order by hr.date desc
)

select * from final