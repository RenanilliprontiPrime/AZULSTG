*** Settings ***
Resource   ../../../../resource/main.robot

*** Keywords ***


realiza o login
    [Documentation]    Keyword responsável por fazer o Login no app, a partir da página inicial.
    [Arguments]    ${USER}=Default
    Wait and Click element    ${login.CAMPO_LOGIN}    TIMEOUT=20
    

    IF    "${USER}" == "Tudo Azul"
        Wait and Input Text    ${login.CAMPO_LOGIN}    ${TA_1}
        Wait and Input Text    ${login.CAMPO_SENHA}    ${PWD}
    ELSE IF    "${USER}" == "Tudo Azul II"
        Wait and Input Text    ${login.CAMPO_LOGIN}    ${TA_2}
        Wait and Input Text    ${login.CAMPO_SENHA}    ${PWD}
    ELSE IF    "${USER}" == "Safira I"
        Wait and Input Text    ${login.CAMPO_LOGIN}    ${SAFIRA_1}
        Wait and Input Text    ${login.CAMPO_SENHA}    ${PWD}
    ELSE IF    "${USER}" == "Diamante I"
        Wait and Input Text    ${login.CAMPO_LOGIN}    ${DIAMANTE_1}
        Wait and Input Text    ${login.CAMPO_SENHA}     ${PWD}
    ELSE 
        Wait and Input Text    ${login.CAMPO_LOGIN}    ${TA+_1}
        Wait and Input Text    ${login.CAMPO_SENHA}     ${PWD}
    END


Wait and Click Element
    [Documentation]    Keyword responsável por aguardar o elemento estar visível e clicar.
    [Arguments]    ${ELEMENT}    ${TIMEOUT}=20
    Wait until element is visible    ${ELEMENT}    timeout=${TIMEOUT}
    Click element    ${ELEMENT}


Wait and Input Text
    [Documentation]    Keyword responsável por aguardar o elemento estar visível e digitar o texto.
    [Arguments]    ${ELEMENT}    ${TEXT}    ${TIMEOUT}=10
    Wait until element is visible    ${ELEMENT}
    Input text    ${ELEMENT}    ${TEXT}