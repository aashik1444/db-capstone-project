DROP PROCEDURE IF EXISTS CancelOrder;

DELIMITER //

CREATE PROCEDURE CancelOrder(IN order_id INT)
BEGIN
    DELETE FROM Orders WHERE OrderID = order_id;

    SELECT CONCAT('Order with ID ', order_id, ' has been cancelled.') AS Message;
END //

DELIMITER ;
CALL CancelOrder(4);
