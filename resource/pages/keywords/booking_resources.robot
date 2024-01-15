*** Settings ***
Resource   ../../../resource/main.robot



*** Keywords ***


# Dado que o cliente esteja com o destino de voo selecionado, data, forma de pagamento em Reais, passageiros
#     Wait Until Page Contains                  Estamos carregando suas informações    60
#     ${BOOL_BUSCA_VOOS}        Run Keyword And Return Status    Wait Until Element Is Visible     ${selecaovoos.VLD_SELECAODEVOOS}  
#     IF        ${BOOL_BUSCA_VOOS} == False
#         Click Element        ${selecaovoos.BTN_COMPRAR}    
#     END

#     Wait Until Element Is Visible             ${selecaovoos.VLD_BTN_COMPRAR}    10
   
# inserir origem 
#     Wait and Input Text                       ${selecaovoos.ORIGEM}       VCP
#     Wait and Click Element                    ${selecaovoos.VCP}  

#     Wait and Input Text                       ${selecaovoos.DESTINO}      BSB
#     Wait and Click Element                    ${selecaovoos.BSB} 

# inserir data ida
#     Wait and click Element                    ${selecaovoos.DATA}
#     Input Text                                ${selecaovoos.DATA_DE_IDA}         05/02/2024
#     Wait and Click Element                    ${selecaovoos.BTN_SELECIONA_DATA}        10


# inserir forma de pagamento em Reais
#     Wait Until Element Is Visible            ${booking.VLD_TELA_SLC}
#     Wait and Click Element                   ${booking.BTN_PGTO_REAIS}


# # inserir passageiros
#     Wait and Click Element                    ${booking.NUM_VIAJANTES}
#     Wait Until Element Is Visible             ${booking.NUM_ADTS}
#     Wait and Click Element                    ${booking.BTN_CHD_MAIS}
#     Wait Until Element Is Visible             ${booking.NUM_CHD}
#     Wait and Click Element                    ${booking.BTN_CHD_MAIS}
#     Wait and Click Element                    ${selecaovoos.BTN_BUSCAR_PASSAGENS}        40


# #   Quando selecionar a passagem desejada escolhendo a tarifa "Azul", clicar em "Informar viajantes", inserir os dados do passageiro, inserir a forma de pagamento no cartão de crédito à vista 
#      Wait and Click Element                                ${selecaopassagens.SLC_VIAGEM_IDA}
    
#     WHILE  True
#         ${status}  Run keyword and return status   Click Element   ${selecaopassagens.BTN_SLC_TRF_IDA}
#         IF   ${status}
#             BREAK
#         END
#         Press Keys  ${None}  ARROW_UP  
#     END

# # clicar em informar viajantes
#     Wait and Click Element                    ${selecaopassagens.BTN_PSG_PGTO}       30
#     Wait Until Page Contains                  Carregando informações                 40
#     Wait Until Element Is Visible             ${selecaopassagens.VLD_MODAL_PGTO}     40
#     Click Element                             ${selecaopassagens.BTN_MODAL_PGTO}
#     Wait Until Page Contains                  Carregando informações                 40
#     Wait Until Element Is Visible             ${selecaopassagens.VLD_MODAL_1CLIQUE}  20  
#     Wait and Click Element                    ${selecaopassagens.BTN_PGTO_1CLIQUE}   10



# # inserir a forma de pagamento no cartão de crédito à vista
#     Wait Until Element Is Visible                                   ${pagamentos.VLD_TELA_PGTO}        30
#     Wait Until Keyword Succeeds      3    20s    Click Element      ${pagamentos.SLC_PGTO}
#     Click Element                                                   ${pagamentos.SLC_CC}



# # inserir um cartão de crédito valido
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
    
# # clicar em adicionar cartão    
#     Wait and Click Element                                          ${pagamentos.BTN_ADD_CC}


# # o sistema devera retornar para a tela de pagamento
#     Wait Until Element Is Visible                   ${pagamentos.VLD_CC}       30







#   Então o sistema deverá apresentar a tela da reserva confirmada com os dados do voo e os serviços adicionais habilitados.



