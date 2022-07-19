import $ from "webdriverio/build/commands/browser/$";
 
class TabBar {
    openHome() {
        $('~Home').click();
    }

    openWebView() {
        $('~WebView').click();
    }

    openLogin() {
        $('~Login').click();
    }

    openForms() {
        $('~Forms').click();
    }

    openSwipe() {
        $('~Swipe').click();
    }
    
    sim() {        
        $('~Sim, está certo!').click();
    }

    numclick() {        
        $("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ScrollView/android.widget.EditText[1]").click();
    }

    numadd() {        
        $("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ScrollView/android.widget.EditText[1]").setValue("22");
    }

    checkbox() {        
        $("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ScrollView/android.widget.CheckBox").click();
    }

     openMenuEndereco() {

        $('~/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View[1]/android.view.View[2]/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View/android.view.View[1]/android.view.View/android.view.View').click();
    }

    waitForAddAdressButton() {
 
    }

    waitForTabBarShown() {
        // $('//android.widget.Button[@content-desc="Home"]').waitForDisplayed(20000);
        $('/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.widget.Button').waitForDisplayed(20000);
  
    }
}

export const tabBar = new TabBar();
