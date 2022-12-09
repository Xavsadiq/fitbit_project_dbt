with heart_rate as (
    select
        date(date) as date,
        CAST(resting_heart_rate AS NUMERIC) as resting_heart_rate,
        CAST(json_value(out_of_range_zone, '$.minutes') as NUMERIC) as out_of_range_minutes,
        CAST(json_value(fat_burn_zone, '$.minutes') as NUMERIC) as fat_burn_minutes,
        CAST(json_value(cardio_zone, '$.minutes') as NUMERIC) as cardio_minutes,
        CAST(json_value(peak_zone, '$.minutes') as NUMERIC) as peak_minutes
    from portfolio-tracker-317511.raw_fitbit.heart_rate
)

select * from heart_rate