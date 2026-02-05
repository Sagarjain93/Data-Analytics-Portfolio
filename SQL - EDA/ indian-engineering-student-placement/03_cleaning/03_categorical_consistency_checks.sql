-- =====================================================
-- Gender Value Distribution
-- =====================================================

SELECT gender, COUNT(*) AS cnt
FROM analytics.placement_features
GROUP BY gender
ORDER BY cnt DESC;


-- =====================================================
-- Branch Value Distribution
-- =====================================================

SELECT branch, COUNT(*) AS cnt
FROM analytics.placement_features
GROUP BY branch
ORDER BY cnt DESC;

-- =====================================================
-- City Tier Distribution
-- =====================================================

SELECT city_tier, COUNT(*) AS cnt
FROM analytics.placement_features
GROUP BY city_tier
ORDER BY cnt DESC;

-- =====================================================
-- Family Income Level Distribution
-- =====================================================

SELECT family_income_level, COUNT(*) AS cnt
FROM analytics.placement_features
GROUP BY family_income_level
ORDER BY cnt DESC;


-- =====================================================
-- Internet Access Distribution
-- =====================================================

SELECT has_internet_access, COUNT(*) AS cnt
FROM analytics.placement_features
GROUP BY has_internet_access
ORDER BY cnt DESC;


-- =====================================================
-- Part Time Job Distribution
-- =====================================================

SELECT has_part_time_job, COUNT(*) AS cnt
FROM analytics.placement_features
GROUP BY has_part_time_job
ORDER BY cnt DESC;


-- =====================================================
-- Extracurricular Involvement Distribution
-- =====================================================

SELECT extracurricular_involvement, COUNT(*) AS cnt
FROM analytics.placement_features
GROUP BY extracurricular_involvement
ORDER BY cnt DESC;

-- =====================================================
-- Placement Status Distribution
-- =====================================================

SELECT placement_status, COUNT(*) AS cnt
FROM analytics.placement_targets
GROUP BY placement_status
ORDER BY cnt DESC;
