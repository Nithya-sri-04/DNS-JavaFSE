DELIMITER $$

CREATE PROCEDURE TransferFunds
(
    IN FromAccount INT,
    IN ToAccount INT,
    IN Amount DECIMAL(12,2)
)
BEGIN

    DECLARE SourceBalance DECIMAL(12,2);

    SELECT Balance
    INTO SourceBalance
    FROM Accounts
    WHERE AccountID = FromAccount;

    IF SourceBalance >= Amount THEN

        UPDATE Accounts
        SET Balance = Balance - Amount
        WHERE AccountID = FromAccount;

        UPDATE Accounts
        SET Balance = Balance + Amount
        WHERE AccountID = ToAccount;

        SELECT 'Transfer Successful' AS Message;

    ELSE

        SELECT 'Insufficient Balance' AS Message;

    END IF;

END $$

DELIMITER ;

CALL TransferFunds(101,102,2000);

SELECT * FROM Accounts;