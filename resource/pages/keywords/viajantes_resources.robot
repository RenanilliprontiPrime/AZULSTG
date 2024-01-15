*** Settings ***
Resource   ../../../resource/main.robot





*** Keywords ***


o sistema devera prosseguir para a tela de viajantes
    Wait Until Element Is Visible                  ${viajantes.TELA_VIAJANTES}     30
    Wait and Click Element                         ${viajantes.BTN_PSG_PGTO_VIAJANTES}
