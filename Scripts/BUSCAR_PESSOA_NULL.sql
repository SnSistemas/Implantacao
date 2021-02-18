/*
* @author: Ruan Alves
* Função: Verifica na tabela pessoa se alguns campos se encontram NULL, pois a falta dessas informações impossibilita a transmissão da NOTA FISCAL
*/
SELECT P.CODIGO, P.NOME, P.FANTASIA, P.ENDERECO, P.COMPLEMENTO, P.BAIRRO, P.CODCIDADE FROM PESSOA P
	WHERE P.NOME IS NULL OR P.FANTASIA IS NULL OR P.ENDERECO IS NULL OR P.COMPLEMENTO IS NULL OR P.BAIRRO IS NULL OR P.CODCIDADE IS NULL
	AND P.CNPJ IS NOT NULL
