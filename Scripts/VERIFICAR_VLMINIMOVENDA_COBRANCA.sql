/**
* @author Ruan Alves
* Função: Verificar Valor Mínimo de Venda, caso esteja NULL deverá ser 0
*/
UPDATE COBRANCA_COMPLEMENTOS SET VLMINIMOVENDA = 0 WHERE VLMINIMOVENDA IS NULL OR VLMINIMOVENDA = ''