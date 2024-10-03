SELECT
    COUNT(s.id) AS student_count,
    u.name
FROM students AS s
         JOIN students_courses AS sc on s.id = sc.student_id
         JOIN courses AS c on c.id = sc.course_id
         JOIN universities AS u on u.id = c.university_id
GROUP BY u.name
HAVING student_count >= 8
ORDER BY student_count DESC, u.name DESC;