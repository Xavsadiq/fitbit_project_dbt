with RR as (
    select
        format_date('%Y-%m-%d', date(Date)) as date,
        Yuri_s_Shoulder_Band_Warmup as yuris_shoulder_band,
        Squat_Sky_Reaches as squat_sky_reaches,
        GMB_Wrist_Prep as gmb_wrist_prep,
        Deadbugs as deadbugs,
        Arch_Hangs as arch_hangs,
        Support_Hold as support_hold,
        Easier_Squat_Progression as easier_squat_progression,
        Easier_Hinge_Progression as easier_hinge_progression,
        Pull_up_progression as pull_up_progression,
        Squat_Progression as squat_progression,
        Dip_Progression as dip_progression,
        Hinge_Progression as hinge_progression,
        Row_Progression as row_progression,
        Pushup_progression as pushup_progression,
        Anti_extension_Progression as anti_extension_progression,
        Anti_rotation_Progression as anti_rotation_progression,
        Extension_Progression as extension_progression,
        Start_Time as start_time,
        End_Time as end_time,
        Duration as duration
    from {{ source('raw_workouts', 'recommended_routine') }}
    where date is not null
)  

select * from RR