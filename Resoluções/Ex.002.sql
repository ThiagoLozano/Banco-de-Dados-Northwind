# Ex.002 #

-- 001)
CREATE DATABASE IF NOT EXISTS Concessionaria;
USE Concessionaria;

-- 002)
CREATE TABLE IF NOT EXISTS Funcionario(
ID_Funcionario INT NOT NULL AUTO_INCREMENT,
Nome VARCHAR(50) NOT NULL,
Endereco VARCHAR(100) NULL,
Cidade VARCHAR(50) NULL,
Estado CHAR(2) NULL,
Email VARCHAR(50) NOT NULL UNIQUE,
DataNasc DATE NULL,
DataAdmissao DATE NOT NULL,
PRIMARY KEY (ID_Funcionario)
);

-- 003)
INSERT INTO Funcionario VALUES
(DEFAULT, 'Funcionário A', 'Rua ABCDE', 'Campinas',  'SP', 'funcA@email.com', '1998-02-17', '2020-04-10'),
(DEFAULT, 'Funcionário G', 'Rua ABCDF', 'Itú', 		 'SP', 'funcG@email.com', '1997-03-20', '2020-05-11'),
(DEFAULT, 'Funcionário C', 'Rua ABCDG', 'São Paulo', 'SP', 'funcC@email.com', '2000-02-27', '2020-05-11'),
(DEFAULT, 'Funcionário H', 'Rua ABCDH', 'Campinas',  'SP', 'funcH@email.com', '1996-05-14', '2020-10-12'),
(DEFAULT, 'Funcionário K', 'Rua ABCDI', 'São Paulo', 'SP', 'funcK@email.com', '1990-10-04', '2020-03-20'),
(DEFAULT, 'Funcionário D', 'Rua ABCDJ', 'Itú', 		 'SP', 'funcD@email.com', '1998-06-15', '2020-07-15'),
(DEFAULT, 'Funcionário I', 'Rua ABCDK', 'Campinas',  'SP', 'funcI@email.com', '1998-06-15', '2020-06-14'),
(DEFAULT, 'Funcionário L', 'Rua ABCDL', 'Atibaia', 	 'SP', 'funcL@email.com', '1997-09-29', '2020-06-14'),
(DEFAULT, 'Funcionário E', 'Rua ABCDM', 'Bragança',  'SP', 'funcE@email.com', '2000-10-02', '2020-11-13'),
(DEFAULT, 'Funcionário J', 'Rua ABCDN', 'Jundiaí', 	 'SP', 'funcJ@email.com', '1999-12-20', '2020-09-20'),
(DEFAULT, 'Funcionário B', 'Rua ABCDO', 'Atibaia', 	 'SP', 'funcB@email.com', '1998-11-03', '2020-02-27'),
(DEFAULT, 'Funcionário F', 'Rua ABCDP', 'Bragança',  'SP', 'funcF@email.com', '1996-07-16', '2020-07-14');

SELECT * FROM Funcionario;

-- 004)
UPDATE Funcionario
SET Cidade = 'Valinhos'
WHERE Cidade = 'Itú';

-- 005)
ALTER TABLE Funcionario
ADD COLUMN Cargo VARCHAR(20) NOT NULL;

ALTER TABLE Funcionario
ADD COLUMN Salario Decimal(6, 2) NOT NULL;

-- 006)
UPDATE Funcionario
SET Salario = 1700.00, Cargo = 'AL'
WHERE Cidade = 'Valinhos';

UPDATE Funcionario
SET Salario = 2700.00, Cargo = 'PC'
WHERE Cidade = 'Campinas';

UPDATE Funcionario
SET Salario = 3100.00, Cargo = 'TI'
WHERE Cidade = 'Jundiaí';

UPDATE Funcionario
SET Salario = 1850.00, Cargo = 'AL'
WHERE Cidade = 'São Paulo';

-- 007)
SELECT Nome, Cargo FROM funcionario ORDER BY Nome ASC;
SELECT Nome, Cargo FROM funcionario ORDER BY Cargo DESC;

-- 008)
SELECT ID_Funcionario, Email FROM funcionario
WHERE Cidade = 'São Paulo';

-- 009)
DELETE FROM Funcionario
WHERE ID_Funcionario = 5;

-- 010)
DELETE FROM Funcionario
WHERE Cidade IN ('São Paulo', 'Valinhos') AND Salario < 2000.00;

-- 011)
SELECT DISTINCT Cidade, Estado FROM Funcionario
WHERE Cargo = 'PC';

-- 012)
SELECT Nome, Salario, ROUND(Salario * 3.30, 2) AS 'US$ 3.10' FROM funcionario ORDER BY 'US$ 3.10' ASC;

-- 013)
SELECT Nome, DataNasc FROM funcionario ORDER BY DataNasc DESC;

-- 014)
CREATE INDEX INDX_Nomes
ON Funcionario(Nome ASC);

CREATE INDEX INDX_DataAdmissao
ON Funcionario (DataAdmissao DESC);

-- Finalizar
DROP DATABASE Concessionaria;
