Feature: Login

        Background:
            Given Eu estou na tela de Menu
 
        @smoketest @login
        Scenario: Login
            Given eu clico em Minha Conta
              And eu preencho o email
              And eu preencho a senha
             When clico em Entrar
             Then eu faço o logoff
    
         @skip @Manual @login
         Scenario: Login - Manual
            Given eu clico em Minha Conta
              And eu preencho o email
              And eu preencho a senha
             When clico em Entrar
             Then eu faço o logoff