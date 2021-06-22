SELECT students.name, cohort_id
FROM students 
FULL OUTER JOIN cohorts ON cohorts.id = cohort_id