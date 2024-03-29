const { join } = require('path');
const { config } = require('./wdio.shared.conf');

// ============
// Specs
// ============
config.cucumberOpts.require = ['./tests/steps/**/app*.steps.js'];

// ============
// Capabilities
// ============
// For all capabilities please check
// http://appium.io/docs/en/writing-running-appium/caps/#general-capabilities
config.capabilities = [
    {
        // The defaults you need to have in your config
        "path": "/wd/hub",
        "appium:path": "/wd/hub",
        'appium:platformName': 'Android',
        maxInstances: 1,
        'appium:newCommandTimeout': 40,
        // appActivity: 'com.wdiodemoapp.com.wdiodemoapp.SplashActivity',
        // For W3C the appium capabilities need to have an extension prefix
        // http://appium.io/docs/en/writing-running-appium/caps/
        // This is `appium:` for all Appium Capabilities which can be found here
         'appium:chromedriverExecutableDir':
         'C:\\Facily\\appium\\chromedriver_win32',


        // Emulator 
        'appium:deviceName': 'emulator-5554', 
        'appium:platformVersion': '11.0',
        
        // Mobile Samsung 
       //  'appium:deviceName': 'RQ8R708NVHD',
       //  'appium:platformVersion': '11.0',
        // 'appium:realDevice': true,

        // Mobile Xiaomi
        // 'appium:deviceName': 'v4w4zl4xkntcpj4l',
        // 'appium:platformVersion': '10.0',
          

        'appium:orientation': 'PORTRAIT',
 
        // `automationName` will be mandatory, see
        // https://github.com/appium/appium/releases/tag/v1.13.0
         'appium:automationName': 'UiAutomator2',
        // 'appium:automationName': 'XCUITest',
    
        
        // The path to the app
        'appium:app': join(
            process.cwd(),
           // './apps/Android-NativeDemoApp-0.2.1.apk',
           //  './apps/app-debug.4.11.x-flutter.apk',
              './apps/app-4-13-2-categorias-busca.apk',
            
        ),
        
        // Read the reset strategies very well, they differ per platform, see
        // http://appium.io/docs/en/writing-running-appium/other/reset-strategies/
        // With these settings the application will not be closed between tests

        // Sample App
        // "appium:appPackage": "com.wdiodemoapp",
        // "appium:appActivity": "com.wdiodemoapp.MainActivity",

        // Facily App
        "appium:appPackage": "com.facily",
        "appium:appActivity": "com.facily.MainActivity",
        // "appium:appActivity": "com.facily.*",
        'appium:autoGrantPermissions': true,
         'appium:noReset': true,
        // 'appium:fullReset': true,
        // 'appium:systemPort' : 8210,
         'appium:dontStopAppOnReset': true
    },
    
];

exports.config = config;
