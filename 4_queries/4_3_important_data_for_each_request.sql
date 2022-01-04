SELECT teachers.name AS teacher,
  students.name AS student,
  assignments.name AS assignment,
  (a_r.completed_at - a_r.started_at) AS duration
FROM assistance_requests a_r
JOIN students ON students.id = a_r.student_id
JOIN teachers ON teachers.id = a_r.teacher_id
JOIN assignments ON assignments.id = a_r.assignment_id
ORDER BY duration;
