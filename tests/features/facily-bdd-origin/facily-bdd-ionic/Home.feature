Feature: Home
     
Feature Description

        @Home @Super-Desconto @TXC-T121
        Scenario: Verificar se o botão "ver mais" redireciona para Categoria "Super descontos"
            Given que estou logado no APP Facily
             When na Home do APP em "Super descontos" clico em na opção "Ver mais"
             Then verifico que é exibida a categoria Super dencontos com os produtos disponíveis para compra

        @Menu @TXC-T124
        Scenario: Verificar informações do menu (Meus videos @Moedas de ouro @Meus amigos @Meus pedidos @Endereços @Minha conta @Ajuda @Ajuda Facily Imports @Seja um ponto de Retirada @Venda na Facily)
        @Splash @Pedido @TXC-T147
        Scenario: Validar em Splash o funcionamento do link para realizar um pedido
            Given que logo no app
              And é aberto um anuncio do tipo splash
             When clico no anúncio
             Then devo ser direcionada para tela para realizar um pedido

        @Ajuda @Menu	@TXC-T232
        Scenario: Verificar no menu Ajuda a opção Perguntas Frequentes
            Given que estou logado no APP Facily
              And na tela Home clico no menu sanduíche
              And clico no botão "Ajuda"
              And na tela de Ajuda clico no botão "Perguntas Frequentes"
             Then é exibida a página de Perguntas Frequentes com o campo para pesquisa "Como posso te ajud"
              And os seguintes Tópicos "Bônus e Promoções" @"Cancelar Pedido" @"Como comprar" @"Conta e Pagamento" @"Pedido" @"Ponto de Retirada" e "Sobre a Facily"
              And a opção "Ainda com dúvida? entre em contato.  Dúvidas
              And a opçao "Fale conosco!"

        @Ajuda @Menu	@TXC-T233
        Scenario: Verificar no menu Ajuda a opção Termos e Condições de Uso
            Given que estou logado no APP Facily
              And na tela Home clico no menu sanduíche
              And clico no botão "Ajuda"
              And na tela de Ajuda clico no botão "Termos e Condições de Uso"
             Then é exibida a página com os Termos e Condições de Uso de usuários Facily

        @Ajuda @Menu	@TXC-T234
        Scenario: Verificar no menu Ajuda a opção Política de Privacidade
            Given que estou logado no APP Facily
              And na tela Home clico no menu s
              Anduíche
              And clico no botão "Ajuda"
              And na tela de Ajuda clico no botão "Política de Privacidade"
             Then é exibida a página com as Políticas de Privacidades da Facily

        @Pedido @Banner @Crowdtest @TXC-T300
        Scenario: Validar a criação de pedido através do anuncio de banner
            Given que acesso o aplicativo com login e senha
             When clico em um anuncio exibido no banner
              And o app deverá redirecionar para a página do produto anunciado
             Then eu devo conseguir realizar o pedido
              And consigo gerar a cobrança com os valores corretos do pedido

        @Ajuda @Menu @TXC-T310
        Scenario: Verificar as informações exibidas no menu Ajuda
            Given que estou logado no APP Facily
              And na tela Home clico no menu sanduíche
             When clico no botão "Ajuda"
             Then a tela de Ajuda é exibida com os botões "Perguntas Frequentes" @"Termos e condições" e "Política de Privacidade"
              And a versão do APP

        @Home @Alerta @TXC-T439
        Scenario: Logar e receber o aviso via Modal de produtos pronto pra retirada
            Given tenho produtos pronto pra retirada
             When eu faço o login no app
             Then abre a Home com uma modal avisando os produtos pronto pra retirada
        
        @Ajuda @Menu @Deprecated @TXC-T377
        Scenario: Verificar a saída do menu "Ajuda" para retorno ao app

        @Ajuda @Menu @Deprecated @TXC-T378
        Scenario: Verificar a saída no menu "Seja um ponto de retirada" para retorno ao app
	
        @Ajuda @Menu @Deprecated @TXC-T379
        Scenario: Verificar a saída do menu "Venda na Facily " para retorno ao app
