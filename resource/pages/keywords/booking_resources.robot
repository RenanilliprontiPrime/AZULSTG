*** Settings ***
Resource   ../../../resource/main.robot



*** Keywords ***

clicar em comprar passagens, inserir origem, destino e datas de Ida e Volta
    Wait Until Page Does Not Contain Element        ${login.BTN_LOGIN}               50
    Wait Until Page Contains                  Estamos carregando suas informações    60

    clicar em comprar passagens

    inserir origem

    inserir destino

    inserir data ida

    inserir data volta

    confirma seleção de data

    clicar em buscar passagens

    o site deverá exibir a lista de voos

    que seleciono as Tarifas de ida e Volta

    clicar em Prosseguir para Pagamento

    o sistema deverá prosseguir para a tela de Viajantes



selecionar forma de pagamento, clicar em "Cartão de Crédito"
    Wait and Click Element                      ${booking.BTN_PSG_PGTO_VIAJANTES}    20
    Wait Until Page Contains                    Salvando informações       40
    Wait Until Element Is Visible               ${booking.VLD_TELA_PGTO}     20
    Wait Until Keyword Succeeds      3    20s    Click Element      ${booking.SLC_PGTO}
    Click Element                               ${booking.SLC_CC}


inserir um "Cartão de Crédito" valido, adicionar Cartão
    Wait and Click Element                      ${booking.INSERIR_CC}
    Wait and Input Text                         ${booking.NMR_CC}                ${Numero_cartão}
    Wait and Click Element                      ${booking.INSERIR_VLD}
    Wait and Input Text                         ${booking.NMR_VLD}               ${Validade}
    Wait and Click Element                      ${booking.INSERIR_CVV}
    Wait and Input Text                         ${booking.NMR_CVV}               ${CVV}
    Wait and Click Element                      ${booking.INSERIR_CPF}
    Wait and Input Text                         ${booking.NMR_CPF}               ${Numero_CPF}
    Wait and Click Element                      ${booking.INSERIR_NOME} 
    Wait and Input Text                         ${booking.NOME}                  ${Nome}
    Wait and Click Element                      ${booking.BTN_ADD_CC}


o sistema deverá retornar para a tela de pagamento
    Wait Until Element Is Visible                   ${booking.VLD_CC}   30


# que inicio na tela de pagamento
#     clicar em comprar passagens, inserir origem, destino e datas de Ida e Volta
#     clicar em "Buscar passagens"
#     o site deverá exibir a lista de voos
#     que seleciono as Tarifas de ida e Volta
#     clicar em Prosseguir para Pagamento
#     o sistema deverá prosseguir para a tela de Viajantes
#     selecionar forma de pagamento, clicar em "Cartão de Crédito"
#     inserir um "Cartão de Crédito" valido, adicionar Cartão
#     o sistema deverá retornar para a tela de pagamento


selecionar a forma de parcelamento
    Wait Until Element Is Visible                ${booking.VLD_TELA_PGTO}      5

    WHILE  True
        ${status}  Run keyword and return status   Click Element   ${booking.SLC_PARC}
        IF   ${status}
            BREAK
        END
        Press Keys  ${None}  ARROW_DOWN 
    END

    Wait and Click Element                       ${booking.SLC_PARC_1X}
    Input Text                                   ${booking.INSERIR_CLR}        11987654321
    


selecionar o checkbox dos termos de contrato
    WHILE  True
        ${status}  Run keyword and return status   Click Element   ${booking.SLC_CHECKBOX}
        IF   ${status}
            BREAK
        END
        Press Keys  ${None}  ARROW_DOWN  
    END
   
    Wait and Click Element                         ${booking.SLC_CHECKBOX}
    


clicar em "Efetuar Pagamento"
    WHILE  True
        ${status}  Run keyword and return status   Wait and Click Element   ${booking.FNZ_PGTO}
        IF   ${status}
            BREAK
        END
        Press Keys  ${None}  ARROW_DOWN  
    END
   


o sistema deverá finalizar o pagamento e apresentar a tela de sucesso

    Wait Until Element Is Visible               ${booking.TELA_PROX_VIAGEM}         40
    Wait Until Element Is Visible               ${booking.VLD_TELA_PROX_VIAGEM}     40




