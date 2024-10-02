UPDATE driving_schools AS ds
    JOIN cities AS c ON ds.city_id = c.id
SET average_lesson_price = average_lesson_price + 30
WHERE c.name LIKE 'London' AND ds.night_time_driving = 1;