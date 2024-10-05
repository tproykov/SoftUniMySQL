DELIMITER $$
CREATE PROCEDURE udp_reduce_price(category_name VARCHAR(50))
BEGIN
    UPDATE products AS p
        JOIN categories AS c on c.id = p.category_id
        JOIN reviews as r on r.id = p.review_id
    SET p.price = p.price * 0.70
    WHERE r.rating < 4 AND category_name LIKE c.name;
END $$
DELIMITER ;


CALL udp_reduce_price ('Phones and tablets');