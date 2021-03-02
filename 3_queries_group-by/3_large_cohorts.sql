SELECT cohorts.name as cohort_name, count(students) as student_count
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohorts.id
HAVING count(students) >= 18
ORDER BY count(students);