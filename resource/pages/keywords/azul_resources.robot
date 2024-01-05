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

    Wait Until Element Is Visible     ${BTN_ENTRAR_TUDO_AZUL}

    Click Button     ${BTN_ENTRAR_TUDO_AZUL}

Então o sistema devera apresentar a pagina do Site logado
    Wait Until Page Does Not Contain    Estamos carregando suas informações
    Wait Until Element Is Visible     ${VALIDA_LOGIN}    timeout=45


Dado que estou logado no site da Azul
    Wait Until Page Does Not Contain    Estamos carregando suas informações
    Wait Until Element Is Visible     ${VALIDA_LOGIN}    timeout=45













Dado que esteja na tela de pagamento
    # Set Selenium Page Load Timeout    value=20
    Wait Until Element Is Visible     ${VLD_TELA_PGTO}    timeout=30



Quando clicar em "Selecionar forma de pagamento", clicar em "Cartão de Crédito"
    # Set Selenium Page Load Timeout    value=20
    Wait Until Keyword Succeeds      3s    40s    Click Element     ${SLC_FORMA_PGTO}
    # Click Element     ${SLC_FORMA_PGTO}
    Wait Until Element Is Visible     ${SLC_MODAL_PGTO}
    Click Element     ${BTN_CC}


E inserir um "Cartão de Crédito" valido, adicionar Cartão
    Click Element         ${INSERIR_CARTÃO}
    Input Text            ${NMR_CARTÃO}            text=5555 4444 3333 1111
    Click Element         ${INSERIR_VALIDADE}
    Input Text            ${NMR_VALIDADE}          text=03/30
    Click Element         ${INSERIR_CVV}
    Input Text            ${NMR_CVV}               text=737
    Click Element         ${INSERIR_CPF_TITULAR}
    Input Text            ${NMR_CPF_TITULAR}       text=62165839483
    Click Element         ${INSERIR_NM_TITULAR} 
    Input Text            ${NOME_TITULAR}          text=Guilherme Teste
    Click Element         ${BTN_ADD_CARTÃO}





# Então o sistema deverá retornar para a tela de pagamento