*** Settings ***
Resource   ../../../resource/main.robot





*** Keywords ***
    # Então o sistema devera finalizar o pagamento
    # E apresentar a tela de sucesso
o sistema devera finalizar o pagamento
    Wait Until Element Is Visible               ${prox_viagem.TELA_PROX_VIAGEM}         40

apresentar a tela de sucesso
    Wait Until Element Is Visible               ${prox_viagem.VLD_TELA_PROX_VIAGEM}     40