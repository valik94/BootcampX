SELECT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests) as total_assistances
FROM assistance_requests
JOIN cohorts ON cohorts.id = cohort_id 
JOIN students ON students.id = student_id
JOIN teachers ON teacher.id = teacher_id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;