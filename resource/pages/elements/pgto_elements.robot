*** Settings ***
Resource    ../../../resource/main.robot

*** Variables ***
&{pgto}

...                VLD_TELA_PGTO=//h3[@arial-label='Agora é só realizar o pagamento']
...                SLC_MODAL_PGTO=//label[@aria-label='Escolha como deseja pagar. Selecionar forma de pagamento. Selecionar']
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



