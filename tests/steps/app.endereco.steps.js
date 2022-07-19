import { Given, When, Then } from '@cucumber/cucumber';
import scrHome from '../screenobjects/home.screen'
import scrEndereco from '../screenobjects/endereco.screen'
import gesture from '../helpers/Gestures'

Given(/^Eu estou na tela de Menu$/, { wrapperOptions: { retry: 4 } }, async () => {
  // eslint-disable-next-line no-console
  console.log( "\x1b[34m", 'step: Eu estou na tela de Menu',"\x1b[33m" )


  const DEF_DELAY = 7000;

function sleep(ms) {
  // eslint-disable-next-line no-promise-executor-return
  return new Promise(resolve => setTimeout(resolve, ms || DEF_DELAY));
}
  // eslint-disable-next-line no-console
console.log('DELAY...start')
await sleep(DEF_DELAY);
  // eslint-disable-next-line no-console
console.log('DELAY...end')

  driver.setImplicitTimeout(20000);
  await scrHome.clickHome();

});

Then(/^eu clico em Enderecos$/, { wrapperOptions: { retry: 2 } }, async () => {
  // eslint-disable-next-line no-console
  console.log( "\x1b[34m", 'step: eu clico em Enderecos',"\x1b[33m" )
  await scrHome.clickEndereco();

});


Then(/^eu clico em adicionar novo endereco$/, { wrapperOptions: { retry: 2 } }, async () => {
  // eslint-disable-next-line no-console
  console.log( "\x1b[34m", 'step: eu clico em adicionar novo endereco',"\x1b[33m" )

  await scrEndereco.btnNovoEndereco();

});


Then(/^eu clico em editar endereco$/, { wrapperOptions: { retry: 2 } }, async () => {
  // eslint-disable-next-line no-console
  console.log( "\x1b[34m", 'step: eu clico em editar endereco',"\x1b[33m" )

  await scrEndereco.btnEditarEnderecoCasaMASP();

});

Then(/^eu clico em excluir endereco$/, { wrapperOptions: { retry: 2 } }, async () => {
  // eslint-disable-next-line no-console
  console.log( "\x1b[34m", 'step: eu clico em excluir endereco',"\x1b[33m" )

  await scrEndereco.btnExcluirEndereco();

});


Then(/^confirmo a exclusão de endereco$/, { wrapperOptions: { retry: 2 } }, async () => {
  // eslint-disable-next-line no-console
  console.log( "\x1b[34m", 'step: confirmo a exclusão de endereco',"\x1b[33m" )

  await scrEndereco.btnConfirmaExcluirEndereco();

});



Then(/^eu clico no campo endereco ou CEP$/, async () => {
  // eslint-disable-next-line no-console
  console.log( "\x1b[34m", 'step: eu clico no campo endereco ou CEP',"\x1b[33m" )
  await scrEndereco.inputEndereco();

});


Then(/^eu preencho MASP$/, async () => {
  // eslint-disable-next-line no-console
  console.log( "\x1b[34m", 'step: eu preencho MASP',"\x1b[33m" )
  await scrEndereco.inputEndereco();
});

Then(/^eu seleciono MASP$/, async () => {
  // eslint-disable-next-line no-console
  console.log( "\x1b[34m", 'step: eu seleciono MASP',"\x1b[33m" )
  await scrEndereco.selectMASP();
});

Then(/^eu clico no campo numero$/, async () => {
  // eslint-disable-next-line no-console
  console.log( "\x1b[34m", 'step: eu clico no campo numero',"\x1b[33m" )
  const inputNumero = await $('/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ScrollView/android.widget.EditText[6]')
  await inputNumero.click();

});

Then(/^eu preencho numero$/, async () => {

  // eslint-disable-next-line no-console
  console.log( "\x1b[34m", 'step: eu preencho numero',"\x1b[33m" )
  await scrEndereco.inputNumero();

});

Then(/^preencho nome do endereco$/, async () => {

  // eslint-disable-next-line no-console
  console.log( "\x1b[34m", 'step: preencho nome do endereco',"\x1b[33m" )
  await scrEndereco.inputNomeDoEndereco();

});



When(/^eu clico em salvar$/, async () => {
  // eslint-disable-next-line no-console
  console.log( "\x1b[34m", 'step: eu clico em salvar',"\x1b[33m" )

  await scrEndereco.bntSalvarEndereco();
});


When(/^clico em salvar nome do endereco$/, async () => {
  // eslint-disable-next-line no-console
  console.log( "\x1b[34m", 'step: clico em salvar nome do endereco',"\x1b[33m" )

  await scrEndereco.bntSalvarNomeDoEndereco();
});



Then(/^eu Volto a tela$/, async () => {
    // eslint-disable-next-line no-console
    console.log( "\x1b[34m", 'step: eu Volto a tela',"\x1b[33m" )

  // eslint-disable-next-line no-console
  console.log('  > Action: await driver.back()')
  await driver.back();
});

Then(/^eu seleciono tipo de endereco trabalho$/, async () => {
    // eslint-disable-next-line no-console
    console.log( "\x1b[34m", 'step: eu seleciono tipo de endereco trabalho',"\x1b[33m" )

  await scrEndereco.selectTipoTrabalho();

});

Then(/^eu seleciono tipo de endereco outros$/, async () => {
  // eslint-disable-next-line no-console
  console.log( "\x1b[34m", 'step: eu seleciono tipo de endereco outros',"\x1b[33m" )

await scrEndereco.selectTipoOutros();

});

Then(/^dou um swipeUP$/, async () => {

  // eslint-disable-next-line no-console
  console.log('step:dou um swipeUP')
  await gesture._mySwipeUp();

});