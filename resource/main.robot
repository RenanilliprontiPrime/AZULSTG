*** Settings ***

Library   SeleniumLibrary
Library         yaml
Library       String
# Library    FakerLibrary

#ELEMENTS

Resource      ../resource/pages/elements/login_elements.robot
Resource      ../resource/pages/elements/base_elements.robot
Resource      ../resource/pages/elements/booking_elements.robot
Resource      ../resource/pages/elements/selecaovoos_elements.robot
Resource      ../resource/pages/elements/selecaopassagens_elements.robot
Resource      ../resource/pages/elements/pagamentos_elements.robot
Resource      ../resource/pages/elements/viajantes_elements.robot
Resource      ../resource/pages/elements/prox_viagem_elements.robot
# Resource      ../resource/pages/elements/seatmap_elements.robot

#VARIAVEIS

Variables      ../resource/credenciais.yaml
Variables      ../resource/pgto.yaml




#KEYWORDS

Resource      ../resource/pages/keywords/booking_resources.robot
Resource      ../resource/pages/keywords/selecaovoos_resources.robot
Resource      ../resource/pages/keywords/selecaopassagens_resources.robot
Resource      ../resource/pages/keywords/pagamentos_resources.robot
Resource      ../resource/pages/keywords/viajantes_resources.robot
Resource      ../resource/pages/keywords/prox_viagem_resources.robot
# Resource      ../resource/pages/keywords/seatmap_resources.robot

#KEYWORDS COMPARTILHADAS

Resource      ../resource/pages/keywords/shared/hooks.robot
Resource      ../resource/pages/keywords/shared/setup_teardown.robot
Resource      ../resource/pages/keywords/shared/helpers.robot
# Resource      ../resource/pages/keywords/shared/loading.robot
