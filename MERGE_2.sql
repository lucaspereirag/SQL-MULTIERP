
DROP TABLE #tabela1
SELECT * FROM #tabela1

CREATE TABLE #tabela1
(
NOME VARCHAR(10),
CADASTRO DATETIME,
ALTERACAO DATETIME,
SITUACAO BIT
)

INSERT #tabela1
VALUES
('JACK', GETDATE(),NULL, 1),
('PETER', GETDATE(), NULL, 1),
('JOHN', GETDATE(), NULL, 1),
('MALCON', GETDATE(), NULL, 1),
('ARTHUR', GETDATE(), NULL, 1)


DROP TABLE #tabela2

CREATE TABLE #tabela2
(
	NOME VARCHAR(100),
	EMAIL VARCHAR(100)
)


INSERT #tabela2
VALUES
('JACK', 'jack@jack.com'),
('PETER', 'peter@parker.com'),
('JOHN', 'john@jhon.com'),
('MALCON', 'MALCON@x.com'),
('RICHARD', 'richard@reeds.com')


SELECT * FROM #tabela2




MERGE #tabela1   AS Destino

USING #tabela2   AS Origem

ON Destino.NOME	=  Origem.NOME

-- Há registros no destino, que são iguais a origem? Se sim...

WHEN MATCHED

THEN UPDATE SET SITUACAO = 0, ALTERACAO = GETDATE()


-- Não há registros no destino, que são iguais a Origem.

WHEN NOT MATCHED

THEN INSERT(NOME, CADASTRO, ALTERACAO, SITUACAO) VALUES (Origem.NOME, GETDATE(), GETDATE(), 1)



-- Quando há registros no Destino, mas não há na Origem

WHEN NOT MATCHED BY SOURCE

THEN UPDATE SET SITUACAO = NULL, ALTERACAO = GETDATE();



SELECT * FROM #tabela1

SELECT * FROM #tabela2