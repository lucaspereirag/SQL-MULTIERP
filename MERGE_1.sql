





CREATE TABLE PRODUTOS
(
		cod_prod	INT PRIMARY KEY
	,	descricao	VARCHAR(100)
	,	preco		MONEY
)


INSERT PRODUTOS
VALUES	
(1, 'Chá', 10.00),
(2, 'Café', 20.00),
(3, 'Leite', 30.00),
(4, 'Pão', 40.00)




CREATE TABLE prod_atual
(
		cod_prod	INT PRIMARY KEY
	,	descricao	VARCHAR(100)
	,	preco		MONEY
)

INSERT prod_atual
VALUES
(1, 'Chá', 10.00),
(2, 'Café', 25.00),
(3, 'Leite', 35.00),
(5,	'Peixe', 60.00)

TRUNCATE TABLE prod_atual

SELECT * FROM PRODUTOS
SELECT * FROM prod_atual


MERGE	PRODUTOS		AS destino
USING	prod_atual		AS origem
ON		destino.cod_prod = origem.cod_prod

WHEN MATCHED 

THEN UPDATE SET destino.preco = origem.preco



WHEN NOT MATCHED 

THEN INSERT (cod_prod, descricao, preco) VALUES (origem.cod_prod, origem.descricao, origem.preco)



