Language: Brazilian Portuguese

*** Settings ***
Documentation    Essa suite testa o site da Azul
Resource         ../resource/main.robot
Test Setup      inicia o teste com login 

  

*** Test Cases ***
Caso de Testes 01 - Acessar o site da Azul
    [Documentation]    Acessar o site da Azul em BDD
    [Tags]             LOGIN
    # [Setup]            Abrir o navegador

    Dado que estou no site da Azul
    Quando clicar em Fazer Login
    E inserir os dados de Login, clicar em "Entrar no TudoAzul"
    Então o sistema devera apresentar a pagina do Site logado


Caso de Testes 02 - Validar busca de passagens no site
    [Documentation]    Esse teste serve para validar uma busca no site
    [Tags]             BOOKING   t2
    [Setup]    inicia o teste com login  USER=Tudo Azul
    Dado clicar em comprar passagens, inserir origem, destino e datas de Ida e Volta
    Quando clicar em "Buscar passagens"
    Então o site deverá exibir a lista de voos

Caso de Testes 03 - Selecionar Passagens e Prosseguir para Pagamento
    [Documentation]        Esse caso de teste serve para selecionar as tarifas em REAIS e prosseguir o Fluxo
    [Tags]                 SELECIONAR TARIFA    t3
    [Setup]                inicia o teste na tela de selecionar passagens USER=Tudo Azul
    Dado selecionar as Tarifas de ida e Volta
    Quando clicar em Prosseguir para Pagamento
    Então o sistema deverá prosseguir para a tela de "Pagamento"


Caso de Testes 04 - Validar a inserção de Cartão de Crédito
    [Documentation]        Esse caso de testes serve para validar a iserção de Cartão de Crédito na tela de pagamento
    [Tags]                 INSERIR CARTÃO    t4
    [Setup]                inicia o teste na tela de pagamento
    Dado que esteja na tela de pagamento
    Quando clicar em "Selecionar forma de pagamento", clicar em "Cartão de Crédito"
    E inserir um "Cartão de Crédito" valido, adicionar Cartão
    # Então o sistema deverá retornar para a tela de pagamento


# Caso de testes 05 - Efetuar Pagamento da Tarifa
#     [Documentation]        Esse caso de teste serve para fazer a finalização do pagamento
#     [Tags]                 FINALIZAR Pagamento

#     Dado que esteja na tela de pagamento
#     Quando selecionar o checkbox dos termos de contrato
#     E clicar em "Efetuar Pagamento"
#     Então o sistema deverá finalizar o pagamento e apresentar a tela de sucesso    