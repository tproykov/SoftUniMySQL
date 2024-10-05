INSERT INTO reviews (content, rating, picture_url, published_at)
    SELECT
        SUBSTRING(description, 1, 15),
        price / 8,
        REVERSE(name),
        '2010-10-10'
    FROM products
    WHERE id >= 5;