/**
* @author Ruan Alves
* Fun��o: Alterando valores NULL da tabela PRECO_ESTOQUE
*/
UPDATE PRECO_ESTOQUE SET QTBLOQUEADA = 0 WHERE QTBLOQUEADA IS NULL
GO
UPDATE PRECO_ESTOQUE SET QTPENDENTE = 0 WHERE QTPENDENTE IS NULL
GO
UPDATE PRECO_ESTOQUE SET QTDISPONIVEL = 0 WHERE QTDISPONIVEL IS NULL
GO
UPDATE PRECO_ESTOQUE SET QTESTOQUE = 0 WHERE QTESTOQUE IS NULL
GO
UPDATE PRECO_ESTOQUE SET QTRESERVADA = 0 WHERE QTRESERVADA IS NULL
GO
UPDATE PRECO_ESTOQUE SET QTESTOQUEMINIMO = 0 WHERE QTESTOQUEMINIMO IS NULL
GO
UPDATE PRECO_ESTOQUE SET CUSTOULTENTRADA = 0 WHERE CUSTOULTENTRADA IS NULL
GO
UPDATE PRECO_ESTOQUE SET CUSTOMANUAL = 0 WHERE CUSTOMANUAL IS NULL
GO
UPDATE PRECO_ESTOQUE SET CUSTOMEDIO = 0 WHERE CUSTOMEDIO IS NULL

/** * Alterando valores NULL da tabela PRECOTABELA **/

UPDATE PRECOTABELA SET CPV = 0 WHERE CPV IS NULL
GO
UPDATE PRECOTABELA SET PERCOMISSAO = 0 WHERE PERCOMISSAO IS NULL
GO
UPDATE PRECOTABELA SET PERDESCONTO = 0 WHERE PERDESCONTO IS NULL
GO
UPDATE PRECOTABELA SET PERICMSCPV = 0 WHERE PERICMSCPV IS NULL
GO
UPDATE PRECOTABELA SET PERMARGEMLUCRO = 0 WHERE PERMARGEMLUCRO IS NULL
GO
UPDATE PRECOTABELA SET PEROPERACIONAL = 0 WHERE PEROPERACIONAL IS NULL
GO
UPDATE PRECOTABELA SET PERPISCOFINSCPV = 0 WHERE PERPISCOFINSCPV IS NULL
GO
UPDATE PRECOTABELA SET PERSIMPLESNACIONAL = 0 WHERE PERSIMPLESNACIONAL IS NULL
GO
UPDATE PRECOTABELA SET PRECOMINIMO = 0 WHERE PRECOMINIMO IS NULL
GO
UPDATE PRECOTABELA SET PRECOOFERTA = 0 WHERE PRECOOFERTA IS NULL
GO
UPDATE PRECOTABELA SET PRECOCONSUMIDOR = 0 WHERE PRECOCONSUMIDOR IS NULL
GO
UPDATE PRECOTABELA SET PRECOREVENDA = 0 WHERE PRECOREVENDA IS NULL
GO
UPDATE PRECOTABELA SET PRECOSUGERIDO = 0 WHERE PRECOSUGERIDO IS NULL
GO
UPDATE PRECOTABELA SET VLFRETEPRODUTO = 0 WHERE VLFRETEPRODUTO IS NULL
GO
UPDATE PRECOTABELA SET VLFRETETONELADA = 0 WHERE VLFRETETONELADA IS NULL

/** * Alterando valores NULL da tabela PRECOREGIAO **/

UPDATE PRECOREGIAO SET CPV = 0 WHERE CPV IS NULL
GO
UPDATE PRECOREGIAO SET PERCOMISSAO = 0 WHERE PERCOMISSAO IS NULL
GO
UPDATE PRECOREGIAO SET PERDESCONTO = 0 WHERE PERDESCONTO IS NULL
GO
UPDATE PRECOREGIAO SET PERICMSCPV = 0 WHERE PERICMSCPV IS NULL
GO
UPDATE PRECOREGIAO SET PERMARGEMLUCRO = 0 WHERE PERMARGEMLUCRO IS NULL
GO
UPDATE PRECOREGIAO SET PEROPERACIONAL = 0 WHERE PEROPERACIONAL IS NULL
GO
UPDATE PRECOREGIAO SET PERPISCOFINSCPV = 0 WHERE PERPISCOFINSCPV IS NULL
GO
UPDATE PRECOREGIAO SET PERSIMPLESNACIONAL = 0 WHERE PERSIMPLESNACIONAL IS NULL
GO
UPDATE PRECOREGIAO SET PRECOMINIMO = 0 WHERE PRECOMINIMO IS NULL
GO
UPDATE PRECOREGIAO SET PRECOOFERTA = 0 WHERE PRECOOFERTA IS NULL
GO
UPDATE PRECOREGIAO SET PRECOCONSUMIDOR = 0 WHERE PRECOCONSUMIDOR IS NULL
GO
UPDATE PRECOREGIAO SET PRECOREVENDA = 0 WHERE PRECOREVENDA IS NULL
GO
UPDATE PRECOREGIAO SET PRECOSUGERIDO = 0 WHERE PRECOSUGERIDO IS NULL
GO
UPDATE PRECOREGIAO SET VLFRETEPRODUTO = 0 WHERE VLFRETEPRODUTO IS NULL
GO
UPDATE PRECOREGIAO SET VLFRETETONELADA = 0 WHERE VLFRETETONELADA IS NULL