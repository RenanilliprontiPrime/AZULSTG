*** Settings ***
Resource   ../../../resource/main.robot


*** Variables ***
${PRIMEIRO_NOME}    value







*** Keywords ***


clico em comprar passagem
    Wait Until Page Contains                          Estamos carregando suas informações        60
    Wait Until Page Does Not Contain                  Estamos carregando suas informações        60
    ${PRIMEIRO_NOME}        Get Text        ${login.LABEL_NOME}
    Set Test Variable        ${PRIMEIRO_NOME}
    ${BOOL_BUSCA_VOOS}        Run Keyword And Return Status    Wait Until Element Is Visible     ${selecaovoos.VLD_SELECAODEVOOS}  
    IF        ${BOOL_BUSCA_VOOS} == False
        Click Element        ${selecaovoos.BTN_COMPRAR}    
    END

    Wait Until Element Is Visible             ${selecaovoos.VLD_BTN_COMPRAR}    10


inserir origem 
    Wait and Input Text                       ${selecaovoos.ORIGEM}       VCP
    Wait and Click Element                    ${selecaovoos.VCP}  


inserir destino 
    Wait and Input Text                       ${selecaovoos.DESTINO}      BSB
    Wait and Click Element                    ${selecaovoos.BSB}   


inserir data ida
    Wait and click Element                    ${selecaovoos.DATA}
    Input Text                                ${selecaovoos.DATA_DE_IDA}         05/02/2024


inserir data volta
    Input Text                                ${selecaovoos.DATA_DE_VOLTA}       20/02/2024


confirma seleção de data    
    Wait and Click Element                    ${selecaovoos.BTN_SELECIONA_DATA}        10


clicar em buscar passagens
    Wait and Click Element                    ${selecaovoos.BTN_BUSCAR_PASSAGENS}        40


o site devera exibir a lista de voos
    Wait Until Page Does Not Contain          Estamos esquentando as turbinas        40
    # Wait Until Element Is Visible             ${selecaovoos.VALIDA_VOOS}        40
    Wait Until Page Contains                  Olá ${PRIMEIRO_NOME}, esse é o resultado de sua busca.        30
    
