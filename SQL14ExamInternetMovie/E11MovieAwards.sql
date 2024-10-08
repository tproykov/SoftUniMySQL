DELIMITER $$
CREATE PROCEDURE udp_award_movie(movie_title VARCHAR(50))
BEGIN
    UPDATE actors AS a
        JOIN movies_actors AS ma ON a.id = ma.actor_id
        JOIN movies m on m.id = ma.movie_id
    SET a.awards = a.awards + 1
    WHERE movie_title LIKE m.title;
END $$
DELIMITER ;


CALL udp_award_movie('Tea For Two');