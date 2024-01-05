*** Settings ***
Resource    ../../../resource/main.robot


*** Variables ***
&{login}

...           BTN_LOGIN=//button[contains(@class,'css-17qmcw2')]
...           CAMPO_LOGIN=//input[contains(@aria-label,'Informe CPF ou Nº TudoAzul')]
...           CAMPO_SENHA=//input[contains(@type,'password')]
...           BTN_ENTRAR_TUDO_AZUL=//button[@data-testid='search-box-hotel-date-picker-primary-button'][contains(.,'Entrar no TudoAzulEntrar no TudoAzul')]
...           TELA_LOGIN_TA=//span[@class='deepcerulean'][contains(.,'Login TudoAzul')]
...           TELA_LOGIN_CARREGANDO=//h2[contains(@aria-label,'Estamos carregando suas informações')]
...           VALIDA_LOGIN=//img[@aria-label='Azul Linhas Aéreas']