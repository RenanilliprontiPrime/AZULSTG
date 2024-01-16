*** Settings ***
Resource    ../../../resource/main.robot


*** Variables ***
&{selecaopassagens}

...        SLC_VIAGEM_IDA=(//div[@aria-label='Ver tarifas deste voo. Selecionar'])[1]
...        BTN_SLC_TRF_IDA=(//button[@aria-label='Selecionar tarifa'])[1]
...        SLC_VIAGEM_VOLTA=(//div[@aria-label='Ver tarifas deste voo. Selecionar'])[2]
...        BTN_SLC_TRF_VOLTA=(//button[contains(.,'Selecionar tarifaSelecionar tarifa')])[4]
...        BTN_PSG_PGTO=(//button[@aria-label='Prosseguir para pagamento. Selecionar'])[2]
...        VLD_MODAL_PGTO=//p[text()='Mas não se preoucupe, se preferir, você pode fazer isso mais tarde em Minhas viagens.']
# ...        VLD_MODAL_PGTO2=//p[contains(.,'Roberto, temos uma sugestão Azul para você!')]
...        BTN_MODAL_PGTO=(//*[text()='Não, obrigado!'])[1]
...        VLD_MODAL_1CLIQUE=(//p[text()='Você está a 1-clique da sua viagem'])[1]
...        BTN_PGTO_1CLIQUE=(//div[text()='Não quero pagar com 1-clique'])[1]

...        SLC_VIAGEM_IDA_2=//div[@id='QUR_NjAzMX4gfn5QT0F_MDIvMDUvMjAyNCAwNTo1NX5DR0h_MDIvMDUvMjAyNCAwNzoyNX5_XkFEfjYwNTJ_IH5_Q0dIfjAyLzA1LzIwMjQgMTA6MDB_U0RVfjAyLzA1LzIwMjQgMTE6MDB_fg--']/div[1]
...        BTN_SLC_TRF_2=(//button[@aria-label='Selecionar tarifa'])[3]
...        BTN_INF_VIAJANTES=(//button[@aria-label='Informar viajantes'])[2]


