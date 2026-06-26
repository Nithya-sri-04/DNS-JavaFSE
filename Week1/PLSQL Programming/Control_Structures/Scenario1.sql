DELIMITER $$

CREATE PROCEDURE ApplyInterestDiscount()
BEGIN
    UPDATE Loans l
    JOIN Customers c
    ON l.CustomerID = c.CustomerID
    SET l.InterestRate = l.InterestRate - 1
    WHERE c.Age > 60;

    SELECT 'Interest discount applied successfully.' AS Message;
END$$

DELIMITER ;

CALL ApplyInterestDiscount();

SELECT * FROM Loans;