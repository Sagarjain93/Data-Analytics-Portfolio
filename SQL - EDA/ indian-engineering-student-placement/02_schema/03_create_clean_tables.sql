CREATE TABLE analytics.placement_features AS
SELECT
    student_id,
    -- demographics & background
    gender,
    branch,
    city_tier,
    family_income_level,
    internet_access       AS has_internet_access,
    part_time_job         AS has_part_time_job,
    extracurricular_involvement,
    -- academic performance
    cgpa,
    tenth_percentage,
    twelfth_percentage,
    attendance_percentage,
    backlogs              AS backlogs_count,
    -- study & lifestyle
    study_hours_per_day,
    sleep_hours,
    stress_level,
    -- skills
    coding_skill_rating,
    communication_skill_rating,
    aptitude_skill_rating,
    -- practical exposure
    projects_completed,
    internships_completed,
    hackathons_participated,
    certifications_count
FROM raw.raw_placement_features;

CREATE TABLE analytics.placement_targets AS
SELECT
    student_id,
    placement_status,
    salary_lpa
FROM raw.raw_placement_targets;

SELECT COUNT(*) FROM analytics.placement_features;
SELECT COUNT(*) FROM analytics.placement_targets;
