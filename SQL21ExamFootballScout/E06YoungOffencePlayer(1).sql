SELECT
    p.id,
    CONCAT(p.first_name, ' ', p.last_name),
    p.age,
    p.position,
    p.hire_date
FROM players p
    JOIN skills_data sd on p.skills_data_id = sd.id
WHERE p.age < 23 AND position LIKE 'A' AND hire_date IS NULL AND sd.strength > 50
ORDER BY p.salary, p.age;
