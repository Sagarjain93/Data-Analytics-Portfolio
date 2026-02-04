-- =====================================================
-- NULL Checks: Key columns
-- =====================================================

SELECT COUNT(*) AS null_student_id
FROM analytics.placement_features
WHERE student_id IS NULL;

SELECT COUNT(*) AS null_student_id
FROM analytics.placement_targets
WHERE student_id IS NULL;


-- =====================================================
-- NULL Checks: Target columns
-- =====================================================

SELECT
    COUNT(*) FILTER (WHERE placement_status IS NULL) AS null_placement_status,
    COUNT(*) FILTER (WHERE salary_lpa IS NULL) AS null_salary
FROM analytics.placement_targets;


-- =====================================================
-- Logical Consistency Checks
-- =====================================================

-- Salary present but student not placed
SELECT COUNT(*) AS salary_without_placement
FROM analytics.placement_targets
WHERE placement_status <> 'Placed'
  AND salary_lpa IS NOT NULL;


-- Placed but salary missing
SELECT COUNT(*) AS placed_without_salary
FROM analytics.placement_targets
WHERE placement_status = 'Placed'
  AND salary_lpa IS NULL;


-- =====================================================
-- Range Checks: Academic & lifestyle values
-- =====================================================

-- Invalid CGPA values
SELECT COUNT(*) AS invalid_cgpa
FROM analytics.placement_features
WHERE cgpa < 0 OR cgpa > 10;


-- Invalid percentage values
SELECT COUNT(*) AS invalid_percentages
FROM analytics.placement_features
WHERE tenth_percentage < 0 OR tenth_percentage > 100
   OR twelfth_percentage < 0 OR twelfth_percentage > 100
   OR attendance_percentage < 0 OR attendance_percentage > 100;


-- Negative or unrealistic values
SELECT COUNT(*) AS invalid_numeric_values
FROM analytics.placement_features
WHERE backlogs_count < 0
   OR study_hours_per_day < 0
   OR sleep_hours < 0;
