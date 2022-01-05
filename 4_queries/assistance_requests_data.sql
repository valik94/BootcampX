SELECT teachers.name, students.name, assignments.name, (started_at - completed_at) as duration
FROM assistance_requests
JOIN teachers on teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY (started_at - completed_at)