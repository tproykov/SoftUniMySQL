UPDATE employees e
    JOIN stores s on s.id = e.store_id
SET e.manager_id = 3, e.salary = e.salary - 500
WHERE YEAR(hire_date) > 2003 AND s.name NOT IN ('Cardguard', 'Veribet');