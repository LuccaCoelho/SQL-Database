CREATE PROCEDURE `GetMaxQuantity` ()
BEGIN
SELECT max(quantity) AS "Max Quantity in Order" FROM orders;
END
