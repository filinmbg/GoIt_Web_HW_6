--10. Список курсів, які певному студенту читає певний викладач.
SELECT s.name AS subject_name
FROM students st
JOIN grades g ON st.id = g.student_id
JOIN subjects s ON g.subject_id = s.id
JOIN teachers t ON s.teacher_id = t.id
WHERE g.student_id = 1 AND t.id = 1
GROUP BY subject_name;