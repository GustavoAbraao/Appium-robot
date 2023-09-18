#Etapa de configuração
*** Settings ***
Documentation    Essa suíte testa o apk nuclone
Resource         nuclone_resources.robot     #É aonde fica a implementação das Keywords dos casos de teste
Test Setup       Abrir apk        #Configuração dos comandos que executam antes dos casos de teste
Test Teardown    Fechar apk

*** Test Cases ***
Caso de teste 01 - Acessar o app e ver meu saldo
    [Documentation]    Esse teste acessa o app e verifica o saldo
    [Tags]             acessar_app    ver_saldo
    Validar o titulo do app
    Ver meu saldo
    Meu saldo deve ser de "R$ 5.500,00"

