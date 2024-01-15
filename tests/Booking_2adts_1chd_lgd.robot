Language: Brazilian Portuguese

*** Settings ***
Documentation    Essa suite testa o booking de 2 ADT's e 1 CHD Logado
Resource         ../resource/main.robot
Test Setup      inicia o teste com login 

  

*** Test Cases ***

# Caso de Testes 01 - Validar compra de passagens 3 pax (2Adt's e 1 Chd) no site
#     [Documentation]    Realizar compra de reserva nacional com cliente "TudoAzul" logado, para pax "ADT" em "reais", com tarifa "Azul", somente IDA, sem serviços adicionais e com pagamento no cartão de crédito "à vista" 
#     [Tags]             BOOKING DOMÉSTICO
#     [Setup]            inicia o teste com login  USER=Tudo Azul
    #   Dado que o cliente esteja com o destino de voo selecionado, data, forma de pagamento em Reais, passageiros 
	#   Quando selecionar a passagem desejada escolhendo a tarifa "Azul", clicar em "Informar viajantes", inserir os dados do passageiro, inserir a forma de pagamento no cartão de crédito à vista 
	#   Então o sistema deverá apresentar a tela da reserva confirmada com os dados do voo e os serviços adicionais habilitados.



