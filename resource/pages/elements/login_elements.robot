*** Settings ***
Resource    ../../../resource/main.robot


*** Variables ***
&{login}

...           BTN_LOGIN=(//span[text()='Fazer Login'])[2]
...           CAMPO_LOGIN=//input[contains(@aria-label,'Informe CPF ou Nº TudoAzul')]
...           CAMPO_SENHA=//input[contains(@type,'password')]
...           BTN_ENTRAR_TA=//*[text()='Entrar no TudoAzul']
...           VLD_TELA_LOGIN=//span[text()='Login Tudo']
...           TELA_LOGIN_CARREGANDO=//h2[contains(@aria-label,'Estamos carregando suas informações')]
...           VLD_LOGIN=//img[@aria-label='Azul Linhas Aéreas']
...           LABEL_NOME=(//p[@class='name__text'])[3]