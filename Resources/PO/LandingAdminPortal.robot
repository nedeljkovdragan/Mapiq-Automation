*** Settings ***
Documentation  This page contains elements for the log in flow for Admin Portal
Library  SeleniumLibrary 

*** Variables ***
${URL} =  https://shifts-test.atlas.mapiq-universe.com/
${ADMIN_PORTAL_FIRST_SIGN_IN_BUTTON}  //body/log-in[@class='Body Login-body']//button[@class='MpqButton']
${ADMIN_PORTAL_EMAIL_ADDRESS_FIELD}  id=signInName
${ADMIN_PORTAL_CONTINUE_BUTTON}  xpath:/html//button[@id='continue']
${ADMIN_PORTAL_PASSWORD_FIELD}  xpath:/html//input[@id='password']
${ADMIN_PORTAL_SECOND_SIGN_IN_BUTTON}  xpath:/html//button[@id='next']
#Different Admin credentials:
${SUBSCRIPTION_ADMIN_EMAIL}  qa_subscription_admin@test1.mapiq.net
${SUBSCRIPTION_ADMIN_PASSWORD}  QA-Subscr1pt1on-Adm1n
${BUILDING_ADMIN_EMAIL}  qa_building_admin@test1.mapiq.net 
${BUILDING_ADMIN_PASSWORD}  QA-Bu1ld1ng-Adm1n
${SHIFT_ADMIN_EMAIL}  qa_shift_admin@test1.mapiq.net
${SHIFT_ADMIN_PASSWORD}  QA-Sh1ft-Adm1n
${SHIFT_ASSISTANT_EMAIL}  qa_shift_assistant@test1.mapiq.net
${SHIFT_ASSISTANT_PASSWORD}  QA-Sh1ft-Ass1stant
${SHIFT_HOST_EMAIL}  qa_shift_host@test1.mapiq.net
${SHIFT_HOST_PASSWORD}  QA-Sh1ft-Host
${ANALYTICS_VIEWER_EMAIL}  qa_analytics_viewer@test1.mapiq.net
${ANALYTICS_VIEWER_PASSWORD}  QA-Analyt1cs-V1ewer

*** Keywords ***
Navigate To  
    Go to  ${URL} 
Verify Page Loaded
    Wait Until Element Contains    ${ADMIN_PORTAL_FIRST_SIGN_IN_BUTTON}    Sign in
Subscription Admin Logs in 
    Click Button    ${ADMIN_PORTAL_FIRST_SIGN_IN_BUTTON}
    #####################################Wait Until Element Contains    locator    text
    Input Text  ${ADMIN_PORTAL_EMAIL_ADDRESS_FIELD}  ${SUBSCRIPTION_ADMIN_EMAIL}
    Sleep  7
    Click Button  ${ADMIN_PORTAL_CONTINUE_BUTTON} 
    Sleep  7
    Input Text    ${ADMIN_PORTAL_PASSWORD_FIELD}    ${SUBSCRIPTION_ADMIN_PASSWORD}
    Sleep  2
    Click Button    ${ADMIN_PORTAL_SECOND_SIGN_IN_BUTTON} 
    Sleep  7
Building Admin logs in
    Click Button    ${ADMIN_PORTAL_FIRST_SIGN_IN_BUTTON}
    Sleep  7
    Input Text  ${ADMIN_PORTAL_EMAIL_ADDRESS_FIELD}  ${BUILDING_ADMIN_EMAIL}
    Sleep  7
    Click Button  ${ADMIN_PORTAL_CONTINUE_BUTTON} 
    Sleep  2
    Input Text    ${ADMIN_PORTAL_PASSWORD_FIELD}    ${BUILDING_ADMIN_PASSWORD}
    Sleep  2
    Click Button    ${ADMIN_PORTAL_SECOND_SIGN_IN_BUTTON} 
    Sleep  7
Shift Admin logs in
    Click Button    ${ADMIN_PORTAL_FIRST_SIGN_IN_BUTTON}
    Sleep  7
    Input Text  ${ADMIN_PORTAL_EMAIL_ADDRESS_FIELD}  ${SHIFT_ADMIN_EMAIL}
    Sleep  7
    Click Button  ${ADMIN_PORTAL_CONTINUE_BUTTON} 
    Sleep  2
    Input Text    ${ADMIN_PORTAL_PASSWORD_FIELD}    ${SHIFT_ADMIN_PASSWORD}
    Sleep  2
    Click Button    ${ADMIN_PORTAL_SECOND_SIGN_IN_BUTTON} 
    Sleep  7
Shift Assistant Admin logs in   
    Click Button    ${ADMIN_PORTAL_FIRST_SIGN_IN_BUTTON}
    Sleep  7
    Input Text  ${ADMIN_PORTAL_EMAIL_ADDRESS_FIELD}  ${SHIFT_ASSISTANT_EMAIL}
    Sleep  7
    Click Button  ${ADMIN_PORTAL_CONTINUE_BUTTON} 
    Sleep  2
    Input Text    ${ADMIN_PORTAL_PASSWORD_FIELD}    ${SHIFT_ASSISTANT_PASSWORD}
    Sleep  2
    Click Button    ${ADMIN_PORTAL_SECOND_SIGN_IN_BUTTON} 
    Sleep  7
Shift Host Admin logs in
    Click Button    ${ADMIN_PORTAL_FIRST_SIGN_IN_BUTTON}
    Sleep  7
    Input Text  ${ADMIN_PORTAL_EMAIL_ADDRESS_FIELD}  ${SHIFT_HOST_EMAIL}
    Sleep  7
    Click Button  ${ADMIN_PORTAL_CONTINUE_BUTTON} 
    Sleep  2
    Input Text    ${ADMIN_PORTAL_PASSWORD_FIELD}    ${SHIFT_HOST_PASSWORD}
    Sleep  2
    Click Button    ${ADMIN_PORTAL_SECOND_SIGN_IN_BUTTON} 
    Sleep  7
Analytics Viewer Admin logs in
     Click Button    ${ADMIN_PORTAL_FIRST_SIGN_IN_BUTTON}
    Sleep  7
    Input Text  ${ADMIN_PORTAL_EMAIL_ADDRESS_FIELD}  ${ANALYTICS_VIEWER_EMAIL}
    Sleep  7
    Click Button  ${ADMIN_PORTAL_CONTINUE_BUTTON} 
    Sleep  2
    Input Text    ${ADMIN_PORTAL_PASSWORD_FIELD}    ${ANALYTICS_VIEWER_PASSWORD}
    Sleep  2
    Click Button    ${ADMIN_PORTAL_SECOND_SIGN_IN_BUTTON} 
    Sleep  7