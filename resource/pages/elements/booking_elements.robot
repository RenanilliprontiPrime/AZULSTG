*** Settings ***
Resource    ../../../resource/main.robot


*** Variables ***
&{booking}

# seleção de voos
...        NUM_VIAJANTES=//small[@aria-label='Números de viajantes. Selecionado']
...        VLD_TELA_SLC=//p[@aria-label='Exibir valores em:']
...        NUM_ADTS=//li[@aria-label='Viajante adulto: a partir de 12 anos.']
...        BTN_ADT_MENOS=(//button[text()='-'])[1]
...        BTN_ADT_MAIS=(//button[text()='+'])[1]
...        NUM_CHD=//li[@aria-label='Viajante criança: de 2 a 11 anos']
...        BTN_CHD_MENOS=(//button[text()='-'])[2]
...        BTN_CHD_MAIS=(//button[text()='+'])[2]
...        NUM_INF=//li[@aria-label='Viajante bebê de 0 a 23 meses.']
...        BTN_INF_MENOS=(//button[text()='-'])[3]
...        BTN_INF_MAIS=(//button[text()='+'])[3]
...        BTN_CONFIRMAR=//input[@value='Confirmar']
...        BTN_PGTO_REAIS=//button[@aria-label='Reais']
...        BTN_PGTO_PONTOS=//button[@aria-label='Pontos']

# seleção de passagens
# ...        BTN_INF_VIAJANTES=(//button[@aria-label='Informar viajantes'])[2]

# viajantes
...        VIAJANTE_2=(//span[text()='Nome do Viajante'])[1]
...        FIRST_NAME_2=(//input[@aria-label='Informe o nome'])[2]
...        LAST_NAME_2=(//input[@aria-label='Informe o sobrenome'])[2]
...        NACIONALIDADE=(//span[text()='Nacionalidade'])[2]
...        SLC_NACIONALIDADE_2=(//div[text()='Brasil'])[2]
...        CAMPO_CPF_2=(//input[@aria-label='Informe o CPF ou tudo azul'])[1]
...        CAMPO_DATA_NASC_2=(//span[text()='Data de nascimento'])[2]
...        CAMPO_SEXO_2=(//span[text()='Sexo'])[2]
...        SLC_SEXO_2=(//div[text()='Masculino'])[2]
...        VIAJANTE_3=(//span[text()='Nome do Viajante'])[2]        
...        FIRST_NAME_3=(//span[text()='Primeiro Nome'])[3]
...        LAST_NAME_3=(//span[text()='Último sobrenome'])[3]
...        NACIONALIDADE=(//span[text()='Nacionalidade'])[3]
...        SLC_NACIONALIDADE_3=(//div[text()='Brasil'])[3]
...        CAMPO_CPF_3=(//span[text()='CPF ou Nº Tudo'])[2]
...        CAMPO_DATA_NASC_3=(//span[text()='Data de nascimento'])[3]
...        CAMPO_SEXO_3=(//span[text()='Sexo'])[3]
...        SLC_SEXO_3=//div[text()='Feminino']