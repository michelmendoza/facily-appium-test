Feature: Login
Feature Description

        @Crowdtest @Login @Facebook @TCX-T254
        Scenario: Validar Login com conta pelo facebook
            Given que acesso a opção "Minha Conta"
              And aciono o botão "Continuar com Facebook"
              And aceito o termo de privacidade
              And informo login e senha When aciono o botão "Login"
             Then vejo os dados da minha conta
              And mostra o a imagem do meu profile no avatar
    
        @Login @TCX-T255
        Scenario: Validar realização de login com sucesso
            Given que acesso a opção "Minha Conta"
              And informo um login ou senha válidos  When aciono o botão "Entrar"
             Then valido que é exibidos os dados da minha conta
    
        @Login @TCX-T256
        Scenario: Validar realização de login com um e-mail ou senha invalido
            Given que acesso a opção "Minha Conta"
              And informo um login ou senha invalido  When aciono o botão "Entrar"
             Then valido que a mensagem apresentada é "Email e/ou senha inválidos"
    
        @Crowdtest @Login @e-mail @TCX-T257
        Scenario: Validar recuperação de senha
            Given que acessei a opção "Esqueci minha senha" dentro do menu "login" When informei um email válido
             Then acionei o botão "Recuperar"
              And valido se o email foi enviado corretamente
    
        @Login @Menu @TCX-T258
        Scenario: Validar Termos e condições e a Política de privacidade
            Given que acesso a opção "Minha Conta"
              And aciono a opção para entrar nos "Termos e condições e a política de privacidade" When sou direcionado para a tela de Termos
             Then valido os termos apresentados
    
        @Login @Novo-usuario @TCX-T259
        Scenario: Validar login de um novo usuário
            Given que acesso a opção "Login" dentro do menu "Minha Conta"
              And informo um login e senha para primeiro acesso When aciono o botão "Entrar"
             Then acesso minha conta
              And valido as promoções exclusivas para novos usuário
    
        @Deprecated	@Login @link-compartilhado @Super-Promo	@TCX-T261
        Scenario: Validar login com link compartilhado de uma SuperPromo
            Given que acesso o aplicativo através do link de uma superpromo
              And aciono o a opção "Comprar" When informo meu email e senha
             Then valido o acesso a minha conta
    
        @Deprecated	@Login @Home-enxuta	@TCX-T388
        Scenario: Deve exibir os botões Cadastre-se / Login / Recuperar senha qu
              Ando não estiver logado
    
        @Deprecated	@Login @TCX-T391
        Scenario: Verificar se exibe a informação "Novo por aqui? Vamos começar" na tela inicial do app
    
        @Login @Produto @TCX-T505
        Scenario: Login com sucesso via seleção de produto
            Given eu estou deslogado When eu adiciono um produto no carrinho
             Then ele abre a tela de login
              And faz o login com sucesso
    
        @Crowdtest	@Login @Facebook  @TCX-T509
        Scenario: Validar Login com conta pelo google
            Given que acesso a opção "Minha Conta"
              And acionar o login via google
              And aceito o termo de privacidade
              And informo login e senha When aciono o botão "Login"
             Then vejo os dados da minha conta
              And mostra o a imagem do meu profile no avatar
    
        @Deprecated	@Login @link-compartilhado @Super-Promo @TCX-T514
        Scenario: Validar login com link compartilhado de uma SuperPromo de um produto com opções obrigatórias
            Given que acesso o aplicativo através do link de uma superpromo
              And aciono o a opção "Comprar"
              And seleciono as opções When informo meu email e senha
             Then valido o acesso a minha conta
