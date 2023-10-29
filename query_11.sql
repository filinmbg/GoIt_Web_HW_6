SELECT ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN students st ON g.student_id = st.id
JOIN subjects s ON g.subject_id = s.id
JOIN teachers t ON s.teacher_id = t.id
WHERE s.id = 1 AND t.id = 1