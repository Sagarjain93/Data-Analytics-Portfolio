CREATE TABLE raw.raw_placement_features (
    student_id INT,
    gender TEXT,
    branch TEXT,
    cgpa NUMERIC,
    tenth_percentage NUMERIC,
    twelfth_percentage NUMERIC,
    backlogs INT,
    study_hours_per_day NUMERIC,
    attendance_percentage NUMERIC,
    projects_completed INT,
    internships_completed INT,
    coding_skill_rating INT,
    communication_skill_rating INT,
    aptitude_skill_rating INT,
    hackathons_participated INT,
    certifications_count INT,
    sleep_hours NUMERIC,
    stress_level INT,
    part_time_job TEXT,
    family_income_level TEXT,
    city_tier TEXT,
    internet_access TEXT,
    extracurricular_involvement TEXT
);

CREATE TABLE raw.raw_placement_targets (
    student_id INT,
    placement_status TEXT,
    salary_lpa NUMERIC
);