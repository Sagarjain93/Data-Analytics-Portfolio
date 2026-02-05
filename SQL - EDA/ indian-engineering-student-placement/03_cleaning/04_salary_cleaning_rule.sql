
-- =====================================================
-- Cleaning Rule: Salary must be NULL for non-placed students
-- =====================================================

UPDATE analytics.placement_targets
SET salary_lpa = NULL
WHERE placement_status <> 'Placed'
  AND salary_lpa IS NOT NULL;



-- =====================================================
-- Validation Check
-- =====================================================

SELECT COUNT(*) AS remaining_invalid_salary_records
FROM analytics.placement_targets
WHERE placement_status <> 'Placed'
  AND salary_lpa IS NOT NULL;