*** Settings ***

Library   SeleniumLibrary
Library         yaml

#ELEMENTS
Resource      ../resource/pages/elements/login_elements.robot
Resource      ../resource/pages/elements/base_elements.robot
Resource      ../resource/pages/elements/booking_elements.robot
Resource      ../resource/pages/elements/pgto_elements.robot

#variaveis
Variables      ../resource/credenciais.yaml



#KEYWORDS
Resource      ../resource/pages/keywords/azul_resources.robot
Resource      ../resource/pages/keywords/booking_resource.robot
Resource      ../resource/pages/keywords/pgto_resource.robot



#KEYWORDS COMPARTILHADAS

Resource      ../resource/pages/keywords/shared/hooks.robot
Resource      ../resource/pages/keywords/shared/setup_teardown.robot
Resource      ../resource/pages/keywords/shared/helpers.robot