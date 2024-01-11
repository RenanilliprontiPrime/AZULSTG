*** Settings ***
Resource    ../../../resource/main.robot


*** Variables ***
&{booking}

...        VLD_SELECAODEVOOS=//span[@aria-hidden='true'][contains(.,'Para onde vamos voar?')]
...        BTN_COMPRAR=(//button[@type='button'][contains(.,'Comprar')])[1]
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
...        SLC_VIAGEM_IDA=(//div[@aria-label='Ver tarifas deste voo. Selecionar'])[1]
...        BTN_SLC_TRF_IDA=(//button[@aria-label='Selecionar tarifa'])[1]
...        SLC_VIAGEM_VOLTA=(//div[@aria-label='Ver tarifas deste voo. Selecionar'])[2]
...        BTN_SLC_TRF_VOLTA=(//button[contains(.,'Selecionar tarifaSelecionar tarifa')])[4]
...        BTN_PSG_PGTO=(//button[@aria-label='Prosseguir para pagamento. Selecionar'])[2]
#...        VLD_MODAL_PGTO=//p[text()='Mas não se preocupe, se preferir, você pode fazer isso mais tarde em Minhas viagens.']
...        VLD_MODAL_PGTO2=//p[contains(.,'Roberto, temos uma sugestão Azul para você!')]
...        BTN_MODAL_PGTO=(//*[text()='Não, obrigado!'])[1]
...        VLD_MODAL_1CLIQUE=(//p[text()='Você está a 1-clique da sua viagem'])[1]
...        BTN_PGTO_1CLIQUE=(//div[text()='Não quero pagar com 1-clique'])[1]
...        TELA_VIAJANTES=//h3[@arial-label='Dados dos viajantes']
...        BTN_PSG_PGTO_VIAJANTES=(//div[text()='Prosseguir para pagamento'])[1]
# ...        BTN_PSG_SVCS=(//div[text()='Prosseguir para serviços'])[1]
# ...        SLC_ASSENTO=//button[@data-seat-designator='4A']
# ...        BTN_OK_SLC_ASSENTO=//button[@aria-label='Ok, selecionar assento.']
# ...        BTN_PSG_TELA_ASSENTO=//button[@aria-label='Prosseguir']
# ...        VLD_TELA_ADD_BGGS=//header[@class='modal-title css-cz3w3i']
# ...        BTN_FECHAR_TELA_BGGS=//img[@alt='Fechar Modal']
...        BTN_IR_PGTO=(//div[text()='Ir para pagamento'])[1]
...        VLD_TELA_PGTO=//h3[contains(.,'Agora é só realizar o pagamento')]
...        SLC_FORMA_PGTO=//label[contains(.,'Selecionar forma de pagamento')]

# Variáveis de pagamento
# ...                VLD_TELA_PGTO=//h3[@arial-label='Agora é só realizar o pagamento']
...                SLC_PGTO=//label[@aria-label='Escolha como deseja pagar. Selecionar forma de pagamento. Selecionar']
...                SLC_CC=//button[@aria-label='Cadastrar cartão de crédito. Selecionar']
...                VLD_ADD_CC=//h3[@arial-label='Adicionar cartão'][contains(.,'Adicionar cartão')]
...                INSERIR_CC=//span[contains(.,'Número do cartão')]
...                NMR_CC=//input[@aria-label='Número do cartão']
...                INSERIR_VLD=//span[contains(.,'Validade')]
...                NMR_VLD=//input[@aria-label='Validade']
...                INSERIR_CVV=//span[contains(.,'CVV')]
...                NMR_CVV=//input[@aria-label='CVV']
...                INSERIR_CPF=//span[contains(.,'CPF do titular do cartão')]
...                NMR_CPF=//input[@aria-label='CPF do titular do cartão']
...                INSERIR_NOME=//span[contains(.,'Nome impresso no cartão')]
...                NOME=//input[@aria-label='Nome impresso no cartão']
...                BTN_ADD_CC=//input[@value='Adicionar cartão']
...                VLD_CC=//span[text()='Total a pagar']
...                SLC_PARC=//div[text()='Em quantas vezes quer pagar?']
...                SLC_PARC_1X=(//*[contains(text(),'1x R$')])[1]
...                SLC_CLR=//*[text()='Informe o celular']
...                INSERIR_CLR=//input[@aria-label='Celular']
...                SLC_CHECKBOX=//label[@aria-label='Li e estou de acordo com o contrato de transporte aéreo, selecionar']//div[1]
...                FNZ_PGTO=//button[@data-test-id='no-id']//div[1]



#Variáveis Tela Próxima viagem

...               TELA_PROX_VIAGEM=//h3[@arial-label='Pronto para sua próxima viagem?']
...               VLD_TELA_PROX_VIAGEM=//h2[contains(.,'Viajantes')]

