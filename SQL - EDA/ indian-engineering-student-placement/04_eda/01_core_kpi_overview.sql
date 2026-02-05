-- =====================================================
-- Total Students
-- =====================================================

SELECT COUNT(*) AS total_students
FROM analytics.placement_features;


-- =====================================================
-- Placement Rate
-- =====================================================

SELECT
    placement_status,
    COUNT(*) AS student_count,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (),
        2
    ) AS percentage
FROM analytics.placement_targets
GROUP BY placement_status
ORDER BY percentage DESC;


-- =====================================================
-- Average Salary (Placed Students Only)
-- =====================================================

SELECT
    ROUND(AVG(salary_lpa), 2) AS avg_salary_lpa
FROM analytics.placement_targets
WHERE placement_status = 'Placed';


-- =====================================================
-- Salary Distribution Statistics
-- =====================================================

SELECT
    MIN(salary_lpa) AS min_salary,
    PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY salary_lpa) AS q1_salary,
    PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY salary_lpa) AS median_salary,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY salary_lpa) AS q3_salary,
    MAX(salary_lpa) AS max_salary
FROM analytics.placement_targets
WHERE placement_status = 'Placed';
