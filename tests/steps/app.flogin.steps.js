import { Given, When, Then } from '@cucumber/cucumber';
// import { setTimeout } from "timers/promises";
  import scrHome from '../screenobjects/home.screen'
  import scrLogin from '../screenobjects/flogin.screen'
  import scrMinhaConta from '../screenobjects/minhaconta.screen'

 
 Given(/^eu clico em Minha Conta$/, async () => {
    // eslint-disable-next-line no-console
    console.log('step: eu Volto a tela' , "color: orange")

  await scrHome.clickMinhaConta()
  });

Given(/^eu preencho o email$/, async () => {
 await scrLogin.inputLogin()
});
 
When(/^eu preencho a senha$/, async () => {
  await scrLogin.inputSenha()
 });

 Then(/^clico em Entrar$/, async () => {
  await scrLogin.btnEntrar()
 });


 Then(/^eu faço o logoff$/, async () => {
  await scrMinhaConta.btnSair()
 });


 

