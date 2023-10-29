--3.Знайти середній бал у групах з певного предмета.
SELECT g.name AS group_name, s.name AS subject_name, AVG(grade) AS average_score
FROM grades gr
JOIN students st ON gr.student_id = st.id
JOIN groups g ON st.group_id = g.id
JOIN subjects s ON gr.subject_id = s.id
WHERE s.id = 1
GROUP BY g.name, s.name;