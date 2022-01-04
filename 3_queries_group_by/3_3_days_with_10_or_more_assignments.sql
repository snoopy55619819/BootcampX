SELECT day, count(assignments.id) AS total_assignments
FROM assignments
GROUP BY day
HAVING count(assignments.id) >= 10
ORDER BY day;