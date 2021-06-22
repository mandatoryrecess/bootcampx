SELECT cohorts.name AS cohort_name, count(cohort_id) AS student_count
FROM students
JOIN cohorts ON cohorts.id = cohort_id 
GROUP BY cohort_name
HAVING count(students.*) >= 18
ORDER BY student_count DESC;