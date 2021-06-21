*** Variables ***
${REMOTE_URL}             http://localhost:4723/wd/hub
${PLATFORM_NAME}          Android
${PLATFORM_VERSION}       9.0
${DEVICE_NAME}            desempenho_device
${APP_PACKAGE}            com.google.android.youtube
${APP_ACTIVITY}           com.google.android.apps.youtube.app.WatchWhileActivity
${AUTOMATION_NAME}        UiAutomator2


#Locators
${BANNER_ICON}             thumbnail
${​​​​​​​​BTN_SEARCH}              accessibility_id=Search
${TEXT_SEARCH}             search_edit_text
${Conteudo}                Adrenaline
${nome_canal}              channel_name
${banner_canal}            channel_banner                  
${playlist_canal}          accessibility_id=Playlists
${first_playlist_canal}     //android.widget.TextView[@text='E3 2021']
${BTN_Notifications}        accessibility_id=Notifications                
${BTN_Subscriptions}        accessibility_id=Subscriptions
${BTN_Trending}             accessibility_id=Trending
${BTN_Home}                 accessibility_id=Home
${BTN_Library}              accessibility_id=Library

#--Exercicio 2
${acessar_conta}            accessibility_id=Account
${BTN_login}                button
${adicionar_conta}          add_account
${header_google}            headingText
${TXT_email}                xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View[2]/android.view.View
${email}                    lucianarodrigues9524     

#--Exxercicio 3

${TXT_history}                xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout[2]/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.TextView



