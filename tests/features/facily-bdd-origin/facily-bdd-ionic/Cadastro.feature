

# Não ter uma conta no app da Facily vinculado a um telefone e email 
# Ter o app Facily Instalado e Rodando 
# Ter acesso a internet e ao SMS do disposítivo celular	
        @Cadastro @Crowdtest @TCX-T82
        Scenario: cadastrar uma conta com sucesso
            Given que acesso o APP da Facily
              And clico no menu Sanduíche
              And clico na opção Minha Conta
              And clico no botão Cadastre-se
              And preencho os campos Nome, Sobrenome, Telefone, Email, Confirmar Email, Senha, Confirmar Senha
              And aceito os Termos e Condições
              And clico no botão Criar Conta
              And na tela de Verificação por SMS preencho o código de 4 dígitos recebido
             When clico no botão Validar Código
             Then o cadastro é realizado com sucesso

        @Cadastro @verificação @TCX-T83
        Scenario: Verificar se exibe o botão "Alterar numero" para voltar a tela anterior após o envio do sms de verificação
	
        @Cadastro @TCX-T84
        Scenario: Verificar se ao remover o dígito 9 da frente do número de telefone, o app permite um novo cadastro. Não deve permitir
              
              #App da Facily Instalado e Rodando Não ter nenhum cadastro ativo para o numero do aparelho	
        @Cadastro @Crowdtest	@TCX-T237
        Scenario: Criar um cadastro com sucesso
            Given que acesso o APP da Facily
              And clico no menu Sanduíche
              And clico na opção Minha Conta
              And clico no botão Cadastre-se
              And preencho os campos Nome, Sobrenome, Telefone, Email, Senha, Confirmar Senha
              And aceito os Termos e Condições
              And clico no botão Criar Conta
              And na tela de Verificação por SMS preencho o código de 4 dígitos recebido
             When clico no botão Validar Código
             Then o cadastro é realizado com sucesso

        @Cadastro @TCX-T510
        Scenario: Criar novo usuário sem a validação 2FA
            Given estou na home do app com nenhum usuário logado
             When acesso a tela de Login
              And acesso a tela de cadastro pelo botão "Vamos começar"
              And preencho o formulário com um email no formato: "textoqualquer20220613@internal.faci.ly" (obs: a data deve ser igual a do dia do teste)
             Then uma nova conta é criada sem a necessidade da validação 2FA via SMS.
