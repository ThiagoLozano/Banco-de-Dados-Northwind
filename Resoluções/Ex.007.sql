# Ex.007 #

-- 001)
ALTER TABLE Employees
ADD COLUMN Salary DECIMAL(6, 2);

UPDATE Employees
SET Salary = FLOOR(RAND() * 8500 + 1000);

-- 002)
SELECT MAX(Salary), MIN(Salary) FROM Employees
WHERE City = 'London';

-- 003)
SELECT SUM(Salary) FROM Employees
WHERE LastName LIKE 'D%';

-- 004)
ALTER TABLE Employees
ADD COLUMN PersonalEmail VARCHAR(50);

UPDATE Employees
SET PersonalEmail = CONCAT(FirstName, '@Gmail.com')
WHERE Employee_ID = 1 OR Employee_ID = 4 OR Employee_ID = 7;

UPDATE Employees
SET PersonalEmail = CONCAT(LastName, '@Yahoo.com')
WHERE Employee_ID = 2 OR Employee_ID = 5 OR Employee_ID = 8;

UPDATE Employees
SET PersonalEmail = CONCAT(FirstName, '.', LastName, '@Uol.com.br')
WHERE Employee_ID = 3 OR Employee_ID = 6 OR Employee_ID = 9;

-- 005)
SELECT ROUND(AVG(Salary), 2) FROM Employees
WHERE PersonalEmail Like '%Yahoo.com';

-- 006)
SELECT COUNT(*) FROM Employees
WHERE PersonalEmail NOT LIKE '%com.br';

-- 007)
SELECT MIN(BirthDate) FROM Employees;

-- 008)
SELECT MAX(BirthDate) AS Maior_Nascimento FROM Employees;

-- 009)
SELECT COUNT(*) AS Quantidade_de_Seattle FROM Employees
WHERE City = 'Seattle';

-- 010)
SELECT SUM(Salary) FROM Employees
WHERE City = 'London';

-- 011)
SELECT ROUND(AVG(Salary), 2) FROM Employees
WHERE City = 'London';

-- 012)
SELECT SUM(Salary) FROM Employees
WHERE FirstName LIKE 'An%';

-- 013)
SELECT COUNT(*) FROM Employees
WHERE FirstName LIKE '%er%';

-- 014)
SELECT MAX(Salary), MIN(Salary) FROM Employees
WHERE Address LIKE '%Ave%';
