*** Settings ***
Resource   ../../../resource/main.robot





*** Keywords ***

o sistema deverá prosseguir para a tela de Viajantes
    Wait Until Element Is Visible                  ${viajantes.TELA_VIAJANTES}     30