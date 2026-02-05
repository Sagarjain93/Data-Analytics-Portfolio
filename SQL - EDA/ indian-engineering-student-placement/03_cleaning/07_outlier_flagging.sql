-- =====================================================
-- Add Outlier Flag Column
-- =====================================================

ALTER TABLE analytics.placement_features
ADD COLUMN has_outlier BOOLEAN DEFAULT FALSE;


-- =====================================================
-- Flag CGPA Outliers
-- =====================================================

UPDATE analytics.placement_features
SET has_outlier = TRUE
WHERE cgpa < 4 OR cgpa > 9.8;


-- =====================================================
-- Flag Study Hours Outliers
-- =====================================================

UPDATE analytics.placement_features
SET has_outlier = TRUE
WHERE study_hours_per_day > 14;


-- =====================================================
-- Flag Sleep Hours Outliers
-- =====================================================

UPDATE analytics.placement_features
SET has_outlier = TRUE
WHERE sleep_hours < 3 OR sleep_hours > 12;


-- =====================================================
-- Flag Projects Outliers
-- =====================================================

UPDATE analytics.placement_features
SET has_outlier = TRUE
WHERE projects_completed > 15;


-- =====================================================
-- Flag Internship Outliers
-- =====================================================

UPDATE analytics.placement_features
SET has_outlier = TRUE
WHERE internships_completed > 8;


-- =====================================================
-- Flag Certification Outliers
-- =====================================================

UPDATE analytics.placement_features
SET has_outlier = TRUE
WHERE certifications_count > 20;


-- =====================================================
-- Validation Check
-- =====================================================

SELECT has_outlier, COUNT(*) AS cnt
FROM analytics.placement_features
GROUP BY has_outlier;
