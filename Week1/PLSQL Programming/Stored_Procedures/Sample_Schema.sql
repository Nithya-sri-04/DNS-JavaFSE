USE bankdb;

DROP TABLE IF EXISTS Accounts;
DROP TABLE IF EXISTS Employees;

--------------------------------------------------
-- Accounts Table
--------------------------------------------------

CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    AccountType VARCHAR(20),
    Balance DECIMAL(12,2)
);

--------------------------------------------------
-- Employees Table
--------------------------------------------------

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Department VARCHAR(30),
    Salary DECIMAL(10,2)
);

--------------------------------------------------
-- Insert Accounts
--------------------------------------------------

INSERT INTO Accounts VALUES
(101,'Rahul','Savings',10000),
(102,'Priya','Savings',15000),
(103,'Amit','Current',25000),
(104,'Sneha','Savings',8000),
(105,'Kiran','Current',12000);

--------------------------------------------------
-- Insert Employees
--------------------------------------------------

INSERT INTO Employees VALUES
(1,'John','IT',50000),
(2,'Alice','HR',45000),
(3,'David','IT',60000),
(4,'Maria','Finance',55000),
(5,'Kevin','HR',40000);