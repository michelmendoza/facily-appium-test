Feature: Minha conta

Feature Description
        
        @Minha-conta @Login	@TXC-T81
        Scenario: Verificar se exibe a informação "Novo por aq Vamos começar" na tela inicial do app
            Given eu estou na tela de login
             When eu clico em Novo por aqui?vamos começar
             Then ele abre a tela de cadastro de usuario

        @Cadastro @Crowdtest	@TXC-T82
        Scenario: cadastrar uma conta com sucesso
            Given que acesso o APP da Facily
              And clico no menu Sanduíche
              And clico na opção Minha Conta
              And clico no botão Cadastre-se
              And preencho os campos Nome @Sobrenome @Telefone @Email @Confirmar Email @Senha @Confirmar Senha
              And aceito os Termos e Condições
              And clico no botão Criar Conta
              And na tela de Verificação por SMS preencho o código de 4 dígitos recebido
             When clico no botão Validar Código
             Then o cadastro é realizado com sucesso

        @Cadastro @verificação	@TXC-T83
        Scenario: Verificar se exibe o botão "Alterar numero" para voltar a tela anterior após o envio do sms de verificação

        @Cadastro	@TXC-T84
        Scenario: Verificar se ao remover o dígito 9 da frente do número de telefone @o app permite um novo cadastro. Não deve permitir

        @Minha-conta @Cadastro @TXC-T128
        Scenario: Validar se exibe as informações pessoais na tela Minha conta
            Given eu faço o login no app facily
              And estou na tela de Minha conta
             Then exibe corretamente as informações de Nome @Email @Celular @Data Nasc e CPF
        @Minha-conta @Logoff	@TXC-T129
        Scenario: Verificar se exibe o botão "Sair e entrar com outra conta"*
            Given eu estou na tela Minha Conta
             When eu clico em Sair e entrar com outra conta
             Then ele efetua o logoff corretamente da conta

        @Minha-conta @Home-enxuta @TXC-T130
        Scenario: Deve exibir os botões Cadastre-se / Login / Recuperar senha qu
              And o não estiver logado
            Given eu não estou logado no apop Facily
             When estou na tela de Login
             Then exibe os botões Cadastre-se / Login / Recuperar senha

        @Minha-conta @Avatar @TXC-T131
        Scenario: Alterar avatar e verificar se foi alterado com sucesso
            Given eu estou logado no app Facily
              And estou na tela Minha Conta
             When eu clico na foto
              And altero a imagem do avatar
             Then ele altera a imagem corretamente

        @Cadastro @Crowdtest @TXC-T237
        Scenario: Criar um cadastro com sucesso
            Given que acesso o APP da Facily
              And clico no menu Sanduíche
              And clico na opção Minha Conta
              And clico no botão Cadastre-se
              And preencho os campos Nome @Sobrenome @Telefone @Email @Senha @Confirmar Senha
              And aceito os Termos e Condições
              And clico no botão Criar Conta
              And na tela de Verificação por SMS preencho o código de 4 dígitos recebido
             When clico no botão Validar Código
             Then o cadastro é realizado com sucesso

        @Cadastro @TXC-T510
        Scenario: Criar novo usuário sem a validação 2FA
            Given estou na home do app com nenhum usuário logado
             When acesso a tela de Login
              And acesso a tela de cadastro pelo botão "Vamos começar"
              And preencho o formulário com um email no formato: "textoqualquer20220613@internal.faci.ly" (obs: a data deve ser igual a do dia do teste)
             Then uma nova conta é criada sem a necessidade da validação 2FA via SMS.
