/**
* @author Ruan Alves
* Fun��o: Verificar Valor M�nimo de Venda, caso esteja NULL dever� ser 0
*/
UPDATE COBRANCA_COMPLEMENTOS SET VLMINIMOVENDA = 0 WHERE VLMINIMOVENDA IS NULL OR VLMINIMOVENDA = ''