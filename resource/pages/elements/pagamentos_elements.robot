*** Settings ***
Resource    ../../../resource/main.robot


*** Variables ***
&{pagamentos}


...        BTN_IR_PGTO=(//div[text()='Ir para pagamento'])[1]
...        VLD_TELA_PGTO=//h3[contains(.,'Agora é só realizar o pagamento')]
...        SLC_FORMA_PGTO=//label[contains(.,'Selecionar forma de pagamento')]


...        SLC_PGTO=//label[@aria-label='Escolha como deseja pagar. Selecionar forma de pagamento. Selecionar']
...        SLC_CC=//button[@aria-label='Cadastrar cartão de crédito. Selecionar']
...        VLD_ADD_CC=//h3[@arial-label='Adicionar cartão'][contains(.,'Adicionar cartão')]
...        INSERIR_CC=//span[contains(.,'Número do cartão')]
...        NMR_CC=//input[@aria-label='Número do cartão']
...        INSERIR_VLD=//span[contains(.,'Validade')]
...        NMR_VLD=//input[@aria-label='Validade']
...        INSERIR_CVV=//span[contains(.,'CVV')]
...        NMR_CVV=//input[@aria-label='CVV']
...        INSERIR_CPF=//span[contains(.,'CPF do titular do cartão')]
...        NMR_CPF=//input[@aria-label='CPF do titular do cartão']
...        INSERIR_NOME=//span[contains(.,'Nome impresso no cartão')]
...        NOME=//input[@aria-label='Nome impresso no cartão']
...        BTN_ADD_CC=//input[@value='Adicionar cartão']
...        VLD_CC=//span[text()='Total a pagar']
...        SLC_PARC=//div[text()='Em quantas vezes quer pagar?']
...        SLC_PARC_1X=(//*[contains(text(),'1x R$')])[1]
...        SLC_CLR=//*[text()='Informe o celular']
...        INSERIR_CLR=//input[@aria-label='Celular']
...        SLC_CHECKBOX=//label[@aria-label='Li e estou de acordo com o contrato de transporte aéreo, selecionar']//div[1]
...        FNZ_PGTO=//button[@data-test-id='no-id']//div[1]