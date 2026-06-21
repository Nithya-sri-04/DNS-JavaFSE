-- Scenario 1
CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest
AS
BEGIN
UPDATE Accounts
SET Balance = Balance + (Balance * 0.01)
WHERE AccountType = 'Savings';

COMMIT;
END;
/

-- Scenario 2
CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus
(
    dept IN VARCHAR2,
    bonus_percent IN NUMBER
)
AS
BEGIN
UPDATE Employees
SET Salary = Salary + (Salary * bonus_percent / 100)
WHERE Department = dept;

COMMIT;
END;
/

-- Scenario 3
CREATE OR REPLACE PROCEDURE TransferFunds
(
    from_acc IN NUMBER,
    to_acc IN NUMBER,
    amount IN NUMBER
)
AS
    balance_amount NUMBER;
BEGIN

SELECT Balance
INTO balance_amount
FROM Accounts
WHERE AccountID = from_acc;

IF balance_amount >= amount THEN

UPDATE Accounts
SET Balance = Balance - amount
WHERE AccountID = from_acc;

UPDATE Accounts
SET Balance = Balance + amount
WHERE AccountID = to_acc;

COMMIT;

ELSE
        DBMS_OUTPUT.PUT_LINE('Insufficient Balance');
END IF;

END;
/