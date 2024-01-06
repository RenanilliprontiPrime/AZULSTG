*** Settings ***
Resource   ../../../resource/main.robot

*** Variables ***











*** Keywords ***

Abrir o navegador
    Open Browser    ${Browser} 
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser 


Acessar o site da Azul
    Go To   ${URL_STG}
   
    
    # Wait Until Element Is Visible     ${BTN_LOGIN}
   
que estou no site da Azul
    Go To    ${URL_STG}
    # Sleep    5s
    #exemplo de como ficara o elemento  Wait Until Element Is Visible   ${login.btn_cookies}    30s
    Wait Until Element Is Visible     ${BTN_COOKIES}
    Click Element                     ${BTN_COOKIES}
    Wait Until Element Is Visible     ${login.BTN_LOGIN}

clicar em Fazer Login
    Click Element     ${login.BTN_LOGIN}

inserir os dados de Login, clicar em "Entrar no TudoAzul"
    
    Click Element     ${login.CAMPO_LOGIN}

    Input Text       ${login.CAMPO_LOGIN}    36107148167

    Click Element     ${login.CAMPO_SENHA}

    Input Text       ${login.CAMPO_SENHA}    Azul2023**

    Wait Until Element Is Visible     ${login.BTN_ENTRAR_TUDO_AZUL}

    Click Button     ${login.BTN_ENTRAR_TUDO_AZUL}

Então o sistema devera apresentar a pagina do Site logado
    Wait Until Page Does Not Contain    Estamos carregando suas informações
    Wait Until Element Is Visible     ${login.VALIDA_LOGIN}    45


Dado que estou logado no site da Azul
    Wait Until Page Does Not Contain    Estamos carregando suas informações
    Wait Until Element Is Visible     ${login.VALIDA_LOGIN}    45