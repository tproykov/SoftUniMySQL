UPDATE employees AS e
    LEFT JOIN teams t on e.id = t.leader_id
SET e.salary = e.salary + 1000
WHERE e.salary < 5000 AND e.age < 40 AND t.leader_id IS NOT NULL;