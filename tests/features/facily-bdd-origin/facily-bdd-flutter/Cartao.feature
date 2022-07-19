Feature: Cartão de crédito

        @Carrinho @Cartão @TCX-T458
        Scenario: Cadastrar cartão de crédito com sucesso
            Given estou no carrinho
              And não seleciono a opção de "Este é o cartão principal"
             When cadastro um novo cartão
             Then aparece uma mensagem de "Cartão adicionado com sucesso"
              And o cartão aparece na lista de forma de pagamento

        @Carrinho @Cartão @Cartão-Principal	@TCX-T459
        Scenario: Cadastrar outro cartão de crédito como principal
            Given estou no carrinho
              And tenho pelo menos um cartão já cadastrado
              And não seleciono a opção de "Este é o cartão principal"
              And cadastro um novo cartão
             When aparece uma modal com a mensagem "Deseja colocar este cartão como principal para as próximas compras?"
             Then clico em "Sim" And aparece uma mensagem de "Cartão adicionado com sucesso"
              And o cartão aparece na lista de forma de pagamento como principal

        @Carrinho @Cartão @Cartão-Principal	@TCX-T460
        Scenario: Cadastrar outro cartão de crédito
            Given estou no carrinho
              And tenho pelo menos um cartão já cadastrado
              And não seleciono a opção de "Este é o cartão principal"
              And cadastro um novo cartão
             When aparece uma modal com a mensagem "Deseja colocar este cartão como principal para as próximas compras?"
             Then clico em "Não"
              And aparece uma mensagem de "Cartão adicionado com sucesso"
              And o cartão aparece na lista de forma de pagamento

        @Carrinho @Cartão	@TCX-T463
        Scenario: Adicionar cartão como titular
            Given estou no carrinho
              And quero adicionar um cartão
             When clico em "Sou titular do cartão"
             Then os campos CPF, Data de Nascimento e Telefone são preenchidos automaticamente
              And adiciona o cartão corretamente

        @Carrinho @Cartão @Cartão-Principal	@TCX-T464
        Scenario: Marcar como cartão principal no cadastro de cartão
            Given estou no carrinho
              And quero adicionar um cartão
             When clico em "Este cartão é o principal"
             Then cartão será exibido como principal

        @Carrinho @Cartão	@TCX-T465
        Scenario: Excluir um cartão com sucesso
            Given estou no carrinho
              And abro a tela que lista os cartões
              And clico no icone de excluir cartão
             When aparece uma modal com a mensagem "Você tem certeza que deseja remover o cartão cadastrado?"
             Then clico em "Sim, quero remover"
              And aparece uma modal com a mensagem "Dados removidos com sucesso"

        @Carrinho @Cartão	@TCX-T466
        Scenario: Cancelar exclusão do cartão
            Given clico no icone de excluir cartão
             When aparece uma modal com a mensagem "Você tem certeza que deseja remover o cartão cadastrado?"
             Then clico em "Cancelar"
              And a modal anterior é fechada
              And o cartão permanece na lista

        @Cartão @Lista-Cartões	@TCX-T467
        Scenario: Excluir ultimo cartão cadastrado
            Given estou no carrinho
              And abro a tela que lista os cartões com apenas 1 cartão
              And clico no icone de excluir cartão
             When aparece uma modal com a mensagem "Você tem certeza que deseja remover o cartão cadastrado?"
             Then clico em "Sim, quero remover"
              And aparece uma modal com a mensagem "Dados removidos com sucesso"
              And no carrinho em formas de pagamentos aparece o botão adicionar

        @Carrinho @Cartão @Lista-Cartões	@TCX-T469
        Scenario: Selecionar um cartão
            Given estou no carrinho
              And seleciono um cartão
             When aparece uma modal com a mensagem "Deseja colocar este cartão como principal para as próximas compras?"
             Then clico em "Não"
              And o cartão aparece na lista de forma de pagamento

        @Carrinho @Cartão @Cartão-Principal @Lista-Cartões	@TCX-T470
        Scenario: Selecionar um cartão como principal
            Given estou no carrinho
              And seleciono um cartão
             When aparece uma modal com a mensagem "Deseja colocar este cartão como principal para as próximas compras?"
             Then clico em "Sim"
              And o cartão aparece na lista de forma de pagamento como principal

        @Carrinho @Cartão	@TCX-T471
        Scenario: Selecionar cartão como forma de pagamento no carrinho
            Given estou no carrinho
             When seleciono "Cartão de Crédito" como forma de pagamento
             Then sou redirecionado para a tela de cadastro de cartão

        @Carrinho @Cartão	@TCX-T472
        Scenario: Selecionar cartão como forma de pagamento no carrinho com cartão já cadastrado
            Given estou no carrinho
              And seleciono "Cartão de Crédito" como forma de pagamento
             When clico na opção "Usar outro cartão"
             Then sou redirecionado para a lista de cartões já cadastrados

        @Cartão	@TCX-T515
        Scenario: Adicionar Cartão de Crédito de outro titular
            Given Eu estou logado no app
              And estou no carrinho de compras
              And adiciono um novo cartão
             When eu seleciono um cartão válido de outro titular para cadastrar
             Then ele cadastra com sucesso o cartão
