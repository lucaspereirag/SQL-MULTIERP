-- BULK INSERT: Carga Massiva de Dados através de arquivos externos.

--DROP TABLE produtos

CREATE TABLE produtos
(
	cod			NVARCHAR(10),
	nome		NVARCHAR(20)
)

TRUNCATE TABLE produtos

SELECT		*
FROM		produtos

--Bulk insert nome_da_tabela 
--FROM local_do_arquivo
BULK INSERT		produtos
FROM			'D:\SQL_SERVER\RECURSOS_UDEMY\carga\produto.txt'
WITH
(
		codepage = 'ACP',
		--DATAFILETYPE = 'widechair',
		fieldterminator = '|',
		rowterminator = '\n',
		maxerrors = 0,
		fire_triggers,
		firstrow = 1
		--lastrow
);



SELECT * FROM sys.servers

