#Etapa de configuração
*** Settings ***
Library     AppiumLibrary


*** Variables ***
${USER_BALANCE}         accessibility_id=user-balance

*** Keywords ***
Abrir apk
    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=AndroidEmulador
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/app/nuclone.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true     
Fechar apk
    Capture Page Screenshot
    Close All Applications

Validar o titulo do app
    Wait Until Element Is Visible    accessibility_id=card-hero    10

Ver meu saldo   
    Click Element                    accessibility_id=show-balance

Meu saldo deve ser de "${saldo}"
    Wait Until Element Is Visible    ${USER_BALANCE}    10
    Element Text Should Be           ${USER_BALANCE}    ${saldo}

    
