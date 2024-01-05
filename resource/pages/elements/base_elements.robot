*** Settings ***
Resource    ../../../resource/main.robot


*** Variables ***
${Browser}                       Chrome
${URL_STG}                       https://azul-stage65.adobecqms.net/br/pt/home
${URL_TST}                       https://voe-aem-tst.voeazul.com.br/br/pt/home
${BTN_COOKIES}                   //button[contains(.,'Aceitar todos os cookies')]