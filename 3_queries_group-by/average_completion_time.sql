SELECT students.name AS student, avg(assignment_submissions.duration) as average_asignment_duration 
FROM students 
JOIN assignment_submissions ON students.id = student_id 
WHERE end_date IS NULL
GROUP BY students.name 
ORDER BY average_asignment_duration DESC
LIMIT 5
