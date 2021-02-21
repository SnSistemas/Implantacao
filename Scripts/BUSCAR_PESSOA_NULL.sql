/*
* @author: Ruan Alves
* Função: Verifica na tabela pessoa se alguns campos se encontram NULL, pois a falta dessas informações impossibilita a transmissão da NOTA FISCAL
ou impossibilita algum processo dentro do sistema
*/
SELECT P.CODIGO, P.NOME, P.FANTASIA, P.ENDERECO, P.COMPLEMENTO, P.BAIRRO, P.CODCIDADE FROM PESSOA P
	WHERE P.NOME IS NULL OR P.FANTASIA IS NULL OR P.ENDERECO IS NULL OR P.COMPLEMENTO IS NULL OR P.BAIRRO IS NULL OR P.CODCIDADE IS NULL
	OR P.CNPJ IS NOT NULL OR P.TIPOMOTORISTA IS NULL
GO

/*
* @author: Ruan Alves
* Função: Verificar Campos que estão NULL, caso estejam, deverão ser setados como NULL
*/
UPDATE PESSOA SET VLLIMITECRED = 0 WHERE VLLIMITECRED IS NULL
GO
UPDATE PESSOA SET VLLIMITECRED = 0 WHERE VLLIMITECRED IS NULL
GO
UPDATE PESSOA SET VLCREDDISPONIVEL = 0 WHERE VLCREDDISPONIVEL IS NULL
