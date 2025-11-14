CREATE DATABASE bank;
USE BANK;


CREATE TABLE Customer (
  Customer_ID INT PRIMARY KEY,
  Name VARCHAR(100),
  DOB DATE,
  Phone VARCHAR(15),
  Email VARCHAR(100),
  Address VARCHAR(200)
);

CREATE TABLE Branch (
  Branch_ID INT PRIMARY KEY,
  Branch_Name VARCHAR(100),
  Location VARCHAR(100)
);

CREATE TABLE Employee (
  Emp_ID INT PRIMARY KEY,
  Name VARCHAR(100),
  Position VARCHAR(50),
  Salary DECIMAL(10,2),
  Branch_ID INT,
  FOREIGN KEY (Branch_ID) REFERENCES Branch(Branch_ID)
);

CREATE TABLE Account (
  Account_No INT PRIMARY KEY,
  Customer_ID INT,
  Branch_ID INT,
  Account_Type VARCHAR(50),
  Balance DECIMAL(12,2),
  Open_Date DATE,
  FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
  FOREIGN KEY (Branch_ID) REFERENCES Branch(Branch_ID)
);

CREATE TABLE Loan (
  Loan_ID INT PRIMARY KEY,
  Customer_ID INT,
  Amount DECIMAL(12,2),
  Loan_Type VARCHAR(50),
  Interest_Rate DECIMAL(4,2),
  Duration INT,
  FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

CREATE TABLE Transaction (
  Trans_ID INT PRIMARY KEY,
  Account_No INT,
  Trans_Type VARCHAR(20),
  Amount DECIMAL(10,2),
  Trans_Date DATE,
  FOREIGN KEY (Account_No) REFERENCES Account(Account_No)
);

INSERT INTO Customer VALUES
(101, 'Ravi Kumar', '1995-03-05', '9998887771', 'ravi.kumar@gmail.com', 'Nagpur'),
(102, 'Pooja Sharma', '1998-11-12', '9998887772', 'pooja.sharma@gmail.com', 'Mumbai'),
(103, 'Aman Verma', '1990-07-21', '9998887773', 'aman.verma@gmail.com', 'Delhi'),
(104, 'Sneha Patil', '1996-09-15', '9998887774', 'sneha.patil@gmail.com', 'Pune'),
(105, 'Arjun Mehta', '1992-02-02', '9998887775', 'arjun.mehta@gmail.com', 'Nagpur'),
(106, 'Neha Singh', '1999-12-10', '9998887776', 'neha.singh@gmail.com', 'Bangalore'),
(107, 'Mohit Jain', '1994-05-17', '9998887777', 'mohit.jain@gmail.com', 'Chennai'),
(108, 'Kavita Deshmukh', '1989-03-29', '9998887778', 'kavita.deshmukh@gmail.com', 'Hyderabad'),
(109, 'Rohan Khanna', '1997-08-30', '9998887779', 'rohan.khanna@gmail.com', 'Nagpur'),
(110, 'Simran Arora', '1993-04-25', '9998887780', 'simran.arora@gmail.com', 'Mumbai');

INSERT INTO Branch VALUES
(1, 'Main Branch', 'Nagpur'),
(2, 'Gandhi Road Branch', 'Mumbai'),
(3, 'MG Road Branch', 'Delhi'),
(4, 'KP Branch', 'Pune'),
(5, 'Silk Board Branch', 'Bangalore');

INSERT INTO Employee VALUES
(501, 'Anita Rao', 'Manager', 65000, 1),
(502, 'Suresh Kulkarni', 'Clerk', 32000, 1),
(503, 'Manoj Gupta', 'Cashier', 40000, 1),

(504, 'Riya Sen', 'Manager', 70000, 2),
(505, 'Karan Patel', 'Clerk', 31000, 2),

(506, 'Aisha Khan', 'Manager', 72000, 3),
(507, 'Nikhil Yadav', 'Cashier', 35000, 3),

(508, 'Meera Joshi', 'Manager', 68000, 4),
(509, 'Akash Singh', 'Clerk', 30000, 4),

(510, 'Rahul Verma', 'Manager', 74000, 5),
(511, 'Shweta More', 'Cashier', 36000, 5),
(512, 'Deepak Shah', 'Clerk', 29000, 5);

INSERT INTO Account VALUES
(2001, 101, 1, 'Savings', 55000, '2021-04-10'),
(2002, 102, 2, 'Current', 125000, '2022-01-05'),
(2003, 103, 3, 'Savings', 80000, '2020-07-12'),
(2004, 104, 4, 'Savings', 43000, '2023-02-20'),
(2005, 105, 1, 'Current', 250000, '2019-06-15'),
(2006, 106, 5, 'Savings', 35000, '2021-09-03'),
(2007, 107, 3, 'Current', 90000, '2022-11-22'),
(2008, 108, 4, 'Savings', 150000, '2020-12-19'),
(2009, 109, 1, 'Current', 98000, '2023-03-14'),
(2010, 110, 2, 'Savings', 45000, '2021-05-25'),
(2011, 101, 1, 'Current', 110000, '2022-09-10'),
(2012, 106, 5, 'Savings', 60000, '2023-04-01');

INSERT INTO Loan VALUES
(3001, 101, 500000, 'Home Loan', 7.5, 120),
(3002, 102, 200000, 'Car Loan', 9.0, 60),
(3003, 103, 150000, 'Personal Loan', 11.5, 36),
(3004, 104, 800000, 'Home Loan', 7.2, 180),
(3005, 106, 100000, 'Education Loan', 8.5, 48),
(3006, 108, 250000, 'Car Loan', 9.1, 72),
(3007, 109, 600000, 'Home Loan', 7.4, 150),
(3008, 110, 50000, 'Personal Loan', 12.0, 24);

INSERT INTO Transaction VALUES
(4001, 2001, 'Credit', 5000, '2024-01-10'),
(4002, 2001, 'Debit', 2000, '2024-01-15'),

(4003, 2002, 'Credit', 10000, '2024-01-11'),
(4004, 2002, 'Debit', 3000, '2024-01-18'),

(4005, 2003, 'Credit', 8000, '2024-01-12'),
(4006, 2003, 'Debit', 1500, '2024-01-19'),

(4007, 2004, 'Credit', 4000, '2024-01-13'),
(4008, 2004, 'Debit', 2000, '2024-01-20'),

(4009, 2005, 'Credit', 20000, '2024-01-14'),
(4010, 2005, 'Debit', 5000, '2024-01-22'),

(4011, 2006, 'Credit', 3000, '2024-01-16'),
(4012, 2006, 'Debit', 1000, '2024-01-23'),

(4013, 2007, 'Credit', 9000, '2024-01-16'),
(4014, 2007, 'Debit', 2500, '2024-01-24'),

(4015, 2008, 'Credit', 11000, '2024-01-17'),
(4016, 2008, 'Debit', 3000, '2024-01-25'),

(4017, 2009, 'Credit', 5000, '2024-01-17'),
(4018, 2009, 'Debit', 1500, '2024-01-26'),

(4019, 2010, 'Credit', 3500, '2024-01-18'),
(4020, 2010, 'Debit', 2000, '2024-01-27');

SELECT * FROM Customer;

SELECT * FROM Account WHERE Balance > 50000;

SELECT Name FROM Customer WHERE Address = 'Nagpur';

SELECT COUNT(*) AS Total_Employees FROM Employee;

SELECT * FROM Loan WHERE Loan_Type = 'Home Loan';

SELECT Account_No, Balance 
FROM Account 
WHERE Account_Type = 'Savings';

SELECT MAX(Salary), MIN(Salary) FROM Employee;

SELECT * FROM Transaction WHERE Trans_Date > '2024-01-15';

SELECT Name FROM Employee WHERE Branch_ID = 1;

SELECT Branch_ID, COUNT(*) AS Total_Accounts
FROM Account
GROUP BY Branch_ID;

SELECT Customer_ID, COUNT(*) AS Num_Accounts
FROM Account
GROUP BY Customer_ID
HAVING COUNT(*) > 1;

SELECT C.Name, A.Account_No, A.Balance
FROM Customer C
JOIN Account A ON C.Customer_ID = A.Customer_ID;

SELECT E.Name, B.Branch_Name
FROM Employee E
JOIN Branch B ON E.Branch_ID = B.Branch_ID;

SELECT Customer_ID, SUM(Amount) AS Total_Loan
FROM Loan
GROUP BY Customer_ID;

SELECT * FROM Account
ORDER BY Balance DESC
LIMIT 5;

SELECT * FROM Account
WHERE Balance = (SELECT MAX(Balance) FROM Account);

SELECT Name 
FROM Customer
WHERE Customer_ID NOT IN (SELECT Customer_ID FROM Account);

SELECT * FROM Transaction WHERE Account_No = 2005;

SELECT Trans_Type, COUNT(*) AS Total
FROM Transaction
GROUP BY Trans_Type;

SELECT C.Name, L.Amount
FROM Customer C
JOIN Loan L ON C.Customer_ID = L.Customer_ID
WHERE L.Loan_Type = 'Personal Loan';

UPDATE Account
SET Balance = Balance * 1.02
WHERE Account_Type = 'Savings';

DELETE FROM Transaction 
WHERE Amount < 1000;

SELECT * FROM Employee
WHERE Salary > (SELECT AVG(Salary) FROM Employee);


SELECT C.Name, L.Loan_Type, L.Amount
FROM Loan L
JOIN Customer C ON L.Customer_ID = C.Customer_ID;

SELECT Branch_ID, COUNT(*) AS Total
FROM Employee
GROUP BY Branch_ID
ORDER BY Total DESC
LIMIT 1;


SELECT Account_No, COUNT(*) AS Num_Transactions
FROM Transaction
GROUP BY Account_No;


SELECT * FROM Account
WHERE Account_Type = 'Current'
AND Balance BETWEEN 50000 AND 150000;

SELECT B.Branch_Name
FROM Account A
JOIN Branch B ON A.Branch_ID = B.Branch_ID
WHERE A.Account_No = 2008;


SELECT C.Name, L.Amount
FROM Customer C
JOIN Loan L ON C.Customer_ID = L.Customer_ID
WHERE L.Amount > 500000;


SELECT Trans_Type, SUM(Amount) AS Total_Amount
FROM Transaction
GROUP BY Trans_Type;



























