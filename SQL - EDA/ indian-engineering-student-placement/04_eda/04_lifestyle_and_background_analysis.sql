-- =====================================================
-- Study Hours vs Placement
-- =====================================================

SELECT
    study_hours_per_day,
    t.placement_status,
    COUNT(*) AS student_count
FROM analytics.placement_features f
JOIN analytics.placement_targets t
ON f.student_id = t.student_id
GROUP BY study_hours_per_day, t.placement_status
ORDER BY study_hours_per_day;


-- =====================================================
-- Sleep Hours vs Average Salary
-- =====================================================

SELECT
    sleep_hours,
    ROUND(AVG(t.salary_lpa), 2) AS avg_salary
FROM analytics.placement_features f
JOIN analytics.placement_targets t
ON f.student_id = t.student_id
WHERE t.placement_status = 'Placed'
GROUP BY sleep_hours
ORDER BY sleep_hours;


-- =====================================================
-- Stress Level vs Placement
-- =====================================================

SELECT
    stress_level,
    t.placement_status,
    COUNT(*) AS student_count
FROM analytics.placement_features f
JOIN analytics.placement_targets t
ON f.student_id = t.student_id
GROUP BY stress_level, t.placement_status
ORDER BY stress_level;


-- =====================================================
-- City Tier vs Placement
-- =====================================================

SELECT
    city_tier,
    t.placement_status,
    COUNT(*) AS student_count
FROM analytics.placement_features f
JOIN analytics.placement_targets t
ON f.student_id = t.student_id
GROUP BY city_tier, t.placement_status
ORDER BY city_tier;


-- =====================================================
-- Family Income Level vs Placement
-- =====================================================

SELECT
    family_income_level,
    t.placement_status,
    COUNT(*) AS student_count
FROM analytics.placement_features f
JOIN analytics.placement_targets t
ON f.student_id = t.student_id
GROUP BY family_income_level, t.placement_status
ORDER BY family_income_level;


-- =====================================================
-- Internet Access vs Placement
-- =====================================================

SELECT
    has_internet_access,
    t.placement_status,
    COUNT(*) AS student_count
FROM analytics.placement_features f
JOIN analytics.placement_targets t
ON f.student_id = t.student_id
GROUP BY has_internet_access, t.placement_status;


-- =====================================================
-- Part Time Job vs Placement
-- =====================================================

SELECT
    has_part_time_job,
    t.placement_status,
    COUNT(*) AS student_count
FROM analytics.placement_features f
JOIN analytics.placement_targets t
ON f.student_id = t.student_id
GROUP BY has_part_time_job, t.placement_status;


-- =====================================================
-- Extracurricular Activity vs Placement
-- =====================================================

SELECT
    extracurricular_involvement,
    t.placement_status,
    COUNT(*) AS student_count
FROM analytics.placement_features f
JOIN analytics.placement_targets t
ON f.student_id = t.student_id
GROUP BY extracurricular_involvement, t.placement_status;
