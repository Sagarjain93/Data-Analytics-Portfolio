-- =====================================================
-- Coding Skill vs Placement
-- =====================================================

SELECT
    coding_skill_rating,
    t.placement_status,
    COUNT(*) AS student_count
FROM analytics.placement_features f
JOIN analytics.placement_targets t
ON f.student_id = t.student_id
GROUP BY coding_skill_rating, t.placement_status
ORDER BY coding_skill_rating;


-- =====================================================
-- Communication Skill vs Placement
-- =====================================================

SELECT
    communication_skill_rating,
    t.placement_status,
    COUNT(*) AS student_count
FROM analytics.placement_features f
JOIN analytics.placement_targets t
ON f.student_id = t.student_id
GROUP BY communication_skill_rating, t.placement_status
ORDER BY communication_skill_rating;


-- =====================================================
-- Internship Experience vs Placement Rate
-- =====================================================

SELECT
    f.internships_completed,
    t.placement_status,
    COUNT(*) AS student_count
FROM analytics.placement_features f
JOIN analytics.placement_targets t
ON f.student_id = t.student_id
GROUP BY internships_completed, t.placement_status
ORDER BY internships_completed;


-- =====================================================
-- Projects Completed vs Average Salary
-- =====================================================

SELECT
    projects_completed,
    ROUND(AVG(t.salary_lpa), 2) AS avg_salary
FROM analytics.placement_features f
JOIN analytics.placement_targets t
ON f.student_id = t.student_id
WHERE t.placement_status = 'Placed'
GROUP BY projects_completed
ORDER BY projects_completed;


-- =====================================================
-- Certifications vs Average Salary
-- =====================================================

SELECT
    certifications_count,
    ROUND(AVG(t.salary_lpa), 2) AS avg_salary
FROM analytics.placement_features f
JOIN analytics.placement_targets t
ON f.student_id = t.student_id
WHERE t.placement_status = 'Placed'
GROUP BY certifications_count
ORDER BY certifications_count;


-- =====================================================
-- Hackathon Participation vs Placement
-- =====================================================

SELECT
    hackathons_participated,
    t.placement_status,
    COUNT(*) AS student_count
FROM analytics.placement_features f
JOIN analytics.placement_targets t
ON f.student_id = t.student_id
GROUP BY hackathons_participated, t.placement_status
ORDER BY hackathons_participated;
