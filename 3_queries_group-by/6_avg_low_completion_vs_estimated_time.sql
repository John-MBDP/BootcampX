SELECT students.name AS student, avg(assignment_submissions.duration) AS average_assignment_duration, avg(assignments.duration) as average_estimated_duration
FROM assignment_submissions 
JOIN students ON students.id=student_id
JOIN assignments ON assignment_submissions.assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration ASC;