# Ex.008 #

-- 001)
SELECT Title, COUNT(*) FROM Employees GROUP BY Title;

-- 002)
SELECT Title, COUNT(*) FROM Employees GROUP BY Title
HAVING Title IS NOT NULL;

-- 003)
SELECT Title, ROUND(AVG(Salary), 2) AS Medias_Salarios_Cargo FROM Employees GROUP BY Title;

-- 004)
SELECT Title, SUM(Salary) FROM Employees GROUP BY Title
HAVING SUM(Salary) > 3000;

-- 005)
SELECT Title, SUM(Salary) FROM Employees GROUP BY Title, City
HAVING City = 'Seattle';

-- 006)
UPDATE Employees
SET Region = 'EU'
WHERE City = 'London';

-- 007)
SELECT Region, COUNT(*) FROM Employees GROUP BY Region;

-- 008)
SELECT City, SUM(Salary) FROM Employees GROUP BY City;

-- 009)
SELECT City, Salary, ROUND(AVG(Salary), 2) FROM Employees GROUP BY City
HAVING AVG(Salary) IS NOT NULL;

-- 010)
SELECT Title, SUM(Salary), ROUND(AVG(Salary), 2) FROM Employees GROUP BY Title
HAVING SUM(Salary) < 500;

-- 011)
SELECT City, Title, SUM(Salary), ROUND(AVG(Salary), 2) FROM Employees GROUP BY City, Title;
