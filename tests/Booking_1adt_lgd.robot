Language: Brazilian Portuguese

*** Settings ***
Documentation    Essa suite testa o booking de 1 ADT Logado
Resource         ../resource/main.robot
Test Setup      inicia o teste com login 
Test Teardown    Close Browser
  

*** Test Cases ***

Caso de Testes 01 - Validar busca de passagens no site
    [Documentation]    Esse caso de teste serve para efetuar o booking no site
    [Tags]             BOOKING       t1
    [Setup]            inicia o teste com login  USER=Tudo Azul
    Dado clico em comprar passagem
    E inserir origem 
    E inserir destino 
    E inserir data ida 
    E inserir data volta
    Quando confirma seleção de data
    E clicar em buscar passagens
    Então o site devera exibir a lista de voos


Caso de Testes 02 - Selecionar Passagens e Prosseguir para Viajantes
    [Documentation]        Esse caso de teste serve para selecionar as tarifas em REAIS
    [Tags]                 SELECIONAR TARIFA        t2
    # [Setup]            inicia o teste com login  USER=Tudo Azul
    Dado que eu esteja na tela de seleção de passagens
    Quando eu selecionar as tarifas de ida e volta
    E clicar em prosseguir para pagamento
    Então o sistema devera prosseguir para a tela de viajantes


Caso de Testes 03 - Validar a inserção de Cartão de Crédito
    [Documentation]        Esse caso de testes serve para validar a inserção de Cartão de Crédito na tela de pagamento
    [Tags]                 INSERIR CARTÃO        t3
    # [Setup]            inicia o teste com login  USER=Tudo Azul
    Dado que eu esteja na tela de seleção de passagens
    E eu selecionar as tarifas de ida e volta
    E clicar em prosseguir para pagamento
    E o sistema devera prosseguir para a tela de viajantes
    E selecionar forma de pagamento, clicar em cartão de crédito
    E inserir um cartão de crédito valido
    Quando clicar em adicionar cartão
    Então o sistema devera retornar para a tela de pagamento


Caso de testes 04 - Efetuar Pagamento da Tarifa
    [Documentation]        Esse caso de teste serve para fazer a finalização do pagamento
    [Tags]                 FINALIZAR PAGAMENTO        t4
    # [Setup]            inicia o teste com login  USER=Tudo Azul
    Dado que eu esteja na tela de pagamento
    E seleciono a forma de parcelamento
    Quando selecionar o checkbox dos termos de contrato
    E clicar em efetuar pagamento
    Então o sistema devera finalizar o pagamento 
    E apresentar a tela de sucesso