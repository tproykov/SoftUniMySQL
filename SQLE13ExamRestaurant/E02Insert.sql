INSERT INTO products (name, type, price)
    SELECT
        CONCAT(last_name, ' specialty'),
        'Cocktail',
        CEILING(IFNULL(salary * 0.01, 0))
    FROM waiters
    WHERE id > 6;