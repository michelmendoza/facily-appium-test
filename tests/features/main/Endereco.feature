Feature: Endereco

        Background:
            Given Eu estou na tela de Menu

        @smoketest 
        Scenario: Cadastrar Endereco
            Given eu clico em Enderecos
              And eu clico em adicionar novo endereco
              And eu preencho MASP
              And eu seleciono MASP
              And eu clico no campo numero
              And eu preencho numero
              And dou um swipeUP
             When eu clico em salvar
             Then eu Volto a tela

        @smoketest @endereco
        Scenario: Cadastrar Endereco - Trabalho
            Given eu clico em Enderecos
              And eu clico em adicionar novo endereco
              And eu preencho MASP
              And eu seleciono MASP
              And eu clico no campo numero
              And eu preencho numero
              And dou um swipeUP
              And eu seleciono tipo de endereco trabalho
             When eu clico em salvar
             Then eu Volto a tela
        
          @smoketest @endereco
          Scenario: Excluir Endereco
            Given eu clico em Enderecos
              And eu clico em editar endereco
              And eu clico em excluir endereco
             When confirmo a exclusão de endereco
             Then eu Volto a tela

        @smoketest @endereco
        Scenario: Cadastrar Endereco - Outro
            Given eu clico em Enderecos
              And eu clico em adicionar novo endereco
              And eu preencho MASP
              And eu seleciono MASP
              And eu clico no campo numero
              And eu preencho numero
              And dou um swipeUP
              And eu seleciono tipo de endereco outros
              And preencho nome do endereco
              And clico em salvar nome do endereco
              And dou um swipeUP
             When eu clico em salvar
             Then eu Volto a tela

         @manual @endereco @skip
          Scenario: Excluir Endereco
            Given eu clico em Enderecos
              And eu clico em editar endereco
              And eu clico em excluir endereco
             When confirmo a exclusão de endereco
             Then eu Volto a tela


     
