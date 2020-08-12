# Ex.010 #

-- 001)
CREATE DATABASE IF NOT EXISTS BDCompras;

-- 002)
USE BDCompras;

-- 003)
CREATE TABLE IF NOT EXISTS Cliente(
ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(50),
Endereco VARCHAR(50),
Cidade VARCHAR(50),
Estado CHAR(2)
);

CREATE TABLE IF NOT EXISTS Produtos(
ID_Produto INT AUTO_INCREMENT PRIMARY KEY,
Descricao VARCHAR(50),
Preco DECIMAL(5, 2),
Quantidade INT
);

CREATE TABLE IF NOT EXISTS Compras(
ID_Compra INT AUTO_INCREMENT PRIMARY KEY,
ID_Cliente INT,
ID_Produto INT,
Data_Compra DATE,
Quantidade INT,
Valor DECIMAL(5, 2)
);

ALTER TABLE Compras AUTO_INCREMENT=1000;

-- 004)
ALTER TABLE Cliente
ADD COLUMN Sexo CHAR(1);

-- 005)
INSERT INTO Cliente VALUES	
(DEFAULT, 'José de Oliveira', 'Av. Jatobá, 34',		'Jundiaí', 'SP', 'F'),
(DEFAULT, 'Maria da Silva',   'Av. Presidente, 12', 'Itatíba', 'MG', 'F'),
(DEFAULT, 'Antônio Carlos',   'R. Florença, 5', 	'Jundiaí', 'SP', 'M'),
(DEFAULT, 'Luísa de Souza',   'Av. Jatobá, 45', 	'Jundiaí', 'SP', 'F'),
(DEFAULT, 'Carlos de Souza',  'Av. Jatobá, 45', 	'Jundiaí', 'SP', 'M');

SELECT * FROM Cliente;

-- 006)
INSERT INTO Produtos VALUES
(DEFAULT, 'Lápis',    1.50 , 20),
(DEFAULT, 'Borracha', 1.00,  15),
(DEFAULT, 'Caneta',   1.75 , 35),
(DEFAULT, 'Compasso', 5.20,  10),
(DEFAULT, 'Régua',    0.75 , 16),
(DEFAULT, 'Papel Sulfite',  10.50, 5);

SELECT * FROM Produtos;

-- 007)
INSERT INTO Compras VALUES
(DEFAULT, 1 , 1 , '2010-12-01', 2 ,  1.50),
(DEFAULT, 2 , 2 , '2010-12-03', 5 ,  1.50),
(DEFAULT, 1 , 3 , '2011-01-05', 13 , 1.75),
(DEFAULT, 1 , 4 , '2011-01-11', 1 ,  5.20),
(DEFAULT, 3 , 2 , '2011-03-16', 7 ,  1.00),
(DEFAULT, 4 , 5 , '2011-05-21', 10 , 0.75),
(DEFAULT, 2 , 6 , '2011-06-07', 2 ,  10.50),
(DEFAULT, 5 , 3 , '2011-06-07', 2 ,  1.75);

SELECT * FROM Compras;

-- 008)
UPDATE Cliente
SET Estado = 'SP';

-- 009)
SELECT Nome, Estado FROM Cliente;

-- 010)
UPDATE Cliente
SET Sexo = 'M'
WHERE Nome = 'José de Oliveira';

-- 011)
SELECT Descricao, Preco FROM Produtos;

-- 012)
DELETE FROM Produtos
WHERE Descricao = 'Papel Sulfite';

-- 013)
UPDATE Produtos
SET Quantidade = 15
WHERE Descricao = 'Lápis';

-- 014)
SELECT LOWER(Descricao) FROM Produtos LIMIT 2;

-- 015)
SELECT SUM(Valor) FROM Compras
WHERE ID_Produto = 1;

-- 016)
SELECT ROUND(AVG(Valor), 2) FROM Compras
WHERE ID_Cliente = 1;

-- 017)
SELECT Nome FROM Cliente
WHERE Cidade = 'Jundiaí';

-- 018)
SELECT ID_Cliente, UPPER(Nome) FROM Cliente
WHERE Nome LIKE 'Carlos%' OR Nome LIKE '%Carlos%' OR Nome LIKE '%Carlos';

-- 019)
SELECT Descricao, Preco, Quantidade FROM Produtos
WHERE Preco > 1.00 AND Quantidade >= 10;

-- 020)
SELECT * FROM Cliente ORDER BY Nome;

-- 021)
SELECT Cidade, COUNT(*) FROM Cliente GROUP BY Cidade ORDER BY COUNT(*);

-- 022)
SELECT SUM(Preco), ROUND(AVG(Preco), 2) FROM Produtos;

-- 023)
SELECT MAX(Preco), MIN(Preco) FROM Produtos;

-- 024)
SELECT SUM(Valor) FROM Compras
WHERE YEAR(Data_Compra) = 2010;

-- 025
SELECT * FROM Compras 
WHERE YEAR(Data_Compra) = 2011
ORDER BY Data_Compra
LIMIT 1;

-- 026)
SELECT * FROM Cliente
WHERE Sexo = 'F';

-- 027)
SELECT * FROM Compras
WHERE DAY(Data_Compra) = 7 OR DAY(Data_Compra) = 11;

-- 028)
SELECT Descricao, Preco, ROUND(Preco + (10/100), 2) AS '10%_de_Acréscimo' FROM Produtos;

-- 029)
SELECT ID_Cliente, SUM(Quantidade) FROM Compras GROUP BY ID_Cliente;

-- 030)
UPDATE Produtos
SET Preco = Preco - (10/100)
WHERE Quantidade < 15;

-- 031)
SELECT ID_Produto, DAY(Data_Compra) FROM Compras;

-- 032)
SELECT SEXO, COUNT(*) FROM Cliente GROUP BY SEXO;

-- 033)
DELETE FROM Compras
WHERE ID_Compra = 1000;

-- 034)
SELECT Descricao, POWER(Quantidade, 2) FROM Produtos
WHERE Quantidade > 15 AND Quantidade < 25;

-- 035)
SELECT SQRT(Quantidade) FROM Produtos
WHERE Descricao LIKE 'C%';

-- 036)
SELECT Nome FROM Cliente
WHERE Endereco LIKE 'Av. Jatobá%';

-- 037)
SELECT Nome, LENGTH(Nome) FROM Cliente;

-- 038)
SELECT ID_Compra, Valor, ROUND(Valor - (20/100), 2) AS '20%_De_Desconto' FROM Compras
WHERE ID_Cliente = 2;

-- 039)
SELECT DISTINCT YEAR(Data_Compra), SUM(Quantidade) FROM Compras GROUP BY YEAR(Data_Compra);

-- 040)
SELECT ID_Compra, DAYNAME(Data_Compra), MONTHNAME(Data_Compra), YEAR(Data_Compra) FROM Compras;

-- 041)
SELECT ID_Produto, SUM(Valor) FROM Compras
WHERE Valor > 7.00
GROUP BY ID_Produto;

-- 042)
DELETE FROM Compras
WHERE ID_Cliente BETWEEN 3 AND 5;

-- 043)
DROP TABLE Produtos;

-- 044)
DROP DATABASE BDCompras;
