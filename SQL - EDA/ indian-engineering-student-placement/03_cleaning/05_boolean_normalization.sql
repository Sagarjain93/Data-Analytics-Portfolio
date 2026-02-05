-- =====================================================
-- Boolean Normalization
-- =====================================================

-- Convert Internet Access
ALTER TABLE analytics.placement_features
ALTER COLUMN has_internet_access TYPE BOOLEAN
USING LOWER(has_internet_access) = 'yes';


-- Convert Part Time Job
ALTER TABLE analytics.placement_features
ALTER COLUMN has_part_time_job TYPE BOOLEAN
USING LOWER(has_part_time_job) = 'yes';


-- Convert Extracurricular Involvement
ALTER TABLE analytics.placement_features
ALTER COLUMN extracurricular_involvement TYPE BOOLEAN
USING LOWER(extracurricular_involvement) = 'yes';


-- =====================================================
-- Validation Check
-- =====================================================

SELECT
    has_internet_access,
    COUNT(*) AS cnt
FROM analytics.placement_features
GROUP BY has_internet_access;


SELECT
    has_part_time_job,
    COUNT(*) AS cnt
FROM analytics.placement_features
GROUP BY has_part_time_job;


SELECT
    extracurricular_involvement,
    COUNT(*) AS cnt
FROM analytics.placement_features
GROUP BY extracurricular_involvement;
