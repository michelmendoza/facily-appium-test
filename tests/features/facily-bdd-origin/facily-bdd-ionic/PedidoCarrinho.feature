Feature: Pedido Carrinho

Feature Description

        @Carrinho	@TCX-T85
        Scenario: Validar soma total dos itens do carrinho
            
        @Carrinho	@TCX-T86
        Scenario: Remover item do carrinho
            
        @Carrinho	@TCX-T87
        Scenario: Validar informações do carrinho
            
        @Carrinho @Produto @Podem-interessar-tambem	@TCX-T89
        Scenario: Adicionar produtos "Podem interessar tambem" com compra em grupo
            
        @Carrinho @Podem-interessar-tambem	@TCX-T90
        Scenario: Não deve aparecer  "Podem interessar tambem" em compra individual
            
        @Carrinho @Produto	@TCX-T91
        Scenario: Pode interessar tambem (Alterar o botão adicionado pra verde após adicionar produto no carrinho)
            
        @Carrinho @Produto	@TCX-T92
        Scenario: Pode interessar tambem (Alterar o botão adicionado pra azul após remover produto no carrinho)
            
        @Carrinho @Pedido	@TCX-T93
        Scenario: Após clicar em finalizar compra verificar se exibe a mensagem "Quase lá! Você selecionou aopção de reitrar seu pedido pessoalmente em "local_definido / cidade_local" com os botões "Ok @estou ciente" e "Ver opções de frete"
            
        @Carrinho	@TCX-T156
        Scenario: Após clicar em finalizar deverá clicar no botão "Ver opção de frete" e deverá retornar para tela anterior
            
        @Carrinho @Produto @Pedido @Deprecated	@TCX-T380
        Scenario: Validar no carrinho ao adicionar produto com valor menor que R$ 1,00 não é possível utilizar moedas no pedido (Individual).
            Given que estou logado no APP da Facily
              And seleciono um produto para compra com valor menor que R$1,00
             When clico no botão "Individual"
             Then Verifico no carrinho que não é possível adicionar moedas no pedido
            
        @Carrinho @Produto @Pedido @Deprecated	@TCX-T381
        Scenario: Validar no carrinho ao adicionar produto com valor menor que R$ 1,00 não é possível utilizar moedas no pedido (Grupo).
            Given que estou logado no APP da Facily
              And seleciono um produto para compra com valor menor que R$1,00
             When clico no botão "Grupo"
             Then Verifico no carrinho que não é possível adicionar moedas no pedido
