DELIMITER $$
CREATE PROCEDURE udp_update_product_price (address_name VARCHAR (50))
BEGIN
    IF address_name LIKE '0%' THEN
        UPDATE products p
            JOIN products_stores ps on p.id = ps.product_id
            JOIN stores s on s.id = ps.store_id
            JOIN addresses a on a.id = s.address_id
        SET price = price + 100
        WHERE a.name LIKE address_name;
    ELSE
        UPDATE products p
            JOIN products_stores ps on p.id = ps.product_id
            JOIN stores s on s.id = ps.store_id
            JOIN addresses a on a.id = s.address_id
        SET price = price + 200
        WHERE a.name LIKE address_name;
    END IF;
END $$
DELIMITER ;


CALL udp_update_product_price('07 Armistice Parkway');
SELECT name, price FROM products WHERE id = 15;

CALL udp_update_product_price('1 Cody Pass');
SELECT name, price FROM products WHERE id = 17;

