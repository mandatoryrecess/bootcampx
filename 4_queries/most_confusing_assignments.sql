SELECT assignments.id AS id, 
assignments.name AS name, 
assignments.chapter AS chapter, 
count(assistance_requests.*) AS total_request 
FROM assignments 
INNER JOIN assistance_requests ON assignments.id = assignment_id 
GROUP BY assignments.id
ORDER BY total_request DESC
Limit 5;