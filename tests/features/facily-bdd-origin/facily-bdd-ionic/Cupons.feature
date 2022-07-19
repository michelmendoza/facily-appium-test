Feature: Cupons

Feature Description

        #Usuário cadastrado
        #Usuário logado 
        #Ter um produto para adicionar ao carrinho 
        #Cupom válido  	
        @IOS @Android @Cupom @Pedido	@TCX-T1
        Scenario: Criar pedido individual com cupom aplicado com sucesso - Boleto
            Given eu estou logado no app
              And estou na tela Home
              And seleciono um produto
             When clico em individual
              And abre a tela do carrinho
              And seleciono um ponto facily
              And seleciono a forma de pagamento boleto
             When eu clico em Ativar cupom
             Then abre a tela de Cupons
              And eu digito um código de cupom
             When eu clico no botão +
             Then ele valida o cupom
             When eu clico no botão em Retornar para o seu carrinho
              And abre a tela do carrinho
              And o componente moedas não aparece na tela*
             When eu clico em ativar cupom
             Then o cupom é ativado
             When eu desço a tela até o resumo do pedido
              And o resumo do pedido mostra o valor atualizado com o cupom
             When eu clico em confirmar compra
              And clico na mensagem Quase lá! "OK @estou ciente"
             Then abre a tela processando o pedido
              And Abre a tela do Pedido
              And mostra o status de Aguardando pagamento
             When eu clico no botão "Ver boleto"
             Then o valor do boleto está com desconto do cupom

              # usuário logado 
              # produto existente para seleção	
        @IOS @Android @Cupom @Pedido @individual @TCX-T2
        Scenario: Tela de pedido individual sem nenhum cupom disponível
            Given que estou logado no app
              And seleciono um produto individual
             When abre a tela de pedidos
             Then O componete de cupom mostra a mensagem "Você não possui cupons disponíveis"

            # usuário logado 
            # produto existente para seleção
        @IOS @Android @Cupom @Pedido @grupo	@TCX-T3
        Scenario: Tela de pedido em grupo sem nenhum cupom disponível
            Given que estou logado no app
              And seleciono um produto individual
             When abre a tela de pedidos
             Then O componete de cupom mostra a mensagem "Você não possui cupons disponíveis"

        #Estar logado no app Ter um produto no carrinho como pedido em grupo	
        @Cupom @Pedido @TCX-T4
        Scenario: Abrir tela de cupons - pedido em grupo
            Given estou logado no app
              And estou na tela "Seu carrinho" de pedidos em grupo
             When eu clico em em Ativar Cupom
             Then abre a tela Cupons

            # estar logado no app 
            # ter produtos no carrinho	
        @Cupom	@TCX-T5
        Scenario: Botão voltar de tela de cupons
            Given logado no app
              And com um produto adicionado no carrinho
              And abro a tela de cupons
             When eu clico em voltar
             Then volta para tela de pedidos

            #@Cupom	@TCX-T6
            # Estar Logado no app 
            # Ter produtos no carrinho
        Scenario: Adicionar cupom válido
            Given eu estou logado no app
              And estou com um produto no carrinho
             When eu adiciono um cupom válido
             Then o cupom aparece na tela de pedido
              And aplica o valor do desconto no resumo do pedido
            
            #@Cupom	@TCX-T7
            # Estar logado no app 
            # Ter um produto no carrinho
        Scenario: Adicionar cupom inválido
            Given tenho um produto no carrinho
             When adiciono um cupom inválido
             Then vejo na tela uma mensagem de erro

            # estar logado no app 
            # ter produto no carrinho 
            # ter um cupom expirado	
        @Cupom	@TCX-T8
        Scenario: Adicionar cupom expirado
            Given eu estou logado no app
              And tenho um produto no carrinho
             When eu adiciono um cupom expirado
             Then ele mostra a mensagem de cupom expirado
            
            # estar logado no app 
            # ter um produto no carrinho  
        @Cupom	@TCX-T9
        Scenario: Botão Retornar para o seu carrinho
            Given eu estou logado no app
              And tenho um produto no carrinho
              And clico em cupons
             When eu clico em voltar
             Then volta pra tela de pedido
            
        @Cupom	@TCX-T11
        Scenario: Excluir desconto de cupom do resumo do pedido
            Given eu estou logado no app
              And estou com um produto no carrinho
              And tenho um cupom aplicado
             When eu retiro o cupom aplicado
             Then ele retira o desconto aplicado ao resumo do pedido
            
            # estar logado no app 
            # ter um produto no carrinho 
            # ter um cupom com valor maior que o total do carrinho	
        @Cupom	@TCX-T12
        Scenario: Adiciona desconto de cupom com valor maior que o total da soma do produto
            Given eu estou logado no app
              And tenho um produto no carrinho
             When eu adiciono um cupom com valor maior que o total do carrinho
             Then o desconto aplicado zera o valor do carrinho
            
            # estar logado no app 
            # ter pelo menos um produto no carrinho 
            # ter um cupom com o mesmo valor do total do carrinho
        @Cupom	@TCX-T13
        Scenario: Adiciona desconto de cupom com valor igual ao total da soma do produto
            Given eu estou logado no app
              And tenho um produto no carrinho
             When eu adiciono um cupom com valor igual ao total do carrinho
             Then o desconto aplicado zera o valor do carrinho
            
            # Ter mais de um produto adicionado ao carrinho	
        @Cupom	@TCX-T14
        Scenario: Adiciona desconto de cupom ao carrinho com mais de um produto
            Given estou logado no app
              And adicionei mais de um produto ao carrinho
              And estou na tela "Seu carrinho" de pedidos em grupo
             When uso um cupom
             Then o cupom é aplicado no resumo do pedido
            
        @Cupom	@TCX-T15
        Scenario: Desativação de cupom ao adicionar moedas de outro
            Given estou logado no app
              And tenho um produto adicionado ao carrinho
              And tenho moedas aplicadas ao pedido
             When eu tento adicionar um cupom
             Then não encontro na tela o botão de cupom
            
        @Cupom	@TCX-T16
        Scenario: Desativação de cupom adicionado ao adicionar moedas de outro
            Given estou logado no app
              And tenho um produto adicionado ao carrinho
              And tenho um cupom aplicado
             When eu não consigo adicionar moedas de ouro
            
        @Cupom @Carrinho @TCX-T350
        Scenario: Verificar se ao clicar em Cancelar retorna para tela do carrinho e cupom continua ativo
            
        @Cupom@TCX-T352
        Scenario: Verificar se é possível adicionar mais de um cupom na tela de cupom. App deve permitir
            
        @Cupom @Tamo-Junto	@TCX-T353
        Scenario: Comprar um produto Tamo Junto utilizando cupom e verificar se o desconto está no valor total
            
            # Estar logado no app Ter um produto no carrinho como Individual	
        @Cupom @Pedido @individual @TCX-T396
        Scenario: Abrir tela de cupons - pedido individual
            Given estou logado no app
              And estou na tela "Seu carrinho" de pedido individual
             When eu clico em em Ativar Cupom
             Then abre a tela Cupons
                 
        @Cupom	@TCX-T401
        Scenario: Adicionar cupom com atende valor minimo
            Given logado no app
              And selecionado um produto
              And adicionado no carrinho
             When eu adiciono um cupom que tem um valor minimo referente ao valor total do carrinho
             Then cupom é adicionado
             When eu ativo o cupom
             Then Ele aplica o desconto no resumo do pedido

        @Cupom	@TCX-T402
        Scenario: Adicionar cupom de primeira compra
            Given eu estou logado no app
              And nunca fiz nenhuma compra
              And tenho um produto no carrinho
             When adiciono o cupom de primeira compra
             Then ele aplica o desconto ao total do pedido

        @Cupom	@TCX-T403
        Scenario: Adicionar cupom que não atende o valor minimo
            Given logado no app
              And selecionado um produto
              And adicionado no carrinho
             When eu adiciono um cupom que tem um valor minimo e não atende ao valor total do carrinho
             Then ele mostra uma mensagem "É necessário completar o valor mínimo do cupom para aplicar o desconto no carrinho."

    # Logado no APP 
    # Ter um produto no carrinho 
    # Ter cupom já aplicado	
        @Cupom	@TCX-T404
        Scenario: Adicionar um produto ao carrinho depois de cupom ser aplicado
            Given logado no app
              And com um produto de compra em grupo adicionado no carrinho
              And com um cupom de desconto já aplicado
             When eu adiciono um novo produto pela seção "Podem interessar" ou "Comprar mais de..."
             Then o desconto deve ser recalculado e o valor total do pedido alterado

        @Cupom	@TCX-T405
        Scenario: Aumentar a quantidade de um produto depois do cupom ser aplicado
            Given logado no app
              And com um produto adicionado no carrinho
              And com um cupom de desconto já aplicado
             When eu aumento a quantidade
             Then o desconto deve ser recalculado e o valor total do pedido alterado

        @Cupom	@TCX-T406
        Scenario: Diminuir a quantidade de um produto depois do cupom ser aplicado
            Given logado no app
              And com um produto adicionado no carrinho
              And com um cupom de desconto já aplicado
             When eu diminuo a quantidade
             Then o desconto deve ser recalculado e o valor total do pedido alterado

        @Cupom	@TCX-T407
        Scenario: Excluir um produto do carrinho depois de cupom ser aplicado
            Given logado no app
              And com mais de um produto de compra em grupo adicionado no carrinho
              And com um cupom de desconto já aplicado
             When eu excluo um dos produtos
             Then o desconto deve ser recalculado e o valor total do pedido alterado

        @Cupom	@TCX-T408
        Scenario: Adicionar cupom de primeira compra de outro usuário
            Given eu estou logado no app
              And nunca fiz nenhuma compra
              And tenho um produto no carrinho
             When adiciono o cupom de primeira compra de outro usuário
             Then ele não aplica o desconto ao total do pedido

        @TCX-T437
        Scenario: Adicionar cupom que não é da pessoa
            Given eu estou logado no app
              And tenho um produto no carrinho
             When eu adiciono um cupom de outra pessoa
             Then ele mostra a mensagem que o cupom não é da pessoa
