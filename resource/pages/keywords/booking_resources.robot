*** Settings ***
Resource   ../../../resource/main.robot



*** Keywords ***

clicar em comprar passagens, inserir origem, destino e datas de Ida e Volta 
    Wait Until Page Does Not Contain Element        ${login.BTN_LOGIN}               50
    Wait Until Page Contains                  Estamos carregando suas informações    50
    ${booking.BOOL_BUSCA_VOOS}        Run Keyword And Return Status    Wait Until Element Is Visible     ${booking.VLD_SELECAODEVOOS}  
    IF        ${booking.BOOL_BUSCA_VOOS} == False
        Click Element        ${booking.BTN_COMPRAR}    
    END
    
    Wait Until Element Is Visible             ${booking.VALIDA_BTN_COMPRAR}    10
    
    Wait and Input Text                       ${booking.ORIGEM}       VCP
    Wait and Click Element                    ${booking.VCP}
    
    Wait and Input Text                       ${booking.DESTINO}      BSB
    Wait and Click Element                    ${booking.BSB} 
    
    Wait and click Element                    ${booking.DATA}
    
    Input Text                                ${booking.DATA_DE_IDA}         05/02/2024
    Input Text                                ${booking.DATA_DE_VOLTA}       20/02/2024
                     
    Wait and Click Element                    ${booking.BTN_SELECIONA_DATA}        10

clicar em "Buscar passagens"
    Wait and Click Element                    ${booking.BTN_BUSCAR_PASSAGENS}


o site deverá exibir a lista de voos
    Wait Until Page Does Not Contain          Estamos esquentando as turbinas    40
    Wait Until Element Is Visible             ${booking.SLC_VIAGEM_IDA}          20



que inicio na tela de consulta de voo
    clicar em comprar passagens, inserir origem, destino e datas de Ida e Volta
    clicar em "Buscar passagens"
    o site deverá exibir a lista de voos


que seleciono as Tarifas de ida e Volta
    Wait and Click Element                    ${booking.SLC_VIAGEM_IDA}          10

    
    WHILE  True
        ${status}  Run keyword and return status   Click Element   ${booking.BTN_SLC_TRF_IDA}
        IF   ${status}
            BREAK
        END
        Press Keys  ${None}  ARROW_UP  
    END
    
    Wait and Click Element                     ${booking.SLC_VIAGEM_VOLTA}    10
   
    WHILE  True
        ${status}  Run keyword and return status   Click Element   ${booking.BTN_SLC_TRF_VOLTA}
        IF   ${status}
            BREAK
        END
        Press Keys  ${None}  ARROW_UP  
    END
    
    Wait Until Page Contains                   Carregando informações    40
    Wait Until Element Is Visible              ${booking.BTN_PSG_PGTO}   10
 

clicar em Prosseguir para Pagamento
    Wait and Click Element                     ${booking.BTN_PSG_PGTO}
    Wait Until Page Contains                   Carregando informações     30
    Wait Until Element Is Visible              ${booking.VLD_MODAL_PGTO}      40
    Click Element                              ${booking.BTN_MODAL_PGTO}
    #Wait Until Page Contains                  Carregando informações    40
    Wait Until Element Is Visible              ${booking.VLD_MODAL_1CLIQUE}  20  
    Wait and Click Element                     ${booking.BTN_PGTO_1CLIQUE}   10


o sistema deverá prosseguir para a tela de Viajantes
    # Set Selenium Page Load Timeout                                        20
    Wait Until Element Is Visible              ${booking.TELA_VIAJANTES}   


que inicio na tela de Viajantes
    clicar em comprar passagens, inserir origem, destino e datas de Ida e Volta
    clicar em "Buscar passagens"
    o site deverá exibir a lista de voos
    que seleciono as Tarifas de ida e Volta
    clicar em Prosseguir para Pagamento
    o sistema deverá prosseguir para a tela de Viajantes


selecionar forma de pagamento, clicar em "Cartão de Crédito"
    Wait and Click Element                      ${booking.BTN_PSG_PGTO}      30
    Wait Until Element Is Visible               ${booking.VLD_TELA_PGTO}     30
    Set Selenium Page Load Timeout                                           20
    Wait Until Keyword Succeeds      3    20s    Click Element      ${booking.SLC_PGTO}
    # Click Element                                                 ${booking.SLC_FORMA_PGTO}
    #Wait Until Element Is Visible                                  ${booking.SLC_PGTO}
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
    Wait Until Element Is Visible               ${booking.VLD_TELA_PGTO}    30
    Wait and Click Element                      ${booking.SLC_MASCARA_CC}   30


que inicio na tela de pagamento
    clicar em comprar passagens, inserir origem, destino e datas de Ida e Volta
    clicar em "Buscar passagens"
    o site deverá exibir a lista de voos
    que seleciono as Tarifas de ida e Volta
    clicar em Prosseguir para Pagamento
    o sistema deverá prosseguir para a tela de Viajantes
    que inicio na tela de viajantes
    selecionar forma de pagamento, clicar em "Cartão de Crédito"
    inserir um "Cartão de Crédito" valido, adicionar Cartão
    o sistema deverá retornar para a tela de pagamento


selecionar a forma de parcelamento
    Wait Until Element Is Visible                ${booking.VLD_TELA_PGTO}    30
    Wait and Click Element                       ${booking.SLC_PARC}
    Wait and Click Element                       ${booking.SLC_PARC_1X}
    Capture Page Screenshot


# selecionar o checkbox dos termos de contrato





# clicar em "Efetuar Pagamento"




# o sistema deverá finalizar o pagamento e apresentar a tela de sucesso



