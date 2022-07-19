Feature: [Categoria] Validar as listas de produtos por categoria está exibindo corretamente os produtos
        @TestCaseKey=TCX-T94

        Scenario: [Categoria] Validar as listas de produtos por categoria está exibindo corretamente os produtos
            Given eu estou na tela de categorias
             When seleciono um tipo de categoria
             Then os produtos que aparecem na lista estão de acordo com a categoria correta

        @TestCaseKey=TCX-T95
        Scenario: [Categoria] Criar pedido através das Principais Categoria Grupo (Boleto) com 2 Categorias diferentes
            Given eu estou na tela de categorias
              And adiciono ao carrinho de compras em Grupo um produto por categoria
             When eu volto pra tela de categorias
              And seleciono outro produto de outra categoria
             Then ele adiciona corretamente no carrinho
              And faz o pedido via boleto corretamente

        @TestCaseKey=TCX-T96
        Scenario: [Categoria] Criar pedido através Principais Categoria Individual (Boleto) com 2 Categorias diferentes
            Given eu estou na tela de categorias
              And adiciono ao carrinho de compras Individual um produto por categoria
             When eu volto pra tela de categorias
              And seleciono outro produto de outra categoria
             Then ele adiciona corretamente no carrinho
              And faz o pedido via boleto corretamente

        @TestCaseKey=TCX-T99
        Scenario: [Pedido] Adicionar um produto em grupo com o carrinho já preenchido com produtos individual
            Given eu tenho produtos adicionados no carrinho de compras individual
             When eu adiciono um produto ao carrinho de compras em grupo
             Then bloqueia e exibe na tela uma mensagem para exluír os produtos do carrinho

        @TestCaseKey=TCX-T100
        Scenario: [Categoria] Criar pedido com categorias iguais
            Given eu tenho um produto de uma categoria adicionado ao carrinho
             When eu seleciono outro produto de mesma categoria
             Then ele adiciona o protudo corretamente
              And fecha o pedido até o final corretamente com o status processado

