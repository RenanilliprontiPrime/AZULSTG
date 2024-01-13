*** Settings ***
Resource   ../../../resource/main.robot





*** Keywords ***

    # Dado clico em comprar passagem
    # E inserir origem 
    # E inserir destino 
    # E inserir data ida 
    # E inserir data volta
    # Quando confirma seleção de data
    # E clicar em buscar passagens
    # Então o site devera exibir a lista de voos

clico em comprar passagem
    Wait Until Page Contains                  Estamos carregando suas informações    60
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
    Wait Until Element Is Visible             ${selecaovoos.VALIDA_VOOS}        40
    
