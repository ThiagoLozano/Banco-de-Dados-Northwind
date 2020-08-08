# Ex.005 #

-- 001)
SELECT FirstName, LastName, Title, Employee_ID + PI() FROM Employees;

-- 002)
SELECT SQRT(DAY(BirthDate)) FROM Employees
WHERE City = 'London';

-- 003)
SELECT LOG(MONTH(BirthDate)) FROM Employees
WHERE YEAR(BirthDate) = 1963;

-- 004)
SELECT FirstName, LastName, DAY(BirthDate) FROM Employees
WHERE POW(MONTH(BirthDate), 2) <= 9;

-- 005)
SELECT ROUND(YEAR(BirthDate)/2 + (15.5/100), 0) FROM Employees;

-- 006)
SELECT ABS(1900 - YEAR(BirthDate)) FROM Employees;

-- 007)
SELECT Employee_ID, SQRT(Employee_ID) FROM Employees
WHERE MONTH(BirthDate) < 4 AND YEAR(BirthDate) = 1959;

-- 008)
SELECT FirstName, LastName, ROUND(DAY(HireDate) - (35/100), 1) FROM Employees;

-- 009)
SELECT LOG(Employee_ID), LOG(Employee_ID) + 20 FROM Employees;

-- 010)
SELECT Employee_ID, SQRT(Employee_ID), POW(Employee_ID, 2) FROM Employees;

-- 011)
SELECT POW(Employee_ID, 2) FROM Employees;

-- 012)
SELECT ABS(Employee_ID - 10) FROM Employees ORDER BY ABS(Employee_ID - 10) DESC;

-- 013)
SELECT FirstName, LastName, YEAR(HireDate), Year(HireDate) + RAND()*200 FROM Employees ORDER BY FirstName;
