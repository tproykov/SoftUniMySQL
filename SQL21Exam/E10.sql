DELIMITER $$
CREATE FUNCTION udf_stadium_players_count (stadium_name VARCHAR(30))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE count INT;
    SET count := (
        SELECT
            COUNT(p.id)
        FROM stadiums s
                 LEFT OUTER JOIN teams t on s.id = t.stadium_id
                 LEFT JOIN players p on t.id = p.team_id
        WHERE s.name LIKE stadium_name
        GROUP BY s.name
        );
    RETURN count;
END $$
DELIMITER ;

SELECT udf_stadium_players_count ('Jaxworks') as `count`;

SELECT udf_stadium_players_count ('Linklinks') as `count`;