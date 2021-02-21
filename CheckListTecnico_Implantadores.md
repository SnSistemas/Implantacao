# Check List Técnico Implantação

## 1º - Processos Básicos que deverão ser testados

### 1.1º - Em ambiente de Homologação (Arquivo config.xml com a tag tpAmb = 2):

* **Menu Principal:** Verificar se Logo da empresa está visível.
* **Rotina 101:** Cadastrar um novo Cliente (Utilize para gerar CPF: [(Link)](https://www.4devs.com.br/gerador_de_cpf)).
* **Rotina 611:** Cadastrar Limite de Crédito para o Cliente novo (Pode ser de R$ 5.000,00)
* **Rotina 113:** Cadastrar um novo Produto (pode ser duplicado um produto que já seja utilizado na base do cliente).
* **Rotina 113:** Definir os Grupos de Tributação para o produto novo.
* **Rotina 119:** Precificar Produto novo.
* **Rotina 801:** Lançar a Entrada manual na 801 para o produto cadastrado. Quantidade igual a 10.
* **Rotina 801:** Lançar a Requisição na 801 para o produto cadastrado. Quantidade igual a 10
* **Rotina 201:** Lançar uma NFENTRADA na rotina 201 para o produto cadastrado (Inserir Desconto e outros atributos)
* **Rotina 802:** Conferir estoque do produto novo pelo 'Extrato de Movimentação', e utilizar a aba 'Posição do Estoque'.
* **Rotina 802:** Conferir e custo da última entrada lançada, e verificar o abatimento do desconto.
* **Rotina 602:** Conferir se foi gerada o 'Contas a Pagar' referente a Nota de Entrada.

### 1.2º - Realização de Vendas Balcão para Cliente cadastrado

* **Rotina 301:**** Emitir venda *BALCÃO* para o cliente cadastrado. Um dos produtos inseridos para venda, deverá ser o ***novo produto*** cadastrado. Há cobrança deverá ser *'A Prazo'*, natureza operação deverá *baixar estoque* e *gerar financeiro*, deverá gerar *comissão (CPA ou CPP)*, e consumir *'Limite de Crédito'*.
* **Rotina 307:** Conferir se gerou comissão. No caso verificar qual comissão o vendedor trabalha: CPA ou CPP.
* **Rotina 303:** Conferir o Pedido inserido pelo relatório: LASER – ANALÍTICO. (Verificar se LOGO da empresa aparece no relatório)
* **Rotina 305:** Transmitir NF-e gerada para o pedido balcão para conferir geração/autorização de XML junto á SEFAZ.
* **Rotina 802:** Conferir atualização do estoque para os produtos da venda.
* **Rotina 611:** Conferir 'Limite de Crédito' do cliente.
* **Rotina 608:** Conferir a gravação do título gerado para o cliente no CONTASARECEBER.
* **Rotina 608:** Realizar o desdobramento do título gerado pela venda.
* **Rotina 608:** Efetuar a baixa do título desdobrado.
* **Rotina 608:** Efetuar o estorno da baixa realizada anteriormente.
* **OBS:** Como houve desdobramento do título para o cliente, o sistema não aceitará o cancelamento da NF-e. Neste caso, implantador deverá realizar uma devolução da NFSAIDA com formulário próprio (rotinas 201, 202). (Deverá verificar a transmissão e autorizada a NFENTRADA em Ambiente de Homologação)
* **Rotina 802:** Conferir a volta do produto para o estoque (rotina 802) após a devolução da NFSAIDA. Utilizar 'Extrato de Movimentação' e aba 'Posição do Estoque'.
* **Rotina 307:** Conferir se gerou comissão negativa.
* **Rotina 305:** Implantador deverá gerar outra Nota, para testar o Cancelamento/Inutilização da mesma. Assim verificando também: comissão, estoque, limite de crédito e títulos.
* **Rotina 701**: Realizar 'Acerto de Caixa', verificar funcionalidade das abas 'Romaneio' e 'Resumo/Fechamento'.

### 1.3º - Realização de Vendas Telemarketing para Cliente cadastrado

* **Rotina 301:**** Emitir venda *Telemarketing* para o cliente cadastrado. Um dos produtos inseridos para venda, deverá ser o ***novo produto*** cadastrado. Há cobrança deverá ser *'A Prazo'* e ser *'BOLETO'*, natureza operação deverá *baixar estoque* e *gerar financeiro*.
* **Rotina 302:**** Alterar o pedido de venda gerado pela 302. Uma das edições deverá: excluir o item original e adicionado novamente com outra quantidade.
* **Rotina 308:**** Liberar pedido de venda na rotina.
* **Rotina 802:** Conferir atualização do estoque reservadoo para os produtos da venda, na aba 'Posição de Estoque'.
* **Rotina 702:** Montar uma carga e realizar o faturamento da mesma.
* **Rotina 305:** Transmitir NF-e gerada para o pedido Telemarketing para conferir geração/autorização de XML junto á SEFAZ.
* **Rotina 307:** Conferir se gerou comissão. No caso verificar qual comissão o vendedor trabalha: CPA ou CPP.
* **Rotina 802:** Conferir atualização do estoque (Desreservou e baixou o estoque) para os produtos da venda, na aba 'Posição de Estoque'.
* **Rotina 611:** Conferir 'Limite de Crédito' do cliente.
* **Rotina 608:** Conferir a gravação do título gerado para o cliente no CONTASARECEBER.
* **Rotina 616:** Emissão de Boleto e remessa, referente a NFSAIDA que foi gerada atravez do pedido de venda. 1 - Imprmir o boleto bancário, e verificar se os dados consistem com a NFSAIDA emitida. 2 - Gerar a remessa e constar o boleto gerado anteriormente na mesma.
* **Rotina 701**: Realizar 'Acerto de Caixa', verificar funcionalidade das abas 'Romaneio' e 'Resumo/Fechamento'.
* **Rotina 305:** Implantador deverá gerar outra venda *Telemarketing*, para testar o Cancelamento/Inutilização da mesma. Assim verificando também: comissão, estoque, limite de crédito e títulos.

### 1.4º - Outras Verificações

* **Rotina 115:**** Verificar se as cobranças corretas estão como '**APRAZO**'
* **Rotina 301:**** Realizar pedido BALCÃO e cancelar o mesmo no botão '**BUSCAR**'. Vefificar: comissão, estoque, limite de crédito e títulos.
* **Rotina 302:**** Realizar cancelamento de um pedido TELEMARKETING. Se o pedido estiver liberado, verificar: estoque e limite de crédito.
* **Rotina 301:**** Realizar pedido com DAV com e sem reserva, após isso deverá realizar importação de DAV com e sem RESERVA para um pedido **BALÇÃO**.

## 2º - Verificação de dados necessários (com ou sem migração)

* Verificar na tabela PESSOA campos se estão NULL, pois impedem a transmissão da nota e outros processos dentro do sistema. [(Link)](https://github.com/SnSistemas/Implantacao/blob/main/Scripts/BUSCAR_PESSOA_NULL.sql)
* Verificar no Plano de Pagamento os campos de BIGDECIMAL, se existe algum campo NULL. [(Link)](https://github.com/SnSistemas/Implantacao/blob/main/Scripts/REPROCESSAR_TIPOCALCULO.sql)
* Verificar o valor mínimo de venda da tabela COBRANCA, se a mesma estiver NULL, jogar ZERO. [(Link)](https://github.com/SnSistemas/Implantacao/blob/main/Scripts/VERIFICAR_VLMINIMOVENDA_COBRANCA.sql)
* Verificar se existe linhas na tabela PARAMETROFV do vendedor migrado, se não existir, deverá ser criadas manualmente. [(Link)](https://github.com/SnSistemas/Implantacao/blob/main/Scripts/CRIAR_PARAMETROFV.sql)
* Verificar se existe linhas na tabela VENDEDOR_COMPLEMENTOS do vendedor migrado, se não existir, deverá ser criadas manualmente. [(Link)](https://github.com/SnSistemas/Implantacao/blob/main/Scripts/CRIAR_VENDEDORCOMPLEMENTOS.sql)
* Verificar se existe EMPRESA_COMPLEMENTOS para todas as empresas. [(Link)](https://github.com/SnSistemas/Implantacao/blob/main/Scripts/CRIAR_EMPRESACOMPLEMENTOS.sql)
* Verificar se existe COBRANCA_COMPLEMENTOS para todas as cobranças. [(Link)](https://github.com/SnSistemas/Implantacao/blob/main/Scripts/CRIAR_COBRANCASCOMPLEMENTOS.sql)
* Verificar nas tabelas CONTASARECEBER/CONTASAPAGAR os campos (DTVENCIMENTO, DTLANCAMENTO, VALOR, CODCOBRANCA, DTVENCIMENTOORIGINAL, VLJURO, VLDESCONTO) não deverão estar NULL. [(Link)](https://github.com/SnSistemas/Implantacao/blob/main/Scripts/VERIFICAR_CONTASPAGARRECEBER_CAMPOS_NULL.sql)
* Verificar campos NULL nas tabelas: PRECO_ESTOQUE, PRECOTABELA, PRECOREGIAO. [(Link)](https://github.com/SnSistemas/Implantacao/blob/main/Scripts/VERIFICAR_CAMPOS_NULL_ESTOQUE_PRECIFICACAO.sql)
* Verificar PERDESCONTO migrado nas tabelas (PRECOTABELA, PRECOREGIAO), caso não tenha calculado o preço mínimo, deverá executar o Script. [(Link)](https://github.com/SnSistemas/Implantacao/blob/main/Scripts/REPROCESSAR_PRECOMINIMO.sql)
* Verificar na tabela PRODUTO se existe algum produto com codigo 0, caso tenha, deverá ser removido. [(Link)](https://github.com/SnSistemas/Implantacao/blob/main/Scripts/DELETAR_PRODUTO_0.sql)
* Verificar na tabela PLANOPGTO se os códigos estão corretos e não com "SALTOS" na numeração.
* Verificar o campo ULTNSU da EMPRESA, este campo corresponde a busca do MDE (Rotina 206).
* Colocar senha padrão para Administrador na tabela PESSOA. [(Link)](https://github.com/SnSistemas/Implantacao/blob/main/Scripts/DEFINIR_SENHA_PADRAO_ADMNISTRADOR.sql)
* Na tabela PESSOA, verificar se existem IE nulas, caso existam deverão ser setadas como ISENTO. [(Link)](https://github.com/SnSistemas/Implantacao/blob/main/Scripts/VERIFICAR_IE_NULL_PESSOA.sql)
* Na tabela PRODUTO, verificar **Fator de Conversão**.
* Verificar se o tipo de calculo veio certo da migração na tabela PESSOA. [(Link)](https://github.com/SnSistemas/Implantacao/blob/main/Scripts/REPROCESSAR_TIPOCALCULO.sql)
* Verificar se o CLIENTE irá utilizar o **Banco do Brasil CNAB 240**, caso utilize rodar Script. [(Link)](https://github.com/SnSistemas/Implantacao/blob/main/Scripts/UPDATE_CXBANCO_BB240.sql)
* Rodar Script caractere especial nas tabelas PESSOA/PRODUTO. [(Link)](https://github.com/SnSistemas/Implantacao/blob/main/Scripts/REMOVER_CARACTERES_EPECIAIS.sql)
