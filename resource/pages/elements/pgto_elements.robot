*** Settings ***
Resource    ../../../resource/main.robot

*** Keywords ***
&{pgto}

...                SLC_MODAL_PGTO=//h3[contains(.,'Selecionar como quer pagar')]
...                BTN_CC=//button[contains(.,'Cartão de crédito')]
...                INSERIR_CARTÃO=//span[contains(.,'Número do cartão')]
...                NMR_CARTÃO=//input[@aria-label='Número do cartão']
...                INSERIR_VALIDADE=//span[contains(.,'Validade')]
...                NMR_VALIDADE=//input[@aria-label='Validade']
...                INSERIR_CVV=//span[contains(.,'CVV')]
...                NMR_CVV=//input[@aria-label='CVV']
...                INSERIR_CPF_TITULAR=//span[contains(.,'CPF do titular do cartão')]
...                NMR_CPF_TITULAR=//input[@aria-label='CPF do titular do cartão']
...                INSERIR_NM_TITULAR=//span[contains(.,'Nome impresso no cartão')]
...                NOME_TITULAR=//input[@aria-label='Nome impresso no cartão']
...                BTN_ADD_CARTÃO=//input[@value='Adicionar cartão']


