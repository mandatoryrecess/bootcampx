SELECT cohorts.name AS name, count(assignment_submissions.assignment_id) AS total_submissions
FROM cohorts
JOIN students ON cohorts.id = cohort_id 
JOIN assignment_submissions ON students.id = student_id 
GROUP BY cohorts.name 
ORDER BY total_submissions DESC