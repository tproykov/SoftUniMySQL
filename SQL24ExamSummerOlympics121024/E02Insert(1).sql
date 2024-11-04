INSERT INTO athletes (first_name, last_name, age, country_id)
    SELECT
        UPPER(a.first_name),
        CONCAT(a.last_name, ' comes from ', c.name),
        a.age + a.country_id,
        a.country_id
        FROM athletes a
            JOIN countries c on c.id = a.country_id
        WHERE c.name LIKE 'A%';