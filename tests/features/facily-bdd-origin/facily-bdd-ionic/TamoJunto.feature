Feature: Tamo Junto

Feature Description

        @TCX-T151 @TamoJunto @Produto @WhatsApp
        Scenario: Validar o pedido de ajuda para abaixar o preço de um produto através do whatsApp	Given abro uma oferta "Tamu Junto" When quero solicitar um amigo ajuda para abaixar o preço And clico no botão "Quero esse" Then encaminha para uma nova tela exibindo o botão "Quero ajuda para baixar o Preço" But preciso realizar o envio do link para um amigo

        @TCX-T152 @TamoJunto @Produto
        Scenario: Ajudar a baixar o preço do produto de um amigo	Given que recebo de um amigo o link de uma oferta  Then clico e abro a oferta no meu app And recebo uma mensagem induzindo a ajudar o meu amigo abaixar o preço da oferta Then clico e recebo uma mensagem confirmando a minha ajuda

        @TCX-T153 @TamoJunto @Produto @Cartão
        Scenario: Comprar um produto Tamo Junto pagamento Cartão

        @TCX-T154 @TamoJunto @Boleto @Produto
        Scenario: Comprar um produto Tamo Junto pagamento Boleto

        @TCX-T155 @TamoJunto @Produto @Pix
        Scenario: Comprar um produto Tamo Junto (Pix)
