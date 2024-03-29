        @Endereço @PDR	@TCX-T286 @Crowdtest
        Scenario: Validar se os PRDs são próximos ao endereço selecionado
            Given que estou logado no APP da Facily
              And seleciono um produto para compra
             When clico no botão Individual/Criar Grupo
             Then valido se os PRDs retornados são proximos ao endereço selecionado

        @Endereço @Home	@TCX-T479
        Scenario: Transferir dados persistidos no ionic para o flutter com sucesso	BDD
            Given estou no ionic And abro o menu lateral And clico na opção "Endereços"
             When a tela de endereços é aberta
             Then os endereços salvos no ionic são exibidos.

        @Endereço	@TCX-T480
        Scenario: Transferir dados do Flutter para o ionic com sucesso
            Given estou na tela de endereços no Flutter
              And clico no botão de voltar ou aperto o botão de voltar
             When volto para a tela do ionic
             Then os dados salvos no Flutter devem ser exibidos no Ionic.

        @Endereço	@TCX-T481
        Scenario: Listar Endereço com localização aproximada com sucesso
            Given estou na tela de endereços
              And não existe nenhum endereço cadastrado
             When listado os endereços
             Then exibir o endereço resgatado pela geolocalização

        @Endereço	@TCX-T482
        Scenario: Abrir tela de preencher informações do endereço com sucessO
            Given estou na tela de confirmação de endereço
             When clico no botão "Sim, está certo!"
             Then abre tela de preencher dados do endereço

            @Endereço	@TCX-T483	Scenario: Abrir tela de novo endereço com sucesso
            Given estou na tela de confirmação de endereço
             When clico no botão "Alterar endereço"
             Then abre tela de novo endereço

        @Endereço	@TCX-T484	@Crowdtest
        Scenario: Preencher informações do endereço com complemento com sucesso
            Given estou na tela de preencher informações do endereço
              And preencho o número de CEP
              And preencho o campo de complemento
             When clico em "Salvar endereço"
             Then retorna para a tela de listagem de endereço
              And exibe o endereço salvo

        @Endereço	@TCX-T485 @Crowdtest
        Scenario: Preencher informações do endereço sem complemento com sucesso
            Given estou na tela de preencher informações do endereço
              And preencho todos os campos menos complemento
             When clico em "Salvar endereço"
             Then retorna para a tela de listagem de endereço
              And exibe o endereço salvo

        @Endereço	@TCX-T486 @Crowdtest
        Scenario: Preencher informações do endereço no tipo de endereço casa com sucesso
            Given estou na tela de preencher informações do endereço
              And preencho as informações de número e complemento
              And seleciono o card "Casa"
             When clico em "Salvar endereço"
             Then retorna para a tela de listagem de endereço
              And exibe o endereço salvo

        @Endereço	@TCX-T487 @Crowdtest
        Scenario: Preencher informações do endereço no tipo de endereço trabalho com sucesso
            Given estou na tela de preencher informações do endereço
              And preencho as informações de número CEP
              And Preencho o complemento
              And seleciono o card "Trabalho"
             When clico em "Salvar endereço"
             Then retorna para a tela de listagem de endereço
              And exibe o endereço salvo

        @Endereço	@TCX-T488 @Crowdtest
        Scenario: Preencher informações do endereço no tipo de endereço outros com sucesso
            Given estou na tela de preencher informações do endereço
              And preencho as informações de número e complemento
              And seleciono o card "Outros"
              And preencho o campo "Nome do endereço"
              And clico no botão "Salvar"
             When clico em "Salvar endereço"
             Then retorna para a tela de listagem de endereço
              And exibe o endereço salvo

        @Endereço	@TCX-T489
        Scenario: Listar endereços salvos com sucesso
            Given possui endereços persistidos
             When abro a tela de endereços
             Then exibe a lista de endereços

        @Endereço	@TCX-T490
        Scenario: Alterar endereço em uso com sucesso
            Given estou na tela de listagem de endereços
             When clico em um endereço não selecionado
             Then o endereço passa a ser selecionado
              And assume a primeira posição da lista

        @Endereço	@TCX-T491
        Scenario: Abrir tela de novo endereço com sucesso
            Given estou na tela de listagem de endereços
              And tenho um endereço já cadastrado
             When clico no botão "Adicionar novo endereço"
             Then abre a tela de novo endereço

        @Endereço	@TCX-T492
        Scenario: Abrir tela de confirmação de dados com sucesso
            Given estou na tela de novo endereço
             When clico no botão "Usar localização atual"
             Then abrir tela de confirmação de endereço

        @Endereço	@TCX-T493
        Scenario: Buscar sugestões de endereços com sucesso
            Given estou na tela de novo endereço
             When digito um cep no campo "Endereço ou CEP"
             Then lista sugestões de endereços abaixo

        @Endereço	@TCX-T494
        Scenario: Abrir tela de preencher informações do endereço com sucesso
            Given estou na tela de novo endereço
             When clico em um endereço sugerido
             Then sou redirecionado para a tela de preencher informações do endereço

        @Endereço	@TCX-T495
        Scenario: Abrir tela de edição de endereços com sucesso
            Given estou na tela de listagem de endereços
              And clico no ícone no canto superior direito do card do endereço, com símbolo de lápis
             When clico no botão "Editar" no bottomsheet que aparecer
             Then abre a tela de edição de endereços
              And os dados são preenchidos conforme o endereço selecionado.

        @Endereço	@TCX-T496 @Crowdtest
        Scenario: Buscar informações do cep com sucesso
            Given estou na tela de edição de endereços
             When altero o campo CEP
             Then os campos devem ser preenchidos conforme o CEP informado
              And preencho nome de rua e numero
              And preencho complemento
              And consigo completar o cadastro

        @Endereço	@TCX-T497
        Scenario: Editar um endereço com sucesso*
            Given estou na tela de edição de endereços
             When preencho os campos "CEP", "Cidade", "Estado", "Bairro", "Endereço" e "Número"
              And clico no botão "Editar endereço"
             Then sou redirecionado para a página de listagem de endereços.

        @Endereço	@TCX-T498 @Crowdtest
        Scenario: Excluir endereço com sucesso
            Given estou na tela de listagem de endereços
             When clico no botão superior direito do endereço desejado (com um símbolo de lápis)
              And clico no botão "Excluir"
              And clico no botão "Excluir endereço"
             Then devo ser redirecionado para a tela de listagem de endereços
              And o endereço excluído não deve ser listado.

        @Endereço	@TCX-T499
        Scenario: Excluir endereço selecionado com sucesso
            Given estou na tela de listagem de endereços
             When clico no botão superior direito de um endereço selecionado (com um símbolo de lápis)
              And clico no botão "Excluir"
              And clico no botão "Excluir endereço"
             Then devo ser redirecionado para a tela de listagem de endereços
              And o endereço excluído não deve ser listado
              And o endereço seguinte deve ser selecionado.

        @Endereço	@TCX-T500 @Crowdtest
        Scenario: Scenario: Excluir último endereço com sucesso
            Given estou na tela de listagem de endereços
              And possui somente um endereço listado.
             When clico no botão superior direito do endereço desejado (com um símbolo de lápis)
              And clico no botão "Excluir"
              And clico no botão "Excluir endereço"
             Then devo ser redirecionado para a tela de confirmação de endereço
              And deve ser exibido o endereço atual pela geolocalização.

        @Endereço @Produto @Região	@TCX-T501
        Scenario: Alterar endereço e selecionar um produto para novo endereço de otua região (boleto)
            Given eu esto cadastrado em um endereço de uma região
              And tenho um produto no carrinho
             When altero o endereço para um endereço de outra região
             Then o carrinho é zerado os produto And seleciono um outro produto
             Then o carrinho mostra os pontos facily referente ao endereço alterado



#Saber qual são as regiões com Jogue-Junto Ativado e desativado	
        @Endereço @Região @Jogue-Junto	@TCX-T502
        Scenario: Alterar endereço e ativar o JogueJunto
            Given estou com um endereço ativo para uma região com JogueJunto desativado
             When eu altero o endereço para uma região com JogueJunto ativado
              And volto pra tela Home
             Then aparece o JogueJunto num circulo no canto inferior direito
              And ao participar do JogueJunto na tela do pedido aparece o endereço alterado

#Saber qual são as regiões com Jogue-Junto Ativado e desativado	
        @Endereço @Região @Jogue-Junto	@TCX-T503
        Scenario: Desativar endereço e ativar o JogueJunto
            Given estou com um endereço selecionado para uma região com JogueJunto Ativado
             When eu altero o endereço para uma região com JogueJunto desativado
              And volto pra tela Home
             Then não vejo o JogueJunto num circulo no canto inferior direito

        @Endereço @TCX-T504 @Crowdtest
        Scenario: Cadastro de Endereço com CEP único para cidade
            Given estou na tela de cadastro de endereços
             When preencho o campo CEP de cubertura regional (sem nome de rua ex, 88140-000)
             Then os campos devem ser preenchidos conforme o CEP informado
              And clico no endereço para editar
              And preencho nome de rua e numero
              And preencho complemento
              And consigo completar o cadastro
