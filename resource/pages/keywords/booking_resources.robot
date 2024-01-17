*** Settings ***
Resource   ../../../resource/main.robot



*** Keywords ***


que o cliente esteja com o destino de voo selecionado, data, forma de pagamento em Reais e passageiros 
    Wait Until Page Contains                          Estamos carregando suas informações        30
    Wait Until Page Does Not Contain                  Estamos carregando suas informações        30
    ${PRIMEIRO_NOME}        Get Text        ${login.LABEL_NOME}
    ${PRIMEIRO_NOME}        Convert To Title Case           ${PRIMEIRO_NOME}
    Set Test Variable        ${PRIMEIRO_NOME}
    ${BOOL_BUSCA_VOOS}        Run Keyword And Return Status    Wait Until Element Is Visible     ${selecaovoos.VLD_SELECAODEVOOS}  
    IF        ${BOOL_BUSCA_VOOS} == False
        Click Element        ${selecaovoos.BTN_COMPRAR}    
    END

    Wait Until Element Is Visible             ${selecaovoos.VLD_BTN_COMPRAR}    10
    # Capture Page Screenshot

# inserir origem
    Wait and Input Text                       ${selecaovoos.ORIGEM}            Salgado Filho        10
    # Capture Page Screenshot
    Wait and Click Element                    ${selecaovoos.SALGADO_FILHO}  
    
    # Capture Page Screenshot
    Wait and Input Text                       ${selecaovoos.DESTINO}            Santos Dumont        10
    Wait and Click Element                    ${selecaovoos.SANTOS_DUMONT} 
    

# inserir data ida
    # Capture Page Screenshot
    Wait and click Element                    ${selecaovoos.DATA}
    Input Text                                ${selecaovoos.DATA_DE_IDA}         05/02/2024
    Wait and Click Element                    ${selecaovoos.BTN_DATA_IDA}        10
    

# inserir forma de pagamento em Reais
    # Capture Page Screenshot
    Wait Until Element Is Visible            ${booking.VLD_TELA_SLC}
    Wait and Click Element                   ${booking.BTN_PGTO_REAIS}


# inserir passageiros
    # Capture Page Screenshot
    Wait and Click Element                    ${booking.NUM_VIAJANTES}
    Wait Until Element Is Visible             ${booking.NUM_ADTS}
    Wait and Click Element                    ${booking.BTN_ADT_MAIS}
    Wait Until Element Is Visible             ${booking.NUM_CHD}
    Wait and Click Element                    ${booking.BTN_CHD_MAIS}
    Wait and Click Element                    ${booking.BTN_CONFIRMAR}
    Wait and Click Element                    ${selecaovoos.BTN_BUSCAR_PASSAGENS}        40
    # Capture Page Screenshot

selecionar a passagem desejada escolhendo a tarifa "Azul", clicar em "Informar viajantes", inserir os dados do passageiro, inserir a forma de pagamento no cartão de crédito à vista 
    
    Wait Until Page Does Not Contain          Estamos esquentando as turbinas        40
    # Wait Until Element Is Visible             ${selecaovoos.VALIDA_VOOS}        40
    Wait Until Page Contains                  Olá ${PRIMEIRO_NOME}, esse é o resultado de sua busca.        30
    Wait and Click Element                                ${selecaopassagens.SLC_VIAGEM_IDA_2}
    
    WHILE  True
        ${status}  Run keyword and return status   Click Element   ${selecaopassagens.BTN_SLC_TRF_2}
        IF   ${status}
            BREAK
        END
        Press Keys  ${None}  ARROW_UP  
    END

# clicar em informar viajantes
    Wait Until Page Does Not Contain           Carregando informações                      40
    Wait and Click Element                     ${selecaopassagens.BTN_INF_VIAJANTES}       30
    Wait Until Page Does Not Contain           Carregando informações                      40

    # Wait Until Element Is Visible             ${booking.BTN_PSG_SRVC}
    Press Keys   ${NONE}                       TAB
    Wait and Click Element                     ${booking.VIAJANTE_2}
    Wait and Input Text                        ${booking.FIRST_NAME_2}            Bia
    Wait and Input Text                        ${booking.LAST_NAME_2}             Teste
    Press Keys   ${NONE}                       TAB
    Wait and Click Element                     ${booking.SLC_NACIONALIDADE_2}
    Wait and Input Text                        ${booking.CAMPO_CPF_2}        72602404667
    # Wait and Input Text                        ${booking.CAMPO_DATA_NASC_2}    05/02/2000
    Wait Until Page Does Not Contain           Buscando TudoAzul            20
    Press Keys   ${NONE}                       TAB
    Wait and Click Element                     ${booking.SLC_SEXO_2}
    # Capture Page Screenshot
    
    WHILE  True
        ${status}  Run keyword and return status   Wait Until Element is Visible  ${booking.BTN_PSG_SRVC} 
        IF   ${status}
            BREAK
        END
        Press Keys  ${None}  ARROW_UP  
    END

    # Scroll Element Into View                   ${booking.BTN_PSG_SRVC}
    Wait and Input Text                        ${booking.FIRST_NAME_3}            Paulo
    Wait and Input Text                        ${booking.LAST_NAME_3}             Teste
    Press Keys   ${NONE}                       TAB
    Click Element                              ${booking.SLC_NACIONALIDADE_3}
    Wait and Input Text                        ${booking.CAMPO_CPF_3}        42177470803
    Wait Until Page Does Not Contain           Buscando TudoAzul            20
    Wait and Input Text                        ${booking.CAMPO_DATA_NASC_3}    05/05/2018
    Capture Page Screenshot
    Scroll Element Into View                   ${booking.BTN_PSG_SRVC}
    Press Keys   ${NONE}                       TAB
    # Click Element                              ${booking.CAMPO_SEXO_3}
    Wait and Click Element                     ${booking.SLC_SEXO_3}

   #WHILE  True
   #    ${status}  Run keyword and return status   Click Element   ${booking.CAMPO_SEXO_3}   
   #    IF   ${status}
   #        BREAK
   #    END
   #    Press Keys  ${None}  ARROW_DOWN 
   #END
   #Wait and Click Element                     ${booking.SLC_SEXO_3}


    # Wait Until Element Is Visible             ${selecaopassagens.VLD_MODAL_PGTO}     40
    # Click Element                             ${selecaopassagens.BTN_MODAL_PGTO}
    # Wait Until Page Contains                  Carregando informações                 40
    # Wait Until Element Is Visible             ${selecaopassagens.VLD_MODAL_1CLIQUE}  20  
    # Wait and Click Element                    ${selecaopassagens.BTN_PGTO_1CLIQUE}   10



# inserir a forma de pagamento no cartão de crédito à vista
#     Wait Until Element Is Visible                                   ${pagamentos.VLD_TELA_PGTO}        30
#     Wait Until Keyword Succeeds      3    20s    Click Element      ${pagamentos.SLC_PGTO}
#     Click Element                                                   ${pagamentos.SLC_CC}



# inserir um cartão de crédito valido
#     Wait and Click Element                                          ${pagamentos.INSERIR_CC}
#     Wait and Input Text                                             ${pagamentos.NMR_CC}                ${Numero_cartão}
#     Wait and Click Element                                          ${pagamentos.INSERIR_VLD}
#     Wait and Input Text                                             ${pagamentos.NMR_VLD}               ${Validade}
#     Wait and Click Element                                          ${pagamentos.INSERIR_CVV}
#     Wait and Input Text                                             ${pagamentos.NMR_CVV}               ${CVV}
#     Wait and Click Element                                          ${pagamentos.INSERIR_CPF}
#     Wait and Input Text                                             ${pagamentos.NMR_CPF}               ${Numero_CPF}
#     Wait and Click Element                                          ${pagamentos.INSERIR_NOME} 
#     Wait and Input Text                                             ${pagamentos.NOME}                  ${Nome}
    
# clicar em adicionar cartão    
#     Wait and Click Element                                          ${pagamentos.BTN_ADD_CC}


# # o sistema devera retornar para a tela de pagamento
#     Wait Until Element Is Visible                   ${pagamentos.VLD_CC}       30







#   Então o sistema deverá apresentar a tela da reserva confirmada com os dados do voo e os serviços adicionais habilitados.



