*** Settings ***
Documentation  This page contains elements for the log in flow for Office Shifts
Library  SeleniumLibrary 

*** Variables ***
${URL} =  https://shifts-test.atlas.mapiq-universe.com/
${OS_FIRST_SIGN_IN_BUTTON}  xpath:/html//log-in[@class='Body Login-body']//button[@class='MpqButton'] 
${OS_EMAIL_ADDRESS_FIELD}  id=signInName  
${CONTINUE_BUTTON}  xpath:/html//button[@id='continue']
${OS_PASSWORD_FIELD}  xpath:/html//input[@id='password']
${OS_SECOND_SIGN_IN_BUTTON}  xpath:/html//button[@id='next']
${EMAIL_ANALYTICS_VIEWER}  qa_subscription_admin@test1.mapiq.net
${PASSWORD_ANALYTICS_VIEWER}  QA-Subscr1pt1on-Adm1n

*** Keywords ***
Navigate To  
    Go to  ${URL} 
Verify Page Loaded
    Wait Until Element Contains    ${OS_FIRST_SIGN_IN_BUTTON}    Sign in
Log in 
    Click Button    ${OS_FIRST_SIGN_IN_BUTTON}
    Sleep  6
    Input Text  ${OS_EMAIL_ADDRESS_FIELD}  ${EMAIL_ANALYTICS_VIEWER}
    Sleep  4
    Click Button  ${CONTINUE_BUTTON}
    Sleep  8
    Input Text    ${OS_PASSWORD_FIELD}    ${PASSWORD_ANALYTICS_VIEWER}
    Click Button    ${OS_SECOND_SIGN_IN_BUTTON}
    Sleep  10
