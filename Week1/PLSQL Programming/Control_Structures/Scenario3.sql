DELIMITER $$

CREATE PROCEDURE LoanReminder()
BEGIN
    SELECT
        c.CustomerName,
        l.LoanID,
        l.DueDate,
        CONCAT(
            'Reminder: Dear ',
            c.CustomerName,
            ', your Loan ID ',
            l.LoanID,
            ' is due on ',
            DATE_FORMAT(l.DueDate,'%d-%b-%Y')
        ) AS ReminderMessage
    FROM Customers c
    JOIN Loans l
    ON c.CustomerID = l.CustomerID
    WHERE l.DueDate BETWEEN CURDATE() AND CURDATE() + INTERVAL 30 DAY;
END$$

DELIMITER ;

CALL LoanReminder();