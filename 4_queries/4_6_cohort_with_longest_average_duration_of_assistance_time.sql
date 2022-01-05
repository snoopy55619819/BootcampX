SELECT cohorts.name, AVG(a_r.completed_at - a_r.started_at) AS average_assistance_time
FROM assistance_requests a_r
JOIN students ON students.id = a_r.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;