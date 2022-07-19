Feature: Frete

Feature Description

        @Frete	@TCX-T442
        Scenario: Adicionar produto abaixo de R$25 - com frete		Draft

        @Frete	@TCX-T443
        Scenario: Adicionar produto acima de R$25 - frete gratis		Draft

        @Frete	@TCX-T444
        Scenario: Adicionar produto com valor de R$25 - frete gratis		Draft

        @Frete	@TCX-T445
        Scenario: Adicionar produto acima de R$25 e dar desconto em moedas abaixo de R$25  - frete gratis		Draft

        @Frete	@TCX-T446
        Scenario: Adicionar produto acima de R$25 e dar desconto em cupom abaixo de R$25 - frete gratis		Draft

        @Frete	@TCX-T447
        Scenario: Adicionar produto abaixo de R$25 e somar o valor do frete acima que fique o total acima de R$25 - com frete		Draft

        @Frete @Pedido @Carrinho @Resumo-pedido	@TCX-T448
        Scenario: Adicionar mais de um produto com total acima de R$25 - frete gratis	Given eu tenho um produto com valor abaixo de R$25,00 no carrinho When eu adiciono outro produto que deixe a soma total de produtos acima de R$25,00 Then não exibe o alerta de Frete abaixo do fornecedor And mostra no resumo do pedido como frete gratís	Crowdtest	- Estar cadastrado no App - Ter endereço cadastrado para região de São Paulo - Ter um produto já adicionado no carrinho

        @Frete @Pedido @Carrinho @Resumo-pedido	@TCX-T449
        Scenario: Adicionar mais de um produto com soma  total abaixo de R$25 - com frete	Given eu tenho um produto com valor abaixo de R$25,00 When eu adiciono outro produto que mantenha a soma total de produtos abaixo de R$25,00 Then exibe a informação de pedido com frete And mostra no resumo do pedido o valor do frete	Crowdtest	Ter cadastro no app Estar logado Ter um endereço da região válida cadastrada (ex. São Paulo)

        @Frete	@TCX-T450
        Scenario: Adicionar mais de um produto com total acima de R$25 e desconto de cupom abaixo - frete gratis		Draft

        @Frete	@TCX-T451
        Scenario: Adicionar mais de um produto com total acima de R$25 e desconto de moedas abaixo - frete gratis		Draft

        @Frete	@TCX-T452
        Scenario: Realizar pedido com frete gratis e pagamento via boleto		Draft

        @Frete	@TCX-T453
        Scenario: Realizar pedido com frete gratis e pagamento via pix		Draft

        @Frete	@TCX-T454
        Scenario: Realizar pedido com frete gratis e pagamento via cartão		Draft
