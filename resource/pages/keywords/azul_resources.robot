*** Settings ***
Resource   ../../../resource/main.robot

*** Variables ***
${Browser}                   Chrome
${URL}                       https://azul-stage65.adobecqms.net/br/pt/home
${BTN_COOKIES}                          //button[contains(.,'Aceitar todos os cookies')]
${BTN_LOGIN}                           //button[contains(@class,'css-17qmcw2')]
${CAMPO_LOGIN}                         //input[contains(@aria-label,'Informe CPF ou Nº TudoAzul')]
${CAMPO_SENHA}                         //input[contains(@type,'password')]
${BTN_ENTRAR_TUDO_AZUL}               //button[@data-testid='search-box-hotel-date-picker-primary-button'][contains(.,'Entrar no TudoAzulEntrar no TudoAzul')]
${TELA_LOGIN_TA}                      //span[@class='deepcerulean'][contains(.,'Login TudoAzul')]
${TELA_LOGIN_CARREGANDO}              //h2[contains(@aria-label,'Estamos carregando suas informações')]
${VALIDA_LOGIN}                      //img[@aria-label='Azul Linhas Aéreas']
${VLD_SELECAODEVOOS}                 //span[@aria-hidden='true'][contains(.,'Para onde vamos voar?')]
${BTN_COMPRAR}                      (//button[@type='button'][contains(.,'Comprar')])[1]
${VALIDA_BTN_COMPRAR}               //p[contains(.,'Comece escolhendo a origem e destino para sua viagem:')]
${ORIGEM}                           //input[contains(@placeholder,'Digite a sua origem')]
${VCP}                              (//button[contains(@type,'button')])[31]
${DESTINO}                          //input[contains(@placeholder,'Digite o seu destino')]
${BSB}                              //p[@class='button__text'][contains(.,'Brasília')]
${DATA}                             //label[@aria-label='Datas (ida e volta)'][contains(.,'Datas (ida e volta)')]
${DATA_DE_IDA}                      //input[contains(@name,'startDate')]
${DATA_DE_VOLTA}                    //input[contains(@name,'endDate')]
${BTN_SELECIONA_DATA}               //div[@class='button__text'][contains(.,'Selecionar data de ida e volta')]
${BTN_BUSCAR_PASSAGENS}             //div[@class='button__text'][contains(.,'Buscar passagens')]
${VALIDA_VOOS}                      //h3[@arial-label='Olá Guilherme, esse é o resultado de sua busca.']
${SELECIONA_VIAGEM_IDA}             (//div[contains(@id,'')])[625]
${BTN_SLC_TRF_IDA}                 (//button[@data-test-id='select-fare'])[1]
# ${VALIDA_TARIFA_IDA}              (//h3[@class='css-wh3qsz'][contains(.,'Itinerário')])[1]
${SELECIONA_VIAGEM_VOLTA}         (//div[contains(@aria-label,'Ver tarifas deste voo. Selecionar')])[2]
${BTN_SLC_TRF_VOLTA}              (//button[@data-test-id="select-fare"])[5]
${BTN_PSG_PGTO}                   (//button[@data-test-id='no-id'])[6]
${MODAL_PGTO}                     //div[contains(@class,'modal-icon css-1qwh3ob')]
${BTN_MODAL_PGTO}                 //button[contains(@aria-label,'Confirmar por R$ 0,00')]
${MODAL_1_CLIQUE}                 //section[@class='modal-content']
${MODAL_BTN_PGTO_1_CLIQUE}        //button[@aria-label='Confirmar e ir para pagamento']
${VLD_TELA_PGTO}                  //h3[contains(.,'Agora é só realizar o pagamento')]
${SLC_FORMA_PGTO}                 //label[contains(.,'Selecionar forma de pagamento')]
${SLC_MODAL_PGTO}                 //h3[contains(.,'Selecionar como quer pagar')]
${BTN_CC}                         //button[contains(.,'Cartão de crédito')]
${INSERIR_CARTÃO}                 //span[contains(.,'Número do cartão')]
${NMR_CARTÃO}                    //input[@aria-label='Número do cartão']
${INSERIR_VALIDADE}              //span[contains(.,'Validade')]
${NMR_VALIDADE}                  //input[@aria-label='Validade']
${INSERIR_CVV}                   //span[contains(.,'CVV')]
${NMR_CVV}                       //input[@aria-label='CVV']
${INSERIR_CPF_TITULAR}           //span[contains(.,'CPF do titular do cartão')]
${NMR_CPF_TITULAR}               //input[@aria-label='CPF do titular do cartão']
${INSERIR_NM_TITULAR}            //span[contains(.,'Nome impresso no cartão')]
${NOME_TITULAR}                  //input[@aria-label='Nome impresso no cartão']
${BTN_ADD_CARTÃO}                //input[@value='Adicionar cartão']







*** Keywords ***

Abrir o navegador
    Open Browser    browser=${Browser} 
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser 


Acessar o site da Azul
    Go To    url=${URL}
   
    
    # Wait Until Element Is Visible    locator=${BTN_LOGIN}
   
Dado que estou no site da Azul
    Go To    url=${URL}
    # Sleep    5s
    #exemplo de como ficara o elemento  Wait Until Element Is Visible   ${login.btn_cookies}    30s
    Wait Until Element Is Visible    locator=${BTN_COOKIES}    timeout=5
    Click Element    locator=${BTN_COOKIES}
    Wait Until Element Is Visible    locator=${BTN_LOGIN}

Quando clicar em Fazer Login
    Click Element    locator=${BTN_LOGIN}

E inserir os dados de Login, clicar em "Entrar no TudoAzul"
    Click Element    locator=${CAMPO_LOGIN}

    Input Text       ${CAMPO_LOGIN}    36107148167

    Click Element    locator=${CAMPO_SENHA}

    Input Text       ${CAMPO_SENHA}    Azul2023**

    Wait Until Element Is Visible    locator=${BTN_ENTRAR_TUDO_AZUL}

    Click Button    locator=${BTN_ENTRAR_TUDO_AZUL}

Então o sistema devera apresentar a pagina do Site logado
    Wait Until Page Does Not Contain    Estamos carregando suas informações
    Wait Until Element Is Visible    locator=${VALIDA_LOGIN}    timeout=45


Dado que estou logado no site da Azul
    Wait Until Page Does Not Contain    Estamos carregando suas informações
    Wait Until Element Is Visible    locator=${VALIDA_LOGIN}    timeout=45


Quando clicar em comprar passagens, inserir origem, destino e datas de Ida e Volta 
    Sleep    15
    # Wait Until Page Does Not Contain Element   locator=${TELA_LOGIN_CARREGANDO}
    # Wait Until Element Is Visible    locator=${BTN_COMPRAR}        timeout=15
    ${BOOL_BUSCA_VOOS}        Run Keyword And Return Status    Element Should Be Visible    locator=${VLD_SELECAODEVOOS}
    IF    ${BOOL_BUSCA_VOOS} == False
        Click Element    locator=${BTN_COMPRAR}    
    END
    # Click Element    locator=${BTN_COMPRAR}
    Wait Until Element Is Visible    locator=${VALIDA_BTN_COMPRAR}    timeout=5
    Input Text      ${ORIGEM}       VCP
    Wait Until Page Contains    VCP
    Sleep    2s
    Wait Until Element Is Visible    locator=${VCP}     timeout=2
    Click Element   locator=${VCP}
    
    Input Text      ${DESTINO}      BSB
    Wait Until Page Contains    BSB
    Sleep    3s
    Wait Until Element Is Visible    locator=${BSB}     timeout=3
    
    Click Element   locator=${BSB}
    Click Element   ${DATA}
    
    Input Text      ${DATA_DE_IDA}         05/02/2024
    Input Text      ${DATA_DE_VOLTA}       20/02/2024
    Wait Until Element Is Visible    locator=${BTN_SELECIONA_DATA}        timeout=2   
    Click Element      locator=${BTN_SELECIONA_DATA}


E clicar em "Buscar passagens"
    Click Element    locator=${BTN_BUSCAR_PASSAGENS}

Então o site deverá exibir a lista de voos
    Wait Until Page Does Not Contain    Estamos esquentando as turbinas    timeout=30
    # Wait Until Element Is Visible    locator=${VALIDA_VOOS}


Dado que esteja na tela de seleção de voos
    Wait Until Page Does Not Contain    Estamos esquentando as turbinas    timeout=30
    Wait Until Element Is Visible    locator=${VALIDA_VOOS}


Quando selecionar as Tarifas de ida e Volta
    Sleep    10
    Click Element    locator=${SELECIONA_VIAGEM_IDA}

    WHILE  True
        ${status}  Run keyword and return status   Click Element   ${BTN_SLC_TRF_IDA}
        IF   ${status}
            BREAK
        END
        Press Keys  ${None}  ARROW_UP  
    END

    Click Element    locator=${SELECIONA_VIAGEM_VOLTA}
    Sleep    4s

    WHILE  True
        ${status}  Run keyword and return status   Click Element   ${BTN_SLC_TRF_VOLTA}
        IF   ${status}
            BREAK
        END
        Press Keys  ${None}  ARROW_UP  
    END

    Wait Until Page Does Not Contain    Carregando informações    timeout=40
    Wait Until Element Is Visible    locator=${BTN_PSG_PGTO}

E clicar em Prosseguir para Pagamento
    # Wait Until Element Is Visible    locator=${BTN_PSG_PGTO}
    Click Element   locator=${BTN_PSG_PGTO}
    Wait Until Page Does Not Contain    Carregando informações    timeout=60
    Wait Until Element Is Visible    locator=${MODAL_PGTO}
    Click Element    locator=${BTN_MODAL_PGTO}


Então o sistema deverá prosseguir para a tela de "Pagamento"
    Wait Until Page Does Not Contain    Carregando informações    timeout=40
    Wait Until Element Is Visible    locator=${MODAL_1_CLIQUE}
    Click Element    locator=${MODAL_BTN_PGTO_1_CLIQUE}
    Wait Until Page Does Not Contain    Carregando informações    timeout=40
    Wait Until Element Is Visible    locator=${VLD_TELA_PGTO}     timeout=30



Dado que esteja na tela de pagamento
    # Set Selenium Page Load Timeout    value=20
    Wait Until Element Is Visible    locator=${VLD_TELA_PGTO}    timeout=30



Quando clicar em "Selecionar forma de pagamento", clicar em "Cartão de Crédito"
    # Set Selenium Page Load Timeout    value=20
    Wait Until Keyword Succeeds      3s    40s    Click Element    locator=${SLC_FORMA_PGTO}
    # Click Element    locator=${SLC_FORMA_PGTO}
    Wait Until Element Is Visible    locator=${SLC_MODAL_PGTO}
    Click Element    locator=${BTN_CC}


E inserir um "Cartão de Crédito" valido, adicionar Cartão
    Click Element        locator=${INSERIR_CARTÃO}
    Input Text           locator=${NMR_CARTÃO}            text=5555 4444 3333 1111
    Click Element        locator=${INSERIR_VALIDADE}
    Input Text           locator=${NMR_VALIDADE}          text=03/30
    Click Element        locator=${INSERIR_CVV}
    Input Text           locator=${NMR_CVV}               text=737
    Click Element        locator=${INSERIR_CPF_TITULAR}
    Input Text           locator=${NMR_CPF_TITULAR}       text=62165839483
    Click Element        locator=${INSERIR_NM_TITULAR} 
    Input Text           locator=${NOME_TITULAR}          text=Guilherme Teste
    Click Element        locator=${BTN_ADD_CARTÃO}





# Então o sistema deverá retornar para a tela de pagamento