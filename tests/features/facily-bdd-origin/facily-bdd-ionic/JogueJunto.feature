Feature: Jogue Junto

Feature Description

        @TXC-T122	Ter pelo menos 8 moedas de Ouro Facily
        Scenario: Validar em Jogue Junto a participação via WhatsApp
            Given que estou logado no APP da Facily
              And na tela Home clico no "Jogue Junto"
              And em "participe do JJ"escolho um produto para jogar
              And clico no botão "Jogar"
              And em "JJ + Informações do produto" clico no botão "Participar"
              And no "Seu carrinho" clico no botão "Confirmar compra"
              And é exibido pop up "Qual o melhor app de social commer"
              And seleciono a opção "Facily"
              And clico no botão "OK"
              And a tela de Confirmação de Pedido é exibida contendo o número do pedido
             When em "Confirmação do pedido" clico em "Convidar pelo WhatsApp"
             Then verifico acesso ao WhatsApp

        @TXC-T123
        Scenario: Participar de um sorteio e verificar as informações do jogo
        
        @Deprecated	@TXC-T204
        Scenario: Participar de um sorteio e verificar as informações do jogo
        
        @TXC-T231	Ter pelo menos 8 moedas de Ouro Facily
        Scenario: Validar no Jogue Junto a participação via seus Contatos
            Given que estou logado no APP da Facily
              And na tela Home clico no "Jogue Junto"
              And em "participe do JJ"escolho um produto para jogar
              And clico no botão "Jogar"
              And em "JJ + Informações do produto" clico no botão "Participar"
              And no "Seu carrinho" clico no botão "Confirmar compra"
              And é exibido pop up "Qual o melhor app de social commerce?"
              And seleciono a opção "Facily"
              And clico no botão "OK"
              And a tela de Confirmação de Pedido é exibida contendo o número do pedido
             When em "Confirmação do pedido" clico em "Convidar seus Contatos"
             Then em "Meus amigos" clico no botão "AUTORIZAR ACESSO"
              And na pop up a mensagem "Permitir que o app Facily acesse seus contatos?"
              And clico no botão "Permitir"
              And verifico meus contatos

        #Ter o app Facily Instalado e rodand Estar logado no sistema 
        #Ter endereço válido para atendimento cadastrado
        @Compartilhar @Jogue-Junto @Crowdtest	@TXC-T239
        Scenario: Participar do Jogue Junto - Convide seus amigos via WhatsApp
            Given que estou logado no APP da Facily
              And na tela Home clico no "Jogue Junto"
              And escolhe um produto para jogar
              And clico em Jogar
              And verifico se a descrição do do Jogue Junto está correta
              And clico em Participar
              And no Carrinho verifico em Forma de pagamento que a opção Moedas de Ouro Facily é exibida selecionada por default
              And verifico em Local de Entrega que o endereço exibido está correto
              And verifico que o Total do pedido em Moedas está correto
              And clico em Confirmar Compra
              And é exibido a pop up Qual o melhor app de social commerce?
              And seleciono a opção Facily
             When clico no botão OK
             Then a tela de Confirmação de Pedido é exibida contendo o número do pedido
              And os botões "Convidar pelo WhatsApp" e "Convidar seus Contatos"
              And clico no botão "Convidar pelo WhatsApp"
              And seleciono um amigo para convidar
              And clico em Enviar
              And verifico no WhatsApp que o convite foi enviado com sucesso
        
        #Ter o app Facily Instalado e rodando Estar logado no sistema 
        #Ter endereço válido para atendimento cadastrado
        @Compartilhar @Jogue-Junto @Crowdtest	@TXC-T240
        Scenario: Participar do Jogue Junto - Convidar seus Contatos
            Given que estou logado no APP da Facily
              And na tela Home clico no "Jogue Junto"
              And escolhe um produto para jogar
              And clico em Jogar
              And verifico se a descrição do do Jogue Junto está correta
              And clico em Participar
              And no Carrinho verifico em Forma de pagamento que a opção Moedas de Ouro Facily é exibida selecionada por default
              And verifico em Local de Entrega que o endereço exibido está correto
              And verifico que o Total do pedido em Moedas está correto
              And clico em Confirmar Compra
              And é exibido a pop up Qual o melhor app de social commerce?
              And seleciono a opção Facily
             When clico no botão OK
             Then a tela de Confirmação de Pedido é exibida contendo o número do pedido
              And os botões "Convidar pelo WhatsApp" e "Convidar seus Contatos"
              And clico no botão "Convidar seus Contatos"
              And na tela Meus amigos clico no botão "Autorizar acesso"
              And na pop up de Confirmação de acesso seleciono a opção OK
              And na lista de contatos seleciono o contato desejado
              And clico em convidar
              And verifico no WhatsApp que o convite foi enviado com sucesso
        @TXC-T440
        Scenario: Jogue junto ativado para região especifica
            Given o Jogue junto está ativada para região especifica pelo Marketing
             When eu logo no sistema
             Then aparece no canto da tela o floating do Jogue Junto
        @TXC-T441
        Scenario: Jogue junto desativado para região especifica
            Given o Jogue junto está desativada para região especifica pelo Marketing
             When eu logo no sistema
             Then não aparece no canto da tela o floating do Jogue Junto
