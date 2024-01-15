*** Settings ***
Resource   ../../../../resource/main.robot

*** Keywords ***

inicia o teste com login 
    [Arguments]                       ${USER}=Tudo Azul
    Open Browser                      ${URL_STG}      ${Browser}     options=add_experimental_option('excludeSwitches', ['enable-logging']);add_argument("--safebrowsing-disable-download-protection");add_argument("--disable-web-security")
    Maximize Browser Window
    # Wait Until Element Is Visible     ${BTN_COOKIES}
    # Click Element                     ${BTN_COOKIES}
    Wait and Click Element            ${login.BTN_LOGIN}        50
    Wait Until Element Is Visible     ${login.VLD_TELA_LOGIN}   20
    realiza o login                   USER=${USER}
    Wait and click element            ${login.BTN_ENTRAR_TA}
    







# inicia teste sem login
#     Open Browser                      ${Browser} 
#     Maximize Browser Window
#     #Go To   ${URL_STG}
#     # Wait Until Element Is Visible     ${BTN_COOKIES}
#     # Click Element                     ${BTN_COOKIES}