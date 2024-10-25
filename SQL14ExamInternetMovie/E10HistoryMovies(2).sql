DELIMITER $$
CREATE FUNCTION udf_actor_history_movies_count(full_name VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE history_movies INT;
    SET history_movies := (SELECT COUNT(m.id)
                           FROM movies AS m
                                    JOIN movies_actors AS ma ON m.id = ma.movie_id
                                    JOIN actors AS a on a.id = ma.actor_id
                                    JOIN genres_movies AS gm on m.id = gm.movie_id
                                    JOIN genres g on g.id = gm.genre_id
                           WHERE g.name LIKE 'History'
                             AND full_name LIKE CONCAT(a.first_name, ' ', a.last_name));
        RETURN history_movies;
END $$
DELIMITER ;

SELECT udf_actor_history_movies_count('Stephan Lundberg')  AS 'history_movies';