-- =====================================================
-- Data Quality Checks: Row counts
-- =====================================================

SELECT COUNT(*) AS feature_rows
FROM analytics.placement_features;

SELECT COUNT(*) AS target_rows
FROM analytics.placement_targets;


-- =====================================================
-- Data Quality Checks: Duplicate student IDs
-- =====================================================

SELECT student_id, COUNT(*) AS cnt
FROM analytics.placement_features
GROUP BY student_id
HAVING COUNT(*) > 1;

SELECT student_id, COUNT(*) AS cnt
FROM analytics.placement_targets
GROUP BY student_id
HAVING COUNT(*) > 1;


-- =====================================================
-- Data Quality Checks: Feature–target mismatch
-- =====================================================

SELECT COUNT(*) AS unmatched_features
FROM analytics.placement_features f
LEFT JOIN analytics.placement_targets t
ON f.student_id = t.student_id
WHERE t.student_id IS NULL;

SELECT COUNT(*) AS unmatched_targets
FROM analytics.placement_targets t
LEFT JOIN analytics.placement_features f
ON t.student_id = f.student_id
WHERE f.student_id IS NULL;
