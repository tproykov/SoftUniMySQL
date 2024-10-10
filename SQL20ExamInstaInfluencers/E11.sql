DELIMITER $$
CREATE PROCEDURE udp_modify_user(address VARCHAR(30), town VARCHAR(30))
BEGIN
    UPDATE users u
        JOIN addresses a on u.id = a.user_id
    SET u.age = u.age + 10
    WHERE a.address LIKE address AND a.town LIKE town;
END $$
DELIMITER ;


CALL udp_modify_user ('97 Valley Edge Parkway', 'Divinópolis');
SELECT u.username, u.email,u.gender,u.age,u.job_title FROM users AS u
WHERE u.username = 'eblagden21';
