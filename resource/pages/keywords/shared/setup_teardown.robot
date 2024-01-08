*** Settings ***
Resource   ../../../../resource/main.robot

*** Keywords ***

inicia o teste com login 
    [Arguments]                       ${USER}=Default
    Open Browser                      ${URL_STG}      ${Browser} 
    Maximize Browser Window
    Wait Until Element Is Visible     ${BTN_COOKIES}
    Click Element                     ${BTN_COOKIES}
    Wait and click Element            ${login.BTN_LOGIN}
    realiza o login                   USER=${USER}
    Wait and click element            ${login.BTN_ENTRAR_TUDO_AZUL}
   
inicia teste sem login
    Open Browser                      ${Browser} 
    Maximize Browser Window
    #Go To   ${URL_STG}
    Wait Until Element Is Visible     ${BTN_COOKIES}
    Click Element                     ${BTN_COOKIES}