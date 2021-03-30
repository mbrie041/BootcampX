-- SELECT day, count(name) as total_assignments
-- FROM assignment
-- GROUP BY day;

SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
ORDER BY day;