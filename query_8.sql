--8.Знайти середній бал, який ставить певний викладач зі своїх предметів.
SELECT t.fullname AS teacher_name, s.name AS subject_name, ROUND(AVG(grade), 2) as average_grade
FROM grades gr
JOIN subjects s ON gr.subject_id = s.id
JOIN teachers t ON s.teacher_id = t.id
GROUP BY t.fullname, s.name;

