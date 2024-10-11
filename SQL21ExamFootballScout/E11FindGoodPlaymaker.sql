DELIMITER $$
CREATE PROCEDURE udp_find_playmaker(min_dribble_points INT, team_name VARCHAR(45))
BEGIN
    SELECT
        CONCAT(p.first_name, ' ', p.last_name) full_name,
        p.age,
        p.salary,
        sd.dribbling,
        sd.speed,
        t.name team_name
    FROM players p
             JOIN teams t on t.id = p.team_id
             JOIN skills_data sd on sd.id = p.skills_data_id
    WHERE sd.dribbling >= min_dribble_points AND t.name LIKE team_name AND sd.speed > (SELECT AVG(speed) FROM skills_data)
    ORDER BY speed DESC
    LIMIT 1;
END $$
DELIMITER ;

CALL udp_find_playmaker (20, 'Skyble');