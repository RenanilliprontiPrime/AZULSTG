*** Settings ***
Resource    ../../../resource/main.robot


*** Variables ***
&{pagamentos}


# ...        BTN_PSG_PGTO=(//button[@aria-label='Prosseguir para pagamento. Selecionar'])[2]
# ...        VLD_MODAL_PGTO=//p[text()='Mas não se preocupe, se preferir, você pode fazer isso mais tarde em Minhas viagens.']
...        VLD_MODAL_PGTO2=//p[contains(.,'Roberto, temos uma sugestão Azul para você!')]
...        BTN_MODAL_PGTO=(//*[text()='Não, obrigado!'])[1]
...        VLD_MODAL_1CLIQUE=(//p[text()='Você está a 1-clique da sua viagem'])[1]
...        BTN_PGTO_1CLIQUE=(//div[text()='Não quero pagar com 1-clique'])[1]
...        TELA_VIAJANTES=//h3[@arial-label='Dados dos viajantes']
...        BTN_PSG_PGTO_VIAJANTES=(//div[text()='Prosseguir para pagamento'])[1]