-- =====================================================
-- Standardize Family Income Level Categories
-- =====================================================

UPDATE analytics.placement_features
SET family_income_level =
    CASE
        WHEN LOWER(family_income_level) LIKE 'low%' THEN 'Low'
        WHEN LOWER(family_income_level) LIKE 'med%' THEN 'Medium'
        WHEN LOWER(family_income_level) LIKE 'high%' THEN 'High'
        ELSE family_income_level
    END;


-- =====================================================
-- Validation Check
-- =====================================================

SELECT family_income_level, COUNT(*) AS cnt
FROM analytics.placement_features
GROUP BY family_income_level
ORDER BY cnt DESC;

SELECT DISTINCT stress_level
FROM analytics.placement_features
ORDER BY stress_level;
