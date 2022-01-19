

CREATE TABLE	MATERIAL
(
	CD_EMPRESA				INT				NOT NULL
,	CD_MATERIAL				INT				NOT NULL
,	DS_MATERIAL				VARCHAR(50)		NOT NULL
,	VL_UNITARIO				DECIMAL (10, 2) NOT NULL
,	CD_TP_MATERIAL			INT				NOT NULL
,	ID_FORNECEDOR_MATERIAL	INT


	CONSTRAINT PK_TB_MATERIAL_CD_EMPRESA_CD_MATERIAL	PRIMARY KEY(CD_EMPRESA, CD_MATERIAL)
,	CONSTRAINT FK_TB_MATERIAL_CD_EMPRESA_CD_TP_MATERIAL FOREIGN KEY(CD_EMPRESA, CD_TP_MATERIAL)
				REFERENCES	TP_MATERIAL(CD_EMPRESA, CD_TP_MATERIAL)

)


-- CRIA INDEX
CREATE INDEX	IX_MAT	ON	MATERIAL (CD_EMPRESA, CD_TP_MATERIAL)	


