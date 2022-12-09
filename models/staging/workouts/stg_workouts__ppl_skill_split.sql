with ppl as (
    select
        format_date('%Y-%m-%d', date(Date)) as date,
        Scapular_Shrugs__10_20reps_ as scapular_shrugs,
        Cat_Cow__10_20reps_ as cat_cow,
        Plank__with_full_protraction_ as plank,
        Side_Plank__both_sides__ as side_plank,
        Reverse_Plank__with_full_retraction_ as reverse_plank,
        Hollow_Hold as hollow_hold,
        Reverse_Hollow_Hold as reverse_hollow_hold,
        Floor_L_Sit as floor_l_sit,
        Support_Hold as support_hold,
        Handstand_practice as handstand_practice,
        Dips_progression as dips_progression,
        Handstand_Pushup_progression as handstand_pushup_progression,
        One_arm_pushup_progression as one_arm_pushup_progression,
        Planche_progression as planche_progression,
        One_arm_chinup_progression as one_arm_chinup_progression,
        Muscle_up_progressions as muscle_up_progression,
        Row_Progressions as row_progression
    from {{ source('raw_workouts', 'ppl_skill_split')}}
)

select * from ppl