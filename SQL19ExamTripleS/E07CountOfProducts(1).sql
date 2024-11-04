SELECT
    s.name,
    COUNT(p.id) product_count,
    ROUND(AVG(p.price), 2) avg
FROM stores s
    LEFT JOIN products_stores ps on s.id = ps.store_id
    LEFT JOIN products p on p.id = ps.product_id
GROUP BY s.id, s.name
ORDER BY product_count DESC, avg DESC, s.id;