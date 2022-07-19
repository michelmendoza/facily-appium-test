
Feature: busca

        Scenario: Buscar por produtos com a Letra A
            Given que eu estou na tela de busca
             When eu faço uma busca por um produto com a letra A
             Then já mostra uma lista com produtos que tem a letra A

        Scenario: Buscar por produtos com a palavra parcialmente digitada
            Given que eu estou na tela de busca
             When eu faço uma busca por um produto com a palavra digitando apenas a palavra parcialmente
             Then já mostra uma lista com produtos que tem a palavra digitada

        Scenario: Buscar por produtos com duas palavras
            Given que eu estou na tela de busca
             When eu faço uma busca por um produto com a palavra digitando duas palavras
             Then já mostra uma lista com produtos que tem as palavras digitadas

        Scenario: [Busca] Buscar produto na lupa inferior da home
            Given que estou logado no APP Facily
             When clico na "Busca" inferior da home
             Then abre a busca para digitação

        Scenario: [Busca] Buscar produto na lupa superior da home
            Given que estou logado no APP Facily
              And na "Busca" superior da home eu digito um produto
             When clico em buscar
             Then verifico que é exibida a tela com os produtos disponíveis para compra