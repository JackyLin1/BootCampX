SELECT students.name AS students_name, AVG(assignment.submissions.duration) AS average_duration, AVG(assignments.duration) AS suggested_completion_time
FROM assignments, students, assignment_submissions
JOIN students ON students.id = student_id
HAVING students.end_date IS NULL
ORDER BY average_duration DESC;