Feature: Feature name
    
Feature Description

        @TCX-T19
        Scenario: Arraste para usar 1 moedas de ouro
            Given eu estou logado no app
              And estou na tela de carrinho
             When eu aplico 1 moeda de ouro ao pedido
             Then as moedas de ouro são adicionadas
              And e o desconto é aplicado no resumo do pedido
        
        @Carrinho @Moedas @Resumo-pedido @TCX-T20
        Scenario: Arraste para usar todas as moedas de ouro
            Given eu estou logado no app
              And estou na tela de carrinho
             When eu aplico 1 moeda de ouro ao pedido
             Then as moedas de ouro são adicionadas
              And e o desconto é aplicado no resumo do pedido

        @TCX-T25
        Scenario: Criar pedido individual com moedas de ouro aplicado com sucesso - Boleto

        @Moedas @Pedido @Pix @individual @TCX-T133
        Scenario: Usar as moedas e verificar se está subtraindo do total pagamento PIX (individual)
            Given que acesso o aplicativo com Login e senha
             When clico para comprar um produto "Individual"
              And seleciono a forma de pagamento Pix
              And seleciono use suas moedas de ouro
             Then o sistema deve subtrair do valor total do produto as moedas selecionadas
              And realizar a compra do produto individual com desconto utilizando as moedas.

        @Moedas @Pedido @grupo @Pix	@TCX-T134
        Scenario: Usar as moedas e verificar se está subtraindo do total pagamento PIX (Grupo)
            Given que acesso o aplicativo com Login e senha
             When clico para comprar um produto "Criar Grupo"
              And seleciono a forma de pagamento Pix
              And seleciono use suas moedas de ouro
             Then o sistema deve subtrair do valor total do produto as moedas selecionadas
              And realizar a compra do produto em grupo com desconto utilizando as moedas.

        @Moedas @Pedido @individual @Boleto	@TCX-T135
        Scenario: Usar as moedas e verificar se está subtraindo do total pagamento Boleto (individual)
            Given que acesso o aplicativo com Login e senha
             When clico para comprar um produto "Individual"
              And seleciono a forma de pagamento Boleto
              And seleciono use suas moedas de ouro
             Then o sistema deve subtrair do valor total do produto as moedas selecionadas
              And realizar a compra do produto individual com desconto utilizando as moedas.

        @Moedas @Pedido @grupo @Boleto	@TCX-T136
        Scenario: Usar as moedas e verificar se está subtraindo do total pagamento Boleto (Grupo)
            Given que acesso o aplicativo com Login e senha
             When clico para comprar um produto "Criar Grupo"
              And seleciono a forma de pagamento Boleto
              And seleciono use suas moedas de ouro
             Then o sistema deve subtrair do valor total do produto as moedas selecionadas
              And realizar a compra do produto em grupo com desconto utilizando as moedas.
        
        @Moedas @Pedido @individual @Cartão	@TCX-T137
        Scenario: Usar as moedas e verificar se está subtraindo do total pagamento Cartão (individual)
            Given que acesso o aplicativo com Login e senha
             When clico para comprar um produto "Individual"
              And seleciono a forma de pagamento Cartão
              And seleciono use suas moedas de ouro
             Then o sistema deve subtrair do valor total do produto as moedas selecionadas
              And realizar a compra do produto individual com desconto utilizando as moedas.

        @Moedas @Pedido @grupo @Cartão @TCX-T138
        Scenario: Usar as moedas e verificar se está subtraindo do total pagamento Cartão (Grupo)
            Given que acesso o aplicativo com Login e senha
             When clico para comprar um produto "Criar Grupo"
              And seleciono a forma de pagamento Cartão
              And seleciono use suas moedas de ouro
             Then o sistema deve subtrair do valor total do produto as moedas selecionadas
              And realizar a compra do produto em grupo com desconto utilizando as moedas.

        @Moedas	@TCX-T139
        Scenario: Verificar se as moedas dão no maximo 10% de desconto
            Given que acesso o aplicativo com Login e senha
             When clico para comprar um produto "Criar Grupo" ou "Individual"
              And seleciono uma forma de pagamento
              And seleciono use suas moedas de ouro
             Then o sistema deve subtrair do valor total do produto as moedas selecionadas dando no máximo 10% de desconto
              And realizar a compra do produto em grupo com desconto utilizando as moedas.
    
        @TCX-T397 @Moedas
        Scenario: Retirar moedas de ouro
            Given eu estou logado no app
              And estou na tela de carrinho
              And estou com moedas de ouro aplicadas
             When eu retiro as moedas de ouro
             Then as moedas de ouro ficam zerada
              And retira do resumo o desconto aplicado
            
        @TCX-T398 @Moedas
        Scenario: Altere a quantidade de um dos produtos no carrinho com moedas aplicadas
              
        @TCX-T399 @Moedas
        Scenario: Adicione um produtos ao carrinho com moedas aplicadas
             
        @TCX-T400 @Moedas
        Scenario: Exclua um produtos do carrinho com moedas já aplicadas

        @Moedas
        Scenario: Arraste para usar 1 moedas de ouro
            Given eu estou logado no app
              And estou na tela de carrinho
             When eu aplico 1 moeda de ouro ao pedido
             Then as moedas de ouro são adicionadas
              And e o desconto é aplicado no resumo do pedido

        @Carrinho @Moedas @Resumo-pedido @TCX-T20
        Scenario: Arraste para usar todas as moedas de ouro
            Given eu estou logado no app
              And estou na tela de carrinho
             When eu aplico 1 moeda de ouro ao pedido
             Then as moedas de ouro são adicionadas
              And e o desconto é aplicado no resumo do pedido

        @TCX-T25 @Moedas
        Scenario: Criar pedido individual com moedas de ouro aplicado com sucesso - Boleto
        
        @Moedas @Pedido @Pix @individual @TCX-T133
        Scenario: Usar as moedas e verificar se está subtraindo do total pagamento PIX (individual)
            Given que acesso o aplicativo com Login e senha
             When clico para comprar um produto "Individual"
              And seleciono a forma de pagamento Pix
              And seleciono use suas moedas de ouro
             Then o sistema deve subtrair do valor total do produto as moedas selecionadas
              And realizar a compra do produto individual com desconto utilizando as moedas.

        @Moedas @Pedido @grupo @Pix	@TCX-T134
        Scenario: Usar as moedas e verificar se está subtraindo do total pagamento PIX (Grupo)
            Given que acesso o aplicativo com Login e senha
             When clico para comprar um produto "Criar Grupo"
              And seleciono a forma de pagamento Pix
              And seleciono use suas moedas de ouro
             Then o sistema deve subtrair do valor total do produto as moedas selecionadas
              And realizar a compra do produto em grupo com desconto utilizando as moedas.

        @Moedas @Pedido @individual @Boleto	@TCX-T135
        Scenario: Usar as moedas e verificar se está subtraindo do total pagamento Boleto (individual)
            Given que acesso o aplicativo com Login e senha
             When clico para comprar um produto "Individual"
              And seleciono a forma de pagamento Boleto
              And seleciono use suas moedas de ouro
             Then o sistema deve subtrair do valor total do produto as moedas selecionadas
              And realizar a compra do produto individual com desconto utilizando as moedas.

        @Moedas @Pedido @grupo @Boleto	@TCX-T136
        Scenarios: Usar as moedas e verificar se está subtraindo do total pagamento Boleto (Grupo)
            Given que acesso o aplicativo com Login e senha
             When clico para comprar um produto "Criar Grupo"
              And seleciono a forma de pagamento Boleto
              And seleciono use suas moedas de ouro
             Then o sistema deve subtrair do valor total do produto as moedas selecionadas
              And realizar a compra do produto em grupo com desconto utilizando as moedas.
    
        @Moedas @Pedido @individual @Cartão	@TCX-T137
        Scenario: Usar as moedas e verificar se está subtraindo do total pagamento Cartão (individual)
            Given que acesso o aplicativo com Login e senha
             When clico para comprar um produto "Individual"
              And seleciono a forma de pagamento Cartão
              And seleciono use suas moedas de ouro
             Then o sistema deve subtrair do valor total do produto as moedas selecionadas
              And realizar a compra do produto individual com desconto utilizando as moedas.

        @Moedas @Pedido @grupo @Cartão	@TCX-T138
        Scenarios: Usar as moedas e verificar se está subtraindo do total pagamento Cartão (Grupo)
            Given que acesso o aplicativo com Login e senha
             When clico para comprar um produto "Criar Grupo"
              And seleciono a forma de pagamento Cartão
              And seleciono use suas moedas de ouro
             Then o sistema deve subtrair do valor total do produto as moedas selecionadas
              And realizar a compra do produto em grupo com desconto utilizando as moedas.

        @Moedas	@TCX-T139
        Scenario: Verificar se as moedas dão no maximo 10% de desconto
            Given que acesso o aplicativo com Login e senha
             When clico para comprar um produto "Criar Grupo" ou "Individual"
              And seleciono uma forma de pagamento
              And seleciono use suas moedas de ouro
             Then o sistema deve subtrair do valor total do produto as moedas selecionadas dando no máximo 10% de desconto
              And realizar a compra do produto em grupo com desconto utilizando as moedas.
            
        @TCX-T397 @Moedas
        Scenario: Retirar moedas de ouro
            Given eu estou logado no app
              And estou na tela de carrinho
              And estou com moedas de ouro aplicadas
             When eu retiro as moedas de ouro
             Then as moedas de ouro ficam zerada
              And retira do resumo o desconto aplicado

        @TCX-T398 @Moedas
        Scenario:	Altere a quantidade de um dos produtos no carrinho com moedas aplicadas

        @TCX-T399 @Moedas
        Scenario:	Adicione um produtos ao carrinho com moedas aplicadas

        @TCX-T400 @Moedas
        Scenario:	Exclua um produtos do carrinho com moedas já aplicadas
