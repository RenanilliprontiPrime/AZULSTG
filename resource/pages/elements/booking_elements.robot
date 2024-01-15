*** Settings ***
Resource    ../../../resource/main.robot


*** Variables ***
&{booking}


...        NUM_VIAJANTES=//small[@aria-label='Números de viajantes. Selecionado']
...        VLD_TELA_SLC=//p[@aria-label='Exibir valores em:']
...        NUM_ADTS=//li[@aria-label='Viajante adulto: a partir de 12 anos.']
...        BTN_CHD_MENOS=(//button[text()='-'])[1]
...        BTN_CHD_MAIS=(//button[text()='+'])[1]
...        NUM_CHD=//li[@aria-label='Viajante criança: de 2 a 11 anos']
...        BTN_CHD_MENOS=(//button[text()='-'])[2]
...        BTN_CHD_MAIS=(//button[text()='+'])[2]
...        NUM_INF=//li[@aria-label='Viajante bebê de 0 a 23 meses.']
...        BTN_INF_MENOS=(//button[text()='-'])[3]
...        BTN_INF_MAIS=(//button[text()='+'])[3]
...        BTN_CONFIRMAR=//input[@value='Confirmar']
...        BTN_PGTO_REAIS=//button[@aria-label='Reais']
...        BTN_PGTO_PONTOS=//button[@aria-label='Pontos']