Feature: Pedidos Meus Pedidos

Feature Description

        @TCX-T125 @Pedido
        Scenario: Verificar em Meus Pedidos que a tela é atualizada após o clique no botão atualizar	Given que estou logado no app da facily And na home do app eu acesso o menu hamburguer And clico em "Meus Pedidos" When clico no botão "atualizar" no canto superior direito Then Verifico que os pedidos são atualizados com sucesso.

        @TCX-T126 @Pedido
        Scenario: Verificar em Meus Pedidos acesso a "Meus Pedidos" com um novo usuário	Given que estou logado no app da facily And na home do app eu acesso o menu hamburguer When clico em "Meus Pedidos" Then é exibido a mensagem "Você não tem nenhum pedido em andamento no momento".

        @TCX-T127 @Pedido
        Scenario: Verificar em Meus Pedidos a exibição da listagem com todos os pedidos	Given que estou logado no app da facily And na "Home" do app acesso o menu hamburguer When clico em "Meus Pedidos" Then em "Meus pedidos" visualizo a lista de pedidos com os status  "Em andamento", "Pronto para retirar", "Finalizados".

        @TCX-T322 @Pedido @Deprecated
        Scenario: Validar que o botão "Reporta Atraso" está disponível para pedido fora do prazo	Given que estou logado no app da facily And na home do app eu acesso o menu hamburguer And clico em "Meus Pedidos" When possuo pedidos pendentes com mais de 30 dias corridos Then Visualizo o botão "Reportar atraso" para pedidos com mais de 30 dias corridos pendentes

        @TCX-T323 @Pedido @Deprecated
        Scenario: Validar que o botão "Reporta Atraso" NÃO está disponível para pedido dentro do prazo	Given que estou logado no app da facily And na home do app eu acesso o menu hamburguer And clico em "Meus Pedidos" When possuo pedidos pendentes com menos de 30 dias corridos Then Verifico que o botão "Reportar atraso" não é exibido.

        @TCX-T324 @Pedido @Deprecated
        Scenario: Validar que o botão "Reporta Atraso" NÃO está disponível para pedido pendente há 30 dias corrido	Given que estou logado no app da facily And na home do app eu acesso o menu hamburguer And clico em "Meus Pedidos" When possuo pedidos pendentes há 30 dias corridos Then Verifico que o botão "Reportar atraso" não é exibido.
