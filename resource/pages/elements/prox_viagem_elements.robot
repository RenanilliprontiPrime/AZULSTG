*** Settings ***
Resource    ../../../resource/main.robot


*** Variables ***
&{prox_viagem}

...       TELA_PROX_VIAGEM=//h3[@arial-label='Pronto para sua próxima viagem?']
...       VLD_TELA_PROX_VIAGEM=//h2[contains(.,'Viajantes')]