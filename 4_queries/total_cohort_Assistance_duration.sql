SELECT  cohorts.name AS cohort, 
        sum(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration 
FROM assistance_requests 
       JOIN students ON student_id = students.id
       JOIN cohorts ON cohort_id = cohorts.id 
GROUP BY cohorts.name
ORDEr BY total_duration;