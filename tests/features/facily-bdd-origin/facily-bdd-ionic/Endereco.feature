Feature: Endereço(Ionic)

Feature Description


        @Endereço @TXC-T108
        Scenario: Alterar endereço digitando CEP e informar um endereço diferente da sua localização. Deve alterar mostrando novos PDRs

        @Endereço @minha-localização @TXC-T109
        Scenario: Alterar endereço utilizando minha localização

        @Endereço @Home-enxuta @minha-localização @TXC-T279
        Scenario: Validar "Usar minha localização" sem realizar o login
            Given que acesso o app sem realizar o login
              And acesso a opção "Endereços"
             When aciono o botão "Usar Minha Localização"
             Then valido que o endereço exibido esta correto
              And aciono o botão "Salvar Endereço"

        @Endereço	@TXC-T280
        Scenario: Validar alteração de endereço
            Given que acesso a opção "Endereços"
             When aciono o botão "Editar"
              And seleciono o endereço
              And altero os dados desejados
              And aciono o botão "Salvar endereço"
             Then valido que o endereço foi alterado corretamente

        @Endereço	@TXC-T282
        Scenario: Validar cadastro de endereço (trabalho) com sucesso
            Given que acesso a opção "Endereços"
             When aciono o botão "Adicionar Endereço"
              And informo um cep
              And preencho os campos "número" e "complemento"
              And seleciono o local "Trabalho"
              And aciono o botão "Salvar endereço"
             Then valido que o endereço foi cadastrado corretamente
              And apresenta a informação "Em Uso"

        @Endereço	@TXC-T283
        Scenario: Validar cadastro de endereço (Outro) com sucesso
            Given que acesso a opção "Endereços"
             When aciono o botão "Adicionar Endereço"
              And informo um cep
              And preencho os campos "número" e "complemento"
              And seleciono o local "Outros"
              And aciono o botão "Salvar endereço"
             Then valido que o endereço foi cadastrado corretamente
              And apresenta a informação "Em Uso"

        @Endereço	@TXC-T284
        Scenario: Validar a exclusão de um endereço
            Given que acesso a opção "Endereços"
             When aciono o botão "Editar"
              And seleciono o botão para "Excluir"
             Then valido que o endereço foi excluido corretamente

        @Endereço	@TXC-T285
        Scenario: Validar "Usar minha localização" após logar no app
            Given que realizo o login
              And acesso a opção "Endereços"
             When aciono o botão "Usar Minha Localização"
             Then valido que o endereço exibido esta correto
              And aciono o botão "Salvar Endereço"

        @Endereço @Carrinho	@TXC-T287
        Scenario: Validar alteração de endereço no momento da compra
            Given que estou logado no APP da Facily
              And seleciono um produto para compra
              And clico no botão Individual/Criar grupo
              And aciono o botão "Alterar"
             When seleciono um endereço
             Then minha compra é cancelada e novos produtos são exibidos na home

        @Endereço	@TXC-T281
        Scenario: Cadastrar de endereço (casa) com sucesso
            Given que acesso a opção "Endereços"
             When aciono o botão "Adicionar Endereço"
              And informo um cep
              And preencho os campos "número" e "complemento"
              And seleciono o local "Casa"
              And aciono o botão "Salvar endereço"
             Then valido que o endereço foi cadastrado corretamente
              And apresenta a informação "Em Uso"
