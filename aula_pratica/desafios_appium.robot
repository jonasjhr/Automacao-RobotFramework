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
#Abrir o aplicativo no celular
#    Open Youtube
#Clicar no buscador
#    Click Element             ${​​​​​​​​BTN_SEARCH}             
    
#Buscar o canal “Adrenaline”
#    Click Element            ${TEXT_SEARCH}
#    Input Text               ${TEXT_SEARCH}    ${Conteudo}
#    Press Keycode    66

#Selecionar o canal na lista de busca
#    Wait Until Page Contains Element    ${nome_canal}
#    Click Element                       ${nome_canal}

#Navegar pelo menu Playlist
#    Wait Until Page Contains Element     ${banner_canal}
#    Click Element                        ${playlist_canal}

#Selecionar a primeira playlist do canal
#    Wait Until Page Contains Element        ${first_playlist_canal}
#    Click Element                           ${first_playlist_canal}
    
#Navegar por todos os botões da barra de Menus(Home, Explorar...) do YouTube
#    Click Element     ${BTN_Notifications}                      
#    Click Element     ${BTN_Subscriptions}                       
#    Click Element     ${BTN_Trending}                      
#    Click Element     ${BTN_Home}                       
#    Click Element     ${BTN_Library}   
##-----------------------------Exercicio 2 --------------------------------------------

#Caso de Teste 02: Logar no YouTube###

#Abrir App
    #Open Youtube
#Logar no aplicativo com a conta x
     ##Click Element                        ${acessar_conta} 
     #Wait Until Page Contains Element     ${BTN_login} 
     #Click Element                        ${BTN_login} 
     #Wait Until Page Contains Element     ${adicionar_conta}
     #Click Element                        ${adicionar_conta}
     #Sleep     8s
     #Wait Until Page Contains Element     ${header_google}   
     #Click Element                        ${TXT_email}
     #Input Text                           ${TXT_email}        ${email}  


#Entrar no menu “Explorar”
#TODO
#Usar swipe de tela até o 10 item da tela
#Clicar no vídeo

##-----------------------------Exercicio 3 --------------------------------------------

#Caso de Teste 03: Usar método Swipe na tela

Abrir App
    Open Youtube
Entrar no menu “Explorar”
    Click Element     ${BTN_Library}
    Click Element     ${TXT_history}

Usar swipe de tela até o 10 item da tela 
    #fazer ajustes dos numeros - TODO
    #Swipe    439    432    445    1171
    Swipe    519    1152    555    489
Clicar no vídeo
     Click Element   xpath = /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout[2]/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[4]/android.widget.LinearLayout/android.widget.RelativeLayout[2]/android.widget.TextView[1]
