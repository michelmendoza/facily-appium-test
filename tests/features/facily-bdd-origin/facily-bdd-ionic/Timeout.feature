Feature: Timeout

        Scenario: Mensagem de erro no modal
            Given que estou logado no APP da Facily
             When a requisição do app demora a responder
             Then é exibido a modal com a mensagem de erro: "Nosso servidor caiu com novos descontos no app. Estamos levantando ele, aguarde alguns minutos e tente novamente!"