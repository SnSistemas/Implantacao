/*
* @author: Ruan Alves
* Função: Verificar se os Planos de Pagamentos se encontram com algum campo BIGDECIMAL = NULL
*/
SELECT P.CODIGO, P.PLANO FROM PLANOPGTO P WHERE P.TXFINANCEIRA IS NULL OR P.TXFINANPGTO IS NULL
