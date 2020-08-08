# Ex.003 #

-- 001)
SELECT Employee_ID, FirstName, LastName, Employee_ID * 2 AS Dobro_ID FROM Employees;

-- 002)
SELECT FirstName, LastName, HomePhone FROM Employees
WHERE City = 'London';

-- 003)
SELECT FirstName, LastName, BirthDate FROM Employees
WHERE Employee_ID > 6;

-- 004)
SELECT FirstName, LastName, City FROM Employees
WHERE City = ' Caracas';

-- 005)
SELECT Employee_ID, City FROM Employees
WHERE City = 'Seattle' OR City = 'Tacoma';

-- 006)
SELECT Employee_ID, Title, Extension FROM Employees
WHERE NOT City = 'London';

-- 007)
SELECT FirstName, LastName FROM Employees
WHERE TitleOfCourtesy = 'Dr.';

-- 008)
SELECT FirstName, LastName, HireDate, ReportsTo FROM Employees
WHERE ReportsTo IS NOT NULL;

-- 009)
SELECT FirstName, LastName, Address FROM Employees
WHERE Country = 'USA' AND Regial = 'WA';

-- 010)
ALTER TABLE Employees
ADD COLUMN Email VARCHAR(60) UNIQUE;

UPDATE Employees
SET Email = CONCAT(LastName, '@nortwind.com');

-- 011)
SELECT FirstName, LastName, Email FROM Employees
WHERE Country = 'USA';

-- 012)
SELECT FirstName, LastName, Email FROM Employees
WHERE LastName LIKE '__L%';
