*** Settings ***
Documentation    automatizando app do youtube (PrimeExperts) - Jonas
Library    AppiumLibrary
Resource    ./variables.robot

*** Test Cases ***
##-----------------------------Exercicio 1 --------------------------------------------
Search Content
    Open Youtube
Clicar no buscador
    Click Element    xpath=//android.widget.ImageView[@content-desc="Search"]
Buscar o canal “Adrenaline”
# id=com.google.android.youtube:id/search_edit_text
    Click Element    id=com.google.android.youtube:id/search_edit_text
    Input Text    id=com.google.android.youtube:id/search_edit_text    Adrenaline 
    Press Keycode    66
Navegar no nome do canal
    Sleep     5s
    Click Element    id=com.google.android.youtube:id/channel_name
Identificar as playlists
    Sleep     5s
    Click Element    xpath=//android.widget.Button[@content-desc="Playlists"]

   
  # Selecionar a primeira playlist do canal
  # Navegar por todos os botões da barra de Menus(Home, Explorar...) do YouTube

*** Keywords ***
Open Youtube
    Open Application   ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM _VERSION}
    ...    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}
    Wait Until Page Contains Element     ${BANNER_ICON}    
