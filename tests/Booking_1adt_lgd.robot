Language: Brazilian Portuguese

*** Settings ***
Documentation    Essa suite testa o site da Azul
Resource         ../resource/main.robot
Test Setup      inicia o teste com login 

  

*** Test Cases ***

Caso de Testes 01 - Validar busca de passagens no site
    [Documentation]    Esse caso de teste serve para efetuar o booking no site
    [Tags]             BOOKING   t1
    [Setup]            inicia o teste com login  USER=Tudo Azul
    Dado clicar em comprar passagens, inserir origem, destino e datas de Ida e Volta
    Quando clicar em "Buscar passagens"
    Então o site deverá exibir a lista de voos


Caso de Testes 02 - Selecionar Passagens e Prosseguir para Viajantes
    [Documentation]        Esse caso de teste serve para selecionar as tarifas em REAIS
    [Tags]                 SELECIONAR TARIFA    t2
    [Setup]                inicia o teste com login  USER=Tudo Azul
    Dado que inicio na tela de consulta de voo
    Quando que seleciono as Tarifas de ida e Volta
    E clicar em Prosseguir para Pagamento
    Então o sistema deverá prosseguir para a tela de Viajantes


Caso de Testes 03 - Validar a inserção de Cartão de Crédito
    [Documentation]        Esse caso de testes serve para validar a inserção de Cartão de Crédito na tela de pagamento
    [Tags]                 INSERIR CARTÃO    t3
    [Setup]                inicia o teste com login  USER=Tudo Azul
    Dado que inicio na tela de viajantes
    Quando selecionar forma de pagamento, clicar em "Cartão de Crédito"
    E inserir um "Cartão de Crédito" valido, adicionar Cartão
    Então o sistema deverá retornar para a tela de pagamento


Caso de testes 04 - Efetuar Pagamento da Tarifa
    [Documentation]        Esse caso de teste serve para fazer a finalização do pagamento
    [Tags]                 FINALIZAR PAGAMENTO    t4
    [Setup]                inicia o teste com login  USER=Tudo Azul
    Dado que inicio na tela de pagamento
    Quando selecionar a forma de parcelamento
    E selecionar o checkbox dos termos de contrato
    E clicar em "Efetuar Pagamento"
    # Então o sistema deverá finalizar o pagamento e apresentar a tela de sucesso