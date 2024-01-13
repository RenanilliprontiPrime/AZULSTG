*** Settings ***
Resource   ../../../resource/main.robot





*** Keywords ***

    # Dado que seleciono a tarifa de ida e volta
    # Quando clicar em prosseguir para pagamento    

seleciono a tarifa de ida e volta
    # Wait Until Element Is Visible                         ${selecaopassagens.BTN_PSG_PGTO}       40
    Wait and Click Element                                ${selecaopassagens.SLC_VIAGEM_IDA}
    
    WHILE  True
        ${status}  Run keyword and return status   Click Element   ${selecaopassagens.BTN_SLC_TRF_IDA}
        IF   ${status}
            BREAK
        END
        Press Keys  ${None}  ARROW_UP  
    END
    
    Wait and Click Element                     ${selecaopassagens.SLC_VIAGEM_VOLTA}    10
   
    WHILE  True
        ${status}  Run keyword and return status   Wait and Click Element   ${selecaopassagens.BTN_SLC_TRF_VOLTA}
        IF   ${status}
            BREAK
        END
        Press Keys  ${None}  ARROW_UP  
    END
    


clicar em prosseguir para pagamento
    Wait and Click Element                    ${selecaopassagens.BTN_PSG_PGTO}       30
    Wait Until Page Contains                  Carregando informações                 40
    Wait Until Element Is Visible             ${selecaopassagens.VLD_MODAL_PGTO}     40
    Click Element                             ${selecaopassagens.BTN_MODAL_PGTO}
    Wait Until Page Contains                  Carregando informações                 40
    Wait Until Element Is Visible             ${selecaopassagens.VLD_MODAL_1CLIQUE}  20  
    Wait and Click Element                    ${selecaopassagens.BTN_PGTO_1CLIQUE}   10

