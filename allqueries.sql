CREATE DATABASE InvestorDB;
USE InvestorDB;
CREATE TABLE InvestorInformation (
    InvestorID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    ContactInformation VARCHAR(100),
    Address VARCHAR(255),
    DateOfBirth DATE
);
CREATE TABLE InvestmentInformation (
    InvestmentID INT PRIMARY KEY,
    InvestorID INT,
    InvestmentType VARCHAR(50),
    PurchaseDate DATE,
    PurchasePrice DECIMAL(10,2),
    Quantity INT,
    FOREIGN KEY (InvestorID) REFERENCES InvestorInformation(InvestorID)
);
CREATE TABLE OutstandingCashBalance (
    InvestorID INT,
    CashBalance DECIMAL(10,2),
    DateOfBalanceUpdate DATE,
    FOREIGN KEY (InvestorID) REFERENCES InvestorInformation(InvestorID)
);
CREATE TABLE HoldingInformation (
    InvestmentID INT,
    QuantityHeld INT,
    HoldingValue DECIMAL(10,2),
    HoldingDate DATE,
    FOREIGN KEY (InvestmentID) REFERENCES InvestmentInformation(InvestmentID)
);
CREATE TABLE BrokerageInformation (
    InvestorID INT,
    BrokerageAmount DECIMAL(10,2),
    TransactionID INT,
    TransactionDate DATE,
    FOREIGN KEY (InvestorID) REFERENCES InvestorInformation(InvestorID)
);


-- Inserting sample data into InvestorInformation table
INSERT INTO InvestorInformation (InvestorID, FirstName, LastName, ContactInformation, Address, DateOfBirth) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123 Main St, Anytown, USA', '1990-05-15'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '456 Elm St, Othertown, USA', '1985-08-20'),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', '789 Maple St, Anothertown, USA', '1980-03-10'),
(4, 'Emily', 'Davis', 'emily.davis@example.com', '321 Oak St, Somewhere, USA', '1975-11-28'),
(5, 'Christopher', 'Brown', 'christopher.brown@example.com', '567 Pine St, Yetanothertown, USA', '1995-07-18'),
(6, 'Jessica', 'Wilson', 'jessica.wilson@example.com', '654 Birch St, Elsewhere, USA', '1992-09-03'),
(7, 'David', 'Martinez', 'david.martinez@example.com', '432 Cedar St, Nowhere, USA', '1988-12-15'),
(8, 'Ashley', 'Anderson', 'ashley.anderson@example.com', '876 Walnut St, Noplace, USA', '1970-05-30'),
(9, 'Matthew', 'Taylor', 'matthew.taylor@example.com', '987 Sycamore St, Anywhere, USA', '1983-04-22'),
(10, 'Amanda', 'Thomas', 'amanda.thomas@example.com', '135 Cherry St, Anywhereville, USA', '1998-01-07'),
(11, 'Daniel', 'Hernandez', 'daniel.hernandez@example.com', '246 Magnolia St, Anyplace, USA', '1986-06-12'),
(12, 'Sarah', 'Garcia', 'sarah.garcia@example.com', '579 Poplar St, Anycity, USA', '1978-08-25');

-- Inserting sample data into InvestmentInformation table
INSERT INTO InvestmentInformation (InvestmentID, InvestorID, InvestmentType, PurchaseDate, PurchasePrice, Quantity) VALUES
(101, 1, 'Stocks', '2023-01-10', 1000.00, 50),
(102, 1, 'Bonds', '2023-02-15', 5000.00, 10),
(103, 2, 'Mutual Funds', '2023-03-20', 2500.00, 20),
(104, 2, 'Real Estate', '2023-04-25', 100000.00, 1),
(105, 3, 'ETFs', '2023-06-05', 2000.00, 25),
(106, 4, 'Stocks', '2023-07-10', 1500.00, 30),
(107, 5, 'Real Estate', '2023-08-15', 75000.00, 2),
(108, 6, 'Bonds', '2023-09-20', 3000.00, 15),
(109, 7, 'Mutual Funds', '2023-10-25', 4000.00, 10),
(110, 8, 'Stocks', '2023-11-30', 2500.00, 20),
(111, 9, 'ETFs', '2023-12-05', 3000.00, 15),
(112, 10, 'Bonds', '2024-01-10', 3500.00, 10),
(113, 11, 'Real Estate', '2024-02-15', 100000.00, 1),
(114, 12, 'Mutual Funds', '2024-03-20', 5000.00, 12);

-- Inserting sample data into OutstandingCashBalance table
INSERT INTO OutstandingCashBalance (InvestorID, CashBalance, DateOfBalanceUpdate) VALUES
(1, 5000.00, '2023-05-01'),
(2, 10000.00, '2023-05-01'),
(3, 8000.00, '2023-06-01'),
(4, 12000.00, '2023-07-01'),
(5, 15000.00, '2023-08-01'),
(6, 7000.00, '2023-09-01'),
(7, 18000.00, '2023-10-01'),
(8, 10000.00, '2023-11-01'),
(9, 9000.00, '2023-12-01'),
(10, 11000.00, '2024-01-01'),
(11, 25000.00, '2024-02-01'),
(12, 30000.00, '2024-03-01');


-- Inserting sample data into HoldingInformation table
INSERT INTO HoldingInformation (InvestmentID, QuantityHeld, HoldingValue, HoldingDate) VALUES
(101, 50, 15000.00, '2023-05-01'),
(102, 10, 50000.00, '2023-05-01'),
(103, 20, 60000.00, '2023-05-01'),
(104, 1, 150000.00, '2023-05-01'),
(105, 25, 10000.00, '2023-06-01'),
(106, 30, 45000.00, '2023-07-01'),
(107, 2, 150000.00, '2023-08-01'),
(108, 15, 45000.00, '2023-09-01'),
(109, 10, 40000.00, '2023-10-01'),
(110, 20, 50000.00, '2023-11-01'),
(111, 15, 45000.00, '2023-12-01'),
(112, 10, 35000.00, '2024-01-01'),
(113, 1, 100000.00, '2024-02-01'),
(114, 12, 60000.00, '2024-03-01');


-- Inserting sample data into BrokerageInformation table
INSERT INTO BrokerageInformation (InvestorID, BrokerageAmount, TransactionID, TransactionDate) VALUES
(1, 100.00, 201, '2023-05-10'),
(2, 150.00, 202, '2023-05-12'),(3, 120.00, 301, '2023-06-10'),
(4, 180.00, 302, '2023-07-12'),
(5, 200.00, 303, '2023-08-15'),
(6, 150.00, 304, '2023-09-20'),
(7, 250.00, 305, '2023-10-25'),
(8, 130.00, 306, '2023-11-30'),
(9, 170.00, 307, '2023-12-05'),
(10, 140.00, 308, '2024-01-10'),
(11, 220.00, 309, '2024-02-15'),
(12, 300.00, 310, '2024-03-20');


SELECT
    I.InvestorID,
    I.FirstName,
    I.LastName,
    SUM(H.HoldingValue) AS TotalHoldingsValue
FROM InvestorInformation I
JOIN HoldingInformation H ON I.InvestorID = H.InvestmentID
GROUP BY I.InvestorID, I.FirstName, I.LastName;




SELECT
    I.InvestorID,
    I.FirstName,
    I.LastName,
    SUM(B.BrokerageAmount) AS TotalBrokerageCost
FROM InvestorInformation I
JOIN BrokerageInformation B ON I.InvestorID = B.InvestorID
GROUP BY I.InvestorID, I.FirstName, I.LastName
HAVING SUM(B.BrokerageAmount) > 100;


SELECT
    I.InvestorID,
    I.FirstName,
    I.LastName,
    SUM(B.BrokerageAmount) AS TotalBrokerageCost
FROM InvestorInformation I
JOIN BrokerageInformation B ON I.InvestorID = B.InvestorID
GROUP BY I.InvestorID, I.FirstName, I.LastName
ORDER BY TotalBrokerageCost ASC
LIMIT 10;

SELECT
    InvestmentType,
    AVG(PurchasePrice) AS AvgPurchasePrice
FROM InvestmentInformation
GROUP BY InvestmentType
HAVING AVG(PurchasePrice) > (
    SELECT AVG(PurchasePrice) * 1.2 FROM InvestmentInformation
)
ORDER BY AvgPurchasePrice DESC;



SELECT
    InvestorInformation.InvestorID,
    FirstName,
    LastName,
    VARIANCE(PurchasePrice) AS PurchasePriceVariance
FROM InvestmentInformation
JOIN InvestorInformation ON InvestmentInformation.InvestorID = InvestorInformation.InvestorID
GROUP BY InvestorInformation.InvestorID, FirstName, LastName
ORDER BY PurchasePriceVariance DESC
LIMIT 10;



SELECT
    I.InvestorID,
    I.FirstName,
    I.LastName,
    SUM(II.PurchasePrice * II.Quantity) AS TotalInvestmentValue,
    OB.CashBalance
FROM InvestorInformation I
JOIN InvestmentInformation II ON I.InvestorID = II.InvestorID
JOIN OutstandingCashBalance OB ON I.InvestorID = OB.InvestorID
GROUP BY I.InvestorID, I.FirstName, I.LastName, OB.CashBalance
HAVING TotalInvestmentValue > OB.CashBalance;


SELECT
    I.InvestorID,
    I.FirstName,
    I.LastName
FROM InvestorInformation I
JOIN InvestmentInformation II ON I.InvestorID = II.InvestorID
WHERE II.InvestmentType = 'Real Estate';


SELECT
    InvestorID,
    FirstName,
    LastName,
    MAX(TotalHoldingsValue) AS HighestTotalHoldingsValue
FROM (
    SELECT
        I.InvestorID,
        I.FirstName,
        I.LastName,
        SUM(H.HoldingValue) AS TotalHoldingsValue
    FROM InvestorInformation I
    JOIN HoldingInformation H ON I.InvestorID = H.InvestmentID
    GROUP BY I.InvestorID, I.FirstName, I.LastName
)
GROUP BY InvestorID, FirstName, LastName
ORDER BY HighestTotalHoldingsValue DESC;



SELECT
    InvestorID,
    FirstName,
    LastName,
    MAX(TotalHoldingsValue) AS HighestTotalHoldingsValue
FROM (
    SELECT
        I.InvestorID,
        I.FirstName,
        I.LastName,
        SUM(H.HoldingValue) AS TotalHoldingsValue
    FROM InvestorInformation I
    JOIN HoldingInformation H ON I.InvestorID = H.InvestmentID
    GROUP BY I.InvestorID, I.FirstName, I.LastName
) AS Subquery
GROUP BY InvestorID, FirstName, LastName
ORDER BY HighestTotalHoldingsValue DESC
LIMIT 0, 1000;


SELECT
    I.InvestorID,
    I.FirstName,
    I.LastName
FROM InvestorInformation I
JOIN HoldingInformation H ON I.InvestorID = H.InvestmentID
WHERE H.QuantityHeld > 50;



SELECT
    SUM(CashBalance) AS TotalCashBalance
FROM OutstandingCashBalance;


SELECT
    I.FirstName,
    I.LastName,
    II.InvestmentType,
    II.PurchaseDate,
    II.PurchasePrice,
    II.Quantity
FROM InvestorInformation I
JOIN InvestmentInformation II ON I.InvestorID = II.InvestorID
WHERE II.PurchaseDate > '2023-06-01';

SELECT 
    I.FirstName, 
    I.LastName,
    COUNT(DISTINCT II.InvestmentType) AS UniqueInvestmentTypes
FROM InvestorInformation I
JOIN InvestmentInformation II ON I.InvestorID = II.InvestorID
GROUP BY I.FirstName, I.LastName
HAVING UniqueInvestmentTypes > 1;


SELECT 
    AVG(BrokerageAmount) AS AvgBrokeragePerTransaction
FROM BrokerageInformation;

SELECT ii.FirstName, ii.LastName, ii.InvestorID,
       SUM(inv.PurchasePrice * inv.Quantity) AS TotalInvestment
FROM InvestorInformation ii
JOIN InvestmentInformation inv ON ii.InvestorID = inv.InvestorID
GROUP BY ii.FirstName, ii.LastName, ii.InvestorID;


SELECT ii.FirstName, ii.LastName, ii.InvestorID,
       ocb.CashBalance, ocb.DateOfBalanceUpdate
FROM InvestorInformation ii
JOIN OutstandingCashBalance ocb ON ii.InvestorID = ocb.InvestorID;

















