*** Settings ***
Resource   ../../../resource/main.robot





*** Keywords ***


selecionar forma de pagamento, clicar em cartão de crédito
    Wait Until Element Is Visible                                   ${pagamentos.VLD_TELA_PGTO}        30
    Wait Until Keyword Succeeds      3    20s    Click Element      ${pagamentos.SLC_PGTO}
    Click Element                                                   ${pagamentos.SLC_CC}



inserir um cartão de crédito valido
    Wait and Click Element                                          ${pagamentos.INSERIR_CC}
    Wait and Input Text                                             ${pagamentos.NMR_CC}                ${Numero_cartão}
    Wait and Click Element                                          ${pagamentos.INSERIR_VLD}
    Wait and Input Text                                             ${pagamentos.NMR_VLD}               ${Validade}
    Wait and Click Element                                          ${pagamentos.INSERIR_CVV}
    Wait and Input Text                                             ${pagamentos.NMR_CVV}               ${CVV}
    Wait and Click Element                                          ${pagamentos.INSERIR_CPF}
    Wait and Input Text                                             ${pagamentos.NMR_CPF}               ${Numero_CPF}
    Wait and Click Element                                          ${pagamentos.INSERIR_NOME} 
    Wait and Input Text                                             ${pagamentos.NOME}                  ${Nome}


clicar em adicionar cartão    
    Wait and Click Element                                          ${pagamentos.BTN_ADD_CC}


o sistema devera retornar para a tela de pagamento
    Wait Until Element Is Visible                   ${pagamentos.VLD_CC}       30


que eu esteja na tela de pagamento
    que eu esteja na tela de seleção de passagens
    eu selecionar as tarifas de ida e volta
    clicar em prosseguir para pagamento
    o sistema devera prosseguir para a tela de viajantes
    selecionar forma de pagamento, clicar em cartão de crédito
    inserir um cartão de crédito valido
    clicar em adicionar cartão
    o sistema devera retornar para a tela de pagamento


seleciono a forma de parcelamento
   
    WHILE  True
        ${status}  Run keyword and return status   Click Element   ${pagamentos.SLC_PARC}
        IF   ${status}
            BREAK
        END
        Press Keys  ${None}  ARROW_DOWN 
    END

    Wait and Click Element                       ${pagamentos.SLC_PARC_1X}
    Input Text                                   ${pagamentos.INSERIR_CLR}        11987654321


selecionar o checkbox dos termos de contrato
    WHILE  True
        ${status}  Run keyword and return status   Click Element   ${pagamentos.SLC_CHECKBOX}
        IF   ${status}
            BREAK
        END
        Press Keys  ${None}  ARROW_DOWN  
    END
   
    Wait and Click Element                         ${pagamentos.SLC_CHECKBOX}


clicar em efetuar pagamento
    WHILE  True
        ${status}  Run keyword and return status   Wait and Click Element   ${pagamentos.FNZ_PGTO}
        IF   ${status}
            BREAK
        END
        Press Keys  ${None}  ARROW_DOWN  
    END




