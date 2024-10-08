SELECT
    COUNT(p.id) AS items_count,
    c.name,
    SUM(p.quantity_in_stock) AS total_quantity
FROM categories AS c
    JOIN products AS p on c.id = p.category_id
GROUP BY c.name
ORDER BY items_count DESC, total_quantity
LIMIT 5;
