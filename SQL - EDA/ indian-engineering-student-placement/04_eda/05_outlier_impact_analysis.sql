-- =====================================================
-- Outlier vs Placement Rate
-- =====================================================

SELECT
    has_outlier,
    t.placement_status,
    COUNT(*) AS student_count,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (PARTITION BY has_outlier),
        2
    ) AS percentage
FROM analytics.placement_features f
JOIN analytics.placement_targets t
ON f.student_id = t.student_id
GROUP BY has_outlier, t.placement_status
ORDER BY has_outlier;


-- =====================================================
-- Outlier vs Average Salary
-- =====================================================

SELECT
    has_outlier,
    ROUND(AVG(t.salary_lpa), 2) AS avg_salary
FROM analytics.placement_features f
JOIN analytics.placement_targets t
ON f.student_id = t.student_id
WHERE t.placement_status = 'Placed'
GROUP BY has_outlier;


-- =====================================================
-- Outlier Distribution Across Academic Performance
-- =====================================================

SELECT
    CASE
        WHEN cgpa >= 9 THEN '9+'
        WHEN cgpa >= 8 THEN '8-8.99'
        WHEN cgpa >= 7 THEN '7-7.99'
        WHEN cgpa >= 6 THEN '6-6.99'
        ELSE '<6'
    END AS cgpa_bucket,
    has_outlier,
    COUNT(*) AS student_count
FROM analytics.placement_features
GROUP BY cgpa_bucket, has_outlier
ORDER BY cgpa_bucket;


-- =====================================================
-- Outlier Distribution Across Practical Exposure
-- =====================================================

SELECT
    internships_completed,
    has_outlier,
    COUNT(*) AS student_count
FROM analytics.placement_features
GROUP BY internships_completed, has_outlier
ORDER BY internships_completed;
