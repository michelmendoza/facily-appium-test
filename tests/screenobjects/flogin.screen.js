import AppScreen from './app.screen';

const SELECTORS = {
    LOGIN_EMAIL: '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[2]/android.view.View[2]/android.view.View[2]/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View/android.view.View[2]/android.widget.EditText',
    LOGIN_EMAIL2: 'android.widget.EditText',
    LOGIN_SENHA: '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[2]/android.view.View[2]/android.view.View[2]/android.view.View[4]/android.view.View/android.view.View[1]/android.view.View/android.view.View[2]/android.widget.EditText',
    LOGIN_SENHA2: 'android.widget.EditText',
    LOGIN_ESQUECISENHA: '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[2]/android.view.View[2]/android.view.View[2]/android.view.View[5]',
    LOGIN_ENTRAR:'/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[2]/android.view.View[2]/android.widget.Button',
    LOGIN_ENTRAR2:'android.widget.Button',
    LOGIN_VAMOSCOMECAR:'/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[2]/android.view.View[2]/android.view.View[3]/android.view.View',
    LOGIN_FACEBOOK:'/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[2]/android.view.View[2]/android.view.View[4]/android.widget.Button',
    LOGIN_TERMOS:'/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[2]/android.view.View[2]/android.view.View[5]/android.view.View'
};

class FLoginScreen extends AppScreen {
    constructor() {
        super(SELECTORS.LOGIN_SCREEN);
    }

 
    async inputLogin() {
        // eslint-disable-next-line no-console
        console.log('  > Action: inputLogin()')
       await $(SELECTORS.LOGIN_EMAIL).setValue("michel.mendoza@gmail.com");
    }
     
    async inputSenha() {
        // eslint-disable-next-line no-console
        console.log('  > Action: inputSenha()')
        await $(SELECTORS.LOGIN_SENHA).setValue("Floripa2020@");
     }

     async btnEntrar() {
        // eslint-disable-next-line no-console
        console.log('  > Action: btnEntrar()')
        await $(SELECTORS.LOGIN_ENTRAR).click();
     }
}
 
export default new FLoginScreen();
