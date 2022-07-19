Feature: Pedidos Grupo

Feature Description

        #Ter o App Facily Instalado e rodando 
        #Ter um cadastro Facily Estar logado 
        #Ter endereço de região com atendimento facily cadastrado	
        @grupo @Categoria @Pix @Pedido @Crowdtest @TCX-T110
        Scenario: Criar pedido através do botão Categoria  Grupo (Pix)	Crowdtest
            Given que estou logado no APP da Facily
              And na tela Home seleciono uma categoria para compra
              And seleciono um produto dessa categoria
              And clico no botão em grupo
              And no Carrinho seleciono um PDR
              And seleciono a forma de pagamento PIX
              And clico no botão Confirmar Compra
              And é exibido a pop up "Quase lá"
             When clico no botão "OK estou ciente"
             Then o pedido é criado com sucesso
              And verifico que ao clicar no botão "Copiar código PIX" o código é copiado para área de transferência
              And verifico que o status do pedido está como: "Aguardando Pagamento"
              And verifico nos "Detalhes do pedido" que o valor do produto é o valor em grupo
              And a forma de pagamento é exibida como "PIX"
              And o Total do pedido é o valor da soma dos produtos do carrinho
              And o Ponto de Retirada é o mesmo escolhido no carrinho
            
        @grupo @Categoria @Cartão @Pedido @TCX-T111
        Scenario: Criar pedido através do botão Categoria  Grupo (Cartão)
            
        #Ter o App Facily Instalado e rodando 
        #Ter um cadastro Facily Estar logado 
        #Ter endereço de região com atendimento facily cadastrado
        @grupo @Categoria @Pix @Pedido @Crowdtest @TCX-T112
        Scenario: Criar pedido através das Principais Categoria Grupo  (Pix) com 2 Categorias diferentes
            Given que estou logado no APP da Facily
              And na tela Home seleciono uma categoria para compra
              And seleciono um produto dessa categoria
              And clico no botão Grupo
              And clico na seta "<-" para retornar a Home do APP
              And na tela Home seleciono uma categoria diferente da anterior para compra
              And seleciono um produto dessa categoria
              And clico no botão Grupo
              And no Carrinho seleciono um PDR
              And seleciono a forma de pagamento Boleto
              And clico no botão Confirmar Compra
              And é exibido a pop up "Quase lá"
             When clico no botão "OK estou ciente"
             Then o pedido é criado com sucesso
              And verifico que ao clicar no botão "Copiar código PIX" o código é copiado para área de transferência
              And verifico que o status do pedido está como: "Aguardando Pagamento"
              And verifico nos "Detalhes do pedido" que o valor dos produtos é o valor dos produtos em Grupo
              And a forma de pagamento é exibida como "PIX"
              And o Total do pedido é o valor da soma dos produtos do carrinho
              And o Ponto de Retirada é o mesmo escolhido no carrinho
            
        @grupo @Categoria @Cartão @Pedido @TCX-T113
        Scenario: Criar pedido através das Principais Categoria Grupo  (Cartão) com 2 Categorias diferentes
           
        # Ter o App Facily Instalado e rodando 
        # Ter um cadastro Facily Estar logado 
        # Ter dois endereços de regiões diferentes com atendimento facily

        @grupo @Categoria @Boleto @Pedido @Produto @Região @Carrinho @TCX-T116 @Crowdtest
        Scenario: Selecionar produto de outra região
            Given que estou logado no APP da Facily
              And seleciono um produto para compra
              And clico no botão Individual
              And a tela do Carrinho é exibida
              And clico na seta "<-" para retornar a Home do APP
              And altero o endereço para outra região (Recife)
             When eu volto para Home Page
             Then limpa os produtos do carrinho
             
        @grupo @Categoria @Boleto @Pedido @Produto @Região @Carrinho @TCX-T117
        Scenario: Criar pedido  Categoria Grupo  (Boleto) 2  produto com 1 fora da região.  Deve limpar o carrinho.
            
        @grupo @Compartilhar @TCX-T120
        Scenario: Compartilhar link do grupo @através do botão "Convidar pelo WhatsApp"
            
        @grupo @Compartilhar @TCX-T144
        Scenario: Compartilhar link do grupo @através do botão "Convidar seus contatos"
            
        #Ter o App Facily Instalado e rodando 
        #Ter um cadastro Facily Estar logado 
        #Ter endereço de região com atendimento facily cadastrado
        @grupo @Categoria @Boleto @Pedido @Crowdtest @TCX-T296
        Scenario: Criar pedido através das Principais Categoria Grupo (Boleto) com 2 Categorias diferentes
            Given que estou logado no APP da Facily
              And na tela Home seleciono uma categoria para compra
              And seleciono um produto dessa categoria
              And clico no botão Grupo
              And clico na seta "<-" para retornar a Home do APP
              And na tela Home seleciono uma categoria diferente da anterior para compra
              And seleciono um produto dessa categoria
              And clico no botão Grupo
              And no Carrinho seleciono um PDR
              And seleciono a forma de pagamento Boleto
              And clico no botão Confirmar Compra
              And é exibido a pop up "Quase lá"
             When clico no botão "OK estou ciente"
             Then o pedido é criado com sucesso
              And verifico que ao clicar no botão "Ver Boleto" é exibido a página para seleção do banco
              And seleciono o banco para geração do boleto
              And verifico que os dados do boleto são exibidos com o número do pedido @vencimento @valor e código de barras
              And clico no botão "Fechar"
              And verifico que o status do pedido está como: "Aguardando Pagamento"
              And verifico nos "Detalhes do pedido" que o valor do produto é o valor em Grupo
              And a forma de pagamento é exibida como "Boleto"
              And o Total do pedido é o valor da soma dos produtos do carrinho
              And o Ponto de Retirada é o mesmo escolhido no carrinho
            
        @Pedido @PDR @TCX-T475
        Scenario: Realizar pedido com sugestão de comprar mais no PDR

        @link-compartilhado @Compre-comigo	@TCX-T506
        Scenario: Abrir Link compartilhado da mesma região
            Given eu recebi um link compartilhado de um produto em grupo da mesma região que a minha
             When eu clico no link compartilhado
             Then ele abre a tela do produto em “Compre Comigo”
              And um botão para eu continuar a compra.

        @link-compartilhado @Compre-comigo	@TCX-T507
        Scenario: Abrir Link compartilhado com endereço de outra região
