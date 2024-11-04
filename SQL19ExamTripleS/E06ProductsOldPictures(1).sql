SELECT
    p.name product_name,
    p.price,
    p.best_before,
    CONCAT(SUBSTRING(p.description, 1, 10), '...') short_description,
    p2.url
FROM products p
    JOIN pictures p2 on p2.id = p.picture_id
WHERE CHAR_LENGTH(description) > 100 AND YEAR(p2.added_on) < 2019 AND p.price > 20
ORDER BY price DESC;