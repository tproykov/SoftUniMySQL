SELECT
    i.first_name,
    i.last_name,
    COUNT(ist.student_id) AS students_count,
    c.name
FROM instructors AS i
    JOIN instructors_students AS ist ON i.id = ist.instructor_id
    JOIN instructors_driving_schools AS ids ON i.id = ids.instructor_id
    JOIN driving_schools AS ds ON ids.driving_school_id = ds.id
    JOIN cities AS c ON ds.city_id = c.id
GROUP BY i.first_name, i.last_name, c.name
HAVING students_count > 1
ORDER BY students_count DESC, i.first_name;