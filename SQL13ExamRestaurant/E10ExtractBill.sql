DELIMITER $$
CREATE FUNCTION udf_client_bill(full_name VARCHAR(50))
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
   DECLARE bill DECIMAL(10, 2);
   SET bill := (
       SELECT SUM(p.price)
       FROM products AS p
                JOIN orders_products AS op on p.id = op.product_id
                JOIN orders AS o on o.id = op.order_id
                JOIN orders_clients AS oc on o.id = oc.order_id
                JOIN clients AS c on c.id = oc.client_id
       WHERE full_name LIKE CONCAT(c.first_name, ' ', c.last_name)
       );
    RETURN bill;
 END $$
DELIMITER ;

SELECT c.first_name,c.last_name, udf_client_bill('Silvio Blyth') as 'bill' FROM clients c
WHERE c.first_name = 'Silvio' AND c.last_name= 'Blyth';
