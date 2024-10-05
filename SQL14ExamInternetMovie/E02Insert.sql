INSERT INTO actors (first_name, last_name, birthdate, height, awards, country_id)
    SELECT
        REVERSE(a.first_name),
        REVERSE(a.last_name),
        DATE_SUB(a.birthdate, INTERVAL 2 DAY),
        a.height + 10,
        c.id,
        3
FROM actors AS a
    JOIN countries c on c.id = a.country_id
WHERE a.id <= 10;






