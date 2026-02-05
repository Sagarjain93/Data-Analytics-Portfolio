-- =====================================================
-- CGPA + Internship Combination vs Placement
-- =====================================================

WITH combined_profile AS (
    SELECT
        student_id,
        CASE
            WHEN cgpa >= 8 THEN 'High CGPA'
            ELSE 'Moderate/Low CGPA'
        END AS cgpa_group,
        CASE
            WHEN internships_completed >= 2 THEN 'Strong Internship'
            WHEN internships_completed = 1 THEN 'Basic Internship'
            ELSE 'No Internship'
        END AS internship_group
    FROM analytics.placement_features
)
SELECT
    cp.cgpa_group,
    cp.internship_group,
    t.placement_status,
    COUNT(*) AS student_count
FROM combined_profile cp
JOIN analytics.placement_targets t
ON cp.student_id = t.student_id
GROUP BY cp.cgpa_group, cp.internship_group, t.placement_status
ORDER BY cp.cgpa_group, cp.internship_group;


-- =====================================================
-- Coding Skill + Projects vs Average Salary
-- =====================================================

WITH skill_project_profile AS (
    SELECT
        student_id,
        CASE
            WHEN coding_skill_rating >= 8 THEN 'High Coding Skill'
            WHEN coding_skill_rating >= 6 THEN 'Moderate Coding Skill'
            ELSE 'Low Coding Skill'
        END AS coding_group,
        CASE
            WHEN projects_completed >= 4 THEN 'Project Heavy'
            WHEN projects_completed >= 2 THEN 'Moderate Projects'
            ELSE 'Minimal Projects'
        END AS project_group
    FROM analytics.placement_features
)
SELECT
    spp.coding_group,
    spp.project_group,
    ROUND(AVG(t.salary_lpa), 2) AS avg_salary
FROM skill_project_profile spp
JOIN analytics.placement_targets t
ON spp.student_id = t.student_id
WHERE t.placement_status = 'Placed'
GROUP BY spp.coding_group, spp.project_group
ORDER BY spp.coding_group, spp.project_group;


-- =====================================================
-- Exposure Strength vs Placement Success
-- =====================================================

WITH exposure_strength AS (
    SELECT
        student_id,
        internships_completed +
        projects_completed +
        certifications_count AS exposure_score
    FROM analytics.placement_features
)
SELECT
    CASE
        WHEN exposure_score >= 8 THEN 'High Exposure'
        WHEN exposure_score >= 4 THEN 'Moderate Exposure'
        ELSE 'Low Exposure'
    END AS exposure_category,
    t.placement_status,
    COUNT(*) AS student_count
FROM exposure_strength es
JOIN analytics.placement_targets t
ON es.student_id = t.student_id
GROUP BY exposure_category, t.placement_status
ORDER BY exposure_category;
