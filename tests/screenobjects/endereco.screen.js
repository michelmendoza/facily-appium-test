import AppScreen from './app.screen';

const SELECTORS = {
    ENDERECO_MENSAGEM1: '//android.view.View[@content-desc="Você ainda não tem endereços cadastrados."]',
    ENDERECO_MENSAGEM2: '~Você ainda não tem endereços cadastrados.',
    ENDERECO_ADICIONARNOVO: '~Adicionar novo endereço',
    ENDERECO_ADICIONARNOVO2: '//android.widget.Button[@content-desc="Adicionar novo endereço"]',
    ENDERECO_INPUTBUSCACEP: '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText',
    ENDERECO_MASP: '~MASP - Museu de Arte de São Paulo\nAvenida Paulista - Bela Vista, São Paulo - SP, Brasil',
    ENDERECO_NUMERO: '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ScrollView/android.widget.EditText[6]',
    ENDERECO_COMPLEMENTO: '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ScrollView/android.widget.EditText[2]',
    ENDERECO_TIPOCASA: '//android.view.View[@content-desc="Casa"]/android.widget.RadioButton',
    ENDERECO_TIPOTRABALHO: '//android.view.View[@content-desc="Trabalho"]/android.widget.RadioButton',
    ENDERECO_TIPOOUTROS: '//android.view.View[@content-desc="Outros"]/android.widget.RadioButton',
    ENDERECO_INPUTNOMEDOENDERECO: '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.widget.EditText',
    ENDERECO_SALVARNOMEDOENDERECO: '//android.widget.Button[@content-desc="Salvar"]',
    ENDERECO_SALVARNOMEDOENDERECO2: '~Salvar',
    ENDERECO_SALVAR: '~Salvar endereço' ,
    ENDERECO_MASPTRABALHO_EDITAR: '//android.view.View[@content-desc=\"Trabalho\nAvenida Paulista - São Paulo\n01310-200\"]/android.view.View',
    ENDERECO_MASPCASA_EDITAR: '//android.view.View[@content-desc=\"Casa\nAvenida Paulista - São Paulo\n01310-200\"]/android.view.View',    
    ENDERECO_BTNMODAL_EDITAR: '//android.widget.Button[@content-desc="Editar"]',
    ENDERECO_BTNMODAL_EDITAR2: '~Editar',
    ENDERECO_BTNMODAL_EXCLUIR: '//android.widget.Button[@content-desc="Excluir"]',
    ENDERECO_BTNMODAL_EXCLUIR2: '~Excluir',
    ENDERECO_BTNMODAL_NAO_EXCLUIR: '//android.widget.Button[@content-desc="Não excluir"]',
    ENDERECO_BTNMODAL_NAO_EXCLUIR2: '~Não excluir',
    ENDERECO_BTNMODAL_CONFIRMA_EXCLUIR: '//android.widget.Button[@content-desc="Excluir endereço"]',
    ENDERECO_BTNMODAL_CONFIRMA_EXCLUIR2: '~Excluir endereço',

};

class EnderecoScreen extends AppScreen {
    constructor() {
        super(SELECTORS.ENDERECO_SCREEN);
    }

 
    async btnNovoEndereco() {
        // eslint-disable-next-line no-console
       console.log('  > Action: btnNovoEndereco()')
       await $(SELECTORS.ENDERECO_ADICIONARNOVO).click();
    }
    
    async btnEditarEnderecoCasaMASP() {
        // eslint-disable-next-line no-console
       console.log('  > Action: btnEditarEnderecoCasaMASP()')
       await $(SELECTORS.ENDERECO_MASPCASA_EDITAR).click();
    }
    
    async btnExcluirEndereco() {
        // eslint-disable-next-line no-console
       console.log('  > Action: btnexcluirEndereco()')
       await $(SELECTORS.ENDERECO_BTNMODAL_EXCLUIR2).click();
    }

    async btnConfirmaExcluirEndereco() {
        // eslint-disable-next-line no-console
       console.log('  > Action: btnConfirmaExcluirEndereco()')
       await $(SELECTORS.ENDERECO_BTNMODAL_CONFIRMA_EXCLUIR2).click();
    }   

    
    async inputEndereco(){
            // eslint-disable-next-line no-console
       console.log('  > Action: inputEndereco()')
        await $(SELECTORS.ENDERECO_INPUTBUSCACEP).click();
        await $(SELECTORS.ENDERECO_INPUTBUSCACEP).setValue("MASP");
    }

     async selectMASP(){
        await $(SELECTORS.ENDERECO_MASP).click();
    }

    
    async selectTipoTrabalho(){
            // eslint-disable-next-line no-console
       console.log('  > Action: selectTipoTrabalho()')
        await $(SELECTORS.ENDERECO_TIPOTRABALHO).click();
    }

    async selectTipoOutros(){
        // eslint-disable-next-line no-console
   console.log('  > Action: selectTipoOutros()')
    await $(SELECTORS.ENDERECO_TIPOOUTROS).click();
}

    async inputNumero(){
        // eslint-disable-next-line no-console
       console.log('  > Action: inputNumero()')
        // await $(SELECTORS.ENDERECO_NUMERO).click();
        await $(SELECTORS.ENDERECO_NUMERO).setValue('123');
    }

    
    async inputNomeDoEndereco(){
        // eslint-disable-next-line no-console
       console.log('  > Action: inputNumero()')
        // await $(SELECTORS.ENDERECO_NUMERO).click();
        await $(SELECTORS.ENDERECO_INPUTNOMEDOENDERECO).setValue('123');
    }

    async bntSalvarEndereco(){ 
         // eslint-disable-next-line no-console
       console.log('  > Action: bntSalvarEndereco()')
        await $(SELECTORS.ENDERECO_SALVAR).click();
        
    }

    
    async bntSalvarNomeDoEndereco(){ 
        // eslint-disable-next-line no-console
      console.log('  > Action: bntSalvarNomeDoEndereco()')
       await $(SELECTORS.ENDERECO_SALVARNOMEDOENDERECO2).click();
       
   }
 
   
 
}



export default new EnderecoScreen();
