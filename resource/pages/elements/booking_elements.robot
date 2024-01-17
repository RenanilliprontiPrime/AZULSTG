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
...        VIAJANTE_3=(//div[@class='passenger'])[3]

...        FIRST_NAME_2=(//input[@aria-label='Informe o nome'])[2]
...        FIRST_NAME_3=(//input[@aria-label='Informe o nome'])[3]

...        LAST_NAME_2=(//input[@aria-label='Informe o sobrenome'])[2]
...        LAST_NAME_3=(//input[@aria-label='Informe o sobrenome'])[3]

# ...        NACIONALIDADE_2=(//div[text()='Selecione'])[1]
...        NACIONALIDADE_3=(//div[text()='Selecione'])[3]

...        SLC_NACIONALIDADE_2=(//div[text()='Brasil'])[2]
...        SLC_NACIONALIDADE_3=(//div[text()='Brasil'])[3]

...        CAMPO_CPF_2=(//input[@aria-label='Informe o CPF ou tudo azul'])[1]
...        CAMPO_CPF_3=(//input[@aria-label='Informe o CPF ou tudo azul'])[2]

...        CAMPO_DATA_NASC_2=(//input[@aria-label='Informe a data de nascimento'])[2]
...        CAMPO_DATA_NASC_3=(//input[@aria-label='Informe a data de nascimento'])[3]

...        CAMPO_SEXO_2=(//div[text()='Selecione'])[1]
...        CAMPO_SEXO_3=(//*[contains(text(),'Sexo')])[3]

...        SLC_SEXO_2=//div[text()='Feminino']
...        SLC_SEXO_3=(//div[text()='Masculino'])[2]

...        BTN_PSG_SRVC=(//div[text()='Prosseguir para serviços'])[1]






# Seatmap

...        ASSENTO_1=//button[@aria-label='3A']
...        BTN_SLC_ASSENTO=//button[@aria-label='Ok, selecionar assento.']
...        BTN_CLR_ASSENTO=(//div[text()='Cancelar'])[1]
...        VLD_ASSENTO=(//div[@class='modal-content']//div)[1]
...        ASSENTO_2=//button[@aria-label='3B']
...        BTN_SLC_ASSENTO=//button[@aria-label='Ok, selecionar assento.']
...        BTN_CLR_ASSENTO=(//div[text()='Cancelar'])[1]
...        VLD_ASSENTO=(//div[@class='modal-content']//div)[2]
...        ASSENTO_3=//button[@aria-label='3C']
...        BTN_SLC_ASSENTO=//button[@aria-label='Ok, selecionar assento.']
...        BTN_CLR_ASSENTO=(//div[text()='Cancelar'])[1]
...        BTN_PSG_SEATMAP=//button[@aria-label='Prosseguir']


#Adicionar Bagagens

...        VLD_ADC_BGS=//h2[text()='Adicionar bagagens']
...        BTN_ADC_BGS_1=(//button[text()='+'])[1]
...        BTN_EXC_BGS_1=(//button[text()='-'])[1]
...        BTN_ADC_BGS_2=(//button[text()='+'])[2]
...        BTN_EXC_BGS_1=(//button[text()='-'])[2]
...        BTN_ADC_BGS_3=(//button[text()='+'])[3]
...        BTN_EXC_BGS_1=(//button[text()='-'])[3]
...        VLD_SEG_VIAGEM=//span[text()='Seguro Viagem para todos os viajantes']
...        CHECKBOX_SEG_VIAGEM=(//input[@type='checkbox']/following-sibling::span)[2]
...        BTN_PSG_PGTO=(//button[@data-test-id='no-id'])[3]
...        BTN_VER_SEG=//button[@aria-label='Ver opções de seguro']
...        TELA_ADC_SEG=//h2[@aria-label='Adicionar seguro viagem']
...        BTN_PSG_COM_SEG=//button[@aria-label='Prosseguir com seguro, selecionar']
...        BTN_PSG_SEM_SEG=(//div[text()='Prosseguir sem seguro'])[1]

