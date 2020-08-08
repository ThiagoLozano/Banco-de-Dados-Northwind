# Ex.004 #

-- 001)
SELECT FirstName, LastName, DAY(BirthDate), MONTH(BirthDate), YEAR(BirthDate) FROM Employees;

-- 002)
SELECT DISTINCT MONTHNAME(BirthDate) FROM Employees ORDER BY MONTHNAME(BirthDate) ;

-- 003)
SELECT Employee_ID, FirstName, LastName FROM Employees
WHERE YEAR(BirthDate) = 1963;

-- 004)
SELECT FirstName, LastName, YEAR(CURDATE()) - YEAR(BirthDate) AS Idade FROM Employees
WHERE MONTH(BirthDate) = 5 AND YEAR(BirthDate) = 1964;

-- 005)
SELECT FirstName, LastName, DAY(BirthDate), MONTH(BirthDate) + 2 FROM Employees;

-- 006)
SELECT FirstName, LastName, YEAR(CURDATE()) - YEAR(BirthDate) AS Idade FROM Employees;

-- 007)
SELECT FirstName, LastName, YEAR(BirthDate) FROM Employees
WHERE MONTH(BirthDate) BETWEEN 8 AND 9 AND YEAR(BirthDate) = 1963;

-- 008)
SELECT FirstName, LastName, YEAR(BirthDate) FROM Employees
WHERE Regial = 'WA';

-- 009)
SELECT FirstName, LastName, BirthDate FROM Employees
WHERE YEAR(BirthDate) < 1960;

-- 010)
SELECT DISTINCT City, Regial FROM Employees
WHERE YEAR(BirthDate) > 1960;

-- 011)
SELECT * FROM Employees
WHERE YEAR(BirthDate) = 1948 OR YEAR(BirthDate) = 1958;

-- 012)
SELECT FirstName, LastName FROM Employees
WHERE DAY(BirthDate) = 30;
