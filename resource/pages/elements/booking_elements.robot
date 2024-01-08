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
...        SLC_VIAGEM_IDA=(//div[contains(@class,'flight-card__fare right-container')])[1]
...        BTN_SLC_TRF_IDA=(//button[@data-test-id='select-fare'])[1]
...        SELECIONA_VIAGEM_VOLTA=(//div[@aria-label='Ver tarifas deste voo. Selecionar'])[3]
...        BTN_SLC_TRF_VOLTA=(//button[@class='button css-1jveutg'])[2]
...        BTN_PSG_PGTO=(//div[text()='Prosseguir para pagamento'])[3]
...        MODAL_PGTO=//div[contains(@class,'modal-icon css-1qwh3ob')]
...        BTN_MODAL_PGTO=(//div[text()='Não, obrigado!'])[1]
...        MODAL_1_CLIQUE=//section[@class='modal-content']
...        MODAL_BTN_PGTO_1_CLIQUE=(//div[text()='Não quero pagar com 1-clique'])[1]
...        TELA_VIAJANTES=//h3[@arial-label='Dados dos viajantes']
...        BTN_PSG_SVCS=(//div[text()='Prosseguir para serviços'])[1]
...        SLC_ASSENTO=//button[@data-seat-designator='4A']
...        BTN_OK_SLC_ASSENTO=//button[@aria-label='Ok, selecionar assento.']
...        BTN_PSG_TELA_ASSENTO=//button[@aria-label='Prosseguir']
...        VLD_TELA_ADD_BGGS=//header[@class='modal-title css-cz3w3i']
...        BTN_FECHAR_TELA_BGGS=//img[@alt='Fechar Modal']
...        BTN_IR_PGTO=(//div[text()='Ir para pagamento'])[1]
...        VLD_TELA_PGTO=//h3[contains(.,'Agora é só realizar o pagamento')]
...        SLC_FORMA_PGTO=//label[contains(.,'Selecionar forma de pagamento')]