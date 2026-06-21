-- Scenario 1
DECLARE
BEGIN
FOR c IN (
        SELECT c.CustomerID, l.LoanID
        FROM Customers c, Loans l
        WHERE c.CustomerID = l.CustomerID
        AND c.Age > 60
    )
    LOOP
UPDATE Loans
SET InterestRate = InterestRate - 1
WHERE LoanID = c.LoanID;
END LOOP;

COMMIT;
END;
/

-- Scenario 2
DECLARE
BEGIN
FOR c IN (
        SELECT CustomerID
        FROM Customers
        WHERE Balance > 10000
    )
    LOOP
UPDATE Customers
SET IsVIP = 'TRUE'
WHERE CustomerID = c.CustomerID;
END LOOP;

COMMIT;
END;
/

--Scenario 3
SET SERVEROUTPUT ON;

DECLARE
BEGIN
FOR l IN (
        SELECT CustomerID, DueDate
        FROM Loans
        WHERE DueDate <= SYSDATE + 30
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Reminder: Loan due for Customer ID '
            || l.CustomerID
        );
END LOOP;
END;
/