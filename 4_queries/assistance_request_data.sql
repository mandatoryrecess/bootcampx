SELECT    teachers.name AS teacher, 
          students.name AS student, 
          assignments.name AS assignment,
          assistance_requests.completed_at - assistance_requests.started_at AS duration
FROM assistance_requests 
          INNER JOIN teachers ON teacher_id = teachers.id 
          INNER JOIN students ON student_id = students.id
          INNER JOIN assignments ON assignment_id = assignments.id
ORDER BY duration ASC
LIMIT 10