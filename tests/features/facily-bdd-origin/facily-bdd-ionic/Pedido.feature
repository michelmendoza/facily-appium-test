Feature: Pedido

Feature Description

        @Pedido @Carrinho @Comprar-mais @pedido-mínimo @TCX-T438
        Scenario: Criar um pedido com pedido mínimo para o fornecedor junto com sugestões de comprar mais

        @Pedido	@TCX-T473
        Scenario: Verificar totais de pedidos por status
            Given estou logado no app
             When acesso a tela de Meus Pedidos
             Then os totalizadores de pedidos por status aparecem corretamente

        @Pedido	@TCX-T474
        Scenario: Verificar totais de pedidos ao trocar de usuário
            Given estou logado no app And estou na tela de Meus Pedidos
             When deslogo do app
              And faço login com outra conta
              And acesso a tela de Meus Pedidos
             Then os totalizadores de pedidos por status atualizam corretamente

        @Pedido @Carrinho @TCX-T477
        Scenario: Finalizar um pedido que tava no carrinho mas sem ter produto no estoque

        @Pedido @Boleto	@TCX-T478
        Scenario: Realizar um pagamento(Boleto) de um pedido que não tem mais no estoque
