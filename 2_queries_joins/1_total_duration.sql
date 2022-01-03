SELECT sum(durations) as total_duration
FROM students JOIN assignments_submissions
on students.id = assignment_submissions.student_id
WHERE students.name = "Ibrahim Schimmel";