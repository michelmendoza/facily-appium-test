Feature: Pedido Compra Individual
  
Feature Description
  
        @TCX-T102 @individual @Pedido @Pix @Crowdtest
        Scenario: Criar um pedido Compra Individual - PIX	Crowdtest	Ter o App Facily Instalado e rodando Ter um cadastro Facily Estar logado Ter endereço de região com atendimento facily cadastrado

        @TCX-T103 @individual @Pedido @Cartão @Categoria
        Scenario: Criar pedido através do botão Categoria  Individual  (Cartão)	Draft

        @TCX-T105 @individual @Pedido @Cartão @Categoria
        Scenario: Criar pedido através Principais Categoria Individual (Cartão) com 2 Categorias diferentes	Draft

        @TCX-T106 @individual @Região @Produto @Pedido @Cartão @Carrinho
        Scenario: Criar pedido  Individual (Cartão) com 2 produtos @sendo 1 da região e outro fora. Deve limpar o carrinho	Draft

        @TCX-T107 @individual @Região @Produto @Pedido @Cartão @Carrinho
        Scenario: Criar pedido Grupo (Cartão) @sendo 2 produtos com 1 fora da região.  Deve limpar o carrinho	Draft

        @TCX-T114 @individual
        Scenario: Não deve aparecer  "Podem interessar tambem" em compra individual	Draft

        @TCX-T146 @individual @Produto @Pedido
        Scenario: Criar pedido individual -> Aumentar quantidade do produto e clicar em individual -> Verificar no resumo do pedido se a soma do produto está correta	Draft

        @TCX-T222 @individual @Pedido @Boleto @Crowdtest
        Scenario: Criar um pedido Compra Individual - Boleto (Ver Boleto)	Crowdtest	Ter o App Facily Instalado e rodando Ter um cadastro Facily Estar logado Ter endereço de região com atendimento facily cadastrado

        @TCX-T223 @individual @Pedido @Boleto @Crowdtest
        Scenario: Criar um pedido Compra Individual - Boleto (Compartilhar Link do Boleto)	Crowdtest	Ter o App Facily Instalado e rodando Ter um cadastro Facily Estar logado Ter endereço de região com atendimento facily cadastrado

        @TCX-T224 @individual @Região @Pedido @Boleto
        Scenario: Tentar criar um pedido Fora da Região na Compra Individual - Boleto	BDD

        @TCX-T225 @individual @Região @Pedido @Pix
        Scenario: Tentar criar um pedido Fora da Região na Compra Individual - Pix	BDD

        @TCX-T226 @individual @Pedido @Boleto @Categoria @Crowdtest
        Scenario: Criar pedido Compra Individual com 2 Categorias diferentes - Boleto	Crowdtest	Ter o App Facily Instalado e rodando Ter um cadastro Facily Estar logado Ter endereço de região com atendimento facily cadastrado

        @TCX-T227 @individual @Região @Produto @Pedido @Boleto
        Scenario: Tentar criar um pedido com 2 produtos @sendo um Fora da Região @através do link recebido na Compra Individual - Boleto	BDD

        @TCX-T228 @individual @Região @Produto @Pedido @Pix
        Scenario: Tentar criar um pedido com 2 produtos @sendo um Fora da Região @através do link recebido na Compra Individual - Pix	Deprecated

        @TCX-T229 @individual @Região @Pedido @Boleto
        Scenario: Tentar criar um pedido Fora da Região @através do link recebido na Compra Individual - Boleto	Crowdtest	Ter o App Facily Instalado e rodando Ter um cadastro Facily Estar logado Ter endereço de região com atendimento facily cadastrado  Teste: Scenario: Criar um pedido Compra Individual - Boleto  (Compartilhar Link do Boleto) Ter feito um pedido via boleto Ter enviado o link via compartillhar pedido feito

        @TCX-T230 @individual @Região @Pedido @Pix @Crowdtest
        Scenario: Tentar criar um pedido Fora da Região @através do link recebido na Compra Individual - Pix	Crowdtest	Ter o App Facily Instalado e rodando Ter um cadastro Facily Estar logado Ter endereço de região com atendimento facily cadastrado  Teste: Scenario: Criar um pedido Compra Individual - Boleto  (Compartilhar Link do Boleto) Ter feito um pedido via boleto Ter enviado o link via compartillhar pedido feito

