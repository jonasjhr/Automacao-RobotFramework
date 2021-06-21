*** Settings ***
Documentation    automatizando app do youtube (PrimeExperts) - Jonas
Library    AppiumLibrary
Resource    ./variables.robot

*** Keywords ***
Open Youtube
    Open Application   ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM _VERSION}
    ...    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}
    Wait Until Page Contains Element     ${BANNER_ICON}    

*** Test Cases ***
##-----------------------------Exercicio 1 --------------------------------------------
Abrir o aplicativo no celular -
    Open Youtube
Clicar no buscador
    Click Element             ${​​​​​​​​BTN_SEARCH}
    
Buscar o canal “Adrenaline”
    Click Element            ${TEXT_SEARCH}
    Input Text               ${TEXT_SEARCH}    ${Conteudo}
    Press Keycode    66

Selecionar o canal na lista de busca
    Wait Until Page Contains Element    ${nome_canal}
    Click Element                       ${nome_canal}

Navegar pelo menu Playlist
    Wait Until Page Contains Element     ${banner_canal}
    Click Element                        ${playlist_canal}

Selecionar a primeira playlist do canal
    Wait Until Page Contains Element        ${first_playlist_canal}
    Click Element                           ${first_playlist_canal}
    
Navegar por todos os botões da barra de Menus(Home, Explorar...) do YouTube
    Click Element                           
    Click Element                           
    Click Element                           
    Click Element                           

##-----------------------------Exercicio 2 --------------------------------------------
#Caso de Teste 02: Logar no YouTube###
#Abrir App
#Logar no aplicativo com a conta x
#Entrar no menu “Explorar”
#Usar swipe de tela até o 10 item da tela
#Clicar no vídeo

##-----------------------------Exercicio 3 --------------------------------------------

#Caso de Teste 03: Usar método Swipe na tela
#Abrir App
#Entrar no menu “Explorar”
#Usar swipe de tela até o 10 item da tela
#Clicar no vídeo