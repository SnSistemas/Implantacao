/**
* @author Ruan Alves
* Fun��o: Verificar na tabela PRODUTO se existe algum produto com codigo 0, caso tenha, dever� ser removido
*/
DELETE FROM PRECOTABELA WHERE CODPRODUTOPRECO = 0
GO
DELETE FROM DESCONTOQUANTIDADE WHERE CODPRODUTO = 0
GO
DELETE FROM PRODUTO_COMPLEMENTOS WHERE CODPRODUTO = 0
GO
DELETE FROM PRECO_ESTOQUE WHERE CODPRODUTO = 0
GO
DELETE FROM PRODUTO WHERE CODIGO = 0