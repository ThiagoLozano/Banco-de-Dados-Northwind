# Ex.001 #

-- 001)
CREATE DATABASE IF NOT EXISTS Concessionaria;

-- 002)
USE Concessionaria;

-- 003)
CREATE TABLE IF NOT EXISTS Veiculo(
Chassi VARCHAR(17) PRIMARY KEY,
Marca VARCHAR(10) NOT NULL,
Modelo VARCHAR(20) NOT NULL,
Ano_Fabricacao INT NOT NULL,
Ano_Modelo INT NOT NULL,
Combustivel CHAR (1)
);

SELECT * FROM Veiculo;

-- 004)
ALTER TABLE Veiculo
ADD COLUMN Dinheiro DECIMAL(6, 2) NOT NULL;

ALTER TABLE Veiculo
ADD COLUMN Motor VARCHAR(20) NOT NULL;

-- 005)
ALTER TABLE Veiculo
DROP Motor;

-- 006)
CREATE INDEX Marca_Modelo
ON Veiculo (Marca ASC, Modelo ASC);

-- 007)
CREATE INDEX Ano_Fabri
ON Veiculo (Ano_FAbricacao DESC);

-- 008)
DROP INDEX Marca_Modelo ON Veiculo;

-- 009)
DROP TABLE Veiculo;

-- 010)
CREATE TABLE IF NOT EXISTS Marca(
Marca VARCHAR(10) NOT NULL PRIMARY KEY,
Ano_fundacao DATE NOT NULL,
Pais_Origem VARCHAR(20),
Observacao VARCHAR(255)
);

SELECT * FROM Marca;

-- 011)
DROP TABLE Marca;

-- 012)
DROP DATABASE Concessionaria;
