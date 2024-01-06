*** Settings ***
Resource   ../../../../resource/main.robot

*** Keywords ***


clicar em "Selecionar forma de pagamento", clicar em "Cartão de Crédito"
    Wait Until Element Is Visible     ${pgto.VLD_TELA_PGTO}    30
    Set Selenium Page Load Timeout    value=20
    Set Selenium Page Load Timeout    value=20
    Wait Until Keyword Succeeds      3s    40s    Click Element     ${pgto.SLC_FORMA_PGTO}
    Click Element     ${pgto.SLC_FORMA_PGTO}
    Wait Until Element Is Visible     ${pgto.SLC_MODAL_PGTO}
    Click Element     ${pgto.BTN_CC}


E inserir um "Cartão de Crédito" valido, adicionar Cartão
    Click Element         ${pgto.INSERIR_CARTÃO}
    Input Text            ${pgto.NMR_CARTÃO}            text=5555 4444 3333 1111
    Click Element         ${pgto.INSERIR_VALIDADE}
    Input Text            ${pgto.NMR_VALIDADE}          text=03/30
    Click Element         ${pgto.INSERIR_CVV}
    Input Text            ${pgto.NMR_CVV}               text=737
    Click Element         ${pgto.INSERIR_CPF_TITULAR}
    Input Text            ${pgto.NMR_CPF_TITULAR}       text=${TA_1}
    Click Element         ${pgto.INSERIR_NM_TITULAR} 
    Input Text            ${pgto.NOME_TITULAR}          text=${USER}
    Click Element         ${pgto.BTN_ADD_CARTÃO}





#Então o sistema deverá retornar para a tela de pagamento