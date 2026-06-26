DELIMITER $$

CREATE PROCEDURE PromoteVIPCustomers()
BEGIN
    UPDATE Customers
    SET IsVIP = TRUE
    WHERE Balance > 10000;

    SELECT 'VIP promotion completed.' AS Message;
END$$

DELIMITER ;

CALL PromoteVIPCustomers();

SELECT * FROM Customers;