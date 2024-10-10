DELIMITER $$
CREATE FUNCTION udf_users_photos_count(user_name VARCHAR(30))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE photosCount INT;
    SET photosCount := (
        SELECT
            COUNT(p.id)
        FROM users u
                 LEFT JOIN users_photos up on u.id = up.user_id
                 LEFT JOIN photos p on p.id = up.photo_id
        WHERE u.username LIKE user_name
        GROUP BY u.id
        );
    RETURN photosCount;
END $$
DELIMITER ;

SELECT udf_users_photos_count('ssantryd') AS photosCount;


