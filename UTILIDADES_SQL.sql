
/*
##################				 REGEXP				##################
*/
-- Busca todos os nomes de estudantes que come�em com a "TO", como 'Tommy', 'Toninho', 'Tobias'
SELECT	NOME FROM ESTUDANTE WHERE NOME REGEXP  '^TO'




/*
##################				 INFORMATION SCHEMA				##################
*/

--Evidencia todas as tabelas presentes em uma Database

USE nome_database
SELECT	* FROM INFORMATION_SCHEMA.TABLES