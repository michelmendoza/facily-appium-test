import { Given} from '@cucumber/cucumber'; 
 
Given(/^Eu dou um swipe na tela$/, 
async() => {

    driver.touchAction([
        {  action: 'press', x: 540, y: 1840},
        {  action: 'moveTo', x: 540, y: 804},
        'release'
      ]);
   }
)