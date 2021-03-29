-- SELECT students.name as student_name, duration as assignment_duration
-- WHERE '%Ibrahim Schimmel'
-- FROM students INNER JOIN assignments ON students.name = assignments.name;

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';