*** Settings ***
Resource   ../../../resource/main.robot



*** Keywords ***

clicar em comprar passagens, inserir origem, destino e datas de Ida e Volta 
    Wait Until Page Does Not Contain Element        ${login.BTN_LOGIN}     40s
    Wait Until Page Contains                  Estamos carregando suas informações
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
    Wait Until Page Does Not Contain          Estamos esquentando as turbinas
    Wait Until Element Is Visible             ${booking.VALIDA_VOOS}    40
    #Capture Page Screenshot




selecionar as Tarifas de ida e Volta
    Wait and Click Element                    ${booking.SELECIONA_VIAGEM_IDA}    10

    WHILE  True
        ${status}  Run keyword and return status   Click Element   ${booking.BTN_SLC_TRF_IDA}
        IF   ${status}
            BREAK
        END
        Press Keys  ${None}  ARROW_UP  
    END
    #Capture Page Screenshot
    Wait and Click Element                     ${booking.SELECIONA_VIAGEM_VOLTA}    10
   

    WHILE  True
        ${status}  Run keyword and return status   Click Element   ${booking.BTN_SLC_TRF_VOLTA}
        IF   ${status}
            BREAK
        END
        Press Keys  ${None}  ARROW_UP  
    END
    
    Wait Until Page Does Not Contain           Carregando informações    25
    Wait Until Element Is Visible              ${booking.BTN_PSG_PGTO}
    #Capture Page Screenshot

clicar em Prosseguir para Pagamento
    Wait and Click Element                     ${booking.BTN_PSG_PGTO}
    Wait Until Page Does Not Contain           Carregando informações    40
    Wait Until Element Is Visible              ${booking.MODAL_PGTO}
    Click Element                              ${booking.BTN_MODAL_PGTO}


o sistema deverá prosseguir para a tela de "Pagamento"
    Wait Until Page Does Not Contain           Carregando informações    40
    Wait Until Element Is Visible              ${booking.MODAL_1_CLIQUE}
    Click Element                              ${booking.MODAL_BTN_PGTO_1_CLIQUE}
    Wait Until Page Does Not Contain           Carregando informações    40
    Wait Until Element Is Visible              ${booking.VLD_TELA_PGTO}  30
