SELECT
    CONCAT(a.first_name, ' ', a.last_name) AS first_name,
    CONCAT(REVERSE(a.last_name), CHAR_LENGTH(a.last_name), '@cast.com') AS email,
    2022 - year(a.birthdate) AS age,
    a.height
FROM actors AS a
LEFT JOIN movies_actors AS ma on a.id = ma.actor_id
WHERE movie_id IS NULL
ORDER BY height;