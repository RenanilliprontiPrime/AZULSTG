*** Settings ***
Resource    ../../../resource/main.robot


*** Variables ***
&{selecaovoos}


...        VLD_SELECAODEVOOS=//span[@aria-hidden='true'][contains(.,'Para onde vamos voar?')]
...        BTN_COMPRAR=(//button[@aria-label='Comprar passagens'])[1]
...        VLD_BTN_COMPRAR=//p[contains(.,'Comece escolhendo a origem e destino para sua viagem:')]
...        ORIGEM=//input[@placeholder='Digite a sua origem']
...        VCP=//b[text()=' Campinas']
...        SALGADO_FILHO=//b[text()='Salgado Filho']
...        DESTINO=//input[contains(@placeholder,'Digite o seu destino')]
...        BSB=//b[contains(.,'Brasília')]
# ...        CAMPINAS=(//b[text()='Santos Dumont'])[1]
...        DATA=//label[@aria-label='Datas (ida e volta)'][contains(.,'Datas (ida e volta)')]
...        DATA_DE_IDA=//input[contains(@name,'startDate')]
...        DATA_DE_VOLTA=//input[contains(@name,'endDate')]
...        BTN_DATA_IDA=(//div[text()='Selecionar apenas data de ida'])[1]
...        BTN_SELECIONA_DATA=//div[@class='button__text'][contains(.,'Selecionar data de ida e volta')]
...        BTN_BUSCAR_PASSAGENS=//div[@class='button__text'][contains(.,'Buscar passagens')]
...        VALIDA_VOOS=//h3[@arial-label='Olá Roberto, esse é o resultado de sua busca.']



