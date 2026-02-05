-- =====================================================
-- CGPA Bucket vs Placement Rate
-- =====================================================

WITH cgpa_bucket AS (
    SELECT
        student_id,
        CASE
            WHEN cgpa >= 9 THEN '9+'
            WHEN cgpa >= 8 THEN '8-8.99'
            WHEN cgpa >= 7 THEN '7-7.99'
            WHEN cgpa >= 6 THEN '6-6.99'
            ELSE '<6'
        END AS cgpa_range
    FROM analytics.placement_features
)
SELECT
    c.cgpa_range,
    t.placement_status,
    COUNT(*) AS student_count
FROM cgpa_bucket c
JOIN analytics.placement_targets t
ON c.student_id = t.student_id
GROUP BY c.cgpa_range, t.placement_status
ORDER BY c.cgpa_range;


-- =====================================================
-- CGPA Bucket vs Average Salary
-- =====================================================

WITH cgpa_bucket AS (
    SELECT
        student_id,
        CASE
            WHEN cgpa >= 9 THEN '9+'
            WHEN cgpa >= 8 THEN '8-8.99'
            WHEN cgpa >= 7 THEN '7-7.99'
            WHEN cgpa >= 6 THEN '6-6.99'
            ELSE '<6'
        END AS cgpa_range
    FROM analytics.placement_features
)
SELECT
    c.cgpa_range,
    ROUND(AVG(t.salary_lpa), 2) AS avg_salary
FROM cgpa_bucket c
JOIN analytics.placement_targets t
ON c.student_id = t.student_id
WHERE t.placement_status = 'Placed'
GROUP BY c.cgpa_range
ORDER BY c.cgpa_range;


-- =====================================================
-- 10th & 12th Percentage vs Placement
-- =====================================================

SELECT
    CASE
        WHEN tenth_percentage >= 85 THEN '85+'
        WHEN tenth_percentage >= 70 THEN '70-84'
        ELSE '<70'
    END AS tenth_bucket,
    CASE
        WHEN twelfth_percentage >= 85 THEN '85+'
        WHEN twelfth_percentage >= 70 THEN '70-84'
        ELSE '<70'
    END AS twelfth_bucket,
    t.placement_status,
    COUNT(*) AS student_count
FROM analytics.placement_features f
JOIN analytics.placement_targets t
ON f.student_id = t.student_id
GROUP BY tenth_bucket, twelfth_bucket, t.placement_status
ORDER BY tenth_bucket, twelfth_bucket;
