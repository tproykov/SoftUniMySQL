DELIMITER $$
CREATE FUNCTION udf_game_info_by_name (game_name VARCHAR (20))
    RETURNS TEXT
    DETERMINISTIC
BEGIN
    DECLARE info TEXT;
    SET info :=(
        SELECT
            CONCAT('The ', g.name, ' is developed by a ', t.name,
                   ' in an office with an address ', a.name)
        FROM games g
                 JOIN teams t on t.id = g.team_id
                 JOIN offices o on o.id = t.office_id
                 JOIN addresses a on o.address_id = a.id
        WHERE game_name LIKE g.name
          );
    RETURN info;
END $$
DELIMITER ;

SELECT udf_game_info_by_name('Bitwolf') AS info;