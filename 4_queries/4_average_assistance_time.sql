SELECT AVG(assistance_requests.completed_at - assistance_requests.started_at) AS average_assistance_time
FROM assistance_requests;