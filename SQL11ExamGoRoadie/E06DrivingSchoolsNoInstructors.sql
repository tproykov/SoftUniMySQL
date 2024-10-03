SELECT
    ds.id,
    ds.name,
    c.brand
FROM driving_schools AS ds
    LEFT JOIN cars AS c ON ds.car_id = c.id
    LEFT JOIN instructors_driving_schools AS ids ON ds.id = ids.driving_school_id
WHERE ids.instructor_id IS NULL
ORDER BY c.brand, ds.id
LIMIT 5;


