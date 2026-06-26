DELIMITER $$

CREATE PROCEDURE UpdateEmployeeBonus
(
    IN dept VARCHAR(30),
    IN bonusPercent DECIMAL(5,2)
)
BEGIN

    UPDATE Employees
    SET Salary = Salary + (Salary * bonusPercent / 100)
    WHERE Department = dept;

    SELECT 'Bonus Updated Successfully' AS Message;

END $$

DELIMITER ;

CALL UpdateEmployeeBonus('IT',10);

SELECT * FROM Employees;