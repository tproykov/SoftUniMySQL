SELECT
    address,
    area,
    CASE
        WHEN area <= 100 THEN 'small'
        WHEN area > 100 AND area <= 200 THEN 'medium'
        WHEN area > 200 AND area <= 500 THEN 'large'
        WHEN area > 500 THEN 'extra large'
    END AS size
FROM properties
ORDER BY area, address DESC;
