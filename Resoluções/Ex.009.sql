# Ex.009 #

-- 001)
SELECT FullName FROM Employees LIMIT 4;

-- 002)
SELECT * FROM Employees 
WHERE City = 'London'
LIMIT 2;

-- 003)
SELECT FullName, BirthDate FROM Employees ORDER BY BirthDate ASC LIMIT 1;  # Mais Velho

SELECT FullName, BirthDate FROM Employees ORDER BY BirthDate DESC LIMIT 1; # Mais Novo.

-- 004)
SELECT City, COUNT(*) FROM Employees GROUP BY City;

-- 005)
SELECT Title, City, COUNT(*) FROM Employees GROUP BY City LIMIT 2;

-- 006)
SELECT * FROM Employees LIMIT 3;

-- 007)
SELECT FullName, PersonalEmail FROM Employees LIMIT 6;

-- 008)
SELECT Employee_ID, Title, Country FROM Employees LIMIT 6;

-- 009)
SELECT Employee_ID, MIN(Salary) FROM Employees
WHERE Salary IS NOT NULL;

-- 010)
SELECT FullName, MAX(Salary) FROM Employees;

-- 011)
SELECT FullName, Address FROM Employees LIMIT 1;

-- 012)
SELECT * FROM Employees LIMIT 8;

-- 013)
SELECT * FROM Employees
WHERE City = 'Seattle'
LIMIT 1;

-- 014)
SELECT FullName, Address, City, Region FROM Employees LIMIT 2;

-- 015)
SELECT * FROM Employees
WHERE YEAR(BirthDate) = 1988
LIMIT 2;
