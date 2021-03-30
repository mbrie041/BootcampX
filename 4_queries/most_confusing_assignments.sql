-- SELECT assignments.id as id, assignments.day, assignments.chapter, assignments.name, assistance_requests.* as total_request
-- FROM assignments
-- JOIN assistance_requests ON assignment_id = assignments.id
-- ORDER BY assistance_requests.* DESC;


SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;