*** Settings ***

Library   SeleniumLibrary

#ELEMENTS
Resource      ../resource/pages/elements/login_elements.robot


#KEYWORDS
Resource      ../resource/pages/keywords/azul_resources.robot



#KEYWORDS COMPARTILHADAS

Resource      ../resource/pages/keywords/shared/hooks.robot
Resource      ../resource/pages/keywords/shared/setups_teardown.robot