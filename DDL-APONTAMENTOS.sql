


-- CRIA A TABELA DE APONTAMENTOS DE PRODUCAO

CREATE TABLE APONTAMENTOS 
(
	CD_EMPRESA				INT					NOT NULL
,	ID_APONTAMENTO			INT	IDENTITY(1,1)	NOT NULL
,	ID_ORDEM_PRODUCAO		INT					NOT NULL
,	CD_MATERIAL_PRODUCAO	INT
,	QTD_APONTAMENTO			DECIMAL(10,2)		NOT NULL
,	DT_APONTAMENTO			DATETIME			NOT NULL


	CONSTRAINT PK_TB_APONTAMENTO_CD_EMPRESA_ID_APONTAMENTO		 PRIMARY KEY (CD_EMPRESA, ID_APONTAMENTO)
,	CONSTRAINT FK_TB_APONTAMENTO_CD_EMPRESA_CD_MATERIAL_PRODUCAO FOREIGN KEY (CD_EMPRESA, CD_MATERIAL_PRODUCAO) REFERENCES MATERIAL (CD_EMPRESA, CD_MATERIAL)
,	CONSTRAINT FK_TB_APONTAMENTO_CD_EMPRESA_ID_ORDEM_PRODUCAO	 FOREIGN KEY (CD_EMPRESA, ID_ORDEM_PRODUCAO)	 REFERENCES ORDEM_PRODUCAO (CD_EMPRESA, ID_ORDEM_PRODUCAO)
)


