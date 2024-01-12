*** Settings ***
Resource    ../../../resource/main.robot


*** Variables ***
&{selecaopassagens}

...        SLC_VIAGEM_IDA=(//div[@aria-label='Ver tarifas deste voo. Selecionar'])[1]
...        BTN_SLC_TRF_IDA=(//button[@aria-label='Selecionar tarifa'])[1]
...        SLC_VIAGEM_VOLTA=(//div[@aria-label='Ver tarifas deste voo. Selecionar'])[2]
...        BTN_SLC_TRF_VOLTA=(//button[contains(.,'Selecionar tarifaSelecionar tarifa')])[4]
...        BTN_PSG_PGTO=(//button[@aria-label='Prosseguir para pagamento. Selecionar'])[2]