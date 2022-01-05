SELECT assignments.day, chapter, count(*) as number_of_assignments, sum(duration) as duration
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day;