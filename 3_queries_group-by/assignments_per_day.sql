SELECT assignments.day AS cohort_day, 
count(assignments.name) AS total_assignments
FROM assignments 
GROUP BY assignments.day
ORDER BY assignments.day ASC;