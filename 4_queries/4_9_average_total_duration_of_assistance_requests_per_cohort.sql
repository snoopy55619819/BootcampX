SELECT AVG(a_t_d.total_duration) as average_total_duration
FROM (
  SELECT cohorts.name, SUM(completed_at - started_at) AS total_duration
  FROM assistance_requests a_r
  JOIN students ON students.id = a_r.student_id
  JOIN cohorts ON cohorts.id = students.cohort_id
  GROUP BY cohorts.name
  ORDER BY total_duration) a_t_d;