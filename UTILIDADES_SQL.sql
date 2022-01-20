
/*
##################				 REGEXP				##################
*/
-- Busca todos os nomes de estudantes que começem com a "TO", como 'Tommy', 'Toninho', 'Tobias'
SELECT	NOME FROM ESTUDANTE WHERE NOME REGEXP  '^TO'




/*
##################				 INFORMATION SCHEMA				##################
*/

--Evidencia todas as tabelas presentes em uma Database

USE MINIERP

SELECT	* FROM INFORMATION_SCHEMA.TABLES


-- Evidencia todos os campos e tipos de dados
SP_HELP --nome_da_tabela




/*
##################				TRIGGERS				##################
*/

--Evidencia todas os triggers de uma database

USE	nome_database
SELECT	*	FROM sys.triggers




/*
##################				ALTERAR O TIPO DE DADO DA COLUNA				##################
*/

ALTER TABLE nome_tabela	ALTER COLUMN nome_da_coluna VARCHAR(20) NOT NULL 