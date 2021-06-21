*** Variables ***
${REMOTE_URL}             http://localhost:4723/wd/hub
${PLATFORM_NAME}          Android
${PLATFORM_VERSION}       9.0
${DEVICE_NAME}            desempenho_device
${APP_PACKAGE}            com.google.android.youtube
${APP_ACTIVITY}           com.google.android.apps.youtube.app.WatchWhileActivity
${AUTOMATION_NAME}        UiAutomator2


#Locators
${BANNER_ICON}    thumbnail
${​​​​​​​​BTN_SEARCH}      accessibility_id=Search
${TEXT_SEARCH}     search_edit_text
${Conteudo}        Adrenaline
${nome_canal}      channel_name
${banner_canal}    channel_banner                  
${playlist_canal}     accessibility_id=Playlists
${first_playlist_canal}     //android.widget.TextView[@text='E3 2021']
                    accessibility_id=Notifications                
                    accessibility_id=Subscriptions
                    accessibility_id=Trending
                    accessibility_id=Home
                    accessibility_id=Library