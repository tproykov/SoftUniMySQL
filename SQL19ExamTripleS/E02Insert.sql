INSERT INTO products_stores (product_id, store_id)
    SELECT
        p.id,
        1
FROM products p
    LEFT JOIN products_stores ps on p.id = ps.product_id
WHERE store_id IS NULL;