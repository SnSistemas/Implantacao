/**
* @author Ruan Alves
* Função: Checar se o tipo de calculo veio certo da migração
*/
UPDATE PESSOA SET TIPOCALCULO = 2 WHERE LEN (CNPJ) = 14 AND IE <> 'ISENTO'