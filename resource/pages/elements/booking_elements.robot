*** Settings ***
Resource    ../../../resource/main.robot


*** Variables ***
&{booking}

...        VLD_SELECAODEVOOS=//span[@aria-hidden='true'][contains(.,'Para onde vamos voar?')]
...        BTN_COMPRAR=(//button[@type='button'][contains(.,'Comprar')])[1]
...        VALIDA_BTN_COMPRAR=//p[contains(.,'Comece escolhendo a origem e destino para sua viagem:')]
...        ORIGEM=//input[contains(@placeholder,'Digite a sua origem')]
...        VCP=//p[@class='button__text'][contains(.,'Campinas')]
...        DESTINO=//input[contains(@placeholder,'Digite o seu destino')]
...        BSB=//p[@class='button__text'][contains(.,'Brasília')]
...        DATA=//label[@aria-label='Datas (ida e volta)'][contains(.,'Datas (ida e volta)')]
...        DATA_DE_IDA=//input[contains(@name,'startDate')]
...        DATA_DE_VOLTA=//input[contains(@name,'endDate')]
...        BTN_SELECIONA_DATA=//div[@class='button__text'][contains(.,'Selecionar data de ida e volta')]
...        BTN_BUSCAR_PASSAGENS=//div[@class='button__text'][contains(.,'Buscar passagens')]
...        VALIDA_VOOS=//h3[@arial-label='Olá Roberto, esse é o resultado de sua busca.']
...        SELECIONA_VIAGEM_IDA=(//div[contains(@id,'')])[625]
...        BTN_SLC_TRF_IDA=(//button[@data-test-id='select-fare'])[1]
...        SELECIONA_VIAGEM_VOLTA=(//div[contains(@aria-label,'Ver tarifas deste voo. Selecionar')])[2]
...        BTN_SLC_TRF_VOLTA=(//button[@data-test-id="select-fare"])[5]
...        BTN_PSG_PGTO=(//button[@data-test-id='no-id'])[6]
...        MODAL_PGTO=//div[contains(@class,'modal-icon css-1qwh3ob')]
...        BTN_MODAL_PGTO=//button[contains(@aria-label,'Confirmar por R$ 0,00')]
...        MODAL_1_CLIQUE=//section[@class='modal-content']
...        MODAL_BTN_PGTO_1_CLIQUE=//button[@aria-label='Confirmar e ir para pagamento']
...        VLD_TELA_PGTO=//h3[contains(.,'Agora é só realizar o pagamento')]
...        SLC_FORMA_PGTO=//label[contains(.,'Selecionar forma de pagamento')]