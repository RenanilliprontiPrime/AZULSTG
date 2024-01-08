*** Settings ***
Resource   ../../../resource/main.robot



*** Keywords ***


clicar em "Selecionar forma de pagamento", clicar em "Cartão de Crédito"
    ${pgto}    Set Variable    value
    Wait Until Element Is Visible                                   ${pgto.VLD_TELA_PGTO}    30
    Set Selenium Page Load Timeout                                                           20
    Wait Until Keyword Succeeds      3    40s    Click Element      ${pgto.SLC_FORMA_PGTO}
    Click Element                                                   ${pgto.SLC_FORMA_PGTO}
    Wait Until Element Is Visible                                   ${pgto.SLC_MODAL_PGTO}
    Click Element                                                   ${pgto.BTN_CC}


E inserir um "Cartão de Crédito" valido, adicionar Cartão
    ${pgto}    Set Variable    value
    Click Element                                                    ${pgto.INSERIR_CARTÃO}
    Input Text                                                       ${pgto.NMR_CARTÃO}            ${Numero_cartão}
    Click Element                                                    ${pgto.INSERIR_VALIDADE}
    Input Text                                                       ${pgto.NMR_VALIDADE}          ${Validade}
    Click Element                                                    ${pgto.INSERIR_CVV}
    Input Text                                                       ${pgto.NMR_CVV}               ${CVV}
    Click Element                                                    ${pgto.INSERIR_CPF_TITULAR}
    Input Text                                                       ${pgto.NMR_CPF_TITULAR}       ${Numero_CPF}
    Click Element                                                    ${pgto.INSERIR_NM_TITULAR} 
    Input Text                                                       ${pgto.NOME_TITULAR}          ${Nome}
    Click Element                                                    ${pgto.BTN_ADD_CARTÃO}





#Então o sistema deverá retornar para a tela de pagamento