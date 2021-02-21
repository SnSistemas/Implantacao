/**
* @author Ruan Alves
* Fun��o: Inserindo Empresa Complementos para Empresa que n�o possuem essa tabela
*/
INSERT INTO EMPRESA_COMPLEMENTOS (CODEMPRESA, MARGMINIMAPRECIFICACAO, TIPOFRETEPADRAO)
(SELECT CODIGO, 0, 'CIF' FROM EMPRESA WHERE CODIGO NOT IN (SELECT CODEMPRESA FROM EMPRESA_COMPLEMENTOS))