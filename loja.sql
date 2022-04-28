CREATE DATABASE loja;

USE loja;

CREATE TABLE produtos (
	ProdutoId int NOT NULL,
	Nome varchar(255) NOT NULL,
	Quantidate int NOT NULL,
	Preco float NOT NULL
);

ALTER TABLE produtos RENAME COLUMN Quantidate TO Quantidade;

ALTER TABLE produtos ADD CONSTRAINT ProdutoId_pk PRIMARY KEY (ProdutoId);

INSERT INTO produtos(ProdutoId, Nome, Quantidade, Preco) VALUES(1, 'Escova de dente', 20, 5.00);

INSERT INTO produtos VALUES(2, 'Barraca de camping', 3, 899.89);

INSERT INTO produtos VALUES(3, 'Chinelo Havaianas n. 34', 4, 27.40);

INSERT INTO produtos VALUES(4, 'Capacete', 10, 102.99);

INSERT INTO produtos VALUES(5, 'Chinelo Havaianas n. 47', 8, 47.99);

UPDATE produtos SET nome = 'Chinelo Havaianas n. 37' WHERE ProdutoId = 5;

ALTER TABLE produtos ADD Fornecedor varchar(255);

UPDATE produtos SET Fornecedor = 'Havaianas';

UPDATE produtos SET Fornecedor = 'Colgate' WHERE ProdutoId = 1;

UPDATE produtos SET Fornecedor = 'Adidas' WHERE ProdutoId = 2;

UPDATE produtos SET Fornecedor = 'Americanas' WHERE ProdutoId = 4;

INSERT INTO produtos VALUES (6, 'Caiaque', 2, 2499.39, 'Decathlon');

SELECT * FROM produtos;

SELECT * FROM produtos WHERE Preco > 20.00;

SELECT * FROM produtos WHERE Fornecedor = 'Havaianas';

SELECT * FROM produtos
WHERE Fornecedor = 'Havaianas'
ORDER BY Quantidade ASC;

SELECT * FROM produtos
ORDER BY ProdutoID;

DELETE FROM produtos WHERE ProdutoId = 3;

TRUNCATE TABLE produtos;

DROP TABLE produtos;
