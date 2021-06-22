SELECT count(assistance_requests.*) as total_assistance, students.name as name
FROM assistance_requests 
INNER JOIN students ON student_id = students.id 
GROUP BY name
HAVING students.name = 'Elliot Dickinson';