SELECT
    ad.name,
    CASE
        WHEN HOUR(c.`start`) BETWEEN 6 AND 20 THEN 'Day'
        WHEN HOUR(c.`start`) BETWEEN 21 AND 23 THEN 'Night'
        WHEN HOUR(c.`start`) BETWEEN 0 AND 5 THEN 'Night'
    END date_time,
    c.bill,
    cl.full_name,
    cr.make,
    cr.model,
    cat.name category_name
FROM addresses ad
    JOIN courses c on ad.id = c.from_address_id
    JOIN cars cr on cr.id = c.car_id
    JOIN clients cl on cl.id = c.client_id
    JOIN categories cat on cat.id = cr.category_id
ORDER BY c.id;