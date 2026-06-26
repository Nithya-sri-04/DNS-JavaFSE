-- Drop tables if they already exist

DROP TABLE IF EXISTS Loans;
DROP TABLE IF EXISTS Customers;

--------------------------------------------------
-- Customers Table
--------------------------------------------------

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Age INT,
    Balance DECIMAL(12,2),
    IsVIP BOOLEAN DEFAULT FALSE
);

--------------------------------------------------
-- Loans Table
--------------------------------------------------

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    InterestRate DECIMAL(5,2),
    DueDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

--------------------------------------------------
-- Insert Customers
--------------------------------------------------

INSERT INTO Customers VALUES
(101,'Rahul',65,15000,FALSE),
(102,'Priya',45,8000,FALSE),
(103,'Amit',70,22000,FALSE),
(104,'Sneha',30,12000,FALSE),
(105,'Kiran',62,9500,FALSE);

--------------------------------------------------
-- Insert Loans
--------------------------------------------------

INSERT INTO Loans VALUES
(1,101,9.50,CURDATE()+INTERVAL 10 DAY),
(2,102,10.00,CURDATE()+INTERVAL 40 DAY),
(3,103,8.50,CURDATE()+INTERVAL 20 DAY),
(4,104,11.00,CURDATE()+INTERVAL 5 DAY),
(5,105,9.00,CURDATE()+INTERVAL 60 DAY);