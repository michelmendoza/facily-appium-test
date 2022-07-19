import AppScreen from './app.screen';
import NativeAlert from '../helpers/NativeAlert';

const SELECTORS = {
    LOGIN_SCREEN: '~Login-screen',
    LOGIN_CONTAINER_BUTTON: '~button-login-container',
    SIGN_UP_CONTAINER_BUTTON: '~button-sign-up-container',
    LOGIN_BUTTON: '~button-LOGIN',
    SIGN_UP_BUTTON: '~button-SIGN UP',
    INPUT: '~input-email',
    PASSWORD: '~input-password',
    REPEAT_PASSWORD: '~input-repeat-password',
    ANDROID: {
        INVALID_USER_EMAIL_ALERT_TEXT:
            '//android.widget.TextView[contains(@text, "Please enter a valid email address")]',
    },
    IOS: {
        ALERT: "-ios predicate string:type == 'XCUIElementTypeAlert'",
    },
};

class LoginScreen extends AppScreen {
    constructor() {
        super(SELECTORS.LOGIN_SCREEN);
    }

    get loginContainerButon() {
     // eslint-disable-next-line no-console
    console.log('  > Action: loginContainerButon()')
        return $(SELECTORS.LOGIN_CONTAINER_BUTTON);
    }

    get signUpContainerButon() {
             // eslint-disable-next-line no-console
    console.log('  > Action: signUpContainerButon()')
        return $(SELECTORS.SIGN_UP_CONTAINER_BUTTON);
    }

    get loginButton() {
             // eslint-disable-next-line no-console
    console.log('  > Action: loginButton()')
        return $(SELECTORS.LOGIN_BUTTON);
    }

    get signUpButton() {
             // eslint-disable-next-line no-console
    console.log('  > Action: signUpButton()')
        return $(SELECTORS.SIGN_UP_BUTTON);
    }

    get email() {
             // eslint-disable-next-line no-console
    console.log('  > Action: email()')
        return $(SELECTORS.INPUT);
    }

    get password() {
             // eslint-disable-next-line no-console
    console.log('  > Action: password()')
        return $(SELECTORS.PASSWORD);
    }

    get repeatPassword() {
             // eslint-disable-next-line no-console
    console.log('  > Action: repeatPassword()')
        return $(SELECTORS.REPEAT_PASSWORD);
    }

    get alert() {
        return NativeAlert;
    }

    get errorMessage() {
        const selector = driver.isAndroid
            ? SELECTORS.ANDROID.INVALID_USER_EMAIL_ALERT_TEXT
            : SELECTORS.IOS.ALERT;
        return $(selector);
    }

    login(email, password) {
        this.loginContainerButon.click();
        this.email.setValue(email);
        this.password.setValue(password);
        if (driver.isKeyboardShown()) {
            driver.hideKeyboard();
        }
        this.loginButton.click();
    }

    loginMessagemOk() {
        this.alert.waitForIsShown();
        this.alert.pressButton('OK');
        this.alert.waitForIsShown(false);
    }
}

export default new LoginScreen();
