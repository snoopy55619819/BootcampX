SELECT cohorts.name AS cohort_name, COUNT(students.*) AS student_count
FROM students
INNER JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING COUNT(students.*) >= 18
ORDER BY student_count;