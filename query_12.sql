--Оцінки студентів у певній групі з певного предмета на останньому занятті.
SELECT st.fullname AS student_name, gr.grade
FROM students st
JOIN grades gr ON st.id = gr.student_id
JOIN subjects s ON gr.subject_id = s.id
JOIN groups g ON st.group_id = g.id
WHERE g.id = 1 AND s.id = 1
  AND gr.grade_date = (SELECT MAX(grade_date) FROM grades WHERE student_id = st.id AND subject_id = s.id);