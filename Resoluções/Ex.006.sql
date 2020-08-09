# Ex.006 #

-- Ex.001)
SELECT UPPER(FirstName) FROM Employees;

-- Ex.002)
ALTER TABLE Employees
ADD COLUMN FullName VARCHAR(35);

-- Ex.003)
UPDATE Employees
SET FullName = CONCAT(FirstName,' ',LastName);

-- Ex.004)
SELECT DISTINCT MONTHNAME(BirthDate), LENGTH(MONTHNAME(BirthDate)) FROM Employees;

-- Ex.005)
SELECT REPLACE(FullName, ' ', '-') FROM Employees;

-- Ex.006)
SELECT LEFT(FirstName, 3), RIGHT(FirstName, 4) FROM Employees;

-- Ex.007)
SELECT SQRT(LENGTH(FirstName)) FROM Employees;

-- Ex.008)
SELECT SUBSTR(City, 3, 5) FROM Employees;

-- Ex.009)
SELECT REPLACE(FullName, ' ', '') FROM Employees;

-- Ex.010)
SELECT ASCII(Employee_ID) FROM Employees
WHERE City = 'London';

-- Ex.011)
SELECT ASCII(FirstName) FROM Employees
WHERE DAY(BirthDate) > 20;

-- Ex.012)
SELECT RTRIM(LEFT(City, 4))FROM Employees;

-- Ex.013)
SELECT LTRIM(RIGHT(City, 6)) FROM Employees;

-- Ex.014)
SELECT DISTINCT LOWER(City) FROM Employees;
