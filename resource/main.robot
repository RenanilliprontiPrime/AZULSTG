*** Settings ***

Library   SeleniumLibrary
Library         yaml

#ELEMENTS

Resource      ../resource/pages/elements/login_elements.robot
Resource      ../resource/pages/elements/base_elements.robot
Resource      ../resource/pages/elements/booking_elements.robot
Resource      ../resource/pages/elements/selecaovoos_elements.robot
Resource      ../resource/pages/elements/selecaopassagens_elements.robot
Resource      ../resource/pages/elements/pagamentos_elements.robot
Resource      ../resource/pages/elements/viajantes_elements.robot

#variaveis

Variables      ../resource/credenciais.yaml
Variables      ../resource/pgto.yaml




#KEYWORDS

Resource      ../resource/pages/keywords/booking_resources.robot
Resource      ../resource/pages/keywords/selecaovoos_resources.robot
Resource      ../resource/pages/keywords/selecaopassagens_resources.robot
Resource      ../resource/pages/keywords/pagamentos_resources.robot
Resource      ../resource/pages/keywords/viajantes_resources.robot


#KEYWORDS COMPARTILHADAS

Resource      ../resource/pages/keywords/shared/hooks.robot
Resource      ../resource/pages/keywords/shared/setup_teardown.robot
Resource      ../resource/pages/keywords/shared/helpers.robot
