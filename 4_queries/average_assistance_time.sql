SELECT avg(assistance_requests.completed_at - assistance_requests.started_at) AS average_asignment_duration 
FROM assistance_requests
