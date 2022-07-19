Feature: Logoff

Feature Description

        @Logoff	@TXC-T260
        Scenario: Validar a opção de sair da conta
            Given que acesso a opção menu "Minha Conta"
              And valido meus dados "nome" "email" "celular" "dada de nascimento" "cpf"
             When aciono a opção "Sair e entrar com outra conta"
             Then valido se foi realizado o logoff com sucesso

        @Home-enxuta @Menu	@TXC-T262
        Scenario: Validar acesso ao aplicativo sem realização de login
            Given que acessei o aplicativo sem logar
             When acesso o menu "hamburguer"
             Then valido se esta sendo apresentado as opções "Endereço" "Minha conta" "Ajuda" "Seja um Ponto de Retirada" "Venda na Facily"
              And valido se no menu inferior esta sendo exibido as opções "Home" "Pedidos" "Moedas"

        @Menu @Home-enxuta @Moedas @Pedido	@TXC-T263
        Scenario: Validar menu pedidos e moedas sem realização de login
            Given que acessei o aplicativo sem logar
             When acesso o menu "Meus pedidos" e "Moedas"
             Then valido se exibido a tela para realização de Cadastro
              And valido se é exibido a tela para realização de login

        @Logoff @Home-enxuta	@TXC-T264
        Scenario: Validar a opção jogue junto sem realizar login
            Given que acessei o aplicativo sem logar
             When acesso a opção "Jogue Junto"
             Then valido se esta sendo apresentado as informações dos jogos
              And valido se esta sendo exibido o botão "Regulamento"
