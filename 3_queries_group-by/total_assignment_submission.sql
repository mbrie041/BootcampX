-- SELECT cohort.name AS cohort, count(assignment_submissions.*) AS total_submissions
-- FROM cohorts
-- JOIN students BY students.name = cohorts.name
-- JOIN assignment_submissions BY student_id = students.is
-- ORDER BY count(assignment_submissions.*);

SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;