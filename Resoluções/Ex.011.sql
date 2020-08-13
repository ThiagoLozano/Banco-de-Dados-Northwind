# Ex.011 #

-- 001)
CREATE DATABASE IF NOT EXISTS Empresa;

-- 002)
USE Empresa;

-- 003)
CREATE TABLE IF NOT EXISTS Fornecedores(
Cod_Fornecedores INT AUTO_INCREMENT ,
Empresa VARCHAR(40),
Contato VARCHAR(30),
Cargo VARCHAR(30),
Endereco VARCHAR(60),
Cidade VARCHAR(15),
CEP VARCHAR(10),
Pais VARCHAR(15),
PRIMARY KEY(Cod_Fornecedores)
);

CREATE TABLE IF NOT EXISTS Categorias(
Cod_Categoria INT AUTO_INCREMENT,
Descricao VARCHAR(50),
PRIMARY KEY(Cod_Categoria)
);

CREATE TABLE IF NOT EXISTS Clientes (
Cod_Cliente CHAR(5),
Nome VARCHAR(40),
Contato VARCHAR(30),
Cargo VARCHAR(30),
Endereco VARCHAR(60),
Cidade VARCHAR(15),
Regiao VARCHAR(15),
CEP VARCHAR(10),
Pais VARCHAR(15),
Telefone VARCHAR(24),
Fax VARCHAR(24),
PRIMARY KEY(Cod_Cliente)
);

CREATE TABLE IF NOT EXISTS Funcionarios(
Cod_Funcionario INT AUTO_INCREMENT,
Sobrenome VARCHAR(20),
Nome VARCHAR(10),
Cargo VARCHAR(30),
DataNasc DATE,
Endereco VARCHAR(60),
Cidade VARCHAR(15),
CEP VARCHAR(10),
Pais VARCHAR(15),
Telefone VARCHAR(24),
Salario DECIMAL(6, 2) DEFAULT 00.00,
PRIMARY KEY(Cod_Funcionario)
);

CREATE TABLE IF NOT EXISTS Produtos(
Cod_Produto INT AUTO_INCREMENT,
Cod_FornecedoresFK INT,
Cod_CategoriaFK INT,
Descricao VARCHAR(40),
Preco DECIMAL(6, 2) DEFAULT 00.00,
Unidades SMALLINT,
Descontinuado BIT,
PRIMARY KEY(Cod_Produto),
FOREIGN KEY(Cod_FornecedoresFK) REFERENCES Fornecedores(Cod_Fornecedores),
FOREIGN KEY(Cod_CategoriaFK) REFERENCES Categorias(Cod_Categoria)
);

CREATE TABLE IF NOT EXISTS Pedidos(
Num_Pedido INT AUTO_INCREMENT,
Cod_ClienteFK INT,
Cod_FuncionarioFK INT,
Data_Pedido DATE,
Data_Entrega DATE,
Frete DECIMAL(6, 2) DEFAULT 00.00,
PRIMARY KEY (Num_Pedido),
FOREIGN KEY (Cod_ClienteFK) REFERENCES Clientes(Cod_Cliente),
FOREIGN KEY (Cod_FuncionarioFK) REFERENCES Funcionarios(Cod_Funcionario)
);

CREATE TABLE IF NOT EXISTS DetalhesPedido(
Num_Pedido INT,
Cod_ProdutoFK INT,
Preco DECIMAL(6, 2) DEFAULT 00.00,
Quantidade SMALLINT,
Desconto FLOAT,
PRIMARY KEY(Num_Pedido, Cod_ProdutoFK),
FOREIGN KEY(Cod_ProdutoFK) REFERENCES Prrodutos(Cod_Produto)
);
