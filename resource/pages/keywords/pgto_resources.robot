*** Settings ***
Resource   ../../../resource/main.robot



*** Keywords ***


clicar em "Selecionar forma de pagamento", clicar em "Cartão de Crédito"
    Wait Until Element Is Visible                                   ${booking.VLD_TELA_PGTO}    30
    Set Selenium Page Load Timeout                                                           20
    Wait Until Keyword Succeeds      3    40s    Click Element      ${booking.SLC_FORMA_PGTO}
    Click Element                                                   ${booking.SLC_FORMA_PGTO}
    Wait Until Element Is Visible                                   ${booking.SLC_MODAL_PGTO}
    Click Element                                                   ${booking.BTN_CC}


E inserir um "Cartão de Crédito" valido, adicionar Cartão
    Click Element                                                    ${booking.INSERIR_CC}
    Input Text                                                       ${booking.NMR_CC}                ${Numero_cartão}
    Click Element                                                    ${booking.INSERIR_VLD}
    Input Text                                                       ${booking.NMR_VLD}               ${Validade}
    Click Element                                                    ${booking.INSERIR_CVV}
    Input Text                                                       ${booking.NMR_CVV}               ${CVV}
    Click Element                                                    ${booking.INSERIR_CPF}
    Input Text                                                       ${booking.NMR_CPF}               ${Numero_CPF}
    Click Element                                                    ${booking.INSERIR_NOME} 
    Input Text                                                       ${booking.NOME}                  ${Nome}
    Click Element                                                    ${booking.BTN_ADD_CC}


