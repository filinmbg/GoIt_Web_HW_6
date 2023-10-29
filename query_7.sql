--7.Знайти оцінки студентів у окремій групі з певного предмета.
SELECT st.fullname AS student_name, gr.grade
FROM grades gr
JOIN students st ON gr.student_id = st.id
JOIN subjects s ON gr.subject_id = s.id
JOIN groups g ON st.group_id = g.id
WHERE g.id = 2 AND s.id = 2
GROUP BY student_name;