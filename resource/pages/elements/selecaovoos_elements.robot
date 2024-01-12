*** Settings ***
Resource    ../../../resource/main.robot


*** Variables ***
&{selecaovoos}

...        VLD_SELECAODEVOOS=//span[@aria-hidden='true'][contains(.,'Para onde vamos voar?')]
...        BTN_COMPRAR=(//button[@aria-label='Comprar passagens'])[1]
...        VLD_BTN_COMPRAR=//p[contains(.,'Comece escolhendo a origem e destino para sua viagem:')]
...        ORIGEM=//input[contains(@placeholder,'Digite a sua origem')]
...        VCP=//p[@class='button__text'][contains(.,'Campinas')]
...        DESTINO=//input[contains(@placeholder,'Digite o seu destino')]
...        BSB=//b[contains(.,'Brasília')]
...        DATA=//label[@aria-label='Datas (ida e volta)'][contains(.,'Datas (ida e volta)')]
...        DATA_DE_IDA=//input[contains(@name,'startDate')]
...        DATA_DE_VOLTA=//input[contains(@name,'endDate')]
...        BTN_SELECIONA_DATA=//div[@class='button__text'][contains(.,'Selecionar data de ida e volta')]
...        BTN_BUSCAR_PASSAGENS=//div[@class='button__text'][contains(.,'Buscar passagens')]
...        VALIDA_VOOS=//h3[@arial-label='Olá Roberto, esse é o resultado de sua busca.']

